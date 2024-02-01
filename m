Return-Path: <devicetree+bounces-37778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4F18462EB
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 22:53:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2330628E14C
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 21:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A9153F8D8;
	Thu,  1 Feb 2024 21:53:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDF939AE1;
	Thu,  1 Feb 2024 21:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.142.180.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706824401; cv=none; b=g3mZeZHBMwG2YZywiWfKPzsfuo83k7brkMHLcwd7f9+HUgHP1PxdzAUm+rBcY6RxlcQXkHYUB5mWArjxuECv4Fv3eHCdLkPil7V5/T6uL3HC9GEO6fVi1jg0q6n75iUVmn7nYRxDtEUqrK7K7/xN4x3ACMnESB6uDDXv7YL370Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706824401; c=relaxed/simple;
	bh=fseJdiTPMuCBmzuCSJROPu8LnMFm27rgkayoogCsG9w=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iAkFmPkZL5NFKDWebYzYkP6IuuFWQ/I1LU8Q451wmzoRD7U7zHP2NepZG8tDdSjeqiyPzRAKUuoTA0c3eT4lseUmTR4q4fmOSL6dYNcEwO4UTZhT/qqxjMxvQcdR0R6BOVotaqn+lY+2/KuJ+XFrlThkJye++DpfCYISpKPApw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org; spf=pass smtp.mailfrom=makrotopia.org; arc=none smtp.client-ip=185.142.180.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=makrotopia.org
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1rVeze-0004DB-0o;
	Thu, 01 Feb 2024 21:53:10 +0000
Date: Thu, 1 Feb 2024 21:53:06 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Bc-bocun Chen <bc-bocun.chen@mediatek.com>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Golle <daniel@makrotopia.org>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH 2/2] phy: add driver for MediaTek XFI T-PHY
Message-ID: <dd6b40ea1f7f8459a9a2cfe7fa60c1108332ade6.1706823233.git.daniel@makrotopia.org>
References: <702afb0c1246d95c90b22e57105304028bdd3083.1706823233.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <702afb0c1246d95c90b22e57105304028bdd3083.1706823233.git.daniel@makrotopia.org>

Add driver for MediaTek's XFI T-PHY, 10 Gigabit/s Ethernet SerDes PHY
which can be found in the MT7988 SoC.

The PHY can operates only in PHY_MODE_ETHERNET, the submode is one of
PHY_INTERFACE_MODE_* corresponding to the supported modes:

 * USXGMII                 \
 * 10GBase-R                }- USXGMII PCS - XGDM  \
 * 5GBase-R                /                        \
                                                     }- Ethernet MAC
 * 2500Base-X              \                        /
 * 1000Base-X               }- LynxI PCS - GDM     /
 * Cisco SGMII (MAC side)  /

In order to work-around a performance issue present on the first of
two XFI T-PHYs present in MT7988, special tuning is applied which can be
selected by adding the 'mediatek,usxgmii-performance-errata' property to
the device tree node.

There is no documentation for most registers used for the
analog/tuning part, however, most of the registers have been partially
reverse-engineered from MediaTek's SDK implementation (an opaque
sequence of 32-bit register writes) and descriptions for all relevant
digital registers and bits such as resets and muxes have been supplied
by MediaTek.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 MAINTAINERS                             |   1 +
 drivers/phy/mediatek/Kconfig            |  12 +
 drivers/phy/mediatek/Makefile           |   1 +
 drivers/phy/mediatek/phy-mtk-xfi-tphy.c | 392 ++++++++++++++++++++++++
 4 files changed, 406 insertions(+)
 create mode 100644 drivers/phy/mediatek/phy-mtk-xfi-tphy.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 52769631bdb1a..52e4192470bd9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13715,6 +13715,7 @@ L:	netdev@vger.kernel.org
 S:	Maintained
 F:	drivers/net/phy/mediatek-ge-soc.c
 F:	drivers/net/phy/mediatek-ge.c
+F:	drivers/phy/mediatek/phy-mtk-xfi-tphy.c
 
 MEDIATEK I2C CONTROLLER DRIVER
 M:	Qii Wang <qii.wang@mediatek.com>
diff --git a/drivers/phy/mediatek/Kconfig b/drivers/phy/mediatek/Kconfig
index 3125ecb5d119f..5161d130c7f8b 100644
--- a/drivers/phy/mediatek/Kconfig
+++ b/drivers/phy/mediatek/Kconfig
@@ -13,6 +13,18 @@ config PHY_MTK_PCIE
 	  callback for PCIe GEN3 port, it supports software efuse
 	  initialization.
 
