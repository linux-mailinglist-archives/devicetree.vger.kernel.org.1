Return-Path: <devicetree+bounces-9499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F48C7CD40B
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 08:17:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 828851C20BED
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 06:17:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAC218F75;
	Wed, 18 Oct 2023 06:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B639E1FC5
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 06:17:52 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F403FFE
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 23:17:49 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qszru-0001Zv-CN; Wed, 18 Oct 2023 08:17:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrr-002UYM-1B; Wed, 18 Oct 2023 08:17:19 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrq-00Evit-2u;
	Wed, 18 Oct 2023 08:17:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Chanwoo Choi <chanwoo@kernel.org>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH v8 14/26] PM / devfreq: rockchip-dfi: Prepare for multiple users
Date: Wed, 18 Oct 2023 08:17:02 +0200
Message-Id: <20231018061714.3553817-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231018061714.3553817-1-s.hauer@pengutronix.de>
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

When adding perf support later the DFI must be enabled when
either of devfreq-event or perf is active. Prepare for that
by adding a usage counter for the DFI. Also move enabling
and disabling of the clock away from the devfreq-event specific
functions to which the perf specific part won't have access.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 57 +++++++++++++++++++---------
 1 file changed, 40 insertions(+), 17 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index d56a33d03db4c..7a4f1901314d4 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -68,14 +68,29 @@ struct rockchip_dfi {
 	void __iomem *regs;
 	struct regmap *regmap_pmu;
 	struct clk *clk;
+	int usecount;
+	struct mutex mutex;
 	u32 ddr_type;
 	unsigned int channel_mask;
 	unsigned int max_channels;
 };
 
-static void rockchip_dfi_start_hardware_counter(struct rockchip_dfi *dfi)
+static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
 {
 	void __iomem *dfi_regs = dfi->regs;
+	int ret = 0;
+
+	mutex_lock(&dfi->mutex);
+
+	dfi->usecount++;
+	if (dfi->usecount > 1)
+		goto out;
+
+	ret = clk_prepare_enable(dfi->clk);
+	if (ret) {
+		dev_err(&dfi->edev->dev, "failed to enable dfi clk: %d\n", ret);
+		goto out;
+	}
 
 	/* clear DDRMON_CTRL setting */
 	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN | DDRMON_CTRL_SOFTWARE_EN |
@@ -100,14 +115,30 @@ static void rockchip_dfi_start_hardware_counter(struct rockchip_dfi *dfi)
 	/* enable count, use software mode */
 	writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTWARE_EN),
 		       dfi_regs + DDRMON_CTRL);
+out:
+	mutex_unlock(&dfi->mutex);
+
+	return ret;
 }
 
-static void rockchip_dfi_stop_hardware_counter(struct rockchip_dfi *dfi)
+static void rockchip_dfi_disable(struct rockchip_dfi *dfi)
 {
 	void __iomem *dfi_regs = dfi->regs;
 
+	mutex_lock(&dfi->mutex);
+
+	dfi->usecount--;
+
+	WARN_ON_ONCE(dfi->usecount < 0);
+
+	if (dfi->usecount > 0)
+		goto out;
+
 	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
 		       dfi_regs + DDRMON_CTRL);
+	clk_disable_unprepare(dfi->clk);
+out:
+	mutex_unlock(&dfi->mutex);
 }
 
 static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_count *count)
@@ -125,29 +156,20 @@ static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_coun
 	}
 }
 
-static int rockchip_dfi_disable(struct devfreq_event_dev *edev)
+static int rockchip_dfi_event_disable(struct devfreq_event_dev *edev)
 {
 	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
 
-	rockchip_dfi_stop_hardware_counter(dfi);
-	clk_disable_unprepare(dfi->clk);
+	rockchip_dfi_disable(dfi);
 
 	return 0;
 }
 
-static int rockchip_dfi_enable(struct devfreq_event_dev *edev)
+static int rockchip_dfi_event_enable(struct devfreq_event_dev *edev)
 {
 	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
-	int ret;
-
-	ret = clk_prepare_enable(dfi->clk);
-	if (ret) {
-		dev_err(&edev->dev, "failed to enable dfi clk: %d\n", ret);
-		return ret;
-	}
 
-	rockchip_dfi_start_hardware_counter(dfi);
-	return 0;
+	return rockchip_dfi_enable(dfi);
 }
 
 static int rockchip_dfi_set_event(struct devfreq_event_dev *edev)
@@ -191,8 +213,8 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
 }
 
 static const struct devfreq_event_ops rockchip_dfi_ops = {
-	.disable = rockchip_dfi_disable,
-	.enable = rockchip_dfi_enable,
+	.disable = rockchip_dfi_event_disable,
+	.enable = rockchip_dfi_event_enable,
 	.get_event = rockchip_dfi_get_event,
 	.set_event = rockchip_dfi_set_event,
 };
@@ -280,6 +302,7 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
 		return PTR_ERR(dfi->regmap_pmu);
 
 	dfi->dev = dev;
+	mutex_init(&dfi->mutex);
 
 	desc = &dfi->desc;
 	desc->ops = &rockchip_dfi_ops;
-- 
2.39.2


