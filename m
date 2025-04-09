Return-Path: <devicetree+bounces-165028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E14C7A8324C
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:39:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF8DF1B62D93
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D759F221702;
	Wed,  9 Apr 2025 20:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JUskW0xN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76057215F4B
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231073; cv=none; b=szs4UC3+2mP4GXyKmU7/9pwVg7G3lflIL9DC+D99JKeqcvHIakskcSvZfym51qIMXniKaU8zOnmb2/V+8NvVuYNYHxAnpiUIq8Rp/b7P4jjAD/r99ebacIYdpr2m0DXyHv+94xzKCHypfFytX+orGa/Aiob0RN2il/V9XwGFSCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231073; c=relaxed/simple;
	bh=W4s100yFl52kQPJvrE88DOF1vm0fVLWyudBdnMinRnE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dh/W4ViBa39ohnF43GIt3iOMKmsQa0B6ZLc4i7z+QgiiEqUsT0mE0Cu/DN4W8Ydvut7clzmF7sS0OmmxnXd5PnBCz4hxzsbvrwmLP334PDOUG35OPYdF6g33eZf3ywf5kQtq/4K6jN0jTh4HPuwEGKHpovd+Zmw1ogUb11IQcZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JUskW0xN; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ac289147833so19077966b.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231058; x=1744835858; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UWLP4HLc4UA2Mdu/pVqh9n9FuWQ3oivZb2FxzUkaJvg=;
        b=JUskW0xND7cAbtwDazw+s7RU2qA6mParqJ8l8zi9jEgyBIHkNNGNxnDKlrKzVjgv9+
         EuPjzeac+3e3XDEjno/IBZMrdhBFd66pKWStKqoWWyosLqg+VA49QQOUcjHh4pQ4Y4vT
         4WJ23BRM4UFvhbzrYPQgCAbxdghpnXoM/+YQ5UbG6nniEGn3aqKdR3Md0X4BDMpOOm2r
         gXnCsr/YLpVxf5MkesY6bbm2U1dKE+sChDzqA9LeCpt1woJ8xGu/+5zji8fiHTcZS9ql
         AR56h4Mxm3c7bOi+wFkjezYLWS5gERmaFOdFMW43TNo0A02gXu0cKPdDt5A7wUp11C/+
         +UpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231058; x=1744835858;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UWLP4HLc4UA2Mdu/pVqh9n9FuWQ3oivZb2FxzUkaJvg=;
        b=pOTbS48of6ujOUKevGoJMkaWRPvg/aqBVKy98++zJSEwKtqOyza94/Et3zJ+6UnV7t
         pi6HKBFiYuw9EkA7tUm6IY0T4pImP2TSAiuF1ry4/bwRAsC8kAeDhyA+MmtX6+rvX3wd
         XN30Ia5FXcZYCXor2YVzTbXV1skiJmJhDkcFBEKi+dDexcxh6gjCUoaRtjdz/Fysz1hs
         l8gWwGqtaSQO5ufmOkNROGQtaCpASH7u4kZP7udB9lWabBMAzmsEe+31vxum8nW3vfV4
         Jh7bsgL0RzdYiYoQblSqj75MAVGsDv8nikpU1ek21tKgxVum5Wqx8bisu3qlz+NYIpwH
         MMOA==
X-Forwarded-Encrypted: i=1; AJvYcCWjK+8UblqxHa+rVKTsSeGSJsZKY8VVmWiIcjmJMb34CWGf/Po/tJ9S/GsG1B/wmMWp9KMyNZi6kYP2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy14tSM5FO/pxwXeQTxBFtIUdV/XHXIx3E/kgJ2e+fYF2wi6Nb2
	YdI+t+StB1PKhb+z4Qp87mSEc6adGYOy+8QhhG1GyrAVW/M4Xs1ymsUajB8aHzI=
X-Gm-Gg: ASbGncsOdqIY+IABmBCLDT9ZfKzhY9Q4mN23dQnytUZTT/W5u2K+oZzssLeE63QPNmi
	1pGnhmAiGLiJSPRhL+ANIiGEDhWov87rsleL73QHzG3C+/SeRwO9lIBwW0jgxE5Y8fgcIQVWIqu
	6oLw9JMhITbvT8qvzP8CyIG534raK9Glbv74/dcB08lLfjSxNNQoHmgrrCiohpIEywFdfD+wHdA
	2szLDQAoRbYTx4ND/3ulaoeNB/LCDQ36/Kl4u6W3giD5NEDd0tvsRNIt94Npv30M9SJNSXlpBK/
	NX9NubNp0+5vOroh12gzG0O4zGjqIC1Zh4IDSoIpzm1iGjO+TiwwdqAhYiUBm6IdT+Q4DQww50Q
	dTBlHG7JM5maYF9C5vwtD6KSddRE=
X-Google-Smtp-Source: AGHT+IHOV/1MZhdPuVZA1g3x1ax7OdrN436ASrU1pnao8gKn9m3hB99bG/q0F2E9xqZW861rUz2aXg==
X-Received: by 2002:a17:907:9496:b0:ac3:b50c:c95b with SMTP id a640c23a62f3a-acabd4d7f0amr7061266b.56.1744231058355;
        Wed, 09 Apr 2025 13:37:38 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:37 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:38 +0100
Subject: [PATCH v4 17/32] mfd: sec-i2c: Rework platform data and regmap
 instantiating
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-17-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
In-Reply-To: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

Instead of a large open-coded switch statement, just add both regmap
config and device type to the OF match data. This allows us to have all
related information in one place, and avoids a long switch() statement.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v2: fix typo in platform data for "samsung,s2mps14-pmic"
---
 drivers/mfd/sec-i2c.c | 133 +++++++++++++++++++++++++-------------------------
 1 file changed, 66 insertions(+), 67 deletions(-)

diff --git a/drivers/mfd/sec-i2c.c b/drivers/mfd/sec-i2c.c
index 81f90003eea2a40f2caaebb49fc9494b89370e7f..41b09f5e3c49f410604a5d47e625cbb37d7f5fa2 100644
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
@@ -136,52 +141,20 @@ static const struct regmap_config s5m8767_regmap_config = {
 
 static int sec_pmic_i2c_probe(struct i2c_client *client)
 {
-	const struct regmap_config *regmap;
-	unsigned long device_type;
+	const struct sec_pmic_i2c_platform_data *pdata;
 	struct regmap *regmap_pmic;
 
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
+	regmap_pmic = devm_regmap_init_i2c(client, pdata->regmap_cfg);
 	if (IS_ERR(regmap_pmic))
 		return dev_err_probe(&client->dev, PTR_ERR(regmap_pmic),
 				     "regmap init failed\n");
 
-	return sec_pmic_probe(&client->dev, device_type, client->irq,
+	return sec_pmic_probe(&client->dev, pdata->device_type, client->irq,
 			      regmap_pmic, client);
 }
 
@@ -190,35 +163,61 @@ static void sec_pmic_i2c_shutdown(struct i2c_client *i2c)
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
+	{ .compatible = "samsung,s2mps14-pmic", .data = &s2mps14_data, },
+	{ .compatible = "samsung,s2mps15-pmic", .data = &s2mps15_data, },
+	{ .compatible = "samsung,s2mpu02-pmic", .data = &s2mpu02_data, },
+	{ .compatible = "samsung,s2mpu05-pmic", .data = &s2mpu05_data, },
+	{ .compatible = "samsung,s5m8767-pmic", .data = &s5m8767_data, },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, sec_pmic_i2c_of_match);

-- 
2.49.0.604.gff1f9ca942-goog


