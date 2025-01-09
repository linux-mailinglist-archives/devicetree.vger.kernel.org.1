Return-Path: <devicetree+bounces-137215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5ACDA08222
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 22:19:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7CDA33A8278
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 21:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF4CC204F85;
	Thu,  9 Jan 2025 21:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="f0gHUUWI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8114C204C35
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 21:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736457561; cv=none; b=bRDg+c/xfBI6AgGGgYXF2+IrY/kq1gPS6oHT1d2NS4w1yOSvK0Ep5//vjoNK4gPHO4foLij33ijwLXXVn+a/A5LNvKAZuceevTsrkij/Jes5FpplCQLSk+ewS2kJrkaoO8zbYDIbyQYBNeZjf7C6xiRgDNBP28HnseWHVMNRzhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736457561; c=relaxed/simple;
	bh=wyG+JaX0hjzVtj5U7wE3SJMUpPHpMeZ1QKtKnHeKrZ0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tNlQztNUhYodY2IS/MMu5o5+ZsCEAuzKZFHPHEsR/mIjj24gKe7C6qqn/UZ1ovqTk1FcrMBgHVueQF8MLJmm0SQ4oF7AGnnaUq7SUgvl2rO85eQEtTb6kxesop5eUgA1b3l/zozYagEiMOZc/qDQHrt9QuoCMJ4nQzYkDfSZ0j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=f0gHUUWI; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5d3e6274015so2108375a12.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 13:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1736457557; x=1737062357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kMDwINMgp57JdnWDRo35bVQVHIu764enuWXH+P8QtD8=;
        b=f0gHUUWIE1XMkPcPmr1c4Qgx2suKu0+kv4QUh7yqbwAepn0H10bHUZW7R7m0yQDJOo
         W2p/LzKE0Sdwcid4Y8a5boZNKhADmIWHU0AVdKnn1JrJlSr0HS7lRqEKCLkmlP/1+jxI
         hFjGNmMy8Ul778JWcOhCzZ56Fg83r9AGCzdB8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736457557; x=1737062357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kMDwINMgp57JdnWDRo35bVQVHIu764enuWXH+P8QtD8=;
        b=rq2mgeQSjvtHCVqoMx14ntobuSoonYVir8zG7uLCUMxTKrVRVy9n+gnBz+DOonP+BL
         EGMyyK+muM6s9k7/4M/0DjROHqb4aA5t9XZYlIJuEye+SXbbZJqNndQJzRnnF351p37o
         UyozhZkTRlB4uLC5g7jlaf5Cnn1xCtsh9Rps6aeX4egYO1qxbdB0hXDF65sHf/lWVnrV
         0QHJ8BFyU0LBXdsOzKq2U4GzmSPx/WvayEPo2v24nl56WTH0m0G3YVCExxsSzhjzTvrs
         CE8pqC5r/jt6QYXc6Fs0K82UUlIHi/1EFOJFEGrg5P5YKXno8bKvRmd0iSvsdrdirfv1
         NRnA==
X-Forwarded-Encrypted: i=1; AJvYcCUoKlxVlvZcXc7C0jT+I8jM8qYY8oh625XyiWi5GUUEWlT6tcF4nHou0498D9O46dvUn6LNwmEDBs4J@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1evfbjUaPpC3gIhxT94dk1Z7fozwo+D2QoUFQMYiV7v6CAmlr
	jW7xfUhfpNCY1jFXMuBdwq1V4RG0w9rMxKCFm7fhlf4/la9pP9LqNYfq/p95gdc=
X-Gm-Gg: ASbGncuWU0aR/ZQADreMHkTVcCPSLJqeJrSpa7C/llOyvXbe77d4/7U+e0HLcXC145Z
	F1QJwkImy+2TV5TC8Ojrdk3VvQrc5EBd4tTvC7rMJuPEURSCmaXmNqB8H5BPc/k2yzRWBbgdy/3
	PciItk3FbXRNQ9UIOVlM9BxRjoBgJDjgRZRNzMUukF+k4KBsiuAJk3LiBxmwp4pfgWBPeduJU0C
	i7jXn2iYByTC6eBVv4+i4BTNXfBBmIpUI/qpHwnUdVo/wdhLeNu3ge49hTDZKX/NU8MzrU3qK/R
	25xOIUFHfKutX4+CqA+1FLdJ/kb4xBeCFdrJVRG525j89Yn0/DlQdCpmIKW6idxKqJ9Yii/ki40
	cVnCNMwwbi+PSDRCuGQ==
