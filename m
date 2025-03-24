Return-Path: <devicetree+bounces-160155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C4438A6DA68
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:54:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA3B43B00BE
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:54:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D5D625FA2B;
	Mon, 24 Mar 2025 12:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YFr+wfSB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BC625F7BB
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 12:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742820768; cv=none; b=k1oOs6Ll02DlwUKkZE0sEF0XpbpIe/8dA/5x6fDSqC5ch5jy9E0Sb7XYhWl1TCOrCkd6gzhMxg0mFmrSt2EJpof4cQ64Kly1zhzCWeCPpirGO4OSJOEr043Q4emm7ehG7JKuoKJM/9zT8NYVK/uEtkL3VrCmSZcr7aMlQmtLn5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742820768; c=relaxed/simple;
	bh=7uX9g3o8iHZuANsY17j26WoxMa4Dc+li/nrYYj6ScU4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K44gB0BlJCwjqDc51rZfJrdKbOKzAHfPYU7YbobvvR9AeSlGVZfdWxVQSi2bm/lEIxORV1tXwi4qYjyddDaq1fKaRZ/AaetPvY8t2KIFOdP6RG+qz6L6DjIBqbwaxnLkyoiZuypRGiSUzEMNhYdYcoBpvoEMMwXMrJmu3Gpbxd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YFr+wfSB; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43cf861f936so5975495e9.3
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 05:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742820764; x=1743425564; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r3mjqOZZsDyttPTwOQArIEGBz9KArQeyO2BQH28njrA=;
        b=YFr+wfSBgv/vS/YhILdD9lr/e3VFWXnv67CjN4DXlqJIbh+GHOsXbqvS0pIau9FfcB
         yMwSjH2SSfH/ZHckL1z/wMfIExh6EgTInYBZ9Swd3/DnPSNaHEwKqIYPuKR6zU0FRodq
         y+9z2ab0Q96A5VvrC/TXmIx1lhnPt9iayTZRfKurBG/ne+sdDRzEhEN5DhbTHqoAA9cr
         xa3wzGwsMQOEGu01RzdrR+2I/h5DDV0DOiPcZvUS1Zuru93J4kAaRWJl2+fmNLj+D1fs
         3svr/xjkZyg5H2JrZGcXIle9U2qjM3InLX6dYph9S8ZsdPXCwXwsaJm/HuTmUXolV6fA
         ZWng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742820764; x=1743425564;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r3mjqOZZsDyttPTwOQArIEGBz9KArQeyO2BQH28njrA=;
        b=KicrNd59nS22zpbvXblETJlkHIDz0ZjZWS8HVKxoWTidC13yP2w0h9NFScMSIAw8Hj
         i4VQydsV1FfS5HmhASn4lNKDAfOZ3BPnQ4/f367mRo2XBP3GvOAW3pvxiJl0HsILKRJC
         UQVW63fty3bWYRfOjMUpwZX/PnJAx9USES5bTJ0vLJgeIaFJsqcR7ijcxmuZLCNwK1/D
         /TKmbyt8ss5brlGwKVv1ZSyWj0Ss3OQWGJ5pfF+rJe565trTmZL9CkLajhe4w1OQcqyv
         rNvucvf53UY3IQex7iGl4WSdNYC/K23N6W4QB5W+cYPVBmYNuGRBcprRET+Rf/FOpbQS
         d/Vg==
X-Forwarded-Encrypted: i=1; AJvYcCW6acX/SVgU2ZfpxoN6UTNzZQu9QZRgg2zsAac/UDMXcGuNj2m1KuFRpiKhLoL2CwWdISUBsmUKRErf@vger.kernel.org
X-Gm-Message-State: AOJu0YwdpWPKWlqpyVMfoLwD7ATR5Xy47i44wuXTLg7GdWK9geXj4a8B
	9xbU7ZSMGBo34bIIJNnspKFzfxLKO8odcZYoANjsTucCXQCcM1BJrML5HZpq9q0=
X-Gm-Gg: ASbGnctwAQOJ6orOjd/R1tSgBIecKJKb5rOMpe/UAXklgH8/ZYS+jVpzyfun9mGwfI5
	eO+TUb5nUN5C+fJdmEaSNDDsLn1k+RIZ/vOFIrWZd+U4dh5OqzUAY25iOWcZKap4Aiojv0axccu
	huDUFBoY3JcckvFqNTUxooi1H4Zmn6XgNgJT44FLNIGxEXbAu6dbWlUWBXL8oA9vRENCKpuiOba
	XClh/VPTWvndKBlSKDg4hVoeHSrytHzHRi4eXVoLOutB77bGlW45Xc6vrhfQWsft5aaI8jV4gyJ
	UVsgEGoR7vjYD8MKiI17f9rUbeBZrEexLzFVa0KkXw32tBoMbykXrya1EQ==
