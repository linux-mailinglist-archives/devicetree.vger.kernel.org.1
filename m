Return-Path: <devicetree+bounces-251390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AA0CF2997
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:06:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 805A33062CFB
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A4B732D439;
	Mon,  5 Jan 2026 09:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Kpym1xiZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167D832BF3A
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 09:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603712; cv=none; b=G4gRL6Je+KbHUH7Zx1NUMbJKgtKo/QGVUu8JyA3BjNfGITjN5G0gGrEjNE+gRYS4JbHhutFZ6MH+sN8cIrolNSWsb6xv824vEjMWLuQEu8ETAYkN0GpFUG0+yLXT2NezU1l8Ogna/fDB/lSBWLfY0IIj+jieu06yGxDMtKUu/R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603712; c=relaxed/simple;
	bh=ZETZajMfvd5Cj7AwABnaIbo8YXi84LCz2hhmRM9mv6I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Bj0b+ymuQk/LxBwtaQ6eqFzXf2mXgNh7SC0u4yf9C8mved+Jztsj5A2ILaZisSzDiorZmcbNcBpOr39SMHIsbA62xy62/cmr8B4XINFzD6LfTUCEmlel9Hi6FzQiybEkK7uKVugxYRLkCNrefy6mRx4yDvo887tW0usPTbI8Yyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Kpym1xiZ; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b79e7112398so2442390066b.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 01:01:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767603706; x=1768208506; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ydYm6Jwl4gZ6fxTGOTSVWGkOP7GwrBDA3cOK9JtPOwA=;
        b=Kpym1xiZuf7cScimQeO1H/x48ruE1eGm8QYvaGfgU2fXZxLzpuuOnFhJ+1EBs1xjzP
         QaujlZYVxGg/h/y1JugiVeVo0CDtvZXhY0qtVWGOjgF3UQxuCnUtDwGBJWbQzIakKeZx
         daYKOAT0fvh007ZaiNjCyOdYJyMOgXg/kVcGqJdwtO1J8ZF8jT56kt+N5eBRw2nNaTQ3
         76xF3vFnHnqcKuMs/wIIqlhpQab1w7tfaCSBcfE4Ca2z2UCdRIF4uocLLsTxmp8y4iwf
         22WB9wHzgDq7tpJ0yGPJQK9sVVhVJCEVyy/BfBigZxj2rBvVX41owHbMBcyuZJOmZehp
         2GnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767603706; x=1768208506;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ydYm6Jwl4gZ6fxTGOTSVWGkOP7GwrBDA3cOK9JtPOwA=;
        b=WfAMCno5zOw4a55rrIUHFf2wll8Hjvnaz39k4E2LYWIyX9v0Yf1skH271skOcM2yeV
         2B1o2OffixucFuQLoLnKnL8clClktNMDNDJIWJajDvrOKwgLmMwKbZKMwuHeOidLDF3V
         WSPcCmkGBRUsmO1Kpk4wuMpq4bzOOtGcha+jZZ0JdaVdX6LrsnM/kK9gyaBkzTx6T+rS
         2YCfc8ils+5P5z1Hurxw1/SnnPevhLWuEE4zpP8rKU00IJzUjbKr72Pg01htBfhtOCoc
         +k2MCaI2mHOQXCPY6VmI6T0pBCbtsB+jq6efHkzUducigbJvqV03MTkdIrpTBI9QU0Vq
         QrSQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5IwD6pTGiaQzn750fJjx6f95VaQIzHVbkCSGheyeuleOkKAVlTalz5aKqZUkY/AwkjVhFCPfbmOEE@vger.kernel.org
X-Gm-Message-State: AOJu0YxA2sCfFVTsSPfNX1y3eY2Zdz7Oqtun4XjAmtcYmsg0e+syKYQA
	hAkV9Ky41MFhG+aKv5d0Sd3JD/2sEJkG4A1yUPlexRCe9VcJ+4zUQBrDcwG8xQr9Fkk+FN6xhEw
	Rm/VpHmA=
X-Gm-Gg: AY/fxX7atdWce4v/eHvoT8MAg/3lsnu+9nI+jyxSk2qJhsl9+SNhx3xOsG6zSi1o6x8
	a7aUDpTrfalSFeKrSwI43DnBvFtqU09Pu1+Fnw6msBDYx5nVMnTi35N02DDdwrtT8mA50vEz4Gk
	z8+hv8LLGcIKd0rIlziQxSC5VJ7w3LFi8nbi78sioRY1wtLGZ3YU4Th7NQ2dYQhjr3cFqqXuVdU
	SDRnjp/x5lZG2YL6a2L2aQgsG4Y7/tGbVAli/6oc44e0n2aRhM1G1pUJ5jmJTWF7byDCq6x301h
	K200NbTk36EUq4jpU0OUgQv4J6KvCSOeYq3rZ3glZ87ioi2uUGoAASZb0X88STP66D0Ghhit7E6
	qjN0vADANHH+z2Ld8wdullTZ/XAF8opMo18xdI9EoLJ0qGXLG2qEYOs1CUBr7wulpTNb+eZoI0w
	4tqFShMWPWwg+r0rZVB8nxUDu389UcBBMt7Mc6d/C7SmsAGJXmFZB6GRsoKSHO1eFPgmD4MJpV3
	UfYgA==
X-Google-Smtp-Source: AGHT+IHlDkTLEXnDdmXJOAB496ZocW/7AWPPvHl6kR9niuqDxJVFfo22iK/G7e68AW5rLvwMIepbdQ==
X-Received: by 2002:a17:906:6a1d:b0:b79:f8ae:a893 with SMTP id a640c23a62f3a-b803719d4a1mr4700447566b.49.1767603705564;
        Mon, 05 Jan 2026 01:01:45 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0ecb9sm5384010466b.56.2026.01.05.01.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:01:45 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 05 Jan 2026 09:01:46 +0000
Subject: [PATCH v6 10/20] regulator: add REGULATOR_LINEAR_VRANGE macro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260105-s2mpg1x-regulators-v6-10-80f4b6d1bf9d@linaro.org>
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


