Return-Path: <devicetree+bounces-251396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CEACF29D0
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:07:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 35DC5307DBDF
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B35C532B9A7;
	Mon,  5 Jan 2026 09:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CoIahxUW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C32D32C92B
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 09:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603719; cv=none; b=EaY6SheS6tWrBAG2GQ/g7ldyi1pGJbetSK/KW4c09s2s6BGYMsKu+iSmiaTUpgMAskwymvUN+sxVtlsnlJ76GHZqAyDmcRNpdnkYkL4lGmHbMtS7ZV14hk1ecC4ExBcbuI94xaCC9fKAKYWCt4cihE4mFBpJ8dAECk8ubTL5W+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603719; c=relaxed/simple;
	bh=e/SiWjAnIf9n3ju1+W9LofDtIoMCJ1iK1OR2/pq7g/4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PAVNzrUJHdGjn6ae6uc6b+3Zys/JodD6YrQbWzlmsE4S+RQZSh8qtt/vMLRUxXPY0e3dzoFi6TqAoqhD2bWCTDNxHJzvXefc7a9F/+JsUIG25NgDfrjDhe4MF6csb5E/jC+lZszFRdBhUMrHuctix+I7v4ePBsEQ3MIcaY2AMyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CoIahxUW; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b832c65124cso1063707266b.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 01:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767603708; x=1768208508; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZoLuiqrhFtLQqv/1rhd/SpsoL8e5z9S5UPDgQu4V1bM=;
        b=CoIahxUWEUKGXwD5wfSWlTEuehk7jV60T+EiZcDiHhgYoOCB0dRt+i8iqkk2BmcVtC
         Iii9z3m5CyswxnKtk8XDEsg3+EuVb1JfvgscIEPg+90lWPwDfPu1tD+S7X2X+T3zAEHZ
         4SjLuxH24xz0u6eLK9e0YjR8HicIvB8XhmQY0N0AtvbBnjSjMec3M7bGUE9BoiWrziHg
         6S4m+QLv6dI+Kwswxhb0SoyucHjsiRONPNl8NzlA/ChebKSvqI7vy3mOR2ONpwZl2eAt
         9v1zSv87YuFkkYSxPBgJbdodWrDcyaoh8aHenM9VPLhdon7N4V3paCyU7SQmkaoH/upX
         RuKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767603708; x=1768208508;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZoLuiqrhFtLQqv/1rhd/SpsoL8e5z9S5UPDgQu4V1bM=;
        b=NSBFGbD9C9u1gaSE6VXXV07Cgt73XS2CkjZM7JGutO3JJhd7noNQiPwmOHxXo/jZ63
         sQWIyxYiKp8aqGpg9UObn0OZlSt5bL6vwvpQ2oLdcRkUkStV6GLtSn+w9HmDZY2nXlJI
         vS4qV7+55Q6iP0CQHqL7i3mJnpiSM0etnutaTSxR1sHdewaeKpTicTaRalkD6A88YEyb
         tdsEySbRwNybdiQZ4bRVIIYKY903dR6a/QJ7SeUXf4GXkgXKahJXCnlGrQy2LKqdjIWC
         mYw4vCF36xnfEQVhQefFGTrd0//Ps9Wc7rbpSpLxji/6seJEqVcrF9QzN2bF7AL9Tfvi
         l8Yg==
X-Forwarded-Encrypted: i=1; AJvYcCUXKLKM1h8cF3xZ15BqQ7CJATqnBWMyQTOgQd+r7h/WJeYhuqpA1jsTDb+lSGQQhyUGNbZ8YnoYNojM@vger.kernel.org
X-Gm-Message-State: AOJu0YzF1K9vflxWE+bH9DLGCbwxqImYW3701lOtcj+4CP7Nc4ui2AzY
	kOaymjEujsiyQD7z2pwqV4sHKjaH5TIGWpLWY6q3CDYhFVGXm+F3wCSvDEb7eGTt9mk4QF2oqtp
	HQFcJvUI=
X-Gm-Gg: AY/fxX5msqpmqiKlHkI81GN1Tereo3pIt0Hy6/pQajZYf2QDFuMNsaqgHxaJNfZXGKw
	2g5faK7pSH2lqgnn9uU6Vj9bx3aUhbnN55z8XJDzKw/nFmiSK408FH48lBQygenXCn9JPB7G3Fd
	908Rg9KS2F8YO7RF5XBTn8iYEsm8vEyx2hr6VZ2PYMFk5iPdhgz7z6x4Mg3udJ911KUj7DLyy3r
	hB/bcEhX9/suwl8nFEx6tEP4yAnYjARxlY7nnQrEbQrnaoGY0L1ZqTNXmgpaq67qOyTtF3OLDeq
	XxYeAGHielzcN4h0FbdHZSt+dBELpdAoHzbbt3ZZvK6qMN7PjC1uSTpu3TB8VdtTZAut8eqTiCv
	SPrv+pucbdYRg8uAa0rawtjQ0bZXEfSbYgy+SY7WB41y/17Ts1oWkt6DS6UJInRzkrW7P5Y8oqi
	0LIld0ipI4Vsk4flT8Y/s381ua+GO+STf46l19rbbR2q1F+/PAzjaziuYQAb4ZMLln2oOJ7dx/8
	lbqng==
X-Google-Smtp-Source: AGHT+IG4JeAa46uy6SUlbVukzudlbhIwHtOjEK6mV3glK8apPLjD/3Y6qi1SnMN2NuRbMMnv98db7A==
X-Received: by 2002:a17:907:94d2:b0:b84:201e:cd3f with SMTP id a640c23a62f3a-b84201ecd98mr40078366b.11.1767603707608;
        Mon, 05 Jan 2026 01:01:47 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0ecb9sm5384010466b.56.2026.01.05.01.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:01:46 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 05 Jan 2026 09:01:49 +0000
Subject: [PATCH v6 13/20] regulator: s2mps11: place constants on right side
 of comparison tests
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260105-s2mpg1x-regulators-v6-13-80f4b6d1bf9d@linaro.org>
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
2.52.0.351.gbe84eed79e-goog


