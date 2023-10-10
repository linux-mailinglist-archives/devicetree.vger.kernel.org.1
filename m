Return-Path: <devicetree+bounces-7303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCE57BFF70
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:40:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ECFBB281B38
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:40:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19F7C18639;
	Tue, 10 Oct 2023 14:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvb72v1K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF90828F4
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 14:40:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AA72C433C8;
	Tue, 10 Oct 2023 14:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696948830;
	bh=SZNL5ipjz03UC6M5xobnjz++6ytKfOWeF3h0jnFiasw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=qvb72v1KwaPV6lhUBCnWjTPdWQFWjMAsrdcuCea7BPaHEvp98IoGTwS998Gfv7bwm
	 cXy+pHMz398PjWmFf9UxdQ7rqGsjrPy3pl2MnG3X/X4Nn1EZQcv/iaUd91UZpm8DJ5
	 1H89dsnas4BAxGXPYynhCP5e6npn6U2YVt/+o0QAcmv4kPbESX/AwmNJTlT3wJb5nF
	 WvNAPOE5UyVY9SG9Q5g6VS4z0tOAWmRlBY4wQTdqMOOiyPvJrrjDKb807iBJWsRlvl
	 p+7uqVs/BG6vQUnLxF23bSga6KgoRMYA2vY+oIowLwkiSMyFGBLmJsDmdOEtRRWRJD
	 seMWou74vPx1w==
Date: Tue, 10 Oct 2023 15:40:42 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Ivan Mikhaylov <fr0st61te@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: adc: provide max34408/9 device tree
 binding document
Message-ID: <20231010154042.2ef667b2@jic23-huawei>
In-Reply-To: <20231007234838.8748-2-fr0st61te@gmail.com>
References: <20231007234838.8748-1-fr0st61te@gmail.com>
	<20231007234838.8748-2-fr0st61te@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun,  8 Oct 2023 02:48:37 +0300
Ivan Mikhaylov <fr0st61te@gmail.com> wrote:

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

I guess the review crossed with you sending v5.  There is some feedback on v4 you need
to address here.

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
> +              maximum: 1
> +    else:
> +      patternProperties:
> +        "^channel@[0-3]$":
> +          properties:
> +            reg:
> +              minimum: 0
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


