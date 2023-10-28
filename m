Return-Path: <devicetree+bounces-12602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C3E7DA728
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 15:20:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE64C1C20957
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 13:20:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43961FBF3;
	Sat, 28 Oct 2023 13:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMrpCxX5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF14F9D6
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 13:20:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A628EC433C8;
	Sat, 28 Oct 2023 13:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698499221;
	bh=HMIbKdE+7pP6FjaD+r0mc7H7tiphE1xO2v7OzEIp3bE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=KMrpCxX5khDM78I/Q2a68w9M1v5VDnWWysfUZsUFmCCApnKa072llcSj0wNzmb2Fa
	 ABoq7p1gfjL5wgGu2HiamEVsjdhNnov/UO9RgTbZZl9venQKWvoPSCIDhSP5WhzPVo
	 A6Cy/n/b9zMRcrrcyZAJ7aX1URAT/DA02ko3VCdMOLJMOO0fl/38yP8ntXNMG9S5v8
	 qPDPA43YevvS9pmxWQIA7UUjogYnHgNuIcVweJFTyVxjWjeE5FmOkJjeZobgnsboEv
	 7RBG/g/EY6szhkGbCNFHVdYvXNR4ZPdBATy4K0DvzwhFaKpYTngGfbDCabSyMXG4ac
	 HN3SgqImUpfIw==
Date: Sat, 28 Oct 2023 14:19:48 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andrew Hepp <andrew.hepp@ahepp.dev>
Cc: devicetree@vger.kernel.org, linux-iio@vger.kernel.org, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [v7,PATCH 1/2] dt-bindings: iio: Add MCP9600 thermocouple EMF
 converter
Message-ID: <20231028141948.5ec4b542@jic23-huawei>
In-Reply-To: <20231025233153.5454-1-andrew.hepp@ahepp.dev>
References: <20231025233153.5454-1-andrew.hepp@ahepp.dev>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 25 Oct 2023 16:31:52 -0700
Andrew Hepp <andrew.hepp@ahepp.dev> wrote:

> Add support for the MCP9600 thermocouple electromotive force converter. The sensor has  integrated cold junction compensation and a typical accuracy of 0.5 degrees Celsius. The driver supports a resolution of 0.0625 degrees Celsius.
> 
> Datasheet: https://ww1.microchip.com/downloads/en/DeviceDoc/MCP960X-Data-Sheet-20005426.pdf
> Signed-off-by: Andrew Hepp <andrew.hepp@ahepp.dev>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Hi Andrew,

Series applied to the togreg branch of iio.git.
I will be rebasing that tree once rc1 is out in a few weeks time
so in the meantime I will only push this out as testing for 0-day to take
a look at it and see if we missed anything,

Thanks,

Jonathan

> ---
> Changes for v7:
> - none
> Changes for v6:
> - none
> Changes for v5:
> - remove "bindings" from subject
> - change unevaluatedProperties to additionalProperties
> Changes for v4:
> - use descriptive names for open/short circuit interrupts
> - remove vdd regulator description
> - remove unused import
> - use generic sensor name in example
> - don't use literal style for doc description
> Changes for v3:
> - Added dt-bindings
> ---
>  .../iio/temperature/microchip,mcp9600.yaml    | 70 +++++++++++++++++++
>  1 file changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml b/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
> new file mode 100644
> index 000000000000..d2cafa38a544
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
> @@ -0,0 +1,70 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/temperature/microchip,mcp9600.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip MCP9600 thermocouple EMF converter
> +
> +maintainers:
> +  - Andrew Hepp <andrew.hepp@ahepp.dev>
> +
> +description:
> +  https://ww1.microchip.com/downloads/en/DeviceDoc/MCP960X-Data-Sheet-20005426.pdf
> +
> +properties:
> +  compatible:
> +    const: microchip,mcp9600
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 6
> +
> +  interrupt-names:
> +    minItems: 1
> +    maxItems: 6
> +    items:
> +      enum:
> +        - open-circuit
> +        - short-circuit
> +        - alert1
> +        - alert2
> +        - alert3
> +        - alert4
> +
> +  thermocouple-type:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Type of thermocouple (THERMOCOUPLE_TYPE_K if omitted).
> +      Use defines in dt-bindings/iio/temperature/thermocouple.h.
> +      Supported types are B, E, J, K, N, R, S, T.
> +
> +  vdd-supply: true
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/iio/temperature/thermocouple.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        temperature-sensor@60 {
> +            compatible = "microchip,mcp9600";
> +            reg = <0x60>;
> +            interrupt-parent = <&gpio>;
> +            interrupts = <25 IRQ_TYPE_EDGE_RISING>;
> +            interrupt-names = "open-circuit";
> +            thermocouple-type = <THERMOCOUPLE_TYPE_K>;
> +            vdd-supply = <&vdd>;
> +        };
> +    };


