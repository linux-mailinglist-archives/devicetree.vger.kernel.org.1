Return-Path: <devicetree+bounces-64310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 127358B8D3B
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 17:36:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42FDE1C21217
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 15:36:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7201E135A59;
	Wed,  1 May 2024 15:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b="bI7olhIK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-108-mta73.mxroute.com (mail-108-mta73.mxroute.com [136.175.108.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB1D130AF6
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 15:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=136.175.108.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714577534; cv=none; b=Zho5jL5CcZouu6yw1xlclwknt4i8VVFvQZeZ7boy6NNa/ZDyorqalOQ+fKFBpSc4zuqt/Sy9x0DIA2DKeHgfloDOqOeBdU9dVMI+kM1LbOehDk2xM/YDl3rYPghH+amnTXaa44opaFislRsPDU7eMusX3kGJn3ywoV0EfSQNsU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714577534; c=relaxed/simple;
	bh=nLM7risJ0XMUwfzT2iF91IqF6mJWvjzYjQDU7pYI8ac=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QuJAjejp3x0dCccpRCbMrGElbLSDkC45mRi36vX4GvXtoiUlfn04o5MFnuuSC6b0OdSpryCB2/vNA/YtNvFmlS98G/aUqHzD/arGY1U6dmYG6M9a/a2uYx87Bd6ZoPuZnhibEbPPVnFj0yrrkxBbctYqerw9JwloWolNCeQRJQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com; spf=pass smtp.mailfrom=luigi311.com; dkim=pass (2048-bit key) header.d=luigi311.com header.i=@luigi311.com header.b=bI7olhIK; arc=none smtp.client-ip=136.175.108.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=luigi311.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luigi311.com
Received: from filter006.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta73.mxroute.com (ZoneMTA) with ESMTPSA id 18f34c2fd460008ca2.00f
 for <devicetree@vger.kernel.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Wed, 01 May 2024 15:25:45 +0000
X-Zone-Loop: 579e3d82e3d9da425ecc2b3e911c4764a537b51c82ee
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=8XM+yDZwX8unHh0IpGoxwkH3HhBX4oqo+tDv7sLbN1s=; b=bI7olhIKP9WJMIk2FYTePpq+IM
	CVtmkDTxXXg7wE364rki2eHxCwJGdSggYwQT6grqjzakR4Yk+7DTu0gSxnTSIAkhw09X371E21Kpm
	Tm8D2JHbu6RFeLvVfX8WAWZLSFi4QoENukspiX/b1EbHB4whncLKBgcond1biHwjle/NoUBly3j+j
	EWdo5e2YIBsW+HylFydNSXG4DgTnn/FP5MblV4vQXdNKZGAd0wRI8/wCbQJRO/ZOc+kIvbLdcx1ca
	fmxq7vsti0LczCQd/dUaUJ077H87hRCugoBp4jYSojSqII/u6LwW7r34Y+GEbJ1k3zPJyNUVnuNNx
	0PXGaIEQ==;
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
	Luis Garcia <git@luigi311.com>
Subject: [PATCH v5 22/25] media: i2c: imx258: Add support for powerdown gpio
Date: Wed,  1 May 2024 09:24:39 -0600
Message-ID: <20240501152442.1072627-23-git@luigi311.com>
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

On some boards powerdown signal needs to be deasserted for this
sensor to be enabled.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Luis Garcia <git@luigi311.com>
Reviewed-by: Pavel Machek <pavel@ucw.cz>
---
 drivers/media/i2c/imx258.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
index f043200e336e..f0bd72f241e4 100644
--- a/drivers/media/i2c/imx258.c
+++ b/drivers/media/i2c/imx258.c
@@ -698,6 +698,8 @@ struct imx258 {
 	unsigned int lane_mode_idx;
 	unsigned int csi2_flags;
 
+	struct gpio_desc *powerdown_gpio;
+
 	/*
 	 * Mutex for serialized access:
 	 * Protect sensor module set pad format and start/stop streaming safely.
@@ -1231,6 +1233,8 @@ static int imx258_power_on(struct device *dev)
 	struct imx258 *imx258 = to_imx258(sd);
 	int ret;
 
+	gpiod_set_value_cansleep(imx258->powerdown_gpio, 0);
+
 	ret = regulator_bulk_enable(IMX258_NUM_SUPPLIES,
 				    imx258->supplies);
 	if (ret) {
@@ -1242,6 +1246,7 @@ static int imx258_power_on(struct device *dev)
 	ret = clk_prepare_enable(imx258->clk);
 	if (ret) {
 		dev_err(dev, "failed to enable clock\n");
+		gpiod_set_value_cansleep(imx258->powerdown_gpio, 1);
 		regulator_bulk_disable(IMX258_NUM_SUPPLIES, imx258->supplies);
 	}
 
@@ -1254,6 +1259,9 @@ static int imx258_power_off(struct device *dev)
 	struct imx258 *imx258 = to_imx258(sd);
 
 	clk_disable_unprepare(imx258->clk);
+
+	gpiod_set_value_cansleep(imx258->powerdown_gpio, 1);
+
 	regulator_bulk_disable(IMX258_NUM_SUPPLIES, imx258->supplies);
 
 	return 0;
@@ -1559,6 +1567,12 @@ static int imx258_probe(struct i2c_client *client)
 	if (!imx258->variant_cfg)
 		imx258->variant_cfg = &imx258_cfg;
 
+	/* request optional power down pin */
+	imx258->powerdown_gpio = devm_gpiod_get_optional(&client->dev, "powerdown",
+							 GPIOD_OUT_HIGH);
+	if (IS_ERR(imx258->powerdown_gpio))
+		return PTR_ERR(imx258->powerdown_gpio);
+
 	/* Initialize subdev */
 	v4l2_i2c_subdev_init(&imx258->sd, client, &imx258_subdev_ops);
 
-- 
2.44.0


