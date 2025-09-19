Return-Path: <devicetree+bounces-219179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D567CB884CF
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 09:58:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21046B6692B
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 07:57:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDC542FF167;
	Fri, 19 Sep 2025 07:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="UF3Dw8nY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DA92FD7B9
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 07:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758268710; cv=none; b=SToNKCX2FQ7XFiKQiVqRnk41Xp5obHBBq9O4EOsW+xqLhpU60+QSJF5r5C7OsUwt5fQDma5mFEKe8HKt6+ij/sO541h+GQtfYNqEmtEr6v3eyi9MoyUsSS027DaJn8A7uq9+PTWcDB9RKH/J6jpvP+HqYAaQHO/VFdMAhlHhCjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758268710; c=relaxed/simple;
	bh=Lj2uEzG5agUE2RHJzdnwo1ffUTOyQQbwoO2pzyDmVtQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XjXUR2kEm2aGPZc4cwZMUWSET9ja+L/VQ8UugHloi2zY77Xs0rNcU3PYcCE9ucEYcLEH0T8G89RxUdWNpvxqnhAS67SReMWv35O1fk0GbL+43/5/WKJ09qtuxjTs88wX9C0p1sZjc9H+nJdYHsfFdekrVWEwIKEddNY4bvsKzTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=UF3Dw8nY; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b0418f6fc27so304203766b.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 00:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1758268706; x=1758873506; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p9578/uirUkkp2k5bMsZp24lZhySSSKPvOmDT8OQ4lc=;
        b=UF3Dw8nYii3PdfipIkhFhreSDlim9GBTzzez9Dfrg28GPhiDnTN4aazm688GWR+EVE
         RQYlxtz4aWdgzq6bpA9gkHRNNxF36Ra/ryhX+VIJSvHCsBim8GZmb9xCxEscU7hOCvdo
         Ajq6jsp/v2yPhUllk5SxN7F7TZo8V+pC1A/ds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758268706; x=1758873506;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p9578/uirUkkp2k5bMsZp24lZhySSSKPvOmDT8OQ4lc=;
        b=Aw78+0oShOC91FF+BJcKq0Wye+8j4M73wEiqcY3ao5/tj3DDvgr8pJ24Vbz3E4AVRn
         Fpm+PGFKOBTnsqpIFV7DcDWF+evuKhU/wq6fSQK3xFZEmC/NBSZFTLAb7zEQuTj/i7nb
         wRG8LUfyoRk1M2nxbrWWRWaLnw9ebhVPpSCfRekzHG/UcPI00iH3GWWSaFd5O23yDteK
         vj9YHWtvy/3QzjUkS0v56+1DqT1suYAxvu8wZd6XCZ8IrZmCIA+ygibeIWjGvHAUp9n5
         /Odx9f6muw4wz7bj5LNpjH4TqG6Ddm9GCusvuNO0OOQeZUnbXMl2v+3D2oa7uT2b0ipY
         T6qQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4ZNl3WiAxVBoStPWmj3R0xsvYfPUA9VeqaeRtpUVZGAw8ugvHf4iuN+VKrDQUNCJn/1xQiBH4UZV+@vger.kernel.org
X-Gm-Message-State: AOJu0YyBOu3GZMfnPPEr10eP91Kl1kqdBqXtxT9rgIrbzF/CrdKBHE+W
	Osuh9/KJXxXCkl96MbipENpGeeVKyIQyiQ+2YfAYwlTards5ldvD1QbezT2tE7VFTSk=
X-Gm-Gg: ASbGncvxv9fqAy85Zp3PHw6l0wHfX2vl4yx7SYscoltrAHNBG1GvHFnsZfOApCDve9V
	vp426c5PSQ/TZJm4US9IRX/gp5yfsEfFzYoj8kAtxqyx8k4ScXtsW+MTL6n68xA+tbSxo9/5hvG
	S0RFeY1kw5k2qk5Fn3w6W3C4sPNsPNGW8BBR4CvUsewCutZ533eZx+5mC/QemrqNPRJI1QMXGYH
	vstFEenxkFgfFO2kyVIqJ6anpqdeqlbTM+TngwFyZnjcsozzqcuBcUto1+37BgopKkA6CupGQT5
	73EKovhx2jq44L37rRpSt3XdzQpplbHG0Sqx9UYBVwTeCSxA1a8Xv7a7sydxGXMuwuAfMUaTqkD
	bUlsb8VD3JuXTC/LGlPnmwtIGHt+yxCxk3rb2WQVj4JeVZunhpxkjb/rrta9/e1+WJpLACNDrue
	SuJsVzh9XHdxVTkWTgcnhTUHUdrygtnV0tR/M2ZV6b5fwAbei1YNFBCAwJJdbbBTO6
