Return-Path: <devicetree+bounces-3000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CA89E7AD15B
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 09:21:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7925B2817BB
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 07:21:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E7961096D;
	Mon, 25 Sep 2023 07:21:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61A810951
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:21:37 +0000 (UTC)
Received: from relmlie6.idc.renesas.com (relmlor2.renesas.com [210.160.252.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 35BF4103;
	Mon, 25 Sep 2023 00:21:36 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="6.03,174,1694703600"; 
   d="scan'208";a="180864173"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 25 Sep 2023 16:21:34 +0900
Received: from localhost.localdomain (unknown [10.166.15.32])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 7B7D34008C6F;
	Mon, 25 Sep 2023 16:21:34 +0900 (JST)
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
	Serge Semin <fancer.lancer@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>
Subject: [PATCH v22 04/16] PCI: tegra194: Drop PCI_EXP_LNKSTA_NLW setting
Date: Mon, 25 Sep 2023 16:21:18 +0900
Message-Id: <20230925072130.3901087-5-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230925072130.3901087-1-yoshihiro.shimoda.uh@renesas.com>
References: <20230925072130.3901087-1-yoshihiro.shimoda.uh@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

dw_pcie_setup() is already setting PCI_EXP_LNKCAP_MLW to pcie->num_lanes
in the PCI_EXP_LNKCAP register for programming maximum link width.

Hence, remove the redundant setting here.

[kwilczynski: commit log]
Link: https://lore.kernel.org/linux-pci/20230825093219.2685912-9-yoshihiro.shimoda.uh@renesas.com
Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Signed-off-by: Krzysztof Wilczyński <kwilczynski@kernel.org>
Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Jonathan Hunter <jonathanh@nvidia.com>
---
 drivers/pci/controller/dwc/pcie-tegra194.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index 4bba31502ce1..2debdf1a0b52 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -917,12 +917,6 @@ static int tegra_pcie_dw_host_init(struct dw_pcie_rp *pp)
 		AMBA_ERROR_RESPONSE_CRS_SHIFT);
 	dw_pcie_writel_dbi(pci, PORT_LOGIC_AMBA_ERROR_RESPONSE_DEFAULT, val);
 
-	/* Configure Max lane width from DT */
-	val = dw_pcie_readl_dbi(pci, pcie->pcie_cap_base + PCI_EXP_LNKCAP);
-	val &= ~PCI_EXP_LNKCAP_MLW;
-	val |= (pcie->num_lanes << PCI_EXP_LNKSTA_NLW_SHIFT);
-	dw_pcie_writel_dbi(pci, pcie->pcie_cap_base + PCI_EXP_LNKCAP, val);
-
 	/* Clear Slot Clock Configuration bit if SRNS configuration */
 	if (pcie->enable_srns) {
 		val_16 = dw_pcie_readw_dbi(pci, pcie->pcie_cap_base +
-- 
2.25.1


