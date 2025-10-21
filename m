Return-Path: <devicetree+bounces-229438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 277DDBF78CB
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 18:00:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E2CB3B56ED
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 15:59:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F88D3451B5;
	Tue, 21 Oct 2025 15:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OUHZQz3D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC673451B6
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 15:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761062384; cv=none; b=rjVRhhkQC2gj7bOAidCVksG+maXB3qejNYl88fG8DpDNJYPTdaBc2cdkf0xpN0WoZdMCd5nEMW5xn1/ksDYosFPXJ23F0zFo/ho9a+tIIRaYlcNLpRGh7xRYxAxQB7d80LCGxgPMK0Z17+K8HUDWllco7AokhMyifsqaBA8ganA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761062384; c=relaxed/simple;
	bh=DVZk9/6Hz1u40oFEn/dvO2HpS/h5DXQYBj9t8pth4is=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JuGBpGGIXzT/JH5bVdYSABky/UJMKmxbW+EQPsHw2R56YKErzAC4JpXiIA87QfgLn0IYypSRBM5qc0gj+okcewajoyUnoDj4SDMeAAg0px86fBsTxn49xD1klHWosDmnniBdmw03nfQGz51sxKOPb2rr6ZHzWPFuMq5/iKSWcu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OUHZQz3D; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-796f9a8a088so5187548b3a.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761062381; x=1761667181; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3BYngmfsv4iOZfMpdOA17S9GKl2RTrHqqlq8fKnQ8GQ=;
        b=OUHZQz3D5cHZsZR8Ksf87Ly0xumBMlW4XsYH6e0hx1gyzwBmvkKrN5rpM6oAFP95Y1
         kQGSAEn+PQTqoO8eBFoB4Ha/s7tHo6SUKFMyMHHoULAsfwZDXNlsqbOZOXOPafJ4MBcx
         EysLHc2nNJwZRKTZTdoJdlH+W2dlzjmCLxOH6MdF1otb69HLU/3QxlXQhjBUrVS10pWu
         mXQMAuHOgWMY0vySwsJtO8ausQqUN9lacOcGCDmxHKFXRsSBWEJLY6J/w19SZg79Phuq
         fFyC454zxkDOWu468mkTnauvX/GdvQnqNytQETdzuBlRdRrRjqs3fWz7uqYVMSjKraLI
         XU7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761062381; x=1761667181;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3BYngmfsv4iOZfMpdOA17S9GKl2RTrHqqlq8fKnQ8GQ=;
        b=viq/2/IEe3h6C1yTzuFJErnwd1/QvwHyW6oSNYMch79R1V7ceJX0jSNxgsolUw1zWf
         LNQVzrxZo6X5OXRmd7H0KNczlqvOv562jL0UGVkMI3Tcwhl5gCyqXJ/uAeOi9lvCRh2f
         3/evjCJJLecaIsapSRn160EP9SvufDjkjxxSbNS/OmGE8SPJ48mj2KF/zrCpZDxI7Ian
         BNh7KoQsJg4gqI3D8862EB1+B8vXsWL6iDCATTA0+UguqjiUBnkJUOnc3eQqlhL2ESsA
         Gpt4p5F5yQn/xRp6hPXDsPAsq1hooARlFIWF9S4auYMfTnBX6pH1/I2VnHSyosVs+/O4
         OYsg==
X-Forwarded-Encrypted: i=1; AJvYcCV+ghFYo6NYL20OK9Ico7BtqTZXctshy1NXHHZVNswHpo7BG5W7KjHTTralIylOwM5fDhMuUwhQvbxe@vger.kernel.org
X-Gm-Message-State: AOJu0YyGK0GSKNHimCxOyMd8IXqEVKhyBD79Kq6r5U42fxCYZLYY1kSW
	TEHVOG+XXlbIjIIuYs2sseTzBBdSvq/qy5zmx7kvI6Iwcw/TzhsIPNLI
X-Gm-Gg: ASbGncupBBquLZyuByrIHCESjT2O6aOcy7HH66RLYQ8PWiWId0yePbHxVwNkycUr01p
	rEDnHZx7sFuKCLvtIJ48Xp+wXv1Cm45LVIQVWjOQKL0Oh3XcpgKTyROntrQ5B7oo3o5YZFkZa/n
	ci6xJ+HLp2B/o96Ka6Z0W9lTgFLMmfxPDuCs7mOzh6AkjL+dlePge7GAP6ZkC5fQpf99PFUWlx2
	KZ2on34oDUcUCMmf4ySn9yQeMaxGLwtAo4XKch5oMZJXzicAQANIum9TZSM+59xsh+lgVF+ULDZ
	0rJlAJ4mtWsSu6CJ08S+lUadfkcUYZ9AHEW9uWGnnLCJ1oJT8Y+JVdBUBdj6b3dOlwOU7Ve5zzR
	cIM2/6mjUl7gJTIpetzglcKvdoAC9kho3lu82gsVkx8eDjg29Mov8hiIHhXbEQ5eHkZEmIGQIpC
	Ejz6r6/+m62yjLD30n76HOnQ==
