Return-Path: <devicetree+bounces-72815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE7B8FD0DF
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 16:33:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 899531F22720
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 14:33:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 889DA17559;
	Wed,  5 Jun 2024 14:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKLlpN9V"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B1410A0D
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 14:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717597994; cv=none; b=QyNi2UJBcdXUlaQ3eocDMKKGLtb82jP79v1OiHvBwBQkmcSOpBEalBDghaNm8oP9BbKo5DisJ6b1rwscxulhtf4EBCoYpAVT5CDiNmxwYYUhveGajIC62uIsQyAUGwGrTIKslTDuCIg2GTjC74EpTleUbSZlZpEfTWSXMUnU0YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717597994; c=relaxed/simple;
	bh=uUSyFKuEIdOY3gfz57hERneD3QkWLR67PUr59QhibqY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pTPjc0fV5Vym1Z0dsIT2Vw1Ft3uOhnBauaECqCqSwn4XCkbk430mjgKu/uaiJ8LD9+YgHGys7Hh4XSqU6upRfb8nbfMk3wksNm58XU9h9kT9l8xkQ6WyvFETo0ryoaYwkKOVozSqrSBn56TQPHNjC//EXejQU41+3sTdY3QntWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKLlpN9V; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BB58C2BD11;
	Wed,  5 Jun 2024 14:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717597993;
	bh=uUSyFKuEIdOY3gfz57hERneD3QkWLR67PUr59QhibqY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=dKLlpN9V1CCdqSYLubXzKMzyLyD0p/Hlno4a8cGW6cQvdM6ah2hfoYZ6ZhOW4LC3p
	 GopZoVa14+MHjSil5PYS15f28B0OSf4SZQMjOLR2deWHrZJNdWFIWG4xtdH5yGBIiT
	 3uncR4T85r6oOsU8FnttUhuzwK1M8NJr4VkE3cCfdsqg5Xu4gR+jRUeHlJvT7LNZRM
	 QyB9FGAU3d+BgiQ2DNGmNy/zXeHOLCZe1rtfC93TbGqeWCZxUwZM6hnn/EPHnrgwUx
	 q/DJmATQ/+o4mwgxRQ6SpjXL3+SXIo2ChOVqU2YN+B6mlz8mGGdYlzSLA8kIvD4sj9
	 PiRHaFcF/045g==
Message-ID: <bef8dd3d-a774-467d-b66f-4881f3845dd6@kernel.org>
Date: Wed, 5 Jun 2024 16:33:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ARM: dts: socfpga: Add support for Terasic DE1-SOC
 board
To: Florian Vaussard <florian.vaussard@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20240605083321.1211198-1-florian.vaussard@gmail.com>
 <20240605083321.1211198-3-florian.vaussard@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240605083321.1211198-3-florian.vaussard@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/06/2024 10:33, Florian Vaussard wrote:
> Compared to Terasic SoCKit, here are some of the notable differences
> on the HPS side:
> - Only 1 user LED and 1 user KEY
> - The QSPI Flash is not populated
> - The ADXL345 accelerometer is on I2C0 instead of I2C1
> 
> Tested to be working:
> - LED / KEY
> - Ethernet
> - Both USB Host ports
> - SD card
> - ADXL345 accelerometer
> 
> Signed-off-by: Florian Vaussard <florian.vaussard@gmail.com>
> ---
>  arch/arm/boot/dts/intel/socfpga/Makefile      |   1 +
>  .../socfpga/socfpga_cyclone5_de1_soc.dts      | 106 ++++++++++++++++++
>  2 files changed, 107 insertions(+)
>  create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts
> 
> diff --git a/arch/arm/boot/dts/intel/socfpga/Makefile b/arch/arm/boot/dts/intel/socfpga/Makefile
> index c467828aeb4b..1d5140b238da 100644
> --- a/arch/arm/boot/dts/intel/socfpga/Makefile
> +++ b/arch/arm/boot/dts/intel/socfpga/Makefile
> @@ -10,6 +10,7 @@ dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += \
>  	socfpga_cyclone5_mcvevk.dtb \
>  	socfpga_cyclone5_socdk.dtb \
>  	socfpga_cyclone5_de0_nano_soc.dtb \
> +	socfpga_cyclone5_de1_soc.dtb \
>  	socfpga_cyclone5_sockit.dtb \
>  	socfpga_cyclone5_socrates.dtb \
>  	socfpga_cyclone5_sodia.dtb \
> diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts
> new file mode 100644
> index 000000000000..7d811be5f5a7
> --- /dev/null
> +++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de1_soc.dts
> @@ -0,0 +1,106 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2024 Florian Vaussard <florian.vaussard@gmail.com>
> + */
> +
> +#include "socfpga_cyclone5.dtsi"
> +
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	model = "Terasic DE1-SOC";
> +	compatible = "terasic,de1-soc", "altr,socfpga-cyclone5", "altr,socfpga";
> +
> +	chosen {
> +		bootargs = "earlyprintk";

That's debugging, not mainline. Drop bootargs.

> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	memory@0 {
> +		name = "memory";

Which binding defines this property?

> +		device_type = "memory";
> +		reg = <0x0 0x40000000>; /* 1GB */
> +	};
> +
> +	aliases {
> +		/* this allow the ethaddr uboot environmnet variable contents

Please use Linux coding style comments /* in separate line. Also, typos.

> +		 * to be added to the gmac1 device tree blob.
> +		 */
> +		ethernet0 = &gmac1;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		hps_led {

No underscores in node names.

> +			label = "hps:green:led";

Drop. Use function and color instead.

> +			gpios = <&portb 24 0>;	/* HPS_GPIO53 */
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		hps_key {

No underscores...

> +			label = "hps_key";
> +			gpios = <&portb 25 0>;	/* HPS_GPIO54 */
> +			linux,code = <BTN_0>;
> +		};
> +	};
> +
> +	regulator_3_3v: regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VCC3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +};
> +
> +&gmac1 {
> +	status = "okay";
> +	phy-mode = "rgmii";
> +
> +	rxd0-skew-ps = <0>;
> +	rxd1-skew-ps = <0>;
> +	rxd2-skew-ps = <0>;
> +	rxd3-skew-ps = <0>;
> +	txen-skew-ps = <0>;
> +	txc-skew-ps = <2600>;
> +	rxdv-skew-ps = <0>;
> +	rxc-skew-ps = <2000>;
> +};
> +
> +&gpio0 {	/* GPIO 0..29 */
> +	status = "okay";
> +};
> +
> +&gpio1 {	/* GPIO 30..57 */
> +	status = "okay";
> +};
> +
> +&gpio2 {	/* GPIO 58..66 (HLGPI 0..13 at offset 13) */
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	accel1: accelerometer@53 {
> +		compatible = "adi,adxl345";
> +		reg = <0x53>;
> +
> +		interrupt-parent = <&portc>;
> +		interrupts = <3 2>;
> +	};
> +};
> +
> +&mmc0 {
> +	vmmc-supply = <&regulator_3_3v>;
> +	vqmmc-supply = <&regulator_3_3v>;

That's a noop... Isn't this coming from a PMIC?

Best regards,
Krzysztof


