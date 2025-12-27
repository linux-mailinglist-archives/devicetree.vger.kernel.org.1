Return-Path: <devicetree+bounces-249840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0EFCDFABC
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 13:27:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 264B930329D1
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 12:25:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D206330B3C;
	Sat, 27 Dec 2025 12:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C2jzbZK8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C525A32ED3A
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 12:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766838282; cv=none; b=HyFMqF1U3EaUeubi1JgVJv9uxlL+tRyl6M0yDyYtstw12IA2NjBVWNBm7HcYtHaDH+QHLr5OBEELb9J3wkQU4TJF3/qjQnfMzufcIFhCGpUxn+wP/EYonIyeiTPv7sJ+3WSt626CQErL7jt/t19Xf38fmvMyEt7TYWLL6atoGME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766838282; c=relaxed/simple;
	bh=y3nbh6FW3xPkaxUMs+BETGo9YjxcJnI/N944yZIYtZE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qzqRBwgbqLXLcN+UJV0Lnc35DyYF4FQv6FtdsyUJWMCO8qJr05eluGYwTxRDqXikCtU/blK4SHVDrIB6BYdc/zDndvo4dOIDmZW0680GpKgBZyu/EwzSKKOUwU3n6YILg24afp23Ry6bQM6CAidAyLNBw+BAbzt7OMuCKN8I2w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C2jzbZK8; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b83122f9d78so333826266b.0
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 04:24:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766838274; x=1767443074; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QpM30Q4ohHxRfzIKhAO8xW+sYH95+aq2w1aPYa726rI=;
        b=C2jzbZK81UiGsI1lDuNBdt0fgLmHIFIQLKPg8kJo+9ZDUL4D68w4Q1uotX/lVetswv
         tboRZLnnl/NdMkc/R+SaxdNJ/TLnOO4NVjrQ/PzLz5YuHb/bLNBtrFW17n/+89AQBmfc
         Fhc7ehamvwf0mSkv/+6A7kC4bf7Je5biKMvqG/ZafmsxDma/SBvMEelrTXd4s3XdPChJ
         Ap+wI/qhWTgShZtiER/nhoygEtjejgBqQNAOomc/KmjEHwjUx8gw7HFPcok2QuTyHifn
         KqFsc5X7gl2yWYjL/Lv3J1pNrkBPuqLo3ED+RazwrqY09Ta+SE27+XZIIn/+FwmjSdwL
         6Dcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766838274; x=1767443074;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QpM30Q4ohHxRfzIKhAO8xW+sYH95+aq2w1aPYa726rI=;
        b=h84s4sZhEikG+XYK9C7HPjv4eCW+fQyEnZuUzoV9rqNJXux5edOifIWfw0yF97CfBr
         Y4oxESpF7xaiq3bOpQ09c4tVY2q+wYocWlYYUYS7+R5RBZuCfC1hL19GZKrJVOaVwKb4
         mXFrvbmqq7oGIiLsGK/OK7xaFNBCjAO4gOFRGMOosxiGfP0browthq2Fomt8rCb3Wjq5
         KmDmZhxG53FC8u52CJn0eP95K4Blwh4lRwn9bRwhUZM8UgJAlXXyUyVe6Yc1Cccr88Bj
         mt821tzPTSGYpEovv25ss5Nt+LVvOb9/ZSe24SQjeFuhhNPB9yDMF3Taa9kbi/oO7Yk2
         685A==
X-Forwarded-Encrypted: i=1; AJvYcCX1qDxDnytJW62rFeEBBhE1CIwhlsOKJom1iFG5gbnvHEjpVm3tshlDFMB6yT4pUNF1vofGZ3nkQaXB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0FUmysijzUiFBs/4GMZMsF6KPRcFWBexh3rybNwD1h/Y4687b
	lqdyJ6YlgGNsGT3IHr1TxPLoJ7lvpjWRNRyGQ1jPIEhMKw+x7JsiLKJPqC/RA8StrUI=
