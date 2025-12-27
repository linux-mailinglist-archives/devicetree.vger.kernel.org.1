Return-Path: <devicetree+bounces-249834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF61ACDFA8C
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 13:26:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BAE4D30249C1
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 12:25:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34C6332F746;
	Sat, 27 Dec 2025 12:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DOluwDvN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF45C32FA1E
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 12:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766838278; cv=none; b=Zsb/3j2sj5czkecbEnRcYyfEIsBRv3UuDayh8O3XCzzIQ7MUcFgvvIwuA5gox1vZONOlecZUmKhqVjtYBLf3Fj7Kv+n9YGGRMWcP21U8/PEGEK7kqGySQke5ygSaxUQ8DpC2VB/7OdYESxyrn36MQsZ+vQkdW5c22tlQZb4+s9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766838278; c=relaxed/simple;
	bh=aubReYwjqANuwkLNLEVgfFzepyO8fT5RaOuCKS4xuyE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U3+y2+Na1VEdKe/ztpLuSlZi6Rv8lUhlAfjpTlvlyNdrhoPYe0E08QGvZinkOo0RtiIVzp6luwitLbM/Z3cyPoAEd52KTJXAf+dpboLOC4wS8xm3+Fo7+1Bd0NYqJt6a5tjCEV5I0FpnXYjm/Sv/M0h0rku4wp/3hudN3vy5dbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DOluwDvN; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-64b791b5584so11335174a12.0
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 04:24:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766838271; x=1767443071; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5W1/4QyvrrrF6qZFn1ADTO8hKq/uJgt895DTkpi0Lzo=;
        b=DOluwDvN7MVa81mgJVKi1f/zYUnMuMESjeuXZmeDMhPO0uanfabtbYVTAk44OdDCxl
         khxhFP4lh1L1Fyw/Flj7vqaILNIrft4GJoWTDRwqLFeE3zJX7jff7dgwI3gRwqIQoYV5
         L9KEr1UtNb3XN47Bl0hjCSGnPL6/5Jv31AtT9j7uk8zOJcf+tPDNL/ARfcjqZI5SYZRR
         5OgDlfG+ASHSX32PwgN8Ll/Bqwah+skmq3ilHK14+z68p6YEXppQ90G/P58ICs7boNP8
         qrK2oeoXGjwskOxzWsdRuyhIBb+G4Gl8DcOdqqXopLuEFL7FWcm0PGUjoKITM+r3hMqR
         /n5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766838271; x=1767443071;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5W1/4QyvrrrF6qZFn1ADTO8hKq/uJgt895DTkpi0Lzo=;
        b=YGT5DvDjJpQgXSoxOZJ9qofK3C2FOXkYoSAq44JS0OBdVfJrBu2lKz0+Tasaq6DWum
         RqkUoIDYHkfz5g1Qqr+KkmypxeRVu0zcZrHWXuqczHdGgpVYzj/zdcLBcrhUey2Mz3oQ
         p/CWXr19u5Mcs4Zh6thUEH0s0/llL3ZAmUZPSUYFpZ+kuFHzXpo3rVv488bACgRsaMS/
         4fSRodxeJ+lAH8AY25O6ZfEWDt1GNtbtlyLnPHHwtkgTXOMstjeVAXr4Gjxh0jOa+fIt
         n5XfuyA1kiqkpiZWjvok0RECC5tHSnZ6nz3vMCGqVwaNrHwRtsFuL2Wdm9pzDql4auI6
         9+fw==
X-Forwarded-Encrypted: i=1; AJvYcCWBGschoxRBmne2+ApKDh3cvJ372pG75/b7WX+Dq9IiPijedO3XnbGGjOLe5AWdz56s8L/rUxGWa/zn@vger.kernel.org
X-Gm-Message-State: AOJu0YxeA79fH9sKJ5YKA3T41dlCamlpnLGZp/MgdQQh8DJ/7BFnoQGi
	HFrwkiJAO1ZhkHYCWZJfE5aLhbfzDFTkka2NYTnZSWfTRQGVnkEDiVUAYPwJ2IvNvEQ=
X-Gm-Gg: AY/fxX41C25xwAJzop7TZbpdYUl+AMnFTzX1Qhq8Ueemo5bju/k1OdsmTKK3jxLtJWg
	CnLTvKEw3UttVZPTDaWvrNPe57BeKn5yVW5+IXo8prCTdZDBovZ4BIpMBjcHXza7fza8UUWl3io
	Y/NnHUuDmseUsDZsEdlmit5L0QKwA1L6DeI5hKwlWLoJ3IC3DUjE6W7akQxkcXPQmLB7BdsBE7o
	jN/iL1QgyMfW4+KklahXKp7zixsXKlrPtmEtt9an9YGl1flOoMLWEdb2QoD4LKeGP9pwlMtiBOA
	ENvzmTgoFAJiNiFRDW50v2fD1pr1SSn/joj8fe2OzoyuGvjDiMl0BumVH2nLhlxN2rSnaLllOl4
	6eL/ZmMYbldnn8LDP3YGF2KrE/J+stbx/eY9CDOcFFYZnHSJZdBBhBno4FsVk1ctraepU3+F2pS
	619ZFUPtjEXHHGObMajQIVKGVY6A7cAi/jP/OY/gYV+FYe3sKrBj8H5acE3O+odJSKd6PhE+XVL
	caj7w==
