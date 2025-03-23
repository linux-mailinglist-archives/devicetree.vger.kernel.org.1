Return-Path: <devicetree+bounces-159952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C76A8A6D1D2
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:41:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 70454188C6DD
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:41:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4676F1D2F42;
	Sun, 23 Mar 2025 22:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d29kBB7C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF8B1E8325
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769584; cv=none; b=roIObcJvH+GyXyBCCVfNhWiEUTm7ESxOlvIuqAFxdBoGu627w1J6/aDnUXEXXCLLXbDc7PLJY0XNFVvBuN+B8usazTneLXkjz0oyG7tlRVJpFsgzUxJJuy9+6cmcfsCvA3gjboNuhZo7fdluwG5/ChjytT2ad7jbg+1/KoeT9uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769584; c=relaxed/simple;
	bh=fW8fGdBIj01Ce5nYKYOtr5RzqfYdqbt2xVnIKMnonN0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F5qIcVJs3tXaOXWsVEV2jUmE3HMnGXQZ8L5ldsIa1Mxj/XmIX99Vkd9nH7g+xdX+jWEHtUOngw5mXy9tDF5s5mGoy38sXwgg/kJzKmOqUVxlvSZD5sszNI8F2QpovX5mvSOZBreQJnGswq6kCdJWw2r23e4eJyMcR27exU6+Ut8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d29kBB7C; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ac29af3382dso635621866b.2
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769575; x=1743374375; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=66I6A9BwKPx78r+x2ze+D3BdpB1AaTqz42y1bAQYxGU=;
        b=d29kBB7CUsXeKyp2ri3yZaOZ/ombMpQc5JXyAyIdzCvPla2rksYIx2WUPRSDvTeX6g
         4FOpBEVwQ8I/DXrh6dkih3Ln4hvzKzaUUZy6ODpe/sJxVptogR5MS7Ct58NnKiFOlyze
         DXmb1qarJ29lSMNrptogUsvB9nBHUfyiga7xQQ+Ovj12sCs+bRme5fpI8RHT+i+Dnt+R
         fSG1fKK7t/bPR2i6ZNM9AXJoAbKM5LY8jxBI9B5jQyKJndIq8wAV5cvuetvD9na5+TCi
         yaMz70Y6ghIcdBCUMLDaoeMMTbRPTZJuZ2RYUUHn/mNGsslg+4u+kY5xZoV6hZd2x4I9
         +iRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769575; x=1743374375;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=66I6A9BwKPx78r+x2ze+D3BdpB1AaTqz42y1bAQYxGU=;
        b=etJfAXOTFy+Hus29MGpiIP5Ju5HP+o2I1akAkFEnRncYOLaoi0GSLi9HaCOHHizj4k
         MXMnBTaEzcOqBced2EBwuGYPg9SMG5ScL50i5iu1GJ3xxxPX3PrjOpt+bVBDcMdUSBkv
         /6ct7Jfo0wcl7Y6fdpJXHxwJwHj0MfJwfcpRGTBjfE88E2aK5+a6eaKHm7SFWINV4WCK
         hqMiX/Z0dCp+FBLx3UWl9uAos2VWCUDf1y2WHv5qCICRY51troTVrXPeK557dPgg/d3P
         0P8XIF7EgHRAAv1wZ7MZAUqOVZsVVryJFOuYomCW2lO/0v2bjEiwJpotrY5mh+t5adNh
         iS9w==
X-Forwarded-Encrypted: i=1; AJvYcCVghZrxG4erj5fKWZ0f4bgL3cLfLbc2hAeRDGJliixWRwnjmQyjmjfn/SvXdtvUaO4tsIM8jpus73Aq@vger.kernel.org
X-Gm-Message-State: AOJu0YwLRY8LEkg3WwAwvN9Z+C42IINAtjSEHbVjgLX4qsPDfViKp2r1
	JoDP5DTcu8ksspycXVkRrw/IF4rt9SmCRaMxGNzCocbeGpcO+K85seEaWjjrI0k=
