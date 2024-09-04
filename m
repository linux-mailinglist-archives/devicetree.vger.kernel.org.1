Return-Path: <devicetree+bounces-99769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D0C96B2A0
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 09:16:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75B391F2733A
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 07:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A56C14A084;
	Wed,  4 Sep 2024 07:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="WT8qZvdn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D1A1474A2
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 07:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725434100; cv=none; b=r1sFzCCKAPSHkGf2wCVUF6MflHiIK5ZIVxa2AL3gFGzYorRGFvJJDfk8FWaxRrxbGNzNt6AuqaFiGEnOJ+2sra4i4JsV4e90O0G7KpQAPQHjpTwlB+YtFBkMexGFBTWgwRfMAtCWfZmzIgtPzEJ3I80bjoBgpCx0S/vIySr4lm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725434100; c=relaxed/simple;
	bh=o3+i6VijhQI/C3ZHT+IkAStaXhscxjYLm+nTNfj2oGI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=LdLFlSw1YtOZlRamUweYruKpnpHZQvelS/nY7rQv9i2LResFbZK/62S+MZulEbefuaerI1JT0+0+PfPbVohGoRhZKOFsvlZvUC/1ksojmy8myr9ZKeqb4FU+u9QGZ2QyO5LddwT8aocF7X2Y/ZcCWLtKMgro/PUc+mr4T/mbBhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=WT8qZvdn; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5353d0b7463so10470793e87.3
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 00:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725434095; x=1726038895; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fp/PtCfva4IJ1IBo8o2Ryr9AcexMRU5Zb2e8o9n4GXo=;
        b=WT8qZvdnjBei+9hViu8brHnbWEG4X/ffId4c87Wn9yuoOlBiGGTmzd0xWazoEaDdnf
         BT4A3pzQXAE+MIEQ5m3Hs+yqgG895WIb2bbd11XI926tukxXAOJkPJVkmnnul4xE3o7O
         fKc4nhj3+ObnXfwPhUpem8bJEgR8oIykq7sgiuINrio3AWl7zDGw/amf3GN0FN0B/jnH
         mVzI3bKFLmWs2eM2eq/44RVVAf1Ay+zRp2SMfdYFtelQPKQf4XZqeQiV5GK0amPiBjBP
         3wV3IVdQC8nI24MICJTu63cAZH5g94QhI0DVX5Pz6a0L+NP17fxyDqU64W4I9DYrxsEA
         x0yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725434095; x=1726038895;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fp/PtCfva4IJ1IBo8o2Ryr9AcexMRU5Zb2e8o9n4GXo=;
        b=sO5A2+Y0//UXHVRBR73si9AugC28PrxaX9Bq6SihJ6wfkj0o9Vk4J9eDSWieniNRDW
         jsxCwyXh1A+ZFuSJQLAWdeSOblQqp6G9pXV8YnJadLmT/LjeAtBvMWanS5BPhV+ioycf
         iCphnZbLJyAb2KxAhm0QImtZibHjfNxFxZpyBN8M+xsPr3DmyiaIalnWTmT2xulkoX9m
         LYSNls8W9oBx3phS54CND6PBYEVQz6cvkpWe0+3K7DnHvuJgIHY6DrDZrAYOf4r59u0N
         nv5QKfYoh0nMWwGJ1/W76cAAUZHW2rc+KT1YWVh414BEUAABV10+pjWViiiZ31sxzHt9
         YUoQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1wJCgNvsx9FJ1jYtO648E7yE2BxlbMWl/gqiojjxfvcQRouKFkTvUSlY3ZSWYqdKP/YOPYlJkvwD/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9mB7/dpAgQS54X2nRiVd8/V7TDg/SGQBAUVG149yegNG5umsi
	Q3qy0z+5uhAScDMO+Hzs23/Lv4lYgw19fJadVq5573di+ZHdSAtLpF3IHHtaCd8=
X-Google-Smtp-Source: AGHT+IF9v/a/Wpo42S6jApwPEMk1Y1Y9LvjjK6yrMjvlXVE2CCb+RBqqCvJXH56nv7FwJF1V1d0Uvw==
X-Received: by 2002:a05:6512:3d0b:b0:52c:9877:71b7 with SMTP id 2adb3069b0e04-53546c0094fmr13732756e87.59.1725434094993;
        Wed, 04 Sep 2024 00:14:54 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8988feaf05sm772920666b.33.2024.09.04.00.14.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2024 00:14:54 -0700 (PDT)
