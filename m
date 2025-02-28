Return-Path: <devicetree+bounces-152658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 57291A49BEB
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 15:25:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 593931894FE5
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 14:25:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 244D125F984;
	Fri, 28 Feb 2025 14:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CiMC9zrE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9F026E966
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 14:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740752726; cv=none; b=uL+5LZPCHQOQQkZACAlvQh+EvmK8N2WA0tpkrXWTE5zhp+KQQaWpI97yxcIs2SvHd+oBpgrBL47liWNrJ8WehqtOF2CqsOqHBPUYiVqHC5jYsDmiPqQYkgN44AWbyjvnfgRhk1OZ3zMhOn7qh/OpSbLA8fDyve5vVHHXt1YyWT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740752726; c=relaxed/simple;
	bh=A1c7oPj+mHgomHNOeZfQ5imtH0eO01+ucNLtjE3IxZY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uZwyTNv8WKPmrJCGd7B+RNUsRqutTuxlCSeDvD7NZxzw0A3us5CevB2teo/wp5stKRp+6MXdbSWjA5ZKicQf0IZxhZTqRXK6+H0CYKg2pwxYFMyJ1XdmsvF2/mWJ5wMQTxRsbwYDPqXH5mGkn37WtNaUXdAobzCxvjtUBKTbj20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CiMC9zrE; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aaf900cc7fbso380942866b.3
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 06:25:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740752721; x=1741357521; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vbGkP6lgrmkK8Sb6Eo6E5YJrFog34o66alqe4OQ4cJM=;
        b=CiMC9zrEe91nKl7iq6Eehit1qnI6rCRsg+Do1L3Jr0ywfn3LdAiOuZlnLzXXT3UBJa
         prFUhykB0AyAnGQ5lnAz0rsKYs93N/m/y8PpoNw3tD1CTOeq881ncWWTSkSqUdMF27Sr
         dlzsEtqRk0HfSsABMDPIqrL0mAT5hWywQIliEqZcv1SnHDQLXqBtiECEUQct0A96+cco
         vwNKUahIwZBqqWByWCu51olH8IBOT5hKaZXl17K3m1rEvw5N7L1wlDvNLy9qp5aB6kcs
         4cyUbPtQ7Ws4DaLnNi0HNKRUlohoJFWHRIIEkubCtBhv2cGqB5tuiM70xShzLwfcLSFy
         al6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740752721; x=1741357521;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vbGkP6lgrmkK8Sb6Eo6E5YJrFog34o66alqe4OQ4cJM=;
        b=OXRqpYhivvGSECxBcs/l3fGh0FKgwzMZ0xxMx0zW1PHLDL3rWqyccgibDVaCKYyk0Z
         BHBWjzu+ktYfK+CFg6sYuO3wQLOXGbqRHQHgdZ2YDuf2imuC0rmYPNgWJzmgA0nzKrcQ
         1w9a4agvAlsKa3SdsvMkcxCXGeemtZUEqBw3rDXNi4dSwbolTvH+VtICTx4vcjHrvpMZ
         UKfdT9mhrku1B5SGtnh8ZWQI1057h+gPd5CtL3HJhtvc6cKsIzo0tJWSNI5/t0vb9ysq
         9ftlr8CKqQLC/IrCM5N6aUz/qofKfaqyJZTEdnZBZ8irZvbA9lZWo61B2s5XjOLGm8EJ
         iYPg==
X-Forwarded-Encrypted: i=1; AJvYcCU8sxvx3+JUY2MR61NwIiJ4mYLJs3pSn6GKUJ+g0UwK6X3mtJNyTHvFIhiIDwFd6NGJovwiEbOj4LVJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwXQp9zM+ZjiUhxJbkr2RdVvgBknvXNIbjsysLyW1vzSNtwbNm5
	CDQfPNTh2WzWZUgxJXkvjCv9wimKd6ZtwBLWmynLqe9apZuAtydmbjTrDQcL1+0=
X-Gm-Gg: ASbGnct7+lOMWUI29MVXqguIxaaCYuv6YBZgmInxiT2eNenemz5YCy4B3bgzETmiv+O
	v1Pp3gf5obU7bYZDYpAebhlRQD917N0SYqNzrMnvxu7Wam2LQXQMUSCQK6oEefkNb9PaBH4RtdH
	mvlDtNBtH72zso9Y3lMEdFNcf2kkh+FAe0XJoAyl11LGc+pKb5PkUrKJbFlP+tC8kI+0477/Dij
	wo32oF/GKbt4RNLjM3niIje8L693YifELGzIvHFMUve/qfbqQU8QdCl4R649pixkzUgg4ltAcWr
	1AHFKWATfy4lpvygNztN3sNmlydEFtU8MEOkmZNDtf9lLUkwz2JlGdax/CFuoARQDZjnnyI9Amt
	Wjfw/3yyguA==
X-Google-Smtp-Source: AGHT+IGqhQFvrzNMYQjiKO9Vc60qd948jBI9yWaEAq0UnRjcu0b6mkDidj6LMsQD1AYOi6xvC5fWXQ==
X-Received: by 2002:a17:907:2d28:b0:abf:1379:d67a with SMTP id a640c23a62f3a-abf261f9661mr404014266b.8.1740752721106;
        Fri, 28 Feb 2025 06:25:21 -0800 (PST)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c75bffcsm298754466b.143.2025.02.28.06.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 06:25:20 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Feb 2025 14:25:17 +0000
Subject: [PATCH v3 3/6] dt-bindings: mfd: add max77759 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250228-max77759-mfd-v3-3-0c3627d42526@linaro.org>
References: <20250228-max77759-mfd-v3-0-0c3627d42526@linaro.org>
In-Reply-To: <20250228-max77759-mfd-v3-0-0c3627d42526@linaro.org>
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
X-Mailer: b4 0.14.2

The Maxim MAX77759 is a companion PMIC for USB Type-C applications and
includes Battery Charger, Fuel Gauge, temperature sensors, USB Type-C
Port Controller (TCPC), NVMEM, and a GPIO expander.

This describes the top-level device.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v3:
* drop gpio-controller and gpio-cells, GPIO is provided by the child
  (Rob)

v2:
* rename expected nvmem subdev nodename to 'nvmem-0'
  I'd have preferred just 'nvmem', but that matches nvmem-consumer.yaml
  and fails validation.

Note: MAINTAINERS doesn't need updating, the binding update for the
first leaf device (gpio) adds a wildcard matching all max77759 bindings
---
 .../devicetree/bindings/mfd/maxim,max77759.yaml    | 99 ++++++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml b/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..525de9ab3c2b7b431e48497330640857540625b1
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml
@@ -0,0 +1,99 @@
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
+  reg:
+    maxItems: 1
+
+  gpio:
+    $ref: /schemas/gpio/maxim,max77759-gpio.yaml
+
+  nvmem-0:
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
+            nvmem-0 {
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

-- 
2.48.1.711.g2feabab25a-goog


