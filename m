Return-Path: <devicetree+bounces-242325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAB5C89438
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 11:25:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BCECD3A2E9C
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 536A82FBE1D;
	Wed, 26 Nov 2025 10:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeHCfS5+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2232F7468;
	Wed, 26 Nov 2025 10:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764152696; cv=none; b=sX8AKIfrtvGb2RNWGSvNeiSDCCVvkd24G7iQCTSin0duRoKMpb3wzNUj5Xl9a/gOvQ0PIfKnA+eukM0/T1wYpQDosFknylcIjx4txApVGC7jgfgww/4WN4OUXnsxYlrmDf8C4zYVXECgkuWGADi/gumCIc41wlpzF1XZoI1Z3qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764152696; c=relaxed/simple;
	bh=flHwoU2Ejmea62KYBv8nQ0zAUz6VROyYex7uT6xd01w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rvEZoHFoffSr/kCo99KwbCitC9dcVAZNVIOAeEPjmKtxB4XY/H1zJAOX7O1+RMkC8ncvxemK5hcyTxb89aYhj3J3ckr2E+gVETSyDH0BsQFT5xvsLB4yGNtqx3Cx7zgx2SesZzTO0sOU6YIu6Wssd6EeqaLNbf4/LXJA++FlIyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeHCfS5+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CB1AC113D0;
	Wed, 26 Nov 2025 10:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764152695;
	bh=flHwoU2Ejmea62KYBv8nQ0zAUz6VROyYex7uT6xd01w=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=IeHCfS5+XCZF+aSrtHqCqW1YGgpBPwmso2WpIaQ+/IpHmUs7fZ3r7nl6qwWk8jIR0
	 UzXutRw86pSncyZ2i0X7tLPIcVWZJ1UfxYhyDgsO9gRoCA/jXYoyFBJDqmR/vToOl8
	 5MUqdrnT2oO7wx+0lWBH9AyUNASUCj2b4rJfdA1quym8EAjPpiI4lO5UQsqriinJB/
	 uPJ7kHa7ZwaX0b4r7VXBPB07e2cIzZhjGrH1PAXmVpkuMGvc5g3d40LK6CGOJFxGTf
	 z1b3gWk2zw76NPdQu6Tv9tCi++83MKpeLRvEmvS1Lg3MebsxfkpToTlG1OUbaYCXN6
	 Gk8Tc3HhzkCxQ==
Message-ID: <4702976d-1b08-4565-88a5-d9a1b36582f9@kernel.org>
Date: Wed, 26 Nov 2025 11:24:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] ARM: dts: Add support for pcb8385
To: Horatiu Vultur <horatiu.vultur@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, claudiu.beznea@tuxon.dev,
 wsa+renesas@sang-engineering.com, Ryan.Wanner@microchip.com,
 romain.sioen@microchip.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251126100151.1559590-1-horatiu.vultur@microchip.com>
 <20251126100151.1559590-3-horatiu.vultur@microchip.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <20251126100151.1559590-3-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/11/2025 11:01, Horatiu Vultur wrote:
> Add basic support for pcb8385 [1]. It is a modular board which allows
> to add different daughter cards on which there are different PHYs.
> This adds support for UART, LEDs and I2C.
> 
> [1] https://www.microchip.com/en-us/development-tool/ev83e85a
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  arch/arm/boot/dts/microchip/Makefile          |   3 +-
>  .../boot/dts/microchip/lan966x-pcb8385.dts    | 133 ++++++++++++++++++
>  2 files changed, 135 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boot/dts/microchip/lan966x-pcb8385.dts
> 
> diff --git a/arch/arm/boot/dts/microchip/Makefile b/arch/arm/boot/dts/microchip/Makefile
> index 79cd38fdc7dab..08986c24a4700 100644
> --- a/arch/arm/boot/dts/microchip/Makefile
> +++ b/arch/arm/boot/dts/microchip/Makefile
> @@ -102,4 +102,5 @@ dtb-$(CONFIG_SOC_LAN966) += \
>  	lan966x-kontron-kswitch-d10-mmt-8g.dtb \
>  	lan966x-pcb8290.dtb \
>  	lan966x-pcb8291.dtb \
> -	lan966x-pcb8309.dtb
> +	lan966x-pcb8309.dtb \
> +	lan966x-pcb8385.dtb
> diff --git a/arch/arm/boot/dts/microchip/lan966x-pcb8385.dts b/arch/arm/boot/dts/microchip/lan966x-pcb8385.dts
> new file mode 100644
> index 0000000000000..a7ac7854cdaf0
> --- /dev/null
> +++ b/arch/arm/boot/dts/microchip/lan966x-pcb8385.dts
> @@ -0,0 +1,133 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * lan966x-pcb8385.dts - Device Tree file for PCB8385
> + */
> +/dts-v1/;
> +
> +#include "lan966x.dtsi"
> +#include "dt-bindings/phy/phy-lan966x-serdes.h"
> +
> +/ {
> +	model = "Microchip EVB - LAN9668";
> +	compatible = "microchip,lan9668-pcb8385", "microchip,lan9668", "microchip,lan966";
> +
> +	aliases {
> +		serial0 = &usart3;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	gpio-restart {
> +		compatible = "gpio-restart";
> +		gpios = <&gpio 59 GPIO_ACTIVE_LOW>;
> +		open-source;
> +		priority = <200>;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-p1-green {
> +			label = "cu0:green";
> +			gpios = <&sgpio_out 2 0 GPIO_ACTIVE_LOW>;
> +			default-state = "off";
> +		};
> +
> +		led-p1-yellow {
> +			label = "cu0:yellow";
> +			gpios = <&sgpio_out 2 1 GPIO_ACTIVE_LOW>;
> +			default-state = "off";
> +		};
> +
> +		led-p2-green {
> +			label = "cu1:green";
> +			gpios = <&sgpio_out 3 0 GPIO_ACTIVE_LOW>;
> +			default-state = "off";
> +		};
> +
> +		led-p2-yellow {
> +			label = "cu1:yellow";
> +			gpios = <&sgpio_out 3 1 GPIO_ACTIVE_LOW>;
> +			default-state = "off";
> +		};
> +	};
> +};
> +
> +&aes {
> +	status = "disabled"; /* Reserved by secure OS */
> +};
> +
> +&flx0 {
> +	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
> +	status = "okay";
> +
> +	i2c0: i2c@600 {

You added a label, so this feels like a new node, but then you miss
compatible and status feels redundant.

If this is override, you should rather override by labels/phandles in
the first place. Even when overriding by full node path, you should not
add custom labels - they belong to the base SoC.

> +		pinctrl-0 = <&fc0_b_pins>;
> +		pinctrl-names = "default";
> +		dmas = <0>, <0>;
> +		i2c-analog-filter;
> +		i2c-digital-filter;
> +		i2c-digital-filter-width-ns = <35>;
> +		i2c-sda-hold-time-ns = <1500>;
> +		status = "okay";

> +
> +		eeprom@54 {
> +			compatible = "atmel,24c01";
> +			reg = <0x54>;
> +			status = "okay";

Why? Was it disabled anywhere?

> +		};
> +
> +		eeprom@55 {
> +			compatible = "atmel,24c01";
> +			reg = <0x55>;
> +			status = "okay";
> +		};
> +	};
> +};
> +



Best regards,
Krzysztof

