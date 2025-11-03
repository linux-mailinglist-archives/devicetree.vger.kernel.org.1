Return-Path: <devicetree+bounces-234494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B2675C2DD44
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 20:15:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6AC041898151
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 19:15:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30E8D324B10;
	Mon,  3 Nov 2025 19:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d6HenyUp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647303203A5
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 19:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762197292; cv=none; b=nKz9SJYOptD8lp8OeFsIIkTSpjMen/p5tjtRxawtChgV60AXXH+CiiT2aEKdA8HTWPFGK2jr5fWWJazS96JlC2dByBvuXuET3tQa2tht3Ra3lJdRA5aGrq43wjGyFHFlIhBwjFUhF5MCZcCT8r8A8c+quHeBKCH0jXqR8S5axx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762197292; c=relaxed/simple;
	bh=e7VXM6Vq/efnjQz1ILRI3v4/VjtY6t/RaBjA4AYjpz0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pPvbpkYWU4KuxzGLAKqARd3QxI9yzJe2Y2duvvDu7SKBChf7pBlFdKPkLDLL7T8lLZdXsDVKy4+f9fb+cpA2pyKVYnPZKF62wQL7vzaiYHSsyfUKek9nwt7gtdN2XbOQ7sqbWSwhUjngYTIWAzG5pGpyU0vLrylb0W/2E2YvElw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d6HenyUp; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-634cef434beso10677818a12.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 11:14:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762197286; x=1762802086; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ABQF+EmreEAWsZQ+SiZe1Wt85VEHsER8DTZu8Adt3i8=;
        b=d6HenyUp5I8FOV31eHTUMHdCNbs4mYTOZ9YBnvbQSTB7oJgboI/FhuZUr4H/rdrTtH
         k5PX7fJDjZBKiAnqTDsUhFnMxcxsFs5lWo/znF/RXPKRQ0r90QiL9X5S/9zYM0Z0LEjH
         U0fINVtOy88DkRRb2GV54929nqkqELPlgRmnU0LhDecB3GS6WoToIVJra8kCCekxQ+qX
         eekwLNY+8pZveUzkCNdGSfes/aNZoQAL1JIWKCYOsv91cjEdh8L3IYmo6RTAFWDFO3kh
         u7ouLaxbbU20nHQ5wpfz3i8MiuPG56FsKVRKSpad8iDFnB6uFbNT7MNT12vCpefnRGLN
         V8KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762197286; x=1762802086;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ABQF+EmreEAWsZQ+SiZe1Wt85VEHsER8DTZu8Adt3i8=;
        b=sasFNMKbMFvY2y02yPN3k/elzZr7uUUqY9rlpSQg0RzjjQM6NWhtkxtXHyKhrejkL2
         +wVfSlMOouO/9A9FjqZQNkG1hQi9+FTAnhSsQfECS1rhorhNismdCtNcWxiWlZs+aeMv
         ikd9k49GJbIr4dWKAvlGBb1t9hA0Hp/yDXbNR8EeK2vMq2G+meiPoB2YZ5kv/ReGhrki
         ftARPonIEuNOAa7j9lF/X8Ij1JalVnq7B0JUvE8jmr9nQ+kc1xl6Z4fChgwQfm05REsj
         gJ2bM0nsltSMYg3nWb3dtQMwSJX9Cc40gYvRnysgsKC7yLPWoaL2bQ+5URPAECpolEpK
         09zg==
X-Forwarded-Encrypted: i=1; AJvYcCXDE1bGSzNUlWhcL1Tcg0ue2y82ZE1bbsbVx0+BvYlnbE1x+w9Pg/09sv+xXrQXgbXJ7bdnK9KSCtf+@vger.kernel.org
X-Gm-Message-State: AOJu0YwqKxz+0HX15aKXUd2DRLLCWTNHi2Yb7A+GmLB9bYRX3HA7M7eW
	TRXNiQK8cIHCkDx3GILv5Cw7jbfYgYv6p+py5Qkmc8imG5jk4pBUTFH5C+YdJr+pi7s=
X-Gm-Gg: ASbGncsM/ZxxkF8tAdpJ2lOdZezFDvD3Ny1FPwvEcZCkA5PK9hm0XHoe4q4eTqrJCGq
	N3juYX8kiOpDwXRNC9Y5L+b231HDpP8dZlfpXlDrrO4OhvQiI4u5P/25vR3y3IoRZWZSzkrDvMu
	YvhJ8fc8Nmm71/g/gl/16p1YfDV7HKioXtpzDgfOeH6fGQ/sF9pzdLktivF4jTVD8OegsZpqrhu
	HpbCiks9PqJa4VWt3Re9Qr3w3nausqSib3MSr7JJeGYF5hE5YyoGibmW+ZPCl/aLDTw3E4yvgk8
	XLUdtfya6Fn8N9x2LJ1mdJMJfql4s3mh6K5Vpb4Jig9cBzoIxoc3ZnFYLS10rPGoYICluboIxdq
	siRBvCeSwDPZ1q9Jo4AZLU96+5RBy7+u9jax7PmP8abw3rNfIM0zdN1gBf4CFD9xBO4qLMJjddd
	KrTuQJ8KbWRs3R9/zX78fkHUGfHoPLW63FnxQc3zcuk/oBY03qlXaQDY2IHQczTt/KQmo7FYU=
