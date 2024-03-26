Return-Path: <devicetree+bounces-53216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 891FD88B7B0
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 03:51:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ACA221C38154
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 02:51:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75158128813;
	Tue, 26 Mar 2024 02:51:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relmlie5.idc.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A276128814;
	Tue, 26 Mar 2024 02:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.160.252.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711421473; cv=none; b=kXeYL8zUfWED3LlPm9JSsJhibNIDIULgFWODfXyPRWR3ASAhkCKpOPG07dHBOaD9AcPSIEY2aPeEJtgbEN3vpi3Ehw0iou4GoCCWM9qstVEC/Wk9OcVUkwvvLEedahJ09+hS+rKTO9lYQY1fut+xVCfQqOLwWNlAzCrY0gjMdIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711421473; c=relaxed/simple;
	bh=CCDYLl7ErWMKukm9u2p8KCnbLEajhlpBmj0W5Q5dzBo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=p51STFuXBsasLYe8FXM4zCy5IE1hlqY6vl5ow5wmb9RmLLIiIfCZ747zL18fsCB+ElgSJzJWujAtRnlVsEBebYO3x1VlKI/xRgKDUL2VPqVlFk9QgkhvfwSnbRV+QhSyCM7MRZ4L7HNL/B9FYYWc4GfZyc7G8YsJswFLm4Dj4JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; arc=none smtp.client-ip=210.160.252.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
X-IronPort-AV: E=Sophos;i="6.07,154,1708354800"; 
   d="scan'208";a="199248038"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 26 Mar 2024 11:45:58 +0900
Received: from localhost.localdomain (unknown [10.166.13.99])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id 3ACF3415DFB8;
	Tue, 26 Mar 2024 11:45:58 +0900 (JST)
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
Subject: [PATCH v2 5/6] PCI: dwc: rcar-gen4: Add support for other R-Car Gen4 PCIe controller
Date: Tue, 26 Mar 2024 11:45:39 +0900
Message-Id: <20240326024540.2336155-6-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240326024540.2336155-1-yoshihiro.shimoda.uh@renesas.com>
References: <20240326024540.2336155-1-yoshihiro.shimoda.uh@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PCIe controllers of R-Car V4H (r8a779g0) and one more SoC require
different initializing settings than R-Car S4-8 (r8a779f0). So, add
specific functions for them as "renesas,rcar-gen4-pcie{-ep}" compatible.

Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
 drivers/pci/controller/dwc/pcie-rcar-gen4.c | 188 +++++++++++++++++++-
 1 file changed, 187 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-rcar-gen4.c b/drivers/pci/controller/dwc/pcie-rcar-gen4.c
index a37613dd9ff4..7f3b5e9ca405 100644
--- a/drivers/pci/controller/dwc/pcie-rcar-gen4.c
+++ b/drivers/pci/controller/dwc/pcie-rcar-gen4.c
@@ -5,8 +5,10 @@
  */
 
 #include <linux/delay.h>
+#include <linux/firmware.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/pci.h>
@@ -20,9 +22,10 @@
 /* Renesas-specific */
 /* PCIe Mode Setting Register 0 */
 #define PCIEMSR0		0x0000
-#define BIFUR_MOD_SET_ON	BIT(0)
+#define APP_SRIS_MODE		BIT(6)
 #define DEVICE_TYPE_EP		0
 #define DEVICE_TYPE_RC		BIT(4)
+#define BIFUR_MOD_SET_ON	BIT(0)
 
 /* PCIe Interrupt Status 0 */
 #define PCIEINTSTS0		0x0084
@@ -37,33 +40,179 @@
 #define PCIEDMAINTSTSEN		0x0314
 #define PCIEDMAINTSTSEN_INIT	GENMASK(15, 0)
 
