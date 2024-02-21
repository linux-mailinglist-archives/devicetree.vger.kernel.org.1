Return-Path: <devicetree+bounces-44400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 624E885E09E
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 16:12:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 845C91C22017
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 15:12:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AF728005C;
	Wed, 21 Feb 2024 15:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Aa2qlbtN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76C280023
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 15:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708528333; cv=none; b=ZcVa3s1uYUZrs6Jr9U+4bLhlH9IURVuLw3MclwfAYQCFI1Q1pusdUu7L7Ozs29e8QMxU91/EZeKsXt+bEPiHdejpLMWRFRV76uVP7WA+IQ3q88+Lq9L4vaq5tJ/APj/eBYXnwlzDMO8x6Dp/pBZ5sKc9Jh+IagyMDMdED4+3TuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708528333; c=relaxed/simple;
	bh=H7u4y7uhZ2vjVcQPrDSO8zoTli1LbFPj5CyebiNWcN4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Bq/7Al8PJeQRDmlyvjSkXOtSX64j4jwyq4+Gsh73vaBLB+bi493yWGqE9v2sywlrGlZWG+YsIOJUFP1xX7g6bSvcNlOLdD+/WLKYZQqJPU9lGWYOSRQEaHi51B3Ut7ZdfYYhKl2d0BevM/3LgFNd9wasMWn1ddiMfY7oUU+P8kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Aa2qlbtN; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-41275971886so5448525e9.3
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 07:12:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708528329; x=1709133129; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2dIMaRI4UL/ljzaiGORJNkCrZ9+yfYsQHx0oEU8j6rs=;
        b=Aa2qlbtNIMn9LdUQwi+3lsDEnztdwLPFbQu7HtB2Z0SDzm1+oDzWJegjxZQzNZXoAx
         PEvmRmgNfHAXVg4E9Q6VYl1DPeb2Sqb184VlvcNVTMPOAG5JAaLVLWuTGPnC2mFJGEG5
         AJ1nntou8MsRyIt27/0Z489RbMoy7Tdw6RC1tnhKP45NOo3d69fSTdAWGeNyunUd+RPK
         slnvAjO7peIJTx6i1keTxSiDA5FDrOm3JmRtd35WD+jBWgyC3bgYIrQ0nx5vKSywJjdt
         4j80mxNtQfrV2wVX2v9UZmiD8MRYfcKJkxNfnA2RkPWx/GNgE/VBt1r3JulgKPBODUVi
         j4gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708528329; x=1709133129;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2dIMaRI4UL/ljzaiGORJNkCrZ9+yfYsQHx0oEU8j6rs=;
        b=MGJ8zjthO3Anmm0wyX8tmJ3leiFlgHyr2KbCUBjdYXaNYMxMJhFIwVXOnh0UVpP/w+
         tQUu45lmr3YRs4LKQrwDAAHRPNatoYeDrYN67djYquRBDpzA/vRA5JCkoHbB2zp17yp0
         O+ZodDSWWs1XNi7B7DT6Yazl6G7aUdsaPsaGAwEIqRv7Zsh3KhePPTdNHikVoz2IXLPd
         NPxEuzS8MzrXSWvljRI1HOckA/fyYnk3p3MbZ7cuz3gVKTXIBHTELnDLUmcdmYnxTn15
         KqlIiKY3Oowvf7yHo6pQvcKJijemyhpyEjDc786SMjSmSumiRHUHJXlCWjT085+MiPWm
         Y8Ug==
X-Forwarded-Encrypted: i=1; AJvYcCX3JC1BmnyFl+5F8+9dhruBqyt1hWbC6KjBeX+BaJICa4nsGuFRy7iBhLMGKiLufcnLZhb344nyhxZDvhvQwnVlRHYIRYf1DBuxsA==
X-Gm-Message-State: AOJu0YzcEenwGVFacavKzktmzlP242gmiipvunY+xHTCqaLeKLKP5+rp
	EHw87Vh7ny643tot0rOuWasIxqkH0pvbVjsK0hSZ7cnGqrxv9R2uGHcn9P+q4Ts=
