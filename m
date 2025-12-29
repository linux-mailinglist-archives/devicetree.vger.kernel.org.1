Return-Path: <devicetree+bounces-250090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAB1CE6325
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 08:59:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8FCA13000939
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 07:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DEEA26738C;
	Mon, 29 Dec 2025 07:59:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgbr1.qq.com (smtpbgbr1.qq.com [54.207.19.206])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0371D9A5F
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 07:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.19.206
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766995186; cv=none; b=Kir8E9FTPZFaQaMXrlYnG9tS9peNjsdqvgkpIRr15dUj9XC+Vm6zkbX8rpAIPrGTOqoc9A+r99rREM+HK7DHnORCotRsO2jqu3Mt3vE3Rx3Wg8o4PM4B15i+kyC1ftC007u+BXKetWsh1OB86BtuPs1E/R76imki2E5Gh9yicqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766995186; c=relaxed/simple;
	bh=hPoeXbRzNZCysTQ5aMyX/1iYMZTo+XJF7LrQ8EMfRq4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AAyROTL3INZZXIzQRGKitzB0EANA35Zpw5p7BfyZWaZabCSK17pPwBKxb8pCN3E7lOe5tLoYmKa5BMOP9AnZ/tYtswiHyLix6ERcmClZnP7uwzppqJsL7sedWYkPf+MroQ6dYp7WpzQykd30+mKitn8xDI5EnMWFnDtFYrAPg/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.207.19.206
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip4t1766995102t04fb815c
X-QQ-Originating-IP: aX+gxg3+YMcTyAJHZj8K6KJO/EaqsqmjkAbqeYRXE7Q=
Received: from [IPV6:240f:10b:7440:1:3961:bf03 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 29 Dec 2025 15:58:19 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13615831732151771395
Message-ID: <695F691E743D4DEE+18cf202a-fd78-4b3a-9387-eef18c061f5d@radxa.com>
Date: Mon, 29 Dec 2025 16:58:19 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 3/3] arm64: dts: rockchip: Add Radxa CM3J on RPi CM4
 IO Board
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, kever.yang@rock-chips.com,
 jonas@kwiboo.se, michael.opdenacker@rootcommit.com, honyuenkwun@gmail.com,
 quentin.schulz@cherry.de, dsimic@manjaro.org, alchark@gmail.com,
 pbrobinson@gmail.com, ziyao@disroot.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251229073840.25516-1-naoki@radxa.com>
 <20251229073840.25516-3-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251229073840.25516-3-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NEDcVTmWjWOdhax4sen8UjI1gnikfAatErMeje1KTEubEQ8xKSCBAf7C
	Xym2CsNtjLhWLzOH2Ew9q6t9T3VeALcOrZTBuzBV8HUY9hBis6A5jnn9Akq9ZigPcZ9cHFr
	mmcbkvDpElzdTIf7toAPdnePIuj4/jAtwKaPVrcZuNXwpUTldgJAnm2yzczTsV8jpd9DYTX
	pLDVWXWkXaPklU4UAGzkqv1/JrmEzuM/e75Oxn3Knx6xn7DHBZNbC+DqSyFv+KcKw55I/Ne
	H/rYF2leKglp3fuwmWNtBRF+VKPcJDc1unYZoRfWwvj0ydT/Dotk6pWA6GeIWNTz+HXwh2W
	7CmuY/9LuJKM3D3IHN5SIZ9FX4k1arVPQg6hlFcMwwUnwLUKV4HEP3C6o/V2SowERE+8Vdv
	3OBbqbmunE521M1BnDR5Q7dJkm4qVUfwUrzdVgRndqVvJhBRBF7hW3yon8AJBxAnv/nchlh
	GfQRAB71UndsFYnvHPlguGX6qEzQquLArm84K2owcS/MgLllWiZMU7gxMBvxaotPk8wqgws
	7lB/uJuQvkUIWZVnYBiSWjLzVNYzYIm4hvEQJCWKHnlLWjwwdeffivLk01GUUPvE2hyks3j
	5Ac1DhZAdKF0sVs8XXFsMEsUeV2btTkKwSXX2GHfZITGX49IMVIW4nT3UrGtvcVnqkTuDgE
	/yBEVsFlOkPxH6nwpO0wZJMV8Xl1GUHP9J++lx5EdxJJDQtQYZqCEKycQ2VesXwjy1tKaT6
	0N4c9xbbiof2JmJzb+c7LcgjygtCApI+OasGCFDxe6oTLwX2kSveCUF+Sw6NRm0wK8GG4NT
	kVEB3ASYmPqtPRixk9gZ+NLntPESULsxVKjatVULXr7Z8bcb6PvS2QoZxaZHiaP8A4Ffc+C
	4HB05+mL0aP/lMT84WQH56rALiPT6e3EIx2HCxqNxIEJKl1c7uCjappVrgjNXXVj2GlVtjy
	c+kXXChZuCJjUPwPYBWzSLQXK5gpqKN+yIsVxKPnZnIRW8A9HauiSqp99pQyv3RrIH+HVEk
	Um0FB0R5yruyLAOgYba5NuyCVcraYcHYqz3JECRLfKdLcsoGHuBJznpEReJH94v4MjhLdvp
	g==
X-QQ-XMRINFO: OD9hHCdaPRBwH5bRRRw8tsiH4UAatJqXfg==
X-QQ-RECHKSPAM: 0

Hi all,

