Return-Path: <devicetree+bounces-22046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E75D280644B
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:45:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 44810B21169
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 01:45:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31A5615CF;
	Wed,  6 Dec 2023 01:45:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6AACD66;
	Tue,  5 Dec 2023 17:44:54 -0800 (PST)
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1rAgxt-0002iW-0a;
	Wed, 06 Dec 2023 01:44:42 +0000
Date: Wed, 6 Dec 2023 01:44:38 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felix Fietkau <nbd@nbd.name>, John Crispin <john@phrozen.org>,
	Sean Wang <sean.wang@mediatek.com>,
	Mark Lee <Mark-MC.Lee@mediatek.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Alexander Couzens <lynxis@fe80.eu>,
	Daniel Golle <daniel@makrotopia.org>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org
Subject: [RFC PATCH v2 5/8] net: pcs: add driver for MediaTek USXGMII PCS
Message-ID: <3cd8af5e44554c2db2d7898494ee813967206bd9.1701826319.git.daniel@makrotopia.org>
References: <cover.1701826319.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1701826319.git.daniel@makrotopia.org>

Add driver for USXGMII PCS found in the MediaTek MT7988 SoC and supporting
USXGMII, 10GBase-R and 5GBase-R interface modes. In order to support
Cisco SGMII, 1000Base-X and 2500Base-X via the also present LynxI PCS
create a wrapped PCS taking care of the components shared between the
new USXGMII PCS and the legacy LynxI PCS.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 .../bindings/net/pcs/mediatek,usxgmii.yaml    |  46 +-
 MAINTAINERS                                   |   2 +
 drivers/net/pcs/Kconfig                       |  11 +
 drivers/net/pcs/Makefile                      |   1 +
 drivers/net/pcs/pcs-mtk-usxgmii.c             | 413 ++++++++++++++++++
 include/linux/pcs/pcs-mtk-usxgmii.h           |  26 ++
 6 files changed, 456 insertions(+), 43 deletions(-)
 create mode 100644 drivers/net/pcs/pcs-mtk-usxgmii.c
 create mode 100644 include/linux/pcs/pcs-mtk-usxgmii.h

diff --git a/Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.yaml b/Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.yaml
index 9a798c0d2fdd7..0cdaa3545edb0 100644
--- a/Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.yaml
+++ b/Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.yaml
@@ -31,70 +31,30 @@ properties:
   clocks:
     items:
       - description: USXGMII top-level clock
-      - description: SGMII top-level clock
-      - description: SGMII subsystem TX clock
-      - description: SGMII subsystem RX clock
-      - description: XFI PLL clock
-
-  clock-names:
-    items:
-      - const: usxgmii
-      - const: sgmii_sel
-      - const: sgmii_tx
-      - const: sgmii_rx
-      - const: xfi_pll
-
-  phys:
-    items:
-      - description: PEXTP SerDes PHY
-
-  mediatek,sgmiisys:
-    $ref: /schemas/types.yaml#/definitions/phandle
-    description:
-      Phandle to the syscon node of the corresponding SGMII LynxI PCS.
 
   resets:
     items:
       - description: XFI reset
-      - description: SGMII reset
-
-  reset-names:
-    items:
-      - const: xfi
-      - const: sgmii
 
 required:
   - compatible
   - reg
   - clocks
-  - clock-names
-  - phys
-  - mediatek,sgmiisys
   - resets
-  - reset-names
 
 additionalProperties: false
 
 examples:
   - |
     #include <dt-bindings/clock/mediatek,mt7988-clk.h>