+config PHY_MTK_XFI_TPHY
+	tristate "MediaTek XFI T-PHY Driver"
+	depends on ARCH_MEDIATEK || COMPILE_TEST
+	depends on OF && OF_ADDRESS
+	depends on HAS_IOMEM
+	select GENERIC_PHY
+	help
+	  Say 'Y' here to add support for MediaTek XFI T-PHY driver.
+	  The driver provides access to the Ethernet SerDes T-PHY supporting
+	  1GE and 2.5GE modes via the LynxI PCS, and 5GE and 10GE modes
+	  via the USXGMII PCS found in MediaTek SoCs with 10G Ethernet.
+
 config PHY_MTK_TPHY
 	tristate "MediaTek T-PHY Driver"
 	depends on ARCH_MEDIATEK || COMPILE_TEST
diff --git a/drivers/phy/mediatek/Makefile b/drivers/phy/mediatek/Makefile
index c9a50395533eb..fa7217178e7f4 100644
--- a/drivers/phy/mediatek/Makefile
+++ b/drivers/phy/mediatek/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_PHY_MTK_PCIE)		+= phy-mtk-pcie.o
 obj-$(CONFIG_PHY_MTK_TPHY)		+= phy-mtk-tphy.o
 obj-$(CONFIG_PHY_MTK_UFS)		+= phy-mtk-ufs.o
 obj-$(CONFIG_PHY_MTK_XSPHY)		+= phy-mtk-xsphy.o
+obj-$(CONFIG_PHY_MTK_XFI_TPHY)		+= phy-mtk-xfi-tphy.o
 
 phy-mtk-hdmi-drv-y			:= phy-mtk-hdmi.o
 phy-mtk-hdmi-drv-y			+= phy-mtk-hdmi-mt2701.o
