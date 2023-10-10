Return-Path: <devicetree+bounces-7301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2034A7BFF5D
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:33:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7B97281CDA
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 525DBECA;
	Tue, 10 Oct 2023 14:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsidtITI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DCB24C7B
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 14:33:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB943C433C7;
	Tue, 10 Oct 2023 14:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696948399;
	bh=pcUljfDqBz+5zaYl7PUC11MbDiE8H1prd/gX1DsPBjw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LsidtITI0+z28z1dZ4UqR042n9o4GknAiiVcgcwnAicoS7LVHwe5n30W/Gwb1CjZ2
	 TfzyUvxbg6ExIsBJRh3wrXmYJLcvs0eakt64mib+U3MewVW4IUrRz67tcNScghLGlF
	 Kz5ue3fqSbUAOXcp7Cq5WFttNSEuzEujSViD14RxxZaDzCDWt2HmMNpfH6d4AtQu8q
	 0fqj/nO67IW3ludGrSbS5qYa3Vq9VXZXv/S8F1CXDkks3AH6FbzhuK7T/RByJhgBwT
	 VFI1PpLyTlzQPOHPix0XAugZHSoc5nVdoXiHuf1frmzIyr+Y5T/SjVjP/yACSQsfLg
	 PV8WrNrS4a+Dg==
Received: (nullmailer pid 847247 invoked by uid 1000);
	Tue, 10 Oct 2023 14:33:17 -0000
Date: Tue, 10 Oct 2023 09:33:17 -0500
From: Rob Herring <robh@kernel.org>
To: Ivan Mikhaylov <fr0st61te@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: adc: provide max34408/9 device tree
 binding document
Message-ID: <20231010143317.GA841985-robh@kernel.org>
References: <20231007234838.8748-1-fr0st61te@gmail.com>
 <20231007234838.8748-2-fr0st61te@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231007234838.8748-2-fr0st61te@gmail.com>

On Sun, Oct 08, 2023 at 02:48:37AM +0300, Ivan Mikhaylov wrote:
> The hardware binding for i2c current monitoring device with overcurrent
> control.
> 
> Signed-off-by: Ivan Mikhaylov <fr0st61te@gmail.com>
> ---
>  .../bindings/iio/adc/maxim,max34408.yaml      | 141 ++++++++++++++++++
>  1 file changed, 141 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml b/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> new file mode 100644
> index 000000000000..9749f1fd1802
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> @@ -0,0 +1,141 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/maxim,max34408.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Two- and four-channel current monitors with overcurrent control

Maxim MAX34408/MAX34409 current monitors with overcurrent control

> +
> +maintainers:
> +  - Ivan Mikhaylov <fr0st61te@gmail.com>
> +
> +description: |
> +  The MAX34408/MAX34409 are two- and four-channel current monitors that are
> +  configured and monitored with a standard I2C/SMBus serial interface. Each
> +  unidirectional current sensor offers precision high-side operation with a
> +  low full-scale sense voltage. The devices automatically sequence through
> +  two or four channels and collect the current-sense samples and average them
> +  to reduce the effect of impulse noise. The raw ADC samples are compared to
> +  user-programmable digital thresholds to indicate overcurrent conditions.
> +  Overcurrent conditions trigger a hardware output to provide an immediate
> +  indication to shut down any necessary external circuitry.
> +
> +  Specifications about the devices can be found at:
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/MAX34408-MAX34409.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - maxim,max34408
> +      - maxim,max34409
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  powerdown-gpios:
> +    description:
> +      Shutdown Output. Open-drain output. This output transitions to high impedance
> +      when any of the digital comparator thresholds are exceeded as long as the ENA
> +      pin is high.
> +    maxItems: 1
> +
> +  shtdn-enable-gpios:
> +    description:
> +      SHTDN Enable Input. CMOS digital input. Connect to GND to clear the latch and
> +      unconditionally deassert (force low) the SHTDN output and reset the shutdown
> +      delay. Connect to VDD to enable normal latch operation of the SHTDN output.
> +    maxItems: 1
> +
> +  vdd-supply: true
> +
> +patternProperties:
> +  "^channel@[0-3]$":
> +    $ref: adc.yaml
> +    type: object
> +    description:
> +      Represents the internal channels of the ADC.
> +
> +    properties:
> +      reg:
> +        items:
> +          minimum: 0
> +          maximum: 3

This allows any number of 'reg' entries. You need this instead:

items:
  - minimum: 0
    maximum: 3


> +
> +      maxim,rsense-val-micro-ohms:
> +        description:
> +          Adjust the Rsense value to monitor higher or lower current levels for
> +          input.
> +        enum: [250, 500, 1000, 5000, 10000, 50000, 100000, 200000, 500000]
> +        default: 1000
> +
> +    required:
> +      - reg
> +      - maxim,rsense-val-micro-ohms
> +
> +    unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: maxim,max34408
> +    then:
> +      patternProperties:
> +        "^channel@[2-3]$": false
> +        "^channel@[0-1]$":
> +          properties:
> +            reg:
> +              minimum: 0

0 is already the minimum

> +              maximum: 1
> +    else:
> +      patternProperties:
> +        "^channel@[0-3]$":
> +          properties:
> +            reg:
> +              minimum: 0

ditto

> +              maximum: 3
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        adc@1e {
> +              compatible = "maxim,max34409";
> +              reg = <0x1e>;
> +              powerdown-gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
> +              shtdn-enable-gpios = <&gpio0 2 GPIO_ACTIVE_HIGH>;
> +
> +              #address-cells = <1>;
> +              #size-cells = <0>;
> +
> +              channel@0 {
> +                  reg = <0x0>;
> +                  maxim,rsense-val-micro-ohms = <5000>;
> +              };
> +
> +              channel@1 {
> +                  reg = <0x1>;
> +                  maxim,rsense-val-micro-ohms = <10000>;
> +             };
> +        };
> +    };
> -- 
> 2.42.0
> 

