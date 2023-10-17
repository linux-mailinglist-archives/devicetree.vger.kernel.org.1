Return-Path: <devicetree+bounces-9090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FED7CB960
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 05:45:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 54C7FB20E91
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 03:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F16B8F4D;
	Tue, 17 Oct 2023 03:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KXpZGRHF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8753D8825
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 03:45:22 +0000 (UTC)
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com [IPv6:2607:f8b0:4864:20::831])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA3FF95;
	Mon, 16 Oct 2023 20:45:20 -0700 (PDT)
Received: by mail-qt1-x831.google.com with SMTP id d75a77b69052e-4194c3cf04aso36493621cf.3;
        Mon, 16 Oct 2023 20:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697514319; x=1698119119; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fpenc3TC1wxTiSmB6vD1Cx4tRH9i7lUBaz0u5rLStfY=;
        b=KXpZGRHF3QZK37bSiZxvsM1m4lMQlX8KKLE9A0IBlIXJCif5hk/gdHIXpZKN/KHSa/
         uub/0wwO85/pvbSxLKpgqU4A5w3zCpZld/jR6MBLcnsrcp9HwS9X94bDTNxwo6x4q/oD
         2jDKBvK9am0mKYe9+Om23l08IbAyxFXH5M2SVnJGHicyL1AqsXf2tk332ApPCY6eL8bi
         BhFQigAVa0NGnBOzH70E8KKUplTEe5URes6bW1OyQYCYfJu0RqhcAOcur8FSt2BVkKeL
         qkvbW0MukxTrL9X1orldf7YoMnsPf/Y+guIHamLjy/RTauzSAcqSeTrB9e3Go0l76Suh
         2PBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697514319; x=1698119119;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fpenc3TC1wxTiSmB6vD1Cx4tRH9i7lUBaz0u5rLStfY=;
        b=GWm5C8jQAZMDb9B1gkVwlKhL7nBZckKVaqH3SGcKntzfBucWQq3dI/Fgom/uN2IuZP
         JO3ltTkKtp6Dxlu4kD+YwHJJSSjw7qllEIMrpRBC6zHayJF4In98xWC2xGJ/gPYks7FH
         ffqYLu3kXOlFDcDpe2a5IkAYQpOJ6hNJyG+f3geMe0yZmNQp3EmEYRFoa5RWNdh4ACmF
         FK2fjH9dWB4HMX9Y+HChM0i3OvIwScaTIDOQvY32QQ7+eC3jDyQei9P7fWp70hST4UNU
         EJ5+S4tUONoOrevBJyjeWEZRDx2/iAdcpy4uVsMVe4MKvqXzFUcWDcEAcHYjUsk01Bxq
         qwOw==
X-Gm-Message-State: AOJu0YxTJRI7zUUNMTCiZFNBNlhvA58L3L7gRnRbS29QApcHGZK/JAt1
	7mrOSvs/zQBvjMKuCVB+M18zWbA3qJhFQA==
X-Google-Smtp-Source: AGHT+IGRVQZCVNJEkZXf9JzXVxV+zgsZwjKw5X1hyxT7Mx63UwrODkWivGNx/S67JTJ8V0W+53S9ow==
X-Received: by 2002:a05:622a:1b8d:b0:417:914a:104d with SMTP id bp13-20020a05622a1b8d00b00417914a104dmr1544809qtb.49.1697514319434;
        Mon, 16 Oct 2023 20:45:19 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:628c:a92e:5b03:91a2:57c8:16f3])
        by smtp.gmail.com with ESMTPSA id y13-20020aa793cd000000b0069305627491sm313777pff.159.2023.10.16.20.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 20:45:19 -0700 (PDT)
From: Anshul Dalal <anshulusr@gmail.com>
To: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Anshul Dalal <anshulusr@gmail.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/2] dt-bindings: input: bindings for Adafruit Seesaw Gamepad
Date: Tue, 17 Oct 2023 09:13:44 +0530
Message-ID: <20231017034356.1436677-1-anshulusr@gmail.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

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


