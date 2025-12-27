Return-Path: <devicetree+bounces-249831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CCDCDFA6B
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 13:25:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E1353301E17B
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 12:24:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7733C32FA30;
	Sat, 27 Dec 2025 12:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XXiktJ+l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 994C132ED3A
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 12:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766838274; cv=none; b=BFEyRsp1Vr0/fjdgthifbgUQbglFYOWFb5PKFDomZXFnYeFUA5W0aL9qldOspgPD2VQrp5Um8tsUvTJGeNzv28K1iKHjxI+cUdkQlpvn+qVm5cJjYotVbz3M3gIbfoml0yoK5s8CQI4++PRM5vR14DcD2JCvq4R2rMEy7SpkQC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766838274; c=relaxed/simple;
	bh=Q0CedTDoxzAYvTyoSGG2JCu7m4Qn+Y6GBjY/RZepsts=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QqDRw3bapOyXcWFD0ibrNazH43c/3JvtF58mo21UY8rigpXSfqA6ZnWARGDQoI3zP5ppsjGzzJMyhEnJVGtqlDjdl4C4hrCfR3cxTQB/BwBQROd9YR2KODRVOnqmipw08k/ORO4bOMepe5tfyd887ZP5F72JZkaD5XCpsRuvZw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XXiktJ+l; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-64e48264e56so1473872a12.1
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 04:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766838270; x=1767443070; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PoAySoFSuOUGBXwBkj/tqOj8zEikF0/rK/x+6MrVKns=;
        b=XXiktJ+lCvjhbzo3SHLREtSuT1TMjnJ6SC5DTDmlXxrDFQFw7DapSpAmOKbqXOMp/B
         KVdJz6cltOVSUxMxLMiR0aEL8L1VCcC9OEyWArtzmS4JgsaEQBmQRskLRdCS7hkNq/Q7
         EKRLa791bfSHqfwg71+a5fBE2HbBmj2A/leKIoiBYvkoh8R9EG/tqivkluRZhNqoIyGS
         9d/zR9vqUGQID0GWTK9Xh15EF7dGhQMipw7Z6ktzWygvhMna0mSXWIsu2K3vCx4BAS/j
         CwNvkUfz//+oyuWtKDGn5d/HfXrwi15fKhp04DM5QR1APwJureRF9ZwaGSAJBKv6Tq9r
         HuAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766838270; x=1767443070;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PoAySoFSuOUGBXwBkj/tqOj8zEikF0/rK/x+6MrVKns=;
        b=pI1YpieR62BR5Q118p0nJcFmt3UEdCwkNuYcuE/y8R/b19L0lGU8ognli31jeFVli4
         4h9VIcfaCRWvphos3xH6eMNWafXK82sznx7OS/gO4jimwOCJRWVvB1nvzk2V6tNf3mBX
         hz7y+kuAybORuulmsa/WTkBcMZ8ME7iHVd0kZbo/RJck5nFUR6/A67HEXI2eVgMmNzgq
         5FbNJrp8tYWK30xR/WTIVsSplR0bgIlEWbI99ddwcn1ZB7PQF5lLXp+zFruPzpWRv8v+
         bmvcJiPJlPZxneiQQeH3tTJrKo/D5YQnf73IBKMsgw8wrRJeiom/Xs9KFfAROjiLKDL0
         UDFg==
X-Forwarded-Encrypted: i=1; AJvYcCX+w3Nu3IiDx3B2OG5MHLdanErZzhgN82NADMkB0uHteJDPMnnhP8yYQJvbarEa6RxXOlSrqcFDwecs@vger.kernel.org
X-Gm-Message-State: AOJu0YxklxyBWkf+qzeXyLj3oIkEK3Ju3PjGK3h180Cf55fuSL5oxa2a
	+WVFUHLqGFdijn12SKNmiOzWvzQgO5GRqVF00MwCmBCnmt546XLTpe9vZmi4Ewtxes0=
X-Gm-Gg: AY/fxX6utido2uRAoU+pva8n1EkccTk6IvPd5yZNpdmz+xvuELdq4393VtNvFX0/ttg
	wxZZHIzu6ulMQEKqI/U7lRJqYj9DLQ1L/d2IpJKPf0hb/mUNl3HZhMhhO4LkF5I+uWz9uK8u8Kz
	va0rO74I9IB5tgv4DKtTVCxKhre8zPKmWakCDIrbue+8W7v8dSBumkrkyQxhZrd3FQUXmnL3rGX
	GTSrdoBzUKEekl6/+SvGUvwJ8za1/iJ+05puIU5KizsjZJSZWNvZkMGknUKPTigfwoDzYpY4nv8
	EjsjaaFP3U6NxiL3MulJVdRZAvKGq6WEELXRJaOz4MjhmCd4t83W8H5DwXE4gUxwEIehy2Cpq1K
	PuX0myClpCiBttWHrtUS8gQxXdTezQH7Y3Ad0CmcftVpC18lIpZZQszGJMEYR24pHmYtWv0/ppf
	VRety5YxcubNHzRuy6nIuJX/3JvkUVfZ17KiaFAKrw4M5MVx330zBNtoFXA2eZsaQ7jwmlvAQHI
	7yOaw==
