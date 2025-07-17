Return-Path: <devicetree+bounces-197397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F44B09018
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 17:02:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE9771894CFD
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 15:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46DE52F8C50;
	Thu, 17 Jul 2025 15:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="ocUzcCeb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7EB29ACCB
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 15:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752764541; cv=none; b=Vu69zC8eway4cCzjl0HH5znClsmXIV8qm1yNyCPPUYTls/CKdOCXx/xw8JQzGIu9zz8h7ztoLFBki10Gz0edZSwJH0uFpDsLGO5qLSLgUgfdu7nQcC9XLvdqxqHdWglRRQXOqmdWs38bmsSG4NPlT7pNLtnqpExR3ugrWBToeuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752764541; c=relaxed/simple;
	bh=l8T7LiZXCrAeiVyOamQJQX6BS6kU3eX76OqQrth9bBA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rSh50gLpUzK6lqPI17qu45q6oIfNejwiADjfsGsKXEf6mfGNbb9o+I4L2y45Dke4LPMwH8Fwd/IIakRImdjrSu+LJglp2vbmnl5Scs2RtcsvRTT69PxAeEwpTUApRKjo7mLKtgp0TjGm+sRfcdfYdv5k+nvh1R6gXKTq5XsU9+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=ocUzcCeb; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4561607166aso8441955e9.2
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 08:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1752764536; x=1753369336; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sIyY2v/AOk/xVFcHhov1aG8CGPhp2IEuZMlBjYe1Qx8=;
        b=ocUzcCebby7ziNbT9uH0ckHHv26IUguAY29HxXTB9q1dWyVZTd24dEgd+1eIHukNJk
         SOQBScpFSOnpavPhBsTVRD1+63TXAT3HR/oOeF5yOGRWLQr516T8gQRSJRGnrervpGjD
         FZNewa6hrpliVmFyq+imsXUyKnmCaJeGD8xolv5HL3+KiAbQEusSuJRW7NS157VT2Ugz
         zisL8/n+/bDYdXv2A3el9HgjTsd3vUB6cwE6JjWXDcJ2rzr8JuQvW7Q9mBfkLYYNzsc/
         IHgeKNZUhpZuGBavTEXMsb4tUF/8nQToqYG0ClfEAmeakEDLgj7l+MdgS8bqjBwVaO0M
         wtdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752764536; x=1753369336;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sIyY2v/AOk/xVFcHhov1aG8CGPhp2IEuZMlBjYe1Qx8=;
        b=PLVcwRvsrm35BYDr4SU4MpvfjYTYiD9z9YQHfMKXdfl+ZKU+dJl47y5l+IEyV40rVF
         //xT/MqP8UvaC4aH9pkhMwBZGaZw3z6MBczUBot4MlAuROFpbD4gtCm2Y2L/PDnOUa4S
         jc9s7ooON4dh8Ca2S09/YmuFx7wbM5WnM0G0GkjbHtpbpBRKTWjQhKwJCaLfUrw4+t1a
         /CH+loBK2ZY0klz+k43QwQtDmH/CdXeG5tpSP37+TxTRgZrnpGoi8Rts4Pi/m0XvsQiD
         Lc9VjmtMIkZpeQSN2NgGqmLC3iZjlk9/uO/PY3rFevoLSHmcwVcfNA52nea6PYsVp/s6
         /vOw==
X-Forwarded-Encrypted: i=1; AJvYcCUNnlobNz5RxLwNwNz7KJaHCRB4kOj6GFdR/LQyOzPX1JMZn1NGnFoKVcXg8EH8T90L9nGvZA6m81Sg@vger.kernel.org
X-Gm-Message-State: AOJu0YwyMQb95WJDSGjKImU7U7wwXaqDbSi3GLQZqfcpU2u/cblTMWry
	XcOc9IRWiEdXaIxSexNcrvHMUngNJUvD8WT+CfY38j/gXojrN21L4B4QB9cz5dz8h5s=