+/* Port Logic Registers 89 */
+#define PRTLGC89		0x0b70
+
+/* Port Logic Registers 90 */
+#define PRTLGC90		0x0b74
+
 /* PCIe Reset Control Register 1 */
 #define PCIERSTCTRL1		0x0014
 #define APP_HOLD_PHY_RST	BIT(16)
 #define APP_LTSSM_ENABLE	BIT(0)
 
+/* PCIe Power Management Control */
+#define PCIEPWRMNGCTRL		0x0070
+#define APP_CLK_REQ_N		BIT(11)
+#define APP_CLK_PM_EN		BIT(10)
+
 #define RCAR_NUM_SPEED_CHANGE_RETRIES	10
 #define RCAR_MAX_LINK_SPEED		4
 
 #define RCAR_GEN4_PCIE_EP_FUNC_DBI_OFFSET	0x1000
 #define RCAR_GEN4_PCIE_EP_FUNC_DBI2_OFFSET	0x800
 
+#define RCAR_GEN4_PCIE_FIRMEARE_NAME		"rcar_gen4_pcie.bin"
+#define RCAR_GEN4_PCIE_FIRMEARE_BASE_ADDR	0xc000
+
 struct rcar_gen4_pcie {
 	struct dw_pcie dw;
 	void __iomem *base;
+	/*
+	 * The R-Car Gen4 documents don't describe the PHY registers' name.
+	 * But, the initialization procedure describes these offsets. So,
+	 * this driver has "phy_base + magical offset number" for it.
+	 */
+	void __iomem *phy_base;
 	struct platform_device *pdev;
 	enum dw_pcie_device_mode mode;
 
 	int (*start_link_enable)(struct rcar_gen4_pcie *rcar);
+	void (*additional_common_init)(struct rcar_gen4_pcie *rcar);
 };
 #define to_rcar_gen4_pcie(_dw)	container_of(_dw, struct rcar_gen4_pcie, dw)
 
 struct rcar_gen4_pcie_platdata {
 	enum dw_pcie_device_mode mode;
 	int (*start_link_enable)(struct rcar_gen4_pcie *rcar);
+	void (*additional_common_init)(struct rcar_gen4_pcie *rcar);
 };
 
 /* Common */
