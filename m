Return-Path: <devicetree+bounces-244709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0179CA8052
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 15:49:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D3013083102
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 14:49:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CE8D327C0D;
	Fri,  5 Dec 2025 14:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceyFAXvx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4768028642D;
	Fri,  5 Dec 2025 14:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764946177; cv=none; b=XVgfmpK4D4dgV0EsqaGZV06Z7U1wW1a7ATXN3/a7PVBUHFH56LsCXLNg7nhLXBr2k8I4CxxU4vdJ9Rsu1lfDZMcoNx1QhPYdt2rJXQllIugTPZjVE6UBSWGCud5TiNIXqoE0xBBY6JYe3iTAmyXLF7z486Mr80QirasjrAD/29g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764946177; c=relaxed/simple;
	bh=y46lOh3uiDJdon0wY2+qojpA7h8dJLDS70+GF62iHwo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RoQ0OL3XVxPxbRva2zAhENUR5FkAtczD0NLagS+A0VF7g87fvWo/13nPV39IqxFTRBA7jLU4VTZRxYNvpGvSkEVUwBlOLvGlFqMoamG9VbFYMYR135JVWZRrKIRBguEGlar7M4S8KkWcOwPH72jbeibe66yrQ1N0Mv21Cnp+XsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceyFAXvx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49447C4CEF1;
	Fri,  5 Dec 2025 14:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764946176;
	bh=y46lOh3uiDJdon0wY2+qojpA7h8dJLDS70+GF62iHwo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ceyFAXvxphL0FT5av2Xs7vcxFoSccfTGt/iVLs9wP/iXQUsfJccu6awsubBHZ46Zz
	 oftzNfAjw+rTQfd4d2Hj1S0DzVRt2bLZ3mFgwyuTBHgsnQBn2QvotZct+5eTAmHrhR
	 lsRZm8CXbm4oRZwCKjmQDMsBYu9nd5M5XsfX/fDgMn4KrBc7+bFxCwbBJoowEyuRDg
	 bVwUMixp7XwNJ3+1Ne46bXzmmWkfBEgwpJHpOZVuZk9FpTWUwYlC9QXA8YCPEJIadx
	 9AXqkt7DygY7c+Wh3L9WfG/WnHy6VtkBGNj9uXQyDuafH4j8vWvvOhAdyGfwzy2wAA
	 o0GuaxsFmrOGA==
Date: Fri, 5 Dec 2025 08:49:29 -0600
From: Rob Herring <robh@kernel.org>
To: Rebecca Cran <rebecca@bsdio.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	Billy Tsai <billy_tsai@aspeedtech.com>
Subject: Re: [PATCH v3 3/3] dt-bindings: hwmon: (aspeed,g5-pwm-tacho) Move
 info from txt to yaml
Message-ID: <20251205144929.GA76422-robh@kernel.org>
References: <20251204210238.40742-1-rebecca@bsdio.com>
 <20251204210238.40742-4-rebecca@bsdio.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251204210238.40742-4-rebecca@bsdio.com>

On Thu, Dec 04, 2025 at 02:02:36PM -0700, Rebecca Cran wrote:
> Move the documentation for the aspeed,ast2400-pwm-tacho and
> aspeed,ast2500-pwm-tacho devices from a text file to yaml file.
> 
> This allows for dts files containing these devices to be validated.
> 
> Where the text file documenation of required properties differ from the
> implementation, prefer the implementation and update the schema to
> match.
> 
> "#size-cells" was 1 but implementation is 0.
> "#cooling-cells" was marked as required but appears optional.
> 
> In the fan subnode, "cooling-levels" is optional according to the code
> in drivers/hwmon/aspeed-pwm-tacho.c.

Please see this one:

https://lore.kernel.org/all/20251029185448.2121857-1-robh@kernel.org/