X-Google-Smtp-Source: AGHT+IEtJXtD4SFYx9QJaaRQ/IY2Zd/UHeW3zow+bskDa2aDqwuFyhBsTTMrh4PK8Y00pXXiRosWCQ==
X-Received: by 2002:a05:6a00:2308:b0:792:52ab:d9fe with SMTP id d2e1a72fcca58-7a220440d9fmr21260599b3a.0.1761062381001;
        Tue, 21 Oct 2025 08:59:41 -0700 (PDT)
Received: from DESKTOP-P76LG1N.lan ([42.118.149.214])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a22ff184basm11793032b3a.15.2025.10.21.08.59.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 08:59:40 -0700 (PDT)
From: Nam Tran <trannamatk@gmail.com>
To: lee@kernel.org
Cc: pavel@kernel.org,
	gregkh@linuxfoundation.org,
	rdunlap@infradead.org,
	christophe.jaillet@wanadoo.fr,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	linux-leds@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Nam Tran <trannamatk@gmail.com>
Subject: [PATCH v17 1/3] dt-bindings: leds: add TI/National Semiconductor LP5812 LED Driver
Date: Tue, 21 Oct 2025 22:59:25 +0700
Message-Id: <20251021155927.140929-2-trannamatk@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251021155927.140929-1-trannamatk@gmail.com>
References: <20251021155927.140929-1-trannamatk@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The LP5812 is a 4x3 RGB LED driver with an autonomous animation
engine and time-cross-multiplexing (TCM) support for up to 12 LEDs
or 4 RGB LEDs. It supports both analog (256 levels) and PWM (8-bit)
dimming, including exponential PWM for smooth brightness control.

Signed-off-by: Nam Tran <trannamatk@gmail.com>
---
 .../devicetree/bindings/leds/ti,lp5812.yaml   | 246 ++++++++++++++++++
 MAINTAINERS                                   |   6 +
 2 files changed, 252 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/ti,lp5812.yaml