+static void rcar_gen4_pcie_phy_reg_update_bits(struct rcar_gen4_pcie *rcar,
+					       u32 offset, u32 mask, u32 val)
+{
+	u32 tmp;
+
+	tmp = readl(rcar->phy_base + offset);
+	tmp &= ~mask;
+	tmp |= val;
+	writel(tmp, rcar->phy_base + offset);
+}
+
+static int rcar_gen4_pcie_reg_check_bit(struct rcar_gen4_pcie *rcar,
+					u32 offset, u32 mask)
+{
+	struct dw_pcie *dw = &rcar->dw;
+
+	if (dw_pcie_readl_dbi(dw, offset) & mask)
+		return -EAGAIN;
+
+	return 0;
+}
+
+static int rcar_gen4_pcie_update_phy_firmware(struct rcar_gen4_pcie *rcar)
+{
+	const u32 check_addr[] = { 0x00101018, 0x00101118, 0x00101021, 0x00101121};
+	struct dw_pcie *dw = &rcar->dw;
+	const struct firmware *fw;
+	unsigned int i, timeout;
+	u32 data;
+	int ret;
+
+	ret = request_firmware(&fw, RCAR_GEN4_PCIE_FIRMEARE_NAME, dw->dev);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < (fw->size / 2); i++) {
+		data = fw->data[i * 2] | fw->data[(i * 2) + 1] << 8;
+		timeout = 100;
+retry_data:
+		dw_pcie_writel_dbi(dw, PRTLGC89, RCAR_GEN4_PCIE_FIRMEARE_BASE_ADDR + i);
+		dw_pcie_writel_dbi(dw, PRTLGC90, data);
+		if (rcar_gen4_pcie_reg_check_bit(rcar, PRTLGC89, BIT(30)) < 0) {
+			if (!(--timeout)) {
+				ret = -ETIMEDOUT;
+				goto exit;
+			}
+			usleep_range(100, 200);
+			goto retry_data;
+		}
+	}
+
+	rcar_gen4_pcie_phy_reg_update_bits(rcar, 0x0f8, BIT(17), BIT(17));
+
+	for (i = 0; i < ARRAY_SIZE(check_addr); i++) {
+		timeout = 100;
+retry_check:
+		dw_pcie_writel_dbi(dw, PRTLGC89, check_addr[i]);
+		ret = rcar_gen4_pcie_reg_check_bit(rcar, PRTLGC89, BIT(30));
+		ret |= rcar_gen4_pcie_reg_check_bit(rcar, PRTLGC90, BIT(0));
+		if (ret < 0) {
+			if (!(--timeout)) {
+				ret = -ETIMEDOUT;
+				goto exit;
+			}
+			usleep_range(100, 200);
+			goto retry_check;
+		}
+	}
+
+	ret = 0;
+exit:
+	release_firmware(fw);
+
+	return ret;
+}
+
+static int rcar_gen4_pcie_enable_phy(struct rcar_gen4_pcie *rcar)
+{
+	struct dw_pcie *dw = &rcar->dw;
+	u32 val;
+	int ret;
+
+	val = dw_pcie_readl_dbi(dw, PCIE_PORT_FORCE);
+	val |= PORT_FORCE_DO_DESKEW_FOR_SRIS;
+	dw_pcie_writel_dbi(dw, PCIE_PORT_FORCE, val);
+
+	val = readl(rcar->base + PCIEMSR0);
+	val |= APP_SRIS_MODE;
+	writel(val, rcar->base + PCIEMSR0);
+
+	rcar_gen4_pcie_phy_reg_update_bits(rcar, 0x700, BIT(28), 0);
+	rcar_gen4_pcie_phy_reg_update_bits(rcar, 0x700, BIT(20), 0);
+	rcar_gen4_pcie_phy_reg_update_bits(rcar, 0x700, BIT(12), 0);
+	rcar_gen4_pcie_phy_reg_update_bits(rcar, 0x700, BIT(4), 0);
+
+	rcar_gen4_pcie_phy_reg_update_bits(rcar, 0x148, GENMASK(23, 22), BIT(22));
+	rcar_gen4_pcie_phy_reg_update_bits(rcar, 0x148, GENMASK(18, 16), GENMASK(17, 16));
+	rcar_gen4_pcie_phy_reg_update_bits(rcar, 0x148, GENMASK(7, 6), BIT(6));
+	rcar_gen4_pcie_phy_reg_update_bits(rcar, 0x148, GENMASK(2, 0), GENMASK(11, 0));
+	rcar_gen4_pcie_phy_reg_update_bits(rcar, 0x1d4, GENMASK(16, 15), GENMASK(16, 15));
+	rcar_gen4_pcie_phy_reg_update_bits(rcar, 0x514, BIT(26), BIT(26));
+	rcar_gen4_pcie_phy_reg_update_bits(rcar, 0x0f8, BIT(16), 0);
+	rcar_gen4_pcie_phy_reg_update_bits(rcar, 0x0f8, BIT(19), BIT(19));
+
+	val = readl(rcar->base + PCIERSTCTRL1);
+	val &= ~APP_HOLD_PHY_RST;
+	writel(val, rcar->base + PCIERSTCTRL1);
+
+	ret = readl_poll_timeout(rcar->phy_base + 0x0f8, val, !(val & BIT(18)),
+				 100, 10000);
+	if (ret < 0)
+		return ret;
+
+	ret = rcar_gen4_pcie_update_phy_firmware(rcar);
+	if (ret)
+		return ret;
+
+	val = readl(rcar->base + PCIERSTCTRL1);
+	val |= APP_LTSSM_ENABLE;
+	writel(val, rcar->base + PCIERSTCTRL1);
+
+	return 0;
+}
+
 static void rcar_gen4_pcie_ltssm_enable(struct rcar_gen4_pcie *rcar,
 					bool enable)
 {
@@ -201,6 +350,9 @@ static int rcar_gen4_pcie_common_init(struct rcar_gen4_pcie *rcar)
 	if (ret)
 		goto err_unprepare;
 
+	if (rcar->additional_common_init)
+		rcar->additional_common_init(rcar);
+
 	return 0;
 
 err_unprepare:
@@ -242,6 +394,10 @@ static void rcar_gen4_pcie_unprepare(struct rcar_gen4_pcie *rcar)
 
 static int rcar_gen4_pcie_get_resources(struct rcar_gen4_pcie *rcar)
 {
+	rcar->phy_base = devm_platform_ioremap_resource_byname(rcar->pdev, "phy");
+	if (IS_ERR(rcar->phy_base))
+		return PTR_ERR(rcar->base);
+
 	/* Renesas-specific registers */
 	rcar->base = devm_platform_ioremap_resource_byname(rcar->pdev, "app");
 
@@ -452,6 +608,7 @@ static int rcar_gen4_add_dw_pcie(struct rcar_gen4_pcie *rcar)
 
 	rcar->mode = pd->mode;
 	rcar->start_link_enable = pd->start_link_enable;
+	rcar->additional_common_init = pd->additional_common_init;
 
 	switch (rcar->mode) {
 	case DW_PCIE_RC_TYPE:
@@ -521,6 +678,31 @@ static int r8a779f0_pcie_start_link_enable(struct rcar_gen4_pcie *rcar)
 	return 0;
 }
 
+static int rcar_gen4_pcie_start_link_enable(struct rcar_gen4_pcie *rcar)
+{
+	return rcar_gen4_pcie_enable_phy(rcar);
+}
+
+static void rcar_gen4_pcie_additional_common_init(struct rcar_gen4_pcie *rcar)
+{
+	struct dw_pcie *dw = &rcar->dw;
+	u32 val;
+
+	/*
+	 * The SoC manual said the register setting is required. Otherwise,
+	 * linkup failed.
+	 */
+	val = dw_pcie_readl_dbi(dw, PCIE_PORT_LANE_SKEW);
+	val &= ~PORT_LANE_SKEW_INSERT_MASK;
+	if (dw->num_lanes < 4)
+		val |= BIT(6);
+	dw_pcie_writel_dbi(dw, PCIE_PORT_LANE_SKEW, val);
+
+	val = readl(rcar->base + PCIEPWRMNGCTRL);
+	val |= APP_CLK_REQ_N | APP_CLK_PM_EN;
+	writel(val, rcar->base + PCIEPWRMNGCTRL);
+}
+
 static struct rcar_gen4_pcie_platdata platdata_r8a779f0_pcie = {
 	.mode = DW_PCIE_RC_TYPE,
 	.start_link_enable = r8a779f0_pcie_start_link_enable,
@@ -533,10 +715,14 @@ static struct rcar_gen4_pcie_platdata platdata_r8a779f0_pcie_ep = {
 
 static struct rcar_gen4_pcie_platdata platdata_rcar_gen4_pcie = {
 	.mode = DW_PCIE_RC_TYPE,
+	.start_link_enable = rcar_gen4_pcie_start_link_enable,
+	.additional_common_init = rcar_gen4_pcie_additional_common_init,
 };
 
 static struct rcar_gen4_pcie_platdata platdata_rcar_gen4_pcie_ep = {
 	.mode = DW_PCIE_EP_TYPE,
+	.start_link_enable = rcar_gen4_pcie_start_link_enable,
+	.additional_common_init = rcar_gen4_pcie_additional_common_init,
 };
 
 static const struct of_device_id rcar_gen4_pcie_of_match[] = {
-- 
2.25.1


