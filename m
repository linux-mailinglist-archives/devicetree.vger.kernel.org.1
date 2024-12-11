Return-Path: <devicetree+bounces-129645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3D89EC69A
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 09:10:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34B3028155F
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 135F71D2B0E;
	Wed, 11 Dec 2024 08:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="frutIhu1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6FC1CC8AE
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 08:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733904602; cv=none; b=p7BwHdc4TlhlN+mE3qQMJk9fugO5W5ChcPs+qUQH4Lld4CSEdsOverUbQ73w/arSlQQmZSNryl+Zpmg9e2Lo4GrcqfEest7EovTTcJ5zCZlc3JAOw0rEyDUhlsv9PJsc6L2KOYEIbxwyLPxzetHDI3cw9eLayYuODJabfgZ1q2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733904602; c=relaxed/simple;
	bh=RH//MulYZ0V6ypWAVLtGpoGdelLi5q8AYpWYWQE3/vQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=AaNnlMA+Y5HK5L8+5AkHBcqYdI7FfkyE9oJ4K+gp0c6NjiL4EsSOE3DIPCl0/amf4OfgSdDrxlkM3v5ryPjoSpEunD0B5+ZWUSk6Dj37Is8O4GyWhHVFFLn1flflIzZTff/Tn0FH574kX4oHppFZO3IFuJ4aFl7TkVi0Szx5qQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=frutIhu1; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-434e69857d9so2134225e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 00:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733904598; x=1734509398; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=z296GYrd1d21ehSrliJM4dHOXHD72h2we/P7rpidchI=;
        b=frutIhu1UGWAmA3KpVoEkmJ3pJ6BQbVdkzXP4TpR0qsB3aiXSD7gr3JGxZKoa8+5LJ
         6E+AxFU8v0+xeSjJBIzbu6FXixJwM5AhAWXVI84oquVzFJjMlF7D8ksc6PW37XeEtBDn
         UifvQCTEKz8HVw73SLg+Sa8vQMdfLvBbzwKf1Ep+b4/RhQG+9/QMFbGK4ju/dibqjTwn
         4IHme/KFsfDbWv60F366KfhbnyTZeNb8AVT9qWflekMSjg54Y3jM+6ejVMpfnRCsHpqy
         mbNImMuQZ1ZS/VHL0FgQDI/kop0sQKBknoFaaw6xWvZliZAWAhsIVFm2YSw/ZLE1n0+K
         UjLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733904598; x=1734509398;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z296GYrd1d21ehSrliJM4dHOXHD72h2we/P7rpidchI=;
        b=hxJ0lqTfBuvstQPkQTiJbX+wgDKV9oG2jf/IYD9WMHkt2o+qU1+MT2tuy6mccyYhDL
         COZzkuc6QkVtVDv+5vNvYEAwsZVOHGoX+xhp772DxmUs7/W+S7cx8HYhhLB8p4hCR0J8
         eHRaNC+y6WN9kL8Z7y8Kut4qT5gOTM4M2A+1j+l5IjcVew5Ty0iqR+nmEB+0tATzOL4h
         NJhXQ/cb1T+c30qlswhOXYMrwMq/yvGWGgQAFpXtT6xSR3bcCs1Z+UrIBawj3YTAK5sP
         kIbDIscTvukDKE/OluBeKJR5ssOn+1OHtrhnnyrT5/Rz7sQ89/2q/+wwG1NWHxbO8w8D
         MvBA==
X-Forwarded-Encrypted: i=1; AJvYcCXwycVkALREHNLJFIA0pChSpU3ROwSyTmYja8iXhsIXkurJcvOmStImB2VG6xdhmtDQih6IZ2dUpcVT@vger.kernel.org
X-Gm-Message-State: AOJu0YxXvXj2s/j9ew0hqNtxwbT1T2PpI5/A52VzrzWLW4M+okP1AX5g
	Hej+PpJgjdR5MyqEtXN238l53GMnerj8aHjAI52KWC4qspKy2Ce87HefbauUx76rDz34io7g8FC
	LT2s=
