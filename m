Return-Path: <devicetree+bounces-65125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 538878BCB2D
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 11:52:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 76B1E1C2153E
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 09:52:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B48E1428F5;
	Mon,  6 May 2024 09:49:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUrH9Zag"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C8B144D1C;
	Mon,  6 May 2024 09:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714988990; cv=none; b=sa6Jrh5mCmxnaxZCrR+51UZUV2EmMbOshxUjHjAVxllYoyAyc5uckYRIpevCkF48cK8E2kq0r8TdnHHFH1uRcaIiJyKJzI+zYTaNBNrfEkh4ofLLMZ8wy8pTW9MbnSd/VcQm3jqrAt6SAr5VG3aLOhnEtGztYgjxkg/BJ1F9rYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714988990; c=relaxed/simple;
	bh=iwHUZTcFO0Bj+sswdGNfI4SFWlUW0XK/svWbnDHhZPM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HfzkCC5AGnsFJc7Ui/I8KnH625XOLnITDJRSrtJEmPrR64txAMIMqRjZItgCOtI4gYEGIxAfB6wD10YXHKaFWHD8e7E6q7GfkQsKa4mvleXdIWD0a07DFZuXIRtV4u32OSA6kX+B7Leb4nkh1AJzsgvrs3KR74Y2DCHftJdSOqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUrH9Zag; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6830C4DDE0;
	Mon,  6 May 2024 09:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714988989;
	bh=iwHUZTcFO0Bj+sswdGNfI4SFWlUW0XK/svWbnDHhZPM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=tUrH9ZagczPl9wPW9FeIFw9PYZValohdNW2kzuQOjkZWIR62rSqIZnqYmEgHl/E+U
	 W1YM1+1QOknuFGcvd1cvDajdxp18QI1V5S06TTFHFAu/GXb62sWOsjwEp9nRh9Ofnv
	 7ha7KIlle0ESzO18uqQZRXs2C6HUgTCvL02aoVhoC+/u67b1iTsnNapAf0yaj3iYbx
	 9h2vX3CBhhUrqobhN1/qLP8YbtLMf9r5sX+sdCEzxTcKxWLT9lgjImUa7YH6l2ZRKR
	 GezIMyhPlbnSWp0qYluK3JCtXY5sgrxdhk3C1HGuh7NI0dF922tXi7ZB/wQet2IBxM
	 b96388slOX2Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9839EC25B5C;
	Mon,  6 May 2024 09:49:49 +0000 (UTC)
From: Nikita Shubin via B4 Relay <devnull+nikita.shubin.maquefel.me@kernel.org>
Date: Mon, 06 May 2024 12:49:50 +0300
Subject: [PATCH RESEND v2 3/4] dt-bindings: soc: Add Cirrus EP93xx
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240408-ep93xx-clk-v2-3-adcd68c13753@maquefel.me>
References: <20240408-ep93xx-clk-v2-0-adcd68c13753@maquefel.me>
In-Reply-To: <20240408-ep93xx-clk-v2-0-adcd68c13753@maquefel.me>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, Nikita Shubin <nikita.shubin@maquefel.me>, 
 Arnd Bergmann <arnd@arndb.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1714988988; l=6134;
 i=nikita.shubin@maquefel.me; s=20230718; h=from:subject:message-id;
 bh=rxV5iIpC+Z8YB9Bx/6Nn01nHLk5VTCsvmwXWNV3UZtY=;
 b=dIcRsOfvMOZKdFbZgCwTni6+hfcKPW03vsYT44ZDeK8AJnVlm6/RCvTt9R1A+96pA3Qyp6tOi2Ao
 nVzt+ckgDk88LY+sTexhNQJ5/3uTAciKpU0hV4rqVHWCqJGsdzvB
X-Developer-Key: i=nikita.shubin@maquefel.me; a=ed25519;
 pk=vqf5YIUJ7BJv3EJFaNNxWZgGuMgDH6rwufTLflwU9ac=
X-Endpoint-Received: by B4 Relay for nikita.shubin@maquefel.me/20230718
 with auth_id=65
X-Original-From: Nikita Shubin <nikita.shubin@maquefel.me>
Reply-To: nikita.shubin@maquefel.me

From: Nikita Shubin <nikita.shubin@maquefel.me>

Add device tree bindings for the Cirrus Logic EP93xx SoC.

Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 .../bindings/arm/cirrus/cirrus,ep9301.yaml         | 38 +++++++++
 .../bindings/soc/cirrus/cirrus,ep9301-syscon.yaml  | 94 ++++++++++++++++++++++
 include/dt-bindings/clock/cirrus,ep9301-syscon.h   | 46 +++++++++++
 3 files changed, 178 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/cirrus/cirrus,ep9301.yaml b/Documentation/devicetree/bindings/arm/cirrus/cirrus,ep9301.yaml