X-Google-Smtp-Source: AGHT+IGZR6N/tpCrlBEulGN9jDB3I5jOqrHo/N86AJJGyDsPZsYifUvz+CO82SirRpsVa4R8JPZW0Q==
X-Received: by 2002:a05:600c:19d4:b0:43b:cab3:1fd1 with SMTP id 5b1f17b1804b1-43d509ea125mr44787195e9.1.1742820764325;
        Mon, 24 Mar 2025 05:52:44 -0700 (PDT)
Received: from krzk-bin.. ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9f682bsm10811402f8f.101.2025.03.24.05.52.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 05:52:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Colin Foster <colin.foster@in-advantage.com>,
	=?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jeff LaBundy <jeff@labundy.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: mfd: Correct indentation and style in DTS example
Date: Mon, 24 Mar 2025 13:52:39 +0100
Message-ID: <20250324125239.82098-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250324125239.82098-1-krzysztof.kozlowski@linaro.org>
References: <20250324125239.82098-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTS example in the bindings should be indented with 2- or 4-spaces and
aligned with opening '- |', so correct any differences like 3-spaces or
mixtures 2- and 4-spaces in one binding.  While re-indenting, drop
unused labels.

No functional changes here, but saves some comments during reviews of
new patches built on existing code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/mfd/iqs62x.yaml       | 151 ++++++++--------
 .../bindings/mfd/netronix,ntxec.yaml          |  24 +--
 .../bindings/mfd/rohm,bd9571mwv.yaml          |  46 ++---
 .../bindings/mfd/x-powers,axp152.yaml         | 168 +++++++++---------
 4 files changed, 190 insertions(+), 199 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/iqs62x.yaml b/Documentation/devicetree/bindings/mfd/iqs62x.yaml