X-Google-Smtp-Source: AGHT+IHUAVP6+PgKfM9g4JVq2jFqpWDWI9WunzPqIfkbBNq/oJX0XMZspcKrfWFqNV5TF87Psj1xjg==
X-Received: by 2002:a05:6402:3225:b0:5d9:b8a:9e08 with SMTP id 4fb4d7f45d1cf-5d972e1b768mr7727175a12.16.1736457556741;
        Thu, 09 Jan 2025 13:19:16 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-41-6-15.retail.telecomitalia.it. [79.41.6.15])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d9900c4b56sm925567a12.32.2025.01.09.13.19.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 13:19:15 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v2 1/4] dt-bindings: clock: convert stm32 rcc bindings to json-schema
Date: Thu,  9 Jan 2025 22:18:28 +0100
Message-ID: <20250109211908.1553072-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250109211908.1553072-1-dario.binacchi@amarulasolutions.com>
References: <20250109211908.1553072-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The patch converts st,stm32-rcc.txt to the JSON schema, but it does more
than that. The old bindings, in fact, only covered the stm32f{4,7}
platforms and not the stm32h7. Therefore, to avoid patch submission tests
failing, it was necessary to add the corresponding compatible (i. e.
st,stm32h743-rcc) and specify that, in this case, 3 are the clocks instead
of the 2 required for the stm32f{4,7} platforms.
Additionally, the old bindings made no mention of the st,syscfg property,
which is used by both the stm32f{4,7} and the stm32h7 platforms.

The patch also fixes the files referencing to the old st,stm32-rcc.txt.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

Changes in v2:
- Fixup patches:
  2/6 dt-bindings: reset: st,stm32-rcc: update reference due to rename
  3/6 dt-bindings: clock: stm32fx: update reference due to rename
- Update the commit message
- Reduce the description section of the yaml file
- List the items with description for the clocks property
- Use only one example
- Rename rcc to clock-controller@58024400 for the node of the example

 .../bindings/clock/st,stm32-rcc.txt           | 138 ------------------
 .../bindings/clock/st,stm32-rcc.yaml          | 111 ++++++++++++++
 .../bindings/reset/st,stm32-rcc.txt           |   2 +-
 include/dt-bindings/clock/stm32fx-clock.h     |   2 +-
 4 files changed, 113 insertions(+), 140 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/st,stm32-rcc.txt
 create mode 100644 Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml

