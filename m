Return-Path: <devicetree+bounces-24153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8127280E2F3
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 04:47:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 418D9282B86
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 03:47:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E169F9465;
	Tue, 12 Dec 2023 03:47:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC671DC;
	Mon, 11 Dec 2023 19:47:34 -0800 (PST)
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1rCtjt-0002rO-21;
	Tue, 12 Dec 2023 03:47:22 +0000
Date: Tue, 12 Dec 2023 03:47:18 +0000
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
Subject: [RFC PATCH net-next v3 3/8] net: pcs: pcs-mtk-lynxi: add platform
 driver for MT7988
Message-ID: <8aa905080bdb6760875d62cb3b2b41258837f80e.1702352117.git.daniel@makrotopia.org>
References: <cover.1702352117.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1702352117.git.daniel@makrotopia.org>

Introduce a proper platform MFD driver for the LynxI (H)SGMII PCS which
is going to initially be used for the MT7988 SoC.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 drivers/net/pcs/pcs-mtk-lynxi.c   | 226 ++++++++++++++++++++++++++++--
 include/linux/pcs/pcs-mtk-lynxi.h |  11 ++
 2 files changed, 226 insertions(+), 11 deletions(-)

diff --git a/drivers/net/pcs/pcs-mtk-lynxi.c b/drivers/net/pcs/pcs-mtk-lynxi.c
index 8501dd365279b..e06dd7db66144 100644
--- a/drivers/net/pcs/pcs-mtk-lynxi.c
+++ b/drivers/net/pcs/pcs-mtk-lynxi.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2018-2019 MediaTek Inc.
-/* A library for MediaTek SGMII circuit
+/* A library and platform driver for the MediaTek LynxI SGMII circuit
  *
  * Author: Sean Wang <sean.wang@mediatek.com>
  * Author: Alexander Couzens <lynxis@fe80.eu>
@@ -8,11 +8,17 @@
  *
  */
 
+#include <linux/clk.h>
 #include <linux/mdio.h>
+#include <linux/mfd/syscon.h>
+#include <linux/mutex.h>
 #include <linux/of.h>
+#include <linux/of_platform.h>
 #include <linux/pcs/pcs-mtk-lynxi.h>
 #include <linux/phylink.h>
+#include <linux/platform_device.h>
 #include <linux/regmap.h>
+#include <linux/reset.h>
 
 /* SGMII subsystem config registers */
 /* BMCR (low 16) BMSR (high 16) */
@@ -65,6 +71,8 @@
 #define SGMII_PN_SWAP_MASK		GENMASK(1, 0)
 #define SGMII_PN_SWAP_TX_RX		(BIT(0) | BIT(1))
 
+#define MTK_NETSYS_V3_AMA_RGC3		0x128
+
 /* struct mtk_pcs_lynxi -  This structure holds each sgmii regmap andassociated
  *                         data
  * @regmap:                The register map pointing at the range used to setup
@@ -74,15 +82,29 @@
  * @interface:             Currently configured interface mode
  * @pcs:                   Phylink PCS structure
  * @flags:                 Flags indicating hardware properties
+ * @rstc:                  Reset controller
+ * @sgmii_sel:             SGMII Register Clock
+ * @sgmii_rx:              SGMII RX Clock
+ * @sgmii_tx:              SGMII TX Clock
+ * @node:                  List node
  */
 struct mtk_pcs_lynxi {
 	struct regmap		*regmap;
+	struct device		*dev;
 	u32			ana_rgc3;
 	phy_interface_t		interface;
 	struct			phylink_pcs pcs;
 	u32			flags;
+	struct reset_control	*rstc;
+	struct clk		*sgmii_sel;
+	struct clk		*sgmii_rx;
+	struct clk		*sgmii_tx;
+	struct list_head	node;
 };
 