index e79ce447a800..f242dd0e18fd 100644
--- a/Documentation/devicetree/bindings/mfd/iqs62x.yaml
+++ b/Documentation/devicetree/bindings/mfd/iqs62x.yaml
@@ -60,43 +60,34 @@ examples:
     #include <dt-bindings/interrupt-controller/irq.h>
 
     i2c {
-            #address-cells = <1>;
-            #size-cells = <0>;
+        #address-cells = <1>;
+        #size-cells = <0>;
 
-            iqs620a@44 {
-                    compatible = "azoteq,iqs620a";
-                    reg = <0x44>;
-                    interrupt-parent = <&gpio>;
-                    interrupts = <17 IRQ_TYPE_LEVEL_LOW>;
+        iqs620a@44 {
+            compatible = "azoteq,iqs620a";
+            reg = <0x44>;
+            interrupt-parent = <&gpio>;
+            interrupts = <17 IRQ_TYPE_LEVEL_LOW>;
 
-                    keys {
-                            compatible = "azoteq,iqs620a-keys";
+            keys {
+                compatible = "azoteq,iqs620a-keys";
 
-                            linux,keycodes = <KEY_SELECT>,
-                                             <KEY_MENU>,
-                                             <KEY_OK>,
-                                             <KEY_MENU>;
+                linux,keycodes = <KEY_SELECT>,
+                                 <KEY_MENU>,
+                                 <KEY_OK>,
+                                 <KEY_MENU>;
 
-                            hall-switch-south {
-                                    linux,code = <SW_LID>;
-                                    azoteq,use-prox;
-                            };
-                    };
-
-                    iqs620a_pwm: pwm {
-                            compatible = "azoteq,iqs620a-pwm";
-                            #pwm-cells = <2>;
-                    };
+                hall-switch-south {
+                    linux,code = <SW_LID>;
+                    azoteq,use-prox;
+                };
             };
-    };
 
-    pwmleds {
-            compatible = "pwm-leds";
-
-            led-1 {
-                    pwms = <&iqs620a_pwm 0 1000000>;
-                    max-brightness = <255>;
+            iqs620a_pwm: pwm {
+                compatible = "azoteq,iqs620a-pwm";
+                #pwm-cells = <2>;
             };
+        };
     };
 
   - |
@@ -105,37 +96,37 @@ examples:
     #include <dt-bindings/interrupt-controller/irq.h>
 
     i2c {
-            #address-cells = <1>;
-            #size-cells = <0>;
+        #address-cells = <1>;
+        #size-cells = <0>;
 
-            iqs620a@44 {
-                    compatible = "azoteq,iqs620a";
-                    reg = <0x44>;
-                    interrupt-parent = <&gpio>;
-                    interrupts = <17 IRQ_TYPE_LEVEL_LOW>;
+        iqs620a@44 {
+            compatible = "azoteq,iqs620a";
+            reg = <0x44>;
+            interrupt-parent = <&gpio>;
+            interrupts = <17 IRQ_TYPE_LEVEL_LOW>;
 
-                    firmware-name = "iqs620a_coil.bin";
+            firmware-name = "iqs620a_coil.bin";
 
-                    keys {
-                            compatible = "azoteq,iqs620a-keys";
+            keys {
+                compatible = "azoteq,iqs620a-keys";
 
-                            linux,keycodes = <0>,
-                                             <0>,
-                                             <0>,
-                                             <0>,
-                                             <0>,
-                                             <0>,
-                                             <KEY_MUTE>;
+                linux,keycodes = <0>,
+                                 <0>,
+                                 <0>,
+                                 <0>,
+                                 <0>,
+                                 <0>,
+                                 <KEY_MUTE>;
 
-                            hall-switch-north {
-                                    linux,code = <SW_DOCK>;
-                            };
+                hall-switch-north {
+                    linux,code = <SW_DOCK>;
+                };
 
-                            hall-switch-south {
-                                    linux,code = <SW_TABLET_MODE>;
-                            };
-                    };
+                hall-switch-south {
+                    linux,code = <SW_TABLET_MODE>;
+                };
             };
+        };
     };
 
   - |
@@ -144,36 +135,36 @@ examples:
     #include <dt-bindings/interrupt-controller/irq.h>
 
     i2c {
-            #address-cells = <1>;
-            #size-cells = <0>;
+        #address-cells = <1>;
+        #size-cells = <0>;
 
-            iqs624@44 {
-                    compatible = "azoteq,iqs624";
-                    reg = <0x44>;
-                    interrupt-parent = <&gpio>;
-                    interrupts = <17 IRQ_TYPE_LEVEL_LOW>;
+        iqs624@44 {
+            compatible = "azoteq,iqs624";
+            reg = <0x44>;
+            interrupt-parent = <&gpio>;
+            interrupts = <17 IRQ_TYPE_LEVEL_LOW>;
 
-                    keys {
-                            compatible = "azoteq,iqs624-keys";
+            keys {
+                compatible = "azoteq,iqs624-keys";
 
-                            linux,keycodes = <BTN_0>,
-                                             <0>,
-                                             <BTN_1>,
-                                             <0>,
-                                             <0>,
-                                             <0>,
-                                             <0>,
-                                             <0>,
-                                             <0>,
-                                             <0>,
-                                             <0>,
-                                             <0>,
-                                             <0>,
-                                             <0>,
-                                             <KEY_VOLUMEUP>,
-                                             <KEY_VOLUMEDOWN>;
-                    };
+                linux,keycodes = <BTN_0>,
+                                 <0>,
+                                 <BTN_1>,
+                                 <0>,
+                                 <0>,
+                                 <0>,
+                                 <0>,
+                                 <0>,
+                                 <0>,
+                                 <0>,
+                                 <0>,
+                                 <0>,
+                                 <0>,
+                                 <0>,
+                                 <KEY_VOLUMEUP>,
+                                 <KEY_VOLUMEDOWN>;
             };
+        };
     };
 
 ...
diff --git a/Documentation/devicetree/bindings/mfd/netronix,ntxec.yaml b/Documentation/devicetree/bindings/mfd/netronix,ntxec.yaml
index 06bada577acb..37fbb953ea12 100644
--- a/Documentation/devicetree/bindings/mfd/netronix,ntxec.yaml
+++ b/Documentation/devicetree/bindings/mfd/netronix,ntxec.yaml
@@ -48,18 +48,18 @@ examples:
   - |
     #include <dt-bindings/interrupt-controller/irq.h>
     i2c {
-            #address-cells = <1>;
-            #size-cells = <0>;
+        #address-cells = <1>;
+        #size-cells = <0>;
 
-            ec: embedded-controller@43 {
-                    pinctrl-names = "default";
-                    pinctrl-0 = <&pinctrl_ntxec>;
+        ec: embedded-controller@43 {
+                pinctrl-names = "default";
+                pinctrl-0 = <&pinctrl_ntxec>;
 
-                    compatible = "netronix,ntxec";
-                    reg = <0x43>;
-                    system-power-controller;
-                    interrupt-parent = <&gpio4>;
-                    interrupts = <11 IRQ_TYPE_EDGE_FALLING>;
-                    #pwm-cells = <2>;
-            };
+                compatible = "netronix,ntxec";
+                reg = <0x43>;
+                system-power-controller;
+                interrupt-parent = <&gpio4>;
+                interrupts = <11 IRQ_TYPE_EDGE_FALLING>;
+                #pwm-cells = <2>;
+        };
     };
diff --git a/Documentation/devicetree/bindings/mfd/rohm,bd9571mwv.yaml b/Documentation/devicetree/bindings/mfd/rohm,bd9571mwv.yaml
index 534cf03f36bb..47611c2a982c 100644
--- a/Documentation/devicetree/bindings/mfd/rohm,bd9571mwv.yaml
+++ b/Documentation/devicetree/bindings/mfd/rohm,bd9571mwv.yaml
@@ -99,29 +99,29 @@ examples:
     #include <dt-bindings/interrupt-controller/irq.h>
 
     i2c {
-          #address-cells = <1>;
-          #size-cells = <0>;
+        #address-cells = <1>;
+        #size-cells = <0>;
 
-          pmic: pmic@30 {
-                  compatible = "rohm,bd9571mwv";
-                  reg = <0x30>;
-                  interrupt-parent = <&gpio2>;
-                  interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
-                  interrupt-controller;
-                  #interrupt-cells = <2>;
-                  gpio-controller;
-                  #gpio-cells = <2>;
-                  rohm,ddr-backup-power = <0xf>;
-                  rohm,rstbmode-pulse;
+        pmic: pmic@30 {
+            compatible = "rohm,bd9571mwv";
+            reg = <0x30>;
+            interrupt-parent = <&gpio2>;
+            interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+            interrupt-controller;
+            #interrupt-cells = <2>;
+            gpio-controller;
+            #gpio-cells = <2>;
+            rohm,ddr-backup-power = <0xf>;
+            rohm,rstbmode-pulse;
 
-                  regulators {
-                          dvfs: dvfs {
-                                  regulator-name = "dvfs";
-                                  regulator-min-microvolt = <750000>;
-                                  regulator-max-microvolt = <1030000>;
-                                  regulator-boot-on;
-                                  regulator-always-on;
-                          };
-                  };
-          };
+            regulators {
+                dvfs: dvfs {
+                    regulator-name = "dvfs";
+                    regulator-min-microvolt = <750000>;
+                    regulator-max-microvolt = <1030000>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                };
+            };
+        };
     };
diff --git a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
index 3f7661bdd202..45f015d63df1 100644
--- a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
+++ b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
@@ -316,106 +316,106 @@ additionalProperties: false
 
 examples:
   - |
-      i2c {
-          #address-cells = <1>;
-          #size-cells = <0>;
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
 
-          pmic@30 {
-              compatible = "x-powers,axp152";
-              reg = <0x30>;
-              interrupts = <0>;
-              interrupt-controller;
-              #interrupt-cells = <1>;
-          };
-      };
+        pmic@30 {
+            compatible = "x-powers,axp152";
+            reg = <0x30>;
+            interrupts = <0>;
+            interrupt-controller;
+            #interrupt-cells = <1>;
+        };
+    };
 
   - |
-      #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
 
-      i2c {
-          #address-cells = <1>;
-          #size-cells = <0>;
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
 
-          pmic@34 {
-              compatible = "x-powers,axp209";
-              reg = <0x34>;
-              interrupt-parent = <&nmi_intc>;
-              interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
-              interrupt-controller;
-              #interrupt-cells = <1>;
+        pmic@34 {
+            compatible = "x-powers,axp209";
+            reg = <0x34>;
+            interrupt-parent = <&nmi_intc>;
+            interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+            interrupt-controller;
+            #interrupt-cells = <1>;
 
-              ac_power_supply: ac-power {
-                  compatible = "x-powers,axp202-ac-power-supply";
-              };
+            ac_power_supply: ac-power {
+                compatible = "x-powers,axp202-ac-power-supply";
+            };
 
-              axp_adc: adc {
-                  compatible = "x-powers,axp209-adc";
-                  #io-channel-cells = <1>;
-              };
+            axp_adc: adc {
+                compatible = "x-powers,axp209-adc";
+                #io-channel-cells = <1>;
+            };
 
-              axp_gpio: gpio {
-                  compatible = "x-powers,axp209-gpio";
-                  gpio-controller;
-                  #gpio-cells = <2>;
+            axp_gpio: gpio {
+                compatible = "x-powers,axp209-gpio";
+                gpio-controller;
+                #gpio-cells = <2>;
 
-                  gpio0-adc-pin {
-                      pins = "GPIO0";
-                      function = "adc";
-                  };
-              };
+                gpio0-adc-pin {
+                    pins = "GPIO0";
+                    function = "adc";
+                };
+            };
 
-              battery_power_supply: battery-power {
-                  compatible = "x-powers,axp209-battery-power-supply";
-              };
+            battery_power_supply: battery-power {
+                compatible = "x-powers,axp209-battery-power-supply";
+            };
 
-              regulators {
-                  /* Default work frequency for buck regulators */
-                  x-powers,dcdc-freq = <1500>;
+            regulators {
+                /* Default work frequency for buck regulators */
+                x-powers,dcdc-freq = <1500>;
 
-                  reg_dcdc2: dcdc2 {
-                      regulator-always-on;
-                      regulator-min-microvolt = <1000000>;
-                      regulator-max-microvolt = <1450000>;
-                      regulator-name = "vdd-cpu";
-                  };
+                reg_dcdc2: dcdc2 {
+                    regulator-always-on;
+                    regulator-min-microvolt = <1000000>;
+                    regulator-max-microvolt = <1450000>;
+                    regulator-name = "vdd-cpu";
+                };
 
-                  reg_dcdc3: dcdc3 {
-                      regulator-always-on;
-                      regulator-min-microvolt = <1000000>;
-                      regulator-max-microvolt = <1400000>;
-                      regulator-name = "vdd-int-dll";
-                  };
+                reg_dcdc3: dcdc3 {
+                    regulator-always-on;
+                    regulator-min-microvolt = <1000000>;
+                    regulator-max-microvolt = <1400000>;
+                    regulator-name = "vdd-int-dll";
+                };
 
-                  reg_ldo1: ldo1 {
-                      /* LDO1 is a fixed output regulator */
-                      regulator-always-on;
-                      regulator-min-microvolt = <1300000>;
-                      regulator-max-microvolt = <1300000>;
-                      regulator-name = "vdd-rtc";
-                  };
+                reg_ldo1: ldo1 {
+                    /* LDO1 is a fixed output regulator */
+                    regulator-always-on;
+                    regulator-min-microvolt = <1300000>;
+                    regulator-max-microvolt = <1300000>;
+                    regulator-name = "vdd-rtc";
+                };
 
-                  reg_ldo2: ldo2 {
-                      regulator-always-on;
-                      regulator-min-microvolt = <3000000>;
-                      regulator-max-microvolt = <3000000>;
-                      regulator-name = "avcc";
-                  };
+                reg_ldo2: ldo2 {
+                    regulator-always-on;
+                    regulator-min-microvolt = <3000000>;
+                    regulator-max-microvolt = <3000000>;
+                    regulator-name = "avcc";
+                };
 
-                  reg_ldo3: ldo3 {
-                      regulator-name = "ldo3";
-                  };
+                reg_ldo3: ldo3 {
+                    regulator-name = "ldo3";
+                };
 
-                  reg_ldo4: ldo4 {
-                      regulator-name = "ldo4";
-                  };
+                reg_ldo4: ldo4 {
+                    regulator-name = "ldo4";
+                };
 
-                  reg_ldo5: ldo5 {
-                      regulator-name = "ldo5";
-                  };
-              };
+                reg_ldo5: ldo5 {
+                    regulator-name = "ldo5";
+                };
+            };
 
-              usb_power_supply: usb-power {
-                  compatible = "x-powers,axp202-usb-power-supply";
-              };
-          };
-      };
+            usb_power_supply: usb-power {
+                compatible = "x-powers,axp202-usb-power-supply";
+            };
+        };
+    };
-- 
2.43.0


