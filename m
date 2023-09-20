Return-Path: <devicetree+bounces-1881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6CE7A8AE0
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:50:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 518F2B203E2
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 337833FB28;
	Wed, 20 Sep 2023 17:50:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F4463FB1A
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 17:50:14 +0000 (UTC)
Received: from mxout3.routing.net (mxout3.routing.net [IPv6:2a03:2900:1:a::8])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB29FC6;
	Wed, 20 Sep 2023 10:50:12 -0700 (PDT)
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout3.routing.net (Postfix) with ESMTP id 61A2462615;
	Wed, 20 Sep 2023 17:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1695232211;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yPGaIcaBpYIsL+K5fU/g5XcubHkm1r3TP41OLpcHHUU=;
	b=GFMXvfg9d/BnAHtYhKhiU8HFWdvHDME9Kkq9jXrc4St8oh4WGMX6qjBy7htYFri4oY6Ywd
	FzRkIuGF5Ck+VL6ggxHrghuu0+FbpJWQh10bnYEosuL556EtNBN+Cs7zbZ9AMPD1YprvgQ
	BqCDdPAxxEekoKME8GvQ9g8iWNO7/Zo=
Received: from frank-G5.. (fttx-pool-217.61.152.105.bambit.de [217.61.152.105])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 967111006BE;
	Wed, 20 Sep 2023 17:50:10 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-mediatek@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/4] thermal/drivers/mediatek/lvts_thermal: add mt7988 support
Date: Wed, 20 Sep 2023 19:50:01 +0200
Message-Id: <20230920175001.47563-5-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230920175001.47563-1-linux@fw-web.de>
References: <20230920175001.47563-1-linux@fw-web.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mail-ID: 28533bc3-42fd-4ddc-a511-be8c45e8489c
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Frank Wunderlich <frank-w@public-files.de>

Add Support for Mediatek Filogic 880/MT7988 LVTS.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
v2:
- use 105°C for hw shutdown
- move constants to binding file
- change coeff.a to temp_factor and coeff.b to temp_offset
- change to lvts to lvts-ap (Application Processor)
- drop comments about efuse offsets
- change comment of mt8195 to be similar to mt7988
---
 drivers/thermal/mediatek/lvts_thermal.c | 46 +++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/thermal/mediatek/lvts_thermal.c b/drivers/thermal/mediatek/lvts_thermal.c
index c2669f405a94..8fd1dc5adb16 100644
--- a/drivers/thermal/mediatek/lvts_thermal.c
+++ b/drivers/thermal/mediatek/lvts_thermal.c
@@ -82,6 +82,8 @@
 #define LVTS_GOLDEN_TEMP_DEFAULT	50
 #define LVTS_COEFF_A_MT8195			-250460
 #define LVTS_COEFF_B_MT8195			250460
+#define LVTS_COEFF_A_MT7988			-204650
+#define LVTS_COEFF_B_MT7988			204650
 
 #define LVTS_MSR_IMMEDIATE_MODE		0
 #define LVTS_MSR_FILTERED_MODE		1
@@ -89,6 +91,7 @@
 #define LVTS_MSR_READ_TIMEOUT_US	400
 #define LVTS_MSR_READ_WAIT_US		(LVTS_MSR_READ_TIMEOUT_US / 2)
 
+#define LVTS_HW_SHUTDOWN_MT7988		105000
 #define LVTS_HW_SHUTDOWN_MT8195		105000
 
 #define LVTS_MINIMUM_THRESHOLD		20000
@@ -1269,6 +1272,41 @@ static int lvts_remove(struct platform_device *pdev)
 	return 0;
 }
 
+/*
+ * LVTS MT7988
+ */
+
+static const struct lvts_ctrl_data mt7988_lvts_ap_data_ctrl[] = {
+	{
+		.cal_offset = { 0x00, 0x04, 0x08, 0x0c }, //918,91C,920,924
+		.lvts_sensor = {
+			{ .dt_id = MT7988_CPU_0 }, // CPU 0,1
+			{ .dt_id = MT7988_CPU_1 }, // CPU 2,3
+			{ .dt_id = MT7988_ETH2P5G_0 }, // internal 2.5G Phy 1
+			{ .dt_id = MT7988_ETH2P5G_1 }  // internal 2.5G Phy 2
+		},
+		.num_lvts_sensor = 4,
+		.offset = 0x0,
+		.hw_tshut_temp = LVTS_HW_SHUTDOWN_MT7988,
+	},
+	{
+		.cal_offset = { 0x14, 0x18, 0x1c, 0x20 }, //92C,930,934,938
+		.lvts_sensor = {
+			{ .dt_id = MT7988_TOPS_0}, // TOPS
+			{ .dt_id = MT7988_TOPS_1}, // TOPS
+			{ .dt_id = MT7988_ETHWARP_0}, // WED 1
+			{ .dt_id = MT7988_ETHWARP_1}  // WED 2
+		},
+		.num_lvts_sensor = 4,
+		.offset = 0x100,
+		.hw_tshut_temp = LVTS_HW_SHUTDOWN_MT7988,
+	}
+};
+
+/*
+ * LVTS MT8195
+ */
+
 static const struct lvts_ctrl_data mt8195_lvts_mcu_data_ctrl[] = {
 	{
 		.cal_offset = { 0x04, 0x07 },
@@ -1348,6 +1386,13 @@ static const struct lvts_ctrl_data mt8195_lvts_ap_data_ctrl[] = {
 	}
 };
 
+static const struct lvts_data mt7988_lvts_ap_data = {
+	.lvts_ctrl	= mt7988_lvts_ap_data_ctrl,
+	.num_lvts_ctrl	= ARRAY_SIZE(mt7988_lvts_ap_data_ctrl),
+	.temp_factor	= LVTS_COEFF_A_MT7988,
+	.temp_offset	= LVTS_COEFF_B_MT7988,
+};
+
 static const struct lvts_data mt8195_lvts_mcu_data = {
 	.lvts_ctrl	= mt8195_lvts_mcu_data_ctrl,
 	.num_lvts_ctrl	= ARRAY_SIZE(mt8195_lvts_mcu_data_ctrl),
@@ -1363,6 +1408,7 @@ static const struct lvts_data mt8195_lvts_ap_data = {
 };
 
 static const struct of_device_id lvts_of_match[] = {
+	{ .compatible = "mediatek,mt7988-lvts-ap", .data = &mt7988_lvts_ap_data },
 	{ .compatible = "mediatek,mt8195-lvts-mcu", .data = &mt8195_lvts_mcu_data },
 	{ .compatible = "mediatek,mt8195-lvts-ap", .data = &mt8195_lvts_ap_data },
 	{},
-- 
2.34.1


