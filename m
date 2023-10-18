Return-Path: <devicetree+bounces-9502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED51B7CD410
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 08:17:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A6511C20D8A
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 06:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BD968F69;
	Wed, 18 Oct 2023 06:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAD958F77
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 06:17:55 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54921138
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 23:17:51 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrx-0001Zp-7b; Wed, 18 Oct 2023 08:17:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrq-002UY3-Qg; Wed, 18 Oct 2023 08:17:18 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrq-00EviL-2J;
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
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v8 07/26] PM / devfreq: rockchip-dfi: introduce channel mask
Date: Wed, 18 Oct 2023 08:16:55 +0200
Message-Id: <20231018061714.3553817-8-s.hauer@pengutronix.de>
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

Different Rockchip SoC variants have a different number of channels.
Introduce a channel mask to make the number of channels configurable
from SoC initialization code.

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v7:
     - Loop only over channels present on a SoC

 drivers/devfreq/event/rockchip-dfi.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 126bb744645b6..28c18bbf6baa5 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -18,10 +18,11 @@
 #include <linux/list.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/bits.h>
 
 #include <soc/rockchip/rk3399_grf.h>
 
-#define RK3399_DMC_NUM_CH	2
+#define DMC_MAX_CHANNELS	2
 
 /* DDRMON_CTRL */
 #define DDRMON_CTRL	0x04
@@ -44,7 +45,7 @@ struct dmc_count_channel {
 };
 
 struct dmc_count {
-	struct dmc_count_channel c[RK3399_DMC_NUM_CH];
+	struct dmc_count_channel c[DMC_MAX_CHANNELS];
 };
 
 /*
@@ -61,6 +62,8 @@ struct rockchip_dfi {
 	struct regmap *regmap_pmu;
 	struct clk *clk;
 	u32 ddr_type;
+	unsigned int channel_mask;
+	unsigned int max_channels;
 };
 
 static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
@@ -95,7 +98,9 @@ static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dm
 	u32 i;
 	void __iomem *dfi_regs = dfi->regs;
 
-	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
+	for (i = 0; i < dfi->max_channels; i++) {
+		if (!(dfi->channel_mask & BIT(i)))
+			continue;
 		count->c[i].access = readl_relaxed(dfi_regs +
 				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
 		count->c[i].total = readl_relaxed(dfi_regs +
@@ -145,9 +150,14 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
 	rockchip_dfi_read_counters(edev, &count);
 
 	/* We can only report one channel, so find the busiest one */
-	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
-		u32 a = count.c[i].access - last->c[i].access;
-		u32 t = count.c[i].total - last->c[i].total;
+	for (i = 0; i < dfi->max_channels; i++) {
+		u32 a, t;
+
+		if (!(dfi->channel_mask & BIT(i)))
+			continue;
+
+		a = count.c[i].access - last->c[i].access;
+		t = count.c[i].total - last->c[i].total;
 
 		if (a > access) {
 			access = a;
@@ -185,6 +195,9 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
 	dfi->ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
 			RK3399_PMUGRF_DDRTYPE_MASK;
 
+	dfi->channel_mask = GENMASK(1, 0);
+	dfi->max_channels = 2;
+
 	return 0;
 };
 
-- 
2.39.2


