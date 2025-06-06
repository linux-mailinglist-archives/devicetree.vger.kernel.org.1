Return-Path: <devicetree+bounces-183384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE24AD0487
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 17:04:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B04E3B2615
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 15:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18E0528A1FD;
	Fri,  6 Jun 2025 15:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="voew/uOS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CCE289E15
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 15:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749222202; cv=none; b=QomoXjgxZGAyMhlZUUKut9q3gLpJ5+4iRxti2RCEcJ8MaSUdIsbzC6F+OCtG2SoCHFcjXqFkt9LSUH9ebhtxsUp/12aHTVxg1KJwabr9GJaFYQ1bQNvbMipOL6lDA4ZRtmvixVLpUxrnNLff9P37ATPbWV4YklnMNO8S7VvYco0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749222202; c=relaxed/simple;
	bh=XW6upis7ywUBB7dA4Zx7cA15c1x+GH83X1v6QRh5Bzw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VsuknJ/LPHcit9YRsfgJaRYpi9r9z/rgNrGFXaSRF30cXrOjtdlmcM2k7bY9TQk3Bev8wELp93YeMeU3h9h1FeTb0OMZqA7f9SxST8EC8gw9BAXPiWt89Ru5Ahn83LgsT4pV3McP1ffJVCZIje3ZivPhfx5qgxhb84GQcbep754=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=voew/uOS; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-addcea380eeso334130966b.0
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 08:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749222197; x=1749826997; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZrVXOODskeO9o6lbylcxPdrCt1GmYzprp7c50qP9sE0=;
        b=voew/uOS/S86vPm+lRnM0Xy3aMJDz9+Ttpt/ILp1QlCCT5WgQAYUw2a9fc9jaPGmBS
         6qY9C/hjTZY8GAWCXOYrSFL5cLNpFDJRTZzmkvAyMTKRPP8XAuvVzl/j1nzvfbQBeDfh
         Wa7p98fMk/ddvrnvrUXfDOi03pGFEIi1BtlTffYqfba1Pxl87Ez2se+5SEDGrIQVNr6A
         6z51QIc2SLv6qnEzx+z4yfJ4EN1AFVvmlBKMMSCXdqG4OosdmwsqbfCK/HmdDWDc5OSD
         EKPMZHaeONeY4jj0DeyawjqaCKQTTFIz2ozRJ/P703Fr9jZnzukJ0u5JvUlOCYkgsAAa
         Af3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749222197; x=1749826997;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZrVXOODskeO9o6lbylcxPdrCt1GmYzprp7c50qP9sE0=;
        b=Aan1WMQ6EHHt4pAmE0TpNBs/uMuRsuvnGTQrYFISFAcuK+O3/Xdk6n/hgKXfT+/DSv
         UJ5C4JMWMmfb6nWHRduKEc2hcpG3H4qGf2cyJCYGDbrPF/kUSsjxSAwDn4RYCouWrTtW
         JY5bo+suFmsdgxkGYbDwO2JOgiYSLfxl3yJ3U+cau3jxNmYK6ZSfgJPtPbgR5w77tkym
         s3rLV1iI9q6k/lFCx1l5kQBGfDP5ubiKwlU7Wpf0CIfpHvr2g38c0RMYLiabzqCOR2yK
         +8U6w5fpWpFEfDQ6h9ULLc58puUsi+1IXhkOVOvxVdSFamIxT9u8nf1W/70XPsqCaoBz
         Rxbg==
X-Forwarded-Encrypted: i=1; AJvYcCV0yCa1Ak+778hLovjKnho/JzPk4j3niyuCGAx/VwJAMcLlk3CeOcTMQCOKAKfxzh4MnRkqOpL029d1@vger.kernel.org
X-Gm-Message-State: AOJu0YzUwF4R0hUr02ulfOZc4nniZ4XHr5XpgYdkjZizm8jV1ktbSewO
	ps0r8kyE9XBabfhFgTNNUxAfyUs27SkliSJmC6nr6WbMaP8OP1uvF+JY42zDbTpWd8I=
X-Gm-Gg: ASbGnct7PyPfvwMOigsBXVUZQR9r33Nsjve14+2tvL3nBYiV3MsO0odj/OofCwB8Dil
	sYsSRk7ozK9n6KFutUuZgEXGDp2uK9IygT/M4bMPFuIRIRIArog2Z1xGmCDBqrrEI6GzA+B5yf9
	PLPDbuvzt+eeGgEnoMZ3g170yCh3GMkEXha7r+FBPiuitEqZa2UgdkQWXRTgoNT8hGg8Pf3SXYI
	L5kibOBWLdz0rZMOu0LkNDqQDnEz1I/UmapOaALt4HYqIZqBt25SPLMbNIs0SByuHnzS+9+xAyb
	bOmiyzk10O1rE2HyQukilsdGk/FaRiK/tws3KZpLuP8rgPjYEl2olr3hV5G8cOnSs8GdX1da0i0
	xzMgEfVu8vCkqLmj738UybNPd8e3+FJG/ULeWoWSDsCHVyg==
X-Google-Smtp-Source: AGHT+IFPnRXvPeosibDEAxvwHPrDNR/Agw7oG0bKI7jl5+GdDejJiSgSnw2j3hTsx9Z3U15SN2WC4g==
X-Received: by 2002:a17:906:ee87:b0:adb:23e0:9290 with SMTP id a640c23a62f3a-ade1a916fe3mr332115566b.4.1749222197197;
        Fri, 06 Jun 2025 08:03:17 -0700 (PDT)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc38cf2sm127735066b.121.2025.06.06.08.03.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jun 2025 08:03:16 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Jun 2025 16:03:06 +0100
Subject: [PATCH v2 10/17] regulator: s2mps11: use dev_err_probe() where
 appropriate
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250606-s2mpg1x-regulators-v2-10-b03feffd2621@linaro.org>
References: <20250606-s2mpg1x-regulators-v2-0-b03feffd2621@linaro.org>
In-Reply-To: <20250606-s2mpg1x-regulators-v2-0-b03feffd2621@linaro.org>
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
2.50.0.rc0.604.gd4ff7b7c86-goog