-    #include <dt-bindings/reset/mediatek,mt7988-resets.h>
+    #define MT7988_TOPRGU_XFI0_GRST 12
     soc {
       #address-cells = <2>;
       #size-cells = <2>;
         usxgmiisys0: pcs@10080000 {
           compatible = "mediatek,mt7988-usxgmiisys";
           reg = <0 0x10080000 0 0x1000>;
-          clocks = <&topckgen CLK_TOP_USXGMII_SBUS_0_SEL>,
-                   <&topckgen CLK_TOP_SGM_0_SEL>,
-                   <&sgmiisys0 CLK_SGM0_TX_EN>,
-                   <&sgmiisys0 CLK_SGM0_RX_EN>,
-                   <&xfi_pll CLK_XFIPLL_PLL_EN>;
-          clock-names = "usxgmii", "sgmii_sel", "sgmii_tx", "sgmii_rx", "xfi_pll";
-          resets = <&watchdog MT7988_TOPRGU_XFI0_GRST>,
-                   <&watchdog MT7988_TOPRGU_SGMII0_GRST>;
-          reset-names = "xfi", "sgmii";
-          phys = <&xfi_pextp0>;
-          mediatek,sgmiisys = <&sgmiisys0>;
+          clocks = <&topckgen CLK_TOP_USXGMII_SBUS_0_SEL>;
+          resets = <&watchdog MT7988_TOPRGU_XFI0_GRST>;
         };
     };
diff --git a/MAINTAINERS b/MAINTAINERS
index 1ea4555013a4d..13fe7ffb10f7d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13487,7 +13487,9 @@ M:	Daniel Golle <daniel@makrotopia.org>
 L:	netdev@vger.kernel.org
 S:	Maintained
 F:	drivers/net/pcs/pcs-mtk-lynxi.c
+F:	drivers/net/pcs/pcs-mtk-usxgmii.c
 F:	include/linux/pcs/pcs-mtk-lynxi.h
+F:	include/linux/pcs/pcs-mtk-usxgmii.h
 
 MEDIATEK ETHERNET PHY DRIVERS
 M:	Daniel Golle <daniel@makrotopia.org>
diff --git a/drivers/net/pcs/Kconfig b/drivers/net/pcs/Kconfig
index 87cf308fc6d8b..55a6865bdaba3 100644
--- a/drivers/net/pcs/Kconfig
+++ b/drivers/net/pcs/Kconfig
@@ -25,6 +25,17 @@ config PCS_MTK_LYNXI
 	  This module provides helpers to phylink for managing the LynxI PCS
 	  which is part of MediaTek's SoC and Ethernet switch ICs.
 
+config PCS_MTK_USXGMII
+	tristate "MediaTek USXGMII PCS"
+	select PCS_MTK_LYNXI
+	select PHY_MTK_PEXTP
+	select PHYLINK
+	help
+	  This module provides a driver for MediaTek's USXGMII PCS supporting
+	  10GBase-R, 5GBase-R and USXGMII interface modes.
+	  1000Base-X, 2500Base-X and Cisco SGMII are supported on the same
+	  differential pairs via an embedded LynxI PHY.
+
 config PCS_RZN1_MIIC
 	tristate "Renesas RZ/N1 MII converter"
 	depends on OF && (ARCH_RZN1 || COMPILE_TEST)
diff --git a/drivers/net/pcs/Makefile b/drivers/net/pcs/Makefile
index fb1694192ae63..cc355152ca1ca 100644
--- a/drivers/net/pcs/Makefile
+++ b/drivers/net/pcs/Makefile
@@ -6,4 +6,5 @@ pcs_xpcs-$(CONFIG_PCS_XPCS)	:= pcs-xpcs.o pcs-xpcs-nxp.o pcs-xpcs-wx.o
 obj-$(CONFIG_PCS_XPCS)		+= pcs_xpcs.o
 obj-$(CONFIG_PCS_LYNX)		+= pcs-lynx.o
 obj-$(CONFIG_PCS_MTK_LYNXI)	+= pcs-mtk-lynxi.o
+obj-$(CONFIG_PCS_MTK_USXGMII)	+= pcs-mtk-usxgmii.o
 obj-$(CONFIG_PCS_RZN1_MIIC)	+= pcs-rzn1-miic.o
