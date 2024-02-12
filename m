Return-Path: <devicetree+bounces-40598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DCE850EED
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 09:34:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EBF04B21F52
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 08:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A597F51B;
	Mon, 12 Feb 2024 08:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pG62keyl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1718C10A1A
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 08:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707726875; cv=none; b=BEQnjV/3+Iq0uSzx0Di1lO2b70B8sqBDux0QTRFdBtpcGzIf8H+JX0dh76Mnlxc0XY0GFtdObJpbmeDwDeTZHNuSfTWGi9sP8Yqs5mlDfayuGwmyHSn4bPUD/TXPnmezIcFiGpWCfu+/vmRhijzWxtQ9g1zGEidu2P8kR3w27QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707726875; c=relaxed/simple;
	bh=ezeCOINnmkavLUEDTtpk9CBlRiLMmuI1yO5MV1yO3OU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PbwiDpKlTaQzpraeZAo9P/xKeh4vTrTukTXCBt18baYq6yas7BTCI57JUN5SZEZLZpkNmOxIxM4SNfwN9w0eoAGWVNB13a08vEkNXHZCOvMSSIZOB7PIuudkDdvCdj7SAWAvlfZX1bEAOkS0C4y5KBczpsb9QtC82vUHdZ7WZUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pG62keyl; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-33b815b182fso431856f8f.3
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 00:34:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707726871; x=1708331671; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n00h9GUfOjmdouhiAceBbh8Ez7j7mnB3Royxt1AWIfw=;
        b=pG62keylkMGpnyfmYEtO4cNDmFTbXZDp4dorYvymQ/dEOkX8f1zZTv9/j9O2JBvE6x
         YzC0mUqeHz7jgfgPvofNB74SYtl2eAeJCcEFxPg13X3B7qh9PpxsqCjgjwWqERrbzByB
         /EnoUe9uyOD2PlBZjdMFliXOkWsgqD4/BsJgjUv3qHOBtpzoPHkdOqLN4x+YVe8zbSYP
         VRL6lWFVDe6Vi7Qb2XUzsBXXsyj81zj2RMCIKN8OTQK2KiKX1sx1p6M6Y7BIGY2G7vuv
         WNxuzlKaOM2mCoCSnRIKVS8ERE3l0ybw1cjqudlfXmezSkPs1Tg2DMqzHmFeStEyDMkp
         gIkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707726871; x=1708331671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n00h9GUfOjmdouhiAceBbh8Ez7j7mnB3Royxt1AWIfw=;
        b=VXhig1/hBExcBg3v6mgDlhzWR+WFbP1fLqvnuaOpiOhucm5Wf8cNhuhKPn914unm4p
         LdNGzGVEJdhum8vIkCCm3F6qRH+hl9L+6hWNVh0w7S1KSNgal74MC8lX7Rawypl6U21P
         5DwT+UkkzaYO/E7Ivt7HP26QEGwOhSXW2GQ/YeqCjDs1tSajTS+qm/a6jtvXqLqqv/cv
         18n69LEKoU0/J+aibL/G9OHcQPB7uA71/rUh9QnBbHNTrDqyafB/G+BhBTL0RmkYkn+O
         Ak5+UQU4Valrllh+kSCgRrmK2Aq2La0yyTaS3kG72w/S1PbDBdbljtqOFniCTiSfQhcZ
         Zjyw==
X-Gm-Message-State: AOJu0Yx25HmYdk/14X4fWNSIBtOR79JnubCrWKDheh4lrsLMUoOkYd0I
	C25W3zeZLe3yuFyzAjN2LSsnCBpvmIArWsGgrKHfJ1aZ5CTM+5hp4E3xw+2HAOw=
X-Google-Smtp-Source: AGHT+IGuASWV6pU/NjalZ9asEei4Dq9uO9jA7EJJuK93dN3gaO8t45e4ckwP1vCBenvpeW0kBEEIXA==
X-Received: by 2002:adf:ffcc:0:b0:33b:72f2:2283 with SMTP id x12-20020adfffcc000000b0033b72f22283mr3898515wrs.17.1707726871337;
        Mon, 12 Feb 2024 00:34:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWIMPGbPGKj/ISTNTpZQ5sl+ZSeRI5+lO+VSwkznpnFqPHBMRhMJOWz/d+js7L9/KYpGTXAG7BTK/aCsHZfd4LlTrCbcifFKOL4weDCk2KgCjrTMssGtDgsi4ViMi4QnA8zkJ46f+XrHkMNVVR2XozK+PS/NTBD0DGWjdMz8uUcI+MMYe8naqzALQRlgn1gmgs6B/s8IikEtiSroDkNDBjh/XFWj4iM2dPGoxC8L8CYpi+63Hb2YSX7ap+F7ro+O4q4KtcfZxdjzYPl2CmEvFvLKsTrOzv4vGE1b/pcdKEqVrDozwwhJFTDFi9cF+L4TSIM7tN8GSqa4jRCNJcRW+H9AH+sBCjYjY80iYz2e3Tw8tNmaUifylSR1g4coXGoFG61bogPUEA9J7XmJDo=
