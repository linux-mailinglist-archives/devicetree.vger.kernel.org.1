Return-Path: <devicetree+bounces-71646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AA40D8D77C0
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 22:15:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 546F21F211AB
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 20:15:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BF976FE16;
	Sun,  2 Jun 2024 20:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="r1pmuNLg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta187.mxroute.com (mail-108-mta187.mxroute.com [136.175.108.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E776D1B2
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 20:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717359309; cv=none; b=LKbLT4UG94+w5hJwPxO/tqCpX1lzm4OVDZ7nG8wYD52837hBxFQcVyotIr/BJB9MddXZJrpM9qa4C+cQIuT3gv974k2hYu49sGY63DEF0eN0Rg4NsQJ82Cj/3ZdKPVs4d5kneKI0z+FUImmbtkGPdEhyq0/9o0IsDvecc89AQTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717359309; c=relaxed/simple;
	bh=t0DpAm14I63PD+zKjpelnQ5UomdKi3PfstUiSulsvmk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hSv9Eb+zopiDnZl/HxHnA3G9AofSiDcE6LBzjW0A8jTopFNk5FD8litP2xIsuH5a0eR/RF4y7jL1re/rTNv6BmiKSDgHglqOcWxIEXO6B5kvKcn5L6bZ16aNPOBehoS4vWeFLdf1kJaQyQ0UfIXAR45Nwud1FLSuScghCbrMSOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=r1pmuNLg; arc=none smtp.client-ip=136.175.108.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta187.mxroute.com (ZoneMTA) with ESMTPSA id 18fda96bc57000e2b6.00f
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Sun, 02 Jun 2024 20:14:22 +0000
X-Zone-Loop: b08440ee2f3c551b0052698106defa112abf5bd0503d
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Mc+RbIL+DgqYcfe/mLvPif24eMzEBPY7cltm4NspsTE=; b=r1pmuNLgrmVRdy3DspwaEwSbql
	yEc1bf+nm9x08MET0M1CrqWtVKqF3DKQ6XvFgCl0P3lEkUhNp/H+G21OoASACXJO+5u5yjDuS+FJA
	JjhRiS8zsBKqSSu8Nt6GYSexcf3KtHf/dgr1qBdhpGfVgRdh5s7MBNVqWzn5CvfwSXZHmoUsWhRFF
	9MjaOGtzKEeHPiL3sVjpXYrNZIYLIWdJMtE7KPRLGeyDJq+r7aDKsDUbIWFoxBypxX+v2CZL9QYba
	b4pAiwpajpBSlSfTqZv4V1c0NywisI2IbYoSnwa4uDkvTpht3nnrIrvPSv3iyIH/vfGD2q9bj0kHS
	2ZCL/8bw==;
From: git@luigi311.com
To: linux-media@vger.kernel.org
Cc: dave.stevenson@raspberrypi.com,
	jacopo.mondi@ideasonboard.com,
	mchehab@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	sakari.ailus@linux.intel.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	pavel@ucw.cz,
	phone-devel@vger.kernel.org,
	Luis Garcia <git@luigi311.com>
Subject: [PATCH v6 14/23] media: i2c: imx258: Issue reset before starting streaming
Date: Sun,  2 Jun 2024 14:13:36 -0600
Message-ID: <20240602201345.328737-15-git@luigi311.com>
In-Reply-To: <20240602201345.328737-1-git@luigi311.com>
References: <20240602201345.328737-1-git@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: personal@luigi311.com

From: Dave Stevenson <dave.stevenson@raspberrypi.com>

Whilst not documented, register 0x0103 bit 0 is the soft
reset for the sensor, so send it before trying to configure
the sensor.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Luis Garcia <git@luigi311.com>
Reviewed-by: Pavel Machek <pavel@ucw.cz>
---
 drivers/media/i2c/imx258.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
index c1a2c2406aaa..9c83ba1232fa 100644
--- a/drivers/media/i2c/imx258.c
+++ b/drivers/media/i2c/imx258.c
@@ -20,6 +20,8 @@
 #define IMX258_MODE_STANDBY		0x00
 #define IMX258_MODE_STREAMING		0x01
 
+#define IMX258_REG_RESET		0x0103
+
 /* Chip ID */
 #define IMX258_REG_CHIP_ID		0x0016
 #define IMX258_CHIP_ID			0x0258
@@ -1052,6 +1054,16 @@ static int imx258_start_streaming(struct imx258 *imx258)
 	const struct imx258_link_freq_config *link_freq_cfg;
 	int ret, link_freq_index;
 
+	ret = imx258_write_reg(imx258, IMX258_REG_RESET, IMX258_REG_VALUE_08BIT,
+			       0x01);
+	if (ret) {
+		dev_err(&client->dev, "%s failed to reset sensor\n", __func__);
+		return ret;
+	}
+
+	/* 12ms is required from poweron to standby */
+	fsleep(12000);
+
 	/* Setup PLL */
 	link_freq_index = imx258->cur_mode->link_freq_index;
 	link_freq_cfg = &imx258->link_freq_configs[link_freq_index];
-- 
2.44.0


