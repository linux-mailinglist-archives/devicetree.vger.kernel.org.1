Return-Path: <devicetree+bounces-249842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D5357CDFBE5
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 13:47:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9EFC0304C16A
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 12:43:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C2B63314D1;
	Sat, 27 Dec 2025 12:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VtG3zIUO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C7E330B15
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 12:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766838287; cv=none; b=suGza2OenUWhjfXDt4gPYciDj+13Dcw+kSkjLR0WSk8RRT/xU6zqPFOKqM8A9sHO2miyEt2Ft8TUBsdlv9HI3FvDCs0rKDUf54dWQWq3XBAL+S3YbIUqvqjU62jlolB9uFtuzKplFwDmF+rw7odKgFv6SBUbvZ4E5fAoXs+EujY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766838287; c=relaxed/simple;
	bh=gcmMj0lW5ijk42JS1tB+r6D2gRIG50rpU99wl7DZYkU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T2aZBb6ILX6Pf5Z3D2Fg0UDU9Hjpl5qLGaCyX/x5WR0Q0r7ddHwwgvXzCYolE1HaW64QYUr6CEpbIIXMzbQjDrVIqD1Wz2aQq5SCNb+b7/9V5RrDYMwAylzCBc6p91t8qSUK9G//viwd2iHpfL6UmMXDdqI/Pr5kjFFvbEGEIb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VtG3zIUO; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-64b92abe63aso12645393a12.0
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 04:24:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766838277; x=1767443077; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eNIKQi6FypzlBSQpep9GNEuVSqSkRmoCXE/UOfNk9wU=;
        b=VtG3zIUOypfrUk1CaQsF6pzeuW4feyPaItKvO3yoFzyppD6JCWL4Fru4ty/x19n2zN
         Mr61FrAPuAVoqxvONwwKZwN0JnEpoIPSxZxw9nUDUuIxYUz2Otz6Psd4kcKH+HArfCjx
         9sV7kKkLEyJY1gbIICdqbskpwjv3BoIAh/y7bPg7ZKyf1ARLjYSK7ooQAwFSkWFPu+Jb
         apXV46L9fSGrSMAp02YNFPZ/DkokO1BEwRMB3UtO7X75Ba526l7cp9BJAjBwignZnKVL
         XxJm5GnBFsGmnTjRIF+EfjXK9FWAHeu8Ii08+tcb9vTEdjtUWJgxIAWwGRRgn+a085sy
         H5tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766838277; x=1767443077;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eNIKQi6FypzlBSQpep9GNEuVSqSkRmoCXE/UOfNk9wU=;
        b=SavBMCYbTuWacQyRE3JKS1MgOGXXcR4E8RHMbSlVNPD68ZKNqdhMG9myfyJc5gcept
         Bl5hY6YwDiC859I0FJGMBUdwH7WVUBw9IXlPA2OLjPhWpW7HaEGNHzDVMomVtXt8gP8M
         jsxWKBHVq9PB9juCLGTxQCvv0HddVhk5HasQa5cN5RbLAifZRlZcvcRgvGUMe8Zt7Dpb
         cd4mDPS81zGnVzjOTTlG2jr+kYOJhtjmIz1KVC9WIWSz3w9W+agA/5ZI9WnA1cAmQldW
         Z4aGqtg9Nb1750/qCR8wg4c63c5nPjZ/Si/4Tjim+GSYQvXIsRQerOGjaVHg1d+ngGKm
         OWvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpkdClW/QvsdSbSoAY0l1RbHN42KcAtxjg6SSfRssNzqru8APMv64BvEV+xbGZYpKKAbKCSZtw0Cp8@vger.kernel.org
X-Gm-Message-State: AOJu0YyT0S1JKJEMeW8tVjJpRFFk5FVGDqnszQh5MMlVN/82DxhFW3fN
	q6sykkJ8FQpPCfrseZUchP3EkgS1nrkT38PeZX0t+LRz4VM6LJo/Edq+xwRALnXmFz8=
X-Gm-Gg: AY/fxX5cIXdL6d7/Sucm1PeAGE0pWTtmPNNTxdvdlCJfSJ9GvQQETHLzsLvgj1Aqxt1
	906f6lislmhRCtAj/ydpY1qTYn4UZNfTzc2849cZ0lHl21jNlUlSwVznak3r6pkR+EgxUMvMJJx
	Yuxv6vzeoD5WhZhoOJuJy0edMZT/86u7eRpAz6bCczQXS63PLwLtlUgzF+H+JQOm0hEmQFwwecr
	QXg4NtaRHLY18JMjwfZeU7kJACYk9scc7a9Y4uFHy6LDVTyB4M5OjJUiv3bpAcX0lugOsOhhp0H
	H0QM2GNlvhvKfpls7KhyUXumIYS6ssuyKzV83i3oOGem0uw+UvqguW4nIfgyAW1G18B/lbDZeyR
	Qn8KTFLc2/eSNxEWY5gbn0RkHQb7belh8EK5Gk1LtQKoGOqKcwH3mXI/O1dcgghPDPpzdqkfcHp
	APQKn+ELsG6R6ccqr9Y/rsgGitomcbi+VVEhvdu1/ZGtRo34SEJDXksdOWgEgvEGS46OYndZZ1S
	PoWFA==
X-Google-Smtp-Source: AGHT+IGqWTGCZOPY2JQdi50khJ1KN4h2RSLhajLM1rIsDEEW0RykHTL4Lf3cTVEpMQkeptRnlkYXCA==
X-Received: by 2002:a05:6402:1454:b0:649:b492:70b1 with SMTP id 4fb4d7f45d1cf-64b8e2a6fb8mr27864621a12.0.1766838276650;
        Sat, 27 Dec 2025 04:24:36 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm25932659a12.31.2025.12.27.04.24.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 04:24:36 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sat, 27 Dec 2025 12:24:37 +0000
