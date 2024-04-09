Return-Path: <devicetree+bounces-57300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF1789D055
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 04:24:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E4EE1F23613
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 02:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47DA14F213;
	Tue,  9 Apr 2024 02:24:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51324F1FC;
	Tue,  9 Apr 2024 02:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.142.180.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712629468; cv=none; b=W6jRf//K5h9HATMAbexdOqXdFXllAK6CFUTZNKw7a49K61sENYwkAlROMFUlacDD/phCqYmliV+Q+OY0yVqxx/AbY+IjhSMcMX7DQXctuSbd2DOyKJ4gO0bv2s1q6ru2iuF3z7DgA5eWZpvwJCRUsReHwGZJ0WBvNP8OLP9Jq+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712629468; c=relaxed/simple;
	bh=JYsSUNsaxU2mnuHYw3cL8/ErcphfEmV8q2IqOatfo5A=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=scMWdd84XzsZyJ40cxo1QBRoLXuottHDbktjZglEaqcmUaTxlQTv4WHbAtm7wwJoqUAVrAyLduoFrrC4j4YPO60Xgg3+n/dSBwnyTcNkGBe6NPBz4fqd7o9q6IWYGQLMMCAFneO2OqOmwYP60ofzv0/IiZuIb169hHCWLdisemE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org; spf=pass smtp.mailfrom=makrotopia.org; arc=none smtp.client-ip=185.142.180.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=makrotopia.org
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1ru19j-0007XN-2g;
	Tue, 09 Apr 2024 02:24:15 +0000
Date: Tue, 9 Apr 2024 03:24:12 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Vinod Koul <vkoul@kernel.org>,
	Bc-bocun Chen <bc-bocun.chen@mediatek.com>,
	Steven Liu <steven.liu@mediatek.com>,
	John Crispin <john@phrozen.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Daniel Golle <daniel@makrotopia.org>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH v4 2/2] phy: add driver for MediaTek XFI T-PHY
Message-ID: <8719c82634df7e8e984f1a608be3ba2f2d494fb4.1712625857.git.daniel@makrotopia.org>
References: <da5498096f71a40ca1eac4124b7bb601c82396fb.1712625857.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <da5498096f71a40ca1eac4124b7bb601c82396fb.1712625857.git.daniel@makrotopia.org>

Add driver for MediaTek's XFI T-PHY which can be found in the MT7988
SoC. The XFI T-PHY is a 10 Gigabit/s Ethernet SerDes PHY with muxes on
the internal side to be used with either USXGMII PCS or LynxI PCS,
depending on the selected PHY interface mode.

The PHY can operates only in PHY_MODE_ETHERNET, the submode is one of
PHY_INTERFACE_MODE_* corresponding to the supported modes:

 * USXGMII                 \
 * 10GBase-R                }- USXGMII PCS - XGDM  \
 * 5GBase-R                /                        \
                                                     }- Ethernet MAC
 * 2500Base-X              \                        /
 * 1000Base-X               }- LynxI PCS - GDM     /
 * Cisco SGMII (MAC side)  /

I chose the name XFI T-PHY because names of functions dealing with the
phy in the vendor driver are prefixed "xfi_pextp_".

The register space used by the phy is called "pextp" in the vendor
sources, which could be read as "_P_CI _ex_press _T_-_P_hy", and that
is quite misleading as this phy isn't used for anything related to
PCIe, so I wanted to find a better name.

XFI is still somehow related (as in: you would find the relevant
places using grep in the vendor driver when looking for that) and the
term seemed to at least somehow be aligned with the function of that
phy: Dealing with (up to) 10 Gbit/s Ethernet serialized differential
signals.

In order to work-around a performance issue present on the first of
two XFI T-PHYs found in MT7988, special tuning is applied which can
be selected by adding the 'mediatek,usxgmii-performance-errata'
property to the device tree node, similar to how the vendor driver is
doing that too.

There is no documentation for most registers used for the
analog/tuning part, however, most of the registers have been partially
reverse-engineered from MediaTek's SDK implementation (see links, an
opaque sequence of 32-bit register writes) and descriptions for all
relevant digital registers and bits such as resets and muxes have been
supplied by MediaTek.