Received: from krzk-bin.. ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id y12-20020a056000108c00b0033b40a3f92asm6111024wrw.25.2024.02.12.00.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 00:34:30 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robin van der Gracht <robin@protonic.nl>,
	Paul Burton <paulburton@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH 2/3] dt-bindings: auxdisplay: adjust example indentation and use generic node names
Date: Mon, 12 Feb 2024 09:34:25 +0100
Message-Id: <20240212083426.26757-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212083426.26757-1-krzysztof.kozlowski@linaro.org>
References: <20240212083426.26757-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The example DTS should be indented with two or four (preferred) spaces,
as mentioned in Writing Schema document.  While re-indenting, change the
node names to somehow generic names, as expected by Devicetree
specification.

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../auxdisplay/arm,versatile-lcd.yaml         |  4 +-
 .../bindings/auxdisplay/hit,hd44780.yaml      | 44 ++++++++--------
 .../bindings/auxdisplay/holtek,ht16k33.yaml   | 50 +++++++++----------
 .../bindings/auxdisplay/img,ascii-lcd.yaml    |  4 +-
 4 files changed, 51 insertions(+), 51 deletions(-)

diff --git a/Documentation/devicetree/bindings/auxdisplay/arm,versatile-lcd.yaml b/Documentation/devicetree/bindings/auxdisplay/arm,versatile-lcd.yaml
index 5d02bd032a85..439f7b811a94 100644
--- a/Documentation/devicetree/bindings/auxdisplay/arm,versatile-lcd.yaml
+++ b/Documentation/devicetree/bindings/auxdisplay/arm,versatile-lcd.yaml
@@ -39,6 +39,6 @@ additionalProperties: false
 examples:
   - |
     lcd@10008000 {
-            compatible = "arm,versatile-lcd";
-            reg = <0x10008000 0x1000>;
+        compatible = "arm,versatile-lcd";
+        reg = <0x10008000 0x1000>;
     };
diff --git a/Documentation/devicetree/bindings/auxdisplay/hit,hd44780.yaml b/Documentation/devicetree/bindings/auxdisplay/hit,hd44780.yaml
index 73d07f2cb303..1c7fd29bbcc7 100644
--- a/Documentation/devicetree/bindings/auxdisplay/hit,hd44780.yaml
+++ b/Documentation/devicetree/bindings/auxdisplay/hit,hd44780.yaml
@@ -84,32 +84,32 @@ additionalProperties: false
 examples:
   - |
     #include <dt-bindings/gpio/gpio.h>
