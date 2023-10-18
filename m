Return-Path: <devicetree+bounces-9506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE887CD423
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 08:18:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3102B281462
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 06:18:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E71CA8F69;
	Wed, 18 Oct 2023 06:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0838F57
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 06:18:23 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA905D7F
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 23:18:05 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrx-0001Zy-7m; Wed, 18 Oct 2023 08:17:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrr-002UYZ-7T; Wed, 18 Oct 2023 08:17:19 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrr-00EvjG-0B;
	Wed, 18 Oct 2023 08:17:19 +0200
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
Subject: [PATCH v8 19/26] PM / devfreq: rockchip-dfi: add support for RK3588
Date: Wed, 18 Oct 2023 08:17:07 +0200
Message-Id: <20231018061714.3553817-20-s.hauer@pengutronix.de>
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

Add support for the RK3588 to the driver. The RK3588 has four DDR
channels with a register stride of 0x4000 between the channel
registers, also it has a DDRMON_CTRL register per channel.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 36 +++++++++++++++++++++++++++-
 include/soc/rockchip/rk3588_grf.h    | 18 ++++++++++++++
 2 files changed, 53 insertions(+), 1 deletion(-)
 create mode 100644 include/soc/rockchip/rk3588_grf.h

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index bf38829a2a4af..794f36e7eebd1 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -26,8 +26,9 @@
 #include <soc/rockchip/rockchip_grf.h>
 #include <soc/rockchip/rk3399_grf.h>
 #include <soc/rockchip/rk3568_grf.h>
+#include <soc/rockchip/rk3588_grf.h>
 
-#define DMC_MAX_CHANNELS	2
+#define DMC_MAX_CHANNELS	4
 
 #define HIWORD_UPDATE(val, mask)	((val) | (mask) << 16)
 
@@ -723,9 +724,42 @@ static int rk3568_dfi_init(struct rockchip_dfi *dfi)
 	return 0;
 };
 
+static int rk3588_dfi_init(struct rockchip_dfi *dfi)
+{
+	struct regmap *regmap_pmu = dfi->regmap_pmu;
+	u32 reg2, reg3, reg4;
+
+	regmap_read(regmap_pmu, RK3588_PMUGRF_OS_REG2, &reg2);
+	regmap_read(regmap_pmu, RK3588_PMUGRF_OS_REG3, &reg3);
+	regmap_read(regmap_pmu, RK3588_PMUGRF_OS_REG4, &reg4);
+
+	/* lower 3 bits of the DDR type */
+	dfi->ddr_type = FIELD_GET(RK3588_PMUGRF_OS_REG2_DRAMTYPE_INFO, reg2);
+
+	/*
+	 * For version three and higher the upper two bits of the DDR type are
+	 * in RK3588_PMUGRF_OS_REG3
+	 */
+	if (FIELD_GET(RK3588_PMUGRF_OS_REG3_SYSREG_VERSION, reg3) >= 0x3)
+		dfi->ddr_type |= FIELD_GET(RK3588_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3, reg3) << 3;
+
+	dfi->buswidth[0] = FIELD_GET(RK3588_PMUGRF_OS_REG2_BW_CH0, reg2) == 0 ? 4 : 2;
+	dfi->buswidth[1] = FIELD_GET(RK3588_PMUGRF_OS_REG2_BW_CH1, reg2) == 0 ? 4 : 2;
+	dfi->buswidth[2] = FIELD_GET(RK3568_PMUGRF_OS_REG2_BW_CH0, reg4) == 0 ? 4 : 2;
+	dfi->buswidth[3] = FIELD_GET(RK3588_PMUGRF_OS_REG2_BW_CH1, reg4) == 0 ? 4 : 2;
+	dfi->channel_mask = FIELD_GET(RK3588_PMUGRF_OS_REG2_CH_INFO, reg2) |
+			    FIELD_GET(RK3588_PMUGRF_OS_REG2_CH_INFO, reg4) << 2;
+	dfi->max_channels = 4;
+
+	dfi->ddrmon_stride = 0x4000;
+
+	return 0;
+};
+
 static const struct of_device_id rockchip_dfi_id_match[] = {
 	{ .compatible = "rockchip,rk3399-dfi", .data = rk3399_dfi_init },
 	{ .compatible = "rockchip,rk3568-dfi", .data = rk3568_dfi_init },
+	{ .compatible = "rockchip,rk3588-dfi", .data = rk3588_dfi_init },
 	{ },
 };
 
diff --git a/include/soc/rockchip/rk3588_grf.h b/include/soc/rockchip/rk3588_grf.h
new file mode 100644
index 0000000000000..630b35a550640
--- /dev/null
+++ b/include/soc/rockchip/rk3588_grf.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+#ifndef __SOC_RK3588_GRF_H
+#define __SOC_RK3588_GRF_H
+
+#define RK3588_PMUGRF_OS_REG2		0x208
+#define RK3588_PMUGRF_OS_REG2_DRAMTYPE_INFO		GENMASK(15, 13)
+#define RK3588_PMUGRF_OS_REG2_BW_CH0			GENMASK(3, 2)
+#define RK3588_PMUGRF_OS_REG2_BW_CH1                    GENMASK(19, 18)
+#define RK3588_PMUGRF_OS_REG2_CH_INFO                   GENMASK(29, 28)
+
+#define RK3588_PMUGRF_OS_REG3		0x20c
+#define RK3588_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3		GENMASK(13, 12)
+#define RK3588_PMUGRF_OS_REG3_SYSREG_VERSION		GENMASK(31, 28)
+
+#define RK3588_PMUGRF_OS_REG4           0x210
+#define RK3588_PMUGRF_OS_REG5           0x214
+
+#endif /* __SOC_RK3588_GRF_H */
-- 
2.39.2


