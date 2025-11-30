Return-Path: <devicetree+bounces-243204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0E5C951CD
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 16:40:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 236B63A1E0B
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 15:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AEB4284686;
	Sun, 30 Nov 2025 15:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WbAmPc6F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 867ED284662
	for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 15:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764517216; cv=none; b=Z+zd9RjpIyLVvo/IjegWYjZ8Vc226qj1q6KLmFz09YxIlDvGm0gf1T8GJYlBy3XrkBinKwimgNujb/s5YT9lKjgDH+Z31g2GFjSa5MQHHI279tBFLQZFxmiVhEIYSo7KAb/eUfINUujGIpL244ktbUHW9lcOqknhA0IN34eVa4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764517216; c=relaxed/simple;
	bh=zkn8kltLhz23EcttZ3N9WNmv4oYYrlz6KY+wvuCiKpM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=m7qUWd3Kf8MRDPds6Hr+SuVz5TDeAs5UGDT6Sr5mEFWbB+gmXYp0/IN5686ShxJ3/wVwrQzAFbUbX2L7Z9Lr9YhGhb7W210CbPrtX8gPJTQeQE6kbmy+8Asib4S/ESQKm4PZ+/fCCq2/YQLc3n0dNdFkgcqAKdUwKrZEbvstZWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WbAmPc6F; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-295548467c7so39232285ad.2
        for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 07:40:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764517214; x=1765122014; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P6T+D/cptipZ1zMSMuOxtYB2gBcAx2I+UDBRGZjvt1w=;
        b=WbAmPc6F+waHectJNLeIHKWMRYIUTU8jz0Shmx96NKTHV8KgESClYRQpWjHfYBIbIa
         BNDlYlLmsQrorbSLLPAZpA5LLDVvlS/IFdeX979lgdv9zz9H6H8IwFVa8dV6bK9lXlBc
         tCN4HXle4sPJ30CH7FLBXRqx/lxbk/LCztqazq5O2AYLs608VroUfwST0HNpvumbQFWi
         76vPUA4+ZDpEDj4Cqjndej53RAKDq4+7k+HWagF0ic1wX9sUfV5H76CnbquhNUwuc6kn
         lMCy1rwOLZCqwKy/GcfDZo50gtLfdEax9b3SHXbJnl1wE/mcZ7lgeYemYwthiEzkQTjD
         eXig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764517214; x=1765122014;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=P6T+D/cptipZ1zMSMuOxtYB2gBcAx2I+UDBRGZjvt1w=;
        b=H/IlO/aFKhbJwwOWDG5AiQUzyG7Ed/Xn04U6Xphe9pRoFycrXZfWN7Tiw6ADWMrMmi
         9ZlKC1ZqjCoBc6WkHBQr163E8p5YJkwO35WSM9zQlc+Ccs8m44+yrmBFj8yMwxQCqN5Y
         Si3mgGWRrNdOCydSyaGED6B4yd35OKtfoYJLC/1IUIdHnKfK2UXz/XNDvnIgu6IQwZ8Y
         vDao1U7bJvtb/3E8CVZ6fvnrx8RomI1yiFRW5h4bcBz8nhVW5a2jPpXHJvfv/11ZXSMr
         zNdC5jdwFvz60Qigo6+9juMX74Heke4ahSTV5R2PreJA2RO02iIJUVeOLfe3uX9INNCR
         ADiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGlE+gQJmjKe3Faal/JyUB14mY/mpg0uUuqnwoH+4FttjVEeUE2X6+gKvgvvu+RnBFAF8dHXd33rY6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/os+7HHWZ96WbBThxG8QnhftyhvB8HpB3bxSM4CqKSBBuoRVy
	ZMtgVfHaDvFGe9geC6g7yClXE0o8D0ZntCF8RyHpz8iMHNX4KbxqseDY
X-Gm-Gg: ASbGncsJoQnGLat66SzSI34CALAXzxyH9Gyby8F5xyplNAt8agjUEe7v1IwtiugD4eh
	TATGxwY1WBT1GxjFt4agCXDSr1WNebD5u7YZx6qEIAcck7nPZnV/XMkEGkLQRBtWFPURfmnFizZ
	llXPdA5o1WCur32l5m9QExJWdjsNgUCPv+/DpzatljlS26W+7NIiHsAuUIWOHXwH+uJMFJX5gtn
	vmD/V5pn3mj3avXPerUbTV0G7+fzO9nM+j+fovWJxiOBkl5LsZ8kIYxNZTkgtXzyeXQlCBXoeKY
	OEguSQZa3y6pkiuVhDaFMJUjm0J4TbuKFdrEPFbrvC3ZpBMOlT8IFAd5BKcI04i3XNFh8IC9yZW
	edRIc/JP9kwUDZ60sdZPp0FDJzwN89ePBh7TuFX8x6pucA9uCVv/bNKJGDwAvJzSphMJJ3wFXtE
	HqqPoxTR+lSd5IfM3vfS4Ebw==
X-Google-Smtp-Source: AGHT+IHOY1KfmkmH9Lc/h5ln083JWiO/Ogem/bMvB7ufGSvT42AL5nZXRP0qWF+b0kKkAxm1iYr11g==
X-Received: by 2002:a17:902:ebca:b0:295:20b8:e104 with SMTP id d9443c01a7336-29b6bfb2dbfmr355613115ad.58.1764517213656;
        Sun, 30 Nov 2025 07:40:13 -0800 (PST)
Received: from DESKTOP-P76LG1N.lan ([42.116.199.188])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-be5e7485b1esm8640097a12.20.2025.11.30.07.40.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 07:40:12 -0800 (PST)
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
Subject: [PATCH v19 1/3] dt-bindings: leds: add TI/National Semiconductor LP5812 LED Driver
Date: Sun, 30 Nov 2025 22:39:54 +0700
Message-Id: <20251130153956.241375-2-trannamatk@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251130153956.241375-1-trannamatk@gmail.com>
References: <20251130153956.241375-1-trannamatk@gmail.com>
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

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
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
index e8f06145fb54..5b78d65e7625 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25449,6 +25449,12 @@ S:	Supported
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


