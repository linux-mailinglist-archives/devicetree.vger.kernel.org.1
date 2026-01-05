Return-Path: <devicetree+bounces-251391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 34851CF2994
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:06:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CF7CD3061DD0
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:02:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F78A32D444;
	Mon,  5 Jan 2026 09:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ASoMsQJX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7933B32BF4B
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 09:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603712; cv=none; b=WmiOQhWjtbSU0TgUjyaNI7FS7KYWOovfveBOCugKH8MDH+rzqTFte88BlhgUuqS77hmE6lOTG6AvZML1eI2vLBd6J/KnpHJbOfX3xmqqoGxu3KdU3RTrIPMAFsaNudjGBlJRJ+DTLMsFbrDOUyZkNPP8h3CVU7JfXFtJKFO2R50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603712; c=relaxed/simple;
	bh=y3nbh6FW3xPkaxUMs+BETGo9YjxcJnI/N944yZIYtZE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lM+Lg13inSlfAMX9J+x+ggwGSbJkd1NFHK4JxyzZtPnOxtmrAHgTaqHRu8+BtS5WliQFIvVJo8r94cx7GpXE6l57kBsN7xcxFf23KdpQmKhpBFFyR3EAfrjq3ayVoecdbZDy6uUGo/M5vAQ3AvxayCNaJF+CNnPNWmIC4fRz3lE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ASoMsQJX; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b73161849e1so2657646466b.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 01:01:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767603707; x=1768208507; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QpM30Q4ohHxRfzIKhAO8xW+sYH95+aq2w1aPYa726rI=;
        b=ASoMsQJXiGPxRG0oXZKclWEwCMRVyOcX5KJH4medICejpD83ORI2BPJ0uFxHyiCv88
         fQLFo+9+DaDILyZ8wzzaptYLoLyTuFLO1tZeJd345AcJEyj26VSGrTpeJXlRp9WqMP5d
         QkxvcaVQvRXETrWhzZXM4T1XNpMQCqh8W1aX1igOHO8DTyPFVBe31vb/1KsDkWaSigeB
         1MOUF1JWFCzGyop1DQGW1d3KduqS33q/bCR/Z9azNix/ByT6Xy6OsWz64hOTfGtxlr3p
         As3LASHgqOpdvpEE1PIu7xWl7YABksIiRj+tvLqYQvcEjThwzfdycGfvLH+Cc7VseHxv
         SR3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767603707; x=1768208507;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QpM30Q4ohHxRfzIKhAO8xW+sYH95+aq2w1aPYa726rI=;
        b=qVFypd9RyDXj0PtaQh9rZbDX+U6iTl/OLGJ6qVWmZXRMFxTPjUpkoEcLMpLcs7D2mR
         pB5XNl4AckU4/95IBMhkv6FvCaN3TshCClQWY2VXoYjMHiw3LU+nb9CE56ID+rGEdWRS
         BoeJl9JneYjb54VxCdf3dWz4vL1X13da6HfVuRlGb74s1SlEYzscyivgszL5Y+Vv+HdV
         GMsLzM71AvQNlI7RBU2EuEGWKIp95SghAgzIsVb1Di2WjTvxtcSXzndAYwOdtojFobP8
         QRg2LI1bwFKvcAF9CzvwkhV4nrhWQuPylFK6H518ifyiqmBdRmVLWuEmXUyCDWHanWDz
         vAvg==
X-Forwarded-Encrypted: i=1; AJvYcCWHp2skgfu4YFzMETq8+vR/JsOkpM0w90gP4ECiysEgVIJnMukXE3p3Qef3WwaL3qE1EzmuLrsKHqq4@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3nDI+5vzfMFqVgVEgvrHEB/SRPCKkgfXfIN9laBoiakJK347r
	AAH+vSZsJ1M09HzespyMZQExFLRs6qGLjlc58PIih7WoHITo1eKYma7UymBAMqGh0rmyhFrtrbk
	YibfCjhc=
X-Gm-Gg: AY/fxX6RaVzxtcL6mwwO78dKy2zrtsbHlyzfGPBC4tT5pMnI+Q+PPLdqAeNSf3vm6S3
	AtcVCkC2tnPBu8/Eo4T6gbEjn6ylybYwppUKKHG4IDpuWeTKeD4zH3zoaRNhu8FGEWL8NhDDvYF
	sYiDzmGtCbWcqsD6Rjavb/BE7WwyvTHPjRDGLUtf/UwDyXtNTB9Od/SeHggCEZEC7NcvHFuK8i1
	GOjup0s84Bogxkd/8gcLZKUcykiLlENf7l7SwfMh1AvA0L5gMzExypLwRI4pk0dlEeU1mTzlimZ
	5SIi8EVLpGOVzHoCdCDaj/athfMlAxcAX0mqIyRmAM1T6amf+092wfKxhSmt9Lw7fqO7etuFPjb
	YQ7g1ZujbKHC7SbHMs/IoCn6ohziMVagn0tY2O3T/SKw1mQdc6/hqwM5YIJ+yyIjv8L56vrWXcI
	nrDkcyv0kYkgMjVDvpjV8g6TPxuwqR/qpf/ejonZ5c4z36zZ7wZRg/a0vf7z6PzVKpHMTERcCWC
	SJwqA==
X-Google-Smtp-Source: AGHT+IH7096ba/fFu26IrqBghvOzgUEHtWzoO37V1e0BEjFy5b8O7gq/dy1I+TNMiOA24hb7GdHXYA==
X-Received: by 2002:a17:907:1c27:b0:b7c:eb19:6a3f with SMTP id a640c23a62f3a-b803705e31cmr4969876766b.35.1767603706655;
        Mon, 05 Jan 2026 01:01:46 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0ecb9sm5384010466b.56.2026.01.05.01.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:01:46 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 05 Jan 2026 09:01:48 +0000
Subject: [PATCH v6 12/20] regulator: s2mps11: use dev_err_probe() where
 appropriate
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260105-s2mpg1x-regulators-v6-12-80f4b6d1bf9d@linaro.org>
References: <20260105-s2mpg1x-regulators-v6-0-80f4b6d1bf9d@linaro.org>
In-Reply-To: <20260105-s2mpg1x-regulators-v6-0-80f4b6d1bf9d@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>, Linus Walleij <linusw@kernel.org>
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


