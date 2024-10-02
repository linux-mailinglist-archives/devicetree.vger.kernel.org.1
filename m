Return-Path: <devicetree+bounces-107259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E570E98D87D
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 16:01:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 66A0E1F21E11
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 14:01:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 284E21D131C;
	Wed,  2 Oct 2024 13:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q9neev35"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C371D12E9
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727877535; cv=none; b=oS//hU2xKEhp2KMLK3tq2mufixdYX0EFfLGgsNEOYZkp4H0rM8rKwpMFH4Dy4tKHkClCy3caBfoW7xJ0Vqcj1GD1wtE6vgYzqORCAVpsjlGqfl9ex8bylguCiUNR0VfF4ERoEWdkQ+ATsTtbB+75sP9FgJwsmNkx54kJlgd4v5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727877535; c=relaxed/simple;
	bh=LL6t0/fJmZI9eHhzlG/ZhWayuHRs6YWaQKrP0a5lAkU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fmwK3LkFYJAADdjyTDqp/3fffVFyxbZ2fFl8jmp66kjstqb0PTFuqprdgacdy56/YhJBNuIaH+OkWVU7aslWVXfgFehg2Z+g6WXvn+iFKi2goXsn0IE2o2ww0VkQWFLuIb71/VQSeKyIN9RViGhuLgeACA1kLQegd7AUO2pnTjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q9neev35; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2fad8337aa4so26862161fa.0
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 06:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727877531; x=1728482331; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F1exe6gHY7SXzDJNE6ebEB1h7PVHhMSJMUSH5bL4x90=;
        b=q9neev35gUoWdoL6rxVsrxM6V192/iC7jaRkg2d+vgsFLCMHD5meVpaQ5sFUz0/xqV
         hTw1Mp0/Dg1qwvOuHEU6LCmUn5P8qOLx6146YVpc7Maxlb2ZUrEH+jqusS0wfVV6fdG8
         h0/7Nf7Iv8IvaNN1WUdW+TER4X4G7Zwnc+rf+stnrMqMgiHOBh65l9hFuktlIx+6fhwJ
         Oj5439/wsPOaD64oLcaSSDi+ypPFQFGFdVkdv+wazYXj1lpFeLXQRtp1B1g49KANxDOQ
         JMzOEq403oVnoYTARL99kGocDXK9wNAssiIwhwWqsfLgpb+MZ5tuGly5HYQsa9bcF4+0
         Hl5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727877531; x=1728482331;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F1exe6gHY7SXzDJNE6ebEB1h7PVHhMSJMUSH5bL4x90=;
        b=tzXUbzbVNCw6lUIbAzUNYvhH+OTv7QUKVpbpQEIY6PSSomCWoXCGbuKqjcMHMuS26P
         6llKD1qmnLd5iXAwdFeGxid89QPYguy/xN+x/D1kJo8KAub6Qyj9JZrl2QUqtipCOCDr
         E31Be8dt4mr9SE7vscSNM1GvZhRomN+eKEEBttUKyVGHa2khKc2Ut6vG3O4rY+/kIBGe
         yMRzLK6CYj++jrHtz2j/vw9yaS08bvJfn0tO+dGv+CpXYJYj7bA7A1uNQxs5irrU64PZ
         kZGMkY19lzz0H516TeC2JUV6Wiydm2o8iLP71Js3wnWSQJNeY9yhacaQK55enYZiOarL
         Mmeg==
X-Forwarded-Encrypted: i=1; AJvYcCX5hZ8irL15sOvQiuxavIjiVQJi9UZJe3RQrp2KNODqAfgUm4J+TqltL3uwW8UqUqMzlmT1HJa+ELSI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0U9ks8SZqMsaGtAaI/Wy3jO8+vVlyM3XTe26jGpbDbDZzHZJW
	CF5K+24rMhNo3aRI/u0v+o1IIA9CsE3s7SYGpDEoQQMgBCDBuiFL85IAVfXt56tav8T08xItx6N
	fV1U=
X-Google-Smtp-Source: AGHT+IFSaP/RvQU7G5tWbAclrgJaV7UMCMpdQF/+pCyV5GAOTHhtXOi+9GpNetCjRB/brf/Hu/+65Q==
X-Received: by 2002:a2e:9215:0:b0:2f3:f358:8657 with SMTP id 38308e7fff4ca-2fae10a6b58mr17865921fa.44.1727877531147;
        Wed, 02 Oct 2024 06:58:51 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c882405b19sm7577346a12.11.2024.10.02.06.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 06:58:50 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Wed, 02 Oct 2024 14:58:46 +0100
Subject: [PATCH v3 4/4] media: ov08x40: Add OF probe support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241002-b4-master-24-11-25-ov08x40-v3-4-483bcdcf8886@linaro.org>
References: <20241002-b4-master-24-11-25-ov08x40-v3-0-483bcdcf8886@linaro.org>
In-Reply-To: <20241002-b4-master-24-11-25-ov08x40-v3-0-483bcdcf8886@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Jason Chen <jason.z.chen@intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sergey Senozhatsky <senozhatsky@chromium.org>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-dedf8

