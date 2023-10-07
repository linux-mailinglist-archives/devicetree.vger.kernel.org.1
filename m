Return-Path: <devicetree+bounces-6709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A410F7BC862
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 16:42:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C07A281D41
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 14:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74CD7286BD;
	Sat,  7 Oct 2023 14:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h3pzDd9A"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D833C1D6AF
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 14:42:22 +0000 (UTC)
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D3C2B6;
	Sat,  7 Oct 2023 07:42:20 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1bdf4752c3cso21922945ad.2;
        Sat, 07 Oct 2023 07:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696689739; x=1697294539; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5sisTLNnKGsZYfiDDfEHY+RjQwoo26s1ZltAy3XmFO4=;
        b=h3pzDd9AWBWFb52S6FdyJvBOHL6IX6PMubjYOEsqamdKJAhGtkhQoAmqBZ5/6UN6Yl
         sluz7xXytXZTJfGVUxIQq35/2LzBY3gbjLKYmQKfXwMoQRrhnhp9Wnt/v5wbK/rjAnVV
         cWOoVq0UFDcOxHcjtcsyMV4Y7vRerHEUrkETWTeY4SAgAFiMXmJHW4MeZEZBxKk2M2JE
         Radwr97tTqVUfUC0QQ4/9t0DH6EzbowtgXZIbsYad6VoWb4cjr1WtD22yAvsliAP4QC8
         Zw+g7VLfrbCL/2vys+jn8pz1vORDVosh7dxLAFvjQBEw52MJW7/XRg1EViQOGmMWiaVJ
         QG1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696689739; x=1697294539;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5sisTLNnKGsZYfiDDfEHY+RjQwoo26s1ZltAy3XmFO4=;
        b=elpmha5T/mKNj8lnLoC+xoxZWDsAZxJsucbKhOSOsHesSRIB60Q4bbWloeLb+HNT2p
         QvIS800Z7kpgqcGOwyyvSZfiTkza9HZiSXb5zr0sikwzStMpP4a3PD6Q6BudkGdU6xrW
         u1IY9HT07Ml6DAXM0G6ul2BSHzU1/cDJa0l8ThozlBi+P6JWzOu8uv19XA2uIYvkgb7n
         L4P92RxoYOMOyoujtxvo2qQWCiYRoxyROtZfuLlQbt8DbhBAp2PKZj9f7iCZiffsIfiv
         w1CxAnFA7kXgHs5IDfu17WEhsQO4xYV9+sZvTM5qGqm1D2LbHy9jFxSOTjq4jnSbmx5c
         pvQA==
X-Gm-Message-State: AOJu0YxTO7tYwBtEAdJEx3WtKLBF0ILSdxGdnzUYbs0kQusvvYcAfIbP
	4SvVC37Y4v2dubCYuA2FmukekSdeBsdwVvhQ
X-Google-Smtp-Source: AGHT+IFbKvEVOdRGs5JNmA0gGHPef2pRiPROSvBW0B3aLV4DgVCzu+hGqL8J9kkdoE0uGHJCO1ciFA==
X-Received: by 2002:a17:902:dc86:b0:1c3:21ae:7a4a with SMTP id n6-20020a170902dc8600b001c321ae7a4amr10460957pld.38.1696689739354;
        Sat, 07 Oct 2023 07:42:19 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:6291:4752:3191:cc16:9883:82e9])
        by smtp.gmail.com with ESMTPSA id t24-20020a1709028c9800b001c73f51e61csm5962288plo.106.2023.10.07.07.42.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 07:42:18 -0700 (PDT)
From: Anshul Dalal <anshulusr@gmail.com>
To: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Anshul Dalal <anshulusr@gmail.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shuah Khan <skhan@linuxfoundation.org>,
	linux-kernel-mentees@lists.linuxfoundation.org
Subject: [PATCH 1/2] dt-bindings: Add bindings for Adafruit Seesaw Gamepad
Date: Sat,  7 Oct 2023 20:10:49 +0530
Message-ID: <20231007144052.1535417-1-anshulusr@gmail.com>
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

A simple driver for a mini gamepad that communicates over i2c, the gamepad
has bidirectional thumb stick input and six buttons.

The gamepad chip utilizes the open framework from Adafruit called 'Seesaw'
to transmit the ADC data for the joystick and digital pin state for the
buttons. I have only implemented the functionality required to receive the
thumb stick and button state.

Steps in reading the gamepad state over i2c:
  1. Reset the registers
  2. Set the pin mode of the pins specified by the `BUTTON_MASK` to input
      `BUTTON_MASK`: A bit-map for the six digital pins internally
       connected to the joystick buttons.
  3. Enable internal pullup resistors for the `BUTTON_MASK`
  4. Bulk set the pin state HIGH for `BUTTON_MASK`
  5. Poll the device for button and joystick state done by:
      `seesaw_read_data(struct i2c_client *client, struct seesaw_data *data)`

Product page:
  https://www.adafruit.com/product/5743
Arduino driver:
  https://github.com/adafruit/Adafruit_Seesaw

Tested on RPi Zero 2W

Signed-off-by: Anshul Dalal <anshulusr@gmail.com>
---
 .../bindings/input/adafruit_seesaw.yaml       | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/adafruit_seesaw.yaml

diff --git a/Documentation/devicetree/bindings/input/adafruit_seesaw.yaml b/Documentation/devicetree/bindings/input/adafruit_seesaw.yaml
new file mode 100644
index 000000000000..1d00d9da637a
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/adafruit_seesaw.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/input/adafruit_seesaw.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Adafruit Mini I2C Gamepad with seesaw
+
+maintainers:
+  - Anshul Dalal <anshulusr@gmail.com>
+
+description: |
+  Bindings for Adafruit Mini I2C Gamepad
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
+  Product page: https://www.adafruit.com/product/5743
+  Arduino Driver: https://github.com/adafruit/Adafruit_Seesaw
+
+properties:
+  compatible:
+    const: adafruit,seesaw_gamepad
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    seesaw_gamepad@50 {
+        compatible = "adafruit,seesaw_gamepad";
+        reg = <0x50>;
+    };
-- 
2.42.0


