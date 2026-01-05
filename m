Return-Path: <devicetree+bounces-251388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5E0CF297D
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:05:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 564B030550E4
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:02:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C1B432D0EA;
	Mon,  5 Jan 2026 09:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ScigQ+9p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797CA32BF32
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 09:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603712; cv=none; b=UynrE28a+MJxipyhP7h+NAyrPPC712hJMVpmN6nLQ+RDCR9/OdnLcW/V7KVgllRmNEiFtikVHChj9yZZ/2NYjwA2g4YRO5KE6LKLR4mOoVTgXWIsdCSuXnhnLN2ytjxEY0RYf/uRftS3aH2yHvlLwwbOeX3M0Twlmq0I301HvXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603712; c=relaxed/simple;
	bh=6XxroTSX6ceg285T/QjRgJPmV5ju4e9igmyPsFQygJ0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gNxGtydQdRGYXyIb9rGA3rEFjJlVBRzRgtXlks8YBfPVzyACoxtf0tQbwR4rOeEdc2VAwirx7jrXlFef1+8XA+sLioV9/aVRhoR6e+0UPxo4xQY+Ixf9hhI9ssRwJnOVyTD9y9ZDPWH67iJ3u9E3ETFGt140tYIOtgKTUrLPYZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ScigQ+9p; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b83b72508f3so539044966b.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 01:01:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767603706; x=1768208506; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=10d9MioQ6PzKJr2vkHmOG0REtU2UfuxyvJCr4xa57iE=;
        b=ScigQ+9pMifAw9W8DMfDGBzMdlpwmoLb1+sNTbTkpCOIDVI2GE/S003niyR/BJtQSv
         6p/MhFEhIcR2GLTGwYXtK/9Aalc/nCoTXaEpc4mQtASS1o4gq8ns4wRrmKtJKmEgdPX0
         A6FlWtoqhgv2nuxARWh1yWjAiAHeyyydLA864oLP/GvZCMQwCA9QQGn89enbovn4vO8b
         cCxBIRzZB0e+b7L9a0P5FUeE7j45CMq2/gpVM7Vau6ytS2aynJPyhfhAYlqyHSKlvbRP
         +NTZozWVf8P1Y2ZReRRr/vJPohxI/g1VL/uoKSJCWITKgx5h/gry3w7xchdPUsgvSCLC
         WnHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767603706; x=1768208506;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=10d9MioQ6PzKJr2vkHmOG0REtU2UfuxyvJCr4xa57iE=;
        b=Lt5aAGyqVz5I08ciY0Idl8bFptcjqDyOkRfNm/8oo/pRYdytWS3IIBP4WViEL8yqbg
         D29XI2gRMUACEU5HV+yy5hJrOOHpyhAlHwXQalPcg0EkAyzOpo3/5qBavzFrDEKxCcm1
         0w9XCtM9saI85UuEC15LnCMk+RdoSdoYT0/olalMyPmK6kt15wReZNQzgIldu/8rrpBA
         0hD2SbywycEnXRrl0jiDXFPdvK72Ry2bFlZAPcHBl9latHSEjujGvsVLlu9dC8KPwbWX
         GIVe7fysADvJVotYy1IpaouGsroIsHfXEa6fngQTrbuOKLsRdMf3zr/ftlblORaY96h4
         YDdA==
X-Forwarded-Encrypted: i=1; AJvYcCXxT/ZYrOZDxmeoLp5c8g5ZPMctyj6V8x1B8L131IjLO1glcn0A3WqfX4X0dQi8VuMTzgEw87sCYmks@vger.kernel.org
X-Gm-Message-State: AOJu0Ywki6ZTAOVeeWbgzwG4XZoHdGs+3ECh83DggRJQOoz8qjO+yZR4
	Kl2gNgHnagit2tt/GEFpNSV9SW2R+wLgSqq0uSubEcGCpD1m4AVdrnuEhkJaz1oV06vSFyR6rWx
	6IebKJUo=
X-Gm-Gg: AY/fxX5seRdmuWpaVo8XhoFGeMUCRRQwdMCMVVBsljDHli3Emjrj1f4gPd2rSeI2jFA
	kTGByqyQnqJSvcGlvN4NmzR28CKH5s3OXCI+HjrtZi6gkN1xLggS0HZN0k5/m5MdFpQqZ0UoF2Z
	dFsdDBjWO8Ybi8bBUn8pz/+w+vCgkgQHYeZjYKY414F2GUaUsjQQemPPSvzFRwfKvFJFT9YTg47
	2Kdc7u/FCiM35Hrd195w0FnJdE7wXFhv4NUEhTuBVL3TssFix3o9U1RFliz+zPwuMZdRLW2J3YK
	r3ry6O2Hm0Nqr97rfYVuRs/TfdQro0pOZZ6RfrOSOnvt3abTF/UGP4t/6ht72KCC2rQnM1LnZhV
	Gwmn5pxboftSfMc+wMDTaQq9dL809bN4jSA2TufiTFdu1x/jEG1X3IgZZCWDLruOjdC+OcMOGj4
	5LZVBZSt1AwOdaT9DHMv4ub9RgVqTe7PAk3rJySmo/6J/1tMzywQ2IE87KzSOddUgS+V7vaKsJC
	zK0sQ==
X-Google-Smtp-Source: AGHT+IGqO2/A6qUft2Ty36ZkoKJQ250NpUeCgwtCUExj2hkku7DKz2zpfH5WwcKxMWgUdFnRgc8Tpw==
X-Received: by 2002:a17:906:730d:b0:b73:b05c:38fd with SMTP id a640c23a62f3a-b8037183211mr5065467166b.50.1767603706149;
        Mon, 05 Jan 2026 01:01:46 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0ecb9sm5384010466b.56.2026.01.05.01.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:01:45 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 05 Jan 2026 09:01:47 +0000
Subject: [PATCH v6 11/20] regulator: s2mps11: drop two needless variable
 initialisations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260105-s2mpg1x-regulators-v6-11-80f4b6d1bf9d@linaro.org>
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

The initialisations being removed are needless, as both variables are
being assigned values unconditionally further down. Additionally, doing
this eager init here might lead to preventing the compiler from issuing
a warning if a future code change actually forgets to assign a useful
value in some code path.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/regulator/s2mps11.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index 04ae9c6150bd5ae9dba47b9b3cfcfb62e4698b6d..1f51fbc6c7b6e158f9707c04d9f030b9eee5e842 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -1207,8 +1207,8 @@ static int s2mps11_pmic_probe(struct platform_device *pdev)
 	struct sec_pmic_dev *iodev = dev_get_drvdata(pdev->dev.parent);
 	struct regulator_config config = { };
 	struct s2mps11_info *s2mps11;
-	unsigned int rdev_num = 0;
-	int i, ret = 0;
+	unsigned int rdev_num;
+	int i, ret;
 	const struct regulator_desc *regulators;
 
 	s2mps11 = devm_kzalloc(&pdev->dev, sizeof(struct s2mps11_info),

-- 
2.52.0.351.gbe84eed79e-goog


