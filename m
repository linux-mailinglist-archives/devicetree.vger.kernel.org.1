Return-Path: <devicetree+bounces-13916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B79967E15E6
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 19:42:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EB341B20D90
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 18:42:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EF182F2B;
	Sun,  5 Nov 2023 18:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F/uCba3N"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C252589
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 18:42:04 +0000 (UTC)
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D54FDD
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 10:42:01 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-32f7c44f6a7so2240579f8f.1
        for <devicetree@vger.kernel.org>; Sun, 05 Nov 2023 10:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699209720; x=1699814520; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s6FXMyoR2RkXPnTlL3+97juQKdzA3iKTZ459azEjBsw=;
        b=F/uCba3NEC5bzb8IP/RynFGDf+Cka/YY/OydrpQTAEApzF3epbVmB3d2ZH9MeOf5qP
         jpKUdFV/Z+NOp7gzdrnCTjZ12bGC0sxIf82WnGsKFB+jlO7N+HTKYCNP88gPM0qPf2Yj
         e+6Gv3e4yzswfOp9HCGUoDVQyMDvVazOG2jntteZYhSfV27LHnYaZDz4+lrjJYReTZoK
         2I4305hbNGu/zD+pMhv5S57025OINFnVgFWKebnO8H28rvOQ2wFqsfyHFSRwAXsKKXYY
         68Omun9f+cTg0sEUWwQH+Jlul0OfE8ep6eem7Qbey7ptcgmpttDFnfUgXXtjHPbpr+m9
         jqYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699209720; x=1699814520;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s6FXMyoR2RkXPnTlL3+97juQKdzA3iKTZ459azEjBsw=;
        b=NGtaFd9tUiLXqp7n0TQ6sm4gRBy6pwapFsOaMWhfJiFylmoob9T/Zy79m7u4V1/FvA
         ZrskqVVpqNvU/CBwl34+NNhazpXnfo754rQIbfu5WDOjT9/7Vro4crHnXIPiT7EFBdAC
         EVR86/Q+e2j3J1Mtn3YQPgrG4iiG5SdEv+0980YU4E6GBj6v5UMsnFoEOc6xEbFImtER
         OD5vLEIuv0zyETRSayXTMZ7aRhmgPnTF7hsM9+ZKvUMtsw4z3FqEEPHh4jfZ/10p++1E
         U9wtnVBrY2b7+HvV+3fZyIlh5BYdbLs8rCTMNoAe6vGKSh1BTh3Rw8dQSH9J559M4QU+
         9c2w==
X-Gm-Message-State: AOJu0YwQcR5psuVUagfKzXei4El9iUkXWE6TYDPrThBZyAvTiw9EBYeC
	+b2GyN6PhyAH1ciyDyVB29iEvA==
X-Google-Smtp-Source: AGHT+IGp5LTDf9nALATaSVGPtOxssSiLR/V1qZdAhbCJxMJjQpzx3iN0/0oJPilkWq6sFqIXs0ngFg==
X-Received: by 2002:adf:f605:0:b0:32d:89b5:7fd9 with SMTP id t5-20020adff605000000b0032d89b57fd9mr19790945wrp.56.1699209719987;
        Sun, 05 Nov 2023 10:41:59 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id z17-20020a5d44d1000000b00326b8a0e817sm7370111wrr.84.2023.11.05.10.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Nov 2023 10:41:59 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Hector Martin <marcan@marcan.st>,
	Sven Peter <sven@svenpeter.dev>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Julius Werner <jwerner@chromium.org>,
	Evan Benn <evanbenn@chromium.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Maxime Ripard <mripard@kernel.org>,
	Oleksij Rempel <linux@rempel-privat.de>,
	Justin Chen <justinpopo6@gmail.com>,
	=?UTF-8?q?=82ecki?= <rafal@milecki.pl>,
	Baruch Siach <baruch@tkos.co.il>,
	Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>,
	Marc Zyngier <maz@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Jamie Iles <jamie@jamieiles.com>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	asahi@lists.linux.dev
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: watchdog: re-order entries to match coding convention
Date: Sun,  5 Nov 2023 19:41:53 +0100
Message-Id: <20231105184154.43700-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The Devicetree bindings coding convention, as used in most of the files
and expressed in Documentation/devicetree/bindings/example-schema.yaml,
expects:
1. "allOf:" block just before "properties:" (or after "required:" for
   more complex cases),
2. additionalProperties/unevaluatedProperties at the end of the file,
   just before the examples section.

Re-order few schemas to match the convention to avoid repeating review
comments for new patches using existing code as template.  No functional
changes.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/watchdog/allwinner,sun4i-a10-wdt.yaml     |  6 +++---
 .../bindings/watchdog/alphascale,asm9260-wdt.yaml      |  6 +++---
 .../devicetree/bindings/watchdog/apple,wdt.yaml        |  6 +++---
 .../devicetree/bindings/watchdog/arm-smc-wdt.yaml      |  6 +++---
 .../devicetree/bindings/watchdog/brcm,bcm7038-wdt.yaml | 10 +++++-----
 .../devicetree/bindings/watchdog/cnxt,cx92755-wdt.yaml |  6 +++---
 .../devicetree/bindings/watchdog/maxim,max63xx.yaml    |  8 ++++----
 .../devicetree/bindings/watchdog/snps,dw-wdt.yaml      | 10 +++++-----
 8 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
index 274519fc24fd..64c8f7393809 100644
--- a/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
@@ -6,13 +6,13 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Allwinner A10 Watchdog
 
-allOf:
-  - $ref: watchdog.yaml#
-
 maintainers:
   - Chen-Yu Tsai <wens@csie.org>
   - Maxime Ripard <mripard@kernel.org>
 
+allOf:
+  - $ref: watchdog.yaml#
+
 properties:
   compatible:
     oneOf:
diff --git a/Documentation/devicetree/bindings/watchdog/alphascale,asm9260-wdt.yaml b/Documentation/devicetree/bindings/watchdog/alphascale,asm9260-wdt.yaml
index fea84f5b7e6d..6425fe51d20c 100644
--- a/Documentation/devicetree/bindings/watchdog/alphascale,asm9260-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/alphascale,asm9260-wdt.yaml
@@ -6,12 +6,12 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Alphascale asm9260 Watchdog timer
 
-allOf:
-  - $ref: watchdog.yaml#
-
 maintainers:
   - Oleksij Rempel <linux@rempel-privat.de>
 
+allOf:
+  - $ref: watchdog.yaml#
+
 properties:
   compatible:
     const: alphascale,asm9260-wdt
diff --git a/Documentation/devicetree/bindings/watchdog/apple,wdt.yaml b/Documentation/devicetree/bindings/watchdog/apple,wdt.yaml
index 929681127df0..21872e15916c 100644
--- a/Documentation/devicetree/bindings/watchdog/apple,wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/apple,wdt.yaml
@@ -6,12 +6,12 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Apple SoC Watchdog
 
-allOf:
-  - $ref: watchdog.yaml#
-
 maintainers:
   - Sven Peter <sven@svenpeter.dev>
 
+allOf:
+  - $ref: watchdog.yaml#
+
 properties:
   compatible:
     items:
diff --git a/Documentation/devicetree/bindings/watchdog/arm-smc-wdt.yaml b/Documentation/devicetree/bindings/watchdog/arm-smc-wdt.yaml
index b5573852ef5a..8e9d0b7e8244 100644
--- a/Documentation/devicetree/bindings/watchdog/arm-smc-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/arm-smc-wdt.yaml
@@ -6,12 +6,12 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: ARM Secure Monitor Call based watchdog
 
-allOf:
-  - $ref: watchdog.yaml#
-
 maintainers:
   - Julius Werner <jwerner@chromium.org>
 
+allOf:
+  - $ref: watchdog.yaml#
+
 properties:
   compatible:
     enum:
diff --git a/Documentation/devicetree/bindings/watchdog/brcm,bcm7038-wdt.yaml b/Documentation/devicetree/bindings/watchdog/brcm,bcm7038-wdt.yaml
index 526ff908d134..e898167ef628 100644
--- a/Documentation/devicetree/bindings/watchdog/brcm,bcm7038-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/brcm,bcm7038-wdt.yaml
@@ -6,14 +6,14 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: BCM63xx and BCM7038 watchdog timer
 
-allOf:
-  - $ref: watchdog.yaml#
-
 maintainers:
   - Florian Fainelli <f.fainelli@gmail.com>
   - Justin Chen <justinpopo6@gmail.com>
   - Rafał Miłecki <rafal@milecki.pl>
 
+allOf:
+  - $ref: watchdog.yaml#
+
 properties:
   compatible:
     enum:
@@ -29,11 +29,11 @@ properties:
       The clock running the watchdog. If no clock is found the driver will
       default to 27000000 Hz.
 
-unevaluatedProperties: false
-
 required:
   - reg
 
+unevaluatedProperties: false
+
 examples:
   - |
     watchdog@f040a7e8 {
diff --git a/Documentation/devicetree/bindings/watchdog/cnxt,cx92755-wdt.yaml b/Documentation/devicetree/bindings/watchdog/cnxt,cx92755-wdt.yaml
index 1844d7e026fe..13236ee61f6f 100644
--- a/Documentation/devicetree/bindings/watchdog/cnxt,cx92755-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/cnxt,cx92755-wdt.yaml
@@ -12,12 +12,12 @@ description: |
   timer counters. The first timer (called "Timer A") is the only one that can be
   used as watchdog.
 
-allOf:
-  - $ref: watchdog.yaml#
-
 maintainers:
   - Baruch Siach <baruch@tkos.co.il>
 
+allOf:
+  - $ref: watchdog.yaml#
+
 properties:
   compatible:
     const: cnxt,cx92755-wdt
diff --git a/Documentation/devicetree/bindings/watchdog/maxim,max63xx.yaml b/Documentation/devicetree/bindings/watchdog/maxim,max63xx.yaml
index 1a6490c43d89..442c21f12a3b 100644
--- a/Documentation/devicetree/bindings/watchdog/maxim,max63xx.yaml
+++ b/Documentation/devicetree/bindings/watchdog/maxim,max63xx.yaml
@@ -6,14 +6,14 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Maxim 63xx Watchdog Timers
 
-allOf:
-  - $ref: watchdog.yaml#
-  - $ref: /schemas/memory-controllers/mc-peripheral-props.yaml#
-
 maintainers:
   - Marc Zyngier <maz@kernel.org>
   - Linus Walleij <linus.walleij@linaro.org>
 
+allOf:
+  - $ref: watchdog.yaml#
+  - $ref: /schemas/memory-controllers/mc-peripheral-props.yaml#
+
 properties:
   compatible:
     enum:
diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
index 76eceeddd150..c7aab0418a32 100644
--- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
@@ -6,12 +6,12 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Synopsys Designware Watchdog Timer
 
-allOf:
-  - $ref: watchdog.yaml#
-
 maintainers:
   - Jamie Iles <jamie@jamieiles.com>
 
+allOf:
+  - $ref: watchdog.yaml#
+
 properties:
   compatible:
     oneOf:
@@ -73,13 +73,13 @@ properties:
     minItems: 16
     maxItems: 16
 
-unevaluatedProperties: false
-
 required:
   - compatible
   - reg
   - clocks
 
+unevaluatedProperties: false
+
 examples:
   - |
     watchdog@ffd02000 {
-- 
2.34.1