+static LIST_HEAD(mtk_pcs_lynxi_instances);
+static DEFINE_MUTEX(instance_mutex);
+
 static struct mtk_pcs_lynxi *pcs_to_mtk_pcs_lynxi(struct phylink_pcs *pcs)
 {
 	return container_of(pcs, struct mtk_pcs_lynxi, pcs);
@@ -102,6 +124,17 @@ static void mtk_pcs_lynxi_get_state(struct phylink_pcs *pcs,
 					 FIELD_GET(SGMII_LPA, adv));
 }
 
+static void mtk_sgmii_reset(struct mtk_pcs_lynxi *mpcs)
+{
+	if (!mpcs->rstc)
+		return;
+
+	reset_control_assert(mpcs->rstc);
+	udelay(100);
+	reset_control_deassert(mpcs->rstc);
+	mdelay(1);
+}
+
 static int mtk_pcs_lynxi_config(struct phylink_pcs *pcs, unsigned int neg_mode,
 				phy_interface_t interface,
 				const unsigned long *advertising,
@@ -147,6 +180,7 @@ static int mtk_pcs_lynxi_config(struct phylink_pcs *pcs, unsigned int neg_mode,
 				SGMII_PHYA_PWD);
 
 		/* Reset SGMII PCS state */
+		mtk_sgmii_reset(mpcs);
 		regmap_set_bits(mpcs->regmap, SGMSYS_RESERVED_0,
 				SGMII_SW_RESET);
 
@@ -233,10 +267,29 @@ static void mtk_pcs_lynxi_link_up(struct phylink_pcs *pcs,
 	}
 }
 
+static int mtk_pcs_lynxi_enable(struct phylink_pcs *pcs)
+{
+	struct mtk_pcs_lynxi *mpcs = pcs_to_mtk_pcs_lynxi(pcs);
+
+	if (mpcs->sgmii_tx && mpcs->sgmii_rx) {
+		clk_prepare_enable(mpcs->sgmii_rx);
+		clk_prepare_enable(mpcs->sgmii_tx);
+	}
+
+	return 0;
+}
+
 static void mtk_pcs_lynxi_disable(struct phylink_pcs *pcs)
 {
 	struct mtk_pcs_lynxi *mpcs = pcs_to_mtk_pcs_lynxi(pcs);
 
+	regmap_set_bits(mpcs->regmap, SGMSYS_QPHY_PWR_STATE_CTRL, SGMII_PHYA_PWD);
+
+	if (mpcs->sgmii_tx && mpcs->sgmii_rx) {
+		clk_disable_unprepare(mpcs->sgmii_tx);
+		clk_disable_unprepare(mpcs->sgmii_rx);
+	}
+
 	mpcs->interface = PHY_INTERFACE_MODE_NA;
 }
 
@@ -246,11 +299,12 @@ static const struct phylink_pcs_ops mtk_pcs_lynxi_ops = {
 	.pcs_an_restart = mtk_pcs_lynxi_restart_an,
 	.pcs_link_up = mtk_pcs_lynxi_link_up,
 	.pcs_disable = mtk_pcs_lynxi_disable,
+	.pcs_enable = mtk_pcs_lynxi_enable,
 };
 
