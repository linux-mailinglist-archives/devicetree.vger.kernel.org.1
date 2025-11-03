Return-Path: <devicetree+bounces-234501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BB958C2DD9D
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 20:15:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3FD674F07CB
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 19:15:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D06232573C;
	Mon,  3 Nov 2025 19:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sjj7sVM6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73CDA30FC32
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 19:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762197298; cv=none; b=l3yEoEqwbZOpwkpi94XJwnqmz1+3fhtAF6rsHPY9EQ2WaS/e1avObETGds/ERgcj7wzrrFTqp4UlbwbAaOXTb5bh+XgSr3+4jC3BHn3kCEEFGNXWc5ccPLCX5vHBD2Txo7EJj18+h6Ke9pQJ6GFmkiGRAxYP+Vay8MyzDm+CdR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762197298; c=relaxed/simple;
	bh=Ep9VqpEEy3DliB6wfxhwC677Qa8a8OVz72OQ5z6O6l0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sLi7OZSGrvGW+u6p9yq7PmIbKS1WGEFRUJJUo31aR9uaesewRKeg0w8q5Kkimj7UoDJ9VRQSMrtCLAN1R9KbicIpA7Uc/HaqFU/fL4cUEy+hkRvvqOdgDnQbiIac8kYSx8d9fsg5516BlS/ae5/tPcy95fywmB3s4VL78/Z81yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sjj7sVM6; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b3e7cc84b82so958445466b.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 11:14:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762197290; x=1762802090; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SymEZu7KuHsaR6tBK8LZYO8ms6zJrn1970mxvhHuMAU=;
        b=sjj7sVM6/8Fza/KZuuC2AN8YVBBK9X4gEhsfcpu1MefXjRwQQoUe/QKwSRsHVKqQcz
         O8842sftNZB31RSBnKdMuCRsAJCXxWa1UgTU/sttOZSBEYrXuRaDZNg2+R9fkGborXHo
         HSzQRzufhZj1gQ6Ha+5xg9LTxw+qMWw0R2DOsmg/M+lZj3q+Paw3Lm2LSviRzVnCW1+a
         3rOvvpXkI9XGLVJerRZhMXToEGKYLmq1T2/CmRJbB5CjmEbGuxKbn9+KJeSuAI8KJLl5
         F1hFlolZvKH+QzQ18Ifu05nVE3gCRgHsRbIkBl+d0nIMU4cfHItlYLD1/GoaG8Y6fTor
         YhBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762197290; x=1762802090;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SymEZu7KuHsaR6tBK8LZYO8ms6zJrn1970mxvhHuMAU=;
        b=G5dUYaKX98cHEWtpV4vRhRzWVixmtZ+8i8td4X0jQDPXJiU+RJ2HGlEPGvAlTt/WAr
         Niur3Q/wl/ZQBQhOHxYaYMmWZBHtZH/6wMbFeLRsxBWJMEjz3W9d2+vJGF7V7KL0wkPE
         pcHdVgA+fK4jBxP45u26vi8wiCYB9eOcshOACP2gKHoneimp90f15dNgLIkNi1EQO6F6
         3BUYt7F0LAYXN//K2eEfa4cZm8xmOyW92JCQalc2KQ7YwkdeVjM8NbmrRvGKd0K7hYge
         1mrsjVd66bcoEfOY87dOCQBYEr0TMHR1mwZZ5LAzySuv1yd3eWGCu1S3b5Q/OilLfFAb
         dYLA==
X-Forwarded-Encrypted: i=1; AJvYcCVQIZTR8n4NjJMcSbXd+IAnPRgnulu98WqSZ+JxJh2fP9EcJ+9HGtqibTeUqUVSHu9zjDVCHeo8wcsJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2wG5RiaDjBaTplEV1D581UE7Ql7JkkxXcsKJj+9FkkCkGFM8O
	b+z3qP15tA4jM/aj62FokmmKYE576ZXoUVWiMMFSdZH80xzime8o2Yy29cvgUeXyngo=
X-Gm-Gg: ASbGncs3QcAAODqyUbVIKx/PbEeA6MdP3bCbrsXW3j6kMYmibJq6MDDgLBRAwN+EsUg
	z+CsxCduJhr3kXa3oeaMeM6pz/+xGJwzQygAZZ4Y+yL3f5wibmQBpyupZhrpA/ouimSa3fpkUVA
	Vam45xA4BiST800b9d/zArFYPO2n1/jSW82k2PfCArQqnUyPF4RzOvRrWVFEHMNk8tRXhKzXHir
	57zmfpmiKtWUc4xUYwBFPwzTPjKDp5/oooqB9aO0jxYzFnttrcOKNiZ92iWiOMZYkVpcAW80XXM
	SwQlA19JBglWRo9VRl9HPqr1cBcLg6eKyllEYQvFvhyP3psd3ku7uTA93IgEnr4iYpe++68aVLg
	pLrxak93nT4whJWn9jUpCa/DCjdlRPXBa1PQN7kZvmSjnZhOF52A8nXaZTh3Sfn43wiCMwhbiDO
	JWe6MecovrvZnXHR8h9RmeEXQ066IWlAsTHgk1Tt6FV2qX0/Od48ERArduZ9Ec
X-Google-Smtp-Source: AGHT+IFuubeogvRryabHYkXen2w1TOoix4qArdOV/ufZ8vU9XKqBaFFhwfEA0gbZhZn3sytwpzWIDA==
X-Received: by 2002:a17:907:3e91:b0:b4b:4f7:7a51 with SMTP id a640c23a62f3a-b707089cceemr1365761166b.62.1762197289732;
        Mon, 03 Nov 2025 11:14:49 -0800 (PST)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70b9f29c8asm466765066b.8.2025.11.03.11.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 11:14:49 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 03 Nov 2025 19:14:52 +0000
Subject: [PATCH v3 13/20] regulator: s2mps11: place constants on right side
 of comparison tests
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251103-s2mpg1x-regulators-v3-13-b8b96b79e058@linaro.org>
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

For the lines being changed, checkpatch reports:

    WARNING: Comparisons should place the constant on the right side of the test

Update the code accordingly.

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
2.51.2.997.g839fc31de9-goog


