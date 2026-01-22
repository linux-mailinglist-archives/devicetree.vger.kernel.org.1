Return-Path: <devicetree+bounces-258492-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHAgHElLcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258492-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:07:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D11C7698AC
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:07:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D0953004F6D
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:58:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F23744D01E;
	Thu, 22 Jan 2026 15:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g6lkpCWd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99F7444B68C
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769096628; cv=none; b=uUw8qp4BGg0tA96EN8XVTTmfN487/VucgB/zWSUG/6gnogmgbzVYQAFokk396AUqL3NUbTX595tlkSU5/zaBYDsxj+BudtVpucS8cPS/6l1wTZZJ1KLsBd4qseHhfwU9KuJ9Yy0kjy9De6mZgasxBtC168VCHZYaOS3WZWDTy9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769096628; c=relaxed/simple;
	bh=YUkqG+cd93/H4MGNBfFqJc8uR/siDaryijnkiWMGqeA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UsCVnDZY1S8l5cJjpg1csDghY2f+HuNLipobdgcdozUbOiUaxITqWz2f/OLiflncfbuMIXcWr9UetWWFRaSQmk2eF6Gc0+dCxpATPMSsAKaod8s4ju9CPfKD9m28tkjrXt7VkD6EfZAAJuEgt6gRaliX39/hyfr6ybHibav/Xpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g6lkpCWd; arc=none smtp.client-ip=209.85.208.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f65.google.com with SMTP id 4fb4d7f45d1cf-65807a2012fso1874159a12.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:43:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769096620; x=1769701420; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y1HXah54KngjOwkG60AMif3yC1M7LQ9vhDlbA9LVhoE=;
        b=g6lkpCWdzXv/F3EGWVYmIQVKGeIfkDiiCYY2xeDytmjDBF1ucVSU8v3CzTpNfiWN1F
         kPWzkQxWdkSUoGh6jBh6ZwErs9aveQH2XkLhqnx4C9Zx4sYiQsRPsj5mrUX6roeafERE
         yy0Aq1AOG9HHK03RlyGsETNAJfkRbJKhid+7/dj7oDiSc2QMwgXXfJUHCXJ0Z6/X6EQA
         ZGRAchgvrLQ/KuhudkuorI2QgzBI7nQ6ch8xqSbjuME+8mG8X/3BaHVhivT3o7wl4KL7
         mGZ6Wjzq9nMUctmGS+p+9hjLIzHjKcYwuRry3TaC8TxHOHBD1Lgn/Ori89/BWTJOHDIL
         9Ssg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769096620; x=1769701420;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Y1HXah54KngjOwkG60AMif3yC1M7LQ9vhDlbA9LVhoE=;
        b=t6YLohfgFCbiLVdaWaWEPjo7CP4pBom5BpvLmUDJlXYRkFc18NMApfjPdSPRNYVVsF
         9NQVg93OqnmUSf5UAao4kShvGLFbM+7wS2lNvsb47uvs0pVW+8AlKdg7z+fp2gy/xnOe
         ImwQtNOx0JRBNYfamOWJkpE4WcdZuHCzFEW9g7iC8rmw8qf6+O/dM8yGgUfainejv7Wx
         GDbzUvmGXScGksv7a7YtnNKfEO7Ll1E3Dv6jDhOxoIswHKVMtjsKPVqMSnHzJtrglUlR
         CmalhJd24bWwN2L35WFEV64zOG0JCvKXAhn9vQLUybXsjnVLm4rKBY5/uo63y7VShZT/
         w6kg==
X-Forwarded-Encrypted: i=1; AJvYcCXJFupTXg53A7U8nIA3uSfSPimnJJMjSTUBKrh8ixO3ZqyE+2+KLfvg4K+Kp57rjq1RRbP5Eo8fnDxe@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7J/tZw/0d8vqQ1IXrcCUO4CZc232bMecbBdgDGm1j7pUKkKfc
	BYpe3DZ/UACnTXX8Bq5tORo50hsD99xCSU7px08pOAB+dDw+ZcPvb0GpRmkkkhFDAhY=
X-Gm-Gg: AZuq6aKfoFOh1CQQHZEqbGsvWqMZynkLtPz9gNjaX/HMWW2h0vxEPp4pmQd6pxnyAdB
	b/uSbTcNI8jyoXjRjFv3oK6kObmGnbA9/UseMrz1MLb9YLKmeYHUXR7haWHBBZ6xj7yKUr3egvM
	SuGxzYB5V3reJLSb4rcM8r7OLkJNLdi4iy09p93qD6MGPy2RTtuVuExztteVb0WerKxRBh5MxHq
	xHBCtGezD5EuQBNvdDmN8wCjP1kEGqAuRNqYEFf/FyjmL3h562cdDybHly7W2f6R8PsbUfhAY1Q
	LcGzjwLFf+7GFMxVM+ldY76A2oSsKLZ7uD2oPoj+nR7hSVc9+Kb9xJYqfolNgHU2BSrh8mmN6Q3
	eorZxSk+tYa1TAFFydlic7GxdhXWc98DvW1zylIN7GHG+TqfbMwlJdbNu/WtHnjMcqcOZd2cAx4
	sk5kfCMSTQbb5dk94OzzPuFwBoKAEsk+gTVqhslUZjdAwLpyGH/vjFd8ci/nVb8Fbx2f9SiI3qs
	J11kTaxPgDhVdJg
X-Received: by 2002:a05:6402:40d3:b0:64d:540e:c68e with SMTP id 4fb4d7f45d1cf-658487b1d8bmr18992a12.26.1769096619853;
        Thu, 22 Jan 2026 07:43:39 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654535c49f4sm16334363a12.31.2026.01.22.07.43.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 07:43:39 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 22 Jan 2026 15:43:33 +0000
Subject: [PATCH v7 06/20] dt-bindings: mfd: Add samsung,s2mpg11-pmic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260122-s2mpg1x-regulators-v7-6-3b1f9831fffd@linaro.org>
References: <20260122-s2mpg1x-regulators-v7-0-3b1f9831fffd@linaro.org>
In-Reply-To: <20260122-s2mpg1x-regulators-v7-0-3b1f9831fffd@linaro.org>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258492-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,gmail.com,bgdev.pl];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: D11C7698AC
X-Rspamd-Action: no action

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
2.52.0.457.g6b5491de43-goog


