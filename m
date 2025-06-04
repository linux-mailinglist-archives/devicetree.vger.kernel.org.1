Return-Path: <devicetree+bounces-182809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECE7ACE166
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 17:29:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E9437ABFDA
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 15:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C9551EEA40;
	Wed,  4 Jun 2025 15:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u/3wSDI2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A84DF1DE88A
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 15:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749050761; cv=none; b=EdT9VxjYpVzvkJcwsFTTUvP3Ghfwbw+w5nGsQWIdLLZEgJIL4tw8eutq7DaYC3STU22PoRlMIAlgmRLNRMgB7lgcIsRciEFJZfqxjq0yGp9r0pfUIG336IdpCgopN1iFIjHqSflhO6fOmFK4Vr6cn+3B2vS8dKAFM0OOOC/3TYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749050761; c=relaxed/simple;
	bh=38iyypFvEIDDo+XViI83hfrn7fp3ROVaa2JyQWVHtXI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fJEimfwPol2btQmxOWcONCXIQC82iVgstS9MwxcYplJkirXXKhOCzPFYnVtpkugSPboNa3CX3LqPGumFtfWFw5Vv7HpCh7Xh6REcKM6eRVoTPmIQsql7591c0WXVAomM/fIGMuVLhUvVYSAsBtF241E3z/pLPxYc3yMTbc4MQ8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u/3wSDI2; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-60410a9c6dcso3415882a12.1
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 08:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749050755; x=1749655555; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QHL3sUIzhoW/yqDxEI2huZEz7k/6gYpbh53sq2QOYGk=;
        b=u/3wSDI20VetYzJBc0CaJdFq5W42zu+a5LNRj4z0kHkGckg00rVca3cQOl5nPmSfSr
         bW+S+zUmlhp+0T24YBXIfkzPdEjM2d5J0qdOdaJHwcbFUPC3I2jOZ8TSR0nWrMXs05Pl
         ZcynzZnVRH6btyyKRlDBgS6G+dptTK39xt8lq3EU0LOH+le1PWzI9z8WR8Rtrjly01Dr
         yEsJGISZs13eStjyQwFtTMgR7Zwb1ekeQo4UZ+ViijMuDoE1MA6G27uNtolX7LPttC75
         BkMQwq2LydaxTiBppH/0AB5s+sGko1FwGuBR5Dpm1YexdMDud76f/pP0t4nYFGqf8I47
         RAqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749050755; x=1749655555;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QHL3sUIzhoW/yqDxEI2huZEz7k/6gYpbh53sq2QOYGk=;
        b=wPchvjf7V5xE6//TNI2vsUwSEMQMVdaKL7sDUV8c9unC5HTPQ2dsuTUswIghad5iYw
         uuXj+nZE7cd5cAFWXxcxYfB2DEsXQ4lKZ8jc6BJIdhChbVrZQuEITJK9XsVyU818JtY0
         rM/7TR83CPs5ti8f6YvBDMMKXb0hclZxT2OdMWQVyj96PYVpQktQkN/F+TEQmp8nXgjv
         Lpf2S3iFyl3SrV+X2QgUiRoFtG0VXDIVStobhnE0LIhLCc9Y1FHBXPxeRk7iH/nF06LU
         6eutm76b6WNcVyXJj3L68NokorbbxKfWxLKAJlgrl/058Y8EGZ5snG6n5Tix9r3guXEC
         Buag==
X-Forwarded-Encrypted: i=1; AJvYcCVFds2jNQDozL4l9xVP2YDYGfRn6NfZoGPHiy6xbC1KbQKTeDrIXL4QHFsYs9H7FGI+iG1e6Hn572RI@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1YSTgOPWQnjFP3vs9sPqeCtifHPtG8YjW4cOxORusWLBSM9kn
	lXZtQhFUE9Tre0hijB4zsVONWEeha6JlsoamVgQuVrroYgAmuM260YW+fI99EUVNRFqspBoTIkm
	2a6Sl4A0=
X-Gm-Gg: ASbGncu/hzy3amqHO29YDrlZ/5REbudyhWKdlJeIz4GBjpPZC2OsbNOMjrR2CwOr1uJ
	4OAPiaMNrI79ghH9lMjUvzkQQsn8Y0aaeHRVMaY6EOUuLixGmo29chFIAdaVnQeCCBKyOdgREnv
	RIVNgdDmGn0EHM2ogQSAW+dXnniEj7bvzuL/IZbS3pQB5gu7jwOYAcMxKVVg2hjEhgcrLDkcsp7
	twK7kpKTsoN8blNthV4vCTgGNC1cloin6Vq65+VKnDA8qtuIWojONW6epsiA5oCAvycD2AbHMQh
	F6GKeimHSGOiIN5Ya6OjsUHSpX5CUygTPGL67QwnqWmcwrufaaMfLUB1Zrju+RUwhaFO3Bpio95
	jrGShJW8c9oIf0vrepi49NQ3oI/1/kQTDqqE=
X-Google-Smtp-Source: AGHT+IE5xsg7Femx+fxJUmqis3En5XL3tdeKdVoLZHO6BHxnqgQt3JKQXfamnwt6W3l2CrMDnwEtNA==
X-Received: by 2002:a05:6402:348d:b0:5fb:c126:12c9 with SMTP id 4fb4d7f45d1cf-606ea17d2c0mr3262215a12.25.1749050755202;
        Wed, 04 Jun 2025 08:25:55 -0700 (PDT)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-606ed984f63sm1051640a12.58.2025.06.04.08.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 08:25:54 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 04 Jun 2025 16:25:56 +0100
Subject: [PATCH 17/17] regulator: s2mps11: more descriptive gpio consumer
 name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250604-s2mpg1x-regulators-v1-17-6038740f49ae@linaro.org>
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

Currently, gpios claimed by this driver for external rail control
all show up with "s2mps11-regulator" as consumer, which is not
very informative.

Switch to using the regulator name via desc->name instead, using the
device name as fallback.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/regulator/s2mps11.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index 3b5f6f2f2b11be81f27bc39d5d48005da4afeace..a1bb4e420acf23ed048c356004930c586d21b39f 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -357,7 +357,8 @@ static int s2mps11_of_parse_gpiod(struct device_node *np,
 					   "samsung,ext-control", 0,
 					   GPIOD_OUT_HIGH |
 					   GPIOD_FLAGS_BIT_NONEXCLUSIVE,
-					   "s2mps11-regulator");
+					   desc->name
+					   ? : dev_name(config->dev));
 	if (IS_ERR(ena_gpiod)) {
 		ret = PTR_ERR(ena_gpiod);
 

-- 
2.49.0.1204.g71687c7c1d-goog