On 12/29/25 16:38, FUKAUMI Naoki wrote:
> The Raspberry Pi Compute Module 4 IO Board is an application board for
> the Compute Module 4. [1]
> 
> This patch adds support for the Radxa CM3J mounted on the RPi CM4 IO
> Board.
> 
> Specification:
> - 12V 5521 DC jack
> - 2x full-size HDMI 2.0 connectors (only HDMI0 is supported with CM3J)
> - Gigabit Ethernet RJ45 with PoE support
> - 2x USB 2.0 connectors, with header for two more connectors
> - Micro USB connector
> - microSD card socket
> - PCIe Gen 2 x1 socket
> - 12V 4-pin PWM fan connector
> - External power connector (+5V, +12V)
> - 2x MIPI DSI connectors
> - 2x MIPI CSI-2 connectors
> - 40-pin GPIO header
> - RTC with battery socket
> - Red (power) and green (heartbeat) LEDs
> 
> [1] https://datasheets.raspberrypi.com/cm4io/cm4io-datasheet.pdf
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>   .../rockchip/rk3568-radxa-cm3j-rpi-cm4.dts    | 204 ++++++++++++++++++
>   2 files changed, 205 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3j-rpi-cm4.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 3fdd1e4832e1..37150e920b01 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -148,6 +148,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-photonicat.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-qnap-ts233.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-qnap-ts433.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-cm3j-rpi-cm4.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-roc-pc.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3j-rpi-cm4.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3j-rpi-cm4.dts
> new file mode 100644
> index 000000000000..b91ac0ca854c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3j-rpi-cm4.dts
> @@ -0,0 +1,204 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2025 Radxa Computer (Shenzhen) Co., Ltd.
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rk3568-radxa-cm3j.dtsi"
> +
> +/ {
> +	model = "Radxa CM3J on RPi CM4 IO Board";
> +	compatible = "radxa,cm3j-rpi-cm4", "radxa,cm3j", "rockchip,rk3568";
> +
> +	aliases {
> +		ethernet0 = &gmac1;
> +		mmc1 = &sdmmc0;
> +		rtc0 = &pcf85063;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	hdmi-con {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_con_in: endpoint {
> +				remote-endpoint = <&hdmi_out_con>;
> +			};
> +		};
> +	};
> +
> +	leds-1 {
> +		compatible = "gpio-leds";
> +
> +		led-1 {
> +			color = <LED_COLOR_ID_RED>;
> +			default-state = "on";
> +			function = LED_FUNCTION_POWER;
> +			gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_LOW>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&npwr_led>;
> +		};
> +
> +		led-2 {
> +			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
> +			function = LED_FUNCTION_STATUS;
> +			gpios = <&gpio4 RK_PC6 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "heartbeat";
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&pi_nled_activity>;
> +		};
> +	};
> +
> +	dc12v: regulator-12v0 {

It's labeled as '+12v' in the schematic. Do you have any other 
suggestions for the name?

> +		compatible = "regulator-fixed";
> +		regulator-name = "dc12v";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +	};
> +
> +	dc3v3_pcie: regulator-3v3-2 {

It's labeled as '+3.3v' in the schematic. Do you have any other 
suggestions for the name?

> +		compatible = "regulator-fixed";
> +		regulator-name = "dc3v3_pcie";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&dc12v>;
> +	};
> +
> +	gpio_vref: regulator-3v3-3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "gpio_vref";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&dc3v3>;
> +	};
> +
> +	dc5v: regulator-5v0 {

It's labeled as '+5v' in the schematic. Do you have any other 
suggestions for the name?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> +		compatible = "regulator-fixed";
> +		regulator-name = "dc5v";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&dc12v>;
> +	};
> +};
> +
> +&combphy0 {
> +	status = "okay";
> +};
> +
> +&combphy2 {
> +	status = "okay";
> +};
> +
> +&gmac1 {
> +	status = "okay";
> +};
> +
> +&gpio0 {
> +	nextrst-hog {
> +		gpio-hog;
> +		/*
> +		 * GPIO_ACTIVE_LOW + output-low here means that the pin is set
> +		 * to high, because output-low decides the value pre-inversion.
> +		 */
> +		gpios = <RK_PC0 GPIO_ACTIVE_LOW>;
> +		line-name = "nEXTRST";
> +		output-low;
> +	};
> +};
> +
> +&hdmi {
> +	status = "okay";
> +};
> +
> +&hdmi_sound {
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	emc2301: fan-controller@2f {
> +		compatible = "microchip,emc2301", "microchip,emc2305";
> +		reg = <0x2f>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		#pwm-cells = <3>;
> +
> +		fan@0 {
> +			reg = <0x0>;
> +			pwms = <&emc2301 26000 0 1>;
> +			#cooling-cells = <2>;
> +		};
> +	};
> +
> +	pcf85063: rtc@51 {
> +		compatible = "nxp,pcf85063a";
> +		reg = <0x51>;
> +		wakeup-source;
> +	};
> +};
> +
> +&i2s0_8ch {
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	leds {
> +		npwr_led: npwr-led {
> +			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		pi_nled_activity: pi-nled-activity {
> +			rockchip,pins = <4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +};
> +
> +&pcie2x1 {
> +	vpcie3v3-supply = <&dc3v3_pcie>;
> +	status = "okay";
> +};
> +
> +&sdmmc0 {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	broken-cd;
> +	disable-wp;
> +	no-mmc;
> +	no-sdio;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd>;
> +	vmmc-supply = <&dc3v3>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +
> +&usb2phy0 {
> +	status = "okay";
> +};
> +
> +&usb2phy0_otg {
> +	status = "okay";
> +};
> +
> +&usb_host0_xhci {
> +	status = "okay";
> +};



