Return-Path: <devicetree+bounces-132400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 544969F6E7A
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 20:48:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F9BA18950A5
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 19:48:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74AA11FAC57;
	Wed, 18 Dec 2024 19:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnQ30i8b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4589219CC20;
	Wed, 18 Dec 2024 19:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734551287; cv=none; b=kS4Iu9XzHCic59VYYH4cdSBYZSNQw7JRw3Y5ZEnaORdLNuOSqEQVYO1P/4EhZXUqxrKMOoVhJurZQQI+1PCZhmwFyW2ep/oujQdaejSd3SLmuiYH55KSSoJtbtTGq8tJF3cUNLaw2SJ2LybBhkAB33NPNijfmyw3B1/TADeaRds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734551287; c=relaxed/simple;
	bh=2i5RTvMGyyLfn+vGxWFc5RYZHckTTBSavAYO7uo/L4o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PWb43WNLer3weyNtYATQ6z22UAIDB9MGmLfSuvItO8HJVVyCOVnum3DLJJ77t+W/n9qHbaxtjfhp0+U3jw2KVo4dFWFp9uA8fj2FhkPcyin6YrB+eodJeHlPGWDj8Qb49FCLFjRDjahXsTZLO29clUiGy1CHlz6C7SUng5hHfsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnQ30i8b; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 277DEC4CECD;
	Wed, 18 Dec 2024 19:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734551286;
	bh=2i5RTvMGyyLfn+vGxWFc5RYZHckTTBSavAYO7uo/L4o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mnQ30i8bMKS1+xhSibLzAsTEeSfVigtEu9fDn5nkiR+3wsnSvc3vZXR6wC3H+bdPL
	 c9lokBhcMWPJGVl3BcZU9pxxJ18BRh1dVTbO0MFvuQYrNsVOT0vHSZ8ti5wc7xAS2U
	 wwQmJApG17a9d2uxwnVXeP+lRUuhWOOdjD0ICENmazLm2BNBZJbYe6y+UIDF5OOu12
	 BwiRmq413iT+tK8NrmfUyC1FTzPjw/sm1ZyC7/onX3YsTXLPxRtdIvBgMbi3UveVZj
	 HO3JubwSPCjD6/YrbUuIxEZoETl39rsI99F85P09V1ZwNr/bS1Uzzgz9zz8YaGumFm
	 i/kpF86IJgIug==
Date: Wed, 18 Dec 2024 13:48:04 -0600
From: Rob Herring <robh@kernel.org>
To: Marcelo Schmitt <marcelo.schmitt@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org, lars@metafoo.de,
	Michael.Hennerich@analog.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, ana-maria.cusco@analog.com,
	marcelo.schmitt1@gmail.com
Subject: Re: [RFC PATCH 2/4] dt-bindings: iio: adc: Add AD4170
Message-ID: <20241218194804.GA2203791-robh@kernel.org>
References: <cover.1734530280.git.marcelo.schmitt@analog.com>
 <caadb73da62e80877eab8b0287d996b52266d912.1734530280.git.marcelo.schmitt@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <caadb73da62e80877eab8b0287d996b52266d912.1734530280.git.marcelo.schmitt@analog.com>

On Wed, Dec 18, 2024 at 11:37:42AM -0300, Marcelo Schmitt wrote:
> Add device tree documentation for AD4170 sigma-delta ADCs.
> 

The usual question with long lists of properties. Any of these should be 
run-time controlled (by userspace) instead? If they might vary by the 
user for given h/w design, then should be user controlled instead.

> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
>  .../bindings/iio/adc/adi,ad4170.yaml          | 473 ++++++++++++++++++
>  1 file changed, 473 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad4170.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4170.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad4170.yaml
> new file mode 100644
> index 000000000000..8c5defc614ee
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4170.yaml
> @@ -0,0 +1,473 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/adi,ad4170.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AD4170 Analog to Digital Converter
> +
> +maintainers:
> +  - Marcelo Schmitt <marcelo.schmitt@analog.com>
> +
> +description: |
> +  Analog Devices AD4170 Analog to Digital Converter.
> +  Specifications can be found at:
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/ad4170-4.pdf
> +
> +$ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,ad4170
> +
> +  avss-supply:
> +    description:
> +      Referece voltage supply for AVDD. AVSS can be set below 0V to provide a
> +      bipolar power supply to AD4170-4. Must be −2.625V at minimum, 0V maximum.
> +      If not specified, this is assumed to be analog ground.
> +
> +  avdd-supply:
> +    description:
> +      A supply of 4.75V to 5.25V relative to AVSS that powers the chip (AVDD).
> +
> +  iovdd-supply:
> +    description: 1.7V to 5.25V reference supply to the serial interface (IOVDD).
> +
> +  refin1p-supply:
> +    description: REFIN+ supply that can be used as reference for conversion.
> +
> +  refin1n-supply:
> +    description: REFIN- supply that can be used as reference for conversion.
> +
> +  refin2p-supply:
> +    description: REFIN2+ supply that can be used as reference for conversion.
> +
> +  refin2n-supply:
> +    description: REFIN2- supply that can be used as reference for conversion.
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description: |

