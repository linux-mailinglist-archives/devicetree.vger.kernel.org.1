Return-Path: <devicetree+bounces-236898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CA5C49140
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 20:35:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0310F3AAF7B
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 19:30:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D9F733A03A;
	Mon, 10 Nov 2025 19:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g2jxX/eM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A67C3358A6
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 19:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762802952; cv=none; b=tTdaxdiuRXdAiaIaagO738h5/ALR5+4R+Ar036pH6AXw7ccHEHllwD/eqkTYkWBztRI8nc+sGy/azrLWpGa5UGUW9446QoVPD0DssiLHc7fGdMEqeQJ1D93rCOWvBY5VhDTdVgRhsBZr+fhVnwYba2tpoZ7YdJRS6aLBnxiwwy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762802952; c=relaxed/simple;
	bh=eYixXJGVDTdDGMYyrWgNtepN6ShNQjaLw58PX+iYDjk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sVE94DeMKJLZemDb92XL2f6PGTSjR3MuNeHwCww0NTtOFErqpLArP8Qa+sgATOlz84oT0PcYrwfLITiz8tw9hTLXT6x1CzOJVMilaPayxBtzJz81fE01z5NGtzuIRpLaYhJMnJVf5GmJzrfKUgwgbJOODj7RBQ/wywbnVT9Gkjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g2jxX/eM; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b3d196b7eeeso521094866b.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762802946; x=1763407746; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fw7S55wozV8jZ+b5ptCozjuTZxOLQ9IoCnelwcEEJ6g=;
        b=g2jxX/eMjDunpBw0s6R7XkWXXwbUXstJrw7lON8/bNFHFDrPmq9F9IlSySFf62gbxv
         PMmVgIR0V8KvagjzqCIzU2sBqlI+d6cVB3Og3zrd37pdSCJYAr6y8GvfuC26hmMLJ94+
         5W9TTzsvzwjq9SpSfaeu3aXB6h5JOoNIJBYKRYStrwIHWz+QK7H6igzgFXF9Tqv9lNBv
         2a6QpdNh1EcoS0H5rJVGiWeSV8JzCW4D+SIwAl8T94UlRlo/BB+Y88jktboXMSjxCJEG
         ztXi3nmQqd90twEzUEIXZrmqm3m+g0uAt9jmqMqG/2tj1xR7BTrYD0p8xaw9qymfddZ+
         MtgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762802946; x=1763407746;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fw7S55wozV8jZ+b5ptCozjuTZxOLQ9IoCnelwcEEJ6g=;
        b=B9shASYqRLwUapyqJGv/PIGdMsq7F64skQoNo3e8/btmI/JnB8dNfZwqET0qKK6+eN
         haWiEkpUEh3IVF7Ll8XdrITWlk+wv2TXhA1iozF66fH4SfQetWgCOZf0ygJFgkYLn5r4
         DxkW5v0iDUXBSP7h84rIL6PdWpGnv8B6Oi0a7o5osYONi+igl3qnt0r4XQtMRi/UeVj/
         hVSEU3g5+on1VKXSK22TPux6TiUlusw4a8HpNz82dmWk9oaZepH5b7+v9Rqq7AKg4ZIf
         UqMPiLaydi/kzAKKQ6UvxHMHETRkh3arl0+JpihUkuyrP6ejOAhl/JJp7Cze0NIsXZ78
         naiA==
X-Forwarded-Encrypted: i=1; AJvYcCVljl8hLwO7S45zLv4mQr3MPb3cOLB47i3utNa566xXYQK9fcKNlxUgoUAHbmeHDq0vO1q0wuWNWk35@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj8AHczl+oLwC+0B+Y5wnZM6+W8FRuvr+0VN9ml5+OKmm66MuB
	FtfnphPGmxOF9iSKKP9v6KnmrBWi73cdyz1+xOXPLQTH2oyEsWyT086MfFsKe2j8AXI=
X-Gm-Gg: ASbGncsuaifv5CVXNUlqrbhxgbNGcOSjTEiId+ne3kMOL0MESC1p8snhSzKnwrYDHZo
	M0HgTApzzui7MSmuXUi6QjZsEbWUCez9RX2MiRGgVr3LAAWEHIlhYkcDEcg+rSsLqVcH6P81ioJ
	frLInFB9qwarCT/ddu25T4Al4D/7rnaNG1VsiHT0ZMQ1CaC8s9Gcu3TEOfbZD+r9n95skT0JJ+9
	+BuncY5HSY5KAh96t1BDivMsWfXUqCISgijK42I0tbTVKNg1p9aw3aOOu6LQhLMt7B1NELrEqdB
	ldnfa6WDaggfbMIKngUYQru8cOKAS/EXMzZBMD4Xgim5Dr//NeaLkK/4qi8X9vtZwIob+USiYrR
	mzSr99/35vO37XoGuHmgbQl2FYNszsaSqprN6jOdXWqhSpLxe9SBZ9g1Got4pjr3c3hGL8qG/5b
	XralVyF1SHMdeYe9bmwnGJk3P3oRSlKXfS2idcJBqY3iLFzpPmVFO34FF7q6/PxgJwaz1GsKw=
