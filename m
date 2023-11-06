Return-Path: <devicetree+bounces-14190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 51ED77E2A26
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 17:43:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB2181F21B53
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 16:43:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8C7A28E3C;
	Mon,  6 Nov 2023 16:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KRNdCFEo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EFD179B8
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 16:43:30 +0000 (UTC)
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E87DCD4D;
	Mon,  6 Nov 2023 08:43:27 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6bf03b98b9bso4334094b3a.1;
        Mon, 06 Nov 2023 08:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699289007; x=1699893807; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xYiXnGi32nL1dAgLwz8qgQxJ2TizbYw6290xQdYSCOQ=;
        b=KRNdCFEoNsC9Vl5Ej9YyqbZW78HGzZgfK6dNExWibbdWnkf/psFWTgQ4x6/PMGvwhU
         Fy7RMAtPru0Qx7emelu2HSU648kI7Mx0XJOEsZsuNhy1pqOU6My4NvShtW3UefEnmsLx
         VF9co059ubafe4Mv7TyP16KB04HPGHPTJ+4QwxgItkV7rs3iE7FHjkHeSfr2asY75H4i
         F+eOdCHf8I46cG+JXTs5gRuz6X0DIBBqSbKj4Bn5R6dhh5rg57RYeCgG4ASOszr6JuHj
         6OillDPwETf/dY+PWM2JjMcoyEirbsl4s4uVpvl6Bn84CVWAGdVIJAzzbqfEuuzXSbNO
         7Rbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699289007; x=1699893807;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xYiXnGi32nL1dAgLwz8qgQxJ2TizbYw6290xQdYSCOQ=;
        b=Bu6UXOHV5FKCVx4R76Hk0FDAVcvcQUJ3M41NaSt4D8x+5JdqGX6P1hrYLzEofm0x7u
         L8QkkxkXgcQihDDtEV/aF7edw0c7P4omWubdqAnJ3fitXDPvQtqk5ObCZKwr0bVQKqQP
         kXwY9jTaOb0qqvqtNhne0+4d9J/Yh8qUJBDx0m/hYcaM6igCnxVj3+FcI1pmDB6u/FqM
         Wj19zH5msMRQicqiJWfIZAcltfA0CMyKvp+6TWpHLERqsBr+fokOJX9CeI41RNf3pO5m
         Cc5HeHk4GfTDaQUZz4Uz2YRzCXXQB5rOan33si/27aVeg2+2mY26rZ8kCMcqAF+kUIjd
         WfLQ==
X-Gm-Message-State: AOJu0YxDgkAtxBpdKzWlsLfH9jTjARUag4Qaf/U4+e1oh3Nz1Jf2kmpd
	H5pKyxvTM8nKNhNtTFpnoMlbFuNTsm53nXAL
X-Google-Smtp-Source: AGHT+IETqIoBt7sVYlAlg0e0WxxwL5q30EOTulNV3m2su1KngxTkc1RtM4Ez78vLMhLRS7AXPvKQyA==
X-Received: by 2002:a05:6a21:a581:b0:15e:b253:269f with SMTP id gd1-20020a056a21a58100b0015eb253269fmr16315420pzc.28.1699289006581;
        Mon, 06 Nov 2023 08:43:26 -0800 (PST)
Received: from archlinux.srmu.edu.in ([103.4.222.252])
        by smtp.gmail.com with ESMTPSA id b6-20020a056a000a8600b006933e71956dsm5828227pfl.9.2023.11.06.08.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 08:43:26 -0800 (PST)
From: Anshul Dalal <anshulusr@gmail.com>
To: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Anshul Dalal <anshulusr@gmail.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>,
	Jeff LaBundy <jeff@labundy.com>,
	Shuah Khan <skhan@linuxfoundation.org>,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 1/2] dt-bindings: input: bindings for Adafruit Seesaw Gamepad
Date: Mon,  6 Nov 2023 22:11:31 +0530
Message-ID: <20231106164134.114668-1-anshulusr@gmail.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds bindings for the Adafruit Seesaw Gamepad.

The gamepad functions as an i2c device with the default address of 0x50
and has an IRQ pin that can be enabled in the driver to allow for a rising
edge trigger on each button press or joystick movement.

Product page:
  https://www.adafruit.com/product/5743
Arduino driver:
  https://github.com/adafruit/Adafruit_Seesaw

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Anshul Dalal <anshulusr@gmail.com>
---

Changes for v7:
- no updates

Changes for v6:
- no updates

Changes for v5:
- Added link to the datasheet

Changes for v4:
- Fixed the URI for the id field
- Added `interrupts` property

Changes for v3:
- Updated id field to reflect updated file name from previous version
- Added `reg` property

Changes for v2:
- Renamed file to `adafruit,seesaw-gamepad.yaml`
- Removed quotes for `$id` and `$schema`
- Removed "Bindings for" from the description
- Changed node name to the generic name "joystick"
- Changed compatible to 'adafruit,seesaw-gamepad' instead of
  'adafruit,seesaw_gamepad'
---
 .../input/adafruit,seesaw-gamepad.yaml        | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/adafruit,seesaw-gamepad.yaml

diff --git a/Documentation/devicetree/bindings/input/adafruit,seesaw-gamepad.yaml b/Documentation/devicetree/bindings/input/adafruit,seesaw-gamepad.yaml
new file mode 100644
index 000000000000..3f0d1c5a3b9b
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/adafruit,seesaw-gamepad.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/adafruit,seesaw-gamepad.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Adafruit Mini I2C Gamepad with seesaw
+
+maintainers:
+  - Anshul Dalal <anshulusr@gmail.com>
+
+description: |
+  Adafruit Mini I2C Gamepad
+
+    +-----------------------------+
+    |   ___                       |
+    |  /   \               (X)    |
+    | |  S  |  __   __  (Y)   (A) |
+    |  \___/  |ST| |SE|    (B)    |
+    |                             |
+    +-----------------------------+
+
+  S -> 10-bit percision bidirectional analog joystick
+  ST -> Start
+  SE -> Select
+  X, A, B, Y -> Digital action buttons
+
+  Datasheet: https://cdn-learn.adafruit.com/downloads/pdf/gamepad-qt.pdf
+  Product page: https://www.adafruit.com/product/5743
+  Arduino Driver: https://github.com/adafruit/Adafruit_Seesaw
+
+properties:
+  compatible:
+    const: adafruit,seesaw-gamepad
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+    description:
+      The gamepad's IRQ pin triggers a rising edge if interrupts are enabled.
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        joystick@50 {
+            compatible = "adafruit,seesaw-gamepad";
+            reg = <0x50>;
+        };
+    };
-- 
2.42.0


