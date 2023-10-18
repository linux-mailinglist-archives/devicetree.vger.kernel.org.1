Return-Path: <devicetree+bounces-9494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3D27CD403
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 08:17:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F2A91C20D47
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 06:17:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBEF58F71;
	Wed, 18 Oct 2023 06:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347248F69
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 06:17:47 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E68EFD
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 23:17:45 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrw-0001a0-Sd; Wed, 18 Oct 2023 08:17:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrr-002UYT-7m; Wed, 18 Oct 2023 08:17:19 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrq-00Evj7-3D;
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
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: [PATCH v8 17/26] PM / devfreq: rockchip-dfi: make register stride SoC specific
Date: Wed, 18 Oct 2023 08:17:05 +0200
Message-Id: <20231018061714.3553817-18-s.hauer@pengutronix.de>
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

The currently supported RK3399 has a stride of 20 between the channel
specific registers. Upcoming RK3588 has a different stride, so put
the stride into driver data to make it configurable.
While at it convert decimal 20 to hex 0x14 for consistency with RK3588
which has a register stride 0x4000 and we want to write that in hex
as well.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v7:
     - Initialize ddrmon_stride for RK3568 and explain why it's not needed

 drivers/devfreq/event/rockchip-dfi.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 63977f9fc2693..a3d823ac68ace 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -113,6 +113,7 @@ struct rockchip_dfi {
 	int active_events;
 	int burst_len;
 	int buswidth[DMC_MAX_CHANNELS];
+	int ddrmon_stride;
 };
 
 static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
@@ -190,13 +191,13 @@ static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_coun
 		if (!(dfi->channel_mask & BIT(i)))
 			continue;
 		res->c[i].read_access = readl_relaxed(dfi_regs +
-				DDRMON_CH0_RD_NUM + i * 20);
+				DDRMON_CH0_RD_NUM + i * dfi->ddrmon_stride);
 		res->c[i].write_access = readl_relaxed(dfi_regs +
-				DDRMON_CH0_WR_NUM + i * 20);
+				DDRMON_CH0_WR_NUM + i * dfi->ddrmon_stride);
 		res->c[i].access = readl_relaxed(dfi_regs +
-				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
+				DDRMON_CH0_DFI_ACCESS_NUM + i * dfi->ddrmon_stride);
 		res->c[i].clock_cycles = readl_relaxed(dfi_regs +
-				DDRMON_CH0_COUNT_NUM + i * 20);
+				DDRMON_CH0_COUNT_NUM + i * dfi->ddrmon_stride);
 	}
 }
 
@@ -664,6 +665,8 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
 	dfi->buswidth[0] = FIELD_GET(RK3399_PMUGRF_OS_REG2_BW_CH0, val) == 0 ? 4 : 2;
 	dfi->buswidth[1] = FIELD_GET(RK3399_PMUGRF_OS_REG2_BW_CH1, val) == 0 ? 4 : 2;
 
+	dfi->ddrmon_stride = 0x14;
+
 	return 0;
 };
 
@@ -690,6 +693,8 @@ static int rk3568_dfi_init(struct rockchip_dfi *dfi)
 
 	dfi->buswidth[0] = FIELD_GET(RK3568_PMUGRF_OS_REG2_BW_CH0, reg2) == 0 ? 4 : 2;
 
+	dfi->ddrmon_stride = 0x0; /* not relevant, we only have a single channel on this SoC */
+
 	return 0;
 };
 
-- 
2.39.2


