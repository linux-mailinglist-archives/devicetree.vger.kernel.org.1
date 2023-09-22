Return-Path: <devicetree+bounces-2346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CF97AA97E
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 08:53:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 86F672830AA
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 06:53:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78184179B6;
	Fri, 22 Sep 2023 06:53:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE3B171D7
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 06:53:44 +0000 (UTC)
Received: from relmlie6.idc.renesas.com (relmlor2.renesas.com [210.160.252.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 50EF2197;
	Thu, 21 Sep 2023 23:53:41 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="6.03,167,1694703600"; 
   d="scan'208";a="180618018"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 22 Sep 2023 15:53:39 +0900
Received: from localhost.localdomain (unknown [10.166.15.32])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 32E14400F7A0;
	Fri, 22 Sep 2023 15:53:39 +0900 (JST)
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
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Serge Semin <fancer.lancer@gmail.com>
Subject: [PATCH v21 07/16] PCI: dwc: Expose dw_pcie_write_dbi2() to module
Date: Fri, 22 Sep 2023 15:53:22 +0900
Message-Id: <20230922065331.3806925-8-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230922065331.3806925-1-yoshihiro.shimoda.uh@renesas.com>
References: <20230922065331.3806925-1-yoshihiro.shimoda.uh@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Since no PCIe controller drivers call this, this change is not required
for now. But, Renesas R-Car Gen4 PCIe controller driver will call this
and if the controller driver is built as a kernel module, the following
build error happens:

  ERROR: modpost: "dw_pcie_write_dbi2" [drivers/pci/controller/dwc/pcie-rcar-gen4-host-drv.ko] undefined!

So, expose dw_pcie_write_dbi2() for it.

[kwilczynski: commit log]
Link: https://lore.kernel.org/linux-pci/20230825093219.2685912-12-yoshihiro.shimoda.uh@renesas.com
Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Signed-off-by: Krzysztof Wilczyński <kwilczynski@kernel.org>
Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
---
 drivers/pci/controller/dwc/pcie-designware.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
index 1f900be94556..250cf7f40b85 100644
--- a/drivers/pci/controller/dwc/pcie-designware.c
+++ b/drivers/pci/controller/dwc/pcie-designware.c
@@ -365,6 +365,7 @@ void dw_pcie_write_dbi2(struct dw_pcie *pci, u32 reg, size_t size, u32 val)
 	if (ret)
 		dev_err(pci->dev, "write DBI address failed\n");
 }
+EXPORT_SYMBOL_GPL(dw_pcie_write_dbi2);
 
 static inline void __iomem *dw_pcie_select_atu(struct dw_pcie *pci, u32 dir,
 					       u32 index)
-- 
2.25.1


