Return-Path: <devicetree+bounces-9331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BFB7CCB8D
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 21:02:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA88B1C20AE0
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 19:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EAC69CA62;
	Tue, 17 Oct 2023 19:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lindev.ch header.i=@lindev.ch header.b="WMaC6jPP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E6A43A8E
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 19:02:18 +0000 (UTC)
X-Greylist: delayed 367 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 17 Oct 2023 12:02:16 PDT
Received: from emag.lindev.ch (unknown [IPv6:2a01:2a8:8f03:b001:97bb:be5f:f990:97fe])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id A540D90;
	Tue, 17 Oct 2023 12:02:16 -0700 (PDT)
Received: from ryzen9.fritz.box (unknown [81.221.122.240])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bero@lindev.ch)
	by emag.lindev.ch (Postfix) with ESMTPSA id 1125A200469;
	Tue, 17 Oct 2023 20:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lindev.ch; s=default;
	t=1697568968; bh=sGV1KaGdNbJasxMe48TsIwJCZ4Q8G01C6MkFdMZptyA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=WMaC6jPPX+FM6LKRrYsBCPHxJmD5ULASta3hAVLm/RXCM9mZVPWXGzd89m5mmJfRh
	 vhuPW8gvjCp1BtaTYRonLfp0jFkia8JmqyhxKhnYZlktNvr67vpSi0DTAzdaMP8MfJ
	 PFkIhNcE3l+DAVJz+S4V3MtnJJe3R8380cVt9S6k=
From: =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@lindev.ch>
To: daniel.lezcano@linaro.org,
	angelogioacchino.delregno@collabora.com,
	rafael@kernel.org,
	amitk@kernel.org,
	rui.zhang@intel.com,
	matthias.bgg@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	dunlap@infradead.org,
	e.xingchen@zte.com.cn,
	p.zabel@pengutronix.de
Cc: linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	wenst@chromium.org,
	ames.lo@mediatek.com,
	rex-bc.chen@mediatek.com,
	nfraprado@collabora.com,
	abailon@baylibre.com,
	amergnat@baylibre.com,
	khilman@baylibre.com
Subject: [PATCH v5 2/5] thermal/drivers/mediatek/lvts_thermal: Add suspend and resume
Date: Tue, 17 Oct 2023 20:55:52 +0200
Message-ID: <20231017185555.142062-3-bero@lindev.ch>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231017185555.142062-1-bero@lindev.ch>
References: <20231017185555.142062-1-bero@lindev.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,RDNS_NONE,
	SPF_FAIL,SPF_HELO_NONE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Balsam CHIHI <bchihi@baylibre.com>

Add suspend and resume support to LVTS driver.

Signed-off-by: Balsam CHIHI <bchihi@baylibre.com>
[bero@baylibre.com: suspend/resume in noirq phase]
Co-developed-by: Bernhard Rosenkränzer <bero@baylibre.com>
Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/thermal/mediatek/lvts_thermal.c | 37 +++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/thermal/mediatek/lvts_thermal.c b/drivers/thermal/mediatek/lvts_thermal.c
index 877a0e5ac3fd3..c5a03bdf63e9d 100644
--- a/drivers/thermal/mediatek/lvts_thermal.c
+++ b/drivers/thermal/mediatek/lvts_thermal.c
@@ -1254,6 +1254,38 @@ static void lvts_remove(struct platform_device *pdev)
 	lvts_debugfs_exit(lvts_td);
 }
 
+static int lvts_suspend(struct device *dev)
+{
+	struct lvts_domain *lvts_td;
+	int i;
+
+	lvts_td = dev_get_drvdata(dev);
+
+	for (i = 0; i < lvts_td->num_lvts_ctrl; i++)
+		lvts_ctrl_set_enable(&lvts_td->lvts_ctrl[i], false);
+
+	clk_disable_unprepare(lvts_td->clk);
+
+	return 0;
+}
+
+static int lvts_resume(struct device *dev)
+{
+	struct lvts_domain *lvts_td;
+	int i, ret;
+
+	lvts_td = dev_get_drvdata(dev);
+
+	ret = clk_prepare_enable(lvts_td->clk);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < lvts_td->num_lvts_ctrl; i++)
+		lvts_ctrl_set_enable(&lvts_td->lvts_ctrl[i], true);
+
+	return 0;
+}
+
 static const struct lvts_ctrl_data mt8195_lvts_mcu_data_ctrl[] = {
 	{
 		.cal_offset = { 0x04, 0x07 },
@@ -1350,12 +1382,17 @@ static const struct of_device_id lvts_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, lvts_of_match);
 
+static const struct dev_pm_ops lvts_pm_ops = {
+	NOIRQ_SYSTEM_SLEEP_PM_OPS(lvts_suspend, lvts_resume)
+};
+
 static struct platform_driver lvts_driver = {
 	.probe = lvts_probe,
 	.remove_new = lvts_remove,
 	.driver = {
 		.name = "mtk-lvts-thermal",
 		.of_match_table = lvts_of_match,
+		.pm = &lvts_pm_ops,
 	},
 };
 module_platform_driver(lvts_driver);
-- 
2.42.0