new file mode 100644
index 000000000000..170aad5dd7ed
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/cirrus/cirrus,ep9301.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/cirrus/cirrus,ep9301.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cirrus Logic EP93xx platforms
+
+description:
+  The EP93xx SoC is a ARMv4T-based with 200 MHz ARM9 CPU.
+
+maintainers:
+  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
+  - Nikita Shubin <nikita.shubin@maquefel.me>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: The TS-7250 is a compact, full-featured Single Board
+          Computer (SBC) based upon the Cirrus EP9302 ARM9 CPU
+        items:
+          - const: technologic,ts7250
+          - const: cirrus,ep9301
+
+      - description: The Liebherr BK3 is a derivate from ts7250 board
+        items:
+          - const: liebherr,bk3
+          - const: cirrus,ep9301
+
+      - description: EDB302 is an evaluation board by Cirrus Logic,
+          based on a Cirrus Logic EP9302 CPU
+        items:
+          - const: cirrus,edb9302
+          - const: cirrus,ep9301
+
+additionalProperties: true
diff --git a/Documentation/devicetree/bindings/soc/cirrus/cirrus,ep9301-syscon.yaml b/Documentation/devicetree/bindings/soc/cirrus/cirrus,ep9301-syscon.yaml
new file mode 100644
index 000000000000..7cb1b4114985
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/cirrus/cirrus,ep9301-syscon.yaml
@@ -0,0 +1,94 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/cirrus/cirrus,ep9301-syscon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cirrus Logic EP93xx Platforms System Controller
+
+maintainers:
+  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
+  - Nikita Shubin <nikita.shubin@maquefel.me>
+
+description: |
+  Central resources are controlled by a set of software-locked registers,
+  which can be used to prevent accidental accesses. Syscon generates
+  the various bus and peripheral clocks and controls the system startup
+  configuration.
+
+  The System Controller (Syscon) provides:
+  - Clock control
+  - Power management
+  - System configuration management
+
+  Syscon registers are common for all EP93xx SoC's, through some actual peripheral
+  may be missing depending on actual SoC model.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - cirrus,ep9302-syscon
+              - cirrus,ep9307-syscon
+              - cirrus,ep9312-syscon
+              - cirrus,ep9315-syscon
+          - const: cirrus,ep9301-syscon
+          - const: syscon
+      - items:
+          - const: cirrus,ep9301-syscon
+          - const: syscon
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 1
+
+  clocks:
+    items:
+      - description: reference clock
+
+patternProperties:
+  '^pins-':
+    type: object
+    description: pin node
+    $ref: /schemas/pinctrl/pinmux-node.yaml
+
+    properties:
+      function:
+        enum: [ spi, ac97, i2s, pwm, keypad, pata, lcd, gpio ]
+
+      groups:
+        enum: [ ssp, ac97, i2s_on_ssp, i2s_on_ac97, pwm1, gpio1agrp,
+                gpio2agrp, gpio3agrp, gpio4agrp, gpio6agrp, gpio7agrp,
+                rasteronsdram0grp, rasteronsdram3grp, keypadgrp, idegrp ]
+
+    required:
+      - function
+      - groups
+
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon@80930000 {
+      compatible = "cirrus,ep9301-syscon", "syscon";
+      reg = <0x80930000 0x1000>;
+
+      #clock-cells = <1>;
+      clocks = <&xtali>;
+
+      spi_default_pins: pins-spi {
+        function = "spi";
+        groups = "ssp";
+      };
+    };
diff --git a/include/dt-bindings/clock/cirrus,ep9301-syscon.h b/include/dt-bindings/clock/cirrus,ep9301-syscon.h
new file mode 100644
index 000000000000..6bb8f532e7d0
--- /dev/null
+++ b/include/dt-bindings/clock/cirrus,ep9301-syscon.h
@@ -0,0 +1,46 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
+#ifndef DT_BINDINGS_CIRRUS_EP93XX_CLOCK_H
+#define DT_BINDINGS_CIRRUS_EP93XX_CLOCK_H
+
+#define EP93XX_CLK_PLL1		0
+#define EP93XX_CLK_PLL2		1
+
+#define EP93XX_CLK_FCLK		2
+#define EP93XX_CLK_HCLK		3
+#define EP93XX_CLK_PCLK		4
+
+#define EP93XX_CLK_UART		5
+#define EP93XX_CLK_SPI		6
+#define EP93XX_CLK_PWM		7
+#define EP93XX_CLK_USB		8
+
+#define EP93XX_CLK_M2M0		9
+#define EP93XX_CLK_M2M1		10
+
+#define EP93XX_CLK_M2P0		11
+#define EP93XX_CLK_M2P1		12
+#define EP93XX_CLK_M2P2		13
+#define EP93XX_CLK_M2P3		14
+#define EP93XX_CLK_M2P4		15
+#define EP93XX_CLK_M2P5		16
+#define EP93XX_CLK_M2P6		17
+#define EP93XX_CLK_M2P7		18
+#define EP93XX_CLK_M2P8		19
+#define EP93XX_CLK_M2P9		20
+
+#define EP93XX_CLK_UART1	21
+#define EP93XX_CLK_UART2	22
+#define EP93XX_CLK_UART3	23
+
+#define EP93XX_CLK_ADC		24
+#define EP93XX_CLK_ADC_EN	25
+
+#define EP93XX_CLK_KEYPAD	26
+
+#define EP93XX_CLK_VIDEO	27
+
+#define EP93XX_CLK_I2S_MCLK	28
+#define EP93XX_CLK_I2S_SCLK	29
+#define EP93XX_CLK_I2S_LRCLK	30
+
+#endif /* DT_BINDINGS_CIRRUS_EP93XX_CLOCK_H */

-- 
2.41.0