The ACPI version of this driver "just works" on dts based systems with a
few extensions to facilitate.

- Add support for DT based probing
- Add support for taking the part out of reset via a GPIO reset pin
- Add in regulator bulk on/off logic for the power rails.

Once done this sensor works nicely on a Qualcomm X1E80100 CRD.

Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # x1e80100-crd
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/i2c/ov08x40.c | 138 +++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 124 insertions(+), 14 deletions(-)

diff --git a/drivers/media/i2c/ov08x40.c b/drivers/media/i2c/ov08x40.c
index 3ab8b51df157af78fcccc1aaef73aedb2ae759c9..821102287580acecd544402254cfe0fb5c8dc299 100644
--- a/drivers/media/i2c/ov08x40.c
+++ b/drivers/media/i2c/ov08x40.c
@@ -3,10 +3,13 @@
 
 #include <asm-generic/unaligned.h>
 #include <linux/acpi.h>
+#include <linux/clk.h>
 #include <linux/i2c.h>
+#include <linux/gpio/consumer.h>
 #include <linux/module.h>
 #include <linux/delay.h>
 #include <linux/pm_runtime.h>
+#include <linux/regulator/consumer.h>
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-device.h>
 #include <media/v4l2-fwnode.h>
@@ -1279,6 +1282,12 @@ static const struct ov08x40_mode supported_modes[] = {
 	},
 };
 