Message-ID: <ee173169-7481-4415-b02b-b3740bc8c77d@tuxon.dev>
Date: Wed, 4 Sep 2024 10:14:53 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 12/12] ARM: dts: microchip: sam9x75_curiosity: add
 sam9x75 curiosity board
Content-Language: en-US
To: Varshini Rajendran <varshini.rajendran@microchip.com>,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240903063913.48307-1-varshini.rajendran@microchip.com>
 <20240903064438.49975-1-varshini.rajendran@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240903064438.49975-1-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 03.09.2024 09:44, Varshini Rajendran wrote:
> Add device tree file for sam9x75 curiosity board.
> 
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
> Changes in v7:
> 
> - Added child nodes to the tcb node.
> - Moved poweroff node to maintain alphabetic order.
> ---
>  arch/arm/boot/dts/microchip/Makefile          |   3 +
>  .../dts/microchip/at91-sam9x75_curiosity.dts  | 324 ++++++++++++++++++
>  2 files changed, 327 insertions(+)
>  create mode 100644 arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts
> 
> diff --git a/arch/arm/boot/dts/microchip/Makefile b/arch/arm/boot/dts/microchip/Makefile
> index 0c45c8d17468..470fe46433a9 100644
> --- a/arch/arm/boot/dts/microchip/Makefile
> +++ b/arch/arm/boot/dts/microchip/Makefile
> @@ -2,6 +2,7 @@
>  # Enables support for device-tree overlays
>  DTC_FLAGS_at91-sam9x60_curiosity := -@
>  DTC_FLAGS_at91-sam9x60ek := -@
> +DTC_FLAGS_at91-sam9x75_curiosity := -@
>  DTC_FLAGS_at91-sama5d27_som1_ek := -@
>  DTC_FLAGS_at91-sama5d27_wlsom1_ek := -@
>  DTC_FLAGS_at91-sama5d29_curiosity := -@
> @@ -60,6 +61,8 @@ dtb-$(CONFIG_SOC_AT91SAM9) += \
>  dtb-$(CONFIG_SOC_SAM9X60) += \
>  	at91-sam9x60_curiosity.dtb \
>  	at91-sam9x60ek.dtb
> +dtb-$(CONFIG_SOC_SAM9X7) += \
> +	at91-sam9x75_curiosity.dtb
>  dtb-$(CONFIG_SOC_SAM_V7) += \
>  	at91-kizbox2-2.dtb \
>  	at91-kizbox3-hs.dtb \
> diff --git a/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts b/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts
> new file mode 100644
> index 000000000000..1119f5d60d89
> --- /dev/null
> +++ b/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts
> @@ -0,0 +1,324 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * at91-sam9x75_curiosity.dts - Device Tree file for Microchip SAM9X75 Curiosity board
> + *
> + * Copyright (C) 2023 Microchip Technology Inc. and its subsidiaries
> + *
> + * Author: Varshini Rajendran <varshini.rajendran@microchip.com>
> + */
> +/dts-v1/;
> +#include "sam9x7.dtsi"
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	model = "Microchip SAM9X75 Curiosity";
> +	compatible = "microchip,sam9x75-curiosity", "microchip,sam9x7", "atmel,at91sam9";
> +
> +	aliases {
> +		i2c0 = &i2c6;
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
> +			label = "USER";
> +			gpios = <&pioC 9 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_0>;
> +			wakeup-source;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led_red: led-red {
> +			label = "red";
> +			gpios = <&pioC 14 GPIO_ACTIVE_HIGH>;
> +			pinctrl-0 = <&pinctrl_red_led_gpio_default>;
> +		};
> +
> +		led_green: led-green {
> +			label = "green";
> +			gpios = <&pioC 21 GPIO_ACTIVE_HIGH>;
> +			pinctrl-0 = <&pinctrl_green_led_gpio_default>;
> +		};
> +
> +		led_blue: led-blue {
> +			label = "blue";
> +			gpios = <&pioC 20 GPIO_ACTIVE_HIGH>;
> +			pinctrl-0 = <&pinctrl_blue_led_gpio_default>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +
> +	memory@20000000 {
> +		reg = <0x20000000 0x10000000>;
> +		device_type = "memory";
> +	};
> +};
> +
> +&classd {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_classd_default>;
> +	atmel,pwm-type = "diff";
> +	atmel,non-overlap-time = <10>;
> +	status = "okay";
> +};
> +
> +&dbgu {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_dbgu_default>;
> +	status = "okay";
> +};
> +
> +&dma0 {
> +	status = "okay";
> +};
> +
> +&flx6 {
> +	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
> +	status = "okay";
> +};
> +
> +&i2c6 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flx6_default>;
> +	i2c-analog-filter;
> +	i2c-digital-filter;
> +	i2c-digital-filter-width-ns = <35>;
> +	status = "okay";
> +
> +	pmic@5b {
> +		compatible = "microchip,mcp16502";
> +		reg = <0x5b>;
> +
> +		regulators {
> +			vdd_3v3: VDD_IO {
> +				regulator-name = "VDD_IO";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-initial-mode = <2>;
> +				regulator-allowed-modes = <2>, <4>;
> +				regulator-always-on;
> +
> +				regulator-state-standby {
> +					regulator-on-in-suspend;
> +					regulator-mode = <4>;
> +				};
> +
> +				regulator-state-mem {
> +					regulator-mode = <4>;
> +				};
> +			};
> +
> +			vddioddr: VDD_DDR {
> +				regulator-name = "VDD_DDR";
> +				regulator-min-microvolt = <1350000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-initial-mode = <2>;
> +				regulator-allowed-modes = <2>, <4>;
> +				regulator-always-on;
> +
> +				regulator-state-standby {
> +					regulator-on-in-suspend;
> +					regulator-mode = <4>;
> +				};
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-mode = <4>;
> +				};
> +			};
> +
> +			vddcore: VDD_CORE {
> +				regulator-name = "VDD_CORE";
> +				regulator-min-microvolt = <1150000>;
> +				regulator-max-microvolt = <1150000>;
> +				regulator-initial-mode = <2>;
> +				regulator-allowed-modes = <2>, <4>;
> +				regulator-always-on;
> +
> +				regulator-state-standby {
> +					regulator-on-in-suspend;
> +					regulator-mode = <4>;
> +				};
> +
> +				regulator-state-mem {
> +					regulator-mode = <4>;
> +				};
> +			};
> +
> +			dcdc4: VDD_OTHER {
> +				regulator-name = "VDD_OTHER";
> +				regulator-min-microvolt = <1150000>;
> +				regulator-max-microvolt = <1150000>;
> +				regulator-initial-mode = <2>;
> +				regulator-allowed-modes = <2>, <4>;
> +				regulator-ramp-delay = <3125>;
> +				regulator-always-on;
> +
> +				regulator-state-standby {
> +					regulator-on-in-suspend;
> +					regulator-mode = <4>;
> +				};
> +
> +				regulator-state-mem {
> +					regulator-mode = <4>;
> +				};
> +			};
> +
> +			vldo1: LDO1 {
> +				regulator-name = "LDO1";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +
> +				regulator-state-standby {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vldo2: LDO2 {
> +				regulator-name = "LDO2";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-state-standby {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&i2s {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2s_default>;
> +	#sound-dai-cells = <0>;
> +	status = "okay";
> +};
> +
> +&main_xtal {
> +	clock-frequency = <24000000>;
> +};
> +
> +&pinctrl {
> +	classd {
> +		pinctrl_classd_default: classd-default {
> +			atmel,pins =
> +				<AT91_PIOA 18 AT91_PERIPH_C AT91_PINCTRL_PULL_UP>,
> +				<AT91_PIOA 19 AT91_PERIPH_C AT91_PINCTRL_PULL_DOWN>;
> +		};
> +	};
> +
> +	dbgu {
> +		pinctrl_dbgu_default: dbgu-default {
> +			atmel,pins = <AT91_PIOA 26 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>,
> +				     <AT91_PIOA 27 AT91_PERIPH_A AT91_PINCTRL_NONE>;
> +		};
> +	};
> +
> +	flexcom {
> +		pinctrl_flx6_default: flx6-default {
> +			atmel,pins =
> +				<AT91_PIOA 24 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>,
> +				<AT91_PIOA 25 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
> +		};
> +	};
> +
> +	gpio-keys {
> +		pinctrl_key_gpio_default: key-gpio-default {
> +			atmel,pins = <AT91_PIOC 9 AT91_PERIPH_GPIO AT91_PINCTRL_NONE>;
> +		};
> +	};
> +
> +	i2s {
> +		pinctrl_i2s_default: i2s-default {
> +			atmel,pins =
> +				<AT91_PIOB 26 AT91_PERIPH_D AT91_PINCTRL_NONE>,		/* I2SCK */
> +				<AT91_PIOB 15 AT91_PERIPH_D AT91_PINCTRL_NONE>,		/* I2SWS */
> +				<AT91_PIOB 16 AT91_PERIPH_D AT91_PINCTRL_NONE>,		/* I2SDIN */
> +				<AT91_PIOB 17 AT91_PERIPH_D AT91_PINCTRL_NONE>,		/* I2SDOUT */
> +				<AT91_PIOB 25 AT91_PERIPH_D AT91_PINCTRL_NONE>;		/* I2SMCK */
> +		};
> +	};
> +
> +	leds {
> +		pinctrl_red_led_gpio_default: red-led-gpio-default {
> +			atmel,pins = <AT91_PIOC 14 AT91_PERIPH_GPIO AT91_PINCTRL_NONE>;
> +		};
> +		pinctrl_green_led_gpio_default: green-led-gpio-default {
> +			atmel,pins = <AT91_PIOC 21 AT91_PERIPH_GPIO AT91_PINCTRL_NONE>;
> +		};
> +		pinctrl_blue_led_gpio_default: blue-led-gpio-default {
> +			atmel,pins = <AT91_PIOC 20 AT91_PERIPH_GPIO AT91_PINCTRL_NONE>;
> +		};
> +	};
> +
> +	sdmmc0 {
> +		pinctrl_sdmmc0_default: sdmmc0-default {
> +			atmel,pins =
> +				<AT91_PIOA 2 AT91_PERIPH_A (AT91_PINCTRL_DRIVE_STRENGTH_HI | AT91_PINCTRL_SLEWRATE_ENA)>,				/* PA2 CK  periph A with pullup */
> +				<AT91_PIOA 1 AT91_PERIPH_A (AT91_PINCTRL_PULL_UP | AT91_PINCTRL_DRIVE_STRENGTH_HI | AT91_PINCTRL_SLEWRATE_ENA)>,	/* PA1 CMD periph A with pullup */
> +				<AT91_PIOA 0 AT91_PERIPH_A (AT91_PINCTRL_PULL_UP | AT91_PINCTRL_DRIVE_STRENGTH_HI | AT91_PINCTRL_SLEWRATE_ENA)>,	/* PA0 DAT0 periph A */
> +				<AT91_PIOA 3 AT91_PERIPH_A (AT91_PINCTRL_PULL_UP | AT91_PINCTRL_DRIVE_STRENGTH_HI | AT91_PINCTRL_SLEWRATE_ENA)>,	/* PA3 DAT1 periph A with pullup */
> +				<AT91_PIOA 4 AT91_PERIPH_A (AT91_PINCTRL_PULL_UP | AT91_PINCTRL_DRIVE_STRENGTH_HI | AT91_PINCTRL_SLEWRATE_ENA)>,	/* PA4 DAT2 periph A with pullup */
> +				<AT91_PIOA 5 AT91_PERIPH_A (AT91_PINCTRL_PULL_UP | AT91_PINCTRL_DRIVE_STRENGTH_HI | AT91_PINCTRL_SLEWRATE_ENA)>;	/* PA5 DAT3 periph A with pullup */
> +		};
> +	};
> +}; /* pinctrl */
> +
> +&poweroff {
> +	debounce-delay-us = <976>;
> +	status = "okay";
> +
> +	input@0 {
> +		reg = <0>;
> +	};
> +};
> +
> +&rtt {
> +	atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
> +};
> +
> +&sdmmc0 {
> +	bus-width = <4>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_sdmmc0_default>;
> +	cd-gpios = <&pioA 23 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	status = "okay";
> +};
> +
> +&slow_xtal {
> +	clock-frequency = <32768>;
> +};
> +
> +&tcb {
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
> +&watchdog {
> +	status = "okay";
> +};

