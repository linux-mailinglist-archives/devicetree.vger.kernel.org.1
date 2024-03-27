Return-Path: <devicetree+bounces-54021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 561D188F31D
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 00:25:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 042C22A5661
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 23:25:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76CF3156977;
	Wed, 27 Mar 2024 23:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="RhqwllJS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta77.mxroute.com (mail-108-mta77.mxroute.com [136.175.108.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD80715696F
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 23:23:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711581812; cv=none; b=EPt/SRiEyhvC1DJjk6gTDwEbCOz8+HNXnY06eEuu7TO+5r9ZQDE74vXCo/+iXElCdL5UT5luTwwZkIIHxJisKzuDIblh63I2lzvX75ltLdDYtyL1zVeC/+oZ+YHz24qna88VQqkEzemABe9kD2P3zMv2CIrjoHBPs+B1nf8cwBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711581812; c=relaxed/simple;
	bh=cod9Uff2WJHycV1JgYkB6YcxOlX/FeYXw3c4usUp97o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Sq+DI3j6IVZF6WjQ1Mrc8QuPHMIyYwj9VhcJiTsQu54KOT7UYv33pueIkTdHm5SVMepH3qu283ZNR1x7XKCdjKfmEUzBVNjKEVkedOXEh1qijcX3uWGr5Vw/mnQCPTDUPTYhn0c9eSFGG+T6DFwCj6xyXU6Dh6I66aACuqj1k7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=RhqwllJS; arc=none smtp.client-ip=136.175.108.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta77.mxroute.com (ZoneMTA) with ESMTPSA id 18e8234d0610003bea.00f
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Wed, 27 Mar 2024 23:18:03 +0000
X-Zone-Loop: 6340efedbffa4968c26117e6b6d6281c4776af7d852e
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=LjTpuhBdOaCqahODS/RH8FzgsjiJhHlH8fSAiGxPvj0=; b=RhqwllJSBTxd/TzOcE9rhrNwm/
	ojUPMl2wS6Zrqe/2JHwhaHKHw98UlTxqsAr5cRSbd4WFMsrgLhtqKkLPjiLHnKAuoCbUOGpC9BRlT
	LSRjKfvQGq5BsSX16E+OxL25FMF6o0MxG0RaEJPBlB8gUKO0iS6EBFroAgerWKVL1vqJPICZQC4pd
	rfjN9rIx3y0rOpONq26ezELw0VlWXvhASTYQ0TuqCtc+W0IXoxJgIxDMYyGKN5fz1f06CXkAldUW2
	/dnfLu3eQN5sT5HyuE853SpSJXAQ//2Jnc68M1Jf9Olo54V2ynbRbqa5fPPdGEYt3NPvhKbmGLL3S
	k2JD6JFg==;
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
	Luigi311 <git@luigi311.com>,
	Ondrej Jirman <megous@megous.com>
Subject: [PATCH 23/23] drivers: media: i2c: imx258: Add support for reset gpio
Date: Wed, 27 Mar 2024 17:17:09 -0600
Message-ID: <20240327231710.53188-24-git@luigi311.com>
In-Reply-To: <20240327231710.53188-1-git@luigi311.com>
References: <20240327231710.53188-1-git@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: personal@luigi311.com

From: Luigi311 <git@luigi311.com>

It was documented in DT, but not implemented.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 drivers/media/i2c/imx258.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
index d8c51d5f04e0..42e1c9246bed 100644
--- a/drivers/media/i2c/imx258.c
+++ b/drivers/media/i2c/imx258.c
@@ -687,6 +687,7 @@ struct imx258 {
 	unsigned int csi2_flags;
 
 	struct gpio_desc *powerdown_gpio;
+	struct gpio_desc *reset_gpio;
 
 	/*
 	 * Mutex for serialized access:
@@ -1239,7 +1240,11 @@ static int imx258_power_on(struct device *dev)
 		regulator_bulk_disable(IMX258_NUM_SUPPLIES, imx258->supplies);
 	}
 
-	return ret;
+	gpiod_set_value_cansleep(imx258->reset_gpio, 0);
+
+	usleep_range(400, 500);
+
+	return 0;
 }
 
 static int imx258_power_off(struct device *dev)
@@ -1250,6 +1255,7 @@ static int imx258_power_off(struct device *dev)
 	clk_disable_unprepare(imx258->clk);
 	regulator_bulk_disable(IMX258_NUM_SUPPLIES, imx258->supplies);
 
+	gpiod_set_value_cansleep(imx258->reset_gpio, 1);
 	gpiod_set_value_cansleep(imx258->powerdown_gpio, 1);
 
 	return 0;
@@ -1561,6 +1567,12 @@ static int imx258_probe(struct i2c_client *client)
 	if (IS_ERR(imx258->powerdown_gpio))
 		return PTR_ERR(imx258->powerdown_gpio);
 
+	/* request optional reset pin */
+	imx258->reset_gpio = devm_gpiod_get_optional(&client->dev, "reset",
+						    GPIOD_OUT_HIGH);
+	if (IS_ERR(imx258->reset_gpio))
+		return PTR_ERR(imx258->reset_gpio);
+
 	/* Initialize subdev */
 	v4l2_i2c_subdev_init(&imx258->sd, client, &imx258_subdev_ops);
 
-- 
2.42.0


