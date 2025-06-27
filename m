Return-Path: <devicetree+bounces-190204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BEBAEB075
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 09:48:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C0F4B1C239F3
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 07:48:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85DA222331C;
	Fri, 27 Jun 2025 07:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b33Jmojq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F94221FA8;
	Fri, 27 Jun 2025 07:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751010504; cv=none; b=Bwl/HnxPZ2h22AnsiOEAF05Wha8DpDhAnheFKcCFVDLelvnJjCM4UsO2kgjgR/dMr8BWf5d9tzyYvZexaaWHV2BP8zfRGRdXoRPfcUqoWHA8iUJoazRMl2NW7B9QtWR70k+hWQY+R3WwXXAiM7j672yYjoK9dDQ1jAGCgntp36U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751010504; c=relaxed/simple;
	bh=QUs1HIRYkzhcV/WLpWku/0Yvkva5rL9uluzOdumZ+jg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nyfTLDy/nb9/Ro7vxIGIQdrARrBd8wJp1u+7WmGmr4ivyiHgpNn0b3B3N33fGhp3qlyfhtoisw/96+6ACpDt7477S894orF8h2jitYdsutjxwDmuqQoruo1+4A+TwPbyH80Vdr9JSdzBU5kyD1l1LDSg71HN25DMtaZ69v77n8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b33Jmojq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05AE7C4CEE3;
	Fri, 27 Jun 2025 07:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751010503;
	bh=QUs1HIRYkzhcV/WLpWku/0Yvkva5rL9uluzOdumZ+jg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b33JmojqYqi7CCpCWfh2uylazIuPcPIMkmIb572fHiQqzWuedGp6Ivbr589A/bJ1J
	 B6GmaWKqSdg7Z9dq+lq6WolamQVSQ+BYOfcmnEdT/TUxtseE1yrQVuSx9bPLoyaeMm
	 3Tr5HOA55KLN2hvwKh+2c6EOIZoDK4sEBYmUaCF/dYYrKbltU2VzNhOrdK6UK1OLrX
	 p8MnUxeUAUOLzGpFMJre99ipYaZ/Tu+6M6fTt0hClm68EEv0Yle9CRE80Kk2v0yqVk
	 rn+b5jHevwCOyGu1Vr6DQ8d9FTwfY4Li2/6EyjPlZ3ubiQKQ9zCgVYNlNWi0/DaJll
	 /NN06lQ4AiFag==
Date: Fri, 27 Jun 2025 09:48:20 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Niranjan H Y <niranjan.hy@ti.com>
Cc: broonie@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andriy.shevchenko@linux.intel.com, tiwai@suse.de, alsa-devel@alsa-project.org, baojun.xu@ti.com, 
	shenghao-ding@ti.com, liam.r.girdwood@intel.com, lgirdwood@gmail.com, robh@kernel.org, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, navada@ti.com, v-hampiholi@ti.com
Subject: Re: [PATCH v3 2/4] dt-bindings: sound: bindings for tac5x1x family
 of codecs
Message-ID: <20250627-tiger-of-undeniable-popularity-ae7b4c@krzk-bin>
References: <20250626181334.1200-1-niranjan.hy@ti.com>
 <20250626181334.1200-3-niranjan.hy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250626181334.1200-3-niranjan.hy@ti.com>