diff --git a/Documentation/devicetree/bindings/leds/ti,lp5812.yaml b/Documentation/devicetree/bindings/leds/ti,lp5812.yaml
new file mode 100644
index 000000000000..de34bff441c7
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/ti,lp5812.yaml
@@ -0,0 +1,246 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/ti,lp5812.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI LP5812 4x3 Matrix RGB LED Driver with Autonomous Control
+
+maintainers:
+  - Nam Tran <trannamatk@gmail.com>
+
+description: |
+  The LP5812 is a 4x3 matrix RGB LED driver with I2C interface
+  and autonomous animation engine control.
+  For more product information please see the link below:
+  https://www.ti.com/product/LP5812#tech-docs
+
+properties:
+  compatible:
+    const: ti,lp5812
+
+  reg:
+    maxItems: 1
+
+  ti,scan-mode:
+    description: |
+      Selects the LED scan mode of the LP5812. The device supports
+      three modes:
+        - Direct-drive mode (by default if 'ti,scan-mode' is omitted)
+        drives up to 4 LEDs directly by internal current sinks (LED0-LED3).
+        - TCM-drive mode ("tcm:<n>:<order...>") drives up to 12 LEDs
+        (4 RGB) using 1-4 scan multiplexing. The <n> specifies the number
+        of scans (1-4), and <order...> defines the scan order of the outputs.
+        - Mix-drive mode ("mix:<n>:<direct>:<order...>") combines
+        direct-drive and TCM-drive outputs. The <n> specifies the number
+        of scans, <direct> selects the direct-drive outputs, and <order...>
+        defines the scan order.
+    $ref: /schemas/types.yaml#/definitions/string
+    pattern: '^(tcm|mix):[1-4](:[0-3]){1,4}$'
+
+  vcc-supply:
+    description: Regulator providing power to the 'VCC' pin.
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^led@[0-3]$":
+    type: object
+    $ref: common.yaml#
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        minimum: 0
+        maximum: 3
+
+    required:
+      - reg
+
+  "^multi-led@[4-7]$":
+    type: object
+    $ref: leds-class-multicolor.yaml#
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        minimum: 4
+        maximum: 7
+
+      "#address-cells":
+        const: 1
+
+      "#size-cells":
+        const: 0
+
+    patternProperties:
+      "^led@[4-9a-f]$":
+        type: object
+        $ref: common.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          reg:
+            minimum: 4
+            maximum: 15
+
+        required:
+          - reg
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/leds/common.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        led-controller@1b {
+            #address-cells = <1>;
+            #size-cells = <0>;
+            compatible = "ti,lp5812";
+            reg = <0x1b>;
+            ti,scan-mode = "tcm:4:0:1:2:3";
+            vcc-supply = <&vdd_3v3_reg>;
+
+            led@0 {
+                reg = <0x0>;
+                label = "LED0";
+                led-max-microamp = <25500>;
+            };
+
+            led@1 {
+                reg = <0x1>;
+                label = "LED1";
+                led-max-microamp = <25500>;
+            };
+
+            led@2 {
+                reg = <0x2>;
+                label = "LED2";
+                led-max-microamp = <25500>;
+            };
+
+            led@3 {
+                reg = <0x3>;
+                label = "LED3";
+                led-max-microamp = <25500>;
+            };
+
+            multi-led@4 {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                reg = <0x4>;
+                color = <LED_COLOR_ID_RGB>;
+                label = "LED_A";
+
+                led@4 {
+                    reg = <0x4>;
+                    color = <LED_COLOR_ID_GREEN>;
+                    led-max-microamp = <25500>;
+                };
+
+                led@5 {
+                    reg = <0x5>;
+                    color = <LED_COLOR_ID_RED>;
+                    led-max-microamp = <25500>;
+                };
+
+                led@6 {
+                    reg = <0x6>;
+                    color = <LED_COLOR_ID_BLUE>;
+                    led-max-microamp = <25500>;
+                };
+            };
+
+            multi-led@5 {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                reg = <0x5>;
+                color = <LED_COLOR_ID_RGB>;
+                label = "LED_B";
+
+                led@7 {
+                    reg = <0x7>;
+                    color = <LED_COLOR_ID_GREEN>;
+                    led-max-microamp = <25500>;
+                };
+
+                led@8 {
+                    reg = <0x8>;
+                    color = <LED_COLOR_ID_RED>;
+                    led-max-microamp = <25500>;
+                };
+
+                led@9 {
+                    reg = <0x9>;
+                    color = <LED_COLOR_ID_BLUE>;
+                    led-max-microamp = <25500>;
+                };
+            };
+
+            multi-led@6 {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                reg = <0x6>;
+                color = <LED_COLOR_ID_RGB>;
+                label = "LED_C";
+
+                led@a {
+                    reg = <0xa>;
+                    color = <LED_COLOR_ID_GREEN>;
+                    led-max-microamp = <25500>;
+                };
+
+                led@b {
+                    reg = <0xb>;
+                    color = <LED_COLOR_ID_RED>;
+                    led-max-microamp = <25500>;
+                };
+
+                led@c {
+                    reg = <0xc>;
+                    color = <LED_COLOR_ID_BLUE>;
+                    led-max-microamp = <25500>;
+                };
+            };
+
+            multi-led@7 {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                reg = <0x7>;
+                color = <LED_COLOR_ID_RGB>;
+                label = "LED_D";
+
+                led@d {
+                    reg = <0xd>;
+                    color = <LED_COLOR_ID_GREEN>;
+                    led-max-microamp = <25500>;
+                };
+
+                led@e {
+                    reg = <0xe>;
+                    color = <LED_COLOR_ID_RED>;
+                    led-max-microamp = <25500>;
+                };
+
+                led@f {
+                    reg = <0xf>;
+                    color = <LED_COLOR_ID_BLUE>;
+                    led-max-microamp = <25500>;
+                };
+            };
+        };
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 545a4776795e..6a84f999ef73 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25424,6 +25424,12 @@ S:	Supported
 F:	Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
 F:	drivers/iio/dac/ti-dac7612.c
 
+TEXAS INSTRUMENTS' LP5812 RGB LED DRIVER
+M:	Nam Tran <trannamatk@gmail.com>
+L:	linux-leds@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/leds/ti,lp5812.yaml
+
 TEXAS INSTRUMENTS' LB8864 LED BACKLIGHT DRIVER
 M:	Alexander Sverdlin <alexander.sverdlin@siemens.com>
 L:	linux-leds@vger.kernel.org
-- 
2.25.1