diff --git a/Documentation/devicetree/bindings/clock/st,stm32-rcc.txt b/Documentation/devicetree/bindings/clock/st,stm32-rcc.txt
deleted file mode 100644
index cfa04b614d8a..000000000000
--- a/Documentation/devicetree/bindings/clock/st,stm32-rcc.txt
+++ /dev/null
@@ -1,138 +0,0 @@
-STMicroelectronics STM32 Reset and Clock Controller
-===================================================
-
-The RCC IP is both a reset and a clock controller.
-
-Please refer to clock-bindings.txt for common clock controller binding usage.
-Please also refer to reset.txt for common reset controller binding usage.
-
-Required properties:
-- compatible: Should be:
-  "st,stm32f42xx-rcc"
-  "st,stm32f469-rcc"
-  "st,stm32f746-rcc"
-  "st,stm32f769-rcc"
-
-- reg: should be register base and length as documented in the
-  datasheet
-- #reset-cells: 1, see below
-- #clock-cells: 2, device nodes should specify the clock in their "clocks"
-  property, containing a phandle to the clock device node, an index selecting
-  between gated clocks and other clocks and an index specifying the clock to
-  use.
-- clocks: External oscillator clock phandle
-  - high speed external clock signal (HSE)
-  - external I2S clock (I2S_CKIN)
-
-Example:
-
-	rcc: rcc@40023800 {
-		#reset-cells = <1>;
-		#clock-cells = <2>
-		compatible = "st,stm32f42xx-rcc", "st,stm32-rcc";
-		reg = <0x40023800 0x400>;
-		clocks = <&clk_hse>, <&clk_i2s_ckin>;
-	};
-
-Specifying gated clocks
-=======================
-
-The primary index must be set to 0.
-
-The secondary index is the bit number within the RCC register bank, starting
-from the first RCC clock enable register (RCC_AHB1ENR, address offset 0x30).
-
-It is calculated as: index = register_offset / 4 * 32 + bit_offset.
-Where bit_offset is the bit offset within the register (LSB is 0, MSB is 31).
-
-To simplify the usage and to share bit definition with the reset and clock
-drivers of the RCC IP, macros are available to generate the index in
-human-readble format.
-
-For STM32F4 series, the macro are available here:
- - include/dt-bindings/mfd/stm32f4-rcc.h
-
-Example:
-
-	/* Gated clock, AHB1 bit 0 (GPIOA) */
-	... {
-		clocks = <&rcc 0 STM32F4_AHB1_CLOCK(GPIOA)>
-	};
-
-	/* Gated clock, AHB2 bit 4 (CRYP) */
-	... {
-		clocks = <&rcc 0 STM32F4_AHB2_CLOCK(CRYP)>
-	};
-
-Specifying other clocks
-=======================
-
-The primary index must be set to 1.
-
-The secondary index is bound with the following magic numbers:
-
-	0	SYSTICK
-	1	FCLK
-	2	CLK_LSI		(low-power clock source)
-	3	CLK_LSE		(generated from a 32.768 kHz low-speed external
-				 crystal or ceramic resonator)
-	4	CLK_HSE_RTC	(HSE division factor for RTC clock)
-	5	CLK_RTC		(real-time clock)
-	6	PLL_VCO_I2S	(vco frequency of I2S pll)
-	7	PLL_VCO_SAI	(vco frequency of SAI pll)
-	8	CLK_LCD		(LCD-TFT)
-	9	CLK_I2S		(I2S clocks)
-	10	CLK_SAI1	(audio clocks)
-	11	CLK_SAI2
-	12	CLK_I2SQ_PDIV	(post divisor of pll i2s q divisor)
-	13	CLK_SAIQ_PDIV	(post divisor of pll sai q divisor)
-
-	14	CLK_HSI		(Internal ocscillator clock)
-	15	CLK_SYSCLK	(System Clock)
-	16	CLK_HDMI_CEC	(HDMI-CEC clock)
-	17	CLK_SPDIF	(SPDIF-Rx clock)
-	18	CLK_USART1	(U(s)arts clocks)
-	19	CLK_USART2
-	20	CLK_USART3
-	21	CLK_UART4
-	22	CLK_UART5
-	23	CLK_USART6
-	24	CLK_UART7
-	25	CLK_UART8
-	26	CLK_I2C1	(I2S clocks)
-	27	CLK_I2C2
-	28	CLK_I2C3
-	29	CLK_I2C4
-	30	CLK_LPTIMER	(LPTimer1 clock)
-	31	CLK_PLL_SRC
-	32	CLK_DFSDM1
-	33	CLK_ADFSDM1
-	34	CLK_F769_DSI
-)
-
-Example:
-
-	/* Misc clock, FCLK */
-	... {
-		clocks = <&rcc 1 STM32F4_APB1_CLOCK(TIM2)>
-	};
-
-
-Specifying softreset control of devices
-=======================================
-
-Device nodes should specify the reset channel required in their "resets"
-property, containing a phandle to the reset device node and an index specifying
-which channel to use.
-The index is the bit number within the RCC registers bank, starting from RCC
-base address.
-It is calculated as: index = register_offset / 4 * 32 + bit_offset.
-Where bit_offset is the bit offset within the register.
-For example, for CRC reset:
-  crc = AHB1RSTR_offset / 4 * 32 + CRCRST_bit_offset = 0x10 / 4 * 32 + 12 = 140
-
-example:
-
-	timer2 {
-		resets	= <&rcc STM32F4_APB1_RESET(TIM2)>;
-	};
diff --git a/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml b/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
new file mode 100644
index 000000000000..779e547700be
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
@@ -0,0 +1,111 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/st,stm32-rcc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 Reset Clock Controller
+
+maintainers:
+  - Dario Binacchi <dario.binacchi@amarulasolutions.com>
+
+description: |
+  The RCC IP is both a reset and a clock controller.
+  The reset phandle argument is the bit number within the RCC registers bank,
+  starting from RCC base address.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: st,stm32f42xx-rcc
+          - const: st,stm32-rcc
+      - items:
+          - enum:
+              - st,stm32f469-rcc
+          - const: st,stm32f42xx-rcc
+          - const: st,stm32-rcc
+      - items:
+          - const: st,stm32f746-rcc
+          - const: st,stm32-rcc
+      - items:
+          - enum:
+              - st,stm32f769-rcc
+          - const: st,stm32f746-rcc
+          - const: st,stm32-rcc
+      - items:
+          - const: st,stm32h743-rcc
+          - const: st,stm32-rcc
+
+  reg:
+    maxItems: 1
+
+  '#reset-cells':
+    const: 1
+
+  '#clock-cells':
+    enum: [1, 2]
+
+  clocks:
+    minItems: 2
+    maxItems: 3
+
+  st,syscfg:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to system configuration controller. It can be used to control the
+      power domain circuitry.
+
+required:
+  - compatible
+  - reg
+  - '#reset-cells'
+  - '#clock-cells'
+  - clocks
+  - st,syscfg
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: st,stm32h743-rcc
+    then:
+      properties:
+        '#clock-cells':
+          const: 1
+          description: |
+            The clock index for the specified type.
+        clocks:
+          items:
+            - description: high speed external (HSE) clock input
+            - description: low speed external (LSE) clock input
+            - description: Inter-IC sound (I2S) clock input
+    else:
+      properties:
+        '#clock-cells':
+          const: 2
+          description: |
+            - The first cell is the clock type, possible values are 0 for
+              gated clocks and 1 otherwise.
+            - The second cell is the clock index for the specified type.
+        clocks:
+          items:
+            - description: high speed external (HSE) clock input
+            - description: Inter-IC sound (I2S) clock input
+
+additionalProperties: false
+
+examples:
+  # Reset and Clock Control Module node:
+  - |
+    clock-controller@58024400 {
+        compatible = "st,stm32h743-rcc", "st,stm32-rcc";
+        reg = <0x58024400 0x400>;
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+        clocks = <&clk_hse>, <&clk_lse>, <&clk_i2s>;
+        st,syscfg = <&pwrcfg>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/reset/st,stm32-rcc.txt b/Documentation/devicetree/bindings/reset/st,stm32-rcc.txt
index 01db34375192..384035e8e60b 100644
--- a/Documentation/devicetree/bindings/reset/st,stm32-rcc.txt
+++ b/Documentation/devicetree/bindings/reset/st,stm32-rcc.txt
@@ -3,4 +3,4 @@ STMicroelectronics STM32 Peripheral Reset Controller
 
 The RCC IP is both a reset and a clock controller.
 
-Please see Documentation/devicetree/bindings/clock/st,stm32-rcc.txt
+Please see Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
diff --git a/include/dt-bindings/clock/stm32fx-clock.h b/include/dt-bindings/clock/stm32fx-clock.h
index e5dad050d518..b6ff9c68cb3f 100644
--- a/include/dt-bindings/clock/stm32fx-clock.h
+++ b/include/dt-bindings/clock/stm32fx-clock.h
@@ -10,7 +10,7 @@
  * List of clocks which are not derived from system clock (SYSCLOCK)
  *
  * The index of these clocks is the secondary index of DT bindings
- * (see Documentation/devicetree/bindings/clock/st,stm32-rcc.txt)
+ * (see Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml)
  *
  * e.g:
 	<assigned-clocks = <&rcc 1 CLK_LSE>;
-- 
2.43.0


