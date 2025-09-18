Return-Path: <devicetree+bounces-218933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 90847B85AC2
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 17:37:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 70D6B7AE7C8
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 15:35:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B62F31197F;
	Thu, 18 Sep 2025 15:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="X4iB3RZo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 790DA30E0F2
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 15:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758209797; cv=none; b=eGnP1+celGWctHTGclMzGOWGJXIABmimhAG6IGqGsbTXtYkmMomzdPxxxHF5H5QiRoZpg7ZWfjQ9N/zjPZ/7k5F73okalm7azMOlrLcI+9OgFT1PemuWzEReKLzmI17BhBqaxWcPvkGcS2NbiVVUwvj1V7fZJmWe/lZ6ZRZdlxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758209797; c=relaxed/simple;
	bh=2XfIujXXVMp1DEX98lbfbXgbE4jTn2mD3iCAdMOp640=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rizqi13QgpndrZCTAUVdhwbDjpVDy8cfKsvgXvkT8uTkKcNt+zaZ5iqdcw0+lWvGz/C+lx+rChR1XT8gpmXy29VZgTss+rmqYoZdTzmMD6w6t/Ig8+PvX78XS4vHQ1sp6Xilts6FKrcJvn2pjpmslQNr59Sd7MzsN6AljhIuwOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=X4iB3RZo; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b079c13240eso194826366b.1
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 08:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758209794; x=1758814594; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N81dGvO+xJTmXCqWIcLQYDKWPfQd/IXwIEAbvvgpOAM=;
        b=X4iB3RZojqE1NiAtu1BuFS2d5FoB3pCFpzpcfPy1HGaNW5L0ahvIYlApcLalF5KSYk
         EkR+NtWyJdClZAautgtbZLaLSeN39v5tE35VuOvTwdI1+pZgejQXJd7RPkPMrNaMMtq2
         mseLSSGFrLHDFkFT/LHizLa+iyimhfqYC5cAU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758209794; x=1758814594;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N81dGvO+xJTmXCqWIcLQYDKWPfQd/IXwIEAbvvgpOAM=;
        b=snouJ8XZqKxLp4yXaHVCoY+XFvN/eDQcVlsp3gtLPKlQZP7Ges0PqCtk7Cx8AoJNCE
         7fiU8opHy+WSHqT7I5j3Ze82MjqWqXMV+w5ockpNV9nDLaJ7iO3iQzA+wQ23BK8PYFkN
         cX/FDc7XNXGf8hwrDNSwOyt0H5xUTHUS1cMd1x3XszvXpT9fN9njIBa9SJ4JIQ3a0vA9
         wfXbXbS1m1JiNs12BczX2I/Az+U1kW+S0A0cCOqybpaZI/yvswcyl7h5GorjmIxyo+MV
         Y5qudipZZtKIT/Qmbzc1jkqrMEMYiJqbiGrHQPij1k4+uWsngUd8vH8FbLMG8/bMJl1f
         ETpw==
X-Forwarded-Encrypted: i=1; AJvYcCWgWQnwi/7lXUjx5QxfdDVhOYZM0vr70rU9gpNEsyLwrMKHaCzZUAPHW+6mPTOWD1iPIC8/ydBW71bu@vger.kernel.org
X-Gm-Message-State: AOJu0YwAaTD0+J6FIooxnR6QhJ1wZJpklo+0ycPrKRy7NKzLswSIu5ko
	EB8dC0jM6AtVAUMEfnO6cnKkTkAxFLhrf4VKahI1ezAVxEP3iU56iQ0eEfAeHXkcyMM=
X-Gm-Gg: ASbGncsgUdIvMz/W44E5FYUuKhoG9Cs5XTn6E53+NtHeGUTq4gL9utcEDbewtpXNvdE
	LeMUoR7cx+Z+8sbpMTZmcs/TJdl56UsTyYtQrhDfEubmsW9NtSoSh20K1DNh2UKhdqzDjL3vfPE
	Gd+Pd/rWAUMKFBxGfUT9vD//PoMrd7le2s990c4u/k/bQ3nGboLO0SkEBYVHbtLPAGyKcxdMByP
	KZi94iyv8pQRS3mpqaIyfLXK+8B7RupvHaMeVBpDhdMbt5WA6Er07UpwnPOztSVaAZ/5RhVKWts
	YKRBppcAKLIpsBlGnykkMWijSQrrH8N/8zTl735YzrH0Bt0xgMiy3LuCSoUt95Tpk5TUQT4E4Fa
	+NN+AR4bMMTOGcMsKy2we4AK7cknpyEzb6VYgxiXVscZcYJX6GCwyW6uOOGJ34SzgV7ZzeTFXQX
	7DDrjazmhAIYFdx+BMiM5L9iyURJEoJhi5uH6zl6FDu1/w2SsgQNsRRVuf3UhGE4RORRQrhSO+6
	Ab/K8WnuIc=
X-Google-Smtp-Source: AGHT+IH+5a/k6GLlMG0qj7LkI5YgWM1M2eW1F45wR5XgRgM/Au5/NEfTBQXm8UgWVuynbsiaKqnX0w==
X-Received: by 2002:a17:906:6a09:b0:b04:8701:7304 with SMTP id a640c23a62f3a-b1baf60e268mr788877466b.10.1758209793686;
        Thu, 18 Sep 2025 08:36:33 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fd272026csm212430766b.102.2025.09.18.08.36.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 08:36:33 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v4 1/5] dt-bindings: touchscreen: convert bu21013 bindings to json schema