Don't need '|' if no formatting to preserve.

> +      Optional external clock source. Can include one clock source: external
> +      clock or external crystal.
> +
> +  clock-names:
> +    enum:
> +      - ext-clk
> +      - xtal
> +
> +  '#clock-cells':
> +    const: 0
> +
> +  adi,gpio0-power-down-switch:
> +    type: boolean
> +    description:
> +      Describes whether GPIO0 is used as a switch to disconnect bridge circuits
> +      from AVSS. Pin defaults to GPIO if this property is not present.
> +
> +  adi,gpio1-power-down-switch:
> +    type: boolean
> +    description:
> +      Describes whether GPIO1 is used as a switch to disconnect bridge circuits
> +      from AVSS. Pin defaults to GPIO if this property is not present.
> +
> +  adi,vbias-pins:
> +    description: Analog inputs to apply a voltage bias of (AVDD − AVSS) / 2 to.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 1
> +    maxItems: 9
> +    items:
> +      minimum: 0
> +      maximum: 8
> +
> +  adi,dig-aux1:
> +    description:
> +      Describes whether DIG_AUX1 pin will operate as data ready output,
> +      synchronization output signal (SYNC_OUT), or if it will be disabled.
> +      A value of 0 indicates DIG_AUX1 pin disabled. High impedance.
> +      A value of 1 indicates DIG_AUX1 is configured as ADC data ready output.
> +      A value of 1 indicates DIG_AUX1 is configured as SYNC_OUT output.
> +      If this property is absent, DIG_AUX1 pin is disabled.
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    enum: [0, 1, 2]
> +    default: 0
> +
> +  adi,dig-aux2:
> +    description:
> +      Describes whether DIG_AUX2 pin will function as DAC LDAC input,
> +      synchronization start input (START), or if it will be disabled.
> +      A value of 0 indicates DIG_AUX2 pin is disabled. High impedance.
> +      A value of 1 indicates DIG_AUX2 pin is configured as active-low LDAC input
> +      for the DAC.
> +      A value of 2 indicates DIG_AUX2 pin is configured as START input.
> +      If this property is absent, DIG_AUX2 pin is disabled.
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    enum: [0, 1, 2]
> +    default: 0
> +
> +  adi,sync-option:
> +    description:
> +      Describes how ADC conversions are going to be synchronized. A value of 1
> +      indicates the SYNC_IN pin will function as a synchronization input that
> +      allows the user to control the start of sampling by pulling SYNC_IN high.
> +      Use option number 2 to set the alternate synchronization functionality
> +      which allows per channel conversion start control when multiple channels
> +      are enabled. Option number 0 disables synchronization.
> +      A value of 0 indicates no synchronization. SYNC_IN pin disabled.
> +      A value of 1 indicates standard synchronization functionality.
> +      A value of 2 indicates alternate synchronization functionality.
> +      If this property is absent, no synchronization is performed.
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    enum: [0, 1, 2]
> +    default: 1
> +
> +  adi,excitation-pin-0:
> +    description: |
> +      Specifies the pin to apply excitation current 0 (IOUT0). Besides the
> +      analog pins 0 to 8, the excitation current can be applied to GPIO pins.
> +      17: Output excitation current IOUT0 to GPIO0.
> +      18: Output excitation current IOUT0 to GPIO1.
> +      19: Output excitation current IOUT0 to GPIO2.
> +      20: Output excitation current IOUT0 to GPIO3.
> +      If this property is absent, IOUT0 is not routed to any pin.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2, 3, 4, 5, 6, 7, 8, 17, 18, 19, 20]
> +    default: 0
> +
> +  adi,excitation-pin-1:
> +    description: |
> +      Specifies the pin to apply excitation current 1 (IOUT1). Besides the
> +      analog pins 0 to 8, the excitation current can be applied to GPIO pins.
> +      17: Output excitation current IOUT1 to GPIO0.
> +      18: Output excitation current IOUT1 to GPIO1.
> +      19: Output excitation current IOUT1 to GPIO2.
> +      20: Output excitation current IOUT1 to GPIO3.
> +      If this property is absent, IOUT1 is not routed to any pin.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2, 3, 4, 5, 6, 7, 8, 17, 18, 19, 20]
> +    default: 0
> +
> +  adi,excitation-pin-2:
> +    description: |
> +      Specifies the pin to apply excitation current 2 (IOUT2). Besides the
> +      analog pins 0 to 8, the excitation current can be applied to GPIO pins.
> +      17: Output excitation current IOUT2 to GPIO0.
> +      18: Output excitation current IOUT2 to GPIO1.
> +      19: Output excitation current IOUT2 to GPIO2.
> +      20: Output excitation current IOUT2 to GPIO3.
> +      If this property is absent, IOUT2 is not routed to any pin.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2, 3, 4, 5, 6, 7, 8, 17, 18, 19, 20]
> +    default: 0
> +
> +  adi,excitation-pin-3:
> +    description: |
> +      Specifies the pin to apply excitation current 3 (IOUT3). Besides the
> +      analog pins 0 to 8, the excitation current can be applied to GPIO pins.
> +      17: Output excitation current IOUT3 to GPIO0.
> +      18: Output excitation current IOUT3 to GPIO1.
> +      19: Output excitation current IOUT3 to GPIO2.
> +      20: Output excitation current IOUT3 to GPIO3.
> +      If this property is absent, IOUT3 is not routed to any pin.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2, 3, 4, 5, 6, 7, 8, 17, 18, 19, 20]
> +    default: 0
> +
> +  adi,excitation-current-0-microamp:
> +    description: |
> +      Excitation current in microamps to be applied to IOUT0 output pin
> +      specified in adi,excitation-pin-0.
> +    enum: [0, 10, 50, 100, 250, 500, 1000, 1500]
> +    default: 0
> +
> +  adi,excitation-current-1-microamp:
> +    description: |
> +      Excitation current in microamps to be applied to IOUT1 output pin
> +      specified in adi,excitation-pin-1.
> +    enum: [0, 10, 50, 100, 250, 500, 1000, 1500]
> +    default: 0
> +
> +  adi,excitation-current-2-microamp:
> +    description: |
> +      Excitation current in microamps to be applied to IOUT2 output pin
> +      specified in adi,excitation-pin-2.
> +    enum: [0, 10, 50, 100, 250, 500, 1000, 1500]
> +    default: 0
> +
> +  adi,excitation-current-3-microamp:
> +    description: |
> +      Excitation current in microamps to be applied to IOUT3 output pin
> +      specified in adi,excitation-pin-3.
> +    enum: [0, 10, 50, 100, 250, 500, 1000, 1500]
> +    default: 0
> +
> +  adi,chop-iexc:
> +    description: |
> +      Specifies the chopping/swapping functionality for excitation currents.
> +      0: No Chopping of Excitation Currents.
> +      1: Chop/swap IOUT0 and IOUT1 (pair AB) excitation currents.
> +      2: Chop/swap IOUT2 and IOUT3 (pair CD) excitation currents.
> +      3: Chop/swap both pairs (pair AB and pair CD) of excitation currents.
> +      If this property is absent, no chopping is performed.
> +      There are macros for the above values in dt-bindings/iio/adi,ad4170.h.
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    enum: [0, 1, 2, 3]
> +    default: 0
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +patternProperties:
> +  "^channel@([0-9]|1[0-5])$":

