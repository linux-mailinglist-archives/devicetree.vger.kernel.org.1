Return-Path: <devicetree+bounces-135690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E08A0A01B4D
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 19:15:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8600A3A23BC
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 18:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5382C1CCB4A;
	Sun,  5 Jan 2025 18:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="OzhnIgcH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441421C3027
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 18:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736100937; cv=none; b=tqTzVarbPEo80+Ac12wmtyzaivqL8E1OIDJUcw1lF5+xnqCFO15viOLpTfSHgiqwvGY12K/u9Msu4Dve5gWQzJ+/ztFxUKr9MoV808xns4yndcRqQ327CnaKMMy/pYBsqOjTkDwq11w/Hm/YkWGGEuS1WdrdSDO078kjXwTVn5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736100937; c=relaxed/simple;
	bh=OYiP2QG9kMV4RnRey17uDcC89PLcQMoOdIcHH/BgX+w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E3W777PcV/JItCAaOrBbUbMQlR9OntuwpeGRnr9rXRYN/yL3KXCqXf8Ce1pO4iwwzxg5lS7CIuQDWLfM0a1iSCWh+y1IN5Ze4YEuMjiZJyzV3Qr1HcRCt/62fnM6FzhgPMichv8IOVhY/i0SB9ATHOiKv0Qq4QxXrbSNpPxV4LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=OzhnIgcH; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aa692211331so2630832366b.1
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 10:15:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1736100933; x=1736705733; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+zwadKSgcT3YHRBr470NAxtLB4LzWS9m4NLNCF1dK9k=;
        b=OzhnIgcHG8/ssOMXniadvfMu9Bci2P04AUIQBzaCqhs5Qqlr6yPOXOQUqPjBvRnt4M
         HQjkXtTKVzfiiMDo/oravNNMhTlBsZvu2VH3wrNolkrzS6HY/Qx3Axx01JXbFwRJ8mhK
         t0GpPyChuY3m6sLpH+yJUMBjV+sJjqZuoNzDU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736100933; x=1736705733;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+zwadKSgcT3YHRBr470NAxtLB4LzWS9m4NLNCF1dK9k=;
        b=iZdRLHTG6AsYuH+O2VryjDIZrDmTL46kcETHGcj9/wiWALZpP9WxycAniWMiwiatoy
         jaFSiwzTWhlaDfcyXnKCPi0uVTaQzNLdbRSYneADnEqp0NmtJBrK4SWlN2BBEBZf1AKH
         J5XR4gdL2J5Xfqw4yCL1mCsDV3Brg0jMqrAyWO+hdwNvtXB89+OcVkOrLexyd3Rec2zs
         uz9mYGFTxft9WYwojG+bPRe+vS7jqA9dob/D425jo+BwLE/GunUMLZSGwEJY4z7JnCk7
         WjEpCkfiWOctOF8JPfPZ/1QlOm7Oonj3jrhGBaT+qEU8nLnkwRBawxbTnClb30TYdxDO
         pqsA==
X-Forwarded-Encrypted: i=1; AJvYcCUPJ6jy5EKIWXjt6CqXQNTSEVqvxavk7UmF/44/Wzq9/LkF9D+mr6K6xV6YMUJtRmyiexxcDAk6Qvgg@vger.kernel.org
X-Gm-Message-State: AOJu0YyGJCwVDpJiB731h79w9u7/a7jy67sMq3We5Sjuinhw7BAipneN
	byygfI9L9yEPL5ekXxAffa5+9W8rA7Gh2aIrhQSTVLHbvUlVoI/Lp1K2+JLLPQM=
X-Gm-Gg: ASbGncs54+YIKXrAch6ictxdtsL3lMzirI0ozjRLA8sMvJOepBVlUwnndPwB9riIXbj
	aK0ri2i0Lbi89bA1egxdj1TFBNFSkWn5XMFl5Ff9ZZxLAfoAAzho0pg6bdh10FbSvxFXfQG4eYv
	VDCzF1CAEJP1ifZpS8HL2wAcCXzZ2tJNs8vhCZfOdOHApUNQpOQzMnvZ17iLx7AhInsKBNfFG1+
	NSrnGWdJbGF9MuBe6ke3DhtW7T5UjO/sshbDZ9G2dEynCIfM436YPiEYvgzxnlWZm1Py8FHOo5+
	fCvGtjLRtHjDC5v/XHyIDCZ1ECFq1nFBAl3k61f/9B45JBQuz8b0B5vQ8Qa3YaRn4hq//U8iSH4
	d1h++nHxdviN94eqGZQ==
