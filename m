Return-Path: <devicetree+bounces-249835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37387CDFA95
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 13:26:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26F4C3024E5B
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 12:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41F5D33064D;
	Sat, 27 Dec 2025 12:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JVdSOk3v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5FA32FA0D
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 12:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766838278; cv=none; b=RxVe7V/TAtv0ri4Geawl7sNhM5k2snjTivJ53fEwnZMx6/U5/9iNbZKq6A8a+OqWoS0pbDiWeRwhZwcfOKqtN7bFpRg15Eto7PSB215MvEDU1z7j0Ky2rvyUNARgxwKXDDwVZj6BXqqqhoZF3g/Bb3egmUJQPi78HEAx88O51/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766838278; c=relaxed/simple;
	bh=ZETZajMfvd5Cj7AwABnaIbo8YXi84LCz2hhmRM9mv6I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CnbCd+TF/SpGlxKa3DcAMDFoo9PoNClQ807kUAYe8z6dS/D+aXKvUQnYIG2ZrtLNrPGBCzsFwzkE4ABJEyyVehZIA7UyMUZ7z0MLQzQDTj9FhMQwEtjcF1k5Rcjc3UKGbQ9L3iL3kONy/LVmgJZcnCY5AtPGytooL1DbzODSOus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JVdSOk3v; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-64d30dc4ed7so9020623a12.0
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 04:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766838273; x=1767443073; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ydYm6Jwl4gZ6fxTGOTSVWGkOP7GwrBDA3cOK9JtPOwA=;
        b=JVdSOk3vCMomAwy8cm71LE1sMdttZxiV6D9ZzAACcub7eaQ252VliCAxzqQrCPeezu
         GLNKu3vWJNb6omFnwI8kXbNCaZpexqVadyvlqn+7V0bLHxxziUa0d1urTvxGHNSWqMCn
         7vpkNm502YsFg6w/dDiIlLPrvImSHLbfZ0vFOR79xW3rHhWiTda4cAw7yoiIsB+DWWCG
         TXW8uIWkzjS4R9YDX6mFDsrFFl2KTi/+Z3ixRRh4UaaUSU7OC3HAI34kNArNsVaz49d0
         eQiO4p81sPLfAJN44j5/zHIyjeZ1iJNb0HTxLRGd2dFaP5yiZb998QS1b5g8p2I4+byl
         TZww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766838273; x=1767443073;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ydYm6Jwl4gZ6fxTGOTSVWGkOP7GwrBDA3cOK9JtPOwA=;
        b=ul/MWphyZ51M7zQqlXzW1iNctP5yKU/7CCHX0Qa1DKDqp0tl7MUb+NtnNRscBDOuC8
         71KoHxe78ITMVIlMRLU7xjRYqzIBhBvHsqHLxqc1maP7DPnzUzb0k56yNR3HGt5GySBR
         bO1xDrIRazjv7Ep5I81K32eVtKBbfj5OtPum0HwLjw2QrKVSut501nxpst9DgqtlvOHm
         aSK7RoKYd9r6EWK9XAK18rCUk712SlnTGdOKi3UtifSTV1lmTmhGgsSJaxlkpKR6vz1U
         9rUT0P43oOHC5hyAhgK/OqzkoE4xDuvnyAfaYKZK+wm1sCGgjQVz2iiAQK0acONMiNR9
         PxGQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAtLfChKQ4MFc3anFjq1n7SQR2qLPk7ogBynAxvgSYRr2KvoLrvHbd2OlpVas63jKkNiN8i7gMBaKQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwEx1w9/z65gEiK7Tl7oq52tIm0lVROM9ZhFd22QsJinelBSBwd
	cJhVyru7R3taNV9Nh4P8qqvL6LqywwkRXnoa+oSTSOhQHbeVucqBngClB0mfnHffMeY=
X-Gm-Gg: AY/fxX67ZNErDQNiGAkzYO5WqXacGdPbeKTFjqOPfAjIBuU5b2zmTSNCpFK9ogBh5s5
	K+NhATMjCxuL6+NxsjY1asaoV5Bvl4eZl0oby6ZEXG6Upx4q5wEkanOZrjnaBjsokZzY5UQzebg
	MhD7x2T1M9c7OKx+/sGKWUmzQ/ZelzXcq0iORXV1PRuuag7jNQ67B3Y3u+QB7dEpukGrmv26oAt
	c/8nTl6oazgyvGObcu8t8HHiia2gMbzR+QInxkLQVHeSsA1KviNMtO1qOxwuk0bJzguf2dk7mXh
	BGOeC8WCQ5h0ZvQpOdnOLdiEpRw3I3VtezjU1t2xPHA6ib2njpY4asXKS5l08Q3O78Azo35rCJ2
	AM55McLdlYtF0m7kE3KbqGeoNV7E/05XhUpProiLMDdQC82iKg1VYeFOH0QclkscHDvvi0EHEO6
	weos50wlDdBR+rhTX0rweVc0tKOi7JmSM9NtObAQdJesR3Z/24xwtyvsCE2F9z7B5L4ICXZAEIY
	JHSMw==
X-Google-Smtp-Source: AGHT+IGmVBStv7QqUeeTdiGjFu04kQuUG0+cc+BTzhSqsOpYCHbA58GXVMsLwp+XBrPv+6vtCMAYWg==
X-Received: by 2002:a05:6402:4414:b0:64b:70cd:ac2c with SMTP id 4fb4d7f45d1cf-64b8ede3550mr23179595a12.32.1766838273410;
        Sat, 27 Dec 2025 04:24:33 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm25932659a12.31.2025.12.27.04.24.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 04:24:33 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sat, 27 Dec 2025 12:24:32 +0000
Subject: [PATCH v5 10/21] regulator: add REGULATOR_LINEAR_VRANGE macro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251227-s2mpg1x-regulators-v5-10-0c04b360b4c9@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

REGULATOR_LINEAR_VRANGE is similar to REGULATOR_LINEAR_RANGE, but
allows a more natural declaration of a voltage range for a regulator,
in that it expects the minimum and maximum values as voltages rather
than as selectors.

Using voltages arguably makes this macro easier to use by drivers and
code using it can become easier to read compared to
REGULATOR_LINEAR_RANGE.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
While this commit doesn't introduce any users, the upcoming s2mpg10 and
s2mpg11 drivers are using it.

v3:
- new patch
---
 include/linux/regulator/driver.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/regulator/driver.h b/include/linux/regulator/driver.h
index 978cf593b6624228fe1fd9c2a3e186b53ef172f8..977755db64c6dfaea7246067eab0d9a2971caa01 100644
--- a/include/linux/regulator/driver.h
+++ b/include/linux/regulator/driver.h
@@ -53,6 +53,11 @@ enum regulator_detection_severity {
 #define REGULATOR_LINEAR_RANGE(_min_uV, _min_sel, _max_sel, _step_uV)	\
 	LINEAR_RANGE(_min_uV, _min_sel, _max_sel, _step_uV)
 
+/* Initialize struct linear_range using voltages, not selectors */
+#define REGULATOR_LINEAR_VRANGE(_offs_uV, _min_uV, _max_uV, _step_uV)	\
+	LINEAR_RANGE(_min_uV, ((_min_uV) - (_offs_uV)) / (_step_uV),	\
+		     ((_max_uV) - (_offs_uV)) / (_step_uV), _step_uV)
+
 /**
  * struct regulator_ops - regulator operations.
  *

-- 
2.52.0.351.gbe84eed79e-goog


