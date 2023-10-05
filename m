Return-Path: <devicetree+bounces-6246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D1F7BA6A8
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 18:40:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 584E0281D17
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB1F6358B5;
	Thu,  5 Oct 2023 16:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPOsfm3d"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDAD329425
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 16:40:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5CEEC433C8;
	Thu,  5 Oct 2023 16:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696524019;
	bh=FraLcijUUXSrhwCjVGKMA6/d/tnxwhF8Lifa4MCNTko=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=YPOsfm3dz4RhG6KFDOBX06PgLcOSfC8N9+axto3f9Q5LK7NfgS4u2rz0Ofx2EYa9h
	 VRD5qWebBKzQAVWkgxg/69adP22bA1IAM0a87Nzh9RMopUlrNheoSsKGDm/yBY5keM
	 a1ryheuz5i77op0cAOazjOYaZyR8GZnavKh+g5algWCLZsaiNghS5ftVJC7p5zboFK
	 4wI3nlnDXngW+1GxX1RorwQZ6kDXKDZCMVhrYoYNFXo1msUSIAemsswkigLPc0RKob
	 bqUL+prZ2WCFkkppvc+cBwWvBL8VqEyBgdCHtqzV1mCQFTt0TQUks1Ed/Fa3bx1yE2
	 +1f2sXN70Q08w==
Date: Thu, 5 Oct 2023 17:40:19 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Dumitru Ceclan <mitrutzceclan@gmail.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, andy@kernel.org,
 linux-gpio@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Walle <michael@walle.cc>, Andy Shevchenko
 <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>, ChiaEn Wu
 <chiaen_wu@richtek.com>, Niklas Schnelle <schnelle@linux.ibm.com>, Leonard
 =?UTF-8?B?R8O2aHJz?= <l.goehrs@pengutronix.de>, Mike Looijmans
 <mike.looijmans@topic.nl>, Haibo Chen <haibo.chen@nxp.com>, Hugo Villeneuve
 <hvilleneuve@dimonoff.com>, Ceclan Dumitru <dumitru.ceclan@analog.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: adc: add AD7173
Message-ID: <20231005174019.4a9bf090@jic23-huawei>
In-Reply-To: <20231005105921.460657-1-mitrutzceclan@gmail.com>
References: <20231005105921.460657-1-mitrutzceclan@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu,  5 Oct 2023 13:59:21 +0300
Dumitru Ceclan <mitrutzceclan@gmail.com> wrote:

> The AD7173 family offer a complete integrated Sigma-Delta ADC solution
> which can be used in high precision, low noise single channel applications
> or higher speed multiplexed applications. The Sigma-Delta ADC is intended
> primarily for measurement of signals close to DC but also delivers
> outstanding performance with input bandwidths out to ~10kHz.
> 
> Signed-off-by: Dumitru Ceclan <mitrutzceclan@gmail.com>

Seems the family is a bit wider than covered here as there is at least
an ad7172-4 device.  It might be nice to support that if not too hard.

> ---
> V2 -> V3
>  - remove redundant descriptions
>  - use referenced 'bipolar' property
>  - remove newlines from example
> 
>  .../bindings/iio/adc/adi,ad7173.yaml          | 130 ++++++++++++++++++
>  1 file changed, 130 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> new file mode 100644
> index 000000000000..bf9e3cbf842e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> @@ -0,0 +1,130 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2023 Analog Devices Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/adi,ad7173.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AD7173 ADC device driver
> +
> +maintainers:
> +  - Ceclan Dumitru <dumitru.ceclan@analog.com>
> +
> +description: |
> +  Bindings for the Analog Devices AD717X ADC's. Datasheets for supported chips:
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/AD7172-2.pdf
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/AD7173-8.pdf
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/AD7175-2.pdf
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/AD7176-2.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,ad7172-2
> +      - adi,ad7173-8
> +      - adi,ad7175-2
> +      - adi,ad7176-2
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +  spi-max-frequency:
> +    maximum: 20000000
> +
> +  spi-cpol:
> +    type: boolean
> +
> +  spi-cpha:
> +    type: boolean

I'd like to see supplies listed here as well.

> +
> +  required:
> +    - compatible
> +    - reg
> +    - interrupts
> +
> +patternProperties:
> +  "^channel@[0-9a-f]$":
> +    type: object
> +    $ref: adc.yaml
> +    unevaluatedProperties: false
> +
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 15
> +
> +      diff-channels:
> +        items:
> +          minimum: 0
> +          maximum: 31

How can this go to 31? Do we have devices with 32 input lines?

> +
> +      bipolar:
> +        type: boolean
> +
> +    required:
> +      - reg
> +      - diff-channels
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    spi {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      adc@0 {
> +        compatible = "adi,ad7173-8";
> +        reg = <0>;
> +
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
> +        interrupt-parent = <&gpio>;
> +        spi-max-frequency = <5000000>;
> +
> +        channel@0 {
> +          reg = <0>;
> +          bipolar;
> +          diff-channels = <0 1>;
> +        };
> +
> +        channel@1 {
> +          reg = <1>;
> +          diff-channels = <2 3>;
> +        };
> +
> +        channel@2 {
> +          reg = <2>;
> +          bipolar;
> +          diff-channels = <4 5>;
> +        };
> +
> +        channel@3 {
> +          reg = <3>;
> +          bipolar;
> +          diff-channels = <6 7>;
> +        };
> +
> +        channel@4 {
> +          reg = <4>;
> +          diff-channels = <8 9>;
> +        };
> +      };
> +    };


