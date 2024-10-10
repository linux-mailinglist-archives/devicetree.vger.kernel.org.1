Return-Path: <devicetree+bounces-109895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 830BA998621
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 14:34:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EABE8B23C1A
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 12:34:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E82B61C9B8F;
	Thu, 10 Oct 2024 12:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SM97DiMr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68461C8317
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 12:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728563608; cv=none; b=kFcPQ4A7c28EbiA+Q+vnn+B1mr3AMjNhEJCJNy24PdxKeK5xcycTBLgGEbB06TF+iamfm97fgken7G8fVIwGKgo67TYeg1QhL+xGbzFIu6rF5z814GWT9Zcqjv6WOtFLkDYFFKsaTwQklRteYTj8TxQFP5PdSF+a3GJ/jEGWHB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728563608; c=relaxed/simple;
	bh=MZdA/sRLAsmvUPZP3TphhP3dJzkLom00eAxDcabblxk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QIbTzbXl/dQWy8QFCKp/1On/1xT0djxMShDWowunUrqwepEINBBYZI9ZSbIXhTB0shi8JwNXdZc3sKLoBXuc4QGrZt7D20DiKs2QxROSakL8VW+Ag1be1z6OtoNyqVy+GyBJo77tZsJzzTodiaQwMw50N3uUawKlTiw4RygZuyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SM97DiMr; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a93c1cc74fdso147596566b.3
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 05:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728563604; x=1729168404; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pseR3SnwJF/ltwSCthgN9v3QXyD9/cz3sKkOTqoReDs=;
        b=SM97DiMrnC83JeUIKj9RF1EU1iNcSYc3E//vBWdPPgjA/1zvakx9tEc3HNhCPIpj3d
         hKbrsqSoPDAgE2KwcsGiF3rkaPdvpPvZ/QetAfunH7PLArJrWtBgTLCxmPirL5tcBSBK
         8XlwyPDzVsLZWn99v2VCHyPN2ze7pwgFdPgZfOGsRfmdTWCpgBEvG0xOIDVQBxVo/CGO
         FBwQhIPvDEFuubctGrGlb2ZN5QxdTOANuM0mIy9e4aAta6Y766q7TqE7lpgy6IrFWd5o
         t4GOXTLkS/61t+tvNGas81blbxvcKX1hSjHJ3taAAy2ApDFkPGqzn/cJsGjje+NDqLdG
         Z5vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728563604; x=1729168404;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pseR3SnwJF/ltwSCthgN9v3QXyD9/cz3sKkOTqoReDs=;
        b=JdAVet/2Hq9qfVF5Q79X+lbWlsUEwKsE3PBg+89h+dkHn6WEHXeycQ3+cogQ2Zhs6o
         iPUkSXuyiGCZrM9VBfMrOPy77wtnvNLf7OOuRsfK3YccczyPiodsVhpYhgOHZKHPQTMP
         6tdbU62hw1L0XaKinP3NO/Xnp1mewjOdXiXpT5w9nJBjxYgm89IL1N4uwYP75JHhlM0e
         x3X4SvO2LBKieyyf3kav4sU8REXRt86azWrHfaC34vDkfoF+gbypTL8hwTtyqMHEWfYt
         /NYkjBFGQ+kx5oRlMRVnJks9DdIZ8/37bEO3PX+abI26mf1vNlj4O8zJlsPeQJeNHR47
         t2xw==
X-Forwarded-Encrypted: i=1; AJvYcCVQaGXtfCq0gND8aZf9wi6bBTzjz0RP9F48EGxDRAsXux7ChLD6o/HAoy5qkyHDqLWl5/NXgw5SOPpw@vger.kernel.org
X-Gm-Message-State: AOJu0YybLooZeJmRXQwhCDcnQZn/MqHXlpqGUkpZ4iP/7F/4xS82wNej
	nH16B2gwoIFQuAT5ngD+J8gl8FKjQGc1xF76bfoKNTeEdEB3XFP4Y4TtEKATOwn5iCvAwO2dXsz
	0sKY=
X-Google-Smtp-Source: AGHT+IGsEAwOniVhOvr2BEUkHjs15aSsr0j0fhFXCgyZqFO3bbPu9rpUCfEpdMrHQ3cxSH31yKbA/A==
X-Received: by 2002:a17:907:940f:b0:a99:375f:4523 with SMTP id a640c23a62f3a-a998d32b90bmr588588766b.44.1728563604259;
        Thu, 10 Oct 2024 05:33:24 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a80c0723sm82416666b.135.2024.10.10.05.33.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 05:33:23 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 10 Oct 2024 13:33:20 +0100
Subject: [PATCH v6 4/4] media: ov08x40: Add OF probe support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241010-b4-master-24-11-25-ov08x40-v6-4-cf966e34e685@linaro.org>
References: <20241010-b4-master-24-11-25-ov08x40-v6-0-cf966e34e685@linaro.org>
In-Reply-To: <20241010-b4-master-24-11-25-ov08x40-v6-0-cf966e34e685@linaro.org>
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
 drivers/media/i2c/ov08x40.c | 140 +++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 125 insertions(+), 15 deletions(-)

diff --git a/drivers/media/i2c/ov08x40.c b/drivers/media/i2c/ov08x40.c
index 3ab8b51df157af78fcccc1aaef73aedb2ae759c9..ff17e09a1f96175d598c395bcae0cdf01d68a79f 100644
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
 
@@ -2177,7 +2275,7 @@ static int ov08x40_probe(struct i2c_client *client)
 
 	ret = ov08x40_init_controls(ov08x);
 	if (ret)
-		return ret;
+		goto probe_power_off;
 
 	/* Initialize subdev */
 	ov08x->sd.internal_ops = &ov08x40_internal_ops;
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


