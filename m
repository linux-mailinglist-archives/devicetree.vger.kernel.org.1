Return-Path: <devicetree+bounces-64291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 699848B8CF2
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 17:27:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A45B9B22EFF
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 15:27:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B073212FB3C;
	Wed,  1 May 2024 15:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="Bq4LSKwX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta75.mxroute.com (mail-108-mta75.mxroute.com [136.175.108.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD4512FB0D
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 15:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.75
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714577231; cv=none; b=bQf30kxD8QVB09P/9Akk/iS1Q3Ti+Mu60wtV9wj2kXcaaElJfmolP1V4282EGkriIqRnNcdqcHbIlkD8BhX7iX//9Y8w4mE094WMISva1e14hXwLfcp7E3rXr6KLOb+ql1HyCnT3WmVMdIQLBzVRIuvYSyLBIIbGH6H1wl0ql9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714577231; c=relaxed/simple;
	bh=UTScrY5dDltq3774NcIr4xHvkWcHteXfo0G5OFlhITw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WWIiGrq7C9aiRD+QztoqXLhrGHB5/vvJVY2WW9PSl6/BC3JlJkjnb2H/pONhMVQPj3WhQg222M6vfvF7drkw0hVAzJG15QIsbA5HTBEzfqoV5EjFFnlwUYynrasCORkBqzfG0NidNK7/dhWWlk1AkaAlDd6c9Y4oI+tuvvlyiOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=Bq4LSKwX; arc=none smtp.client-ip=136.175.108.75
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta75.mxroute.com (ZoneMTA) with ESMTPSA id 18f34c2fe270008ca2.011
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Wed, 01 May 2024 15:25:45 +0000
X-Zone-Loop: ce1173b4cc131a99fb9f11f26f49351e148662d6428b
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=l4xjBgCfjnOzd7+CFjKpXoct8jxcDRnErTduE7TIjwU=; b=Bq4LSKwXtEA8x7efCRyZEphZWo
	bg+bEfMpQ6QQsS3WvgmvcQ1gP3b1GNbSq1XC/FD/LhpMC5QLmqD9cJYKUsACQfTfpA1wzxHL0fgCq
	rh6Ds8xHts/AjN3xOeMANhIi/YVBqbfbBTFfHwtTdJslvaKsu6lLiqGkGjsIHGim6MBvCfn8j2G60
	fWsHz4TJ7nIbbCBsUhyP88Dbt9RlSnNhT2Yzz7lYjApHCQJr/7yfLE5QyRjQFELq6RbItATgJEL/q
	4J7hLnZTzEWa8SwvLbg3syOCgTQse61EPux6PdQAzatGUOky/Xlc6yUab8gp92SqLigxplak4fA48
	WO607o4A==;
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
	Ondrej Jirman <megi@xff.cz>,
	Ondrej Jirman <megous@megous.com>,
	Luis Garcia <git@luigi311.com>,
	Tommaso Merciai <tomm.merciai@gmail.com>
Subject: [PATCH v5 23/25] media: i2c: imx258: Add support for reset gpio
Date: Wed,  1 May 2024 09:24:40 -0600
Message-ID: <20240501152442.1072627-24-git@luigi311.com>
In-Reply-To: <20240501152442.1072627-1-git@luigi311.com>
References: <20240501152442.1072627-1-git@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: personal@luigi311.com

From: Ondrej Jirman <megi@xff.cz>

It was documented in DT, but not implemented.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Luis Garcia <git@luigi311.com>
Reviewed-by: Pavel Machek <pavel@ucw.cz>
Reviewed-by: Tommaso Merciai <tomm.merciai@gmail.com>
---
 drivers/media/i2c/imx258.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
index f0bd72f241e4..74a8f3ed1ab5 100644
--- a/drivers/media/i2c/imx258.c
+++ b/drivers/media/i2c/imx258.c
@@ -699,6 +699,7 @@ struct imx258 {
 	unsigned int csi2_flags;
 
 	struct gpio_desc *powerdown_gpio;
+	struct gpio_desc *reset_gpio;
 
 	/*
 	 * Mutex for serialized access:
@@ -1250,7 +1251,10 @@ static int imx258_power_on(struct device *dev)
 		regulator_bulk_disable(IMX258_NUM_SUPPLIES, imx258->supplies);
 	}
 
-	return ret;
+	gpiod_set_value_cansleep(imx258->reset_gpio, 0);
+	usleep_range(400, 500);
+
+	return 0;
 }
 
 static int imx258_power_off(struct device *dev)
@@ -1260,6 +1264,7 @@ static int imx258_power_off(struct device *dev)
 
 	clk_disable_unprepare(imx258->clk);
 
+	gpiod_set_value_cansleep(imx258->reset_gpio, 1);
 	gpiod_set_value_cansleep(imx258->powerdown_gpio, 1);
 
 	regulator_bulk_disable(IMX258_NUM_SUPPLIES, imx258->supplies);
@@ -1573,6 +1578,12 @@ static int imx258_probe(struct i2c_client *client)
 	if (IS_ERR(imx258->powerdown_gpio))
 		return PTR_ERR(imx258->powerdown_gpio);
 
+	/* request optional reset pin */
+	imx258->reset_gpio = devm_gpiod_get_optional(&client->dev, "reset",
+						     GPIOD_OUT_HIGH);
+	if (IS_ERR(imx258->reset_gpio))
+		return PTR_ERR(imx258->reset_gpio);
+
 	/* Initialize subdev */
 	v4l2_i2c_subdev_init(&imx258->sd, client, &imx258_subdev_ops);
 
-- 
2.44.0