X-Google-Smtp-Source: AGHT+IGnB/yDjeQ1zYwsD0gS9+46rlsbMLhYcTvmjGYKfgU3FPt5e+DC9MUyGg4jOgcKx3D6U0nZZA==
X-Received: by 2002:a05:600c:3515:b0:412:17dd:a227 with SMTP id h21-20020a05600c351500b0041217dda227mr13716851wmq.15.1708528329414;
        Wed, 21 Feb 2024 07:12:09 -0800 (PST)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:1b1a:d907:d735:9f9e])
        by smtp.googlemail.com with ESMTPSA id bg22-20020a05600c3c9600b0040fc56712e8sm18725342wmb.17.2024.02.21.07.12.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 07:12:09 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-pwm@vger.kernel.org,
	JunYi Zhao <junyi.zhao@amlogic.com>
Subject: [PATCH v5 2/5] dt-bindings: pwm: amlogic: Add a new binding for meson8 pwm types
Date: Wed, 21 Feb 2024 16:11:48 +0100
Message-ID: <20240221151154.26452-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240221151154.26452-1-jbrunet@baylibre.com>
References: <20240221151154.26452-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

The binding that is used up to now describe which input the PWM
channel multiplexer should pick among its possible parents,
which are hardcoded in the driver. This isn't a good binding in
the sense that it should describe hardware but not usage.

Add a new binding deprecating the old one that uses clocks in a
better way and how clocks are usually used today: The list of
clocks describe the inputs of the PWM block as they are realised
in hardware.

So deprecate the old bindings and introduce a compatible per SoC
family to replace these.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../devicetree/bindings/pwm/pwm-amlogic.yaml  | 50 +++++++++++++++++--
 1 file changed, 47 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml b/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
index a1d382aacb82..1d71d4f8f328 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
@@ -21,23 +21,36 @@ properties:
           - amlogic,meson-g12a-ee-pwm
           - amlogic,meson-g12a-ao-pwm-ab
           - amlogic,meson-g12a-ao-pwm-cd
-          - amlogic,meson-s4-pwm
+        deprecated: true
       - items:
           - const: amlogic,meson-gx-pwm
           - const: amlogic,meson-gxbb-pwm
+        deprecated: true
       - items:
           - const: amlogic,meson-gx-ao-pwm
           - const: amlogic,meson-gxbb-ao-pwm
+        deprecated: true
       - items:
           - const: amlogic,meson8-pwm
           - const: amlogic,meson8b-pwm
+        deprecated: true
+      - enum:
+          - amlogic,meson8-pwm-v2
+          - amlogic,meson-s4-pwm
+      - items:
+          - enum:
+              - amlogic,meson8b-pwm-v2
+              - amlogic,meson-gxbb-pwm-v2
+              - amlogic,meson-axg-pwm-v2
+              - amlogic,meson-g12-pwm-v2
+          - const: amlogic,meson8-pwm-v2
 
   reg:
     maxItems: 1
 
   clocks:
     minItems: 1
-    maxItems: 2
+    maxItems: 4
 
   clock-names:
     minItems: 1
@@ -68,11 +81,14 @@ allOf:
               - amlogic,meson-g12a-ao-pwm-ab
               - amlogic,meson-g12a-ao-pwm-cd
     then:
-      # Historic bindings tied to the driver implementation
+      # Obsolete historic bindings tied to the driver implementation
       # The clocks provided here are meant to be matched with the input
       # known (hard-coded) in the driver and used to select pwm clock
       # source. Currently, the linux driver ignores this.
+      # This is kept to maintain ABI backward compatibility.
       properties:
+        clocks:
+          maxItems: 2
         clock-names:
           oneOf:
             - items:
@@ -81,6 +97,27 @@ allOf:
                 - const: clkin0
                 - const: clkin1
 
+  # Newer binding where clock describe the actual clock inputs of the pwm
+  # block. These are necessary but some inputs may be grounded.
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amlogic,meson8-pwm-v2
+    then:
+      properties:
+        clocks:
+          minItems: 1
+          items:
+            - description: input clock 0 of the pwm block
+            - description: input clock 1 of the pwm block
+            - description: input clock 2 of the pwm block
+            - description: input clock 3 of the pwm block
+        clock-names: false
+      required:
+        - clocks
+
   # Newer IP block take a single input per channel, instead of 4 inputs
   # for both channels
   - if:
@@ -110,6 +147,13 @@ examples:
       clock-names = "clkin0", "clkin1";
       #pwm-cells = <3>;
     };
+  - |
+    pwm@2000 {
+      compatible = "amlogic,meson8-pwm-v2";
+      reg = <0x1000 0x10>;
+      clocks = <&xtal>, <0>, <&fdiv4>, <&fdiv5>;
+      #pwm-cells = <3>;
+    };
   - |
     pwm@1000 {
       compatible = "amlogic,meson-s4-pwm";
-- 
2.43.0


