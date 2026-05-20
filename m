Return-Path: <devicetree+bounces-300658-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODXVJmy4DWrC2QUAu9opvQ
	(envelope-from <devicetree+bounces-300658-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 15:34:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1575558ED00
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 15:34:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 879143018282
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 13:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B25BF2D73B9;
	Wed, 20 May 2026 13:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="oFE3njep"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74D12D97B8
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 13:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779284044; cv=none; b=BuCd9tJCPksf3VawLLS9Sxv5rdg+LXDwqONxqkrsuWlUwx1G4KQgorzz6HPJpcXCAV83gfxEcDefWGCcCr8QMehFJW67pYajKMPn0v7B43B/JxAsE3y9UPwI2DyUw1+MseMVJeO7DB3iv4hbnUK5fX3UO1r8MK/jttjW8LZS1NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779284044; c=relaxed/simple;
	bh=BjdykeHS9BqEJZE1gE6CCOK/sLg66E2Y5BAmWKBD3Ho=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dDyauZ//xWnZuUDD8WsYYhtx4Rbv5uokbk67lH47F5LTZZbXFSliac83KnWgn0qSSKu65ooBZ8D8+41HyKQnJpk9YorxTuf91UurX+xOEymvtk/AiHNnh0A7x5DnU4DzDxG4nY1ycHdGekPG+NiCaiwG3n/Ey5BWEnmDBWX8Id0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=oFE3njep; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-43587e63a8eso3169075fac.0
        for <devicetree@vger.kernel.org>; Wed, 20 May 2026 06:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779284041; x=1779888841; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oAr9Tuamz6G4RMhF+mEaQvtccn86uYkrnM5/9wq0C+4=;
        b=oFE3njepusuwlDXbRrWVkht7doDMv8E3lbtntG/p1MVFNInt+/QSjvgK7hcJMVQZBK
         IKUaGMzPvkfeSxHh/tdzKvVLNO+/KU326x9HOzfCEA2hWOdq0wS4BJtDr/lLwacnAmwd
         kzFX3hGMY/Ov8jdTqSXDzbt/bDRRWtBittFh3JzbTgrirMbda4QA8fpEZ9n47HeqHxO4
         T1Iqjzz1XbwvtyugGQkwi53/TGysByf+OtVH0DjZUXL5l2WoptKySbkftgg3ANzlDZMe
         4Qq7+Ek9UrpBNBEQuBpu2yZM6OC6mc9saW3efbUNhPYtEQFRoazrTN4qI/PYSviHqMvd
         8bZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779284041; x=1779888841;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oAr9Tuamz6G4RMhF+mEaQvtccn86uYkrnM5/9wq0C+4=;
        b=KnSsEhPU1TV5GKVLjz9WTvjy+rfLMtNOKdRcgiBkpohgxOLihg/eLsv8dC7J+AYktp
         AWdk4/PvEPhvujZZuCNPSuGh5R22abF0nzDWofRx5kYWtNiWhRIPmo4l1JX4TytG4NrD
         b0AGgjh+yqw/T5znDe40zB7TkQpdtPncyIpcFwj5YbvP9hoWOpF5cLNY+wzVXhWD0mzP
         iGhS8lnBGLMarpdr+NYrOw0UvFC0aJPpqTn5YzRFQ0u/YKjmI94yClfvP3GP+ibZWcPT
         zON0ZsWTliAyC6UnWo7Zkrl3k9d+deV8vJUF1uXGrYzGDhg4reIacfSUx5as0sycDWIq
         ObSg==
X-Forwarded-Encrypted: i=1; AFNElJ8AZE5FA0pWbxTKp+/dhXp1rCZhk8/sGgVQ/vktp1F0gpyb5htSH3ASN2zQ0jhHO+40cOM6WDjxHcmx@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2ln+vqu/wGbnC613BI9DhNNzZVP3ko+OC12MVCDn8OJJMAiA3
	MjGysdPmn8HJ1fx0GbAy61JfCQKWVWe9+xW4DvaNa32OcCWsmtwYszHx
X-Gm-Gg: Acq92OGowEw4fhdldqFutef5tQ7qNIiXx8FBjsF2YopEy14DnOg41LCp7sELbjE6Bl0
	EHyfr7prwbMLDenjl2hfspX000U98gdA4IJbMl7rlH/TqtzMPON+quL5cZenAMMSlzGJC/7HKAS
	y/DLWo7luiepLMGceAKA3lAMzn2326NPIj4cz1fFZkDPvOGPbIjJBBEaPvVaFM6f70iNATdm8nn
	QCY6hPYph8zUF7j625Hgjnv5XzDa5kCjGxyEoncIsB8nDdWRM0AirAelNsgWPXMtKh/k95kYLi/
	soayfY4bjPjvr+3JcVFzKhL/qUmVCmAsOBc2rxGsj+qbsw3hnfs8/zExksKCGXh2ANR4UsM2uQC
	gtlVK8Ke6u3ftq/k92yA0bELL3FrbJnnS9G+qPRWEfTku0FWm77evVTrZjihghHz6JI1x/pnR3f
	vqwMBEkS6CMhc84UJe2D+r31TVIA3GXLZOFp8VwE0=
X-Received: by 2002:a05:6871:5227:b0:42c:1786:2635 with SMTP id 586e51a60fabf-43a2df02a9bmr15292886fac.24.1779284040751;
        Wed, 20 May 2026 06:34:00 -0700 (PDT)
Received: from arch.localdomain ([2409:8a28:a52:5b11:a58f:5208:2fa7:bba5])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-43a956fa075sm10253951fac.10.2026.05.20.06.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 06:34:00 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-leds@vger.kernel.org
Cc: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	luccafachinetti@gmail.com,
	pzalewski@thegoodpenguin.co.uk,
	daniel@zonque.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v6 1/6] dt-bindings: leds: issi,is31fl32xx: convert the binding to yaml
