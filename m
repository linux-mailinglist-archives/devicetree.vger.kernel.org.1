Return-Path: <devicetree+bounces-7562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D3B7C4B61
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 09:14:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 652081C20C0E
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 07:14:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7962718029;
	Wed, 11 Oct 2023 07:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5555D1798A
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 07:14:30 +0000 (UTC)
Received: from relmlie5.idc.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 10A7090;
	Wed, 11 Oct 2023 00:14:28 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="6.03,214,1694703600"; 
   d="scan'208";a="178877302"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 11 Oct 2023 16:14:28 +0900
Received: from localhost.localdomain (unknown [10.166.15.32])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id 67ECF41B264F;
	Wed, 11 Oct 2023 16:14:28 +0900 (JST)
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
Subject: [PATCH v24 00/16] PCI: dwc: rcar-gen4: Add R-Car Gen4 PCIe support
Date: Wed, 11 Oct 2023 16:14:07 +0900
Message-Id: <20231011071423.249458-1-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.1 required=5.0 tests=AC_FROM_MANY_DOTS,BAYES_00,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add R-Car S4-8 (R-Car Gen4) PCIe controller for both host and endpoint modes.
To support them, modify PCIe DesignWare common codes.

Changes from v23:
https://lore.kernel.org/linux-pci/20230926122431.3974714-1-yoshihiro.shimoda.uh@renesas.com/
 - Based on the latest pci.git / next branch.
 - Remove Link tag and Krzysztof's s-o-b tags from all patches.
 - Drop "PCI: dwc: Expose dw_pcie_write_dbi2() to module".
 - Add "PCI: dwc: Disable two BARs to avoid unnecessary memory assignment".
 - Add Reviewed-by in the patch 0[137]/16 and the patch 1[24]/16.
 - Fix typo in the patch 14/16.
 - Fix error messages and commit descriptions in the patch 1[234]/16.
 - Change the subjects in the patch 1[34]/16.
 - Use aplhabetical order on Kconfig in the patch 1[34]/16.
 - Drop DWC spec code in the patch 13/16. 

Changes from v22:
https://lore.kernel.org/linux-pci/20230925072130.3901087-1-yoshihiro.shimoda.uh@renesas.com/
 - Based on the latest pci.git / next branch.
 - Add Reviewed-by in the patch 12/16.
 - Move a few endpoint related code from the patch 13/16 to 14/16.
 - Change subjects in the patch 1[34]/16.
 - Modify the code for readability in the patch 14/16.

Changes from v21:
https://lore.kernel.org/linux-pci/20230922065331.3806925-1-yoshihiro.shimoda.uh@renesas.com/
 - Based on the latest pci.git / next branch.
 - Fix -Wmissing-prototypes warnings that was reported by kernel test robot:
   https://lore.kernel.org/linux-pci/202309222125.KiN4nFhD-lkp@intel.com/

Yoshihiro Shimoda (16):
  PCI: dwc: endpoint: Add multiple PFs support for dbi2
  PCI: dwc: Add dw_pcie_link_set_max_link_width()
  PCI: dwc: Add missing PCI_EXP_LNKCAP_MLW handling
  PCI: tegra194: Drop PCI_EXP_LNKSTA_NLW setting
  PCI: dwc: Add EDMA_UNROLL capability flag
  PCI: dwc: Expose dw_pcie_ep_exit() to module
  PCI: dwc: endpoint: Introduce .pre_init() and .deinit()
  PCI: dwc: Disable two BARs to avoid unnecessary memory assignment
  dt-bindings: PCI: dwc: Update maxItems of reg and reg-names
  dt-bindings: PCI: renesas: Add R-Car Gen4 PCIe Host
  dt-bindings: PCI: renesas: Add R-Car Gen4 PCIe Endpoint
  PCI: Add T_PVPERL macro
  PCI: rcar-gen4: Add R-Car Gen4 PCIe controller support for host mode
  PCI: rcar-gen4: Add endpoint mode support
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
 .../pci/controller/dwc/pcie-designware-host.c |   8 +
 drivers/pci/controller/dwc/pcie-designware.c  | 101 ++--
 drivers/pci/controller/dwc/pcie-designware.h  |   8 +-
 drivers/pci/controller/dwc/pcie-rcar-gen4.c   | 517 ++++++++++++++++++
 drivers/pci/controller/dwc/pcie-tegra194.c    |   6 -
 drivers/pci/pci.h                             |   3 +
 16 files changed, 904 insertions(+), 69 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/rcar-gen4-pci-ep.yaml
 create mode 100644 Documentation/devicetree/bindings/pci/rcar-gen4-pci-host.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-rcar-gen4.c

-- 
2.25.1


