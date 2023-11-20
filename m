Return-Path: <devicetree+bounces-17259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 794CD7F1C42
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 19:22:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 321E62825D5
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 18:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC5FB3064B;
	Mon, 20 Nov 2023 18:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 133EEB9;
	Mon, 20 Nov 2023 10:22:44 -0800 (PST)
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1r58un-0000D2-11;
	Mon, 20 Nov 2023 18:22:34 +0000
Date: Mon, 20 Nov 2023 18:22:31 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v4 2/2] watchdog: mediatek: mt7988: add wdt support
Message-ID: <c0cf5f701801cce60470853fa15f1d9dced78c4f.1700504385.git.daniel@makrotopia.org>
References: <6478f8d2af59736d23a96b52891bb541de33870d.1700504385.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6478f8d2af59736d23a96b52891bb541de33870d.1700504385.git.daniel@makrotopia.org>

Add support for watchdog and reset generator unit of the MediaTek
MT7988 SoC.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
v4: define MT7988_TOPRGU_SW_RST_NUM on top of mtk_wdt.c
v3: fix wrong function parameter name in kernel-doc comment
v2: call new toprgu_reset_sw_en_unlocked from toprgu_reset_update while
    holding lock.

 drivers/watchdog/mtk_wdt.c | 42 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
index b2330b16b497a..c35f85ce8d69c 100644
--- a/drivers/watchdog/mtk_wdt.c
+++ b/drivers/watchdog/mtk_wdt.c
@@ -58,9 +58,13 @@
 #define WDT_SWSYSRST		0x18U
 #define WDT_SWSYS_RST_KEY	0x88000000
 
+#define WDT_SWSYSRST_EN		0xfc
+
 #define DRV_NAME		"mtk-wdt"
 #define DRV_VERSION		"1.0"
 
+#define MT7988_TOPRGU_SW_RST_NUM	24
+
 static bool nowayout = WATCHDOG_NOWAYOUT;
 static unsigned int timeout;
 
@@ -71,10 +75,12 @@ struct mtk_wdt_dev {
 	struct reset_controller_dev rcdev;
 	bool disable_wdt_extrst;
 	bool reset_by_toprgu;
+	bool has_swsysrst_en;
 };
 
 struct mtk_wdt_data {
 	int toprgu_sw_rst_num;
+	bool has_swsysrst_en;
 };
 
 static const struct mtk_wdt_data mt2712_data = {
@@ -89,6 +95,11 @@ static const struct mtk_wdt_data mt7986_data = {
 	.toprgu_sw_rst_num = MT7986_TOPRGU_SW_RST_NUM,
 };
 
+static const struct mtk_wdt_data mt7988_data = {
+	.toprgu_sw_rst_num = MT7988_TOPRGU_SW_RST_NUM,
+	.has_swsysrst_en = true,
+};
+
 static const struct mtk_wdt_data mt8183_data = {
 	.toprgu_sw_rst_num = MT8183_TOPRGU_SW_RST_NUM,
 };
@@ -109,6 +120,28 @@ static const struct mtk_wdt_data mt8195_data = {
 	.toprgu_sw_rst_num = MT8195_TOPRGU_SW_RST_NUM,
 };
 
+/**
+ * toprgu_reset_sw_en_unlocked() - enable/disable software control for reset bit
+ * @data: Pointer to instance of driver data.
+ * @id: Bit number identifying the reset to be enabled or disabled.
+ * @enable: If true, enable software control for that bit, disable otherwise.
+ *
+ * Context: The caller must hold lock of struct mtk_wdt_dev.
+ */
+static void toprgu_reset_sw_en_unlocked(struct mtk_wdt_dev *data,
+					unsigned long id, bool enable)
+{
+	u32 tmp;
+
+	tmp = readl(data->wdt_base + WDT_SWSYSRST_EN);
+	if (enable)
+		tmp |= BIT(id);
+	else
+		tmp &= ~BIT(id);
+
+	writel(tmp, data->wdt_base + WDT_SWSYSRST_EN);
+}
+
 static int toprgu_reset_update(struct reset_controller_dev *rcdev,
 			       unsigned long id, bool assert)
 {
@@ -119,6 +152,9 @@ static int toprgu_reset_update(struct reset_controller_dev *rcdev,
 
 	spin_lock_irqsave(&data->lock, flags);
 
+	if (assert && data->has_swsysrst_en)
+		toprgu_reset_sw_en_unlocked(data, id, true);
+
 	tmp = readl(data->wdt_base + WDT_SWSYSRST);
 	if (assert)
 		tmp |= BIT(id);
@@ -127,6 +163,9 @@ static int toprgu_reset_update(struct reset_controller_dev *rcdev,
 	tmp |= WDT_SWSYS_RST_KEY;
 	writel(tmp, data->wdt_base + WDT_SWSYSRST);
 
+	if (!assert && data->has_swsysrst_en)
+		toprgu_reset_sw_en_unlocked(data, id, false);
+
 	spin_unlock_irqrestore(&data->lock, flags);
 
 	return 0;
@@ -406,6 +445,8 @@ static int mtk_wdt_probe(struct platform_device *pdev)
 						       wdt_data->toprgu_sw_rst_num);
 		if (err)
 			return err;
+
+		mtk_wdt->has_swsysrst_en = wdt_data->has_swsysrst_en;
 	}
 
 	mtk_wdt->disable_wdt_extrst =
@@ -444,6 +485,7 @@ static const struct of_device_id mtk_wdt_dt_ids[] = {
 	{ .compatible = "mediatek,mt6589-wdt" },
 	{ .compatible = "mediatek,mt6795-wdt", .data = &mt6795_data },
 	{ .compatible = "mediatek,mt7986-wdt", .data = &mt7986_data },
+	{ .compatible = "mediatek,mt7988-wdt", .data = &mt7988_data },
 	{ .compatible = "mediatek,mt8183-wdt", .data = &mt8183_data },
 	{ .compatible = "mediatek,mt8186-wdt", .data = &mt8186_data },
 	{ .compatible = "mediatek,mt8188-wdt", .data = &mt8188_data },
-- 
2.42.1