Date: Wed, 20 May 2026 21:33:38 +0800
Message-ID: <20260520133343.1423946-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260520133343.1423946-1-jerrysteve1101@gmail.com>
References: <20260520133343.1423946-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,thegoodpenguin.co.uk,zonque.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300658-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 1575558ED00
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert leds-is31fl32xx to DT schema format.

Co-developed-by: Lucca Fachinetti <luccafachinetti@gmail.com>
Signed-off-by: Lucca Fachinetti <luccafachinetti@gmail.com>
Co-developed-by: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
Signed-off-by: Pawel Zalewski <pzalewski@thegoodpenguin.co.uk>
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 .../bindings/leds/issi,is31fl32xx.yaml        | 151 ++++++++++++++++++
 .../bindings/leds/leds-is31fl32xx.txt         |  53 ------
 2 files changed, 151 insertions(+), 53 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/leds/issi,is31fl32xx.yaml
 delete mode 100644 Documentation/devicetree/bindings/leds/leds-is31fl32xx.txt

diff --git a/Documentation/devicetree/bindings/leds/issi,is31fl32xx.yaml b/Documentation/devicetree/bindings/leds/issi,is31fl32xx.yaml
new file mode 100644
index 000000000000..81f1e30e493d
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/issi,is31fl32xx.yaml
@@ -0,0 +1,151 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/issi,is31fl32xx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: IS31FL32xx and Si-En SN32xx LED controller
+
+maintainers:
+  - Lucca Fachinetti <luccafachinetti@gmail.com>
+  - Pavel Machek <pavel@ucw.cz>
+  - Jun Yan <jerrysteve1101@gmail.com>
+
+description: |
+  The IS31FL32xx/SN32xx family of LED drivers are I2C devices with multiple
+  constant-current channels, each with independent 256-level PWM control.
+  Each LED is represented as a sub-node of the device.
+
+  For more product information please see the links below:
+    https://www.lumissil.com/assets/pdf/core/IS31FL3216_DS.pdf
+    https://www.lumissil.com/assets/pdf/core/IS31FL3218_DS.pdf
+    https://www.lumissil.com/assets/pdf/core/IS31FL3235_DS.pdf
+    https://www.lumissil.com/assets/pdf/core/IS31FL3236_DS.pdf
+    https://www.lumissil.com/assets/pdf/core/IS31FL3293_DS.pdf
+
+properties:
+  compatible:
+    enum:
+      - issi,is31fl3216
+      - issi,is31fl3218
+      - issi,is31fl3235
+      - issi,is31fl3236
+      - issi,is31fl3293
+      - si-en,sn3216
+      - si-en,sn3218
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
+  "^led@([1-9a-f]|1[0-9a-f]|2[0-4])$":
+    type: object
+    $ref: common.yaml#
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        description:
+          LED channel number (1..N)
+        minimum: 1
+        maximum: 36
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
+              - issi,is31fl3293
+    then:
+      patternProperties:
+        "^led@":
+          properties:
+            reg:
+              maximum: 3
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - issi,is31fl3216
+              - si-en,sn3216
+    then:
+      patternProperties:
+        "^led@":
+          properties:
+            reg:
+              maximum: 16
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - issi,is31fl3218
+              - si-en,sn3218
+    then:
+      patternProperties:
+        "^led@":
+          properties:
+            reg:
+              maximum: 18
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - issi,is31fl3235
+    then:
+      patternProperties:
+        "^led@":
+          properties:
+            reg:
+              maximum: 28
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
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
+                reg = <1>;
+                color = <LED_COLOR_ID_RED>;
+                function = LED_FUNCTION_STATUS;
+            };
+
+            led@5 {
+                reg = <5>;
+                color = <LED_COLOR_ID_GREEN>;
+                function = LED_FUNCTION_POWER;
+                linux,default-trigger = "default-on";
+            };
+        };
+    };
+...
+
diff --git a/Documentation/devicetree/bindings/leds/leds-is31fl32xx.txt b/Documentation/devicetree/bindings/leds/leds-is31fl32xx.txt
deleted file mode 100644
index 7082ed186dd9..000000000000
--- a/Documentation/devicetree/bindings/leds/leds-is31fl32xx.txt
+++ /dev/null
@@ -1,53 +0,0 @@
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
-	issi,is31fl3293
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
2.54.0