+static const char * const ov08x40_supply_names[] = {
+	"dovdd",	/* Digital I/O power */
+	"avdd",		/* Analog power */
+	"dvdd",		/* Digital core power */
+};
+
 struct ov08x40 {
 	struct v4l2_subdev sd;
 	struct media_pad pad;
@@ -1291,6 +1300,10 @@ struct ov08x40 {
 	struct v4l2_ctrl *hblank;
 	struct v4l2_ctrl *exposure;
 
+	struct clk		*xvclk;
+	struct gpio_desc	*reset_gpio;
+	struct regulator_bulk_data supplies[ARRAY_SIZE(ov08x40_supply_names)];
+
 	/* Current mode */
 	const struct ov08x40_mode *cur_mode;
 
@@ -1303,6 +1316,61 @@ struct ov08x40 {
 
 #define to_ov08x40(_sd)	container_of(_sd, struct ov08x40, sd)
 
+static int ov08x40_power_on(struct device *dev)
+{
+	struct v4l2_subdev *sd = dev_get_drvdata(dev);
+	struct ov08x40 *ov08x = to_ov08x40(sd);
+	int ret;
+
+	if (is_acpi_node(dev_fwnode(dev)))
+		return 0;
+
+	ret = clk_prepare_enable(ov08x->xvclk);
+	if (ret < 0) {
+		dev_err(dev, "failed to enable xvclk\n");
+		return ret;
+	}
+
+	if (ov08x->reset_gpio) {
+		gpiod_set_value_cansleep(ov08x->reset_gpio, 1);
+		usleep_range(1000, 2000);
+	}
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(ov08x40_supply_names),
+				    ov08x->supplies);
+	if (ret < 0) {
+		dev_err(dev, "failed to enable regulators\n");
+		goto disable_clk;
+	}
+
+	gpiod_set_value_cansleep(ov08x->reset_gpio, 0);
+	usleep_range(1500, 1800);
+
+	return 0;
+
+disable_clk:
+	gpiod_set_value_cansleep(ov08x->reset_gpio, 1);
+	clk_disable_unprepare(ov08x->xvclk);
+
+	return ret;
+}
+
+static int ov08x40_power_off(struct device *dev)
+{
+	struct v4l2_subdev *sd = dev_get_drvdata(dev);
+	struct ov08x40 *ov08x = to_ov08x40(sd);
+
+	if (is_acpi_node(dev_fwnode(dev)))
+		return 0;
+
+	gpiod_set_value_cansleep(ov08x->reset_gpio, 1);
+	regulator_bulk_disable(ARRAY_SIZE(ov08x40_supply_names),
+			       ov08x->supplies);
+	clk_disable_unprepare(ov08x->xvclk);
+
+	return 0;
+}
+
 /* Read registers up to 4 at a time */
 static int ov08x40_read_reg(struct ov08x40 *ov08x,
 			    u16 reg, u32 len, u32 *val)
@@ -2072,7 +2140,7 @@ static void ov08x40_free_controls(struct ov08x40 *ov08x)
 	mutex_destroy(&ov08x->mutex);
 }
 
-static int ov08x40_check_hwcfg(struct device *dev)
+static int ov08x40_check_hwcfg(struct ov08x40 *ov08x, struct device *dev)
 {
 	struct v4l2_fwnode_endpoint bus_cfg = {
 		.bus_type = V4L2_MBUS_CSI2_DPHY
@@ -2086,11 +2154,36 @@ static int ov08x40_check_hwcfg(struct device *dev)
 	if (!fwnode)
 		return -ENXIO;
 
-	ret = fwnode_property_read_u32(dev_fwnode(dev), "clock-frequency",
-				       &xvclk_rate);
-	if (ret) {
-		dev_err(dev, "can't get clock frequency");
-		return ret;
+	if (!is_acpi_node(fwnode)) {
+		ov08x->xvclk = devm_clk_get(dev, NULL);
+		if (IS_ERR(ov08x->xvclk)) {
+			dev_err(dev, "could not get xvclk clock (%pe)\n",
+				ov08x->xvclk);
+			return PTR_ERR(ov08x->xvclk);
+		}
+
+		xvclk_rate = clk_get_rate(ov08x->xvclk);
+
+		ov08x->reset_gpio = devm_gpiod_get_optional(dev, "reset",
+							    GPIOD_OUT_LOW);
+		if (IS_ERR(ov08x->reset_gpio))
+			return PTR_ERR(ov08x->reset_gpio);
+
+		for (i = 0; i < ARRAY_SIZE(ov08x40_supply_names); i++)
+			ov08x->supplies[i].supply = ov08x40_supply_names[i];
+
+		ret = devm_regulator_bulk_get(dev,
+					      ARRAY_SIZE(ov08x40_supply_names),
+					      ov08x->supplies);
+		if (ret)
+			return ret;
+	} else {
+		ret = fwnode_property_read_u32(dev_fwnode(dev), "clock-frequency",
+					       &xvclk_rate);
+		if (ret) {
+			dev_err(dev, "can't get clock frequency");
+			return ret;
+		}
 	}
 
 	if (xvclk_rate != OV08X40_XVCLK) {
@@ -2143,32 +2236,37 @@ static int ov08x40_check_hwcfg(struct device *dev)
 }
 
 static int ov08x40_probe(struct i2c_client *client)
-{
-	struct ov08x40 *ov08x;
+{	struct ov08x40 *ov08x;
 	int ret;
 	bool full_power;
 
+	ov08x = devm_kzalloc(&client->dev, sizeof(*ov08x), GFP_KERNEL);
+	if (!ov08x)
+		return -ENOMEM;
+
 	/* Check HW config */
-	ret = ov08x40_check_hwcfg(&client->dev);
+	ret = ov08x40_check_hwcfg(ov08x, &client->dev);
 	if (ret) {
 		dev_err(&client->dev, "failed to check hwcfg: %d", ret);
 		return ret;
 	}
 
-	ov08x = devm_kzalloc(&client->dev, sizeof(*ov08x), GFP_KERNEL);
-	if (!ov08x)
-		return -ENOMEM;
-
 	/* Initialize subdev */
 	v4l2_i2c_subdev_init(&ov08x->sd, client, &ov08x40_subdev_ops);
 
 	full_power = acpi_dev_state_d0(&client->dev);
 	if (full_power) {
+		ret = ov08x40_power_on(&client->dev);
+		if (ret) {
+			dev_err(&client->dev, "failed to power on\n");
+			return ret;
+		}
+
 		/* Check module identity */
 		ret = ov08x40_identify_module(ov08x);
 		if (ret) {
 			dev_err(&client->dev, "failed to find sensor: %d\n", ret);
-			return ret;
+			goto probe_power_off;
 		}
 	}
 
@@ -2210,6 +2308,9 @@ static int ov08x40_probe(struct i2c_client *client)
 error_handler_free:
 	ov08x40_free_controls(ov08x);
 
+probe_power_off:
+	ov08x40_power_off(&client->dev);
+
 	return ret;
 }
 
@@ -2224,6 +2325,8 @@ static void ov08x40_remove(struct i2c_client *client)
 
 	pm_runtime_disable(&client->dev);
 	pm_runtime_set_suspended(&client->dev);
+
+	ov08x40_power_off(&client->dev);
 }
 
 #ifdef CONFIG_ACPI
@@ -2235,10 +2338,17 @@ static const struct acpi_device_id ov08x40_acpi_ids[] = {
 MODULE_DEVICE_TABLE(acpi, ov08x40_acpi_ids);
 #endif
 
+static const struct of_device_id ov08x40_of_match[] = {
+	{ .compatible = "ovti,ov08x40" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, ov08x40_of_match);
+
 static struct i2c_driver ov08x40_i2c_driver = {
 	.driver = {
 		.name = "ov08x40",
 		.acpi_match_table = ACPI_PTR(ov08x40_acpi_ids),
+		.of_match_table = ov08x40_of_match,
 	},
 	.probe = ov08x40_probe,
 	.remove = ov08x40_remove,

-- 
2.46.2


