Return-Path: <devicetree+bounces-2607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F27367ABACB
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 23:01:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A6B02281F97
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 21:01:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1841E4735E;
	Fri, 22 Sep 2023 21:01:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08665436A3
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 21:01:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 581D1C433C7;
	Fri, 22 Sep 2023 21:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695416463;
	bh=cMb9RHaHYirSsl0pOWbAp/xl0/Onqs/d5nqBt1IGi8g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e0alFCzQ2NXYPvoMjyHuz/m0F8asW9XIvixH+zUm1vHTnNX9DrIn/m/V7lLGo1IQw
	 51jvASV2i/YRq6wCyx9PlX7/Rhg/mximYUln7DQd8NCkeJcx52AanpwogFXggAuBz9
	 pBD3XOs04sSaQ7lSvkv1ZRIjeaZyhDb06l0GGnE7h6rQvtjw4kPZgY1SWta7SuwwQW
	 Vhm0GlzsB+Vt7D+fc4ER3quok9CNIz1lAbh/ixtyPZNDwKfZVxuLv50C6eMvgyI9m5
	 gMcN5hHtIyouqQSj0+MlxARe0rgWrSLbyeE1U/I5uZdrp2vJLvuXgcNym7Am8NMnEv
	 LoiP1MffRjxxQ==
Received: (nullmailer pid 3568424 invoked by uid 1000);
	Fri, 22 Sep 2023 21:01:01 -0000
Date: Fri, 22 Sep 2023 16:01:01 -0500
From: Rob Herring <robh@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, Ninad Malwade <nmalwade@nvidia.com>, Thierry Reding <treding@nvidia.com>, Nicolin Chen <nicoleotsuka@gmail.com>
Subject: Re: [PATCH V3 1/4] dt-bindings: hwmon: ina3221: Convert to
 json-schema
Message-ID: <20230922210101.GA3562325-robh@kernel.org>
References: <20230921130818.21247-1-jonathanh@nvidia.com>
 <20230921130818.21247-2-jonathanh@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921130818.21247-2-jonathanh@nvidia.com>