-struct phylink_pcs *mtk_pcs_lynxi_create(struct device *dev,
-					 struct regmap *regmap, u32 ana_rgc3,
-					 u32 flags)
+static struct phylink_pcs *mtk_pcs_lynxi_init(struct device *dev, struct regmap *regmap,
+					      u32 ana_rgc3, u32 flags,
+					      struct mtk_pcs_lynxi *prealloc)
 {
 	struct mtk_pcs_lynxi *mpcs;
 	u32 id, ver;
@@ -258,29 +312,33 @@ struct phylink_pcs *mtk_pcs_lynxi_create(struct device *dev,
 
 	ret = regmap_read(regmap, SGMSYS_PCS_DEVICE_ID, &id);
 	if (ret < 0)
-		return NULL;
+		return ERR_PTR(ret);
 
 	if (id != SGMII_LYNXI_DEV_ID) {
 		dev_err(dev, "unknown PCS device id %08x\n", id);
-		return NULL;
+		return ERR_PTR(-ENODEV);
 	}
 
 	ret = regmap_read(regmap, SGMSYS_PCS_SCRATCH, &ver);
 	if (ret < 0)
-		return NULL;
+		return ERR_PTR(ret);
 
 	ver = FIELD_GET(SGMII_DEV_VERSION, ver);
 	if (ver != 0x1) {
 		dev_err(dev, "unknown PCS device version %04x\n", ver);
-		return NULL;
+		return ERR_PTR(-ENODEV);
 	}
 
 	dev_dbg(dev, "MediaTek LynxI SGMII PCS (id 0x%08x, ver 0x%04x)\n", id,
 		ver);
 
-	mpcs = kzalloc(sizeof(*mpcs), GFP_KERNEL);
-	if (!mpcs)
-		return NULL;
+	if (prealloc) {
+		mpcs = prealloc;
+	} else {
+		mpcs = kzalloc(sizeof(*mpcs), GFP_KERNEL);
+		if (!mpcs)
+			return ERR_PTR(-ENOMEM);
+	};
 
 	mpcs->ana_rgc3 = ana_rgc3;
 	mpcs->regmap = regmap;
@@ -291,6 +349,13 @@ struct phylink_pcs *mtk_pcs_lynxi_create(struct device *dev,
 	mpcs->interface = PHY_INTERFACE_MODE_NA;
 
 	return &mpcs->pcs;
+};
+
+struct phylink_pcs *mtk_pcs_lynxi_create(struct device *dev,
+					 struct regmap *regmap, u32 ana_rgc3,
+					 u32 flags)
+{
+	return mtk_pcs_lynxi_init(dev, regmap, ana_rgc3, flags, NULL);
 }
 EXPORT_SYMBOL(mtk_pcs_lynxi_create);
 
@@ -303,4 +368,143 @@ void mtk_pcs_lynxi_destroy(struct phylink_pcs *pcs)
 }
 EXPORT_SYMBOL(mtk_pcs_lynxi_destroy);
 
+static int mtk_pcs_lynxi_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct mtk_pcs_lynxi *mpcs;
+	struct phylink_pcs *pcs;
+	struct regmap *regmap;
+	u32 flags = 0;
+
+	mpcs = devm_kzalloc(dev, sizeof(*mpcs), GFP_KERNEL);
+	if (!mpcs)
+		return -ENOMEM;
+
+	mpcs->dev = dev;
+	regmap = syscon_node_to_regmap(np->parent);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	if (of_property_read_bool(np->parent, "mediatek,pnswap"))
+		flags |= MTK_SGMII_FLAG_PN_SWAP;
+
+	mpcs->rstc = of_reset_control_get_shared(np->parent, NULL);
+	if (IS_ERR(mpcs->rstc))
+		return PTR_ERR(mpcs->rstc);
+
+	reset_control_deassert(mpcs->rstc);
+	mpcs->sgmii_sel = devm_clk_get_enabled(dev, "sgmii_sel");
+	if (IS_ERR(mpcs->sgmii_sel))
+		return PTR_ERR(mpcs->sgmii_sel);
+
+	mpcs->sgmii_rx = devm_clk_get(dev, "sgmii_rx");
+	if (IS_ERR(mpcs->sgmii_rx))
+		return PTR_ERR(mpcs->sgmii_rx);
+
+	mpcs->sgmii_tx = devm_clk_get(dev, "sgmii_tx");
+	if (IS_ERR(mpcs->sgmii_tx))
+		return PTR_ERR(mpcs->sgmii_tx);
+
+	pcs = mtk_pcs_lynxi_init(dev, regmap, (uintptr_t)of_device_get_match_data(dev),
+				 flags, mpcs);
+	if (IS_ERR(pcs))
+		return PTR_ERR(pcs);
+
+	regmap_set_bits(mpcs->regmap, SGMSYS_QPHY_PWR_STATE_CTRL, SGMII_PHYA_PWD);
+
+	platform_set_drvdata(pdev, mpcs);
+
+	mutex_lock(&instance_mutex);
+	list_add_tail(&mpcs->node, &mtk_pcs_lynxi_instances);
+	mutex_unlock(&instance_mutex);
+
+	return 0;
+}
+
+static int mtk_pcs_lynxi_remove(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct mtk_pcs_lynxi *cur, *tmp;
+
+	mutex_lock(&instance_mutex);
+	list_for_each_entry_safe(cur, tmp, &mtk_pcs_lynxi_instances, node)
+		if (cur->dev == dev) {
+			list_del(&cur->node);
+			kfree(cur);
+			break;
+		}
+	mutex_unlock(&instance_mutex);
+
+	return 0;
+}
+
+static const struct of_device_id mtk_pcs_lynxi_of_match[] = {
+	{ .compatible = "mediatek,mt7988-sgmii", .data = (void *)MTK_NETSYS_V3_AMA_RGC3 },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, mtk_pcs_lynxi_of_match);
+
+struct phylink_pcs *mtk_pcs_lynxi_get(struct device *dev, struct device_node *np)
+{
+	struct platform_device *pdev;
+	struct mtk_pcs_lynxi *mpcs;
+
+	if (!np)
+		return NULL;
+
+	if (!of_device_is_available(np))
+		return ERR_PTR(-ENODEV);
+
+	if (!of_match_node(mtk_pcs_lynxi_of_match, np))
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
+	device_link_add(dev, mpcs->dev, DL_FLAG_AUTOREMOVE_CONSUMER);
+
+	return &mpcs->pcs;
+}
+EXPORT_SYMBOL(mtk_pcs_lynxi_get);
+
+void mtk_pcs_lynxi_put(struct phylink_pcs *pcs)
+{
+	struct mtk_pcs_lynxi *cur, *mpcs = NULL;
+
+	if (!pcs)
+		return;
+
+	mutex_lock(&instance_mutex);
+	list_for_each_entry(cur, &mtk_pcs_lynxi_instances, node)
+		if (pcs == &cur->pcs) {
+			mpcs = cur;
+			break;
+		}
+	mutex_unlock(&instance_mutex);
+
+	if (WARN_ON(!mpcs))
+		return;
+
+	put_device(mpcs->dev);
+}
+EXPORT_SYMBOL(mtk_pcs_lynxi_put);
+
+static struct platform_driver mtk_pcs_lynxi_driver = {
+	.driver = {
+		.name = "mtk-pcs-lynxi",
+		.of_match_table = mtk_pcs_lynxi_of_match,
+	},
+	.probe = mtk_pcs_lynxi_probe,
+	.remove = mtk_pcs_lynxi_remove,
+};
+module_platform_driver(mtk_pcs_lynxi_driver);
+
+MODULE_AUTHOR("Daniel Golle <daniel@makrotopia.org>");
+MODULE_DESCRIPTION("MediaTek LynxI HSGMII PCS");
 MODULE_LICENSE("GPL");