X-Gm-Gg: ASbGnctBeD9wxTJy6pm4p3Pam8OGSzgifcc/ccK8/UWJ3ZlmVTvemuUEinonqUHZkST
	3cEtp5C0VBPQQocmbJLpBYhR/tH0XgbhWParop9mp9v0Epvkw8hK/6wjpoeAoDthpjL8DcwdoPl
	oxDJY9QLuUdcHV4CfDSCokLJEqcHvS7vMbwzfyFJ8GtpnPsmTqyBCuNjXRumBK1kdtJfu0eCQoS
	/ECQ26h4wLPQXssF4uiVJjLrH7mQVDPPuh8FlK1otZvEtIf6Xtixue0xksayRyco1M7X+yJ8BVh
	LsWc8QsRZLy+pIkLjcBhoQYxXZ600RvBXFXnQci1xrhjcs4rcMaHn/p0fq2rrUiS+o2tUXW2ICV
	N4elzI8uR/VRAT8HXZfttSsFmHGHj
X-Google-Smtp-Source: AGHT+IFOl2n2dt4259UO9Y2Hc/nB/vtxXxb3XEltGi4hCBG4hgPGKnJT2FEY0IZG076qDEvYKYdc8w==
X-Received: by 2002:a17:907:7f0c:b0:ac3:c4a9:7f89 with SMTP id a640c23a62f3a-ac3f251f2a0mr846621366b.54.1742769575429;
        Sun, 23 Mar 2025 15:39:35 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:35 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:36 +0000
Subject: [PATCH 20/34] mfd: sec: rework platform data and regmap
 instantiating
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-20-d08943702707@linaro.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
In-Reply-To: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Instead of a large open-coded switch statement, just add both regmap
config and device type to the OF match data. This allows us to have all
related information in one place, and avoids a long switch() statement.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-i2c.c | 137 +++++++++++++++++++++++++-------------------------
 1 file changed, 68 insertions(+), 69 deletions(-)

diff --git a/drivers/mfd/sec-i2c.c b/drivers/mfd/sec-i2c.c
index 1bdd6ea36fcd9f56ea5ec1159a87723f4c09a0bd..9f33d4569cf73461c57d101f6ca1cf2b75f22b4d 100644
--- a/drivers/mfd/sec-i2c.c
+++ b/drivers/mfd/sec-i2c.c
@@ -20,11 +20,16 @@
 #include <linux/mfd/samsung/s5m8767.h>
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
-#include <linux/of.h>
 #include <linux/pm.h>
+#include <linux/property.h>
 #include <linux/regmap.h>
 #include "sec-core.h"
 
