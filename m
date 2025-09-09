Return-Path: <devicetree+bounces-214786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7A4B4A5FB
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 10:51:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 43CAD3A2BC1
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 08:51:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 127CF274FF1;
	Tue,  9 Sep 2025 08:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="ltDOABSV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0585C273D66
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 08:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757407912; cv=none; b=lNZBz5Eec+QT+JDjfqsVhDrcjFfktqSo7dsQ7hUjydiieU6VrHsbUBy7nz3r5DcK/eAhrzp39n1UaxasfsXuDf9tvav0xVfdGmeVFDaPyicrgFKLQSGYpaxdrCevEqeJlD12SBPmVJ0vRG8kP5k+/5+1WJYFMAR/mNVXljp8l6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757407912; c=relaxed/simple;
	bh=V2LD4c2YqvvZsVb5vESU9/gd6wD8GomVEn03Q1TEoGs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=BszzMzrhzX2epx6M3x1jdiyJdFAN5V9SPep/q1MBab6s3tWAaA0sN2zH08DdUmP/Zfw8D4RN9SIRWri7A760vDLKHVBaDceRv9EWZ+8Bgw43TGJrGlgzbGZUjRM3xt7v9iau5fX31NcMHn3/63R8apl4FjQysRi1qCC/Yt4asBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=ltDOABSV; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45df0cde41bso2026185e9.3
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 01:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1757407908; x=1758012708; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tHOTfsWdn/6gtCaqm3kyodB2aISE9a8blixZBCDKEC0=;
        b=ltDOABSVqTsGV825nIpTAAJaEfXwjAihqfxwt+ds5dPG2f7IcAXwblMDzYza4tVg7n
         cuFVFYQFg913RoAqnOxsEXVioHGHwcW98bduwLB7xJyqjQQW+yxS7W41kKxXBL+7E7E+
         XVZeCXnQcH4+TwFNmvVsnUaAHVM/A5D5/7z0Dos8AEkf9XkkCkUZFbtMNXp3dpjlebnG
         uzQinEK+Y3JM+3Ant/c1t5wophlzUbUgtSlbJ5FBBLvaJDoRXYVOoJ7elEd9+aofWESG
         uMyQ5QYcKVLo/aoYeTeta42vhnnLYhhqdfihh2/O9fWAqNiJo3rrGAx65Kb8LirUTdWx
         PKDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757407908; x=1758012708;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tHOTfsWdn/6gtCaqm3kyodB2aISE9a8blixZBCDKEC0=;
        b=sRrkb/hnTfp6rFuTazHSBMgzWCnSuo7ySxipaC+ry/dAgv3o7EhqzyiaslxU9bQhxr
         o26WwRzW/j/G0Gf696gDNyS/8nFCH5Obc6H76yAmlhF21Rec+7B1lYoWPkzx0djfY3Fc
         99+tS0mKzUX+LyIphKihcWtQ9/TbJYCGI3hQu9RMcJYn01UW3JiMaeKvEMaWVyiBJEz9
         QUI09TdrBYej9SQ80rbAXC7IlwOnR7VTvimG2+r4nRcQbIf5Za9YwjZeWm0IA/wzyg6I
         7XdfqDscEM5rJv2QQDHh2Mb+c2X8oR0ICRufAt+ubizQ0x9COrbxd0O0L3SaKI3/HED6
         UkKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpsVHgHi4lnFp1Jeeqw7MhI0KnBJz3tVbX/oI7ms+2sMVQbGf/b/f0K7Xl3ph9XttwPNHKuPNV+l/X@vger.kernel.org
X-Gm-Message-State: AOJu0YzeVK56IvyodXuimPfBSRjIWxjOHYRUTwW0zCV6HXsF9s/enOkg
	BzJXxaT5s7CQG/DNZEdULEY++lrQFS6zjx5+V8LY6PhxAfJs4nazSuFzNzgFTWxpygfsFLJwKwD
	NVGdLH5k=
X-Gm-Gg: ASbGncs+/5SHRtQzvZUKUj4ih5wnfHc1NvVlQzhMOvtakk8g/Y5Y6SHZXzGGLeFIaKq
	sw6F0Po8Htfb169qeMjmv5Fezn9/temOazpHfpkf0fWyX96ZRLDiLuxXWrUb3uEv3h5ajNqkkuX
	Nc7N7mLqj8xyc/j1dhyKOiLCSObpVlmcjS6/Xv+GlIX0qvY+hjyZpiTowhELNmIXpZYHukDP1lH
	mdoW8/JfXB569N5Pmr2QGS5tg9+rQfCwSG2wTy1ncEeJGkkMu+AB7GwD6QhKNFeJfx/jkVEAxuo
	50s6OjrPRk/X78FFEdqgK20YfClG92DYUaUGDWOQVILX/KaSyLnADL7z2sNYjqG+BXPuc1Psyu3
	bN6DjtlElE8p6zPyxbU4IW6xG4FRLf7AGBW1WLvET5/NiY07/9Uu4T2RsNw==
