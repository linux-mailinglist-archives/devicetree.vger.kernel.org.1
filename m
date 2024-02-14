Return-Path: <devicetree+bounces-41702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9BB854D6A
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 16:55:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B62F328E828
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 15:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 977A65DF03;
	Wed, 14 Feb 2024 15:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l1nGP7Mg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834C75D90D
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707926095; cv=none; b=uhLR9ofnd1COqZnK3GhHHGVrVIo8mhfDAHbK1Mit0qBgMiPpC5KQIyTa4iBnumdQt5CEtelJNaYreDj1Q4g+0jerVChY3/7EmBg+BGC8UyXtc1JuKnHcnwrQ0Nwj4/WXrhlZr+YJLFdIzqbFayruEr1eBUCeLc27HltdNISTMRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707926095; c=relaxed/simple;
	bh=wkCnLBusfJsb9wLGU9J3e10BMIuXAljCJnLm6Qx/zJM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=O3q5GK8FWTubMmWWaTYeOjOo5nCj25gZ0K1WV51Y6Z48uwqgH6WB5nI3kV8V5Gdx/MMwfQonFjuJpIedXf9YVeD5nN0Wr+3H3z9V5pNN+sBA8cwKPWErosItQNDVmfkkJZQrsYvmtB/AyDxeEnwYNyjFlOSCUUxt/dtLD2eq9W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l1nGP7Mg; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5638c4a8c92so722449a12.2
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 07:54:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707926092; x=1708530892; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Wk5dUyoIZYlPyAoNfmCGCyI7BNGcUQlog2Oi1Xpz8xQ=;
        b=l1nGP7Mg8oIEnW1C2S/1Jlx/PWBD9EpVTFINLWNqfyIJd/bF97+k51CHttg6Bd3ZKo
         DpBJL3P+Ri63XhjkR9p2s3EQKZQJ0KrwjEvmZdBTsgP5uPbIXGk71O5G9z/aUGDv8T9U
         su/YgNvSSa2xYIMFp4CNCSOQdJOzU5b7S5bLqQ2+njtUXk8337K8wTAPpUjTwlytB8/Q
         QUi1KtX4BUada/lhbTdOA7/KZjC0gBwTFQFKWkTiys4FaVKTlLvBTrEHEv4nTg61tt+T
         iQBiV5E1dYJSXAt/g7j5Nw6iK6kaac0GsLQGtjt0Lkp2D1kVnT8wOpmU9a8CosRjvai1
         sdKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707926092; x=1708530892;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wk5dUyoIZYlPyAoNfmCGCyI7BNGcUQlog2Oi1Xpz8xQ=;
        b=Fedz/gja8J2/XhsDP27He2jF3s4cF3fNgBCmRcIhNNPZzOXyVCVhqb9IJzhurh5JBx
         E/k3Hqo94oGsit+48jHTQhTjVLI9FN8gCfe5eyzr0EA5Xea0tFakmu8RcfAZaKyk/x0G
         1m6tsI5spz4QifURb7pvdoPwT5KcWI5KN2JxYz3Kuufqwcdm38D+ONk4zifOkAOipcED
         DDpI5E7Ix2bOoeLzz9LeiW/+LVWrS1YwdIobxs5Kwx4dInZc2qEEtMbxPhqKWldCSLUk
         fU3CaBpHmHxxvkA/BCxl7Vv5fVP6Ea4VeYTus1aisoWEyE23A7fjTuHj35dsY8slJ5bG
         i6Vw==
X-Forwarded-Encrypted: i=1; AJvYcCVkgwG8OC1ZIiub5Q9v1DJRBNbj7XiBeJn0SHajGtadzrQsWEY3fZQI2Q4Oyy0XubH1Na5oE1og78Zz4tmSY/q1fKzOYhf3xcROgQ==
X-Gm-Message-State: AOJu0YyfMvlaHwQh1q8fnXXYkOmpGeT3+BjcCZzKzmqpDzd2lrRNIvXL
	On9RDhOMsrMLwM1/b5p9xe+LqToVp0ZsDnjUHu7+sqOo6+ucEZ4/QPHvc9MZQcU=
X-Google-Smtp-Source: AGHT+IGRf+C/VbdL0zv9g/zpoqJoxIzY4kuwUpznwMknESgSfR9PlCSk4ZEsQ/vV03hi9VOWcNyVmg==
X-Received: by 2002:a17:906:4a8e:b0:a3d:4dec:2711 with SMTP id x14-20020a1709064a8e00b00a3d4dec2711mr1717774eju.14.1707926091699;
        Wed, 14 Feb 2024 07:54:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWQu9tQKsaS9PrK88jx7RYfwEJi0xXoDW5obHHfRjmj5MxVBVTLvL+XEUpWyl3BTuVlBzB/IZIgTPTNJqhUvAVy4cGhZZ1IGoSacoebuyu7/FBlLD6FgtMOdkWpMZ/37m44Do0YxCSfGer/1SGTwiCgF9YB5+zI94V2PLVmkICErdQE3WkURrUAa6iCp5YiSSh6GgW+68avnLXYywF/8iD22Z7/CJIlr0F7Mpy94T44YhiwPQ1PQ7PKxuU2cciYRR4fDX2pg2G8pMWMhecI1Pg3KXxuKCa5bzOYqMv4FIsfjuzqSVULeIu2++mjK4LcDih0HuTvtGRWLwu2bXflD7pWrXbs/nWYF6m8K5zNxZ/1ijUh7lNBPfKqAGfhNFsRC2hPgk56ViP4EUiqXuTi8sjMPAfe27SoFNFe
Received: from krzk-bin.. ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id tk6-20020a170907c28600b00a38936aa08dsm2431332ejc.32.2024.02.14.07.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Feb 2024 07:54:51 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robin van der Gracht <robin@protonic.nl>,
	Paul Burton <paulburton@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Ralf Schlatterbeck <rsc@runtux.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v2 1/2] dt-bindings: auxdisplay: adjust example indentation and use generic node names
Date: Wed, 14 Feb 2024 16:54:37 +0100
Message-Id: <20240214155438.155139-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Cc: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Ralf Schlatterbeck <rsc@runtux.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes in v2:
1. Previous, removing GPIO expander node is gone, update GPIO expander
   example as well: node name and indentation.
---
 .../auxdisplay/arm,versatile-lcd.yaml         |  4 +-
 .../bindings/auxdisplay/hit,hd44780.yaml      | 62 ++++++++++---------
 .../bindings/auxdisplay/holtek,ht16k33.yaml   | 50 +++++++--------
 .../bindings/auxdisplay/img,ascii-lcd.yaml    |  4 +-
 4 files changed, 61 insertions(+), 59 deletions(-)

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
index 406a922a714e..e26d61af9011 100644
--- a/Documentation/devicetree/bindings/auxdisplay/hit,hd44780.yaml
+++ b/Documentation/devicetree/bindings/auxdisplay/hit,hd44780.yaml
@@ -84,42 +84,44 @@ additionalProperties: false
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
+
   - |
     #include <dt-bindings/gpio/gpio.h>
     i2c {
-            #address-cells = <1>;
-            #size-cells = <0>;
+        #address-cells = <1>;
+        #size-cells = <0>;
 
-            pcf8574: pcf8574@27 {
-                    compatible = "nxp,pcf8574";
-                    reg = <0x27>;
-                    gpio-controller;
-                    #gpio-cells = <2>;
-            };
+        pcf8574: gpio-expander@27 {
+            compatible = "nxp,pcf8574";
+            reg = <0x27>;
+            gpio-controller;
+            #gpio-cells = <2>;
+        };
     };
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
+
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


