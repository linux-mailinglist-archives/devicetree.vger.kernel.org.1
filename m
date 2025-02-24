Return-Path: <devicetree+bounces-150308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA7FA41AEF
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 11:29:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E604D1895E51
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 10:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7DDF2512DC;
	Mon, 24 Feb 2025 10:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mefa7rEM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F0924FBE8
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740392937; cv=none; b=XXn4YmVZxDtbn485QMrBZP1++6yW+Fe7U23F9ntMWe9ThF/7s/XxRHrsvA40GNdZDQy907dIFt5D++GSRggGNpxEUfRNlx587SVgpqZU8DmM94Rp0H0DYuR3Pr/baT7NgNfbcRt768sca289ZSc2/lc9XW74eYpJmXIidsJidOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740392937; c=relaxed/simple;
	bh=RfDmPlOAgquyAi9eWxA84ntLw1H8mX7TzxnK5gtEdTw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZWpRAr34iGhgGa4RMvWvXLkdYQz73fT0VeiYBPYEm7qzfMvZgNgyC1yd3Y7GR5KRw0AhxuUgU5rxHJMxxwOxSfXFT/F8xrSin03OIAaBRS+bE3sU/WNa6GWmJDGFlTx4JqvZTIcQRWgAjWsXbpjL5TMlZYVGqcETSSD7s0VuevU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Mefa7rEM; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e0373c7f55so6380348a12.0
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 02:28:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740392932; x=1740997732; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L0+1xTYqd6Ues9edEFg3QVRmfx7blQqw3yHw24nagIs=;
        b=Mefa7rEMRpe5z5E6Z5//5qOHgwmZtvbz8V5gs6gsBy1dTY91nKcy/FL/6lu+y292eG
         ZBZZKykyEdnw0uo69zOP0PpL5ebDHqNrcutQFYhENcl+Cb1yvJszgIn8h+/kLA1KN94m
         uEHjiunP5/o8KIpzKeBj9QHNif1fwxT3TBY7YAfXIK8/XlCYQfvbAyT2ntFLZGrj/KFB
         WZBw5j4DmD4pk88ffJVKO5zyLyru4GJTgzVzZyEnq2RIQK2+uToOQm3IgQirxsEu7jJ4
         TfRolz6wac65pzx2fqRXsMWwWLzbjkIaxebDGOg4MjiM6aGbfyGy3DpGiOtL8QVyP0Eg
         K6Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740392932; x=1740997732;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L0+1xTYqd6Ues9edEFg3QVRmfx7blQqw3yHw24nagIs=;
        b=jwtYOZor8vdAxrwsTV8b9sueYaV5X9eoaFkUZM+nIDpcUEhHfUFoKlju6afK0yVowB
         qAdxtaGEC2cHb6D+4gD77WFoEk/mnLbSTOrghFgx0Wuw6bbsxW1a+9VYIMluCiy+lzx9
         OIfDdsfzjfU/pf5QvitZ7bO0UAF6Yoiu06iPZjIYsk4EFUfC5hmoGVS31LMZJY3EJ5xK
         k2SGvq6YGfdblqWlnC2+X3AHpdSEudmJ+/HRJOixHn4DZEx4VmFv1qu92LHXoQHg2pXi
         3i8EpuqDAcpqPtnr5WwJeWe9v9B2e6/PYsBQJwYh8BTEvafo5gaeGdI/+/nAqF0OR7o1
         wgZg==
X-Forwarded-Encrypted: i=1; AJvYcCXGtUMQYjjiUDcPkogdZNUrfvlcUwW+EKQEa6MeFHNgqGD7bmfUCNcOBI7iKjORbALl1TurZJJHnLyk@vger.kernel.org
X-Gm-Message-State: AOJu0YyMbtj43Se9B3D0hGnzenj1CKNmln2WZERIfZd/MzXhWqoXFuy1
	gDrqX5/9AOERO7OQa5E8j22XbRFF5oqqLXGcbs1+IWmZxLg7z0Wc3GtSRh8jt6k=
X-Gm-Gg: ASbGnctHbxkwRVW7u6+Frgiob439MoeNSQCp3APTSOxwa16qr0Ng1BjDjv2bPBH/Qfv
	mnvmx/quZBTjmI/ldz68oxy96LaSzZp0c6xexYqX1yiLSot9ID571z08wr/ivw8/AO5zy5vyfWe
	KBf43ZnDHDlAGQcXceAoBB+/hQHIoaAEparDKH+5/FQrCgMFLnLzw4D3Jyt+5MAizVIT8Glj7E5
	3/sCfOVdWbhEZWb8V4vOjSZmtTghHufHyAjChMwni1CE747D4yqVc6yxKwMsgUlXG0ZvsK2xO0o
	JSYkaGE7oipPkJp94hKHgA+tpzo0vpAJ3uBR5zugeXvcsk0cqwqTEOURljpnturfIcuHRPssfSf
	qDVVxe4OSUg==
