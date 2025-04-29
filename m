Return-Path: <devicetree+bounces-171842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C6EAA0592
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 10:23:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC90748524B
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 08:23:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F27B29DB91;
	Tue, 29 Apr 2025 08:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bd/1cZk0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCFD29B77F
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 08:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745914935; cv=none; b=TQSA/ADo2djz27WPrOGUr7cc/nfjzW3Fk5UbKzisVLT7SkCN99j3uStC+BHJMKt/Nt3dZYLgutmnwRBLNAlZ9pys2IX+ZTyGKCRoQBS53et/OWGajYtQ2aetGSb/wGlRZxnrGuGxPdFqzpYbu37a5Nw/tKibzBw0hw+xEaXq8oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745914935; c=relaxed/simple;
	bh=bFksOeknh8d+JfpwdhA3LClj8Y8cCin0vyzLAmX/vl4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GEXPvJ+vGR8nrRk4EgYIUkOlc7fsJqoUk3n+gSQ8T3mjWRJiV+HUP3suHIuru1lm9eB/0xjeGXI/SVwP6JxAEo/UQQVsvsZnynHSaBO+e2cOvo0S75v/hhbcA/WZ5z3ad+AgNCC2CEEr6gptm+pSwDSeKJ/h10winp81JT5K+aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bd/1cZk0; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e5cded3e2eso8887958a12.0
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 01:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745914929; x=1746519729; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kyiytjDRdFd6s+6c7xd37xzCdnxjjI1OzqbZfUcJ7Kk=;
        b=bd/1cZk0rWDbHxQ3J04toubS5K18q6pCmY+V22R06qt0mORt1LVXtuh8L/MUzJU8DZ
         Oj0AS2oNl3+O2cFdJDYo8FPXdVC2idJb+Z3UzbyHoi3NTBTdlU8NgZdpULc5vM4xcPjZ
         b/OUdUEjHfQH0OPfRQnQn7+W9fwwD5kbHuV1WB5+867mYp34oQTsIRAVDSVYCErJqSvc
         8uO2D7+wa1o3kjFJo//YdwFru+RyYUC7ZCyeEPzLZtm8BWDwMk5cbtQHUl2x30beRwFg
         9cINqr27apkfAMIG+gA+mzbruGQ0IheHCapeifIVPSM45naZU2O9F5otH040IooI7WXT
         QOrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745914929; x=1746519729;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kyiytjDRdFd6s+6c7xd37xzCdnxjjI1OzqbZfUcJ7Kk=;
        b=B2UMW6+bchqTkp/Yf6zZ2QyUm63FV2enITwHqQ7zj4OrS28yxrpDjJiD/VqZbpnCXq
         USAKFpM3lyE/7HK4yavAdVnRlRUnZMV08qFNZB58M0jj60Jq/asZhD/Wk3TMkFTysqB8
         uIFjLK7ROPgXKfoZ6jWpsn9XrABzd1uzFnCo25+cOAdbeUX+lzyRMZHtO6w+J9JJnsD1
         NDIl8krAoZJekx7LfQgBlV9Hu24FBN9qAAxCUOzIbR/OBJ+JYs+C9tY982ZraBoWoQK2
         V/pKcm9qIBhq9PVjazCm4A7pz2vGxQDlKeM6T6S7hskv6+9F4M5YHL82x6HQorXd60Nw
         D/uw==
X-Forwarded-Encrypted: i=1; AJvYcCXj9HqYJ9JfwOnlKS9s3uWkWkWiXItcXs3HDs3HVwUdMj8uhWUSFCBHBrBCXTt6ISoEnm2mYFEB2ZYH@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6sDW8f1VML04EzUS5+uX4P0n65r03Pv0c/4wYuXYCwJLCKHVJ
	h5I59IwfFxnjZLR1uE/Defn7xtKX2kiFnhxgu/AXfY2UBJA2soppHSu5SrsCzFo=
X-Gm-Gg: ASbGnctW0zysOSRdXlfKvrgfdgsGNjOxJgp+vJE61llzO5hvQh+ed5NbeAjXqGag4LM
	qvLdyKOEJMT6LZ+Y5kusEqRoV9HvyUyVxxaHVsPNsDNUCwqbhV4oftSa4UqDUXuylPl5Nadrzsw
	OJ4S1r2PER7y7zM6pgqF+Qa73gOdLlbR3g0JFLvTc5Op5G8HKvSGeR/tYnncNnuYLbD6jvjVfbq
	oB7+iTIw3Jiqoo22QZSV0MIUl3HXXOerqHpGwu80zeasHVkBRWQEQmw79AB3jv2AWaY5xzhlxUm
	fVh/jloniy7mwApO92fuRzjCQ51Olfon1sTYWCT2+/b6admNDFXZb6v3aoT5wda6zSA1RfspeP3
	5GlueJkxxnW84SDg164vJoCGej4wjDbaoBN8=
X-Google-Smtp-Source: AGHT+IHzcQQ+9hyFiMjckDJ0NsHxoITKhor7RUapPEL2dlwcirTYuq+HRPXA4/n2SoNbKNkmp3RVPg==
X-Received: by 2002:a17:907:72d0:b0:acb:b08c:76ae with SMTP id a640c23a62f3a-acec84d2cb7mr160276166b.16.1745914928732;
        Tue, 29 Apr 2025 01:22:08 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41bbf4sm737905466b.36.2025.04.29.01.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 01:22:08 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 29 Apr 2025 09:21:39 +0100
Subject: [PATCH v8 3/6] dt-bindings: mfd: add max77759 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250429-max77759-mfd-v8-3-72d72dc79a1f@linaro.org>
References: <20250429-max77759-mfd-v8-0-72d72dc79a1f@linaro.org>
In-Reply-To: <20250429-max77759-mfd-v8-0-72d72dc79a1f@linaro.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Srinivas Kandagatla <srini@kernel.org>, 
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

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
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
2.49.0.901.g37484f566f-goog


