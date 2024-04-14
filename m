Return-Path: <devicetree+bounces-59195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B44F28A4566
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 22:44:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E51301C20EE8
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 20:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D186137916;
	Sun, 14 Apr 2024 20:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="s3iY/3u7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta61.mxroute.com (mail-108-mta61.mxroute.com [136.175.108.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A162137747
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 20:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713127343; cv=none; b=D1zPZ9HehPx1EI7xJ5K4j7VpHXuc1bbmoNG+qPp83zTIeR1JBRmt9mdKRPEW931BdvHUHPwBYUwOlGHNmG2UPyrixmFkUzZZef2u3CqEse5l8krHywwt9gK5gikQ6/HJIWhrp2PJ+wiuMuHjkd9zJp6wRfqXpnXEte/pLzmcZy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713127343; c=relaxed/simple;
	bh=txI7nLQ7SaAgPbFprDJdTC4+aOlNavya5MDukH1ErMc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TjUS0+nVN+kc4gmR0gBGZLJYCdaLmI5BbvvntDBkz/omMuXoJqv5KymplKZ9laMTDFyUpBGZE1V7/WMaAiLTnEIQrmCCpxa5PkZUXgHVzPr6ytQGu6ez6hbNy3A31vdL4e2MuhOmOhI6xoo/hCkZGBw1YWTgH3gwqwQgpovJ5Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=s3iY/3u7; arc=none smtp.client-ip=136.175.108.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta61.mxroute.com (ZoneMTA) with ESMTPSA id 18ede52eec30003bea.010
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Sun, 14 Apr 2024 20:36:00 +0000
X-Zone-Loop: 9dbce2bf3bb33497595e00473e726408c42c12ef214a
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=RhPK9nK9EKfKLg4i6+hTwf+Rau4stoc3Ghdd7Jp7wTo=; b=s3iY/3u7znzblaOimEAMVdeBOh
	XB5s2xOeMtrEPhCYtzrK0Pp50YupnAzGidF0n3upIKxuo4AZVFPiRX+8NEbqdIEiKACZWBQfWMkqL
	46/wUAnvsh0rv2b8yR+X2PUIiy/z6RhpBMAqypwaSLcuPDdgBrxAxyVI6hDeqAHEAJXszu8TfqeKq
	+7HJH73F0EMMLVEBsCuf0b/opZAv+5ZS74JZao+dKl21NwnSWQKPz4d/C12Kx1tagPSHh6UpDsmcB
	BulwlbNx4B54j3RnZvENv4o1jEhQjufzkVo77hz3jelmrsQrnbNlI5wN/l+f8rXS/8d21Qej/Hkb8
	2MlXFbuA==;
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
	Luis Garcia <git@luigi311.com>,
	Ondrej Jirman <megous@megous.com>
Subject: [PATCH v4 23/25] media: i2c: imx258: Add support for reset gpio
Date: Sun, 14 Apr 2024 14:35:01 -0600
Message-ID: <20240414203503.18402-24-git@luigi311.com>
In-Reply-To: <20240414203503.18402-1-git@luigi311.com>
References: <20240414203503.18402-1-git@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: personal@luigi311.com

From: Luis Garcia <git@luigi311.com>

It was documented in DT, but not implemented.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Luis Garcia <git@luigi311.com>
---
 drivers/media/i2c/imx258.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
index f0bd72f241e4..5de71cb7c1ae 100644
--- a/drivers/media/i2c/imx258.c
+++ b/drivers/media/i2c/imx258.c
@@ -699,6 +699,7 @@ struct imx258 {
 	unsigned int csi2_flags;
 
 	struct gpio_desc *powerdown_gpio;
+	struct gpio_desc *reset_gpio;
 
 	/*
 	 * Mutex for serialized access:
@@ -1250,7 +1251,11 @@ static int imx258_power_on(struct device *dev)
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
@@ -1260,6 +1265,7 @@ static int imx258_power_off(struct device *dev)
 
 	clk_disable_unprepare(imx258->clk);
 
+	gpiod_set_value_cansleep(imx258->reset_gpio, 1);
 	gpiod_set_value_cansleep(imx258->powerdown_gpio, 1);
 
 	regulator_bulk_disable(IMX258_NUM_SUPPLIES, imx258->supplies);
@@ -1573,6 +1579,12 @@ static int imx258_probe(struct i2c_client *client)
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