Date: Thu, 18 Sep 2025 17:36:06 +0200
Message-ID: <20250918153630.2535208-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert Rohm BU21013 I2C touchscreen controller device tree binding to
json-schema.

Additional changes:
- Replace <supply_name>-supply with avdd-supply to match example and
  existing DTS.
- Add reset-gpios in the example because it is required.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v4:
- Drop description from reset-gpios
- Re-work description of avdd-supply
- Rename the file to rohm,bu21013.yaml
- Add Reviewed-by tag of Krzysztof Kozlowski

Changes in v2:
- Added in v2

 .../bindings/input/touchscreen/bu21013.txt    | 43 ---------
 .../input/touchscreen/rohm,bu21013.yaml       | 95 +++++++++++++++++++
 2 files changed, 95 insertions(+), 43 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/bu21013.txt
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/rohm,bu21013.yaml

diff --git a/Documentation/devicetree/bindings/input/touchscreen/bu21013.txt b/Documentation/devicetree/bindings/input/touchscreen/bu21013.txt
deleted file mode 100644
index da4c9d8b99b1..000000000000
--- a/Documentation/devicetree/bindings/input/touchscreen/bu21013.txt
+++ /dev/null
@@ -1,43 +0,0 @@
-* Rohm BU21013 Touch Screen
-
-Required properties:
- - compatible              : "rohm,bu21013_tp"
- - reg                     : I2C device address
- - reset-gpios             : GPIO pin enabling (selecting) chip (CS)
- - interrupt-parent        : the phandle for the gpio controller
- - interrupts              : (gpio) interrupt to which the chip is connected
-
-Optional properties:
- - touch-gpios             : GPIO pin registering a touch event
- - <supply_name>-supply    : Phandle to a regulator supply
- - touchscreen-size-x      : General touchscreen binding, see [1].
- - touchscreen-size-y      : General touchscreen binding, see [1].
- - touchscreen-inverted-x  : General touchscreen binding, see [1].
- - touchscreen-inverted-y  : General touchscreen binding, see [1].
- - touchscreen-swapped-x-y : General touchscreen binding, see [1].
-
-[1] All general touchscreen properties are described in
-    Documentation/devicetree/bindings/input/touchscreen/touchscreen.txt.
-
-Deprecated properties:
- - rohm,touch-max-x        : Maximum outward permitted limit in the X axis
- - rohm,touch-max-y        : Maximum outward permitted limit in the Y axis
- - rohm,flip-x             : Flip touch coordinates on the X axis
- - rohm,flip-y             : Flip touch coordinates on the Y axis
-
-Example:
-
-	i2c@80110000 {
-		bu21013_tp@5c {
-			compatible = "rohm,bu21013_tp";
-			reg = <0x5c>;
-			interrupt-parent = <&gpio2>;
-			interrupts <&20 IRQ_TYPE_LEVEL_LOW>;
-			touch-gpio = <&gpio2 20 GPIO_ACTIVE_LOW>;
-			avdd-supply = <&ab8500_ldo_aux1_reg>;
-
-			touchscreen-size-x = <384>;
-			touchscreen-size-y = <704>;
-			touchscreen-inverted-y;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/input/touchscreen/rohm,bu21013.yaml b/Documentation/devicetree/bindings/input/touchscreen/rohm,bu21013.yaml
new file mode 100644
index 000000000000..adea2c4edf1f
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/touchscreen/rohm,bu21013.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/touchscreen/rohm,bu21013.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rohm BU21013 touchscreen
+
+description:
+  Rohm BU21013 I2C driven touchscreen controller.
+
+maintainers:
+  - Dario Binacchi <dario.binacchi@amarulasolutions.com>
+
+allOf:
+  - $ref: touchscreen.yaml#
+
+properties:
+  compatible:
+    enum:
+      - rohm,bu21013_tp
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+  touch-gpios:
+    maxItems: 1
+    description: GPIO registering a touch event.
+
+  avdd-supply:
+    description: Analogic power supply
+
+  rohm,touch-max-x:
+    deprecated: true
+    description: Maximum value on the X axis.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  rohm,touch-max-y:
+    deprecated: true
+    description: Maximum value on the Y axis.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  rohm,flip-x:
+    deprecated: true
+    description: Flip touch coordinates on the X axis
+    type: boolean
+
+  rohm,flip-y:
+    deprecated: true
+    description: Flip touch coordinates on the Y axis
+    type: boolean
+
+  touchscreen-inverted-x: true
+  touchscreen-inverted-y: true
+  touchscreen-size-x: true
+  touchscreen-size-y: true
+  touchscreen-swapped-x-y: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - interrupts
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        touchscreen@5c {
+            compatible = "rohm,bu21013_tp";
+            reg = <0x5c>;
+
+            interrupt-parent = <&gpio2>;
+            interrupts = <0x20 IRQ_TYPE_LEVEL_LOW>;
+            reset-gpios = <&gpio2 19 GPIO_ACTIVE_LOW>;
+            touch-gpios = <&gpio2 20 GPIO_ACTIVE_LOW>;
+            avdd-supply = <&ab8500_ldo_aux1_reg>;
+
+            touchscreen-size-x = <384>;
+            touchscreen-size-y = <704>;
+            touchscreen-inverted-y;
+        };
+    };
-- 
2.43.0

base-commit: 8b789f2b7602a818e7c7488c74414fae21392b63
branch: drop-touchscreen.txt

