Return-Path: <devicetree+bounces-190021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F6EAEA4FB
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 20:14:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 546044A79A4
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 18:14:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 175BD201278;
	Thu, 26 Jun 2025 18:14:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="kHcfnvKl"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3352ED178;
	Thu, 26 Jun 2025 18:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750961668; cv=none; b=XWVTsn6d3Q8QQaoNsisnckeVTFr9T0l0oxZNXnm/RocAG42/icgLhScbCIgwTRqqn6nWBoZ+I6aQHv0Hdt5Dg1IP+MLw3JopstjOUHnYCfFw3z8A+8vkFLUohpKRTJklafpPJdYVpzAwFpAPKMtn7wpIYE0/iYkDqM8zym6WIos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750961668; c=relaxed/simple;
	bh=U03q7Yj8egL6tJeTR0udHSWYrsr2Jt0seLuV24DEUQs=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fyuJr3H7GXSx73+NWi7rIyX0Wto3/iKSHtIobq/FsA55k4mQBaHE3QGAFSVf7znHwtsez0qZiMUsA2b2SjvwKA5rH/81HDfVJ5ER1pZPrm/DzuJaz0JGxG+FDMRK2c17+CWl9QSUPSEzTViRpFE0wcOxyLF/P6I0uEGYdgPuQd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=kHcfnvKl; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelvem-sh01.itg.ti.com ([10.180.77.71])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTP id 55QIEAjd2530081;
	Thu, 26 Jun 2025 13:14:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1750961650;
	bh=jKqY3ppt8rLnaoA3piomrGkQOx8KSOhtuhZ+9fWVIcs=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=kHcfnvKlZ3No4tsEQQ2dE94C4ffA+g7174O74MpcndJqygL0zIMh181DGKV+xcoJ1
	 ws179oI4Gh0VuRcXyTW93bnLNcyJ/ie34aNCKsvYQ/lYYHTaDjrDVwXrYdKWqoD8xk
	 nJUdXopoVSTA60VciA7NhNKlJDExXRFQ9yEn/ruo=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by lelvem-sh01.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 55QIEAGs3842122
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Thu, 26 Jun 2025 13:14:10 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Thu, 26
 Jun 2025 13:14:10 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Thu, 26 Jun 2025 13:14:10 -0500
Received: from LTPW0EX92E.dhcp.ti.com ([10.249.133.122])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 55QIDr681713573;
	Thu, 26 Jun 2025 13:14:05 -0500
From: Niranjan H Y <niranjan.hy@ti.com>
To: <broonie@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <andriy.shevchenko@linux.intel.com>, <tiwai@suse.de>,
        <alsa-devel@alsa-project.org>, <baojun.xu@ti.com>,
        <shenghao-ding@ti.com>, <liam.r.girdwood@intel.com>,
        <lgirdwood@gmail.com>, <robh@kernel.org>,
        <linux-sound@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <navada@ti.com>, <v-hampiholi@ti.com>, <niranjan.hy@ti.com>
Subject: [PATCH v3 2/4] dt-bindings: sound: bindings for tac5x1x family of codecs
Date: Thu, 26 Jun 2025 23:43:31 +0530
Message-ID: <20250626181334.1200-3-niranjan.hy@ti.com>
X-Mailer: git-send-email 2.33.0.windows.2
In-Reply-To: <20250626181334.1200-1-niranjan.hy@ti.com>
References: <20250626181334.1200-1-niranjan.hy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

tac5x1x family are series of low-power and high performance
mono/stereo audio codecs consists of ADC and DAC combinations.
The family consist of Codecs(DAC & ADC), ADC only and DAC only
configurations. The documentation explains the list of devices
in the family, their power supply configurations and gpio
configuration options available for various functionality.

Signed-off-by: Niranjan H Y <niranjan.hy@ti.com>

---
v2:
- Document newly added dts entries ti,adc1-impedance,
  ti,adc2-impedance, ti,out2x-vcom-cfg
v3:
- add documentation for ti,pdm-input-pins
- Update required section
---
 .../devicetree/bindings/sound/ti,tac5x1x.yaml | 262 ++++++++++++++++++
 1 file changed, 262 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/ti,tac5x1x.yaml