X-Google-Smtp-Source: AGHT+IHei/xdh4dX7CczGjh2MRHVq35xrr88Jy3aisIcVsaRfP81u8CKnx7idkSNn+v/T3BCn0deWw==
X-Received: by 2002:a17:906:9f8c:b0:b72:671:b2a5 with SMTP id a640c23a62f3a-b72155a9e2emr58236066b.3.1762197286331;
        Mon, 03 Nov 2025 11:14:46 -0800 (PST)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70b9f29c8asm466765066b.8.2025.11.03.11.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 11:14:46 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 03 Nov 2025 19:14:45 +0000
Subject: [PATCH v3 06/20] dt-bindings: mfd: samsung,s2mpg10: Add
 s2mpg11-pmic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251103-s2mpg1x-regulators-v3-6-b8b96b79e058@linaro.org>
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

The Samsung S2MPG11 PMIC is similar to the existing S2MPG10 PMIC
supported by this binding.

It is a Power Management IC for mobile applications with buck
converters, various LDOs, power meters, NTC thermistor inputs, and
additional GPIO interfaces and typically complements an S2MPG10 PMIC in
a main/sub configuration as the sub-PMIC.

Like S2MPG10, communication is via the Samsung ACPM firmware and it
therefore needs to be a child of the ACPM firmware node.

Add the PMIC, the regulators node, and the supply inputs of the
regulator rails, with the supply names matching the datasheet.

Note: S2MPG11 is typically used as the sub-PMIC together with an
S2MPG10 PMIC in a main/sub configuration, hence the datasheet and the
binding both suffix the supplies with an 's'.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v3:
- move to new samsung,s2mpg10.yaml file
- deny 'clocks' property
- mention NTC thermistor inputs in commit message
- move all patternProperties to top-level

v2:
- add | to vinb*-supply description for better formatting to mark as
  literal style
- mention GPIOs in commit message
---
 .../devicetree/bindings/mfd/samsung,s2mpg10.yaml   | 49 ++++++++++++++++++++--
 1 file changed, 45 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/samsung,s2mpg10.yaml b/Documentation/devicetree/bindings/mfd/samsung,s2mpg10.yaml
index dc06333a4050af69297ac3cae0628a0fffc3fcc9..6f0912989f2eff12d04dea03b3a067529327e8d3 100644
--- a/Documentation/devicetree/bindings/mfd/samsung,s2mpg10.yaml
+++ b/Documentation/devicetree/bindings/mfd/samsung,s2mpg10.yaml
@@ -19,7 +19,9 @@ description: |
 
 properties:
   compatible:
-    const: samsung,s2mpg10-pmic
+    enum:
+      - samsung,s2mpg10-pmic
+      - samsung,s2mpg11-pmic
 
   clocks:
     $ref: /schemas/clock/samsung,s2mps11.yaml
@@ -39,15 +41,15 @@ properties:
   wakeup-source: true
 
 patternProperties:
-  "^vinb([1-9]|10)m-supply$":
+  "^vinb([1-9]|10)[ms]-supply$":
     description:
       Phandle to the power supply for each buck rail of this PMIC. There is a
       1:1 mapping of supply to rail, e.g. vinb1m-supply supplies buck1m.
 
   "^vinl([1-9]|1[0-5])m-supply$":
     description: |
-      Phandle to the power supply for one or multiple LDO rails of this PMIC.
-      The mapping of supply to rail(s) is as follows:
+      Phandle to the power supply for one or multiple LDO rails of the S2MPG10
+      PMIC. The mapping of supply to rail(s) is as follows:
         vinl1m - ldo13m
         vinl2m - ldo15m
         vinl3m - ldo1m, ldo5m, ldo7m
@@ -64,6 +66,25 @@ patternProperties:
         vinl14m - ldo21m
         vinl15m - ldo10m, ldo22m, ldo26m, ldo27m
 
+  "^vinb[abd]-supply$":
+    description: |
+      Phandle to the power supply for the additional buck rails of the S2MPG11
+      PMIC. The mapping of supply to rail is as follows::
+        vinba - bucka
+        vinbb - buck boost
+        vinbd - buckd
+
+  "^vinl[1-6]s-supply$":
+    description: |
+      Phandle to the power supply for one or multiple LDO rails of the S2MPG11
+      PMIC. The mapping of supply to rail(s) is as follows:
+        vinl1s - ldo1s, ldo2s
+        vinl2s - ldo8s, ldo9s
+        vinl3s - ldo3s, ldo5s, ldo7s, ldo15s
+        vinl4s - ldo10s, ldo11s, ldo12s, ldo14s
+        vinl5s - ldo4s, ldo6s
+        vinl6s - ldo13s
+
 required:
   - compatible
   - interrupts
@@ -81,3 +102,23 @@ allOf:
       properties:
         regulators:
           $ref: /schemas/regulator/samsung,s2mpg10-regulator.yaml
+
+      patternProperties:
+        "[^m]-supply$": false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,s2mpg11-pmic
+    then:
+      properties:
+        clocks: false
+
+        regulators:
+          $ref: /schemas/regulator/samsung,s2mpg11-regulator.yaml
+
+        system-power-controller: false
+
+      patternProperties:
+        "m-supply$": false

-- 
2.51.2.997.g839fc31de9-goog


