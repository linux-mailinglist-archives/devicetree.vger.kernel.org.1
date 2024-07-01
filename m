Return-Path: <devicetree+bounces-81801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B90291D7D4
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 08:01:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8F04DB203CF
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 06:01:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE37E28F5;
	Mon,  1 Jul 2024 06:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYlydvdN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9FC8288DF
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 06:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719813711; cv=none; b=TnQooc/98lg2wzneKfw1//Bb+Y4o6+QrI7NNksNcqjSGI+1k8/hldrUizCqH38/ROg7BGs6OMuIqzAnQ6We86ZNMnzOgsxCjTDVSW+xvhrVZ6MM/F1nTMnTvsLYmZWUzTzlizhBFDUKVDNsOA38UXauhzkz6sRCdVZ5oZrRm4cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719813711; c=relaxed/simple;
	bh=LYf1JY1drMJvaZBrYQuPsIY8cWtA4iP/QNizNXwN8xE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YAy/0f7duZacqu4yefXKyM3F+sPeRxvKkNTh3sO1cLAsJFFWMss1ov9GhKAjOUhHOacZPobRSQIyo1yBgOIFumQQ6B1qq4eUBbdVFKK+fEsaDpqQjBH2dffchUREcARMWuBQCvJDcMi1CGXVQ6gGkSPyC5XWL5cjbwp6hWFNhm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYlydvdN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37035C116B1;
	Mon,  1 Jul 2024 06:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719813711;
	bh=LYf1JY1drMJvaZBrYQuPsIY8cWtA4iP/QNizNXwN8xE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=sYlydvdNZuwhPc1LEKZel8BRkjrDdWc2c/pnm7Ljf44NlLtIKcPdiN31g1JD9gUl6
	 S3qMchYTbSPS0BH41X7WxhIZbIqp3cYQI5rDHblKIgDv7byS4N66d2KG+TeQislqQm
	 0QpKVxIxSY9f3aQEboF+UeYW/P06fK9abkZyzMCzvfBksx+I3PYvZUHtxeSSwd1FW2
	 2eG6sKhfOlqk4EnvrRNE/7Savpb0YPzHlgvW+5pL+p2PfRQcW9FGxCKveuHNErEhfs
	 ozxyh+O6zUtEUhehGN0R1lZAJB/q52tpM1HegY+paeiS3bJGuQKOk43x+2qDbF6iwL
	 /8L2Pvypp8sZQ==
Message-ID: <b55a888d-9e64-40fb-9d78-26703835d1e6@kernel.org>
Date: Mon, 1 Jul 2024 08:01:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] ARM: dts: marvell: add support for D-Link DNS-320L
To: Zoltan HERPAI <wigyori@uid0.hu>, andrew@lunn.ch,
 gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20240629113450.127561-1-wigyori@uid0.hu>
 <20240629113450.127561-3-wigyori@uid0.hu>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240629113450.127561-3-wigyori@uid0.hu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/06/2024 13:34, Zoltan HERPAI wrote:
> Dual-slot NAS based on Marvell Kirkwood.
> 
> Specifications:
>  - Marvell 88F6702 @1GHz
>  - 256Mb RAM
>  - 128Mb NAND
>  - 1x GbE LAN (Marvell 88E1318R)
>  - 1x USB 2.0
>  - 2x SATA
>  - Weltrend WT69P3 ("supervisor" MCU chip)
>  - Serial on J2 (115200,8n1)
>  - Newer bootROM so kwboot-ing via serial is possible
> 
> Signed-off-by: Zoltan HERPAI <wigyori@uid0.hu>
> ---
>  arch/arm/boot/dts/marvell/Makefile            |   1 +
>  .../arm/boot/dts/marvell/kirkwood-dns320l.dts | 197 ++++++++++++++++++
>  2 files changed, 198 insertions(+)
>  create mode 100644 arch/arm/boot/dts/marvell/kirkwood-dns320l.dts
> 
> diff --git a/arch/arm/boot/dts/marvell/Makefile b/arch/arm/boot/dts/marvell/Makefile
> index 1e0f5ff492f7..cadd4039b783 100644
> --- a/arch/arm/boot/dts/marvell/Makefile
> +++ b/arch/arm/boot/dts/marvell/Makefile
> @@ -92,6 +92,7 @@ dtb-$(CONFIG_MACH_KIRKWOOD) += \
>  	kirkwood-db-88f6282.dtb \
>  	kirkwood-dir665.dtb \
>  	kirkwood-dns320.dtb \
> +	kirkwood-dns320l.dtb \
>  	kirkwood-dns325.dtb \
>  	kirkwood-dockstar.dtb \
>  	kirkwood-dreamplug.dtb \
> diff --git a/arch/arm/boot/dts/marvell/kirkwood-dns320l.dts b/arch/arm/boot/dts/marvell/kirkwood-dns320l.dts
> new file mode 100644
> index 000000000000..82a2d60376f7
> --- /dev/null
> +++ b/arch/arm/boot/dts/marvell/kirkwood-dns320l.dts
> @@ -0,0 +1,197 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Device Tree file for D-Link DNS-320L
> + *
> + * Copyright (C) 2024, Zoltan HERPAI <wigyori@uid0.hu>
> + * Copyright (C) 2015, Sunke Schluters <sunke-dev@schlueters.de>
> + *
> + * This file is based on the works of:
> + * - Sunke Schluters <sunke-dev@schlueters.de>
> + *   - https://github.com/scus1/dns320l/blob/master/kernel/dts/kirkwood-dns320l.dts
> + * - Andreas Bohler <dev@aboehler.at>:
> + *   - http://www.aboehler.at/doku/doku.php/projects:dns320l
> + *   - http://www.aboehler.at/hg/linux-dns320l/file/ba7a60ad7687/linux-3.12/kirkwood-dns320l.dts
> + */
> +
> +/dts-v1/;
> +
> +#include "kirkwood.dtsi"
> +#include "kirkwood-6281.dtsi"
> +
> +/ {
> +	model = "D-Link DNS-320L";
> +	compatible = "dlink,dns320l", "marvell,kirkwood-88f6702", "marvell,kirkwood";
> +
> +	memory {
> +		device_type = "memory";
> +		reg = <0x00000000 0x10000000>;
> +	};
> +
> +	chosen {
> +		bootargs = "console=ttyS0,115200n8 earlyprintk";
> +		stdout-path = &uart0;
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;

Nope, these cannot be there.

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check W=1` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).

> +		pinctrl-0 = <&pmx_buttons>;
> +		pinctrl-names = "default";
> +
> +		button@1 {
> +			label = "Reset push button";
> +			linux,code = <KEY_RESTART>;
> +			gpios = <&gpio0 28 1>;
> +		};
> +
> +		button@2 {
> +			label = "USB unmount button";
> +			linux,code = <KEY_EJECTCD>;
> +			gpios = <&gpio0 27 1>;
> +		};
> +	};
> +
> +	gpio-leds {
> +		compatible = "gpio-leds";
> +		pinctrl-0 = <&pmx_leds>;
> +		pinctrl-names = "default";
> +
> +		blue-usb {

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check W=1` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).

> +			label = "dns320l:usb:blue";
> +			gpios = <&gpio0 25 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "usbport";
> +		};
> +
> +		orange-usb {
> +			label = "dns320l:usb:orange";
> +			gpios = <&gpio0 26 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		orange-l-hdd {
> +			label = "dns320l:orange:l_hdd";
> +			gpios = <&gpio0 23 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		orange-r-hdd {
> +			label = "dns320l:orange:r_hdd";
> +			gpios = <&gpio0 22 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	ocp@f1000000 {

Why you are not overriding by label/phandle?

> +		sata@80000 {
> +			status = "okay";
> +			nr-ports = <2>;
> +		};
> +
> +		serial@12000 {
> +			status = "okay";
> +		};
> +
> +		serial@12100 {
> +			pinctrl-0 = <&pmx_uart1>;
> +			pinctrl-names = "default";
> +			status = "okay";
> +		};
> +	};
> +
> +	regulators {

No, there is no such node/bus. Drop

> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		pinctrl-0 = <&pmx_power_sata>;
> +		pinctrl-names = "default";
> +
> +		sata_power: regulator@1 {
> +			compatible = "regulator-fixed";
> +			reg = <1>;
> +			regulator-name = "SATA Power";
> +			regulator-min-microvolt = <5000000>;
> +			regulator-max-microvolt = <5000000>;
> +			enable-active-high;
> +			regulator-always-on;
> +			regulator-boot-on;
> +			gpio = <&gpio0 24 0>;
> +		};
> +	};
> +};
> +


Best regards,
Krzysztof