X-Google-Smtp-Source: AGHT+IHEmlq6VZxXOC/j+3n171+PZx7zCTSoolypdqxYYVg9wTM278dYwsdwGbdufQTiEC+59arKyw==
X-Received: by 2002:a17:907:86aa:b0:aae:f029:c2ec with SMTP id a640c23a62f3a-aaef029c69fmr3596149966b.12.1736100933172;
        Sun, 05 Jan 2025 10:15:33 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-41-6-15.retail.telecomitalia.it. [79.41.6.15])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e82f178sm2138185066b.38.2025.01.05.10.15.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 10:15:32 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 1/6] dt-bindings: clock: convert stm32 rcc bindings to json-schema
Date: Sun,  5 Jan 2025 19:14:13 +0100
Message-ID: <20250105181525.1370822-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250105181525.1370822-1-dario.binacchi@amarulasolutions.com>
References: <20250105181525.1370822-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The patch not only performs the conversion according to the JSON-schema
but also adds the missing parts:

- st,syscfg phandle
- st,stm32h743-rcc compatible

that were not documented but are still used by the drivers and must
therefore be included to ensure the patch submission tests do not fail.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 .../bindings/clock/st,stm32-rcc.txt           | 138 -----------------
 .../bindings/clock/st,stm32-rcc.yaml          | 143 ++++++++++++++++++
 2 files changed, 143 insertions(+), 138 deletions(-)
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
index 000000000000..ae9e5b26d876
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/st,stm32-rcc.yaml
@@ -0,0 +1,143 @@
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
+
+  This binding uses common clock and reset bindings
+  Documentation/devicetree/bindings/clock/clock-bindings.txt
+  Documentation/devicetree/bindings/reset/reset.txt
+
+  Specifying softreset control of devices
+  =======================================
+
+  Device nodes should specify the reset channel required in their "resets"
+  property, containing a phandle to the reset device node and an index specifying
+  which channel to use.
+  The index is the bit number within the RCC registers bank, starting from RCC
+  base address.
+  It is calculated as: index = register_offset / 4 * 32 + bit_offset.
+  Where bit_offset is the bit offset within the register.
+
+  For example, for CRC reset:
+  crc = AHB1RSTR_offset / 4 * 32 + CRCRST_bit_offset = 0x10 / 4 * 32 + 12 = 140
+
+  The list of valid indices is available in:
+  - include/dt-bindings/mfd/stm32f4-rcc.h for STM32F4 series
+  - include/dt-bindings/mfd/stm32f7-rcc.h for STM32F7 series
+  - include/dt-bindings/mfd/stm32h7-rcc.h for STM32H7 series
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
+    else:
+      properties:
+        '#clock-cells':
+          const: 2
+          description: |
+            - The first cell is the clock type, possible values are 0 for
+              gated clocks and 1 otherwise.
+            - The second cell is the clock index for the specified type.
+
+additionalProperties: false
+
+examples:
+  # Reset and Clock Control Module node:
+  - |
+    rcc@40023800 {
+        #reset-cells = <1>;
+        #clock-cells = <2>;
+        compatible = "st,stm32f42xx-rcc", "st,stm32-rcc";
+        reg = <0x40023800 0x400>;
+        clocks = <&clk_hse>, <&clk_i2s_ckin>;
+        st,syscfg = <&pwrcfg>;
+    };
+
+  - |
+    rcc@40023800 {
+        #reset-cells = <1>;
+        #clock-cells = <2>;
+        compatible = "st,stm32f746-rcc", "st,stm32-rcc";
+        reg = <0x40023800 0x400>;
+        clocks = <&clk_hse>, <&clk_i2s_ckin>;
+        st,syscfg = <&pwrcfg>;
+    };
+
+  - |
+    rcc@58024400 {
+        compatible = "st,stm32h743-rcc", "st,stm32-rcc";
+        reg = <0x58024400 0x400>;
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+        clocks = <&clk_hse>, <&clk_lse>, <&clk_i2s>;
+        st,syscfg = <&pwrcfg>;
+    };
+
+...
-- 
2.43.0


