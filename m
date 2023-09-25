Return-Path: <devicetree+bounces-2996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 307BA7AD151
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 09:21:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 34EDE1C2074E
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 07:21:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5404F10954;
	Mon, 25 Sep 2023 07:21:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7258610947
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:21:36 +0000 (UTC)
Received: from relmlie6.idc.renesas.com (relmlor2.renesas.com [210.160.252.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 8A4DACF;
	Mon, 25 Sep 2023 00:21:34 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="6.03,174,1694703600"; 
   d="scan'208";a="180864164"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 25 Sep 2023 16:21:34 +0900
Received: from localhost.localdomain (unknown [10.166.15.32])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id E5E824008C6F;
	Mon, 25 Sep 2023 16:21:33 +0900 (JST)
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: lpieralisi@kernel.org,
	kw@linux.com,
	robh@kernel.org,
	bhelgaas@google.com,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jingoohan1@gmail.com,
	gustavo.pimentel@synopsys.com,
	mani@kernel.org
Cc: marek.vasut+renesas@gmail.com,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: [PATCH v22 00/16] PCI: dwc: rcar-gen4: Add R-Car Gen4 PCIe support
Date: Mon, 25 Sep 2023 16:21:14 +0900
Message-Id: <20230925072130.3901087-1-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=AC_FROM_MANY_DOTS,BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add R-Car S4-8 (R-Car Gen4) PCIe controller for both host and endpoint modes.
To support them, modify PCIe DesignWare common codes.

Changes from v21:
https://lore.kernel.org/linux-pci/20230922065331.3806925-1-yoshihiro.shimoda.uh@renesas.com/
 - Based on the latest pci.git / next branch.
 - Fix -Wmissing-prototypes warnings that was reported by kernel test robot:
   https://lore.kernel.org/linux-pci/202309222125.KiN4nFhD-lkp@intel.com/

Changes from v20 + squash patches:
https://lore.kernel.org/linux-pci/20230825093219.2685912-1-yoshihiro.shimoda.uh@renesas.com/
https://lore.kernel.org/linux-pci/20230901131711.2861283-1-yoshihiro.shimoda.uh@renesas.com/
 - Based on the latest pci.git / next branch.
 - Cherry-picked almost all patches from the pci.git / controller/rcar branch
   for squashing.
  - But, drop the following patches which are related to INTx.
     eb185e1e628a PCI: designware-ep: Add INTx IRQs support
     5d0e51f85b23 PCI: dwc: Add outbound MSG TLPs support
     4758bef61cc2 PCI: dwc: Change arguments of dw_pcie_prog_outbound_atu()
     44938b13046b PCI: Add INTx Mechanism Messages macros
 - Add a new macro T_PVPERL in the patch 12/16.
 - Merge pcie-rcar-gen4-{ep,host}-drv.c and pcie-rcar-gen4.h files into
   pcie-rcar-gen4.c.
 - Add CONFIG_PCIE_RCAR_GEN4_HOST config.
 - Fix some comments.
 - Change return type of rcar_gen4_pcie_speed_change().
 - Add registers' full names as comments.
 - Rename function names of rcar_gen4_{add,remove}_pcie_ep() to
   rcar_gen4_{add,remove}_dw_pcie_ep() for consistency.

Yoshihiro Shimoda (16):
  PCI: dwc: endpoint: Add multiple PFs support for dbi2
  PCI: dwc: Add dw_pcie_link_set_max_link_width()
  PCI: dwc: Add missing PCI_EXP_LNKCAP_MLW handling
  PCI: tegra194: Drop PCI_EXP_LNKSTA_NLW setting
  PCI: dwc: Add EDMA_UNROLL capability flag
  PCI: dwc: Expose dw_pcie_ep_exit() to module
  PCI: dwc: Expose dw_pcie_write_dbi2() to module
  PCI: dwc: endpoint: Introduce .pre_init() and .deinit()
  dt-bindings: PCI: dwc: Update maxItems of reg and reg-names
  dt-bindings: PCI: renesas: Add R-Car Gen4 PCIe Host
  dt-bindings: PCI: renesas: Add R-Car Gen4 PCIe Endpoint
  PCI: add T_PVPERL macro
  PCI: dwc: rcar-gen4: Add R-Car Gen4 PCIe controller support
  PCI: dwc: rcar-gen4: Add R-Car Gen4 PCIe Endpoint support
  MAINTAINERS: Update PCI DRIVER FOR RENESAS R-CAR for R-Car Gen4
  misc: pci_endpoint_test: Add Device ID for R-Car S4-8 PCIe controller

 .../bindings/pci/rcar-gen4-pci-ep.yaml        | 115 ++++
 .../bindings/pci/rcar-gen4-pci-host.yaml      | 127 +++++
 .../bindings/pci/snps,dw-pcie-common.yaml     |   4 +-
 .../bindings/pci/snps,dw-pcie-ep.yaml         |   4 +-
 .../devicetree/bindings/pci/snps,dw-pcie.yaml |   4 +-
 MAINTAINERS                                   |   1 +
 drivers/misc/pci_endpoint_test.c              |   4 +
 drivers/pci/controller/dwc/Kconfig            |  25 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 .../pci/controller/dwc/pcie-designware-ep.c   |  45 +-
 drivers/pci/controller/dwc/pcie-designware.c  | 102 ++--
 drivers/pci/controller/dwc/pcie-designware.h  |   8 +-
 drivers/pci/controller/dwc/pcie-rcar-gen4.c   | 511 ++++++++++++++++++
 drivers/pci/controller/dwc/pcie-tegra194.c    |   6 -
 drivers/pci/pci.h                             |   3 +
 15 files changed, 891 insertions(+), 69 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/rcar-gen4-pci-ep.yaml
 create mode 100644 Documentation/devicetree/bindings/pci/rcar-gen4-pci-host.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-rcar-gen4.c

-- 
2.25.1