X-Google-Smtp-Source: AGHT+IHKNrgbFALiao/cpd7mt183lE5L6kyEfG9J/2ltABs41Gj1m0uvaXUI2oj79RKqq8FnsABI3w==
X-Received: by 2002:a05:6402:51cc:b0:64b:a1e6:8018 with SMTP id 4fb4d7f45d1cf-64ba1e6832dmr21235958a12.31.1766838270685;
        Sat, 27 Dec 2025 04:24:30 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm25932659a12.31.2025.12.27.04.24.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 04:24:30 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sat, 27 Dec 2025 12:24:28 +0000
Subject: [PATCH v5 06/21] dt-bindings: mfd: Add samsung,s2mpg11-pmic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251227-s2mpg1x-regulators-v5-6-0c04b360b4c9@linaro.org>
References: <20251227-s2mpg1x-regulators-v5-0-0c04b360b4c9@linaro.org>
In-Reply-To: <20251227-s2mpg1x-regulators-v5-0-0c04b360b4c9@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2

The Samsung S2MPG11 PMIC is similar to the existing S2MPG10 PMIC
supported by this binding, but still differs enough from it to justify
a separate binding.

It is a Power Management IC for mobile applications with buck
converters, various LDOs, power meters, NTC thermistor inputs, and
additional GPIO interfaces and typically complements an S2MPG10 PMIC in
a main/sub configuration as the sub-PMIC.

Like S2MPG10, communication is via the Samsung ACPM firmware and it
therefore needs to be a child of the ACPM firmware node.

Add the PMIC, the regulators node, and the supply inputs of the
regulator rails, with the supply names matching the datasheet.

Note: S2MPG11 is typically used as the sub-PMIC together with an
S2MPG10 PMIC in a main/sub configuration, hence the datasheet and the
binding both suffix the supplies with an 's'.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v4:
- Krzysztof:
  - move to new separate binding samsung,s2mpg11-pmic.yaml
  - add example

v3:
- move to new samsung,s2mpg10.yaml file
- deny 'clocks' property
- mention NTC thermistor inputs in commit message
- move all patternProperties to top-level

v2:
- add | to vinb*-supply description for better formatting to mark as
  literal style
- mention GPIOs in commit message
---
 .../bindings/mfd/samsung,s2mpg11-pmic.yaml         | 88 ++++++++++++++++++++++
 1 file changed, 88 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/samsung,s2mpg11-pmic.yaml b/Documentation/devicetree/bindings/mfd/samsung,s2mpg11-pmic.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..62cedbbd9d8c4cb7e9dfc039c1c747e334903b20
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/samsung,s2mpg11-pmic.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/samsung,s2mpg11-pmic.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S2MPG11 Power Management IC
+
+maintainers:
+  - André Draszik <andre.draszik@linaro.org>
+
+description: |
+  This is part of the device tree bindings for the S2MPG11 Power Management IC
+  (PMIC).
+
+  The Samsung S2MPG11 is a Power Management IC for mobile applications with buck
+  converters, various LDOs, power meters, NTC thermistor inputs, and additional
+  GPIO interfaces and typically complements an S2MPG10 PMIC in a main/sub
+  configuration as the sub-PMIC.
+
+properties:
+  compatible:
+    const: samsung,s2mpg11-pmic
+
+  interrupts:
+    maxItems: 1
+
+  regulators:
+    type: object
+    $ref: /schemas/regulator/samsung,s2mpg11-regulator.yaml
+    description:
+      List of child nodes that specify the regulators.
+
+  wakeup-source: true
+
+patternProperties:
+  "^vinb(([1-9]|10)s|[abd])-supply$":
+    description:
+      Phandle to the power supply for each buck rail of this PMIC. There is a
+      1:1 mapping of numbered supply to rail, e.g. vinb1s-supply supplies
+      buck1s. The remaining mapping is as follows
+        vinba - bucka
+        vinbb - buck boost
+        vinbd - buckd
+
+  "^vinl[1-6]s-supply$":
+    description: |
+      Phandle to the power supply for one or multiple LDO rails of this PMIC.
+      The mapping of supply to rail(s) is as follows
+        vinl1s - ldo1s, ldo2s
+        vinl2s - ldo8s, ldo9s
+        vinl3s - ldo3s, ldo5s, ldo7s, ldo15s
+        vinl4s - ldo10s, ldo11s, ldo12s, ldo14s
+        vinl5s - ldo4s, ldo6s
+        vinl6s - ldo13s
+
+required:
+  - compatible
+  - interrupts
+  - regulators
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/regulator/samsung,s2mpg10-regulator.h>
+
+    pmic {
+        compatible = "samsung,s2mpg11-pmic";
+        interrupts-extended = <&gpa0 7 IRQ_TYPE_LEVEL_LOW>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&pmic_int>;
+        wakeup-source;
+
+        vinl1s-supply = <&buck8m>;
+        vinl2s-supply = <&buck6s>;
+
+        regulators {
+            buckd {
+                regulator-name = "vcc_ufs";
+                regulator-ramp-delay = <6250>;
+                enable-gpios = <&gpp0 1 GPIO_ACTIVE_HIGH>;
+                samsung,ext-control = <S2MPG11_EXTCTRL_UFS_EN>;
+            };
+        };
+    };

-- 
2.52.0.351.gbe84eed79e-goog