diff --git a/include/linux/pcs/pcs-mtk-lynxi.h b/include/linux/pcs/pcs-mtk-lynxi.h
index be3b4ab32f4a7..2d44e951229c7 100644
--- a/include/linux/pcs/pcs-mtk-lynxi.h
+++ b/include/linux/pcs/pcs-mtk-lynxi.h
@@ -10,4 +10,15 @@ struct phylink_pcs *mtk_pcs_lynxi_create(struct device *dev,
 					 struct regmap *regmap,
 					 u32 ana_rgc3, u32 flags);
 void mtk_pcs_lynxi_destroy(struct phylink_pcs *pcs);
+
+#if IS_ENABLED(CONFIG_PCS_MTK_LYNXI)
+struct phylink_pcs *mtk_pcs_lynxi_get(struct device *dev, struct device_node *np);
+void mtk_pcs_lynxi_put(struct phylink_pcs *pcs);
+#else
+static inline struct phylink_pcs *mtk_pcs_lynxi_get(struct device *dev, struct device_node *np)
+{
+	return NULL;
+}
+static inline void mtk_pcs_lynxi_put(struct phylink_pcs *pcs) { }
+#endif /* IS_ENABLED(CONFIG_PCS_MTK_LYNXI) */
 #endif
-- 
2.43.0