Link: https://git01.mediatek.com/plugins/gitiles/openwrt/feeds/mtk-openwrt-feeds/+/b72d6cba92bf9e29fb035c03052fa1e86664a25b/21.02/files/target/linux/mediatek/files-5.4/drivers/net/ethernet/mediatek/mtk_sgmii.c
Link: https://git01.mediatek.com/plugins/gitiles/openwrt/feeds/mtk-openwrt-feeds/+/dec96a1d9b82cdcda4a56453fd0b453d4cab4b85/21.02/files/target/linux/mediatek/files-5.4/drivers/net/ethernet/mediatek/mtk_eth_soc.c
Signed-off-by: Daniel Golle <daniel@makrotopia.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
v4:
 Functional changes:
  * Include fix for SGMII, found in vendor SDK[1].

 Non-functional/cosmetic changes:
  * Separate allocation and assignment of bools in mtk_xfi_tphy_setup().
  * Remove unnecessary parentheses.
  * Explain naming in commit message.
  * Drop unnecessary dependencies from Kconfig.
  * Provide URL references to source of magic values.
  * Add kernel-doc comments.

[1]: https://git01.mediatek.com/plugins/gitiles/openwrt/feeds/mtk-openwrt-feeds/+/b72d6cba92bf9e29fb035c03052fa1e86664a25b

v3: no changes

v2:
 * use IO helpers from mtk-io.h instead of rolling my own
 * use devm_clk_bulk_get()
 * yse devm_platform_ioremap_resource()
 * unify name and description everywhere
 * invert bool is_xgmii into bool use_lynxi_pcs and add comments
   describing the meaning of each of the stack variables
 * not much we can do about remaining magic values unless MTK provides
   definitions for them

 MAINTAINERS                             |   1 +
 drivers/phy/mediatek/Kconfig            |  11 +
 drivers/phy/mediatek/Makefile           |   1 +
 drivers/phy/mediatek/phy-mtk-xfi-tphy.c | 451 ++++++++++++++++++++++++
 4 files changed, 464 insertions(+)
 create mode 100644 drivers/phy/mediatek/phy-mtk-xfi-tphy.c

diff --git a/MAINTAINERS b/MAINTAINERS
index a4924fda31829b..98b4b391d224f9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13870,6 +13870,7 @@ L:	netdev@vger.kernel.org
 S:	Maintained
 F:	drivers/net/phy/mediatek-ge-soc.c
 F:	drivers/net/phy/mediatek-ge.c
+F:	drivers/phy/mediatek/phy-mtk-xfi-tphy.c
 
 MEDIATEK I2C CONTROLLER DRIVER
 M:	Qii Wang <qii.wang@mediatek.com>
diff --git a/drivers/phy/mediatek/Kconfig b/drivers/phy/mediatek/Kconfig
index 3849b7c87d2872..60e00057e8bc71 100644
--- a/drivers/phy/mediatek/Kconfig
+++ b/drivers/phy/mediatek/Kconfig
@@ -13,6 +13,17 @@ config PHY_MTK_PCIE
 	  callback for PCIe GEN3 port, it supports software efuse
 	  initialization.
 
