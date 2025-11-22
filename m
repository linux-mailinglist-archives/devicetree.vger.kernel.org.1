Return-Path: <devicetree+bounces-241380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E4ECFC7D2AC
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 15:22:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6ADEE34437E
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 14:22:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32C7B26D4D4;
	Sat, 22 Nov 2025 14:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="qk3n0YdF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C15B1FF7BC
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 14:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763821325; cv=none; b=QwTxNsrHpxYgJFZMQodtvGkYnrJ3h8aBE4Wk7X3fR5+NVQ4vVIZ0ceAZpteQtM3KO+NgzS//u65jmN1hB7r6aWnPg1LDC6DNHM1zvvhnUOCg5EO1WX498bIrGYTHKyCwKxUwSP9XDWE3q5siBJ5//gdPgA84aF46bS2PUoV0s98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763821325; c=relaxed/simple;
	bh=tO5oe7rWr9zQc8BnWQYRfSt6+lA+TVyiy/LuODPJmhQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=niYxkfr55IgSC0Q6W+D7U+3htFPrOQ507KgPh8lEEOj0o3j/WreOE5epg0csFJc2OQ3PACl+frazX/NybxILuBEkByfjMrCoq7ShyK6laiFKAziIi+EEcHiVe3+y9/4fZ9/r/15I6PbnbZMQzYOm6r2QJvR8LvKuveR56wI233c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=qk3n0YdF; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42b31507ed8so2527170f8f.1
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 06:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1763821321; x=1764426121; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CbgH1togCEu70x2vN5bqkQ02nuE6gEO0wQ/tYHMUFhY=;
        b=qk3n0YdFCn+Klrz5dkCNZ5t7tbJVvMQIJhn0TXiruPcUt19TBjnpLYATz+6xhb/oWE
         /4O4twD8GpgoFPDDIchIzW2OI4JwsilwksBMmVVMpRojCpyCYNStxp59gk0AQEyfamSc
         5r+tyhwt6gXmiQd8AtrleBCpjdUZH+ZGtX1GGPQZQoOe4ixxn0vHeXI2zQ8+NEEBUY9Y
         jz5WmJzvY+uELPsV4IfmwzSmXRQIBTAxMoHtGU6d15JjnPC9jwtPeK0MXP0jPWiUiyYD
         XMsVENeoei+7JtOeUhuAH4IlSw6PuyajTd4pEozGyWUjNqQUKgAPr08h3NoryCyQu6X/
         bcIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763821321; x=1764426121;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CbgH1togCEu70x2vN5bqkQ02nuE6gEO0wQ/tYHMUFhY=;
        b=Dbh8MB812p3PG/1jjv53zQ5re5pm6if4wRF88ONNCqZAJTas8rVoO6XHyUYBKPSCXg
         Ytbr64ZLfECrPaej3m0iBPZdX7jt3ewkTKat7APr7q24DmYr8izTKC1QO7UpQWBaGr52
         Jmo8jKiv0CtOESE9Qt+VtAi6lQzOqeURO33waizxW+Xvzj5ag/Dz1xezgPuCBZw++6FQ
         kWzHemRaXpK6fv3cbMTb42QR811BXf8aWRIcVEDrKbG5xHXm8BWvVSm0Ya7LLfCo5nWO
         i3/NoMgvOTzQVmyiTm4JFv5ArasSyAK1Vb6EkNGA6docDIp44KyCQMKl1n41MCgAjFfr
         MCNg==
X-Gm-Message-State: AOJu0YyjvYOiB/89b8F39lbx3ZwenmBzYvpvqZNbjpHpNKikZ0X87LFR
	xWWwuXlhcrirukgAw4DENoHRtpy1fLy0HDo1sBcFa5oZJuYH5lxfioHAZHkOiHubspw=
X-Gm-Gg: ASbGnctvdMUExut2aQ2z3pfXyF62+AMbc2VZu7dQp4lhIGrtlYL+xTh/ih3aF9BF41M
	na3vCeB67XBA0Lb0WTjNub2DMMmdlPubIT8o/4Mt94rQaVk6vopyx3Busd3cm9Hza6L7V3a1Sam
	H4PrEDoZZoQoyMJ+PH+9NRXM+YUsy/6VgfFh+AbKG6AnW9nHbGXZrK9Lg623gsdjerW7sOe4+w0
	kvkSQhQStwe/skZ1Ycx/0/PGtQzebC2NfZYLsXQlW1Y264TAZNMII3RhuXXAhtoX8V2I2kOMOJZ
	QmEf/h0OE4vGG5DLylIfE8/8kp/cKLGpcEB26KTDFpCMkHstUNLGIAmdJi4uPNz2bmg2zijprCv
	TquL2gm9ad7xrSCSsXAPb9BNBKEZ1VSKvpluNo8LPjEBu3rvyHBTVOgk9Uo/S1I0M37HnR2rrBO
	Z6b+6Td5vsLYA3uCBA5Hs=