diff --git a/drivers/net/pcs/pcs-mtk-usxgmii.c b/drivers/net/pcs/pcs-mtk-usxgmii.c
new file mode 100644
index 0000000000000..e895aae3999fe
--- /dev/null
+++ b/drivers/net/pcs/pcs-mtk-usxgmii.c
@@ -0,0 +1,413 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023 MediaTek Inc.
+ * Author: Henry Yen <henry.yen@mediatek.com>
+ *         Daniel Golle <daniel@makrotopia.org>
+ */
+
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/mfd/syscon.h>
+#include <linux/mdio.h>
+#include <linux/of.h>
+#include <linux/of_platform.h>
+#include <linux/reset.h>
+#include <linux/pcs/pcs-mtk-usxgmii.h>
+#include <linux/platform_device.h>
+
+/* USXGMII subsystem config registers */
+/* Register to control speed */
+#define RG_PHY_TOP_SPEED_CTRL1			0x80c
+#define USXGMII_RATE_UPDATE_MODE		BIT(31)
+#define USXGMII_MAC_CK_GATED			BIT(29)
+#define USXGMII_IF_FORCE_EN			BIT(28)
+#define USXGMII_RATE_ADAPT_MODE			GENMASK(10, 8)
+#define USXGMII_RATE_ADAPT_MODE_X1		0
+#define USXGMII_RATE_ADAPT_MODE_X2		1
+#define USXGMII_RATE_ADAPT_MODE_X4		2
+#define USXGMII_RATE_ADAPT_MODE_X10		3
+#define USXGMII_RATE_ADAPT_MODE_X100		4
+#define USXGMII_RATE_ADAPT_MODE_X5		5
+#define USXGMII_RATE_ADAPT_MODE_X50		6
+#define USXGMII_XFI_RX_MODE			GENMASK(6, 4)
+#define USXGMII_XFI_TX_MODE			GENMASK(2, 0)
+#define USXGMII_XFI_MODE_10G			0
+#define USXGMII_XFI_MODE_5G			1
+#define USXGMII_XFI_MODE_2P5G			3
+
+/* Register to control PCS AN */
+#define RG_PCS_AN_CTRL0				0x810
+#define USXGMII_AN_RESTART			BIT(31)
+#define USXGMII_AN_SYNC_CNT			GENMASK(30, 11)
+#define USXGMII_AN_ENABLE			BIT(0)
+
+#define RG_PCS_AN_CTRL2				0x818
+#define USXGMII_LINK_TIMER_IDLE_DETECT		GENMASK(29, 20)
+#define USXGMII_LINK_TIMER_COMP_ACK_DETECT	GENMASK(19, 10)
+#define USXGMII_LINK_TIMER_AN_RESTART		GENMASK(9, 0)
+
+/* Register to read PCS AN status */
+#define RG_PCS_AN_STS0				0x81c
+#define USXGMII_LPA				GENMASK(15, 0)
+#define USXGMII_LPA_LATCH			BIT(31)
+
+/* Register to read PCS link status */
+#define RG_PCS_RX_STATUS0			0x904
+#define RG_PCS_RX_STATUS_UPDATE			BIT(16)
+#define RG_PCS_RX_LINK_STATUS			BIT(2)
+
+/* struct mtk_usxgmii_pcs - This structure holds each usxgmii PCS
+ * @pcs:		Phylink PCS structure
+ * @dev:		Pointer to device structure
+ * @base:		IO memory to access PCS hardware
+ * @clk:		Pointer to USXGMII clk
+ * @reset:		Pointer to USXGMII reset control
+ * @interface:		Currently selected interface mode
+ * @neg_mode:		Currently used phylink neg_mode
+ */
+struct mtk_usxgmii_pcs {
+	struct phylink_pcs		pcs;
+	struct device			*dev;
+	void __iomem			*base;
+	struct clk			*clk;
+	struct reset_control		*reset;
+	phy_interface_t			interface;
+	unsigned int			neg_mode;
+};
+
+static u32 mtk_r32(struct mtk_usxgmii_pcs *mpcs, unsigned int reg)
+{
+	return ioread32(mpcs->base + reg);
+}
+
+static void mtk_m32(struct mtk_usxgmii_pcs *mpcs, unsigned int reg, u32 mask, u32 set)
+{
+	u32 val;
+
+	val = ioread32(mpcs->base + reg);
+	val &= ~mask;
+	val |= set;
+	iowrite32(val, mpcs->base + reg);
+}
+
+static struct mtk_usxgmii_pcs *pcs_to_mtk_usxgmii_pcs(struct phylink_pcs *pcs)
+{
+	return container_of(pcs, struct mtk_usxgmii_pcs, pcs);
+}
+
+static void mtk_usxgmii_reset(struct mtk_usxgmii_pcs *mpcs)
+{
+	reset_control_assert(mpcs->reset);
+	usleep_range(100, 500);
+	reset_control_deassert(mpcs->reset);
+
+	mdelay(10);
+}
+
+static int mtk_usxgmii_pcs_config(struct phylink_pcs *pcs, unsigned int neg_mode,
+				  phy_interface_t interface,
+				  const unsigned long *advertising,
+				  bool permit_pause_to_mac)
+{
+	struct mtk_usxgmii_pcs *mpcs = pcs_to_mtk_usxgmii_pcs(pcs);
+	unsigned int an_ctrl = 0, link_timer = 0, xfi_mode = 0, adapt_mode = 0;
+	bool mode_changed = false;
+
+	if (interface == PHY_INTERFACE_MODE_USXGMII) {
+		an_ctrl = FIELD_PREP(USXGMII_AN_SYNC_CNT, 0x1FF) | USXGMII_AN_ENABLE;
+		link_timer = FIELD_PREP(USXGMII_LINK_TIMER_IDLE_DETECT, 0x7B) |
+			     FIELD_PREP(USXGMII_LINK_TIMER_COMP_ACK_DETECT, 0x7B) |
+			     FIELD_PREP(USXGMII_LINK_TIMER_AN_RESTART, 0x7B);
+		xfi_mode = FIELD_PREP(USXGMII_XFI_RX_MODE, USXGMII_XFI_MODE_10G) |
+			   FIELD_PREP(USXGMII_XFI_TX_MODE, USXGMII_XFI_MODE_10G);
+	} else if (interface == PHY_INTERFACE_MODE_10GBASER) {
+		an_ctrl = FIELD_PREP(USXGMII_AN_SYNC_CNT, 0x1FF);
+		link_timer = FIELD_PREP(USXGMII_LINK_TIMER_IDLE_DETECT, 0x7B) |
+			     FIELD_PREP(USXGMII_LINK_TIMER_COMP_ACK_DETECT, 0x7B) |
+			     FIELD_PREP(USXGMII_LINK_TIMER_AN_RESTART, 0x7B);
+		xfi_mode = FIELD_PREP(USXGMII_XFI_RX_MODE, USXGMII_XFI_MODE_10G) |
+			   FIELD_PREP(USXGMII_XFI_TX_MODE, USXGMII_XFI_MODE_10G);
+		adapt_mode = USXGMII_RATE_UPDATE_MODE;
+	} else if (interface == PHY_INTERFACE_MODE_5GBASER) {
+		an_ctrl = FIELD_PREP(USXGMII_AN_SYNC_CNT, 0xFF);
+		link_timer = FIELD_PREP(USXGMII_LINK_TIMER_IDLE_DETECT, 0x3D) |
+			     FIELD_PREP(USXGMII_LINK_TIMER_COMP_ACK_DETECT, 0x3D) |
+			     FIELD_PREP(USXGMII_LINK_TIMER_AN_RESTART, 0x3D);
+		xfi_mode = FIELD_PREP(USXGMII_XFI_RX_MODE, USXGMII_XFI_MODE_5G) |
+			   FIELD_PREP(USXGMII_XFI_TX_MODE, USXGMII_XFI_MODE_5G);
+		adapt_mode = USXGMII_RATE_UPDATE_MODE;
+	} else {
+		return -EINVAL;
+	}
+
+	adapt_mode |= FIELD_PREP(USXGMII_RATE_ADAPT_MODE, USXGMII_RATE_ADAPT_MODE_X1);
+
+	if (mpcs->interface != interface) {
+		mpcs->interface = interface;
+		mode_changed = true;
+	}
+
+	mtk_usxgmii_reset(mpcs);
+
+	/* Setup USXGMII AN ctrl */
+	mtk_m32(mpcs, RG_PCS_AN_CTRL0,
+		USXGMII_AN_SYNC_CNT | USXGMII_AN_ENABLE,
+		an_ctrl);
+
+	mtk_m32(mpcs, RG_PCS_AN_CTRL2,
+		USXGMII_LINK_TIMER_IDLE_DETECT |
+		USXGMII_LINK_TIMER_COMP_ACK_DETECT |
+		USXGMII_LINK_TIMER_AN_RESTART,
+		link_timer);
+
+	mpcs->neg_mode = neg_mode;
+
+	/* Gated MAC CK */
+	mtk_m32(mpcs, RG_PHY_TOP_SPEED_CTRL1,
+		USXGMII_MAC_CK_GATED, USXGMII_MAC_CK_GATED);
+
+	/* Enable interface force mode */
+	mtk_m32(mpcs, RG_PHY_TOP_SPEED_CTRL1,
+		USXGMII_IF_FORCE_EN, USXGMII_IF_FORCE_EN);
+
+	/* Setup USXGMII adapt mode */
+	mtk_m32(mpcs, RG_PHY_TOP_SPEED_CTRL1,
+		USXGMII_RATE_UPDATE_MODE | USXGMII_RATE_ADAPT_MODE,
+		adapt_mode);
+
+	/* Setup USXGMII speed */
+	mtk_m32(mpcs, RG_PHY_TOP_SPEED_CTRL1,
+		USXGMII_XFI_RX_MODE | USXGMII_XFI_TX_MODE,
+		xfi_mode);
+
+	usleep_range(1, 10);
+
+	/* Un-gated MAC CK */
+	mtk_m32(mpcs, RG_PHY_TOP_SPEED_CTRL1, USXGMII_MAC_CK_GATED, 0);
+
+	usleep_range(1, 10);
+
+	/* Disable interface force mode for the AN mode */
+	if (an_ctrl & USXGMII_AN_ENABLE)
+		mtk_m32(mpcs, RG_PHY_TOP_SPEED_CTRL1, USXGMII_IF_FORCE_EN, 0);
+
+	return mode_changed;
+}
+
+static void mtk_usxgmii_pcs_get_fixed_speed(struct mtk_usxgmii_pcs *mpcs,
+					    struct phylink_link_state *state)
+{
+	u32 val = mtk_r32(mpcs, RG_PHY_TOP_SPEED_CTRL1);
+	int speed;
+
+	/* Calculate speed from interface speed and rate adapt mode */
+	switch (FIELD_GET(USXGMII_XFI_RX_MODE, val)) {
+	case USXGMII_XFI_MODE_10G:
+		speed = 10000;
+		break;
+	case USXGMII_XFI_MODE_5G:
+		speed = 5000;
+		break;
+	case USXGMII_XFI_MODE_2P5G:
+		speed = 2500;
+		break;
+	default:
+		state->speed = SPEED_UNKNOWN;
+		return;
+	}
+
+	switch (FIELD_GET(USXGMII_RATE_ADAPT_MODE, val)) {
+	case USXGMII_RATE_ADAPT_MODE_X100:
+		speed /= 100;
+		break;
+	case USXGMII_RATE_ADAPT_MODE_X50:
+		speed /= 50;
+		break;
+	case USXGMII_RATE_ADAPT_MODE_X10:
+		speed /= 10;
+		break;
+	case USXGMII_RATE_ADAPT_MODE_X5:
+		speed /= 5;
+		break;
+	case USXGMII_RATE_ADAPT_MODE_X4:
+		speed /= 4;
+		break;
+	case USXGMII_RATE_ADAPT_MODE_X2:
+		speed /= 2;
+		break;
+	case USXGMII_RATE_ADAPT_MODE_X1:
+		break;
+	default:
+		state->speed = SPEED_UNKNOWN;
+		return;
+	}
+
+	state->speed = speed;
+	state->duplex = DUPLEX_FULL;
+}
+
+static void mtk_usxgmii_pcs_get_an_state(struct mtk_usxgmii_pcs *mpcs,
+					 struct phylink_link_state *state)
+{
+	u16 lpa;
+
+	/* Refresh LPA by toggling LPA_LATCH */
+	mtk_m32(mpcs, RG_PCS_AN_STS0, USXGMII_LPA_LATCH, USXGMII_LPA_LATCH);
+	ndelay(1020);
+	mtk_m32(mpcs, RG_PCS_AN_STS0, USXGMII_LPA_LATCH, 0);
+	ndelay(1020);
+	lpa = FIELD_GET(USXGMII_LPA, mtk_r32(mpcs, RG_PCS_AN_STS0));
+
+	phylink_decode_usxgmii_word(state, lpa);
+}
+
+static void mtk_usxgmii_pcs_get_state(struct phylink_pcs *pcs,
+				      struct phylink_link_state *state)
+{
+	struct mtk_usxgmii_pcs *mpcs = pcs_to_mtk_usxgmii_pcs(pcs);
+
+	/* Refresh USXGMII link status by toggling RG_PCS_AN_STATUS_UPDATE */
+	mtk_m32(mpcs, RG_PCS_RX_STATUS0, RG_PCS_RX_STATUS_UPDATE,
+		RG_PCS_RX_STATUS_UPDATE);
+	ndelay(1020);
+	mtk_m32(mpcs, RG_PCS_RX_STATUS0, RG_PCS_RX_STATUS_UPDATE, 0);
+	ndelay(1020);
+
+	/* Read USXGMII link status */
+	state->link = FIELD_GET(RG_PCS_RX_LINK_STATUS,
+				mtk_r32(mpcs, RG_PCS_RX_STATUS0));
+
+	/* Continuously repeat re-configuration sequence until link comes up */
+	if (!state->link) {
+		mtk_usxgmii_pcs_config(pcs, mpcs->neg_mode,
+				       state->interface, NULL, false);
+		return;
+	}
+
+	if (FIELD_GET(USXGMII_AN_ENABLE, mtk_r32(mpcs, RG_PCS_AN_CTRL0)))
+		mtk_usxgmii_pcs_get_an_state(mpcs, state);
+	else
+		mtk_usxgmii_pcs_get_fixed_speed(mpcs, state);
+}
+
+static void mtk_usxgmii_pcs_restart_an(struct phylink_pcs *pcs)
+{
+	struct mtk_usxgmii_pcs *mpcs = pcs_to_mtk_usxgmii_pcs(pcs);
+
+	mtk_m32(mpcs, RG_PCS_AN_CTRL0, USXGMII_AN_RESTART, USXGMII_AN_RESTART);
+}
+
+static void mtk_usxgmii_pcs_link_up(struct phylink_pcs *pcs, unsigned int neg_mode,
+				    phy_interface_t interface,
+				    int speed, int duplex)
+{
+	/* Reconfiguring USXGMII to ensure the quality of the RX signal
+	 * after the line side link up.
+	 */
+	mtk_usxgmii_pcs_config(pcs, neg_mode, interface, NULL, false);
+}
+
+static void mtk_usxgmii_pcs_disable(struct phylink_pcs *pcs)
+{
+	struct mtk_usxgmii_pcs *mpcs = pcs_to_mtk_usxgmii_pcs(pcs);
+
+	mpcs->interface = PHY_INTERFACE_MODE_NA;
+	mpcs->neg_mode = -1;
+}
+
+static const struct phylink_pcs_ops mtk_usxgmii_pcs_ops = {
+	.pcs_config = mtk_usxgmii_pcs_config,
+	.pcs_get_state = mtk_usxgmii_pcs_get_state,
+	.pcs_an_restart = mtk_usxgmii_pcs_restart_an,
+	.pcs_link_up = mtk_usxgmii_pcs_link_up,
+	.pcs_disable = mtk_usxgmii_pcs_disable,
+};
+
+static int mtk_usxgmii_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct mtk_usxgmii_pcs *mpcs;
+
+	mpcs = devm_kzalloc(dev, sizeof(*mpcs), GFP_KERNEL);
+	if (!mpcs)
+		return -ENOMEM;
+
+	mpcs->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(mpcs->base))
+		return PTR_ERR(mpcs->base);
+
+	mpcs->dev = dev;
+	mpcs->pcs.ops = &mtk_usxgmii_pcs_ops;
+	mpcs->pcs.poll = true;
+	mpcs->pcs.neg_mode = true;
+	mpcs->interface = PHY_INTERFACE_MODE_NA;
+	mpcs->neg_mode = -1;
+
+	mpcs->clk = devm_clk_get_enabled(mpcs->dev, NULL);
+	if (IS_ERR(mpcs->clk))
+		return PTR_ERR(mpcs->clk);
+
+	mpcs->reset = devm_reset_control_get_shared(dev, NULL);
+	if (IS_ERR(mpcs->reset))
+		return PTR_ERR(mpcs->reset);
+
+	reset_control_deassert(mpcs->reset);
+
+	platform_set_drvdata(pdev, mpcs);
+
+	return 0;
+}
+
+static int mtk_usxgmii_remove(struct platform_device *pdev)
+{
+	return 0;
+}
+
+static const struct of_device_id mtk_usxgmii_of_mtable[] = {
+	{ .compatible = "mediatek,mt7988-usxgmiisys" },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, mtk_usxgmii_of_mtable);
+
+struct phylink_pcs *mtk_usxgmii_select_pcs(struct device_node *np, phy_interface_t mode)
+{
+	struct platform_device *pdev;
+	struct mtk_usxgmii_pcs *mpcs;
+
+	if (!np)
+		return NULL;
+
+	if (!of_device_is_available(np))
+		return ERR_PTR(-ENODEV);
+
+	if (!of_match_node(mtk_usxgmii_of_mtable, np))
+		return ERR_PTR(-EINVAL);
+
+	pdev = of_find_device_by_node(np);
+	if (!pdev || !platform_get_drvdata(pdev)) {
+		if (pdev)
+			put_device(&pdev->dev);
+		return ERR_PTR(-EPROBE_DEFER);
+	}
+
+	mpcs = platform_get_drvdata(pdev);
+	put_device(&pdev->dev);
+
+	return &mpcs->pcs;
+}
+EXPORT_SYMBOL(mtk_usxgmii_select_pcs);
+
+static struct platform_driver mtk_usxgmii_driver = {
+	.driver = {
+		.name			= "mtk_usxgmii",
+		.suppress_bind_attrs	= true,
+		.of_match_table		= mtk_usxgmii_of_mtable,
+	},
+	.probe = mtk_usxgmii_probe,
+	.remove = mtk_usxgmii_remove,
+};
+module_platform_driver(mtk_usxgmii_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("MediaTek USXGMII PCS driver");
+MODULE_AUTHOR("Daniel Golle <daniel@makrotopia.org>");
diff --git a/include/linux/pcs/pcs-mtk-usxgmii.h b/include/linux/pcs/pcs-mtk-usxgmii.h
new file mode 100644
index 0000000000000..346b88bdf7a6e
--- /dev/null
+++ b/include/linux/pcs/pcs-mtk-usxgmii.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __LINUX_PCS_MTK_USXGMII_H
+#define __LINUX_PCS_MTK_USXGMII_H
+
+#include <linux/phylink.h>
+
+/**
+ * mtk_usxgmii_select_pcs() - Get MediaTek PCS instance
+ * @np:		Pointer to device node indentifying a MediaTek USXGMII PCS
+ * @mode:	Ethernet PHY interface mode
+ *
+ * Return PCS identified by a device node and the PHY interface mode in use
+ *
+ * Return:	Pointer to phylink PCS instance of NULL
+ */
+#if IS_ENABLED(CONFIG_PCS_MTK_USXGMII)
+struct phylink_pcs *mtk_usxgmii_select_pcs(struct device_node *np, phy_interface_t mode);
+#else
+static inline struct phylink_pcs *mtk_usxgmii_select_pcs(struct device_node *np,
+							 phy_interface_t mode)
+{
+	return NULL;
+}
+#endif /* IS_ENABLED(CONFIG_PCS_MTK_USXGMII) */
+
+#endif /* __LINUX_PCS_MTK_USXGMII_H */
-- 
2.43.0

