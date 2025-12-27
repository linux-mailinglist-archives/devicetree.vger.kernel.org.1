Return-Path: <devicetree+bounces-249838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D0BCDFAB6
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 13:27:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8AFEC3030D9E
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 12:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 972A6330B1E;
	Sat, 27 Dec 2025 12:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uaqAa0Ny"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F9B33033B
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 12:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766838281; cv=none; b=N6jcmoMhGFGzvmRKeql0RROCnW/+8wASq4oBzOXYrfMUPnpj5McYT+MPdpNtPJZeAi1PtuGY6TsSqhEsfzDWx5RnVQjfTjn7Oxcb+5ruL/NfYzxwZ19Jznq4CD29BJDbrJfLyCTi0qL9u6LiSXErgrh6jEBSpL7U6oG/AkCj0NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766838281; c=relaxed/simple;
	bh=e/SiWjAnIf9n3ju1+W9LofDtIoMCJ1iK1OR2/pq7g/4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XqXrn3wbpW/+zv1JuFRQULaogGW7e8wG+6qPRWsjrwxGI0vghMMnU8ThanIYF/TLDyl/UAAIXxkvwNh8oCsaDBBt84vCzyUm80gPnM1HCuCwU3TsunPtHWubo4bwZLQO5ro6tmwZ9fWa1Q1Zr3/H/1MGFFsRND/1IWtxsKY/kE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uaqAa0Ny; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-64b61f82b5fso10319030a12.0
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 04:24:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766838275; x=1767443075; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZoLuiqrhFtLQqv/1rhd/SpsoL8e5z9S5UPDgQu4V1bM=;
        b=uaqAa0NyAXnC6DivFTOCG5MkBvSoGl9LYeqAKBVBLPAcRjntCGsnx7z4C1TE6sWBi6
         tirNm+L4sMdUNEDZMxD5tcfUpu75iI7CQQLh4lNx+CkJyCJC3EnaAhh837lt3G5bWan1
         M7ReAYSQQ27n8sl2QlvqXbTef1YeE2h4NWU8bifVLskzCPfyxGDCoCTt2e4F/FI5P60R
         LLlgRY2qk6J9dKG/bXyhWlhxGwxyea/ef/Ml2ZUc77gQPdSc6w0cCcz6bKK8JUhLXp+y
         jpUPwzQ2BV3s4BbOSGHfFc9gos32ez/ZY53Q43vglEuYttGXKsL7g+oS5E9JySEQDsU0
         c9mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766838275; x=1767443075;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZoLuiqrhFtLQqv/1rhd/SpsoL8e5z9S5UPDgQu4V1bM=;
        b=Uec/nikB1q+q6eYHeZBSfnTkF0ICPZ/R0OWK+Qx0SpTyg5qm9Ji0QWpFncuXIl00xQ
         zvbUqgR+doPX3FOqcSBiNMSnJ0CCBN0RetMS8yi5IyhnfK0o4AdapsnkwALbu7HCeNgY
         RpO8eErUVOaYwWAKj3eVj+S9Z2NrIDVCxJ/HjTFmy1mqq1+WB3TLgkj+shDcra87jEN+
         VLCZBTduePZaMIAQ3bO34lzCU+6kgY1CjdXxjNiqguLvV/s9Wnfc+kpe+S1etA8ZrL2u
         x3m53rgpve1GcKFnxuPE1LfaXGczyqt0T5F0kSpIj2vAlWLNikuMr3HP31QgviV0FGq+
         UjoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZnDtfaraxYc142Lm+pNwGSGCXbfW00SNS2rOsnbERqP2WvzNnDAgP0ss7NJm+ZfzAfaVNghWwDiof@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+28i1qJPAGFqReP/in2nbN3sycC8btmNmD7xsqlivRP8K7aX3
	xzhWkBFQLxkLjB0UB65eKD5913LfOQJ3B6MiqBwwj7wRDuEwFOpD8/MK5I6MdlPsRN0=
X-Gm-Gg: AY/fxX5H4BuKhGpjfUjSjpK2oirTvcA/+ITpbcy3rs+J4aYFBBYIQamFWesQp1VL17w
	tTgOV7aSwv16pxGpoHn8lhNGSLOGEo15Pz9P23twmNl+GNoBjXynCrwVs9eDWMN9StwJi0zv2nH
	tvzmPlH4IFrZjEbkmmO68of3+FfrevHkQWYqVqUpsYmJTV2IRP+UR0intDuGUfT8+yWEMEGlyH1
	pH8OAGwgC4WZEZijLsVVQoFdDw7uKDa9uPod82G81MR4xDEQOFge5qUJaAcZ4Ugyr2rw39UQaCp
	7yMWIjzmJ2XDwYz+VEAdArhQe4g87/WDd7Bl0Txf2bPmddoTjqDfVbvb8X2rV6r2jepjFjVYiMC
	/oJ6/nD1OpQdkfwF5oGaAwu3XvIGZfqOISvnvYIku9Gq5wMzcI1NLMfOvDLcOkKcNETtxLTxZJT
	sNLqnnhDd3hZUXiFixfAZyadXp1NNPtp4xLJa62FJ/Vlx73wcGisT4w3Hj0SiP10uVD5ETKJjkW
	w/X1A==
X-Google-Smtp-Source: AGHT+IH7wAJ/P+jJVtNfBeGnpt1N0Pf3Mi2lV6vQQtLZoDkUjgfiXG+M7CBhMUY0mH3GH8enwH+fbQ==
X-Received: by 2002:a05:6402:144a:b0:64b:6e44:2c6c with SMTP id 4fb4d7f45d1cf-64b8ec9b1d3mr26064195a12.16.1766838274892;
        Sat, 27 Dec 2025 04:24:34 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm25932659a12.31.2025.12.27.04.24.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 04:24:34 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sat, 27 Dec 2025 12:24:35 +0000
Subject: [PATCH v5 13/21] regulator: s2mps11: place constants on right side
 of comparison tests
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251227-s2mpg1x-regulators-v5-13-0c04b360b4c9@linaro.org>
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