Unit-addresses are typically hex, not decimal.

> +    $ref: adc.yaml
> +    type: object
> +    unevaluatedProperties: false
> +    description: |
> +      Represents the external channels which are connected to the ADC.
> +
> +    properties:
> +      reg:
> +        description: |
> +          The channel number. The device can have up to 16 channels numbered
> +          from 0 to 15.

Don't need to say in prose what the schema says. IOW, drop the 2nd 
sentence.

> +        items:
> +          minimum: 0
> +          maximum: 15
> +
> +      diff-channels:
> +        description: |
> +          This property is used for defining the inputs of a differential
> +          voltage channel. The first value is the positive input and the second
> +          value is the negative input of the channel.
> +
> +          Besides the analog input pins AIN0 to AIN8, there are special inputs
> +          that can be selected with the following values:
> +            17: Temperature sensor input
> +            18: (AVDD-AVSS)/5
> +            19: (IOVDD-DGND)/5
> +            20: DAC output
> +            21: ALDO
> +            22: DLDO
> +            23: AVSS
> +            24: DGND
> +            25: REFIN+
> +            26: REFIN-
> +            27: REFIN2+
> +            28: REFIN2-
> +            29: REFOUT
> +
> +          There are macros for those values in dt-bindings/iio/adi,ad4170.h.
> +
> +        items:
> +          minimum: 0
> +          maximum: 31
> +
> +      single-channel: true
> +
> +      common-mode-channel: true
> +
> +      bipolar: true
> +
> +      adi,config-setup-number:
> +        description: |
> +          Specifies which of the 8 setups are used to configure the channel.
> +          A setup comprises of: AFE, FILTER, FILTER_FS, MISC, OFFSET, and GAIN
> +          registers. More than one channel can use the same configuration setup
> +          number in which case they will share the settings of the above
> +          mentioned registers.
> +        items:
> +          minimum: 0
> +          maximum: 7
> +
> +      adi,chop-adc:
> +        description: |
> +          Specifies the chopping/swapping functionality for a channel setup.
> +          Macros for adi,chop-adc values are available in
> +          dt-bindings/iio/adi,ad4170.h. When enabled, the analog inputs are
> +          continuously swapped and a conversion is generated for each time a
> +          swap occurs. The analog input pins are connected in one direction,
> +          sampled, swapped, sampled again, and then the conversion results are
> +          averaged. The input swap minimizes system offset and offset drift.
> +          This property also specifies whether AC excitation using 2 or 4 GPIOs
> +          are going to be used.
> +          0: No channel chop.
> +          1: Chop/swap the channel inputs.
> +          2: AC Excitation using 4 GPIOs.
> +          3: AC Excitation using 2 GPIOs.
> +          If this property is absent, no chopping is performed.
> +        $ref: /schemas/types.yaml#/definitions/uint16
> +        enum: [0, 1, 2, 3]
> +        default: 0
> +
> +      adi,burnout-current-nanoamp:
> +        description: |
> +          Current in nanoamps to be applied for this channel. Burnout currents
> +          are only active when the channel is selected for conversion.
> +        enum: [0, 100, 2000, 10000]
> +        default: 0
> +
> +      adi,buffered-negative:
> +        description: Enable precharge buffer, full buffer, or skip reference
> +          buffering of the negative voltage reference. Because the output
> +          impedance of the source driving the voltage reference inputs may be
> +          dynamic, RC combinations of those inputs can cause DC gain errors if
> +          the reference inputs go unbuffered into the ADC. Enable reference
> +          buffering if the provided reference source has dynamic high impedance
> +          output.
> +        enum: [0, 1, 2]
> +        default: 0
> +
> +      adi,buffered-positive:
> +        description: Enable precharge buffer, full buffer, or skip reference
> +          buffering of the positive voltage reference. Because the output
> +          impedance of the source driving the voltage reference inputs may be
> +          dynamic, RC combinations of those inputs can cause DC gain errors if
> +          the reference inputs go unbuffered into the ADC. Enable reference
> +          buffering if the provided reference source has dynamic high impedance
> +          output.
> +        enum: [0, 1, 2]
> +        default: 0
> +
> +      adi,reference-select:
> +        description: |
> +          Select the reference source to use when converting on the specific
> +          channel. Valid values are:
> +          0: Differential reference voltage REFIN+ - REFIN−.
> +          1: Differential reference voltage REFIN2+ - REFIN2−.
> +          2: Internal 2.5V referece (REFOUT) relative to AVSS.
> +          3: Analog supply voltage (AVDD) relative relative AVSS.
> +          If this field is left empty, the internal reference is selected.
> +        $ref: /schemas/types.yaml#/definitions/uint8
> +        enum: [0, 1, 2, 3]
> +        default: 2
> +
> +    required:
> +      - reg
> +      - adi,config-setup-number
> +
> +    allOf:
> +      - oneOf:
> +          - required: [single-channel]
> +            properties:
> +              diff-channels: false
> +          - required: [diff-channels]
> +            properties:
> +              single-channel: false
> +              common-mode-channel: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - avdd-supply
> +  - iovdd-supply
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/iio/adc/adi,ad4170.h>
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        adc@0 {
> +            compatible = "adi,ad4170";
> +            reg = <0>;
> +            avdd-supply = <&avdd>;
> +            iovdd-supply = <&iovdd>;
> +            spi-max-frequency = <20000000>;
> +            interrupt-parent = <&gpio_in>;
> +            interrupts = <0 IRQ_TYPE_EDGE_FALLING>;
> +            adi,dig-aux1 = /bits/ 8 <1>;
> +            adi,dig-aux2 = /bits/ 8 <0>;
> +            adi,sync-option = /bits/ 8 <0>;
> +            adi,excitation-pin-0 = <19>;
> +            adi,excitation-current-0-microamp = <10>;
> +            adi,excitation-pin-1 = <20>;
> +            adi,excitation-current-1-microamp = <10>;
> +            adi,chop-iexc = /bits/ 8 <1>;
> +            adi,vbias-pins = <5 6>;
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            // Sample AIN0 with respect to AIN1 throughout AVDD/AVSS input range
> +            // Fully differential. If AVSS < 0V, Fully differential true bipolar
> +            channel@0 {
> +                reg = <0>;
> +                bipolar;
> +                diff-channels = <AD4170_MAP_AIN0 AD4170_MAP_AIN1>;
> +                adi,config-setup-number = <0>;
> +                adi,reference-select = /bits/ 8 <3>;
> +                adi,burnout-current-nanoamp = <100>;
> +            };
> +            // Sample AIN2 with respect to DGND throughout AVDD/DGND input range
> +            // Peseudo-differential unipolar (fig. 2a)
> +            channel@1 {
> +                reg = <1>;
> +                single-channel = <AD4170_MAP_AIN2>;
> +                common-mode-channel = <AD4170_MAP_DGND>;
> +                adi,config-setup-number = <1>;
> +                adi,reference-select = /bits/ 8 <3>;
> +            };
> +            // Sample AIN3 with respect to 2.5V throughout AVDD/AVSS input range
> +            // Pseudo-differential bipolar (fig. 2b)
> +            channel@2 {
> +                reg = <2>;
> +                bipolar;
> +                single-channel = <AD4170_MAP_AIN3>;
> +                common-mode-channel = <AD4170_MAP_REFOUT>;
> +                adi,config-setup-number = <2>;
> +                adi,reference-select = /bits/ 8 <3>;
> +            };
> +            // Sample AIN4 with respect to DGND throughout AVDD/AVSS input range
> +            // Pseudo-differential true bipolar if AVSS < 0V (fig. 2c)
> +            channel@3 {
> +                reg = <3>;
> +                bipolar;
> +                single-channel = <AD4170_MAP_AIN4>;
> +                common-mode-channel = <AD4170_MAP_DGND>;
> +                adi,config-setup-number = <3>;
> +                adi,reference-select = /bits/ 8 <3>;
> +            };
> +            // Sample AIN5 with respect to 2.5V throughout AVDD/REFOUT input range
> +            // Pseudo-differential unipolar (AD4170 datasheet page 46 example)
> +            channel@4 {
> +                reg = <4>;
> +                single-channel = <AD4170_MAP_AIN5>;
> +                common-mode-channel = <AD4170_MAP_REFOUT>;
> +                adi,config-setup-number = <4>;
> +                adi,reference-select = /bits/ 8 <2>;
> +            };
> +            // Sample AIN6 with respect to REFIN+ throughout AVDD/AVSS input range
> +            // Pseudo-differential unipolar
> +            channel@5 {
> +                reg = <5>;
> +                single-channel = <AD4170_MAP_AIN6>;
> +                common-mode-channel = <AD4170_MAP_REFIN1_P>;
> +                adi,config-setup-number = <4>;
> +                adi,reference-select = /bits/ 8 <2>;
> +            };
> +            // Sample AIN7 with respect to DGND throughout REFIN+/REFIN- input range
> +            // Pseudo-differential bipolar
> +            channel@6 {
> +                reg = <6>;
> +                bipolar;
> +                diff-channels = <AD4170_MAP_AIN7 AD4170_MAP_DGND>;
> +                adi,config-setup-number = <5>;
> +                adi,reference-select = /bits/ 8 <0>;
> +            };
> +        };
> +    };
> +...
> +
> -- 
> 2.45.2
> 