X-Gm-Gg: ASbGnct9S4XNUSqsaV9eH55OGPHZ9U/+QjYCluASRCZeVbXfwh+IbXcWfF3bpd+G9KA
	GswajzkuH1VDpNw2Ys+j9o92VJ2zW/1TS9R2eZjGhebNib72wHXN69SDA45/wcbjc8Z2vZ2VE1w
	ua4cOl57uQBu0V8JXtWF5esRYiv1p6S/YagJ5hST/u8VJudVyqUKsNQoTALFkup1lYLLtLdphkt
	gDurWNJvKM2Nm6q4cqvTXmEYmuAdBdNKkwfdeN4S3GAS9/QujpdF0fuXkHboxF1HJNtLi/uWNA=
X-Google-Smtp-Source: AGHT+IGIzi/vhDOiSag3pTcDOZBNeb+ENTT562jYKShfshG2UGZ3Bv0RQwmR4BXMfok61tXXWn9rtA==
X-Received: by 2002:a05:600c:5904:b0:436:1b77:b5aa with SMTP id 5b1f17b1804b1-4361c5b184dmr10641825e9.8.1733904598221;
        Wed, 11 Dec 2024 00:09:58 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434fe3cc773sm70266965e9.29.2024.12.11.00.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 00:09:57 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 11 Dec 2024 09:09:55 +0100
Subject: [PATCH v2] ASoC: dt-bindings: convert rt5682.txt to dt-schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241211-topic-misc-rt5682-convert-v2-1-9e1dd4ff7093@linaro.org>
X-B4-Tracking: v=1; b=H4sIANJIWWcC/42NQQ6CMBBFr0Jm7Zi2gBJX3sOwKGWASbQl06bRE
 O5u5QQu30v++xtEEqYIt2oDocyRgy9gThW4xfqZkMfCYJRptFENprCywxdHh5LaS2fQBZ9JEta
 Dqo0iba9KQdmvQhO/j/ajL7xwTEE+x1XWP/tPNWvUqCYaXWMH3VJ3f7K3Es5BZuj3ff8C2prJ1
 MMAAAA=
X-Change-ID: 20241204-topic-misc-rt5682-convert-3b0320e1a700
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bard Liao <bardliao@realtek.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=8473;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=RH//MulYZ0V6ypWAVLtGpoGdelLi5q8AYpWYWQE3/vQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnWUjU9R3Qrj6JNQS7ZEC3YayzqcrTRHCSHSI8Qed8
 9csIimGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1lI1AAKCRB33NvayMhJ0YpfD/
 0XKsqWl+b7XmG+Oao795rwNYjBmj73QxEQUKruaGL5yxNovTgs8HFkywPvZl5ppSe34VKTSs2xZ3vF
 9A4Z9Y2oyl1do4vB7IysOvB8e6Mo0HRtFr8o6Af1A5GRrGisOouY9PwiC3oZCbXJIXPvv40dTk2D+E
 hejgIdTMwkZk6gTzk9hmGXUgSLKl75hC33BhVzeOOmlqHHZzy5Ss5sx23ug9LwczgkVVYAtx/a2hAp
 HIOiatX4+QjkqHPNzpLDXfFBWxjCLAN+1olbLZTWBDbWwCGJTsb4S/bJChxCDLORdiVWn4sqREbDVp
 0GdpmQVmxLNJZ9wzgDAOsr0ZxWacVo0UMLoX+yziwgoaeYQ4EsLg0taqAD0/Vbt0RmFFo03f2Ite2W
 1528gk1BdTH1Nbs9SrVZ5ARGRVVX2IwwqUOsYPhlYOpFIb4z+km+a+U6S2R7PsDmuh5/xEPyptDD0h
 NG+gAEiRm0Dhc7UK6ujKUmu+Wi1mvhLzypPhya5vfGvA02K1hnRtmPlI18MgSz7PzHh4RHuAaRqTvq
 7IZ80+otjN5oxvgQcseDVSIr35AtQafwdqdQkkjbgMHfFgv0g+CAt0t2zxhXcUdsGLzAirVBMI0N0t
 V8zmveNDauBDWQQQtUAGmIvGt6pOXrP9FeUmA8yF0I3jF4IntXbPerwDJPGg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Convert the text bindings for the Realtek rt5682 and