+config PHY_MTK_XFI_TPHY
+	tristate "MediaTek 10GE SerDes XFI T-PHY driver"
+	depends on ARCH_MEDIATEK || COMPILE_TEST
+	depends on OF
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
index f6e24a47e08153..1b8088df71e845 100644
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
index 00000000000000..3e3af7f7a3fdf5
--- /dev/null
+++ b/drivers/phy/mediatek/phy-mtk-xfi-tphy.c
@@ -0,0 +1,451 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * MediaTek 10GE SerDes XFI T-PHY driver
+ *
+ * Copyright (c) 2024 Daniel Golle <daniel@makrotopia.org>
+ *                    Bc-bocun Chen <bc-bocun.chen@mediatek.com>
+ * based on mtk_usxgmii.c and mtk_sgmii.c found in MediaTek's SDK (GPL-2.0)
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
+#include "phy-mtk-io.h"
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
+/**
+ * struct mtk_xfi_tphy - run-time data of the XFI phy instance
+ * @base: IO memory area to access phy registers.
+ * @dev: Kernel device used to output prefixed debug info.
+ * @reset: Reset control corresponding to the phy instance.
+ * @clocks: All clocks required for the phy to operate.
+ * @da_war: Enables work-around for 10GBase-R mode.
+ */
+struct mtk_xfi_tphy {
+	void __iomem		*base;
+	struct device		*dev;
+	struct reset_control	*reset;
+	struct clk_bulk_data	clocks[MTK_XFI_TPHY_NUM_CLOCKS];
+	bool			da_war;
+};
+
+/**
+ * mtk_xfi_tphy_setup() - Setup phy for specified interface mode.
+ * @xfi_tphy: XFI phy instance.
+ * @interface: Ethernet interface mode
+ *
+ * The setup function is the condensed result of combining the 5 functions which
+ * setup the phy in MediaTek's GPL licensed public SDK sources. They can be found
+ * in mtk_sgmii.c[1] as well as mtk_usxgmii.c[2].
+ *
+ * Many magic values have been replaced by register and bit definitions, however,
+ * that has not been possible in all cases. While the vendor driver uses a
+ * sequence of 32-bit writes, here we try to only modify the actually required
+ * bits.
+ *
+ * [1]: https://git01.mediatek.com/plugins/gitiles/openwrt/feeds/mtk-openwrt-feeds/+/b72d6cba92bf9e29fb035c03052fa1e86664a25b/21.02/files/target/linux/mediatek/files-5.4/drivers/net/ethernet/mediatek/mtk_sgmii.c
+ *
+ * [2]: https://git01.mediatek.com/plugins/gitiles/openwrt/feeds/mtk-openwrt-feeds/+/dec96a1d9b82cdcda4a56453fd0b453d4cab4b85/21.02/files/target/linux/mediatek/files-5.4/drivers/net/ethernet/mediatek/mtk_eth_soc.c
+ */
+static void mtk_xfi_tphy_setup(struct mtk_xfi_tphy *xfi_tphy,
+			       phy_interface_t interface)
+{
+	bool is_1g, is_2p5g, is_5g, is_10g, da_war, use_lynxi_pcs;
+
+	/* shorthands for specific clock speeds depending on interface mode */
+	is_1g = interface == PHY_INTERFACE_MODE_1000BASEX ||
+		interface == PHY_INTERFACE_MODE_SGMII;
+	is_2p5g = interface == PHY_INTERFACE_MODE_2500BASEX;
+	is_5g = interface == PHY_INTERFACE_MODE_5GBASER;
+	is_10g = interface == PHY_INTERFACE_MODE_10GBASER ||
+		 interface == PHY_INTERFACE_MODE_USXGMII;
+
+	/* Is overriding 10GBase-R tuning value required? */
+	da_war = xfi_tphy->da_war && (interface == PHY_INTERFACE_MODE_10GBASER);
+
+	/* configure input mux to either
+	 *  - USXGMII PCS (64b/66b coding) for 5G/10G
+	 *  - LynxI PCS (8b/10b coding) for 1G/2.5G
+	 */
+	use_lynxi_pcs = is_1g || is_2p5g;
+
+	dev_dbg(xfi_tphy->dev, "setting up for mode %s\n", phy_modes(interface));
+
+	/* Setup PLL setting */
+	mtk_phy_update_bits(xfi_tphy->base + 0x9024, 0x100000, is_10g ? 0x0 : 0x100000);
+	mtk_phy_update_bits(xfi_tphy->base + 0x2020, 0x202000, is_5g ? 0x202000 : 0x0);
+	mtk_phy_update_bits(xfi_tphy->base + 0x2030, 0x500, is_1g ? 0x0 : 0x500);
+	mtk_phy_update_bits(xfi_tphy->base + 0x2034, 0xa00, is_1g ? 0x0 : 0xa00);
+	mtk_phy_update_bits(xfi_tphy->base + 0x2040, 0x340000, is_1g ? 0x200000 : 0x140000);
+
+	/* Setup RXFE BW setting */
+	mtk_phy_update_bits(xfi_tphy->base + 0x50f0, 0xc10, is_1g ? 0x410 : is_5g ? 0x800 : 0x400);
+	mtk_phy_update_bits(xfi_tphy->base + 0x50e0, 0x4000, is_5g ? 0x0 : 0x4000);
+
+	/* Setup RX CDR setting */
+	mtk_phy_update_bits(xfi_tphy->base + 0x506c, 0x30000, is_5g ? 0x0 : 0x30000);
+	mtk_phy_update_bits(xfi_tphy->base + 0x5070, 0x670000, is_5g ? 0x620000 : 0x50000);
+	mtk_phy_update_bits(xfi_tphy->base + 0x5074, 0x180000, is_5g ? 0x180000 : 0x0);
+	mtk_phy_update_bits(xfi_tphy->base + 0x5078, 0xf000400, is_5g ? 0x8000000 :
+									0x7000400);
+	mtk_phy_update_bits(xfi_tphy->base + 0x507c, 0x5000500, is_5g ? 0x4000400 :
+									0x1000100);
+	mtk_phy_update_bits(xfi_tphy->base + 0x5080, 0x1410, is_1g ? 0x400 : is_5g ? 0x1010 : 0x0);
+	mtk_phy_update_bits(xfi_tphy->base + 0x5084, 0x30300, is_1g ? 0x30300 :
+							      is_5g ? 0x30100 :
+								      0x100);
+	mtk_phy_update_bits(xfi_tphy->base + 0x5088, 0x60200, is_1g ? 0x20200 :
+							      is_5g ? 0x40000 :
+								      0x20000);
+
+	/* Setting RXFE adaptation range setting */
+	mtk_phy_update_bits(xfi_tphy->base + 0x50e4, 0xc0000, is_5g ? 0x0 : 0xc0000);
+	mtk_phy_update_bits(xfi_tphy->base + 0x50e8, 0x40000, is_5g ? 0x0 : 0x40000);
+	mtk_phy_update_bits(xfi_tphy->base + 0x50ec, 0xa00, is_1g ? 0x200 : 0x800);
+	mtk_phy_update_bits(xfi_tphy->base + 0x50a8, 0xee0000, is_5g ? 0x800000 :
+								       0x6e0000);
+	mtk_phy_update_bits(xfi_tphy->base + 0x6004, 0x190000, is_5g ? 0x0 : 0x190000);
+
+	if (is_10g)
+		writel(0x01423342, xfi_tphy->base + 0x00f8);
+	else if (is_5g)
+		writel(0x00a132a1, xfi_tphy->base + 0x00f8);
+	else if (is_2p5g)
+		writel(0x009c329c, xfi_tphy->base + 0x00f8);
+	else
+		writel(0x00fa32fa, xfi_tphy->base + 0x00f8);
+
+	/* Force SGDT_OUT off and select PCS */
+	mtk_phy_update_bits(xfi_tphy->base + REG_DIG_GLB_F4,
+			    XFI_DPHY_AD_SGDT_FRC_EN | XFI_DPHY_PCS_SEL,
+			    XFI_DPHY_AD_SGDT_FRC_EN |
+			    (use_lynxi_pcs ? XFI_DPHY_PCS_SEL_SGMII :
+					     XFI_DPHY_PCS_SEL_USXGMII));
+
+	/* Force GLB_CKDET_OUT */
+	mtk_phy_set_bits(xfi_tphy->base + 0x0030, 0xc00);
+
+	/* Force AEQ on */
+	writel(XTP_PCS_RX_EQ_IN_PROGRESS(2) | XTP_PCS_PWD_SYNC(2) | XTP_PCS_PWD_ASYNC(2),
+	       xfi_tphy->base + REG_DIG_GLB_70);
+
+	usleep_range(1, 5);
+	writel(XTP_LN_FRC_TX_DATA_EN, xfi_tphy->base + REG_DIG_LN_TRX_40);
+
+	/* Setup TX DA default value */
+	mtk_phy_update_bits(xfi_tphy->base + 0x30b0, 0x30, 0x20);
+	writel(0x00008a01, xfi_tphy->base + 0x3028);
+	writel(0x0000a884, xfi_tphy->base + 0x302c);
+	writel(0x00083002, xfi_tphy->base + 0x3024);
+
+	/* Setup RG default value */
+	if (use_lynxi_pcs) {
+		writel(0x00011110, xfi_tphy->base + 0x3010);
+		writel(0x40704000, xfi_tphy->base + 0x3048);
+	} else {
+		writel(0x00022220, xfi_tphy->base + 0x3010);
+		writel(0x0f020a01, xfi_tphy->base + 0x5064);
+		writel(0x06100600, xfi_tphy->base + 0x50b4);
+		if (interface == PHY_INTERFACE_MODE_USXGMII)
+			writel(0x40704000, xfi_tphy->base + 0x3048);
+		else
+			writel(0x47684100, xfi_tphy->base + 0x3048);
+	}
+
+	if (is_1g)
+		writel(0x0000c000, xfi_tphy->base + 0x3064);
+
+	/* Setup RX EQ initial value */
+	mtk_phy_update_bits(xfi_tphy->base + 0x3050, 0xa8000000,
+			    (interface != PHY_INTERFACE_MODE_10GBASER) ? 0xa8000000 : 0x0);
+	mtk_phy_update_bits(xfi_tphy->base + 0x3054, 0xaa,
+			    (interface != PHY_INTERFACE_MODE_10GBASER) ? 0xaa : 0x0);
+
+	if (!use_lynxi_pcs)
+		writel(0x00000f00, xfi_tphy->base + 0x306c);
+	else if (is_2p5g)
+		writel(0x22000f00, xfi_tphy->base + 0x306c);
+	else
+		writel(0x20200f00, xfi_tphy->base + 0x306c);
+
+	mtk_phy_update_bits(xfi_tphy->base + 0xa008, 0x10000, da_war ? 0x10000 : 0x0);
+
+	mtk_phy_update_bits(xfi_tphy->base + 0xa060, 0x50000, use_lynxi_pcs ? 0x50000 : 0x40000);
+
+	/* Setup PHYA speed */
+	mtk_phy_update_bits(xfi_tphy->base + REG_ANA_GLB_D0,
+			    XTP_GLB_USXGMII_SEL_MASK | XTP_GLB_USXGMII_EN,
+			    is_10g ?  XTP_GLB_USXGMII_SEL(0) :
+			    is_5g ?   XTP_GLB_USXGMII_SEL(1) :
+			    is_2p5g ? XTP_GLB_USXGMII_SEL(2) :
+				      XTP_GLB_USXGMII_SEL(3));
+	mtk_phy_set_bits(xfi_tphy->base + REG_ANA_GLB_D0, XTP_GLB_USXGMII_EN);
+
+	/* Release reset */
+	mtk_phy_set_bits(xfi_tphy->base + REG_DIG_GLB_70,
+			 XTP_PCS_RST_B | XTP_FRC_PCS_RST_B);
+	usleep_range(150, 500);
+
+	/* Switch to P0 */
+	mtk_phy_update_bits(xfi_tphy->base + REG_DIG_GLB_70,
+			    XTP_PCS_IN_FR_RG |
+			    XTP_FRC_PCS_PWD_ASYNC |
+			    XTP_PCS_PWD_ASYNC_MASK |
+			    XTP_PCS_PWD_SYNC_MASK |
+			    XTP_PCS_UPDT,
+			    XTP_PCS_IN_FR_RG |
+			    XTP_FRC_PCS_PWD_ASYNC |
+			    XTP_PCS_UPDT);
+	usleep_range(1, 5);
+
+	mtk_phy_clear_bits(xfi_tphy->base + REG_DIG_GLB_70, XTP_PCS_UPDT);
+	usleep_range(15, 50);
+
+	if (use_lynxi_pcs) {
+		/* Switch to Gen2 */
+		mtk_phy_update_bits(xfi_tphy->base + REG_DIG_GLB_70,
+				    XTP_PCS_MODE_MASK | XTP_PCS_UPDT,
+				    XTP_PCS_MODE(1) | XTP_PCS_UPDT);
+	} else {
+		/* Switch to Gen3 */
+		mtk_phy_update_bits(xfi_tphy->base + REG_DIG_GLB_70,
+				    XTP_PCS_MODE_MASK | XTP_PCS_UPDT,
+				    XTP_PCS_MODE(2) | XTP_PCS_UPDT);
+	}
+	usleep_range(1, 5);
+
+	mtk_phy_clear_bits(xfi_tphy->base + REG_DIG_GLB_70, XTP_PCS_UPDT);
+
+	usleep_range(100, 500);
+
+	/* Enable MAC CK */
+	mtk_phy_set_bits(xfi_tphy->base + REG_DIG_LN_TRX_B0, XTP_LN_TX_MACCK_EN);
+	mtk_phy_clear_bits(xfi_tphy->base + REG_DIG_GLB_F4, XFI_DPHY_AD_SGDT_FRC_EN);
+
+	/* Enable TX data */
+	mtk_phy_set_bits(xfi_tphy->base + REG_DIG_LN_TRX_40,
+			 XTP_LN_FRC_TX_DATA_EN | XTP_LN_TX_DATA_EN);
+	usleep_range(400, 1000);
+}
+
+/**
+ * mtk_xfi_tphy_set_mode() - Setup phy for specified interface mode.
+ *
+ * @phy: Phy instance.
+ * @mode: Only PHY_MODE_ETHERNET is supported.
+ * @submode: An Ethernet interface mode.
+ *
+ * Validate selected mode and call function mtk_xfi_tphy_setup().
+ *
+ * Return:
+ * * %0 - OK
+ * * %-EINVAL - invalid mode
+ */
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
+/**
+ * mtk_xfi_tphy_reset() - Reset the phy.
+ *
+ * @phy: Phy instance.
+ *
+ * Reset the phy using the external reset controller.
+ *
+ * Return:
+ * %0 - OK
+ */
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
+/**
+ * mtk_xfi_tphy_power_on() - Power-on the phy.
+ *
+ * @phy: Phy instance.
+ *
+ * Prepare and enable all clocks required for the phy to operate.
+ *
+ * Return:
+ * See clk_bulk_prepare_enable().
+ */
+static int mtk_xfi_tphy_power_on(struct phy *phy)
+{
+	struct mtk_xfi_tphy *xfi_tphy = phy_get_drvdata(phy);
+
+	return clk_bulk_prepare_enable(MTK_XFI_TPHY_NUM_CLOCKS, xfi_tphy->clocks);
+}
+
+/**
+ * mtk_xfi_tphy_power_off() - Power-off the phy.
+ *
+ * @phy: Phy instance.
+ *
+ * Disable and unprepare all clocks previously enabled.
+ *
+ * Return:
+ * See clk_bulk_prepare_disable().
+ */
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
+/**
+ * mtk_xfi_tphy_probe() - Probe phy instance from Device Tree.
+ * @pdev: Matching platform device.
+ *
+ * The probe function gets IO resource, clocks, reset controller and
+ * whether the DA work-around for 10GBase-R is required from Device Tree and
+ * allocates memory for holding that information in a struct mtk_xfi_tphy.
+ *
+ * Return:
+ * * %0       - OK
+ * * %-ENODEV - Missing associated Device Tree node (should never happen).
+ * * %-ENOMEM - Out of memory.
+ * * Any error value which devm_platform_ioremap_resource(),
+ *   devm_clk_bulk_get(), devm_reset_control_get_exclusive(),
+ *   devm_phy_create() or devm_of_phy_provider_register() may return.
+ */
+static int mtk_xfi_tphy_probe(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	struct phy_provider *phy_provider;
+	struct mtk_xfi_tphy *xfi_tphy;
+	struct phy *phy;
+	int ret;
+
+	if (!np)
+		return -ENODEV;
+
+	xfi_tphy = devm_kzalloc(&pdev->dev, sizeof(*xfi_tphy), GFP_KERNEL);
+	if (!xfi_tphy)
+		return -ENOMEM;
+
+	xfi_tphy->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(xfi_tphy->base))
+		return PTR_ERR(xfi_tphy->base);
+
+	xfi_tphy->dev = &pdev->dev;
+	xfi_tphy->clocks[0].id = "topxtal";
+	xfi_tphy->clocks[1].id = "xfipll";
+	ret = devm_clk_bulk_get(&pdev->dev, MTK_XFI_TPHY_NUM_CLOCKS, xfi_tphy->clocks);
+	if (ret)
+		return ret;
+
+	xfi_tphy->reset = devm_reset_control_get_exclusive(&pdev->dev, NULL);
+	if (IS_ERR(xfi_tphy->reset))
+		return PTR_ERR(xfi_tphy->reset);
+
+	xfi_tphy->da_war = of_property_read_bool(np, "mediatek,usxgmii-performance-errata");
+
+	phy = devm_phy_create(&pdev->dev, NULL, &mtk_xfi_tphy_ops);
+	if (IS_ERR(phy))
+		return PTR_ERR(phy);
+
+	phy_set_drvdata(phy, xfi_tphy);
+	phy_provider = devm_of_phy_provider_register(&pdev->dev, of_phy_simple_xlate);
+
+	return PTR_ERR_OR_ZERO(phy_provider);
+}
+
+static const struct of_device_id mtk_xfi_tphy_match[] = {
+	{ .compatible = "mediatek,mt7988-xfi-tphy", },
+	{ /* sentinel */ }
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
+MODULE_DESCRIPTION("MediaTek 10GE SerDes XFI T-PHY driver");
+MODULE_AUTHOR("Daniel Golle <daniel@makrotopia.org>");
+MODULE_AUTHOR("Bc-bocun Chen <bc-bocun.chen@mediatek.com>");
+MODULE_LICENSE("GPL");
-- 
2.44.0