> 
> Signed-off-by: Rebecca Cran <rebecca@bsdio.com>
> ---
>  Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.yaml | 91 ++++++++++++++++++++
>  Documentation/devicetree/bindings/hwmon/aspeed-pwm-tacho.txt  | 73 ----------------
>  2 files changed, 91 insertions(+), 73 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.yaml b/Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.yaml
> new file mode 100644
> index 000000000000..b23c3519604b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/aspeed,pwm-tacho.yaml
> @@ -0,0 +1,91 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2023 Aspeed, Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/hwmon/aspeed,g5-pwm-tacho.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ASPEED AST2400/AST2500 PWM and Fan Tacho controller
> +
> +maintainers:
> +  - Billy Tsai <billy_tsai@aspeedtech.com>
> +
> +description: |
> +  The ASPEED PWM controller can support up to 8 PWM outputs. The ASPEED Fan
> +  Tacho controller can support up to 16 Fan tachometer inputs.
> +
> +  There can be up to 8 fans supported. Each fan can have one PWM output and
> +  one/two Fan tach inputs.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - aspeed,ast2400-pwm-tacho
> +      - aspeed,ast2500-pwm-tacho
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
> +  clocks:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +patternProperties:
> +  "^fan@[0-9]+$":
> +    $ref: fan-common.yaml#
> +    unevaluatedProperties: false
> +    properties:
> +      aspeed,fan-tach-ch:
> +        description:
> +          The tach channel used for the fan.
> +        $ref: /schemas/types.yaml#/definitions/uint8-array
> +
> +    required:
> +      - reg
> +      - aspeed,fan-tach-ch
> +
> +required:
> +  - compatible
> +  - "#address-cells"
> +  - "#size-cells"
> +  - reg
> +  - pinctrl-names
> +  - pinctrl-0
> +  - clocks
> +  - resets
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/aspeed-clock.h>
> +    pwm_tacho: pwmtachocontroller@1e786000 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        #cooling-cells = <2>;
> +        reg = <0x1E786000 0x1000>;
> +        compatible = "aspeed,ast2500-pwm-tacho";
> +        clocks = <&syscon ASPEED_CLK_APB>;
> +        resets = <&syscon ASPEED_RESET_PWM>;
> +        pinctrl-names = "default";
> +        pinctrl-0 = <&pinctrl_pwm0_default &pinctrl_pwm1_default>;
> +
> +        fan@0 {
> +                reg = <0x00>;
> +                cooling-levels = /bits/ 8 <125 151 177 203 229 255>;
> +                aspeed,fan-tach-ch = /bits/ 8 <0x00>;
> +        };
> +
> +        fan@1 {
> +                reg = <0x01>;
> +                aspeed,fan-tach-ch = /bits/ 8 <0x01 0x02>;
> +        };
> +    };
> diff --git a/Documentation/devicetree/bindings/hwmon/aspeed-pwm-tacho.txt b/Documentation/devicetree/bindings/hwmon/aspeed-pwm-tacho.txt
> deleted file mode 100644
> index 8645cd3b867a..000000000000
> --- a/Documentation/devicetree/bindings/hwmon/aspeed-pwm-tacho.txt
> +++ /dev/null
> @@ -1,73 +0,0 @@
> -ASPEED AST2400/AST2500 PWM and Fan Tacho controller device driver
> -
> -The ASPEED PWM controller can support upto 8 PWM outputs. The ASPEED Fan Tacho
> -controller can support upto 16 Fan tachometer inputs.
> -
> -There can be upto 8 fans supported. Each fan can have one PWM output and
> -one/two Fan tach inputs.
> -
> -Required properties for pwm-tacho node:
> -- #address-cells : should be 1.
> -
> -- #size-cells : should be 1.
> -
> -- #cooling-cells: should be 2.
> -
> -- reg : address and length of the register set for the device.
> -
> -- pinctrl-names : a pinctrl state named "default" must be defined.
> -
> -- pinctrl-0 : phandle referencing pin configuration of the PWM ports.
> -
> -- compatible : should be "aspeed,ast2400-pwm-tacho" for AST2400 and
> -	       "aspeed,ast2500-pwm-tacho" for AST2500.
> -
> -- clocks : phandle to clock provider with the clock number in the second cell
> -
> -- resets : phandle to reset controller with the reset number in the second cell
> -
> -fan subnode format:
> -===================
> -Under fan subnode there can upto 8 child nodes, with each child node
> -representing a fan. If there are 8 fans each fan can have one PWM port and
> -one/two Fan tach inputs.
> -For PWM port can be configured cooling-levels to create cooling device.
> -Cooling device could be bound to a thermal zone for the thermal control.
> -
> -Required properties for each child node:
> -- reg : should specify PWM source port.
> -	integer value in the range 0 to 7 with 0 indicating PWM port A and
> -	7 indicating PWM port H.
> -
> -- cooling-levels: PWM duty cycle values in a range from 0 to 255
> -                  which correspond to thermal cooling states.
> -
> -- aspeed,fan-tach-ch : should specify the Fan tach input channel.
> -                integer value in the range 0 through 15, with 0 indicating
> -		Fan tach channel 0 and 15 indicating Fan tach channel 15.
> -		At least one Fan tach input channel is required.
> -
> -Examples:
> -
> -pwm_tacho: pwmtachocontroller@1e786000 {
> -	#address-cells = <1>;
> -	#size-cells = <1>;
> -	#cooling-cells = <2>;
> -	reg = <0x1E786000 0x1000>;
> -	compatible = "aspeed,ast2500-pwm-tacho";
> -	clocks = <&syscon ASPEED_CLK_APB>;
> -	resets = <&syscon ASPEED_RESET_PWM>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_pwm0_default &pinctrl_pwm1_default>;
> -
> -	fan@0 {
> -		reg = <0x00>;
> -		cooling-levels = /bits/ 8 <125 151 177 203 229 255>;
> -		aspeed,fan-tach-ch = /bits/ 8 <0x00>;
> -	};
> -
> -	fan@1 {
> -		reg = <0x01>;
> -		aspeed,fan-tach-ch = /bits/ 8 <0x01 0x02>;
> -	};
> -};
> -- 
> 2.47.3
> 