Subject: [PATCH v5 15/21] regulator: s2mps11: refactor handling of external
 rail control
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251227-s2mpg1x-regulators-v5-15-0c04b360b4c9@linaro.org>
References: <20251227-s2mpg1x-regulators-v5-0-0c04b360b4c9@linaro.org>
In-Reply-To: <20251227-s2mpg1x-regulators-v5-0-0c04b360b4c9@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Refactor s2mps14_pmic_enable_ext_control() and s2mps11_of_parse_cb()
slightly as a preparation for adding S2MPG10 and S2MPG11 support, as
both of those PMICs also support control of rails via GPIOs.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/regulator/s2mps11.c | 86 ++++++++++++++++++++++++++++++---------------
 1 file changed, 57 insertions(+), 29 deletions(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index 88e21c90832a45547e5791b15cd1de274f81fed6..bb0a4f35ef47551f7171321fdde2c0202ce86ede 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -328,27 +328,13 @@ static int s2mps11_regulator_set_suspend_disable(struct regulator_dev *rdev)
 				  rdev->desc->enable_mask, state);
 }
 
-static int s2mps11_of_parse_cb(struct device_node *np,
-			       const struct regulator_desc *desc,
-			       struct regulator_config *config)
+static int s2mps11_of_parse_gpiod(struct device_node *np,
+				  const struct regulator_desc *desc,
+				  struct regulator_config *config)
 {
-	const struct s2mps11_info *s2mps11 = config->driver_data;
 	struct gpio_desc *ena_gpiod;
 	int ret;
 
-	if (s2mps11->dev_type == S2MPS14X)
-		switch (desc->id) {
-		case S2MPS14_LDO10:
-		case S2MPS14_LDO11:
-		case S2MPS14_LDO12:
-			break;
-
-		default:
-			return 0;
-		}
-	else
-		return 0;
-
 	ena_gpiod = fwnode_gpiod_get_index(of_fwnode_handle(np),
 					   "samsung,ext-control", 0,
 					   GPIOD_OUT_HIGH |
@@ -380,6 +366,28 @@ static int s2mps11_of_parse_cb(struct device_node *np,
 	return 0;
 }
 
+static int s2mps11_of_parse_cb(struct device_node *np,
+			       const struct regulator_desc *desc,
+			       struct regulator_config *config)
+{
+	const struct s2mps11_info *s2mps11 = config->driver_data;
+
+	if (s2mps11->dev_type == S2MPS14X)
+		switch (desc->id) {
+		case S2MPS14_LDO10:
+		case S2MPS14_LDO11:
+		case S2MPS14_LDO12:
+			break;
+
+		default:
+			return 0;
+		}
+	else
+		return 0;
+
+	return s2mps11_of_parse_gpiod(np, desc, config);
+}
+
 static const struct regulator_ops s2mps11_ldo_ops = {
 	.list_voltage		= regulator_list_voltage_linear,
 	.map_voltage		= regulator_map_voltage_linear,
@@ -903,10 +911,16 @@ static const struct regulator_desc s2mps15_regulators[] = {
 };
 
 static int s2mps14_pmic_enable_ext_control(struct s2mps11_info *s2mps11,
-		struct regulator_dev *rdev)
+					   struct regulator_dev *rdev)
 {
-	return regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
-			rdev->desc->enable_mask, S2MPS14_ENABLE_EXT_CONTROL);
+	int ret = regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
+				     rdev->desc->enable_mask,
+				     S2MPS14_ENABLE_EXT_CONTROL);
+	if (ret < 0)
+		return dev_err_probe(rdev_get_dev(rdev), ret,
+				     "failed to enable GPIO control over %d/%s\n",
+				     rdev->desc->id, rdev->desc->name);
+	return 0;
 }
 
 static int s2mpu02_set_ramp_delay(struct regulator_dev *rdev, int ramp_delay)
@@ -1244,6 +1258,26 @@ static const struct regulator_desc s2mpu05_regulators[] = {
 	regulator_desc_s2mpu05_buck45(5),
 };
 
+static int s2mps11_handle_ext_control(struct s2mps11_info *s2mps11,
+				      struct regulator_dev *rdev)
+{
+	int ret;
+
+	switch (s2mps11->dev_type) {
+	case S2MPS14X:
+		if (!rdev->ena_pin)
+			return 0;
+
+		ret = s2mps14_pmic_enable_ext_control(s2mps11, rdev);
+		break;
+
+	default:
+		return 0;
+	}
+
+	return ret;
+}
+
 static int s2mps11_pmic_probe(struct platform_device *pdev)
 {
 	struct sec_pmic_dev *iodev = dev_get_drvdata(pdev->dev.parent);
@@ -1314,15 +1348,9 @@ static int s2mps11_pmic_probe(struct platform_device *pdev)
 					     regulators[i].id,
 					     regulators[i].name);
 
-		if (regulator->ena_pin) {
-			ret = s2mps14_pmic_enable_ext_control(s2mps11,
-							      regulator);
-			if (ret < 0)
-				return dev_err_probe(&pdev->dev, ret,
-						     "failed to enable GPIO control over %d/%s\n",
-						     regulator->desc->id,
-						     regulator->desc->name);
-		}
+		ret = s2mps11_handle_ext_control(s2mps11, regulator);
+		if (ret < 0)
+			return ret;
 	}
 
 	return 0;

-- 
2.52.0.351.gbe84eed79e-goog