diff --git a/Documentation/devicetree/bindings/sound/ti,tac5x1x.yaml b/Documentation/devicetree/bindings/sound/ti,tac5x1x.yaml
new file mode 100644
index 000000000000..5fea6513f97f
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/ti,tac5x1x.yaml
@@ -0,0 +1,262 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+# Copyright (C) 2025 Texas Instruments Incorporated
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/ti,tac5x1x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments TAC5X1X Codec
+
+description: |
+  TAC5X1X are series of low-power and high performance mono or stereo
+  audio codecs, as well as multiple inputs and outputs programmable in
+  single-ended or fully differential configurations. Device supports both
+  Microphone and Line In input on ADC Channel. DAC Output can be configured
+  for either Line Out or Head Phone Load.
+
+  The serial control bus supports SPI or I2C protocols, while the serial audio
+  data bus is programmable for I2S, left/right-justified, DSP, or TDM modes.
+
+  Specification about the codecs can be found at:
+    https://www.ti.com/lit/gpn/taa5212
+    https://www.ti.com/lit/gpn/taa5412-q1
+    https://www.ti.com/lit/gpn/tac5111
+    https://www.ti.com/lit/gpn/tac5112
+    https://www.ti.com/lit/gpn/tac5211
+    https://www.ti.com/lit/gpn/tac5212
+    https://www.ti.com/lit/gpn/tac5311-q1
+    https://www.ti.com/lit/gpn/tac5312-q1
+    https://www.ti.com/lit/gpn/tac5411-q1
+    https://www.ti.com/lit/gpn/tac5412-q1
+    https://www.ti.com/lit/gpn/tad5112
+    https://www.ti.com/lit/gpn/tad5212
+
+maintainers:
+  - Niranjan H Y <niranjan.hy@ti.com>
+  - Kevin Lu <kevin-lu@ti.com>
+
+properties:
+  compatible:
+    enum:
+      - ti,taa5212
+      - ti,taa5412
+      - ti,tac5111
+      - ti,tac5112
+      - ti,tac5211
+      - ti,tac5212
+      - ti,tac5311
+      - ti,tac5312
+      - ti,tac5411
+      - ti,tac5412
+      - ti,tad5112
+      - ti,tad5212
+
+  reg:
+    maxItems: 1
+
+  ti,vref:
+    description: VREF required voltage. If node is omitted then VREF is powered down.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    oneOf:
+      - const: 0
+        description: VREF output is powered to 2.75V.
+      - const: 1
+        description: VREF output is powered to 2.5V.
+      - const: 2
+        description: VREF output is powered to 1.375V.
+
+  ti,micbias-vg:
+    description: MicBias required voltage. If node is omitted then MicBias is powered down.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    oneOf:
+      - const: 0
+        description: MICBIAS output is same as the VREF output
+      - const: 1
+        description: MICBIAS output is 0.5 times the VREF output
+      - const: 3
+        description: MICBIAS output is same as the AVDD
+
+  avdd-supply:
+    description: Analog DAC voltage.
+
+  iovdd-supply:
+    description: I/O voltage.
+
+  ti,gpios-func:
+    description: |
+      Array indicating the GPIO1, GPIO2, GPO1 Functionality in the same order.
+      Each integer elemnent in the array represent the following
+      - 0  TAC5X1X_GPIO_DISABLE        - GPIO is Disabled
+      - 1  TAC5X1X_GPIO_GPI            - General Purpose Input
+      - 2  ADC3XXX_GPIO_GPO            - General Purpose Output
+      - 3  TAC5X1X_GPIO_IRQ            - Chip Interrupt
+      - 4  TAC5X1X_GPIO_PDMCLK         - PDM CLK Output
+      - 5  TAC5X1X_GPIO_P_DOUT         - Primary ASI DOUT
+      - 6  TAC5X1X_GPIO_P_DOUT2        - Primary ASI DOUT2
+      - 7  TAC5X1X_GPIO_S_DOUT         - Secondary ASI DOUT
+      - 8  TAC5X1X_GPIO_S_DOUT2        - Secondary ASI DOUT2
+      - 9  TAC5X1X_GPIO_S_BCLK         - Secondary BCLK Output
+      - 10 TAC5X1X_GPIO_S_FSYNC       - Secondary FSYNC Output
+      - 11 TAC5X1X_GPIO_CLKOUT        - General Purpose Output
+      - 12 TAC5X1X_GPIO_DOUT_MUX
+      - 13 TAC5X1X_GPIO_DAISY_OUT
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 3
+    maxItems: 3
+
+  ti,gpios-drive:
+    description: |
+      Array indicating the GPIO1, GPIO2, GPO1 Driver values
+      Each number in the array indicate the following driver values.
+      - 0 # Hi-Z Output
+      - 1 # Drive active low and active High
+      - 2 # Drive active low and weak High
+      - 3 # Drive acive low and Hi-Z
+      - 4 # Drive weak low and active High
+      - 5 # Drive Hi-Z and active High
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 3
+    maxItems: 3
+
+  ti,pdm-input-pins:
+    description: |
+      Array indicating the PDM Data Input for "Ch1 & Ch2" and "Ch3 & Ch4"
+      respectively. Each number in the array indicate the following
+      - 0 # PDM input disabled
+      - 1 # PDM input GPIO1
+      - 2 # PDM input GPIO2
+      - 3 # PDM input GPI1
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 2
+    maxItems: 2
+
+  ti,gpi1-func:
+    description: GPI1 Functionality
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # TAC5X1X_GPIO_DISABLE       - I/O buffers powered down and not used
+      - 1 # TAC5X1X_GPIO_GPI          - General purpose input
+    default: 0
+
+  '#sound-dai-cells':
+    const: 0
+
+  clocks:
+    maxItems: 1
+
+  ti,gpa-gpio:
+    description: GPA using GPIO1 configuration
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # GPA using GPIO1 is disabled
+      - 1 # GPA using GPIO1
+    default: 0
+
+  ti,in-ch-en:
+    description: Enable Input channel diagnostics for TAC54XX and TAC53XX device.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # Disable input channel diagnostics
+      - 1 # Enable input channel diagnostics
+
+  ti,out-ch-en:
+    description: Enable Output channel diagnostics for TAC54XX and TAC53XX device
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # Disable Output channel diagnostics
+      - 1 # Enable Output channel Diagnostics
+
+  ti,incl-se-inm:
+    description: INxM pin Diagnostics Scan Selection for Single Ended Configuration
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # INxM pin Diagnostics Scan Selection for Single Ended excluded for diagnosis
+      - 1 # INxM pin Diagnostics Scan Selection for Single Ended included for diagnosis
+
+  ti,incl-ac-coup:
+    description: AC coupled channels pins Scan Selection for Diagnostics
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # AC coupled channels pins Scan Selection for Diagnostics exluded for diagnosis
+      - 1 # AC coupled channels pins Scan Selection for Diagnostics included for diagnosis
+
+  ti,micbias-threshold:
+    description: Micbias Low and High threshold values for TAC54XX and TAC53XX series
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    maxItems: 2
+    minItems: 2
+    items:
+      minimum: 72
+      maximum: 162
+
+  ti,gpa-threshold:
+    description: GPA Low and High threshold Values
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    maxItems: 2
+    minItems: 2
+    items:
+      minimum: 75
+      maximum: 186
+
+  ti,adc1-impedance:
+    description: Channel 1 Input Impedance Value
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # 5 kOhm
+      - 1 # 10 kOhm
+      - 2 # 40 kOhm
+    default: 0
+
+  ti,adc2-impedance:
+    description: Channel 2 Input Impedance Value
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # 5 kOhm
+      - 1 # 10 kOhm
+      - 2 # 40 kOhm
+    default: 0
+
+  ti,out2x-vcom-cfg:
+    description: Channel OUT2x VCOM configuration
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # 0.6 * Vref
+      - 1 # AVDD by 2
+    default: 0
+
+required:
+  - compatible
+  - reg
+  - ti,vref
+  - ti,micbias-vg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      tac5x1x: tac5x1x@52 {
+        compatible = "ti,tac5212";
+        reg = <0x52>;
+        #sound-dai-cells = <0>;
+        avdd-supply = <&vdd_3v3_reg>;
+        iovdd-supply = <&vdd_3v3_reg>;
+        ti,vref = <0>;
+        ti,micbias-vg = <3>;
+        ti,gpi1-func = <0>;
+        ti,gpios-func = <4>, <1>, <0>;
+        ti,gpios-drive = <0>, <0>, <0>;
+        ti,gpa-gpio = <0>;
+        ti,in-ch-en = <1>;
+        ti,out-ch-en = <1>;
+        ti,incl-ac-coup = <0>;
+        ti,incl-se-inm = <0>;
+        ti,gpa-threshold = <75>, <186>;
+      };
+    };
+...
-- 
2.45.2