X-Google-Smtp-Source: AGHT+IEZS7ecosIDuABVvoBOB9FJ0YBGdAO5O/xjrZmOLhiVmbjmci3066c+xARZ4iRtS1uRrcnaRw==
X-Received: by 2002:a17:907:7fa5:b0:b72:d56f:3468 with SMTP id a640c23a62f3a-b72e0490addmr962983866b.50.1762802945969;
        Mon, 10 Nov 2025 11:29:05 -0800 (PST)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97d16esm1168178166b.35.2025.11.10.11.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 11:29:05 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 10 Nov 2025 19:28:56 +0000
Subject: [PATCH v4 13/20] regulator: s2mps11: place constants on right side
 of comparison tests
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251110-s2mpg1x-regulators-v4-13-94c9e726d4ba@linaro.org>
References: <20251110-s2mpg1x-regulators-v4-0-94c9e726d4ba@linaro.org>
In-Reply-To: <20251110-s2mpg1x-regulators-v4-0-94c9e726d4ba@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2

For the lines being changed, checkpatch reports:

    WARNING: Comparisons should place the constant on the right side of the test

Update the code accordingly.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v3:
- new patch
---
 drivers/regulator/s2mps11.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index 30586e9884bfb998ff07e3148813344b307506c0..8a36ab67b73e4151c7f67af0555a6465ee1e7a04 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -1221,32 +1221,32 @@ static int s2mps11_pmic_probe(struct platform_device *pdev)
 	case S2MPS11X:
 		rdev_num = ARRAY_SIZE(s2mps11_regulators);
 		regulators = s2mps11_regulators;
-		BUILD_BUG_ON(S2MPS_REGULATOR_MAX < ARRAY_SIZE(s2mps11_regulators));
+		BUILD_BUG_ON(ARRAY_SIZE(s2mps11_regulators) > S2MPS_REGULATOR_MAX);
 		break;
 	case S2MPS13X:
 		rdev_num = ARRAY_SIZE(s2mps13_regulators);
 		regulators = s2mps13_regulators;
-		BUILD_BUG_ON(S2MPS_REGULATOR_MAX < ARRAY_SIZE(s2mps13_regulators));
+		BUILD_BUG_ON(ARRAY_SIZE(s2mps13_regulators) > S2MPS_REGULATOR_MAX);
 		break;
 	case S2MPS14X:
 		rdev_num = ARRAY_SIZE(s2mps14_regulators);
 		regulators = s2mps14_regulators;
-		BUILD_BUG_ON(S2MPS_REGULATOR_MAX < ARRAY_SIZE(s2mps14_regulators));
+		BUILD_BUG_ON(ARRAY_SIZE(s2mps14_regulators) > S2MPS_REGULATOR_MAX);
 		break;
 	case S2MPS15X:
 		rdev_num = ARRAY_SIZE(s2mps15_regulators);
 		regulators = s2mps15_regulators;
-		BUILD_BUG_ON(S2MPS_REGULATOR_MAX < ARRAY_SIZE(s2mps15_regulators));
+		BUILD_BUG_ON(ARRAY_SIZE(s2mps15_regulators) > S2MPS_REGULATOR_MAX);
 		break;
 	case S2MPU02:
 		rdev_num = ARRAY_SIZE(s2mpu02_regulators);
 		regulators = s2mpu02_regulators;
-		BUILD_BUG_ON(S2MPS_REGULATOR_MAX < ARRAY_SIZE(s2mpu02_regulators));
+		BUILD_BUG_ON(ARRAY_SIZE(s2mpu02_regulators) > S2MPS_REGULATOR_MAX);
 		break;
 	case S2MPU05:
 		rdev_num = ARRAY_SIZE(s2mpu05_regulators);
 		regulators = s2mpu05_regulators;
-		BUILD_BUG_ON(S2MPS_REGULATOR_MAX < ARRAY_SIZE(s2mpu05_regulators));
+		BUILD_BUG_ON(ARRAY_SIZE(s2mpu05_regulators) > S2MPS_REGULATOR_MAX);
 		break;
 	default:
 		return dev_err_probe(&pdev->dev, -ENODEV,

-- 
2.51.2.1041.gc1ab5b90ca-goog


