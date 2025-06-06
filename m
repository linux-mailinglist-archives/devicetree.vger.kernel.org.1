Return-Path: <devicetree+bounces-183383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 925DDAD0485
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 17:04:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F079018866DF
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 15:04:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04DB728A1E4;
	Fri,  6 Jun 2025 15:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qCc9zrTZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35384289823
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 15:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749222200; cv=none; b=BS/788xiNufE06YzQ/LgbHP+qw/zJdyo4k4GNtmwfCWBxHJSUaoF3CkpabZOc9nmO/eEsxcV8FFvPXClsDf8PUAmtD33K5FE4UGl/7OY+kt3r2qHsBECyaRZKIldzJimUz14J1op8K8VS6bRXltlqHhvUByr39mphYZAf7c8zO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749222200; c=relaxed/simple;
	bh=s3mSTfiKouX/DXZqGMbD6vxo0PP5K4YwGopbgIII0PU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h0M2hwKFkrOa62swIvSA1UzyWBOusNfJ0hobXTWXElEoIlcJW7/OC8d7H0FoylEOeBJBteM8vjphJhmiyuOHqD3mxk4PNUDacjRh9Gbcc5uwKiB6r4UWUGagnK0ML0VNDR+Gk5MFDouTu7v0u2vKzmlOhk3WSulGyd447bAkIUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qCc9zrTZ; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-adb2bb25105so348919766b.0
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 08:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749222194; x=1749826994; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hw33Rl+thTuvgJB34fURNPMx+D4YtoSUdiE6dWyoZ50=;
        b=qCc9zrTZUy+jC1tXAdLtxAeJ4gW1DtYGWMzEaslr52+d6b3AmYMSWKceoPajTCLIny
         D5dbExTZ2doxdE7gfrpkPSWe6hP/aKceQvYKcKseeDmjI2Yuv/tKAuCgAKmUXjpw8p8N
         oAJFMaNPOZwHF5vXL65RAs+gV5YtcxrPH3SwluArm+jbY6+gHKGS+1gNwCrL7XQq0sEt
         nFC+Ty/1/yfrSiCbWTdKhy2VS3R2dE1d5fD0LeevpOV9cp97+LJyzTPvYf5epoNVi/oK
         JEryjrUYKq1iurHJetyHkTfWHwGzwxjqKIWyv4RrC0ZSdfQ8sIDfWn2WVBhECokn15IJ
         gUdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749222194; x=1749826994;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hw33Rl+thTuvgJB34fURNPMx+D4YtoSUdiE6dWyoZ50=;
        b=fDu6bA99KsIAWKAtiTZNIpuyUDH3dplclRkdzZJegyVcMtXMUS7rbTh2HdP5JYD5xp
         2YggLlh3VkVZW0JlZq1JTsP1gNPL3TxqbFVuo3fN1rjIXUymZMxHP9tPiMCIdn7hRfjT
         joZtPNe2Pc89r/1AP0j3ccrvtYxQ2zXaUxDzD/K95cQMNO1zip0+G6UQZ8kcPMM2zelq
         AnIsQFLXxfe6FhrUNB8HVzj0YcNIi1L5W6u5Mhu/9upQ+uvezQ84acw0u8iEfOkqXPZC
         /lIqnbc2VP/Ur+sKHJSguvlPpWvXWhgJi0tqlRjvMpjCUaidOSG91jfaJI4yOd+yQvZy
         kZnw==
X-Forwarded-Encrypted: i=1; AJvYcCVLOLzDeE4sRNiCUA9g5oxqVEquH4XyjsMw7JGAfxVxt7/UwM8M0+ERxHgRYk5M1Nfk1jlksDiRGbri@vger.kernel.org
X-Gm-Message-State: AOJu0YzT+arOEG8QYZLZzbkAar/YQYSAjskxNy4Olqm0FI2+3t7quptQ
	trmpmbGgrtBoQc05CSe2Sr8drnW7UEnCC5BrVFQajBTZT4ZHMu8gvwtJBFRCBf8LSYo=
X-Gm-Gg: ASbGnctsPF+txJtRmbf3aCP1pLIWRoYG/+Q6QSF7IARlfNfFMzNtUEYBUlgUs+KaeBO
	sd2+aqDi8aU2XmNy2SXcDjmz4G0XMrRJfvZ26VtfU2JpcM3Rnlz8qGix29kZduAlqZ14XZlU9uW
	4JpV6Fda4acr24ZQApSMH+vvaMQls2VL6aftsKzZman7zvsPqQrTt+dVsy/xmCcYcZVXUDGzmXI
	aPQl7J1AExq8sk3NMzgNcqxJfUAHq9iGF+WsQQt9LQOBGSa/ASGQ7c37MAd/8YIj4yP8ORyOEKf
	umduWWmS0dhOr7EaqKlj8eR0YIho1KvdLILnSVlKtNz5ecyvyP1uVlAwPtnUe4Wz8FblcVLhuRm
	IHs2gAkEJyF4lS5fCgMDTP//pYSJWBzFkUDwuhhJiGm9F4A==