diff --git a/drivers/phy/mediatek/phy-mtk-xfi-tphy.c b/drivers/phy/mediatek/phy-mtk-xfi-tphy.c
new file mode 100644
index 0000000000000..d50e6320860e5
--- /dev/null
+++ b/drivers/phy/mediatek/phy-mtk-xfi-tphy.c
@@ -0,0 +1,392 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* MediaTek 10GE SerDes PHY driver
+ *
+ * Copyright (c) 2024 Daniel Golle <daniel@makrotopia.org>
+ *                    Bc-bocun Chen <bc-bocun.chen@mediatek.com>
+ * based on mtk_usxgmii.c found in MediaTek's SDK released under GPL-2.0
+ * Copyright (c) 2022 MediaTek Inc.
+ * Author: Henry Yen <henry.yen@mediatek.com>
+ */
+
+#include <linux/module.h>
+#include <linux/device.h>
+#include <linux/platform_device.h>
+#include <linux/of.h>
+#include <linux/io.h>
+#include <linux/clk.h>
+#include <linux/reset.h>
+#include <linux/phy.h>
+#include <linux/phy/phy.h>
+
+#define MTK_XFI_TPHY_NUM_CLOCKS		2
+
+#define REG_DIG_GLB_70			0x0070
+#define  XTP_PCS_RX_EQ_IN_PROGRESS(x)	FIELD_PREP(GENMASK(25, 24), (x))
+#define  XTP_PCS_MODE_MASK		GENMASK(17, 16)
+#define  XTP_PCS_MODE(x)		FIELD_PREP(GENMASK(17, 16), (x))
+#define  XTP_PCS_RST_B			BIT(15)
+#define  XTP_FRC_PCS_RST_B		BIT(14)
+#define  XTP_PCS_PWD_SYNC_MASK		GENMASK(13, 12)
+#define  XTP_PCS_PWD_SYNC(x)		FIELD_PREP(XTP_PCS_PWD_SYNC_MASK, (x))
+#define  XTP_PCS_PWD_ASYNC_MASK		GENMASK(11, 10)
+#define  XTP_PCS_PWD_ASYNC(x)		FIELD_PREP(XTP_PCS_PWD_ASYNC_MASK, (x))
+#define  XTP_FRC_PCS_PWD_ASYNC		BIT(8)
+#define  XTP_PCS_UPDT			BIT(4)
+#define  XTP_PCS_IN_FR_RG		BIT(0)
+
+#define REG_DIG_GLB_F4			0x00f4
+#define  XFI_DPHY_PCS_SEL		BIT(0)
+#define   XFI_DPHY_PCS_SEL_SGMII	FIELD_PREP(XFI_DPHY_PCS_SEL, 1)
+#define   XFI_DPHY_PCS_SEL_USXGMII	FIELD_PREP(XFI_DPHY_PCS_SEL, 0)
+#define  XFI_DPHY_AD_SGDT_FRC_EN	BIT(5)
+
+#define REG_DIG_LN_TRX_40		0x3040
+#define  XTP_LN_FRC_TX_DATA_EN		BIT(29)
+#define  XTP_LN_TX_DATA_EN		BIT(28)
+
+#define REG_DIG_LN_TRX_B0		0x30b0
+#define  XTP_LN_FRC_TX_MACCK_EN		BIT(5)
+#define  XTP_LN_TX_MACCK_EN		BIT(4)
+
+#define REG_ANA_GLB_D0			0x90d0
+#define  XTP_GLB_USXGMII_SEL_MASK	GENMASK(3, 1)
+#define  XTP_GLB_USXGMII_SEL(x)		FIELD_PREP(GENMASK(3, 1), (x))
+#define  XTP_GLB_USXGMII_EN		BIT(0)
+
+struct mtk_xfi_tphy {
+	void __iomem		*base;
+	struct device		*dev;
+	struct reset_control	*reset;
+	struct clk_bulk_data	clocks[MTK_XFI_TPHY_NUM_CLOCKS];
+	bool			da_war;
+};
+
+static void mtk_xfi_tphy_write(struct mtk_xfi_tphy *xfi_tphy, u16 reg,
+			       u32 value)
+{
+	iowrite32(value, xfi_tphy->base + reg);
+}
+
+static void mtk_xfi_tphy_rmw(struct mtk_xfi_tphy *xfi_tphy, u16 reg,
+			     u32 clr, u32 set)
+{
+	u32 val;
+
+	val = ioread32(xfi_tphy->base + reg);
+	val &= ~clr;
+	val |= set;
+	iowrite32(val, xfi_tphy->base + reg);
+}
+
+static void mtk_xfi_tphy_set(struct mtk_xfi_tphy *xfi_tphy, u16 reg,
+			     u32 set)
+{
+	mtk_xfi_tphy_rmw(xfi_tphy, reg, 0, set);
+}
+
+static void mtk_xfi_tphy_clear(struct mtk_xfi_tphy *xfi_tphy, u16 reg,
+			       u32 clr)
+{
+	mtk_xfi_tphy_rmw(xfi_tphy, reg, clr, 0);
+}
+
+static void mtk_xfi_tphy_setup(struct mtk_xfi_tphy *xfi_tphy,
+			       phy_interface_t interface)
+{
+	bool is_2p5g = (interface == PHY_INTERFACE_MODE_2500BASEX);
+	bool is_1g = (interface == PHY_INTERFACE_MODE_1000BASEX ||
+		      interface == PHY_INTERFACE_MODE_SGMII);
+	bool is_10g = (interface == PHY_INTERFACE_MODE_10GBASER ||
+		       interface == PHY_INTERFACE_MODE_USXGMII);
+	bool is_5g = (interface == PHY_INTERFACE_MODE_5GBASER);
+	bool is_xgmii = (is_10g || is_5g);
+
+	dev_dbg(xfi_tphy->dev, "setting up for mode %s\n", phy_modes(interface));
+
+	/* Setup PLL setting */
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x9024, 0x100000, is_10g ? 0x0 : 0x100000);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x2020, 0x202000, is_5g ? 0x202000 : 0x0);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x2030, 0x500, is_1g ? 0x0 : 0x500);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x2034, 0xa00, is_1g ? 0x0 : 0xa00);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x2040, 0x340000, is_1g ? 0x200000 :
+							     0x140000);
+
+	/* Setup RXFE BW setting */
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x50f0, 0xc10, is_1g ? 0x410 :
+							  is_5g ? 0x800 : 0x400);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x50e0, 0x4000, is_5g ? 0x0 : 0x4000);
+
+	/* Setup RX CDR setting */
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x506c, 0x30000, is_5g ? 0x0 : 0x30000);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x5070, 0x670000, is_5g ? 0x620000 : 0x50000);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x5074, 0x180000, is_5g ? 0x180000 : 0x0);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x5078, 0xf000400, is_5g ? 0x8000000 :
+							      0x7000400);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x507c, 0x5000500, is_5g ? 0x4000400 :
+							      0x1000100);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x5080, 0x1410, is_1g ? 0x400 :
+							   is_5g ? 0x1010 : 0x0);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x5084, 0x30300, is_1g ? 0x30300 :
+							    is_5g ? 0x30100 :
+								    0x100);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x5088, 0x60200, is_1g ? 0x20200 :
+							 is_5g ? 0x40000 :
+								 0x20000);
+
+	/* Setting RXFE adaptation range setting */
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x50e4, 0xc0000, is_5g ? 0x0 : 0xc0000);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x50e8, 0x40000, is_5g ? 0x0 : 0x40000);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x50ec, 0xa00, is_1g ? 0x200 : 0x800);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x50a8, 0xee0000, is_5g ? 0x800000 :
+							     0x6e0000);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x6004, 0x190000, is_5g ? 0x0 : 0x190000);
+	if (is_10g)
+		mtk_xfi_tphy_write(xfi_tphy, 0x00f8, 0x01423342);
+	else if (is_5g)
+		mtk_xfi_tphy_write(xfi_tphy, 0x00f8, 0x00a132a1);
+	else if (is_2p5g)
+		mtk_xfi_tphy_write(xfi_tphy, 0x00f8, 0x009c329c);
+	else
+		mtk_xfi_tphy_write(xfi_tphy, 0x00f8, 0x00fa32fa);
+
+	/* Force SGDT_OUT off and select PCS */
+	mtk_xfi_tphy_rmw(xfi_tphy, REG_DIG_GLB_F4,
+			 XFI_DPHY_AD_SGDT_FRC_EN | XFI_DPHY_PCS_SEL,
+			 XFI_DPHY_AD_SGDT_FRC_EN |
+			 (is_xgmii ? XFI_DPHY_PCS_SEL_USXGMII :
+				     XFI_DPHY_PCS_SEL_SGMII));
+
+
+	/* Force GLB_CKDET_OUT */
+	mtk_xfi_tphy_set(xfi_tphy, 0x0030, 0xc00);
+
+	/* Force AEQ on */
+	mtk_xfi_tphy_write(xfi_tphy, REG_DIG_GLB_70,
+			   XTP_PCS_RX_EQ_IN_PROGRESS(2) |
+			   XTP_PCS_PWD_SYNC(2) |
+			   XTP_PCS_PWD_ASYNC(2));
+
+	usleep_range(1, 5);
+
+	/* Setup TX DA default value */
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x30b0, 0x30, 0x20);
+	mtk_xfi_tphy_write(xfi_tphy, 0x3028, 0x00008a01);
+	mtk_xfi_tphy_write(xfi_tphy, 0x302c, 0x0000a884);
+	mtk_xfi_tphy_write(xfi_tphy, 0x3024, 0x00083002);
+
+	/* Setup RG default value */
+	if (is_xgmii) {
+		mtk_xfi_tphy_write(xfi_tphy, 0x3010, 0x00022220);
+		mtk_xfi_tphy_write(xfi_tphy, 0x5064, 0x0f020a01);
+		mtk_xfi_tphy_write(xfi_tphy, 0x50b4, 0x06100600);
+		if (interface == PHY_INTERFACE_MODE_USXGMII)
+			mtk_xfi_tphy_write(xfi_tphy, 0x3048, 0x40704000);
+		else
+			mtk_xfi_tphy_write(xfi_tphy, 0x3048, 0x47684100);
+	} else {
+		mtk_xfi_tphy_write(xfi_tphy, 0x3010, 0x00011110);
+		mtk_xfi_tphy_write(xfi_tphy, 0x3048, 0x40704000);
+	}
+
+	if (is_1g)
+		mtk_xfi_tphy_write(xfi_tphy, 0x3064, 0x0000c000);
+
+	/* Setup RX EQ initial value */
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x3050, 0xa8000000,
+			 (interface != PHY_INTERFACE_MODE_10GBASER) ?
+			  0xa8000000 : 0x0);
+	mtk_xfi_tphy_rmw(xfi_tphy, 0x3054, 0xaa,
+			 (interface != PHY_INTERFACE_MODE_10GBASER) ?
+			  0xaa : 0x0);
+
+	if (is_xgmii)
+		mtk_xfi_tphy_write(xfi_tphy, 0x306c, 0x00000f00);
+	else if (is_2p5g)
+		mtk_xfi_tphy_write(xfi_tphy, 0x306c, 0x22000f00);
+	else
+		mtk_xfi_tphy_write(xfi_tphy, 0x306c, 0x20200f00);
+
+	if (interface == PHY_INTERFACE_MODE_10GBASER && xfi_tphy->da_war)
+		mtk_xfi_tphy_rmw(xfi_tphy, 0xa008, 0x10000, 0x10000);
+
+	mtk_xfi_tphy_rmw(xfi_tphy, 0xa060, 0x50000, is_xgmii ? 0x40000 :
+							       0x50000);
+
+	/* Setup PHYA speed */
+	mtk_xfi_tphy_rmw(xfi_tphy, REG_ANA_GLB_D0,
+			 XTP_GLB_USXGMII_SEL_MASK | XTP_GLB_USXGMII_EN,
+			 is_10g ?  XTP_GLB_USXGMII_SEL(0) :
+			 is_5g ?   XTP_GLB_USXGMII_SEL(1) :
+			 is_2p5g ? XTP_GLB_USXGMII_SEL(2) :
+				   XTP_GLB_USXGMII_SEL(3));
+	mtk_xfi_tphy_set(xfi_tphy, REG_ANA_GLB_D0, XTP_GLB_USXGMII_EN);
+
+	/* Release reset */
+	mtk_xfi_tphy_set(xfi_tphy, REG_DIG_GLB_70,
+			 XTP_PCS_RST_B | XTP_FRC_PCS_RST_B);
+	usleep_range(150, 500);
+
+	/* Switch to P0 */
+	mtk_xfi_tphy_rmw(xfi_tphy, REG_DIG_GLB_70,
+			 XTP_PCS_PWD_SYNC_MASK |
+			 XTP_PCS_PWD_ASYNC_MASK,
+			 XTP_FRC_PCS_PWD_ASYNC |
+			 XTP_PCS_UPDT | XTP_PCS_IN_FR_RG);
+	usleep_range(1, 5);
+
+	mtk_xfi_tphy_clear(xfi_tphy, REG_DIG_GLB_70, XTP_PCS_UPDT);
+	usleep_range(15, 50);
+
+	if (is_xgmii) {
+		/* Switch to Gen3 */
+		mtk_xfi_tphy_rmw(xfi_tphy, REG_DIG_GLB_70,
+				 XTP_PCS_MODE_MASK | XTP_PCS_UPDT,
+				 XTP_PCS_MODE(2) | XTP_PCS_UPDT);
+	} else {
+		/* Switch to Gen2 */
+		mtk_xfi_tphy_rmw(xfi_tphy, REG_DIG_GLB_70,
+				 XTP_PCS_MODE_MASK | XTP_PCS_UPDT,
+				 XTP_PCS_MODE(1) | XTP_PCS_UPDT);
+	}
+	usleep_range(1, 5);
+
+	mtk_xfi_tphy_clear(xfi_tphy, REG_DIG_GLB_70, XTP_PCS_UPDT);
+
+	usleep_range(100, 500);
+
+	/* Enable MAC CK */
+	mtk_xfi_tphy_set(xfi_tphy, REG_DIG_LN_TRX_B0, XTP_LN_TX_MACCK_EN);
+	mtk_xfi_tphy_clear(xfi_tphy, REG_DIG_GLB_F4, XFI_DPHY_AD_SGDT_FRC_EN);
+
+	/* Enable TX data */
+	mtk_xfi_tphy_set(xfi_tphy, REG_DIG_LN_TRX_40,
+			 XTP_LN_FRC_TX_DATA_EN | XTP_LN_TX_DATA_EN);
+	usleep_range(400, 1000);
+}
+
+static int mtk_xfi_tphy_set_mode(struct phy *phy, enum phy_mode mode, int
+				 submode)
+{
+	struct mtk_xfi_tphy *xfi_tphy = phy_get_drvdata(phy);
+
+	if (mode != PHY_MODE_ETHERNET)
+		return -EINVAL;
+
+	switch (submode) {
+	case PHY_INTERFACE_MODE_1000BASEX:
+	case PHY_INTERFACE_MODE_2500BASEX:
+	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_5GBASER:
+	case PHY_INTERFACE_MODE_10GBASER:
+	case PHY_INTERFACE_MODE_USXGMII:
+		mtk_xfi_tphy_setup(xfi_tphy, submode);
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int mtk_xfi_tphy_reset(struct phy *phy)
+{
+	struct mtk_xfi_tphy *xfi_tphy = phy_get_drvdata(phy);
+
+	reset_control_assert(xfi_tphy->reset);
+	usleep_range(100, 500);
+	reset_control_deassert(xfi_tphy->reset);
+	usleep_range(1, 10);
+
+	return 0;
+}
+
+static int mtk_xfi_tphy_power_on(struct phy *phy)
+{
+	struct mtk_xfi_tphy *xfi_tphy = phy_get_drvdata(phy);
+
+	return clk_bulk_prepare_enable(MTK_XFI_TPHY_NUM_CLOCKS, xfi_tphy->clocks);
+}
+
+static int mtk_xfi_tphy_power_off(struct phy *phy)
+{
+	struct mtk_xfi_tphy *xfi_tphy = phy_get_drvdata(phy);
+
+	clk_bulk_disable_unprepare(MTK_XFI_TPHY_NUM_CLOCKS, xfi_tphy->clocks);
+
+	return 0;
+}
+
+static const struct phy_ops mtk_xfi_tphy_ops = {
+	.power_on	= mtk_xfi_tphy_power_on,
+	.power_off	= mtk_xfi_tphy_power_off,
+	.set_mode	= mtk_xfi_tphy_set_mode,
+	.reset		= mtk_xfi_tphy_reset,
+	.owner		= THIS_MODULE,
+};
+
+static int mtk_xfi_tphy_probe(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	struct phy_provider *phy_provider;
+	struct mtk_xfi_tphy *xfi_tphy;
+	struct phy *phy;
+
+	if (!np)
+		return -ENODEV;
+
+	xfi_tphy = devm_kzalloc(&pdev->dev, sizeof(*xfi_tphy), GFP_KERNEL);
+	if (!xfi_tphy)
+		return -ENOMEM;
+
+	xfi_tphy->base = devm_of_iomap(&pdev->dev, np, 0, NULL);
+	if (!xfi_tphy->base)
+		return -EIO;
+
+	xfi_tphy->dev = &pdev->dev;
+
+	xfi_tphy->clocks[0].id = "topxtal";
+	xfi_tphy->clocks[0].clk = devm_clk_get(&pdev->dev, xfi_tphy->clocks[0].id);
+	if (IS_ERR(xfi_tphy->clocks[0].clk))
+		return PTR_ERR(xfi_tphy->clocks[0].clk);
+
+	xfi_tphy->clocks[1].id = "xfipll";
+	xfi_tphy->clocks[1].clk = devm_clk_get(&pdev->dev, xfi_tphy->clocks[1].id);
+	if (IS_ERR(xfi_tphy->clocks[1].clk))
+		return PTR_ERR(xfi_tphy->clocks[1].clk);
+
+	xfi_tphy->reset = devm_reset_control_get_exclusive(&pdev->dev, NULL);
+	if (IS_ERR(xfi_tphy->reset))
+		return PTR_ERR(xfi_tphy->reset);
+
+	xfi_tphy->da_war = of_property_read_bool(np,
+						 "mediatek,usxgmii-performance-errata");
+
+	phy = devm_phy_create(&pdev->dev, NULL, &mtk_xfi_tphy_ops);
+	if (IS_ERR(phy))
+		return PTR_ERR(phy);
+
+	phy_set_drvdata(phy, xfi_tphy);
+
+	phy_provider = devm_of_phy_provider_register(&pdev->dev,
+						     of_phy_simple_xlate);
+
+	return PTR_ERR_OR_ZERO(phy_provider);
+}
+
+static const struct of_device_id mtk_xfi_tphy_match[] = {
+	{ .compatible = "mediatek,mt7988-xfi-tphy", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, mtk_xfi_tphy_match);
+
+static struct platform_driver mtk_xfi_tphy_driver = {
+	.probe = mtk_xfi_tphy_probe,
+	.driver = {
+		.name = "mtk-xfi-tphy",
+		.of_match_table = mtk_xfi_tphy_match,
+	},
+};
+module_platform_driver(mtk_xfi_tphy_driver);
+
+MODULE_DESCRIPTION("MediaTek XFI T-PHY driver");
+MODULE_AUTHOR("Daniel Golle <daniel@makrotopia.org>");
+MODULE_AUTHOR("Bc-bocun Chen <bc-bocun.chen@mediatek.com>");
+MODULE_LICENSE("GPL");
-- 
2.43.0