On Thu, Jun 26, 2025 at 11:43:31PM +0530, Niranjan H Y wrote:
> tac5x1x family are series of low-power and high performance
> mono/stereo audio codecs consists of ADC and DAC combinations.
> The family consist of Codecs(DAC & ADC), ADC only and DAC only
> configurations. The documentation explains the list of devices
> in the family, their power supply configurations and gpio
> configuration options available for various functionality.
> 
> Signed-off-by: Niranjan H Y <niranjan.hy@ti.com>
> 
> ---
> v2:
> - Document newly added dts entries ti,adc1-impedance,
>   ti,adc2-impedance, ti,out2x-vcom-cfg
> v3:
> - add documentation for ti,pdm-input-pins
> - Update required section
> ---
>  .../devicetree/bindings/sound/ti,tac5x1x.yaml | 262 ++++++++++++++++++
>  1 file changed, 262 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/ti,tac5x1x.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/ti,tac5x1x.yaml b/Documentation/devicetree/bindings/sound/ti,tac5x1x.yaml
> new file mode 100644
> index 000000000000..5fea6513f97f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/ti,tac5x1x.yaml
> @@ -0,0 +1,262 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +# Copyright (C) 2025 Texas Instruments Incorporated
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/ti,tac5x1x.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments TAC5X1X Codec
> +
> +description: |
> +  TAC5X1X are series of low-power and high performance mono or stereo
> +  audio codecs, as well as multiple inputs and outputs programmable in
> +  single-ended or fully differential configurations. Device supports both
> +  Microphone and Line In input on ADC Channel. DAC Output can be configured
> +  for either Line Out or Head Phone Load.
> +
> +  The serial control bus supports SPI or I2C protocols, while the serial audio
> +  data bus is programmable for I2S, left/right-justified, DSP, or TDM modes.
> +
> +  Specification about the codecs can be found at:
> +    https://www.ti.com/lit/gpn/taa5212
> +    https://www.ti.com/lit/gpn/taa5412-q1
> +    https://www.ti.com/lit/gpn/tac5111
> +    https://www.ti.com/lit/gpn/tac5112
> +    https://www.ti.com/lit/gpn/tac5211
> +    https://www.ti.com/lit/gpn/tac5212
> +    https://www.ti.com/lit/gpn/tac5311-q1
> +    https://www.ti.com/lit/gpn/tac5312-q1
> +    https://www.ti.com/lit/gpn/tac5411-q1
> +    https://www.ti.com/lit/gpn/tac5412-q1
> +    https://www.ti.com/lit/gpn/tad5112
> +    https://www.ti.com/lit/gpn/tad5212
> +
> +maintainers:
> +  - Niranjan H Y <niranjan.hy@ti.com>
> +  - Kevin Lu <kevin-lu@ti.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,taa5212
> +      - ti,taa5412
> +      - ti,tac5111
> +      - ti,tac5112
> +      - ti,tac5211
> +      - ti,tac5212
> +      - ti,tac5311
> +      - ti,tac5312
> +      - ti,tac5411
> +      - ti,tac5412
> +      - ti,tad5112
> +      - ti,tad5212
> +
> +  reg:
> +    maxItems: 1
> +
> +  ti,vref:
> +    description: VREF required voltage. If node is omitted then VREF is powered down.
> +    $ref: /schemas/types.yaml#/definitions/uint32

Voltage is in microvolt. Use proper suffix/values.

> +    oneOf:
> +      - const: 0
> +        description: VREF output is powered to 2.75V.
> +      - const: 1
> +        description: VREF output is powered to 2.5V.
> +      - const: 2
> +        description: VREF output is powered to 1.375V.
> +
> +  ti,micbias-vg:
> +    description: MicBias required voltage. If node is omitted then MicBias is powered down.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    oneOf:
> +      - const: 0
> +        description: MICBIAS output is same as the VREF output
> +      - const: 1
> +        description: MICBIAS output is 0.5 times the VREF output
> +      - const: 3
> +        description: MICBIAS output is same as the AVDD
> +
> +  avdd-supply:
> +    description: Analog DAC voltage.
> +
> +  iovdd-supply:
> +    description: I/O voltage.
> +
> +  ti,gpios-func:
> +    description: |
> +      Array indicating the GPIO1, GPIO2, GPO1 Functionality in the same order.
> +      Each integer elemnent in the array represent the following
> +      - 0  TAC5X1X_GPIO_DISABLE        - GPIO is Disabled
> +      - 1  TAC5X1X_GPIO_GPI            - General Purpose Input
> +      - 2  ADC3XXX_GPIO_GPO            - General Purpose Output
> +      - 3  TAC5X1X_GPIO_IRQ            - Chip Interrupt
> +      - 4  TAC5X1X_GPIO_PDMCLK         - PDM CLK Output
> +      - 5  TAC5X1X_GPIO_P_DOUT         - Primary ASI DOUT
> +      - 6  TAC5X1X_GPIO_P_DOUT2        - Primary ASI DOUT2
> +      - 7  TAC5X1X_GPIO_S_DOUT         - Secondary ASI DOUT
> +      - 8  TAC5X1X_GPIO_S_DOUT2        - Secondary ASI DOUT2
> +      - 9  TAC5X1X_GPIO_S_BCLK         - Secondary BCLK Output
> +      - 10 TAC5X1X_GPIO_S_FSYNC       - Secondary FSYNC Output
> +      - 11 TAC5X1X_GPIO_CLKOUT        - General Purpose Output
> +      - 12 TAC5X1X_GPIO_DOUT_MUX
> +      - 13 TAC5X1X_GPIO_DAISY_OUT
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 3
> +    maxItems: 3