X-Gm-Gg: ASbGncu4f1Y88Z4T/wWT1lEd8W985Ow3DMdFGtX/meqZlVIIwH5WzH+RrkwADIiB6u1
	hxGAn5sRPVzlsPdkHupk2yQtJEzzSPICrHT4bzCT7XtVnd3OSCIb35Q7xqwP+0lxNLOIcqKPL5S
	WiZB/pdRNc6hvtyB4VTxpdR56TCuyTFe5PN/laGJOWtBj8fmE730LXlIz8N6TJMN3NUuRoyDOdG
	G9Haun3PuhcXPeXZGTdCNfnyMBZHL9RCcXJU3zLytzSh0l7Sv6kOTv496p4GnBXNU9G9MxbkX/9
	AsCjEqzg1ID1U4cW7TpYRPrhozBHifuYRBYny5fydQdwm9pVMa0a/B9iWzQ1Yoh/Vyd8NrAsRUF
	TcO1ZMV4xxdk6Re7wYH8WG6z+oV1ovxGE2iLu/NiZSXo0DE8oOQ==
X-Google-Smtp-Source: AGHT+IFJStBQ3U3tGpyPIqXrJRu8l50bpOjCA3xRcp5u6FVuPIYGr5UIgxYI+B0GqnveH4YWgrtTkg==
X-Received: by 2002:a05:600c:310d:b0:456:13b6:4b18 with SMTP id 5b1f17b1804b1-4562e2a59a6mr81581685e9.31.1752764535588;
        Thu, 17 Jul 2025 08:02:15 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:23c7:1d1a:9c01:ebc8:7ccb:ef04:4f83])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45634f5cb9bsm25321885e9.10.2025.07.17.08.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 08:02:15 -0700 (PDT)
From: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
Date: Thu, 17 Jul 2025 16:02:07 +0100
Subject: [PATCH v4 1/3] dt-bindings: leds: is31fl32xx: convert the binding
 to yaml
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250717-leds-is31fl3236a-v4-1-72ef946bfbc8@thegoodpenguin.co.uk>
References: <20250717-leds-is31fl3236a-v4-0-72ef946bfbc8@thegoodpenguin.co.uk>
In-Reply-To: <20250717-leds-is31fl3236a-v4-0-72ef946bfbc8@thegoodpenguin.co.uk>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-leds@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Pavel Machek <pavel@ucw.cz>, devicetree@vger.kernel.org, 
 Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>, 
 Lucca Fachinetti <luccafachinetti@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752764533; l=5304;
 i=pzalewski@thegoodpenguin.co.uk; s=20250625; h=from:subject:message-id;
 bh=UX2F40/C4SA2sHvb86cZ86o0cODe+WSgWRbRYCYZb2M=;
 b=gUiGCVmFIrzBJBdwrjzvhaQU7x8wZZ48ELFhVuEnNzdeyFRhHJc+R2GoUWukXShwtd2URT7uS
 jg1oRljGhAYDW8CTNagKEk7nIw3HIm1ZVdXyA/SKJPhr3TSzAKRTn1U
X-Developer-Key: i=pzalewski@thegoodpenguin.co.uk; a=ed25519;
 pk=hHrwBom/yjrVTqpEvKpVXLYfxr6nqBNP16RkQopIRrI=

From: Lucca Fachinetti <luccafachinetti@gmail.com>

Add datasheets for reference, NB that I was not able to find an
up-to-date, funtional direct URL for si-en products datasheet
so they were skipped.

