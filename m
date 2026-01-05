Return-Path: <devicetree+bounces-251385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 75184CF2964
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:05:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 571BE304654D
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:02:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5140532ABFB;
	Mon,  5 Jan 2026 09:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kxIckNs3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C37932ABFD
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 09:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603709; cv=none; b=ep6zxeqrYrxpgBsrCj5J9UTvf30Q1W7ca1YQ83iOVV7REFqrMIZHjBOLkexoJ7dFD7iwec8Wc60BzwZoJkI0Ju1+dbEITUP6hgt/6dw9qzo4LAMEX8yvKy759RWjR4tB//FrYkL/rgqHRBQNVd4UbOZCGRiSNOo+kKg7NFu0EhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603709; c=relaxed/simple;
	bh=eUj+8YlOMKUNf5NBtFGcV3w0vZQRcRxLXSHd68Howms=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=j+NOGrbFGWgRDDXrpfeP0wPloWGuVmX6hVPXe4r0xix/P6TCEZBr6Lw+T6zRU3Da9Rn1fHIRMeHJezwuFfuI5qhtbm+FVrfpQlymnfEifnCNpolHzrit+JYZW2VsbFvCrQJthqC+/2cAESbXaz0ecUe419fI6RHQwCeUWIOOnLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kxIckNs3; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b7a6e56193cso2162725866b.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 01:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767603703; x=1768208503; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SNYCoocek2VrCaA3pJ1kEtxh2+5LCdMec/cid7tZc1Y=;
        b=kxIckNs3pcZk2QQHUAheYFAcP1DoI+NV0u7wLL2uwmqDBllGox4r9yrn9TrIpLTPtg
         zF0uQ8pUGuztmt7tdzAiTCcHMwLzZSOsL0W/ux/3IJxQj8FhGEw+4j5NCYkEtnWrgiw9
         YhV4yDF+ddWTNriUB10/LcePkP4gyBNqysSD9yDh68gqrluuT8mr/pEatoPbZORlKrGe
         EyPIxpzwnLgWF9oS0tVFwih4d9MtLQNu60o3jkjqIDCzMkACnkyfn1ayFSBvY4kfCe4j
         ET4SOztw0EO58UKRUkVl6EMN5+ih7TRIiioesoCJaWTo2k7qpxsMmN0mRMXOkYC6/BSJ
         aULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767603703; x=1768208503;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SNYCoocek2VrCaA3pJ1kEtxh2+5LCdMec/cid7tZc1Y=;
        b=H/lgUDCam3pI72MLHZc0qRW2hCUEIqZsDMaoGIzDhbt+mxHBtFRtTtdt+GB7KR+dPI
         hAe6zw2enSNIHCZxq3SiVCdvrI/abGnvULdW3DtxYnjMr0qeG0N/N/gBemdZBmFQO7U0
         MnH1shQXCwKh/844xmHjKBsw20jIg54h29PdgcP9TWEOJXSaE2ELtnvjMGjmPLqcuyaH
         gvLavJUieBqEj7TNuGAsmtybuH1NEXTh7oeUc3e5+soC8nWUdLvhKFRgZ2ZY5lrTa9NI
         vxOaSGEeHcVv911PRjT81ABvD+mqA9t8V2eg+LW5kCThESbLIO7tpmmrlNBM8OyShFSx
         qR5w==
X-Forwarded-Encrypted: i=1; AJvYcCX13LYLJp05VblJBj3tVqappR0/DE/CoWLp7JF4CDSCrriKv5/hTkLKe2HXsLO9HuS5nAiPAOXBg/ik@vger.kernel.org
X-Gm-Message-State: AOJu0YwDlJLUzXM/BTQpa/D4hHHOG0j6W3J449mfOu+SYCHHv0d3ioHC
	fEe7wsOy2it5eRdpy6gIDxYom47IDowg26s9otfS09Vx8abm3rSvV0eALDywTqTXQ2siBR+Pmp8
	dxzkZbh8=
X-Gm-Gg: AY/fxX7P9xkN9cvzg4N4SQE9PzUWlm+HSKPHGDnHTkD66aMECn+VyvE145NBOWhxxms
	wRAJVWVEbhATh6qyTf2ivbK+Px53fh1D/EFQ3yC34jC6/FapyuuZyyetvIOClWfQaLQN/fzlg0M
	T9QgaeEA3dR8AVGM6F27YMV/pO1yC7upPtlVd0bcC0llE81BghKw32HcmUJShKW2JHhQth4Fvfl
	TpEa7xqacduffo467tkInoXv+dED4V5ZVkVe7iutkNs3ncDyXy+4C9RipYQ6SCWQf+Z2WsUDF06
	e+LM9RlqF/Y55zpHeueKMwlPYVX9xtRYVgEuaCm4vHiSxVVV7Fsuuw6CC5ZgegmL/++DwQ9dsNF
	jpjeB3EeJF/CU0qFnrP5HtQFdeVH4ZDDWB1D7MmL/Y0h80VO3QWUWIslzxj8H/7qB2lWJUvFkiA
	ix8iBZ3U5gh3YIRzgI5kLQyakAKTJGxHxcbaurSnf387iJqmwtTEwEd9T+Za4KIbYWv4FJcZStP
	rWYzg==