X-Google-Smtp-Source: AGHT+IFTii9yMUKiP6DZuuLdEYvVA2bQTvO54PTHXzyTObw7JnjU+saEMwl9lGijNxfVg+uKK7EKNA==
X-Received: by 2002:a17:907:c0f:b0:aab:9430:40e9 with SMTP id a640c23a62f3a-abc09ab56bfmr1154111466b.32.1740392932169;
        Mon, 24 Feb 2025 02:28:52 -0800 (PST)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbb186c5d5sm1349206666b.51.2025.02.24.02.28.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 02:28:51 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 24 Feb 2025 10:28:49 +0000
Subject: [PATCH 1/6] dt-bindings: mfd: add max77759 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250224-max77759-mfd-v1-1-2bff36f9d055@linaro.org>
References: <20250224-max77759-mfd-v1-0-2bff36f9d055@linaro.org>
In-Reply-To: <20250224-max77759-mfd-v1-0-2bff36f9d055@linaro.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-hardening@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.1

Add device tree binding for the Maxim MAX77759 companion PMIC for USB
Type-C applications.

The MAX77759 includes Battery Charger, Fuel Gauge, temperature sensors,
USB Type-C Port Controller (TCPC), NVMEM, and a GPIO expander.

This describes the core mfd device.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../devicetree/bindings/mfd/maxim,max77759.yaml    | 104 +++++++++++++++++++++
 MAINTAINERS                                        |   6 ++
 2 files changed, 110 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml b/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml
new file mode 100644
index 000000000000..1efb841289fb
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml
@@ -0,0 +1,104 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/maxim,max77759.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim Integrated MAX77759 PMIC for USB Type-C applications
+
+maintainers:
+  - André Draszik <andre.draszik@linaro.org>
+
+description: |
+  This is a part of device tree bindings for the MAX77759 companion Power
+  Management IC for USB Type-C applications.
+
+  The MAX77759 includes Battery Charger, Fuel Gauge, temperature sensors, USB
+  Type-C Port Controller (TCPC), NVMEM, and a GPIO expander.
+
+properties:
+  compatible:
+    const: maxim,max77759
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 2
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
+  gpio:
+    $ref: /schemas/gpio/maxim,max77759-gpio.yaml
+
+  reg:
+    maxItems: 1
+
+  pmic-nvmem:
+    $ref: /schemas/nvmem/maxim,max77759-nvmem.yaml
+
+required:
+  - compatible
+  - interrupts
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pmic@66 {
+            compatible = "maxim,max77759";
+            reg = <0x66>;
+            interrupts-extended = <&gpa8 3 IRQ_TYPE_LEVEL_LOW>;
+
+            interrupt-controller;
+            #interrupt-cells = <2>;
+
+            gpio {
+                compatible = "maxim,max77759-gpio";
+
+                gpio-controller;
+                #gpio-cells = <2>;
+
+                interrupt-controller;
+                #interrupt-cells = <2>;
+            };
+
+            pmic-nvmem {
+                compatible = "maxim,max77759-nvmem";
+
+                nvmem-layout {
+                    compatible = "fixed-layout";
+                    #address-cells = <1>;
+                    #size-cells = <1>;
+
+                    reboot-mode@0 {
+                        reg = <0x0 0x4>;
+                    };
+
+                    boot-reason@4 {
+                        reg = <0x4 0x4>;
+                    };
+
+                    shutdown-user-flag@8 {
+                        reg = <0x8 0x1>;
+                    };
+
+                    rsoc@10 {
+                        reg = <0xa 0x2>;
+                    };
+                };
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index f076360ce3c6..f2c19a1b4c05 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14322,6 +14322,12 @@ F:	Documentation/devicetree/bindings/mfd/maxim,max77714.yaml
 F:	drivers/mfd/max77714.c
 F:	include/linux/mfd/max77714.h
 
+MAXIM MAX77759 PMIC MFD DRIVER
+M:	André Draszik <andre.draszik@linaro.org>
+L:	linux-kernel@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/*/maxim,max77759*.yaml
+
 MAXIM MAX77802 PMIC REGULATOR DEVICE DRIVER
 M:	Javier Martinez Canillas <javier@dowhile0.org>
 L:	linux-kernel@vger.kernel.org

-- 
2.48.1.658.g4767266eb4-goog


