Return-Path: <devicetree+bounces-14554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C577E5646
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 13:30:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A7AB528129F
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 12:30:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A8491773C;
	Wed,  8 Nov 2023 12:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fX79ogkY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E30F517996;
	Wed,  8 Nov 2023 12:30:07 +0000 (UTC)
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 550E81BEC;
	Wed,  8 Nov 2023 04:30:07 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-543923af573so11641105a12.0;
        Wed, 08 Nov 2023 04:30:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699446606; x=1700051406; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pnr9zyXJ+rcPSiGxslqOUbI2JzDg5fyXFNjXeOIDxNM=;
        b=fX79ogkYJfH9yVLiInb0vb22dE3ayq77Q7BK32uj4tQNvqJbMwdEJxRLxlJZ5tWPzg
         +PgwGQQ/bReatebvv5ExoUbrWmlv0C3xZzriDmqHgaEKp4Cxm+z0EgPVuOPfEVef+TtE
         gxFgU7eqy76lxCqi3jw1XA2Gd3AkX9DWwcLt0SgHZvZSCZU2mXVhr4NSeNSNxCYqVpG9
         2jwxQ3WIzZDOjuSAoBGXjhfmYdPZGtVMbzDmbeBfSyma5u186yLW/gHUHm8VQostRGDu
         A5gZFixkpg/uqU6zUhpQ6E5weDrDORMeKffsYYF7iLQfJgBV5aLoS17AokbRG046h0Bn
         DC7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699446606; x=1700051406;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pnr9zyXJ+rcPSiGxslqOUbI2JzDg5fyXFNjXeOIDxNM=;
        b=u/hZHF+9vSpRlcnyqygoBQiMhr3oCT1C5eTSk1a3R5Xzg9+qmrMsItdfS6fBDcIGYO
         iK7jJcPyjP3Bn2pCKIlY9m0FoojyIT0YhIGH/gcc3aR5KgR3hajc1o8AAeQAhb9rBvV0
         xmAG+jQ/v+zlN4v09m/VTzyhQR48FNGaZhkGJfjCM48OSHI07+5szCQRwnOzgIPzDKwM
         wOQ3bBIXuMRSPKr82OKQZwm4NZqEPuRpXXTCTfEGjB4TRFodLuDFh9NDvt35fjGap0Ql
         IWEwJXPFFyDPTkREZRP4nbNDoaiAUmeNkjxYkE5O6kgd3FlfqXqdM5IMNxcOEGp7bm0u
         Bmkg==
X-Gm-Message-State: AOJu0YwQwVr6n8UtbLrRIqSxjA/TdphdhGR9OAX8mhAjD/mq0jSUjV5Z
	AsWj5vRQqelWBwMXK1ixh3c=
X-Google-Smtp-Source: AGHT+IER+KjRcYjtzKOV/W7TAHr8xbY1aPwcQDDdEAjVtmo0cK2ZdgIzxjZvmdBB+vUIroGlRvH0KQ==
X-Received: by 2002:a17:907:3d8a:b0:9a5:7759:19c0 with SMTP id he10-20020a1709073d8a00b009a5775919c0mr1504500ejc.64.1699446605791;
        Wed, 08 Nov 2023 04:30:05 -0800 (PST)
Received: from [127.0.1.1] (2a02-8389-41cf-e200-8f74-d45a-3701-05b6.cable.dynamic.v6.surfer.at. [2a02:8389:41cf:e200:8f74:d45a:3701:5b6])
        by smtp.gmail.com with ESMTPSA id n22-20020a170906841600b009b27d4153c0sm971065ejx.178.2023.11.08.04.30.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 04:30:05 -0800 (PST)
From: Javier Carrasco <javier.carrasco.cruz@gmail.com>
Date: Wed, 08 Nov 2023 13:29:59 +0100
Subject: [PATCH 4/4] dt-bindings: hwmon: Add Amphenol ChipCap 2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231020-topic-chipcap2-v1-4-087e21d4b1ed@gmail.com>
References: <20231020-topic-chipcap2-v1-0-087e21d4b1ed@gmail.com>
In-Reply-To: <20231020-topic-chipcap2-v1-0-087e21d4b1ed@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jean Delvare <jdelvare@suse.com>, 
 Guenter Roeck <linux@roeck-us.net>, Jonathan Corbet <corbet@lwn.net>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-doc@vger.kernel.org, Javier Carrasco <javier.carrasco.cruz@gmail.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699446596; l=2557;
 i=javier.carrasco.cruz@gmail.com; s=20230509; h=from:subject:message-id;
 bh=7hhh/za2DGYoIoF9bRbI+pp2SNf+lqcbYuwDB9xvAY4=;
 b=5krBc846tk8R+lYMUHc70aVFlQ5e3YiyfruBXT+FaaTu1ZjlTRt1rPpIU6WUhXQz6ZFYZE/yG
 2yEMcNDXlnADyeFR9ZuznJnQPq/nzwm/Pktpnh/7waPAlcXUy3DAGvt
X-Developer-Key: i=javier.carrasco.cruz@gmail.com; a=ed25519;
 pk=tIGJV7M+tCizagNijF0eGMBGcOsPD+0cWGfKjl4h6K8=

Add device tree bindings and an example for the ChipCap 2 humidity
and temperature sensor.

Signed-off-by: Javier Carrasco <javier.carrasco.cruz@gmail.com>
---
 .../bindings/hwmon/amphenol,chipcap2.yaml          | 72 ++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwmon/amphenol,chipcap2.yaml b/Documentation/devicetree/bindings/hwmon/amphenol,chipcap2.yaml
new file mode 100644
index 000000000000..f0ab20eb418a
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/amphenol,chipcap2.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/amphenol,chipcap2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ChipCap 2 humidity and temperature iio sensor
+
+maintainers:
+  - Javier Carrasco <javier.carrasco.cruz@gmail.com>
+
+description: |
+  Relative humidity and temperature sensor on I2C bus.
+
+  Datasheets:
+    https://www.amphenol-sensors.com/en/telaire/humidity/527-humidity-sensors/3095-chipcap-2
+
+properties:
+  compatible:
+    enum:
+      - amphenol,cc2dxx
+      - amphenol,cc2dxxs
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 3
+    description: |
+      The device provides three optional interrupts. READY indicates that
+      a measurement was finished. LOW indicates a low humidity alarm and
+      HIGH a high humidity alarm.
+      All interrupts must be IRQ_TYPE_RISING_EDGE.
+
+  interrupt-names:
+    items:
+      - const: READY
+      - const: LOW
+      - const: HIGH
+
+  vdd-supply:
+    description:
+      Dedicated, controllable supply-regulator to reset the device and
+      enter in command mode. If defined, it must provide a GPIO for its
+      control.
+      If not defined, no alarms will be available.
+
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        humidity@28 {
+            compatible = "amphenol,cc2dxxs";
+            reg = <0x28>;
+            interrupt-parent = <&gpio>;
+            interrupts = <4 IRQ_TYPE_EDGE_RISING>,
+                         <5 IRQ_TYPE_EDGE_RISING>,
+                         <6 IRQ_TYPE_EDGE_RISING>;
+            interrupt-names = "READY", "LOW", "HIGH";
+            vdd-supply = <&reg_vdd>;
+        };
+    };

-- 
2.39.2