Signed-off-by: Lucca Fachinetti <luccafachinetti@gmail.com>
Co-developed-by: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
Signed-off-by: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
---
 .../devicetree/bindings/leds/issi,is31fl3236.yaml  | 114 +++++++++++++++++++++
 .../devicetree/bindings/leds/leds-is31fl32xx.txt   |  52 ----------
 2 files changed, 114 insertions(+), 52 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/issi,is31fl3236.yaml b/Documentation/devicetree/bindings/leds/issi,is31fl3236.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..abcd4c448e94db1d1e339f7ee165c3e04a1d354d
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/issi,is31fl3236.yaml
@@ -0,0 +1,114 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/issi,is31fl3236.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: is31fl32xx and Si-En SN32xx IC LED driver
+
+maintainers:
+  - Pavel Machek <pavel@ucw.cz>
+  - Lee Jones <lee@kernel.org>
+
+description: |
+  The is31fl32xx/SN32xx family of LED drivers are I2C devices with multiple
+  constant-current channels, each with independent 256-level PWM control.
+  Each LED is represented as a sub-node of the device.
+
+  For more product information please see the links below:
+    https://www.lumissil.com/assets/pdf/core/IS31FL3236_DS.pdf
+    https://www.lumissil.com/assets/pdf/core/IS31FL3236A_DS.pdf
+    https://www.lumissil.com/assets/pdf/core/IS31FL3235_DS.pdf
+    https://www.lumissil.com/assets/pdf/core/IS31FL3218_DS.pdf
+    https://www.lumissil.com/assets/pdf/core/IS31FL3216_DS.pdf
+
+properties:
+  compatible:
+    enum:
+      - issi,is31fl3236
+      - issi,is31fl3236a
+      - issi,is31fl3235
+      - issi,is31fl3218
+      - issi,is31fl3216
+      - si-en,sn3218
+      - si-en,sn3216
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^led@[1-9a-f][0-9a-f]$":
+    type: object
+    $ref: common.yaml#
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        description:
+          LED channel number (1..N)
+        minimum: 0x1
+        maximum: 0x24
+
+    required:
+      - reg
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - issi,is31fl3236
+              - issi,is31fl3235
+              - issi,is31fl3218
+              - issi,is31fl3216
+              - si-en,sn3218
+              - si-en,sn3216
+    then:
+      properties:
+        issi,22kHz-pwm: false
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
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        led-controller@3c {
+            compatible = "issi,is31fl3236";
+            reg = <0x3c>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            led@1 {
+                reg = <0x1>;
+                label = "led1:red";
+            };
+            led@2 {
+                reg = <0x2>;
+                label = "led1:green";
+            };
+            led@3 {
+                reg = <0x3>;
+                label = "led1:blue";
+            };
+        };
+    };
+...
+
diff --git a/Documentation/devicetree/bindings/leds/leds-is31fl32xx.txt b/Documentation/devicetree/bindings/leds/leds-is31fl32xx.txt
deleted file mode 100644
index 926c2117942c4dc200fcd68156864f544b11a326..0000000000000000000000000000000000000000
--- a/Documentation/devicetree/bindings/leds/leds-is31fl32xx.txt
+++ /dev/null
@@ -1,52 +0,0 @@
-Binding for ISSI IS31FL32xx and Si-En SN32xx LED Drivers
-
-The IS31FL32xx/SN32xx family of LED drivers are I2C devices with multiple
-constant-current channels, each with independent 256-level PWM control.
-Each LED is represented as a sub-node of the device.
-
-Required properties:
-- compatible: one of
-	issi,is31fl3236
-	issi,is31fl3235
-	issi,is31fl3218
-	issi,is31fl3216
-	si-en,sn3218
-	si-en,sn3216
-- reg: I2C slave address
-- address-cells : must be 1
-- size-cells : must be 0
-
-LED sub-node properties:
-- reg : LED channel number (1..N)
-- label :  (optional)
-  see Documentation/devicetree/bindings/leds/common.txt
-- linux,default-trigger :  (optional)
-  see Documentation/devicetree/bindings/leds/common.txt
-
-
-Example:
-
-is31fl3236: led-controller@3c {
-	compatible = "issi,is31fl3236";
-	reg = <0x3c>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	led@1 {
-		reg = <1>;
-		label = "EB:blue:usr0";
-	};
-	led@2 {
-		reg = <2>;
-		label = "EB:blue:usr1";
-	};
-	...
-	led@36 {
-		reg = <36>;
-		label = "EB:blue:usr35";
-	};
-};
-
-For more product information please see the links below:
-http://www.issi.com/US/product-analog-fxled-driver.shtml
-http://www.si-en.com/product.asp?parentid=890

-- 
2.48.1