+struct sec_pmic_i2c_platform_data {
+	const struct regmap_config *regmap_cfg;
+	unsigned long device_type;
+};
+
 static bool s2mpa01_volatile(struct device *dev, unsigned int reg)
 {
 	switch (reg) {
@@ -153,55 +158,23 @@ sec_pmic_i2c_parse_dt_pdata(struct device *dev,
 
 static int sec_pmic_i2c_probe(struct i2c_client *client)
 {
+	const struct sec_pmic_i2c_platform_data *pdata;
 	struct sec_pmic_probe_data probedata;
-	const struct regmap_config *regmap;
-	unsigned long device_type;
 	struct regmap *regmap_pmic;
 
-	sec_pmic_i2c_parse_dt_pdata(&client->dev, &probedata);
-
-	device_type = (unsigned long)of_device_get_match_data(&client->dev);
-
-	switch (device_type) {
-	case S2DOS05:
-		regmap = &s2dos05_regmap_config;
-		break;
-	case S2MPA01:
-		regmap = &s2mpa01_regmap_config;
-		break;
-	case S2MPS11X:
-		regmap = &s2mps11_regmap_config;
-		break;
-	case S2MPS13X:
-		regmap = &s2mps13_regmap_config;
-		break;
-	case S2MPS14X:
-		regmap = &s2mps14_regmap_config;
-		break;
-	case S2MPS15X:
-		regmap = &s2mps15_regmap_config;
-		break;
-	case S2MPU02:
-		regmap = &s2mpu02_regmap_config;
-		break;
-	case S2MPU05:
-		regmap = &s2mpu05_regmap_config;
-		break;
-	case S5M8767X:
-		regmap = &s5m8767_regmap_config;
-		break;
-	default:
+	pdata = device_get_match_data(&client->dev);
+	if (!pdata)
 		return dev_err_probe(&client->dev, -ENODEV,
-				     "Unsupported device type %lu\n",
-				     device_type);
-	}
+				     "Unsupported device type\n");
 
-	regmap_pmic = devm_regmap_init_i2c(client, regmap);
+	sec_pmic_i2c_parse_dt_pdata(&client->dev, &probedata);
+
+	regmap_pmic = devm_regmap_init_i2c(client, pdata->regmap_cfg);
 	if (IS_ERR(regmap_pmic))
 		return dev_err_probe(&client->dev, PTR_ERR(regmap_pmic),
 				     "regmap init failed\n");
 
-	return sec_pmic_probe(&client->dev, device_type, client->irq,
+	return sec_pmic_probe(&client->dev, pdata->device_type, client->irq,
 			      regmap_pmic, &probedata, client);
 }
 
@@ -210,35 +183,61 @@ static void sec_pmic_i2c_shutdown(struct i2c_client *i2c)
 	sec_pmic_shutdown(&i2c->dev);
 }
 
+static const struct sec_pmic_i2c_platform_data s2dos05_data = {
+	.regmap_cfg = &s2dos05_regmap_config,
+	.device_type = S2DOS05
+};
+
+static const struct sec_pmic_i2c_platform_data s2mpa01_data = {
+	.regmap_cfg = &s2mpa01_regmap_config,
+	.device_type = S2MPA01,
+};
+
+static const struct sec_pmic_i2c_platform_data s2mps11_data = {
+	.regmap_cfg = &s2mps11_regmap_config,
+	.device_type = S2MPS11X,
+};
+
+static const struct sec_pmic_i2c_platform_data s2mps13_data = {
+	.regmap_cfg = &s2mps13_regmap_config,
+	.device_type = S2MPS13X,
+};
+
+static const struct sec_pmic_i2c_platform_data s2mps14_data = {
+	.regmap_cfg = &s2mps14_regmap_config,
+	.device_type = S2MPS14X,
+};
+
+static const struct sec_pmic_i2c_platform_data s2mps15_data = {
+	.regmap_cfg = &s2mps15_regmap_config,
+	.device_type = S2MPS15X,
+};
+
+static const struct sec_pmic_i2c_platform_data s2mpu02_data = {
+	.regmap_cfg = &s2mpu02_regmap_config,
+	.device_type = S2MPU02,
+};
+
+static const struct sec_pmic_i2c_platform_data s2mpu05_data = {
+	.regmap_cfg = &s2mpu05_regmap_config,
+	.device_type = S2MPU05,
+};
+
+static const struct sec_pmic_i2c_platform_data s5m8767_data = {
+	.regmap_cfg = &s5m8767_regmap_config,
+	.device_type = S5M8767X,
+};
+
 static const struct of_device_id sec_pmic_i2c_of_match[] = {
-	{
-		.compatible = "samsung,s2dos05",
-		.data = (void *)S2DOS05,
-	}, {
-		.compatible = "samsung,s2mpa01-pmic",
-		.data = (void *)S2MPA01,
-	}, {
-		.compatible = "samsung,s2mps11-pmic",
-		.data = (void *)S2MPS11X,
-	}, {
-		.compatible = "samsung,s2mps13-pmic",
-		.data = (void *)S2MPS13X,
-	}, {
-		.compatible = "samsung,s2mps14-pmic",
-		.data = (void *)S2MPS14X,
-	}, {
-		.compatible = "samsung,s2mps15-pmic",
-		.data = (void *)S2MPS15X,
-	}, {
-		.compatible = "samsung,s2mpu02-pmic",
-		.data = (void *)S2MPU02,
-	}, {
-		.compatible = "samsung,s2mpu05-pmic",
-		.data = (void *)S2MPU05,
-	}, {
-		.compatible = "samsung,s5m8767-pmic",
-		.data = (void *)S5M8767X,
-	},
+	{ .compatible = "samsung,s2dos05", .data = &s2dos05_data, },
+	{ .compatible = "samsung,s2mpa01-pmic", .data = &s2mpa01_data, },
+	{ .compatible = "samsung,s2mps11-pmic", .data = &s2mps11_data, },
+	{ .compatible = "samsung,s2mps13-pmic", .data = &s2mps13_data, },
+	{ .compatible = "samsung,s2mps14-pmic", .data = &s2mps15_data, },
+	{ .compatible = "samsung,s2mps15-pmic", .data = &s2mps15_data, },
+	{ .compatible = "samsung,s2mpu02-pmic", .data = &s2mpu02_data, },
+	{ .compatible = "samsung,s2mpu05-pmic", .data = &s2mpu05_data, },
+	{ .compatible = "samsung,s5m8767-pmic", .data = &s5m8767_data, },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, sec_pmic_i2c_of_match);

-- 
2.49.0.395.g12beb8f557-goog


