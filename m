Return-Path: <devicetree+bounces-9490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AFF7CD3FC
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 08:17:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69DB12813DF
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 06:17:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1820D8F6F;
	Wed, 18 Oct 2023 06:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9103B1FC5
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 06:17:41 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E286CC6
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 23:17:39 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrs-0001Zw-JW; Wed, 18 Oct 2023 08:17:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrr-002UYQ-1l; Wed, 18 Oct 2023 08:17:19 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrq-00Eviy-30;
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
	Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH v8 15/26] PM / devfreq: rockchip-dfi: give variable a better name
Date: Wed, 18 Oct 2023 08:17:03 +0200
Message-Id: <20231018061714.3553817-16-s.hauer@pengutronix.de>
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

struct dmc_count_channel::total counts the clock cycles of the DDR
controller. Rename it accordingly to give the reader a better idea
what this is about. While at it, at some documentation to struct
dmc_count_channel.

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 7a4f1901314d4..3d5c6d737ccd9 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -46,9 +46,14 @@
 #define DDRMON_CH1_COUNT_NUM		0x3c
 #define DDRMON_CH1_DFI_ACCESS_NUM	0x40
 
+/**
+ * struct dmc_count_channel - structure to hold counter values from the DDR controller
+ * @access:       Number of read and write accesses
+ * @clock_cycles: DDR clock cycles
+ */
 struct dmc_count_channel {
 	u32 access;
-	u32 total;
+	u32 clock_cycles;
 };
 
 struct dmc_count {
@@ -151,7 +156,7 @@ static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_coun
 			continue;
 		count->c[i].access = readl_relaxed(dfi_regs +
 				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
-		count->c[i].total = readl_relaxed(dfi_regs +
+		count->c[i].clock_cycles = readl_relaxed(dfi_regs +
 				DDRMON_CH0_COUNT_NUM + i * 20);
 	}
 }
@@ -183,29 +188,29 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
 	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
 	struct dmc_count count;
 	struct dmc_count *last = &dfi->last_event_count;
-	u32 access = 0, total = 0;
+	u32 access = 0, clock_cycles = 0;
 	int i;
 
 	rockchip_dfi_read_counters(dfi, &count);
 
 	/* We can only report one channel, so find the busiest one */
 	for (i = 0; i < dfi->max_channels; i++) {
-		u32 a, t;
+		u32 a, c;
 
 		if (!(dfi->channel_mask & BIT(i)))
 			continue;
 
 		a = count.c[i].access - last->c[i].access;
-		t = count.c[i].total - last->c[i].total;
+		c = count.c[i].clock_cycles - last->c[i].clock_cycles;
 
 		if (a > access) {
 			access = a;
-			total = t;
+			clock_cycles = c;
 		}
 	}
 
 	edata->load_count = access * 4;
-	edata->total_count = total;
+	edata->total_count = clock_cycles;
 
 	dfi->last_event_count = count;
 
-- 
2.39.2