Don't encode gpios and pins as some custom properties.

> +
> +  ti,gpios-drive:
> +    description: |
> +      Array indicating the GPIO1, GPIO2, GPO1 Driver values
> +      Each number in the array indicate the following driver values.
> +      - 0 # Hi-Z Output
> +      - 1 # Drive active low and active High
> +      - 2 # Drive active low and weak High
> +      - 3 # Drive acive low and Hi-Z
> +      - 4 # Drive weak low and active High
> +      - 5 # Drive Hi-Z and active High
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 3
> +    maxItems: 3

Use standard pinctrl bindings.

> +
> +  ti,pdm-input-pins:
> +    description: |
> +      Array indicating the PDM Data Input for "Ch1 & Ch2" and "Ch3 & Ch4"
> +      respectively. Each number in the array indicate the following
> +      - 0 # PDM input disabled
> +      - 1 # PDM input GPIO1
> +      - 2 # PDM input GPIO2
> +      - 3 # PDM input GPI1
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 2
> +    maxItems: 2
> +

This is v3, but changelog is scarce, no cover letter, no other lore
references. All this is questionable. Plus the style mixing vendor with
standard properties.


> +  ti,gpi1-func:
> +    description: GPI1 Functionality
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum:
> +      - 0 # TAC5X1X_GPIO_DISABLE       - I/O buffers powered down and not used
> +      - 1 # TAC5X1X_GPIO_GPI          - General purpose input
> +    default: 0
> +
> +  '#sound-dai-cells':

Missing ref to dai common. Look at other bindings.

> +    const: 0
> +
> +  clocks:
> +    maxItems: 1
> +
> +  ti,gpa-gpio:

Why this appeared here? Looks like totally random sorting.

First goes compatible, then reg, then standard properties, then vendor
properties. I have few more comments but this binding looks terrible. I
suggest you doing extensive initernal review, before you send next
version.


> +    description: GPA using GPIO1 configuration
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum:
> +      - 0 # GPA using GPIO1 is disabled
> +      - 1 # GPA using GPIO1
> +    default: 0
> +
> +  ti,in-ch-en:
> +    description: Enable Input channel diagnostics for TAC54XX and TAC53XX device.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum:
> +      - 0 # Disable input channel diagnostics
> +      - 1 # Enable input channel diagnostics
> +
> +  ti,out-ch-en:
> +    description: Enable Output channel diagnostics for TAC54XX and TAC53XX device
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum:
> +      - 0 # Disable Output channel diagnostics
> +      - 1 # Enable Output channel Diagnostics
> +
> +  ti,incl-se-inm:
> +    description: INxM pin Diagnostics Scan Selection for Single Ended Configuration
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum:
> +      - 0 # INxM pin Diagnostics Scan Selection for Single Ended excluded for diagnosis
> +      - 1 # INxM pin Diagnostics Scan Selection for Single Ended included for diagnosis
> +
> +  ti,incl-ac-coup:
> +    description: AC coupled channels pins Scan Selection for Diagnostics
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum:
> +      - 0 # AC coupled channels pins Scan Selection for Diagnostics exluded for diagnosis
> +      - 1 # AC coupled channels pins Scan Selection for Diagnostics included for diagnosis
> +
> +  ti,micbias-threshold:
> +    description: Micbias Low and High threshold values for TAC54XX and TAC53XX series
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    maxItems: 2
> +    minItems: 2
> +    items:
> +      minimum: 72
> +      maximum: 162
> +
> +  ti,gpa-threshold:
> +    description: GPA Low and High threshold Values
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    maxItems: 2
> +    minItems: 2
> +    items:
> +      minimum: 75
> +      maximum: 186
> +
> +  ti,adc1-impedance:
> +    description: Channel 1 Input Impedance Value

Use proper units.

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum:
> +      - 0 # 5 kOhm
> +      - 1 # 10 kOhm
> +      - 2 # 40 kOhm
> +    default: 0
> +
> +  ti,adc2-impedance:
> +    description: Channel 2 Input Impedance Value
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum:
> +      - 0 # 5 kOhm
> +      - 1 # 10 kOhm
> +      - 2 # 40 kOhm
> +    default: 0
> +
> +  ti,out2x-vcom-cfg:
> +    description: Channel OUT2x VCOM configuration
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum:
> +      - 0 # 0.6 * Vref
> +      - 1 # AVDD by 2
> +    default: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - ti,vref
> +  - ti,micbias-vg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      tac5x1x: tac5x1x@52 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

Best regards,
Krzysztof