X-Gm-Gg: AY/fxX7KZrh1xPo/xxLDTxjFCpUfiVRiBqqxCywY5B/F2wJNbIUCTMsNBjp4BqMc5gl
	JYDUuN69AHMnGxIFc8suSI6Rpg71mzrNzUi9N9schgzPSXkwRxQMVQyRUzvoNu/8YONSdclkWR1
	tYWmHGPrXSAvMCl+2Dt2QyipmrpW2dLvIl8pFkBBU7EwKUzG4Pr74tvbNQiXOumVR4q59by5OWC
	bpYv2nZLAg3RWBIdVPPeANzbAO3/ZpUe80TcAyvPBuNcvCABSrJ5baH6uXpAm4U62sl3dldMr2o
	SxX/NeVY55QVImPl9+fgdKTvOAqMQilka6mQDsjMDYHxaWZEAK2D2SGB49YrRIk0yeM3pSN7xw5
	11HfwGuK8NlK6vQIXvg4H7AfpMR6tPo8L3xpsfHvnJ0OgkM5xHIa8T9//cQlMYCjS5CPXIqWHWj
	J0IUP1ilv00pByIXIi/HGWu+eCkqktSCALpgl5PLzspCK51mi4Yad2bI70HCnu1Kz7lMC0Ey+PY
	tadOw==
X-Google-Smtp-Source: AGHT+IHtdsEKevcGZACNYlScwlHYSPODCqmM2Kf20iK43UH8EKdkTB+qjN++AicNMGPFsLLBY/Fh2g==
X-Received: by 2002:a17:907:97cf:b0:b79:e99d:913d with SMTP id a640c23a62f3a-b8037058bb0mr2497508866b.42.1766838274376;
        Sat, 27 Dec 2025 04:24:34 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm25932659a12.31.2025.12.27.04.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 04:24:34 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sat, 27 Dec 2025 12:24:34 +0000
Subject: [PATCH v5 12/21] regulator: s2mps11: use dev_err_probe() where
 appropriate
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251227-s2mpg1x-regulators-v5-12-0c04b360b4c9@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2

dev_err_probe() exists to simplify code and harmonise error messages,
there's no reason not to use it here.

While at it, harmonise some error messages to add regulator name and ID
like in other messages in this driver, and update messages to be more
similar to other child-drivers of this PMIC (e.g. RTC).

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/regulator/s2mps11.c | 29 ++++++++++++++---------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index 1f51fbc6c7b6e158f9707c04d9f030b9eee5e842..30586e9884bfb998ff07e3148813344b307506c0 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -1249,9 +1249,9 @@ static int s2mps11_pmic_probe(struct platform_device *pdev)
 		BUILD_BUG_ON(S2MPS_REGULATOR_MAX < ARRAY_SIZE(s2mpu05_regulators));
 		break;
 	default:
-		dev_err(&pdev->dev, "Invalid device type: %u\n",
-				    s2mps11->dev_type);
-		return -EINVAL;
+		return dev_err_probe(&pdev->dev, -ENODEV,
+				     "Unsupported device type %d\n",
+				     s2mps11->dev_type);
 	}
 
 	s2mps11->ext_control_gpiod = devm_kcalloc(&pdev->dev, rdev_num,
@@ -1290,21 +1290,20 @@ static int s2mps11_pmic_probe(struct platform_device *pdev)
 			devm_gpiod_unhinge(&pdev->dev, config.ena_gpiod);
 		regulator = devm_regulator_register(&pdev->dev,
 						&regulators[i], &config);
-		if (IS_ERR(regulator)) {
-			dev_err(&pdev->dev, "regulator init failed for %d\n",
-				i);
-			return PTR_ERR(regulator);
-		}
+		if (IS_ERR(regulator))
+			return dev_err_probe(&pdev->dev, PTR_ERR(regulator),
+					     "regulator init failed for %d/%s\n",
+					     regulators[i].id,
+					     regulators[i].name);
 
 		if (config.ena_gpiod) {
 			ret = s2mps14_pmic_enable_ext_control(s2mps11,
-					regulator);
-			if (ret < 0) {
-				dev_err(&pdev->dev,
-						"failed to enable GPIO control over %s: %d\n",
-						regulator->desc->name, ret);
-				return ret;
-			}
+							      regulator);
+			if (ret < 0)
+				return dev_err_probe(&pdev->dev, ret,
+						     "failed to enable GPIO control over %d/%s\n",
+						     regulator->desc->id,
+						     regulator->desc->name);
 		}
 	}
 

-- 
2.52.0.351.gbe84eed79e-goog