rt5682i codecs to dt-schema.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Dropped invalid realtek,amic-delay-ms
- Wrapped descriptions
- Moved unevaluatedProperties after required
- Link to v1: https://lore.kernel.org/r/20241204-topic-misc-rt5682-convert-v1-1-0fedc4ab15e8@linaro.org
---
 .../devicetree/bindings/sound/realtek,rt5682.yaml  | 156 +++++++++++++++++++++
 Documentation/devicetree/bindings/sound/rt5682.txt |  98 -------------
 2 files changed, 156 insertions(+), 98 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/realtek,rt5682.yaml b/Documentation/devicetree/bindings/sound/realtek,rt5682.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..39333ea05646fe743711500c1e8bd4888e4c5de0
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/realtek,rt5682.yaml
@@ -0,0 +1,156 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/realtek,rt5682.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek rt5682 and rt5682i codecs
+
+maintainers:
+  - Bard Liao <bardliao@realtek.com>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - realtek,rt5682
+      - realtek,rt5682i
+
+  reg:
+    maxItems: 1
+    description: I2C address of the device.
+
+  interrupts:
+    maxItems: 1
+    description: The CODEC's interrupt output.
+
+  realtek,dmic1-data-pin:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # dmic1 data is not used
+      - 1 # using GPIO2 pin as dmic1 data pin
+      - 2 # using GPIO5 pin as dmic1 data pin
+    description:
+      Specify which GPIO pin be used as DMIC1 data pin.
+
+  realtek,dmic1-clk-pin:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # using GPIO1 pin as dmic1 clock pin
+      - 1 # using GPIO3 pin as dmic1 clock pin
+    description:
+      Specify which GPIO pin be used as DMIC1 clk pin.
+
+  realtek,jd-src:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # No JD is used
+      - 1 # using JD1 as JD source
+    description:
+      Specify which JD source be used.
+
+  realtek,ldo1-en-gpios:
+    description:
+      The GPIO that controls the CODEC's LDO1_EN pin.
+
+  realtek,btndet-delay:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The debounce delay for push button.
+      The delay time is realtek,btndet-delay value multiple of 8.192 ms.
+      If absent, the default is 16.
+
+  realtek,dmic-clk-rate-hz:
+    description:
+      Set the clock rate (hz) for the requirement of the particular DMIC.
+
+  realtek,dmic-delay-ms:
+    description:
+      Set the delay time (ms) for the requirement of the particular DMIC.
+
+  realtek,dmic-clk-driving-high:
+    type: boolean
+    description:
+      Set the high driving of the DMIC clock out.
+
+  clocks:
+    items:
+      - description: phandle and clock specifier for codec MCLK.
+
+  clock-names:
+    items:
+      - const: mclk
+
+  "#clock-cells":
+    const: 1
+
+  clock-output-names:
+    minItems: 2
+    maxItems: 2
+    description: Name given for DAI word clock and bit clock outputs.
+
+  "#sound-dai-cells":
+    const: 1
+
+  AVDD-supply:
+    description: Regulator supplying analog power through the AVDD pin.
+
+  MICVDD-supply:
+    description: Regulator supplying power for the microphone bias through
+      the MICVDD pin.
+
+  VBAT-supply:
+    description: Regulator supplying battery power through the VBAT pin.
+
+  DBVDD-supply:
+    description: Regulator supplying I/O power through the DBVDD pin.
+
+  LDO1-IN-supply:
+    description: Regulator supplying power to the digital core and charge
+      pump through the LDO1_IN pin.
+
+required:
+  - compatible
+  - reg
+  - AVDD-supply
+  - VBAT-supply
+  - MICVDD-supply
+  - DBVDD-supply
+  - LDO1-IN-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        codec@1a {
+            compatible = "realtek,rt5682";
+            reg = <0x1a>;
+            interrupts = <6 IRQ_TYPE_LEVEL_HIGH>;
+            realtek,ldo1-en-gpios =
+                <&gpio 2 GPIO_ACTIVE_HIGH>;
+            realtek,dmic1-data-pin = <1>;
+            realtek,dmic1-clk-pin = <1>;
+            realtek,jd-src = <1>;
+
+            #clock-cells = <1>;
+            clock-output-names = "rt5682-dai-wclk", "rt5682-dai-bclk";
+
+            clocks = <&osc>;
+            clock-names = "mclk";
+
+            AVDD-supply = <&avdd_reg>;
+            VBAT-supply = <&vbat_reg>;
+            MICVDD-supply = <&micvdd_reg>;
+            DBVDD-supply = <&dbvdd_reg>;
+            LDO1-IN-supply = <&ldo1_in_reg>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/sound/rt5682.txt b/Documentation/devicetree/bindings/sound/rt5682.txt
deleted file mode 100644
index 5e1d08de18a52021619bee9329d1f1cd693ca7cb..0000000000000000000000000000000000000000
--- a/Documentation/devicetree/bindings/sound/rt5682.txt
+++ /dev/null
@@ -1,98 +0,0 @@
-RT5682 audio CODEC
-
-This device supports I2C only.
-
-Required properties:
-
-- compatible : "realtek,rt5682" or "realtek,rt5682i"
-
-- reg : The I2C address of the device.
-
-- AVDD-supply: phandle to the regulator supplying analog power through the
-  AVDD pin
-
-- MICVDD-supply: phandle to the regulator supplying power for the microphone
-  bias through the MICVDD pin. Either MICVDD or VBAT should be present.
-
-- VBAT-supply: phandle to the regulator supplying battery power through the
-  VBAT pin. Either MICVDD or VBAT should be present.
-
-- DBVDD-supply: phandle to the regulator supplying I/O power through the DBVDD
-  pin.
-
-- LDO1-IN-supply: phandle to the regulator supplying power to the digital core
-  and charge pump through the LDO1_IN pin.
-
-Optional properties:
-
-- interrupts : The CODEC's interrupt output.
-
-- realtek,dmic1-data-pin
-  0: dmic1 is not used
-  1: using GPIO2 pin as dmic1 data pin
-  2: using GPIO5 pin as dmic1 data pin
-
-- realtek,dmic1-clk-pin
-  0: using GPIO1 pin as dmic1 clock pin
-  1: using GPIO3 pin as dmic1 clock pin
-
-- realtek,jd-src
-  0: No JD is used
-  1: using JD1 as JD source
-
-- realtek,ldo1-en-gpios : The GPIO that controls the CODEC's LDO1_EN pin.
-
-- realtek,btndet-delay
-  The debounce delay for push button.
-  The delay time is realtek,btndet-delay value multiple of 8.192 ms.
-  If absent, the default is 16.
-
-- #clock-cells : Should be set to '<1>',  wclk and bclk sources provided.
-- clock-output-names : Name given for DAI clocks output.
-
-- clocks : phandle and clock specifier for codec MCLK.
-- clock-names : Clock name string for 'clocks' attribute, should be "mclk".
-
-- realtek,dmic-clk-rate-hz : Set the clock rate (hz) for the requirement of
-  the particular DMIC.
-
-- realtek,dmic-delay-ms : Set the delay time (ms) for the requirement of
-  the particular DMIC.
-
-- realtek,dmic-clk-driving-high : Set the high driving of the DMIC clock out.
-
-- #sound-dai-cells: Should be set to '<1>'.
-
-Pins on the device (for linking into audio routes) for RT5682:
-
-  * DMIC L1
-  * DMIC R1
-  * IN1P
-  * HPOL
-  * HPOR
-
-Example:
-
-rt5682 {
-	compatible = "realtek,rt5682i";
-	reg = <0x1a>;
-	interrupt-parent = <&gpio>;
-	interrupts = <TEGRA_GPIO(U, 6) IRQ_TYPE_LEVEL_HIGH>;
-	realtek,ldo1-en-gpios =
-		<&gpio TEGRA_GPIO(R, 2) GPIO_ACTIVE_HIGH>;
-	realtek,dmic1-data-pin = <1>;
-	realtek,dmic1-clk-pin = <1>;
-	realtek,jd-src = <1>;
-	realtek,btndet-delay = <16>;
-
-	#clock-cells = <1>;
-	clock-output-names = "rt5682-dai-wclk", "rt5682-dai-bclk";
-
-	clocks = <&osc>;
-	clock-names = "mclk";
-
-	AVDD-supply = <&avdd_reg>;
-	MICVDD-supply = <&micvdd_reg>;
-	DBVDD-supply = <&dbvdd_reg>;
-	LDO1-IN-supply = <&ldo1_in_reg>;
-};

---
base-commit: 695ead81c12bf5430239b43e9d862d6d790e12ce
change-id: 20241204-topic-misc-rt5682-convert-3b0320e1a700

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