X-Google-Smtp-Source: AGHT+IEPSBuO9Gho/ytg2wOmIg3pXkxG0F3RZPO+7vrq2Q8pxjaaLAsoZ56SGlT+JonILgddvkWrgA==
X-Received: by 2002:a05:600c:4fcd:b0:45d:dae8:b137 with SMTP id 5b1f17b1804b1-45dddec8468mr90281295e9.22.1757407908240;
        Tue, 09 Sep 2025 01:51:48 -0700 (PDT)
Received: from [127.0.1.1] ([2a02:c7c:8a3e:8c00:8286:d205:8f5a:7f5e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e8ab14esm518120955e9.21.2025.09.09.01.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 01:51:47 -0700 (PDT)
From: Harrison Carter <hcarter@thegoodpenguin.co.uk>
Date: Tue, 09 Sep 2025 09:50:04 +0100
Subject: [PATCH] dt-bindings: leds: as3645: Convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250909-ams-txt-to-dt-schema-v1-1-8a30c25c8295@thegoodpenguin.co.uk>
X-B4-Tracking: v=1; b=H4sIADvqv2gC/x3MPQqAMAxA4atIZgOxalGvIg6lRpvBH5oignh3i
 +M3vPeAchRWGIoHIl+icuwZVVmAD25fGWXOBkOmpZ4suk0x3QnTgXNC9YE3h64zFRNT7RsLOT0
 jL3L/23F63w8xQxsIZgAAAA==
X-Change-ID: 20250906-ams-txt-to-dt-schema-a821e0e03c46
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Harrison Carter <hcarter@thegoodpenguin.co.uk>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757407907; l=6995;
 i=hcarter@thegoodpenguin.co.uk; s=20250904; h=from:subject:message-id;
 bh=V2LD4c2YqvvZsVb5vESU9/gd6wD8GomVEn03Q1TEoGs=;
 b=rBNQmeJz2PGwDsJGqsOXX1epHswRma8CnJWbRuPlFCb/5p6jTQoQIf6sw7hPS2IOHOXk5e2xF
 vO8j5IPQsetDeZKfN9rMtlGcGk8POnv+7EMXTif4JMkRYPWHczIEqIu
X-Developer-Key: i=hcarter@thegoodpenguin.co.uk; a=ed25519;
 pk=xn5ghTMMWQniDtZih4xwKCTAaBHDozflTmqNKtaKo6s=

Convert the ams,as3645a.txt to DT Schema format.

maintainer: set to what I found in MAINTAINERS

Signed-off-by: Harrison Carter <hcarter@thegoodpenguin.co.uk>
---
 .../devicetree/bindings/leds/ams,as3645a.txt       |  85 --------------
 .../devicetree/bindings/leds/ams,as3645a.yaml      | 130 +++++++++++++++++++++
 2 files changed, 130 insertions(+), 85 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/ams,as3645a.txt b/Documentation/devicetree/bindings/leds/ams,as3645a.txt
deleted file mode 100644
index 4af2987b25e92394ebd46456e30002d3ae3a6101..0000000000000000000000000000000000000000
--- a/Documentation/devicetree/bindings/leds/ams,as3645a.txt
+++ /dev/null
@@ -1,85 +0,0 @@
-Analog devices AS3645A device tree bindings
-
-The AS3645A flash LED controller can drive two LEDs, one high current
-flash LED and one indicator LED. The high current flash LED can be
-used in torch mode as well.
-
-Ranges below noted as [a, b] are closed ranges between a and b, i.e. a
-and b are included in the range.
-
-Please also see common.txt in the same directory.
-
-
-Required properties
-===================
-
-compatible	: Must be "ams,as3645a".
-reg		: The I2C address of the device. Typically 0x30.
-#address-cells	: 1
-#size-cells	: 0
-
-
-Required properties of the flash child node (0)
-===============================================
-
-reg: 0
-flash-timeout-us: Flash timeout in microseconds. The value must be in
-		  the range [100000, 850000] and divisible by 50000.
-flash-max-microamp: Maximum flash current in microamperes. Has to be
-		    in the range between [200000, 500000] and
-		    divisible by 20000.
-led-max-microamp: Maximum torch (assist) current in microamperes. The
-		  value must be in the range between [20000, 160000] and
-		  divisible by 20000.
-ams,input-max-microamp: Maximum flash controller input current. The
-			value must be in the range [1250000, 2000000]
-			and divisible by 50000.
-
-
-Optional properties of the flash child node
-===========================================
-
-function	:  See Documentation/devicetree/bindings/leds/common.txt.
-color		:  See Documentation/devicetree/bindings/leds/common.txt.
-label		:  See Documentation/devicetree/bindings/leds/common.txt (deprecated).
-
-
-Required properties of the indicator child node (1)
-===================================================
-
-reg: 1
-led-max-microamp: Maximum indicator current. The allowed values are
-		  2500, 5000, 7500 and 10000.
-
-Optional properties of the indicator child node
-===============================================
-
-function	:  See Documentation/devicetree/bindings/leds/common.txt.
-color		:  See Documentation/devicetree/bindings/leds/common.txt.
-label		:  See Documentation/devicetree/bindings/leds/common.txt (deprecated).
-
-
-Example
-=======
-
-#include <dt-bindings/leds/common.h>
-
-	as3645a@30 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x30>;
-		compatible = "ams,as3645a";
-		led@0 {
-			reg = <0x0>;
-			flash-timeout-us = <150000>;
-			flash-max-microamp = <320000>;
-			led-max-microamp = <60000>;
-			ams,input-max-microamp = <1750000>;
-			function = LED_FUNCTION_FLASH;
-		};
-		led@1 {
-			reg = <0x1>;
-			led-max-microamp = <10000>;
-			function = LED_FUNCTION_INDICATOR;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/leds/ams,as3645a.yaml b/Documentation/devicetree/bindings/leds/ams,as3645a.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..f956c20cc8fb379f370ad785a3d75f27d0cfa032
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/ams,as3645a.yaml
@@ -0,0 +1,130 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/ams,as3645a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices AS3645A LED Controller
+
+maintainers:
+  - Sakari Ailus <sakari.ailus@iki.fi>
+
+description: |
+  The AS3645A flash LED controller can drive two LEDs, one high current
+  flash LED and one indicator LED. The high current flash LED can be
+  used in torch mode as well.
+
+properties:
+  compatible:
+    const: ams,as3645a
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  reg:
+    maxItems: 1
+
+  led@0:
+    type: object
+    $ref: common.yaml#
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        const: 0
+
+      flash-timeout-us:
+        minimum: 100000
+        maximum: 850000
+        description: |
+          Flash timeout in microseconds. Must be divisible by 50000
+
+      flash-max-microamp:
+        minimum: 200000
+        maximum: 500000
+        description: |
+          Maximum flash current in microamperes. Must be divisible by 20000
+
+      led-max-microamp:
+        minimum: 20000
+        maximum: 160000
+        description: |
+          Maximum torch (assist) current in microamperes Must be divisible by 20000
+
+      ams,input-max-microamp:
+        minimum: 1250000
+        maximum: 2000000
+        description: |
+          Maximum flash controller input current. Must be divisible by 50000
+
+    required:
+      - reg
+      - flash-timeout-us
+      - flash-max-microamp
+      - led-max-microamp
+      - ams,input-max-microamp
+
+  led@1:
+    type: object
+    $ref: common.yaml#
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        const: 1
+
+      led-max-microamp:
+        enum:
+          - 2500
+          - 5000
+          - 7500
+          - 10000
+        description: |
+          Maximum indicator current. The allowed values are 2500, 5000, 7500 and 10000.
+
+    required:
+      - reg
+      - led-max-microamp
+
+required:
+  - compatible
+  - reg
+  - "#size-cells"
+  - "#address-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/leds/common.h>
+
+    i2c{
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        as3645a@30 {
+            compatible = "ams,as3645a";
+            #address-cells = <1>;
+            #size-cells = <0>;
+            reg = <0x30>;
+
+            led@0 {
+                reg = <0>;
+                flash-timeout-us = <150000>;
+                flash-max-microamp = <320000>;
+                led-max-microamp = <60000>;
+                ams,input-max-microamp = <1750000>;
+                function = LED_FUNCTION_FLASH;
+            };
+
+            led@1 {
+                reg = <1>;
+                led-max-microamp = <10000>;
+                function = LED_FUNCTION_INDICATOR;
+            };
+        };
+    };
+...

---
base-commit: c17b750b3ad9f45f2b6f7e6f7f4679844244f0b9
change-id: 20250906-ams-txt-to-dt-schema-a821e0e03c46

Best regards,
-- 
Harrison Carter <hcarter@thegoodpenguin.co.uk>