X-Google-Smtp-Source: AGHT+IEnosLPm4/115DGDj89OoPe3E2TW7ffbXpMYL8GXe41HW9RHehoRuoXYtnX+dYEmz19esIzgA==
X-Received: by 2002:a17:907:3fa0:b0:b04:26f2:b83 with SMTP id a640c23a62f3a-b24f3e58447mr184128366b.35.1758268706330;
        Fri, 19 Sep 2025 00:58:26 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fc890cc98sm384693466b.49.2025.09.19.00.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 00:58:25 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v5 1/3] dt-bindings: touchscreen: convert eeti bindings to json schema
Date: Fri, 19 Sep 2025 09:58:09 +0200
Message-ID: <20250919075823.2557865-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert EETI touchscreen controller device tree binding to json-schema.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v5:
- Move bindings into eeti,exc3000.yaml
- Remove eeti.yaml

Changes in v2:
- Added in v2

 .../input/touchscreen/eeti,exc3000.yaml       | 41 ++++++++++++++++---
 .../bindings/input/touchscreen/eeti.txt       | 30 --------------
 2 files changed, 36 insertions(+), 35 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/eeti.txt

diff --git a/Documentation/devicetree/bindings/input/touchscreen/eeti,exc3000.yaml b/Documentation/devicetree/bindings/input/touchscreen/eeti,exc3000.yaml
index 1c7ae05a8c15..13b865d3ee58 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/eeti,exc3000.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/eeti,exc3000.yaml
@@ -9,15 +9,13 @@ title: EETI EXC3000 series touchscreen controller
 maintainers:
   - Dmitry Torokhov <dmitry.torokhov@gmail.com>
 
-allOf:
-  - $ref: touchscreen.yaml#
-
 properties:
   compatible:
     oneOf:
       - const: eeti,exc3000
       - const: eeti,exc80h60
       - const: eeti,exc80h84
+      - const: eeti,exc3000-i2c
       - items:
           - enum:
               - eeti,exc81w32
@@ -30,18 +28,34 @@ properties:
     maxItems: 1
   vdd-supply:
     description: Power supply regulator for the chip
+  attn-gpios:
+    maxItems: 1
+    description: Phandle to a GPIO to check whether interrupt is still
+                 latched. This is necessary for platforms that lack
+                 support for level-triggered IRQs.
   touchscreen-size-x: true
   touchscreen-size-y: true
   touchscreen-inverted-x: true
   touchscreen-inverted-y: true
   touchscreen-swapped-x-y: true
 
+allOf:
+  - $ref: touchscreen.yaml#
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: eeti,exc3000-i2c
+    then:
+      required:
+        - touchscreen-size-x
+        - touchscreen-size-y
+
 required:
   - compatible
   - reg
   - interrupts
-  - touchscreen-size-x
-  - touchscreen-size-y
 
 additionalProperties: false
 
@@ -51,6 +65,7 @@ examples:
     i2c {
         #address-cells = <1>;
         #size-cells = <0>;
+
         touchscreen@2a {
                 compatible = "eeti,exc3000";
                 reg = <0x2a>;
@@ -62,3 +77,19 @@ examples:
                 touchscreen-swapped-x-y;
         };
     };
+
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include "dt-bindings/interrupt-controller/irq.h"
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        touchscreen@2a {
+            compatible = "eeti,exc3000-i2c";
+            reg = <0x2a>;
+            interrupt-parent = <&gpio>;
+            interrupts = <123 IRQ_TYPE_EDGE_RISING>;
+            attn-gpios = <&gpio 123 GPIO_ACTIVE_HIGH>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/input/touchscreen/eeti.txt b/Documentation/devicetree/bindings/input/touchscreen/eeti.txt
deleted file mode 100644
index 32b3712c916e..000000000000
--- a/Documentation/devicetree/bindings/input/touchscreen/eeti.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-Bindings for EETI touchscreen controller
-
-Required properties:
-- compatible:	should be "eeti,exc3000-i2c"
-- reg:		I2C address of the chip. Should be set to <0xa>
-- interrupts:	interrupt to which the chip is connected
-
-Optional properties:
-- attn-gpios:	A handle to a GPIO to check whether interrupt is still
-		latched. This is necessary for platforms that lack
-		support for level-triggered IRQs.
-
-The following optional properties described in touchscreen.txt are
-also supported:
-
-- touchscreen-inverted-x
-- touchscreen-inverted-y
-- touchscreen-swapped-x-y
-
-Example:
-
-i2c-master {
-	touchscreen@a {
-		compatible = "eeti,exc3000-i2c";
-		reg = <0xa>;
-		interrupt-parent = <&gpio>;
-		interrupts = <123 IRQ_TYPE_EDGE_RISING>;
-		attn-gpios = <&gpio 123 GPIO_ACTIVE_HIGH>;
-	};
-};
-- 
2.43.0

base-commit: 8b789f2b7602a818e7c7488c74414fae21392b63
branch: drop-touchscreen.txt