X-Google-Smtp-Source: AGHT+IEMhCRz3n6iUPPLVom/XCfPxIRru78z7Q3ad65RUSf5g00tOnFRHp+Tss4eC3M+LwxuogmXvw==
X-Received: by 2002:a17:907:94c9:b0:b70:7cd8:9098 with SMTP id a640c23a62f3a-b8037288a09mr5164076866b.61.1767603702943;
        Mon, 05 Jan 2026 01:01:42 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0ecb9sm5384010466b.56.2026.01.05.01.01.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:01:42 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 05 Jan 2026 09:01:41 +0000
Subject: [PATCH v6 05/20] dt-bindings: mfd: samsung,s2mpg10-pmic: Link to
 its regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260105-s2mpg1x-regulators-v6-5-80f4b6d1bf9d@linaro.org>
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

Update the regulators node to link to the correct and expected
samsung,s2mpg10-regulators binding, in order to describe the regulators
available on this PMIC.

Additionally, describe the supply inputs of the regulator rails, with
the supply names matching the datasheet.

While at it, update the description and example slightly.

Note: S2MPG10 is typically used as the main-PMIC together with an
S2MPG11 PMIC in a main/sub configuration, hence the datasheet and the
binding both suffix the supplies with an 'm'.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v4:
- separate bindings for s2mpg10-pmic and s2mpg11-pmic (Krzysztof)

v3:
- move to new samsung,s2mpg10.yaml file
- move all patternProperties to top-level
---
 .../bindings/mfd/samsung,s2mpg10-pmic.yaml         | 57 ++++++++++++++++++++--
 1 file changed, 54 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/samsung,s2mpg10-pmic.yaml b/Documentation/devicetree/bindings/mfd/samsung,s2mpg10-pmic.yaml
index 6475cd1d2d15e07d953c8b302c90c785835985e5..0ea1a440b983a47a55fc86d6251b89056ba51172 100644
--- a/Documentation/devicetree/bindings/mfd/samsung,s2mpg10-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/samsung,s2mpg10-pmic.yaml
@@ -10,12 +10,13 @@ maintainers:
   - André Draszik <andre.draszik@linaro.org>
 
 description: |
-  This is part of the device tree bindings for the S2MPG family of Power
-  Management IC (PMIC).
+  This is part of the device tree bindings for the S2MPG10 Power Management IC
+  (PMIC).
 
   The Samsung S2MPG10 is a Power Management IC for mobile applications with buck
   converters, various LDOs, power meters, RTC, clock outputs, and additional
-  GPIO interfaces.
+  GPIO interfaces and is typically complemented by S2MPG10 PMIC in a main/sub
+  configuration as the main PMIC.
 
 properties:
   compatible:
@@ -31,6 +32,7 @@ properties:
 
   regulators:
     type: object
+    $ref: /schemas/regulator/samsung,s2mpg10-regulator.yaml
     description:
       List of child nodes that specify the regulators.
 
@@ -38,6 +40,32 @@ properties:
 
   wakeup-source: true
 
+patternProperties:
+  "^vinb([1-9]|10)m-supply$":
+    description:
+      Phandle to the power supply for each buck rail of this PMIC. There is a
+      1:1 mapping of supply to rail, e.g. vinb1m-supply supplies buck1m.
+
+  "^vinl([1-9]|1[0-5])m-supply$":
+    description: |
+      Phandle to the power supply for one or multiple LDO rails of this PMIC.
+      The mapping of supply to rail(s) is as follows:
+        vinl1m - ldo13m
+        vinl2m - ldo15m
+        vinl3m - ldo1m, ldo5m, ldo7m
+        vinl4m - ldo3m, ldo8m
+        vinl5m - ldo16m
+        vinl6m - ldo17m
+        vinl7m - ldo6m, ldo11m, ldo24m, ldo28m
+        vinl8m - ldo12m
+        vinl9m - ldo2m, ldo4m
+        vinl10m - ldo9m, ldo14m, ldo18m, 19m, ldo20m, ldo25m
+        vinl11m - ldo23m, ldo31m
+        vinl12m - ldo29m
+        vinl13m - ldo30m
+        vinl14m - ldo21m
+        vinl15m - ldo10m, ldo22m, ldo26m, ldo27m
+
 required:
   - compatible
   - interrupts
@@ -49,6 +77,7 @@ examples:
   - |
     #include <dt-bindings/gpio/gpio.h>
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/regulator/samsung,s2mpg10-regulator.h>
 
     pmic {
         compatible = "samsung,s2mpg10-pmic";
@@ -58,6 +87,8 @@ examples:
         system-power-controller;
         wakeup-source;
 
+        vinl3m-supply = <&buck8m>;
+
         clocks {
             compatible = "samsung,s2mpg10-clk";
             #clock-cells = <1>;
@@ -65,5 +96,25 @@ examples:
         };
 
         regulators {
+            buck8m {
+                regulator-name = "vdd_mif";
+                regulator-min-microvolt = <450000>;
+                regulator-max-microvolt = <1300000>;
+                regulator-ramp-delay = <6250>;
+            };
+
+            ldo1m {
+                regulator-name = "vdd_ldo1";
+                regulator-min-microvolt = <700000>;
+                regulator-max-microvolt = <1300000>;
+            };
+
+            ldo20m {
+                regulator-name = "vdd_dmics";
+                regulator-min-microvolt = <700000>;
+                regulator-max-microvolt = <1300000>;
+                regulator-always-on;
+                samsung,ext-control = <S2MPG10_EXTCTRL_LDO20M_EN2>;
+            };
         };
     };

-- 
2.52.0.351.gbe84eed79e-goog