On Thu, Sep 21, 2023 at 02:08:15PM +0100, Jon Hunter wrote:
> From: Ninad Malwade <nmalwade@nvidia.com>
> 
> Convert the TI INA3221 bindings from the free-form text format to
> json-schema.
> 
> Note that the INA3221 input channels default to enabled in the chip.
> Unless channels are explicitly disabled in device-tree, input
> channels will be enabled.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> Signed-off-by: Ninad Malwade <nmalwade@nvidia.com>
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---
>  .../devicetree/bindings/hwmon/ina3221.txt     | 54 ----------
>  .../devicetree/bindings/hwmon/ti,ina3221.yaml | 98 +++++++++++++++++++
>  2 files changed, 98 insertions(+), 54 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/hwmon/ina3221.txt
>  create mode 100644 Documentation/devicetree/bindings/hwmon/ti,ina3221.yaml
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/ina3221.txt b/Documentation/devicetree/bindings/hwmon/ina3221.txt
> deleted file mode 100644
> index fa63b6171407..000000000000
> --- a/Documentation/devicetree/bindings/hwmon/ina3221.txt
> +++ /dev/null
> @@ -1,54 +0,0 @@
> -Texas Instruments INA3221 Device Tree Bindings
> -
> -1) ina3221 node
> -  Required properties:
> -  - compatible: Must be "ti,ina3221"
> -  - reg: I2C address
> -
> -  Optional properties:
> -  - ti,single-shot: This chip has two power modes: single-shot (chip takes one
> -                    measurement and then shuts itself down) and continuous (
> -                    chip takes continuous measurements). The continuous mode is
> -                    more reliable and suitable for hardware monitor type device,
> -                    but the single-shot mode is more power-friendly and useful
> -                    for battery-powered device which cares power consumptions
> -                    while still needs some measurements occasionally.
> -                    If this property is present, the single-shot mode will be
> -                    used, instead of the default continuous one for monitoring.
> -
> -  = The node contains optional child nodes for three channels =
> -  = Each child node describes the information of input source =
> -
> -  - #address-cells: Required only if a child node is present. Must be 1.
> -  - #size-cells: Required only if a child node is present. Must be 0.
> -
> -2) child nodes
> -  Required properties:
> -  - reg: Must be 0, 1 or 2, corresponding to IN1, IN2 or IN3 port of INA3221
> -
> -  Optional properties:
> -  - label: Name of the input source
> -  - shunt-resistor-micro-ohms: Shunt resistor value in micro-Ohm
> -
> -Example:
> -
> -ina3221@40 {
> -	compatible = "ti,ina3221";
> -	reg = <0x40>;
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> -
> -	input@0 {
> -		reg = <0x0>;
> -		status = "disabled";
> -	};
> -	input@1 {
> -		reg = <0x1>;
> -		shunt-resistor-micro-ohms = <5000>;
> -	};
> -	input@2 {
> -		reg = <0x2>;
> -		label = "VDD_5V";
> -		shunt-resistor-micro-ohms = <5000>;
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/hwmon/ti,ina3221.yaml b/Documentation/devicetree/bindings/hwmon/ti,ina3221.yaml
> new file mode 100644
> index 000000000000..d0e64a72af5b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/ti,ina3221.yaml
> @@ -0,0 +1,98 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwmon/ti,ina3221.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments INA3221 Current and Voltage Monitor
> +
> +maintainers:
> +  - Jean Delvare <jdelvare@suse.com>
> +  - Guenter Roeck <linux@roeck-us.net>

This should be someone with the h/w. You or the original author Nicolin 
(now Cc'ed)?

> +
> +properties:
> +  compatible:
> +    const: ti,ina3221
> +
> +  reg:
> +    maxItems: 1
> +
> +  ti,single-shot:
> +    description: |
> +      This chip has two power modes: single-shot (chip takes one measurement
> +      and then shuts itself down) and continuous (chip takes continuous
> +      measurements). The continuous mode is more reliable and suitable for
> +      hardware monitor type device, but the single-shot mode is more power-
> +      friendly and useful for battery-powered device which cares power
> +      consumptions while still needs some measurements occasionally.
> +
> +      If this property is present, the single-shot mode will be used, instead
> +      of the default continuous one for monitoring.
> +    $ref: /schemas/types.yaml#/definitions/flag
> +
> +  "#address-cells":
> +    description: Required only if a child node is present.

That's always the case. Drop

> +    const: 1
> +
> +  "#size-cells":
> +    description: Required only if a child node is present.
> +    const: 0
> +
> +patternProperties:
> +  "^input@[0-2]$":
> +    description: The node contains optional child nodes for three channels.
> +      Each child node describes the information of input source. Input channels
> +      default to enabled in the chip. Unless channels are explicitly disabled
> +      in device-tree, input channels will be enabled.
> +    type: object
> +    additionalProperties: false
> +    properties:
> +      reg:
> +        description: Must be 0, 1 and 2, corresponding to the IN1, IN2 or IN3
> +          ports of the INA3221, respectively.
> +        enum: [ 0, 1, 2 ]
> +
> +      label:
> +        description: name of the input source
> +
> +      shunt-resistor-micro-ohms:
> +        description: shunt resistor value in micro-Ohm
> +
> +    required:
> +      - reg
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        power-sensor@40 {
> +            compatible = "ti,ina3221";
> +            reg = <0x40>;
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            input@0 {
> +                reg = <0x0>;
> +                status = "disabled";

Examples should be enabled.

> +            };
> +
> +            input@1 {
> +                reg = <0x1>;
> +                shunt-resistor-micro-ohms = <5000>;
> +            };
> +
> +            input@2 {
> +                reg = <0x2>;
> +                label = "VDD_5V";
> +                shunt-resistor-micro-ohms = <5000>;
> +            };
> +        };
> +    };
> -- 
> 2.34.1
> 