-    auxdisplay {
-            compatible = "hit,hd44780";
+    display-controller {
+        compatible = "hit,hd44780";
 
-            data-gpios = <&hc595 0 GPIO_ACTIVE_HIGH>,
-                         <&hc595 1 GPIO_ACTIVE_HIGH>,
-                         <&hc595 2 GPIO_ACTIVE_HIGH>,
-                         <&hc595 3 GPIO_ACTIVE_HIGH>;
-            enable-gpios = <&hc595 4 GPIO_ACTIVE_HIGH>;
-            rs-gpios = <&hc595 5 GPIO_ACTIVE_HIGH>;
+        data-gpios = <&hc595 0 GPIO_ACTIVE_HIGH>,
+                     <&hc595 1 GPIO_ACTIVE_HIGH>,
+                     <&hc595 2 GPIO_ACTIVE_HIGH>,
+                     <&hc595 3 GPIO_ACTIVE_HIGH>;
+        enable-gpios = <&hc595 4 GPIO_ACTIVE_HIGH>;
+        rs-gpios = <&hc595 5 GPIO_ACTIVE_HIGH>;
 
-            display-height-chars = <2>;
-            display-width-chars = <16>;
+        display-height-chars = <2>;
+        display-width-chars = <16>;
     };
   - |
     #include <dt-bindings/gpio/gpio.h>
 
-    hd44780 {
-            compatible = "hit,hd44780";
-            display-height-chars = <2>;
-            display-width-chars = <16>;
-            data-gpios = <&pcf8574 4 0>,
-                         <&pcf8574 5 0>,
-                         <&pcf8574 6 0>,
-                         <&pcf8574 7 0>;
-            enable-gpios = <&pcf8574 2 0>;
-            rs-gpios = <&pcf8574 0 0>;
-            rw-gpios = <&pcf8574 1 0>;
-            backlight-gpios = <&pcf8574 3 0>;
+    display-controller {
+        compatible = "hit,hd44780";
+        display-height-chars = <2>;
+        display-width-chars = <16>;
+        data-gpios = <&pcf8574 4 0>,
+                     <&pcf8574 5 0>,
+                     <&pcf8574 6 0>,
+                     <&pcf8574 7 0>;
+        enable-gpios = <&pcf8574 2 0>;
+        rs-gpios = <&pcf8574 0 0>;
+        rw-gpios = <&pcf8574 1 0>;
+        backlight-gpios = <&pcf8574 3 0>;
     };
diff --git a/Documentation/devicetree/bindings/auxdisplay/holtek,ht16k33.yaml b/Documentation/devicetree/bindings/auxdisplay/holtek,ht16k33.yaml
index be95f6b97b41..b90eec2077b4 100644
--- a/Documentation/devicetree/bindings/auxdisplay/holtek,ht16k33.yaml
+++ b/Documentation/devicetree/bindings/auxdisplay/holtek,ht16k33.yaml
@@ -74,31 +74,31 @@ examples:
     #include <dt-bindings/input/input.h>
     #include <dt-bindings/leds/common.h>
     i2c {
-            #address-cells = <1>;
-            #size-cells = <0>;
+        #address-cells = <1>;
+        #size-cells = <0>;
 
-            ht16k33: ht16k33@70 {
-                    compatible = "holtek,ht16k33";
-                    reg = <0x70>;
-                    refresh-rate-hz = <20>;
-                    interrupt-parent = <&gpio4>;
-                    interrupts = <5 (IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_EDGE_RISING)>;
-                    debounce-delay-ms = <50>;
-                    linux,keymap = <MATRIX_KEY(2, 0, KEY_F6)>,
-                                   <MATRIX_KEY(3, 0, KEY_F8)>,
-                                   <MATRIX_KEY(4, 0, KEY_F10)>,
-                                   <MATRIX_KEY(5, 0, KEY_F4)>,
-                                   <MATRIX_KEY(6, 0, KEY_F2)>,
-                                   <MATRIX_KEY(2, 1, KEY_F5)>,
-                                   <MATRIX_KEY(3, 1, KEY_F7)>,
-                                   <MATRIX_KEY(4, 1, KEY_F9)>,
-                                   <MATRIX_KEY(5, 1, KEY_F3)>,
-                                   <MATRIX_KEY(6, 1, KEY_F1)>;
+        display-controller@70 {
+            compatible = "holtek,ht16k33";
+            reg = <0x70>;
+            refresh-rate-hz = <20>;
+            interrupt-parent = <&gpio4>;
+            interrupts = <5 (IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_EDGE_RISING)>;
+            debounce-delay-ms = <50>;
+            linux,keymap = <MATRIX_KEY(2, 0, KEY_F6)>,
+                           <MATRIX_KEY(3, 0, KEY_F8)>,
+                           <MATRIX_KEY(4, 0, KEY_F10)>,
+                           <MATRIX_KEY(5, 0, KEY_F4)>,
+                           <MATRIX_KEY(6, 0, KEY_F2)>,
+                           <MATRIX_KEY(2, 1, KEY_F5)>,
+                           <MATRIX_KEY(3, 1, KEY_F7)>,
+                           <MATRIX_KEY(4, 1, KEY_F9)>,
+                           <MATRIX_KEY(5, 1, KEY_F3)>,
+                           <MATRIX_KEY(6, 1, KEY_F1)>;
 
-                    led {
-                            color = <LED_COLOR_ID_RED>;
-                            function = LED_FUNCTION_BACKLIGHT;
-                            linux,default-trigger = "backlight";
-                    };
+            led {
+                color = <LED_COLOR_ID_RED>;
+                function = LED_FUNCTION_BACKLIGHT;
+                linux,default-trigger = "backlight";
             };
-      };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/auxdisplay/img,ascii-lcd.yaml b/Documentation/devicetree/bindings/auxdisplay/img,ascii-lcd.yaml
index 1899b23de7d1..55e9831b3f67 100644
--- a/Documentation/devicetree/bindings/auxdisplay/img,ascii-lcd.yaml
+++ b/Documentation/devicetree/bindings/auxdisplay/img,ascii-lcd.yaml
@@ -50,6 +50,6 @@ additionalProperties: false
 examples:
   - |
     lcd: lcd@17fff000 {
-            compatible = "img,boston-lcd";
-            reg = <0x17fff000 0x8>;
+        compatible = "img,boston-lcd";
+        reg = <0x17fff000 0x8>;
     };
-- 
2.34.1