X-Google-Smtp-Source: AGHT+IFqel5FKG4mPclsUJOqrx9rHT/z6E4W3n3TtUFun9s++jfXNrwVrDGfd3VnkelnXn+GP4CMhg==
X-Received: by 2002:a05:6000:40df:b0:42b:40df:2338 with SMTP id ffacd0b85a97d-42cc1d22c88mr6452923f8f.52.1763821320827;
        Sat, 22 Nov 2025 06:22:00 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fa3592sm16341540f8f.21.2025.11.22.06.21.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Nov 2025 06:22:00 -0800 (PST)
Message-ID: <0d21cf40-3614-48f4-86e0-69c7a87458e9@tuxon.dev>
Date: Sat, 22 Nov 2025 16:21:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ARM: dts: Add support for pcb8385
To: Horatiu Vultur <horatiu.vultur@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, wsa+renesas@sang-engineering.com,
 romain.sioen@microchip.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251117125709.102013-1-horatiu.vultur@microchip.com>
 <20251117125709.102013-3-horatiu.vultur@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20251117125709.102013-3-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Horatiu,

On 11/17/25 14:57, Horatiu Vultur wrote:
> Add basic support for pcb8385 [1]. It is a modular board which allows
> to add different daughter cards on which there are different PHYs.
> This adds support for UART, LEDs and I2C.
> 
> [1] https://www.microchip.com/en-us/development-tool/ev83e85a
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  arch/arm/boot/dts/microchip/Makefile          |   3 +-
>  .../boot/dts/microchip/lan966x-pcb8385.dts    | 137 ++++++++++++++++++
>  2 files changed, 139 insertions(+), 1 deletion(-)
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
> index 0000000000000..f4817cee93436
> --- /dev/null
> +++ b/arch/arm/boot/dts/microchip/lan966x-pcb8385.dts
> @@ -0,0 +1,137 @@
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
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	aliases {
> +		serial0 = &usart3;
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
> +			linux,default-trigger = "e200413c.mdio-mii:01:link";
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
> +			linux,default-trigger = "e200413c.mdio-mii:02:link";
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
> +&gpio {
> +	fc0_b_pins: fc0-b-pins {
> +		/* SCL, SDA */
> +		pins = "GPIO_25", "GPIO_26";
> +		function = "fc0_b";
> +	};
> +
> +	fc3_b_pins: fc3-b-pins {
> +		/* RX, TX */
> +		pins = "GPIO_52", "GPIO_53";
> +		function = "fc3_b";
> +	};
> +
> +	sgpio_a_pins: sgpio-a-pins {
> +		/* SCK, D0, D1, LD */
> +		pins = "GPIO_32", "GPIO_33", "GPIO_34", "GPIO_35";
> +		function = "sgpio_a";
> +	};
> +};
> +
> +&flx0 {

This would go after aes node to have them alphanumerically sorted. I can
handled it while applying, if any.

> +	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
> +	status = "okay";
> +
> +	i2c0: i2c@600 {
> +		pinctrl-0 = <&fc0_b_pins>;
> +		pinctrl-names = "default";
> +		dmas = <0>, <0>;
> +		i2c-analog-filter;
> +		i2c-digital-filter;
> +		i2c-digital-filter-width-ns = <35>;
> +		i2c-sda-hold-time-ns = <1500>;
> +		status = "okay";
> +	};
> +};
> +
> +&flx3 {
> +	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_USART>;
> +	status = "okay";
> +
> +	usart3: serial@200 {
> +		pinctrl-0 = <&fc3_b_pins>;
> +		pinctrl-names = "default";
> +		status = "okay";
> +	};
> +};
> +
> +&i2c0 {
> +	eeprom@54 {
> +		compatible = "atmel,24c01";
> +		reg = <0x54>;
> +		status = "okay";
> +	};
> +
> +	eeprom@55 {
> +		compatible = "atmel,24c01";
> +		reg = <0x55>;
> +		status = "okay";
> +	};

Any reason for not keeping these above under "i2c0: i2c@600 {" ?

Thank you,
Claudiu

> +};
> +
> +&sgpio {
> +	pinctrl-0 = <&sgpio_a_pins>;
> +	pinctrl-names = "default";
> +	microchip,sgpio-port-ranges = <0 3>;
> +	status = "okay";
> +
> +	gpio@0 {
> +		ngpios = <64>;
> +	};
> +	gpio@1 {
> +		ngpios = <64>;
> +	};
> +};


