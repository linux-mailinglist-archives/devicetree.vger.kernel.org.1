Return-Path: <devicetree+bounces-41867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D500855B9D
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 08:25:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 96BAA1F21E68
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 07:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4E45D53F;
	Thu, 15 Feb 2024 07:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="EWckWs5N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BE34BA3F
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 07:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707981945; cv=none; b=hrsjPfzIpLCRHevqWRZH27G3EB/M/PGP+ac3zln6a+EhFOZo3+FY68KG1wJKxcz7iyLIbYn0UDa5ComJlBjdVu0JeUrwvzUp54aOr68oFonx7g4gMRZKL4ayt3xqVvfecLQuAUs35EkZWvrLfNHZXJgnLT63yqLJbMgiMDQlcwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707981945; c=relaxed/simple;
	bh=z698GAzx2SjZip44MgXj+QQQv6m+ThWhoR0dgUQId58=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=m56T4QCk8ZGON55cyPMRPC1z5WkkfI91zcZTedkjrxnW4tvhUwEFMCDZylcsTTxEZLvkKqPKfa2fuHBmni0G8M472pBgW72oNNr5SuQk3YUCzaO29CMQVpQA4aYV5HFPlf+ct0kg11Qzm8bfUH3HF0Bk24OPsy4Be7nsEyaPe9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=EWckWs5N; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-33cf91fc9easo271604f8f.0
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 23:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1707981942; x=1708586742; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=B5j39bQM+ZSv0KF1DL/osRnC1kF9C4R9FA/78T8kPLk=;
        b=EWckWs5N+q+dMeehC7cK9VlGyIQoSEXUGfq9kmKvxTthLs7SKmce1b5gWXN8C0AA6e
         pMIHDCZN4DsH7INKtiyuXQv1AJLTIdstU0sNp40TGwnj3ytPdPWqAeN4FeWcPgnhJ0Qr
         2QpM6vsR7qu6sC+xziSG8doViesqpHvxts9f3hPFFBQGCBMcoL3rU/l8yXKTWx2aiZ6u
         tA84job76bF+DIuQgjT5MmmRgi3xABrhzMCyOX4tzQBTuPy2DAlx8ZTBv5XQWgGkc3hW
         HBNUVj68hAFVibxyJfjQMlDm49Kv925fLkT0RmPXMtysb9iL1jf1kKdMozcoBOr6RuF9
         c40A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707981942; x=1708586742;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B5j39bQM+ZSv0KF1DL/osRnC1kF9C4R9FA/78T8kPLk=;
        b=ZgYXSGS8s/LriB81c7mffGz2Y79MN3jr8Q04i6EfFWiaR7LNR02HmWfXkqUhhO8bAG
         cr0EJ7T3WSDnxFqdavflf5ZzfJH3q0vD2TljzjJP3KXuualG92Y0SyL8iMuBbYYPlykw
         ONj036yPmHgGAoogOQifxMjuxqHf0GoeFYhmt1Zmit+shDzgJpgP3Svncj7HimnYkVfa
         HPWQoUC/jhveiVoj2DgiTZhLB6iBlUwnVHVnxen7QSXbmIUSdOcEDsFa8nLVzkXUe6te
         VZKXTkRHabekcvSS447lMTmqAYGzuars2GTXcW6X1Uq8MCbzDYVzuv10vhO7uwikkWLt
         Yd8w==
X-Forwarded-Encrypted: i=1; AJvYcCVGVRMVbLvCy1vy79PobUgbe43oLe8YvPvbVJuwFqFIlYvqBuwaJVp3zrGsYGPmtsdwS3r8JUaZZCSzHxXAW17GKNFDlZ9ffG7XLQ==
X-Gm-Message-State: AOJu0YwMKFZkTJiPPsaPCs/XUktmBn32Tsp6/osd6zVBfbeVgikaTh4U
	EZq42elEM42IieXAjGq4XFPz0GsoWvVzVAkKskniuaVitJLvaJ7qCNqmE9KsNhs=
X-Google-Smtp-Source: AGHT+IE09mK2YyrTjpuBmcTUYPOL3io/3JFYBM0zxy3mqIUUW7mApQMBN0LamYXevz9iEH0yXym0ig==
X-Received: by 2002:a5d:544f:0:b0:33c:dda0:769f with SMTP id w15-20020a5d544f000000b0033cdda0769fmr599580wrv.31.1707981941698;
        Wed, 14 Feb 2024 23:25:41 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id bj8-20020a0560001e0800b0033b3ca3a255sm872931wrb.19.2024.02.14.23.25.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Feb 2024 23:25:40 -0800 (PST)
