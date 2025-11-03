Return-Path: <devicetree+bounces-234498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0918AC2DD86
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 20:15:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C89C3B897F
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 19:15:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9EEF32549E;
	Mon,  3 Nov 2025 19:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vntm4ms3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1DA5314D1E
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 19:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762197296; cv=none; b=JleXVG8JM6CPnEsaroc50ddEhkS+JJHIpY14kn+tfacspchQ78YasOKWLweyZYkwH0DNCgjto7rEGkeed2SPeYN1fZ/1916Pt18QXMBpcKGebI3gPits5C0rDpW+IYIaFMvfvS5QKz6uy7eR3xziEJks/KSjQdmm6/V3+zc4MSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762197296; c=relaxed/simple;
	bh=stmeLWCyvE+ndp9fyCdhqthj4/jP+eCyMDS73hUiVTM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Qsoiw1C/sk6nC2emUF81MFoLUgL57yVNXDP2Z4xg0SIIKxi4m0nafaBDD31BQ2ha6r0Vnq4oDnfuz9KMc77CNzCiBl6mVhl7BHcGlDv/O90zrxQmZIQ3t30QRoquoZGJq/d93mM2B1LofpBsNv+gUyoWOXBSFZLJxB/8f5x/occ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vntm4ms3; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b713c7096f9so195435266b.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 11:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762197291; x=1762802091; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E8tWS8cFy4ocvC9wnSQAr/3WpkgY8Vx4Z962opSddEs=;
        b=Vntm4ms3bC0suKaKAKu/wzNZTPx4onWeo06TaKyX4bI238OobL8/2yU+03V2kP3C5X
         YnHWTw1fsEcitIx2d5jH/8f047sAoh61Di3f/mT5KmUbD6LfDd8L9k7fb5Td7/bfrMWI
         g9O2PZfRxq+iThyFc7+jP6tfhxvnJ5gXMN/aDOwSbPLekDk8IZD2tND0ImC0gjxiw4sp
         bUOR5W0cff1GtXkHbFmDJZ7fJ5FTrzKS/vocon9NZDDYcaQrqQIokY73OFQmMO/oVZXs
         bintxIdBR6Xkg/yhpl26NFN0yMgx0awVU5OIHn4eFoWDvJl7iwF6oNezcu85fvvo3a3/
         T8gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762197291; x=1762802091;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E8tWS8cFy4ocvC9wnSQAr/3WpkgY8Vx4Z962opSddEs=;
        b=NTmVmFj9VlpVc29qeOu/CwRIS7mXldd3ZdRohF94CZSlK476bJ3wTfrd2fPyvrxJY/
         v6befJTbJhMdIo051kbwG8p1vEzz4Aio8NruCo/VUu7mwF1sUZ3+huUHeYveWfOiOPuF
         1dUTrUni5QePLQjq98wVf+gDZqEeL0vQe24nw/PDaTkbXHfQfEnfN5+NtXzJLgB9SUBv
         kbEhWBjvNYorFkFysamZMYgadg1+sK/zkPx9tUupuoQOXwtNcd163u7OVC+nwMZi+gGP
         rF3u67G0PrlU3ix51VcHWFeCRJFopb0RzIAluJ50ssDggOyLYcd7MefwLgvBtLvmFqNY
         1lPA==
X-Forwarded-Encrypted: i=1; AJvYcCW3QjKERmAKyWJHV/QT7/lwJ7dfU10B8w8tS43AyJF5gvHS0gofUn24S/nIuky1l7YiFaeNXvM6LTp/@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk4ziyqpZOTlbUST3B92l/9y1CDzmjMeg1oDsJrENycp8Zi81E
	H/cvvXl7lZb0RdXOlHbZ/Z4B6jJPbGMA25cto6qc0eW/qXtTuDDoLpkmGjaDeO4oVuE=
X-Gm-Gg: ASbGncsm8wjmexT8hGVQProKH3GI4kzSRcy7lscDUn814tAD0PoXOphJWeT7oCCOBFZ
	FkknSQabLSLkSFkFWnaWN/yRs7QazveyjM8llxrgE2HtYfc0UrhdD6zDeqzou/rz4pa1XTb9bBx
	vs5PYdaiZck8JUg329LZNAIZzalRpSfE4Vy+uoyuONQsOrhMo49cENaSwUsfAIZ3HE84N2LjB48
	6Z76qAwUj6570tGig1eGREfjs0zMpYFwZFLJ/RU2YFRJXWAcQMj99/kF7nZjZgqR0QjOWek/it3
	iS3ZNssrlOwlCgrn/0QNBQq4aFpPO+EGMX7Mta0afs2+oyMiCNILexnfimTMGZ+jvLoevKY5FFn
	fqL7Yb49zoVppitvRc63HkBkk/cZEbIQD/NKgTVT4GAlbKlxPOU3zjJTQ2g3vjBvhqZL6SQL6wu
	4/I9afmaLwX60lrfP3WZoUXScum4R7EdKIiX+fyg8fIoMoJSMxvbld5J8zHnIg
X-Google-Smtp-Source: AGHT+IHj4Yfe90Bxd+t/ZeDrhCAfV9o3nFQAjRa3TrLPc9HMD49nPALHVBv3VRToSfNQer8bJnWldA==
X-Received: by 2002:a17:907:7e8d:b0:b6d:8ce4:ff18 with SMTP id a640c23a62f3a-b70700bcd6amr1422759766b.9.1762197290671;
        Mon, 03 Nov 2025 11:14:50 -0800 (PST)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70b9f29c8asm466765066b.8.2025.11.03.11.14.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 11:14:50 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 03 Nov 2025 19:14:54 +0000
Subject: [PATCH v3 15/20] regulator: s2mps11: refactor handling of external
 rail control
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251103-s2mpg1x-regulators-v3-15-b8b96b79e058@linaro.org>
References: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
In-Reply-To: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
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
2.51.2.997.g839fc31de9-goog