X-Google-Smtp-Source: AGHT+IFwPaGUh7AedhbGKdobDVIl693E5xOS7bnu/0qiOYY00HsSelAVrn/J5vSA6RYOmzMZGsd4tg==
X-Received: by 2002:a17:907:3da8:b0:b7a:1be1:983 with SMTP id a640c23a62f3a-b80372699eemr2839825066b.63.1766838269649;
        Sat, 27 Dec 2025 04:24:29 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm25932659a12.31.2025.12.27.04.24.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 04:24:28 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sat, 27 Dec 2025 12:24:26 +0000
Subject: [PATCH v5 04/21] dt-bindings: mfd: samsung,s2mps11: Split
 s2mpg10-pmic into separate file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251227-s2mpg1x-regulators-v5-4-0c04b360b4c9@linaro.org>
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

The samsung,s2mpg10-pmic binding is going to acquire various additional
properties. To avoid making the common samsung,s2mps11 binding file too
complicated due to additional nesting, split s2mpg10 out into its own
file.

As a side-effect, the oneOf for the interrupts is not required anymore,
as the required: node is at the top-level now.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Note: checkpatch suggests to update MAINTAINERS, but the new file is
covered already due to using a wildcard.

v5:
- collect tags
- fix a typo in commit message complicateddue -> complicated due

v4:
- make yaml file name match compatible
- add example (Krzysztof)

v3:
- new patch (Krzysztof)
---
 .../bindings/mfd/samsung,s2mpg10-pmic.yaml         | 69 ++++++++++++++++++++++
 .../devicetree/bindings/mfd/samsung,s2mps11.yaml   | 29 +--------
 2 files changed, 70 insertions(+), 28 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/samsung,s2mpg10-pmic.yaml b/Documentation/devicetree/bindings/mfd/samsung,s2mpg10-pmic.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..6475cd1d2d15e07d953c8b302c90c785835985e5
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/samsung,s2mpg10-pmic.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/samsung,s2mpg10-pmic.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S2MPG10 Power Management IC
+
+maintainers:
+  - André Draszik <andre.draszik@linaro.org>
+
+description: |
+  This is part of the device tree bindings for the S2MPG family of Power
+  Management IC (PMIC).
+
+  The Samsung S2MPG10 is a Power Management IC for mobile applications with buck
+  converters, various LDOs, power meters, RTC, clock outputs, and additional
+  GPIO interfaces.
+
+properties:
+  compatible:
+    const: samsung,s2mpg10-pmic
+
+  clocks:
+    $ref: /schemas/clock/samsung,s2mps11.yaml
+    description:
+      Child node describing clock provider.
+
+  interrupts:
+    maxItems: 1
+
+  regulators:
+    type: object
+    description:
+      List of child nodes that specify the regulators.
+
+  system-power-controller: true
+
+  wakeup-source: true
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
+
+    pmic {
+        compatible = "samsung,s2mpg10-pmic";
+        interrupts-extended = <&gpa0 6 IRQ_TYPE_LEVEL_LOW>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&pmic_int>;
+        system-power-controller;
+        wakeup-source;
+
+        clocks {
+            compatible = "samsung,s2mpg10-clk";
+            #clock-cells = <1>;
+            clock-output-names = "rtc32k_ap", "peri32k1", "peri32k2";
+        };
+
+        regulators {
+        };
+    };
diff --git a/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml b/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
index 31d544a9c05cad878d10a0ae9b99631f08eb04a8..ac5d0c149796b6a4034b5d4245bfa8be0433cfab 100644
--- a/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
+++ b/Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
@@ -20,7 +20,6 @@ description: |
 properties:
   compatible:
     enum:
-      - samsung,s2mpg10-pmic
       - samsung,s2mps11-pmic
       - samsung,s2mps13-pmic
       - samsung,s2mps14-pmic
@@ -59,42 +58,16 @@ properties:
       reset (setting buck voltages to default values).
     type: boolean
 
-  system-power-controller: true
-
   wakeup-source: true
 
 required:
   - compatible
+  - reg
   - regulators
 
 additionalProperties: false
 
 allOf:
-  - if:
-      properties:
-        compatible:
-          contains:
-            const: samsung,s2mpg10-pmic
-    then:
-      properties:
-        reg: false
-        samsung,s2mps11-acokb-ground: false
-        samsung,s2mps11-wrstbi-ground: false
-
-      # oneOf is required, because dtschema's fixups.py doesn't handle this
-      # nesting here. Its special treatment to allow either interrupt property
-      # when only one is specified in the binding works at the top level only.
-      oneOf:
-        - required: [interrupts]
-        - required: [interrupts-extended]
-
-    else:
-      properties:
-        system-power-controller: false
-
-      required:
-        - reg
-
   - if:
       properties:
         compatible:

-- 
2.52.0.351.gbe84eed79e-goog