Message-ID: <58fe3ecd-5aa4-4164-abc3-206e0d6ccb26@tuxon.dev>
Date: Thu, 15 Feb 2024 09:25:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: claudiu beznea <claudiu.beznea@tuxon.dev>
Subject: Re: [PATCH v2 3/3] ARM: dts: microchip: sama7g54_curiosity: Add
 initial device tree of the board
To: Mihai Sain <mihai.sain@microchip.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 andre.przywara@arm.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: cristian.birsan@microchip.com
References: <20240214080348.7540-1-mihai.sain@microchip.com>
 <20240214080348.7540-4-mihai.sain@microchip.com>
Content-Language: en-US
In-Reply-To: <20240214080348.7540-4-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 14.02.2024 10:03, Mihai Sain wrote:
> Add initial device tree of the SAMA7G54 Curiosity board.
> 
> Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
> ---
>  arch/arm/boot/dts/microchip/Makefile          |   4 +-
>  .../dts/microchip/at91-sama7g54_curiosity.dts | 487 ++++++++++++++++++
>  2 files changed, 490 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boot/dts/microchip/at91-sama7g54_curiosity.dts
> 
> diff --git a/arch/arm/boot/dts/microchip/Makefile b/arch/arm/boot/dts/microchip/Makefile
> index efde9546c8f4..29b2a788748f 100644
> --- a/arch/arm/boot/dts/microchip/Makefile
> +++ b/arch/arm/boot/dts/microchip/Makefile
> @@ -12,6 +12,7 @@ DTC_FLAGS_at91-sama5d3_eds := -@
>  DTC_FLAGS_at91-sama5d3_xplained := -@
>  DTC_FLAGS_at91-sama5d4_xplained := -@
>  DTC_FLAGS_at91-sama7g5ek := -@
> +DTC_FLAGS_at91-sama7g54_curiosity := -@

Alphanumerical sort, thus DTC_FLAGS_at91-sama7g54_curiosity comes before
DTC_FLAGS_at91-sama7g5ek

>  dtb-$(CONFIG_SOC_AT91RM9200) += \
>  	at91rm9200ek.dtb \
>  	mpa1600.dtb
> @@ -87,7 +88,8 @@ dtb-$(CONFIG_SOC_SAM_V7) += \
>  	at91-sama5d4ek.dtb \
>  	at91-vinco.dtb
>  dtb-$(CONFIG_SOC_SAMA7G5) += \
> -	at91-sama7g5ek.dtb
> +	at91-sama7g5ek.dtb \
> +	at91-sama7g54_curiosity.dtb

Same here.