X-Google-Smtp-Source: AGHT+IHbWi8jsL6tIHBW7of/W9kUs+W2SnVGPOjs734Ix0yZ3GKT9YaBdqKy5cjONZI5b7CnH58irQ==
X-Received: by 2002:a17:907:5c1:b0:ad8:8efe:31fb with SMTP id a640c23a62f3a-ade1abc5eb0mr323702866b.54.1749222194282;
        Fri, 06 Jun 2025 08:03:14 -0700 (PDT)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc38cf2sm127735066b.121.2025.06.06.08.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jun 2025 08:03:13 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Jun 2025 16:03:01 +0100
Subject: [PATCH v2 05/17] dt-bindings: mfd: samsung,s2mps11: add
 s2mpg11-pmic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250606-s2mpg1x-regulators-v2-5-b03feffd2621@linaro.org>
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

The Samsung S2MPG11 PMIC is similar to the existing S2MPG10 PMIC
supported by this binding.

It is a Power Management IC for mobile applications with buck
converters, various LDOs, power meters, and additional GPIO interfaces
and typically complements an S2MPG10 PMIC in a main/sub configuration
as the sub-PMIC.

Like S2MPG10, communication is not via I2C, but via the Samsung ACPM
firmware, it therefore doesn't need a 'reg' property but needs to be a
child of the ACPM firmware node instead.

Add the PMIC, the regulators node, and the supply inputs of the
regulator rails, with the supply names matching the datasheet.

Note: S2MPG11 is typically used as the sub-PMIC together with an
S2MPG10 PMIC in a main/sub configuration, hence the datasheet and the
binding both suffix the supplies with an 's'.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v2:
- add | to vinb*-supply description for better formatting to mark as
  literal style
- mention GPIOs in commit message
---
 .../devicetree/bindings/mfd/samsung,s2mps11.yaml   | 70 ++++++++++++++++++----
 1 file changed, 58 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml b/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
index 0b834a02368f7867a2d093cbb3a9f374bb2acf41..a6a10d23a480b460c66be2df5bfdef5ea3024ce1 100644
--- a/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
+++ b/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
@@ -21,6 +21,7 @@ properties:
   compatible:
     enum:
       - samsung,s2mpg10-pmic
+      - samsung,s2mpg11-pmic
       - samsung,s2mps11-pmic
       - samsung,s2mps13-pmic
       - samsung,s2mps14-pmic
@@ -70,21 +71,46 @@ required:
 unevaluatedProperties: false
 
 allOf:
+  - if:
+      not:
+        properties:
+          compatible:
+            const: samsung,s2mpg10-pmic
+    then:
+      properties:
+        system-power-controller: false
+
   - if:
       properties:
         compatible:
           contains:
-            const: samsung,s2mpg10-pmic
+            enum:
+              - samsung,s2mpg10-pmic
+              - samsung,s2mpg11-pmic
     then:
       properties:
         reg: false
+        samsung,s2mps11-acokb-ground: false
+        samsung,s2mps11-wrstbi-ground: false
+
+      oneOf:
+        - required: [interrupts]
+        - required: [interrupts-extended]
+
+    else:
+      required:
+        - reg
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,s2mpg10-pmic
+    then:
+      properties:
         regulators:
           $ref: /schemas/regulator/samsung,s2mpg10-regulator.yaml
 
-        samsung,s2mps11-acokb-ground: false
-        samsung,s2mps11-wrstbi-ground: false
-
       patternProperties:
         "^vinb([1-9]|10)m-supply$":
           description:
@@ -112,16 +138,36 @@ allOf:
               vinl14m - ldo21m
               vinl15m - ldo10m, ldo22m, ldo26m, ldo27m
 
-      oneOf:
-        - required: [interrupts]
-        - required: [interrupts-extended]
-
-    else:
+  - if:
       properties:
-        system-power-controller: false
+        compatible:
+          contains:
+            const: samsung,s2mpg11-pmic
+    then:
+      properties:
+        regulators:
+          $ref: /schemas/regulator/samsung,s2mpg11-regulator.yaml
 
-      required:
-        - reg
+      patternProperties:
+        "^vinb(([1-9]|10)s|[abd])-supply$":
+          description: |
+            Phandle to the power supply for each buck rail of this PMIC. There
+            is a 1:1 mapping of numbered supply to rail, e.g. vinb1s-supply
+            supplies buck1s. The remaining mapping is as follows
+              vinba - bucka
+              vinbb - buck boost
+              vinbd - buckd
+
+        "^vinl[1-6]s-supply$":
+          description: |
+            Phandle to the power supply for one or multiple LDO rails of this
+            PMIC. The mapping of supply to rail(s) is as follows
+              vinl1s - ldo1s, ldo2s
+              vinl2s - ldo8s, ldo9s
+              vinl3s - ldo3s, ldo5s, ldo7s, ldo15s
+              vinl4s - ldo10s, ldo11s, ldo12s, ldo14s
+              vinl5s - ldo4s, ldo6s
+              vinl6s - ldo13s
 
   - if:
       properties:

-- 
2.50.0.rc0.604.gd4ff7b7c86-goog


