Return-Path: <devicetree+bounces-251389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA90CF298E
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:06:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E19563058443
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:02:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4B1732D428;
	Mon,  5 Jan 2026 09:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Br9Ybgqk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B21F32B9A8
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 09:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603712; cv=none; b=dI2VsgukekzBOhNqf74HWn3O/2nW+mgAADIYRi4b9CYBGtfhmGW6pHugeaKCawltDQKG6luP+rRSTTTJFIJ8P3/DcL62/gf302ZscDvDrlaEBaPdblj0LuiBHfIiU28m0YDcg1p8iwbWzNkSbjH74WiYW0DqUNcM08eaCkphtMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603712; c=relaxed/simple;
	bh=Q0CedTDoxzAYvTyoSGG2JCu7m4Qn+Y6GBjY/RZepsts=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LthnHx2vYxDDmbfBoOHlRxvlY9oJ9aVn5gMLKJqWwWq26X+BhzLMImfBe/bq5gKHB1KRvezw6udKONRDYxOFSLlAz1bQNtytOmVUI7ng65IMxABgS9vv3f7CWtgTrU0e93Kh1E4NvqkwyAOFTEuT6IlNbzPgAVejpa+efAVKiSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Br9Ybgqk; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b804646c718so1566984766b.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 01:01:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767603705; x=1768208505; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PoAySoFSuOUGBXwBkj/tqOj8zEikF0/rK/x+6MrVKns=;
        b=Br9Ybgqkmp+pNBpgzSa6elEmvYnv+1Jxup4uzletSQ1uwbaTgP1Edsmt6ATGa2WYcN
         9bte1D+G/p0iQX+5V5D3Q6oiUPNdyYeNGXAjrW2QUWjJU5eCJq96q/ouCGzonIgprzMa
         spXaDz3CA39oCEy6UskQalI0Rj4YKtELnYzI0MO31rBy8oPQEMk9b4dR1WWwGrq3+NQ6
         hoDz4AzBvh58OujoBKk3tJ8eb1nmqur949ksfcMzCZFd3ruCe0OB5lGOz2nKn9veZnJj
         0BHAFCPl2mgPwvidU+rlsTr1L/s7+4cqSJXbzzLZR7Tg+rU9ti2Itq0Pzt+XCXLxry4m
         bH6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767603705; x=1768208505;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PoAySoFSuOUGBXwBkj/tqOj8zEikF0/rK/x+6MrVKns=;
        b=air+DOc74yEklis2XT2CUty1f3JYZxhei0Jwjk4/DS2AYc8cIuVFt8Nq3eLKVbDOhQ
         SA5JSzCoLk3/WNjNSnxDL/WkAOHMS1xu04HGSB6WK6Stn42d/jcx5xzTAgPH6dXWNDBe
         K9DisDjrvs9/jQapNB5pLgR3Zb5b1Rmwj/odhev+BIHJP8ZTs60PKgoB2qbRNq/T7xcu
         U2jKIuSWcsPA7NVl2slAs45mtC3FHV3aGTTK4pKO47ffNVzGym4yTkqUly3K1t0j7XLk
         La5k0jOmwIlbhp2OWHGUMUtFUGEK5rloaj/HdB+AqmMZYsOi/w4WKbr73bXcUivRBBdw
         V/Pg==
X-Forwarded-Encrypted: i=1; AJvYcCVAyIVLbcKqs+oxmvKpdlyPgfkH3556EDtMKJrLBZEIn7HZXtB0UDZOYJd3hFPBlTCgeLlnRIDFh8Vq@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn4LaEstnvKywOC1lODfp4Vi5cIOBKKH7OHcaEYCKjVW/Du0kX
	pOPU5W30hXY3kpPhS6wPa7at8VLUiMISaljsaljQ9wMNAClzO2Y/+egL9NBJF1wfyP/wp8e7gn/
	g7vZhTGc=
X-Gm-Gg: AY/fxX4XcatWuH1hAmEPQC24jPS51EGferlXdOPe3idKxiR4YAhlBoLtJFR25PRIOrz
	PmGLR9vQXatt+RVSw8KmXmCHEtAxtimh43Hq4hnO9zLUBNy7sR97BiAu2LE1ie62/ccgIc1CbNH
	KZ9ZOT/2h0vcSUGXS+MLC9i2zrv52LnCc2uRWieo7b4gRKD3IOByrC1lCcppQTDtZV0fwhckz+A
	K21u49oo67gHtS2OWNlLWpdgdOImRCqST0MuAjRqjImVdRHS4yle1nZm42LemasXidd4at1W+ZC
	KQ568+AIVHZqRcnnpI2xXnWVlPaavWbkpEm6vyjluVwuxGBvrEBSR+QiMzZ0tO55VhHfoeFz9xm
	oXreD025ulV2yeXIAw6F2mSwq7jhO34JDRMQFM09abNfMJS8o1jZfdv424YkbaUZ01Fc5KNMugk
	e+jN1DQ6+8mSBfD0cRGWUth7nVF3xma9Welo1EzHjXw7MchrUSVdtNhGt7Pr1cX6aVbogJmG+9/
	cRE4g==
X-Google-Smtp-Source: AGHT+IHLNZp+Jq1jsa53Bnqvt7GnC4A/Xve6KIieFsmmoiEgzeIhn3tFkD2eHD+IaKS3ZUoDDcDeqA==
X-Received: by 2002:a17:907:5c2:b0:b73:572d:3aff with SMTP id a640c23a62f3a-b80371533ecmr4767140866b.35.1767603702389;
        Mon, 05 Jan 2026 01:01:42 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0ecb9sm5384010466b.56.2026.01.05.01.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:01:42 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 05 Jan 2026 09:01:40 +0000
Subject: [PATCH v6 04/20] dt-bindings: mfd: samsung,s2mps11: Split
 s2mpg10-pmic into separate file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260105-s2mpg1x-regulators-v6-4-80f4b6d1bf9d@linaro.org>
References: <20260105-s2mpg1x-regulators-v6-0-80f4b6d1bf9d@linaro.org>
In-Reply-To: <20260105-s2mpg1x-regulators-v6-0-80f4b6d1bf9d@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>, Linus Walleij <linusw@kernel.org>
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