>  
>  dtb-$(CONFIG_SOC_LAN966) += \
>  	lan966x-kontron-kswitch-d10-mmt-6g-2gs.dtb \
> diff --git a/arch/arm/boot/dts/microchip/at91-sama7g54_curiosity.dts b/arch/arm/boot/dts/microchip/at91-sama7g54_curiosity.dts
> new file mode 100644
> index 000000000000..a6504c3781f4
> --- /dev/null
> +++ b/arch/arm/boot/dts/microchip/at91-sama7g54_curiosity.dts
> @@ -0,0 +1,487 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * at91-sama7g54_curiosity.dts - Device Tree file for SAMA7G54 Curiosity Board
> + *
> + * Copyright (C) 2024 Microchip Technology Inc. and its subsidiaries
> + *
> + * Author: Mihai Sain <mihai.sain@microchip.com>
> + *
> + */
> +/dts-v1/;
> +#include "sama7g5-pinfunc.h"
> +#include "sama7g5.dtsi"
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/mfd/atmel-flexcom.h>
> +#include <dt-bindings/pinctrl/at91.h>
> +
> +/ {
> +	model = "Microchip SAMA7G54 Curiosity";
> +	compatible = "microchip,sama7g54-curiosity", "microchip,sama7g5", "microchip,sama7";
> +
> +	aliases {
> +		serial0 = &uart3;
> +		i2c0 = &i2c10;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_key_gpio_default>;
> +
> +		button-user {
> +			label = "user-button";
> +			gpios = <&pioA PIN_PD19 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_PROG1>;
> +			wakeup-source;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_led_gpio_default>;
> +
> +		led-red {
> +			color = <LED_COLOR_ID_RED>;
> +			function = LED_FUNCTION_POWER;
> +			gpios = <&pioA PIN_PD13 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +
> +		led-green {
> +			color = <LED_COLOR_ID_GREEN>;
> +			function = LED_FUNCTION_BOOT;
> +			gpios = <&pioA PIN_PD14 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +
> +		led-blue {
> +			color = <LED_COLOR_ID_BLUE>;
> +			function = LED_FUNCTION_CPU;
> +			gpios = <&pioA PIN_PB15 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +
> +	memory@60000000 {
> +		device_type = "memory";
> +		reg = <0x60000000 0x10000000>; // 256 MiB DDR3L-1066 16-bit
> +	};
> +};
> +
> +&adc {
> +	vddana-supply = <&vddout25>;
> +	vref-supply = <&vddout25>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_mikrobus1_an_default &pinctrl_mikrobus2_an_default>;
> +	status = "okay";
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&vddcpu>;
> +};
> +
> +&dma0 {
> +	status = "okay";
> +};
> +
> +&dma1 {
> +	status = "okay";
> +};
> +
> +&dma2 {
> +	status = "okay";
> +};
> +
> +&ebi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_nand_default>;
> +	status = "okay";
> +
> +	nand_controller: nand-controller {
> +		status = "okay";
> +
> +		nand@3 {
> +			reg = <0x3 0x0 0x800000>;
> +			atmel,rb = <0>;
> +			nand-bus-width = <8>;
> +			nand-ecc-mode = "hw";
> +			nand-ecc-strength = <8>;
> +			nand-ecc-step-size = <512>;
> +			nand-on-flash-bbt;
> +			label = "nand";
> +
> +			partitions {
> +				compatible = "fixed-partitions";
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +
> +				at91bootstrap@0 {
> +					label = "nand: at91bootstrap";
> +					reg = <0x0 0x40000>;
> +				};
> +
> +				bootloader@40000 {
> +					label = "nand: u-boot";
> +					reg = <0x40000 0x100000>;
> +				};
> +
> +				bootloaderenv@140000 {
> +					label = "nand: u-boot env";
> +					reg = <0x140000 0x40000>;
> +				};
> +
> +				dtb@180000 {
> +					label = "nand: device tree";
> +					reg = <0x180000 0x80000>;
> +				};
> +
> +				kernel@200000 {
> +					label = "nand: kernel";
> +					reg = <0x200000 0x600000>;
> +				};
> +
> +				rootfs@800000 {
> +					label = "nand: rootfs";
> +					reg = <0x800000 0x1f800000>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&flx3 {
> +	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_USART>;
> +	status = "okay";
> +
> +	uart3: serial@200 {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_flx3_default>;
> +		status = "okay";
> +	};
> +};
> +
> +&flx10 {
> +	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
> +	status = "okay";
> +
> +	i2c10: i2c@600 {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_flx10_default>;
> +		i2c-analog-filter;
> +		i2c-digital-filter;
> +		i2c-digital-filter-width-ns = <35>;
> +		status = "okay";
> +
> +		adc@1f {
> +			compatible = "microchip,pac1934";

There is no driver for this one in the upstream Linux and the compatible is
not documented. I would remove the node until the driver lands in mainline
Linux.

> +			reg = <0x1f>;
> +		};
> +
> +		eeprom@51 {
> +			compatible = "atmel,24c02";
> +			reg = <0x51>;
> +			pagesize = <16>;
> +			size = <256>;
> +			vcc-supply = <&vdd_3v3>;
> +		};
> +
> +		pmic@5b {
> +			compatible = "microchip,mcp16502";
> +			reg = <0x5b>;
> +
> +			regulators {
> +				vdd_3v3: VDD_IO {
> +					regulator-name = "VDD_IO";
> +					regulator-min-microvolt = <3300000>;
> +					regulator-max-microvolt = <3300000>;
> +					regulator-initial-mode = <2>;
> +					regulator-allowed-modes = <2>, <4>;
> +					regulator-always-on;
> +
> +					regulator-state-standby {
> +						regulator-on-in-suspend;
> +						regulator-suspend-microvolt = <3300000>;
> +						regulator-mode = <4>;
> +					};
> +
> +					regulator-state-mem {
> +						regulator-off-in-suspend;
> +						regulator-mode = <4>;
> +					};
> +				};
> +
> +				vddioddr: VDD_DDR {
> +					regulator-name = "VDD_DDR";
> +					regulator-min-microvolt = <1350000>;
> +					regulator-max-microvolt = <1350000>;
> +					regulator-initial-mode = <2>;
> +					regulator-allowed-modes = <2>, <4>;
> +					regulator-always-on;
> +
> +					regulator-state-standby {
> +						regulator-on-in-suspend;
> +						regulator-suspend-microvolt = <1350000>;
> +						regulator-mode = <4>;
> +					};
> +
> +					regulator-state-mem {
> +						regulator-on-in-suspend;
> +						regulator-suspend-microvolt = <1350000>;
> +						regulator-mode = <4>;
> +					};
> +				};
> +
> +				vddcore: VDD_CORE {
> +					regulator-name = "VDD_CORE";
> +					regulator-min-microvolt = <1150000>;
> +					regulator-max-microvolt = <1150000>;
> +					regulator-initial-mode = <2>;
> +					regulator-allowed-modes = <2>, <4>;
> +					regulator-always-on;
> +
> +					regulator-state-standby {
> +						regulator-on-in-suspend;
> +						regulator-suspend-voltage = <1150000>;
> +						regulator-mode = <4>;
> +					};
> +
> +					regulator-state-mem {
> +						regulator-off-in-suspend;
> +						regulator-mode = <4>;
> +					};
> +				};
> +
> +				vddcpu: VDD_OTHER {
> +					regulator-name = "VDD_OTHER";
> +					regulator-min-microvolt = <1050000>;
> +					regulator-max-microvolt = <1250000>;
> +					regulator-initial-mode = <2>;
> +					regulator-allowed-modes = <2>, <4>;
> +					regulator-ramp-delay = <3125>;
> +					regulator-always-on;
> +
> +					regulator-state-standby {
> +						regulator-on-in-suspend;
> +						regulator-suspend-voltage = <1050000>;
> +						regulator-mode = <4>;
> +					};
> +
> +					regulator-state-mem {
> +						regulator-off-in-suspend;
> +						regulator-mode = <4>;
> +					};
> +				};
> +
> +				vldo1: LDO1 {
> +					regulator-name = "LDO1";
> +					regulator-min-microvolt = <1800000>;
> +					regulator-max-microvolt = <1800000>;
> +					regulator-always-on;
> +
> +					regulator-state-standby {
> +						regulator-suspend-voltage = <1800000>;
> +						regulator-on-in-suspend;
> +					};
> +
> +					regulator-state-mem {
> +						regulator-off-in-suspend;
> +					};
> +				};
> +
> +				vldo2: LDO2 {
> +					regulator-name = "LDO2";
> +					regulator-min-microvolt = <3300000>;
> +					regulator-max-microvolt = <3300000>;
> +					regulator-always-on;
> +
> +					regulator-state-standby {
> +						regulator-suspend-voltage = <3300000>;
> +						regulator-on-in-suspend;
> +					};
> +
> +					regulator-state-mem {
> +						regulator-off-in-suspend;
> +					};
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&main_xtal {
> +	clock-frequency = <24000000>;
> +};
> +
> +&qspi1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_qspi1_default>;
> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0x0>;
> +		spi-max-frequency = <100000000>;
> +		spi-tx-bus-width = <4>;
> +		spi-rx-bus-width = <4>;
> +		m25p,fast-read;
> +	};
> +};
> +
> +&pioA {
> +	pinctrl_flx3_default: flx3-default {
> +		pinmux = <PIN_PD16__FLEXCOM3_IO0>,
> +			 <PIN_PD17__FLEXCOM3_IO1>;
> +		bias-pull-up;
> +	};
> +
> +	pinctrl_flx10_default: flx10-default {
> +		pinmux = <PIN_PC30__FLEXCOM10_IO0>,
> +			 <PIN_PC31__FLEXCOM10_IO1>;
> +		bias-pull-up;
> +	};
> +
> +	pinctrl_key_gpio_default: key-gpio-default {
> +		pinmux = <PIN_PD19__GPIO>;
> +		bias-pull-up;
> +	};
> +
> +	pinctrl_led_gpio_default: led-gpio-default {
> +		pinmux = <PIN_PD13__GPIO>,
> +			 <PIN_PD14__GPIO>,
> +			 <PIN_PB15__GPIO>;
> +		bias-pull-up;
> +	};
> +
> +	pinctrl_mikrobus1_an_default: mikrobus1-an-default {
> +		pinmux = <PIN_PC15__GPIO>;
> +		bias-disable;
> +	};
> +
> +	pinctrl_mikrobus2_an_default: mikrobus2-an-default {
> +		pinmux = <PIN_PC13__GPIO>;
> +		bias-disable;
> +	};
> +
> +	pinctrl_nand_default: nand-default {
> +		pinmux = <PIN_PD9__D0>,
> +			 <PIN_PD10__D1>,
> +			 <PIN_PD11__D2>,
> +			 <PIN_PC21__D3>,
> +			 <PIN_PC22__D4>,
> +			 <PIN_PC23__D5>,
> +			 <PIN_PC24__D6>,
> +			 <PIN_PD2__D7>,
> +			 <PIN_PD3__NANDRDY>,
> +			 <PIN_PD4__NCS3_NANDCS>,
> +			 <PIN_PD5__NWE_NWR0_NANDWE>,
> +			 <PIN_PD6__NRD_NANDOE>,
> +			 <PIN_PD7__A21_NANDALE>,
> +			 <PIN_PD8__A22_NANDCLE>;
> +		bias-disable;
> +		slew-rate = <0>;
> +	};
> +
> +	pinctrl_qspi1_default: qspi1-default {
> +		pinmux = <PIN_PB22__QSPI1_IO3>,
> +			 <PIN_PB23__QSPI1_IO2>,
> +			 <PIN_PB24__QSPI1_IO1>,
> +			 <PIN_PB25__QSPI1_IO0>,
> +			 <PIN_PB26__QSPI1_CS>,
> +			 <PIN_PB27__QSPI1_SCK>;
> +		bias-pull-up;
> +		slew-rate = <0>;
> +	};
> +
> +	pinctrl_sdmmc0_default: sdmmc0-default {
> +		pinmux = <PIN_PA0__SDMMC0_CK>,
> +			 <PIN_PA1__SDMMC0_CMD>,
> +			 <PIN_PA2__SDMMC0_RSTN>,
> +			 <PIN_PA3__SDMMC0_DAT0>,
> +			 <PIN_PA4__SDMMC0_DAT1>,
> +			 <PIN_PA5__SDMMC0_DAT2>,
> +			 <PIN_PA6__SDMMC0_DAT3>;
> +		bias-pull-up;
> +		slew-rate = <0>;
> +	};
> +
> +	pinctrl_sdmmc1_default: sdmmc1-default {
> +		pinmux = <PIN_PB29__SDMMC1_CMD>,
> +			 <PIN_PB30__SDMMC1_CK>,
> +			 <PIN_PB31__SDMMC1_DAT0>,
> +			 <PIN_PC0__SDMMC1_DAT1>,
> +			 <PIN_PC1__SDMMC1_DAT2>,
> +			 <PIN_PC2__SDMMC1_DAT3>,
> +			 <PIN_PC4__SDMMC1_CD>;
> +		bias-pull-up;
> +		slew-rate = <0>;
> +	};
> +};
> +
> +&rtt {
> +	atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
> +};
> +
> +// M.2 slot for wireless card

Use C style comment instead /* */

> +&sdmmc0 {
> +	bus-width = <4>;
> +	cd-gpios = <&pioA 31 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	sdhci-caps-mask = <0x0 0x00200000>;
> +	vmmc-supply = <&vdd_3v3>;
> +	vqmmc-supply = <&vdd_3v3>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_sdmmc0_default>;
> +	status = "okay";
> +};
> +
> +// micro SD socket
> +&sdmmc1 {
> +	bus-width = <4>;
> +	disable-wp;
> +	sdhci-caps-mask = <0x0 0x00200000>;
> +	vmmc-supply = <&vdd_3v3>;
> +	vqmmc-supply = <&vdd_3v3>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_sdmmc1_default>;
> +	status = "okay";
> +};
> +
> +&slow_xtal {
> +	clock-frequency = <32768>;
> +};
> +
> +&shdwc {
> +	debounce-delay-us = <976>;
> +	status = "okay";
> +
> +	input@0 {
> +		reg = <0>;
> +	};
> +};
> +
> +&tcb0 {
> +	timer0: timer@0 {
> +		compatible = "atmel,tcb-timer";
> +		reg = <0>;
> +	};
> +
> +	timer1: timer@1 {
> +		compatible = "atmel,tcb-timer";
> +		reg = <1>;
> +	};
> +};
> +
> +&trng {
> +	status = "okay";
> +};
> +
> +&vddout25 {
> +	vin-supply = <&vdd_3v3>;
> +	status = "okay";
> +};

