Return-Path: <devicetree+bounces-182802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 408B0ACE148
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 17:27:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E22FA3A7BDF
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 15:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0C9B1D5ABA;
	Wed,  4 Jun 2025 15:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RCTdkX5y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEEA71C3C11
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 15:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749050755; cv=none; b=vB9CXlFianqrIjyHZirGQqZNuKimwIxO2wXYUxs03sI+SOJprs9CCo/ypJSufFPh5BiAoxd1BSuX/cb6dHKBPyetl+b2P4XN4mkuk2TrpfO1lnlzQGTNBAiBYlIyluAWF4SihzaK0JkzS4Yda/4BB6GK3BL0UViOYQ3L8Hi9uko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749050755; c=relaxed/simple;
	bh=c2aRLM4UNSTnoEX6tceyJE+UXM8XBojhYH6J3V4X4cc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DqXwJPZYK1LBw9EsG6DB7LWUWZe1h5J5Xhx/8v9zCar7ljptB5OmjJ3GgiTEzwJILY48Yg9tCphBbnkeuBG/Wz+chaEe/Lo4CNaroZ7p3LLn2svv7a4e291am3Ig8ZAQhODdamslh++iS3Qmiu4JdY/D5+Ntf599lHlDbFi0/Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RCTdkX5y; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-601f278369bso14625201a12.1
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 08:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749050751; x=1749655551; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nr/ud4zCPtVSNmlxUwtSLJlr6giftd88C51EN2S0gME=;
        b=RCTdkX5y6y61cZ1/PjbmEFR4csWju1gNFmE54iz2BB5eDX4D1FXMr/SI6PQCIdqxJT
         SF412z/fJheyqeizghdYJMKsUFjck4D4FnZcP3RsxgMBhqj6Xv3+B3YsZqY4Z5f7VCvt
         dCaOUZ1RHULFMxVzzZdGyVZpeBDyS/8WKsyCbSvn3I+BcnuhTL4ZOyuI6bcUc9tisMr3
         GN/zEaRCE95NokJO0KeXqcha40ceRDbwyZZ96PlgXAVNIJqvKuoF9U/2KhmFQ/8MPj4w
         Cfp7bHxSJjsjDpX9RZE4sYF5lP3NcxrXZGnlfTubwqgchwTOWE/fheqU3wasEaCzZBCq
         AZjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749050751; x=1749655551;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nr/ud4zCPtVSNmlxUwtSLJlr6giftd88C51EN2S0gME=;
        b=hNm+oQeUd3MdSh4L+uY1L+yfZplbkGo07f/7eBrJ1Q8l9X4NlxuVnGjFStsKONYzQP
         55UN8K4LBM+3NXNrI6EiPJT4of/A9PwrLl6aFNSGTATCUBnFX1gLk7bV335LLqAXOuQO
         m0KVYI1yU3nwLB4eR84WA+nbvCe1M1c2rgOjPJs8GPiLBJEVpwN76FKt3BN+S8lxftL3
         9cySzPTXqO9GXKZWaGkj+ibtRasl5M5Q3ZF4OIQhQN/dhjgMLRwG0IlVfQKzS1y3/75w
         tHRcLKsaazDpNd15J0zdUt+a/Cuubom3PCFoWvBzSBzDN741QlaGYMoPJvtzFCw9UAhC
         16gQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyEMX18cvauRWbDNDhhumDedPn6obz9Vie1pdtyrGtHHPYXcAPAcNKvs/x/tBjZyZdROzbW8bjhK4N@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6dWeJYhBnNtkgUJJbLi1e5YW2mCoXyc1E+Cw0fcs60hl1/5fe
	I8U7cMT8GKjZ+eD9hTtmx7OSDcdfNuWWnUQ2KhzsDGujlmtaNtr0LR4i6WTbNgMs758=
X-Gm-Gg: ASbGncvFhmHgKL/If/l2GviuuZao55RzqJjMNTjDhkUfg0XEgK3XiCbbpYu7sNQWP3b
	etWeG/uspqtcOtGTUQ2GieqDhxlFa3Xoua+cjHNkvoYLLdiWxPvmm8bj9vNwG1on5fCMnKVMpyh
	nM18iGuB/1lmOoVLocrLsv8uYqHXzSBDS7Zw6EqJRHnyT1V0jiqqzXgvdPPkm3em2ggDZ2qpYvO
	Scmf44EFkIz+lhQOR3SELsMWXNUuwqL2H+9tF0z45WHCxtAwI/NbHLm8MO0VmQhDWTIqo19HrE7
	hWsH0U+uJQV4drkpA6kDhQ2tCqlxiBXR2+4rD8JpR10MUQulGvM/P7WkHyM8w+K84BHwcLvcqnX
	4zAEyFcDxcQZTwHuDLnz5YylRVG3Iw53Brvk=
X-Google-Smtp-Source: AGHT+IFqvldrqbeuGwwG4MXV9h4Mso8s2QOVanNgW1TR6F0t21NbLRfi956cnkhEqPoH4VqrXxVIDA==
X-Received: by 2002:a05:6402:40ca:b0:601:89d4:968e with SMTP id 4fb4d7f45d1cf-606f0ed4379mr2974440a12.27.1749050750975;
        Wed, 04 Jun 2025 08:25:50 -0700 (PDT)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-606ed984f63sm1051640a12.58.2025.06.04.08.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 08:25:50 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 04 Jun 2025 16:25:49 +0100
Subject: [PATCH 10/17] regulator: s2mps11: use dev_err_probe() where
 appropriate
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250604-s2mpg1x-regulators-v1-10-6038740f49ae@linaro.org>
References: <20250604-s2mpg1x-regulators-v1-0-6038740f49ae@linaro.org>
In-Reply-To: <20250604-s2mpg1x-regulators-v1-0-6038740f49ae@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

dev_err_probe() exists to simplify code and harmonise error messages,
there's no reason not to use it here.

While at it, harmonise some error messages to add regulator name and ID
like in other messages in this driver, and update messages to be more
similar to other child-drivers of this PMIC (e.g. RTC).

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
2.49.0.1204.g71687c7c1d-goog


