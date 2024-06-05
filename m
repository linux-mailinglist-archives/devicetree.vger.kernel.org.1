Return-Path: <devicetree+bounces-72665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FBF8FC7B6
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 11:25:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C76831F224A4
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 09:25:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A00818FC91;
	Wed,  5 Jun 2024 09:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="dNqp4zeR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83E2E18FC68
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 09:24:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717579447; cv=none; b=N+TwchMJFFO8C8J1/6hpG3SPlBoG5qetAuyTqB8hIlYLgwLKJ5rpZZnW6zRx3I9Q7kftgI0hekECiJl/Ov3e6jLzWyA5+YNxH+dj6w2HyvgUzam6i7RXGOUP0C6KRlcwNPbIvkZxfc1BarunOr5jEN19HiIaCoYJ08bID1K5sbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717579447; c=relaxed/simple;
	bh=pVMxbSLYqDywCC+fdoquGKmtAVjku0Fzk5xp6l7Ka98=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=bn9iLZoldu445tHwqCMc+p470y5m+1iS9zDictByqvShJvQFhYwoPQznX4bEN7gusr4IEQ1pTOZHT0MnQSsabmpREkRvCWoBvonmG8+tiosNMXQsFLg0r5kPi4hiVPBzx4zyp1ZoNDl8lm/33LeYta67sxfq7eR4RI9+IBAQWik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=dNqp4zeR; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4557265T011652;
	Wed, 5 Jun 2024 11:23:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	jLhTMIpdwDTlQdSSopIfUG2eteqgbVsJwA8miEMOygc=; b=dNqp4zeROyPv07Xd
	lWiaqX+DQa/LqYLg8JKop7C8tHDEzaNthXoYbhBYu0uThnYDWqDwAgGzFfRQFU60
	08nal/0FmNOEmB929ZdpAvuy/7KjihvGZJgnqsCjkzJyjR5JNiBAI+9y/cgaZUh9
	ua/r0Hf1FTCRSSD0a/PDOE3en2BDMWgkOWuhn0ALeY9b7OUeg4YLCDJy9fhHXhfW
	xzDdOmkzYeWmOwevMMGzIBUkBQf409NPCOAotg/9d3ZgRvt7tiPbiZfjqMbjsRl4
	Eyhv4KVaIZekjnWdtLK7p+xlyOkkoGeWRaPBxOX7s8AyJGKym5GCXkK02l06aiEY
	7RwMaw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3yg7r06yqu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Jun 2024 11:23:12 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 2701A40051;
	Wed,  5 Jun 2024 11:23:08 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5C27E214549;
	Wed,  5 Jun 2024 11:22:03 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Wed, 5 Jun
 2024 11:22:02 +0200
Message-ID: <e5432ef8-6885-4fa6-9edd-8d432fdbfda6@foss.st.com>
Date: Wed, 5 Jun 2024 11:22:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] ARM: dts: stm32: Add support for STM32MP13xx DHCOR
 SoM and DHSBC board
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC: =?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
        Ahmad Fatoum
	<a.fatoum@pengutronix.de>,
        Andre Przywara <andre.przywara@arm.com>,
        Conor
 Dooley <conor+dt@kernel.org>,
        Dario Binacchi
	<dario.binacchi@amarulasolutions.com>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Maxime
 Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh@kernel.org>, Sean
 Nyekjaer <sean@geanix.com>,
        Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        <devicetree@vger.kernel.org>, <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20240427221048.65392-1-marex@denx.de>
 <20240427221048.65392-3-marex@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240427221048.65392-3-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-04_11,2024-06-05_02,2024-05-17_01

Hi Marek

On 4/28/24 00:10, Marek Vasut wrote:
> This stm32mp135f-dhcor-dhsbc board is a stack of DHCOR SoM based on
> STM32MP135F SoC (900MHz / crypto capabilities) populated on DHSBC
> carrier board.
> 
> The SoM contains the following peripherals:
> - STPMIC (power delivery)
> - 512MB DDR3L memory
> - eMMC and SDIO WiFi module
> 
> The DHSBC carrier board contains the following peripherals:
> - Two RGMII Ethernet ports
> - USB-A Host port, USB-C peripheral port, USB-C power supply plug
> - Expansion connector
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

dt-bindings patch + DT patches applied on stm32-next.

Cheers
Alex

> ---
> Cc: "Leonard Göhrs" <l.goehrs@pengutronix.de>
> Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Andre Przywara <andre.przywara@arm.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Sean Nyekjaer <sean@geanix.com>
> Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
> V2: - Fix the DT to list the right SoC/SoM/Board compatibles.
>        Note that the SoM .dtsi compatible strings are not listed in
>        Documentation/devicetree/bindings/arm/stm32/stm32.yaml
>        which should be OK, because those should be overwritten
>        by board .dts. The board .dts compatible strings are listed
>        in stm32.yaml . If the SoM .dtsi compatible is not overwritten
>        by board .dts, the DT validation should rightfully complain.
> ---
>   arch/arm/boot/dts/st/Makefile                 |   1 +
>   .../boot/dts/st/stm32mp135f-dhcor-dhsbc.dts   | 321 ++++++++++++++++++
>   .../boot/dts/st/stm32mp13xx-dhcor-som.dtsi    | 308 +++++++++++++++++
>   3 files changed, 630 insertions(+)
>   create mode 100644 arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
>   create mode 100644 arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
> 
> diff --git a/arch/arm/boot/dts/st/Makefile b/arch/arm/boot/dts/st/Makefile
> index 9fedd6776208e..db9718059ae2f 100644
> --- a/arch/arm/boot/dts/st/Makefile
> +++ b/arch/arm/boot/dts/st/Makefile
> @@ -29,6 +29,7 @@ dtb-$(CONFIG_ARCH_STM32) += \
>   	stm32h743i-eval.dtb \
>   	stm32h743i-disco.dtb \
>   	stm32h750i-art-pi.dtb \
> +	stm32mp135f-dhsom-dhsbc.dtb \
>   	stm32mp135f-dk.dtb \
>   	stm32mp151a-prtt1a.dtb \
>   	stm32mp151a-prtt1c.dtb \
> diff --git a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
> new file mode 100644
> index 0000000000000..5f4f6b6e427a5
> --- /dev/null
> +++ b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
> @@ -0,0 +1,321 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright (C) 2024 Marek Vasut <marex@denx.de>
> + *
> + * DHCOR STM32MP13 variant:
> + * DHCR-STM32MP135F-C100-R051-EE-F0409-SPI4-RTC-WBT-I-01LG
> + * DHCOR PCB number: 718-100 or newer
> + * DHSBC PCB number: 719-100 or newer
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/regulator/st,stm32mp13-regulator.h>
> +#include "stm32mp135.dtsi"
> +#include "stm32mp13xf.dtsi"
> +#include "stm32mp13xx-dhcor-som.dtsi"
> +
> +/ {
> +	model = "DH electronics STM32MP135F DHCOR DHSBC";
> +	compatible = "dh,stm32mp135f-dhcor-dhsbc",
> +		     "dh,stm32mp135f-dhcor-som",
> +		     "st,stm32mp135";
> +
> +	aliases {
> +		serial2 = &usart1;
> +		serial3 = &usart2;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +};
> +
> +&adc_1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&adc1_pins_a &adc1_usb_cc_pins_b>;
> +	vdda-supply = <&vdd_adc>;
> +	vref-supply = <&vdd_adc>;
> +	status = "okay";
> +
> +	adc1: adc@0 {
> +		status = "okay";
> +
> +		/*
> +		 * Type-C USB_PWR_CC1 & USB_PWR_CC2 on in2 & in11.
> +		 * Use at least 5 * RC time, e.g. 5 * (Rp + Rd) * C:
> +		 * 5 * (5.1 + 47kOhms) * 5pF => 1.3us.
> +		 * Use arbitrary margin here (e.g. 5us).
> +		 *
> +		 * The pinmux pins must be set as ANALOG, use datasheet
> +		 * DS13483 Table 7. STM32MP135C/F ball definitions to
> +		 * find out which 'pin name' maps to which 'additional
> +		 * functions', which lists the mapping between pin and
> +		 * ADC channel. In this case, PA5 maps to ADC1_INP2 and
> +		 * PF13 maps to ADC1_INP11 .
> +		 */
> +		channel@2 {
> +			reg = <2>;
> +			st,min-sample-time-ns = <5000>;
> +		};
> +
> +		channel@11 {
> +			reg = <11>;
> +			st,min-sample-time-ns = <5000>;
> +		};
> +
> +		/* Expansion connector: INP12:pin29 */
> +		channel@12 {
> +			reg = <12>;
> +			st,min-sample-time-ns = <5000>;
> +		};
> +	};
> +};
> +
> +&gpioa {
> +	gpio-line-names = "", "", "", "",
> +			  "", "DHSBC_USB_PWR_CC1", "", "",
> +			  "", "", "", "DHSBC_nETH1_RST",
> +			  "", "DHCOR_HW-CODING_0", "", "";
> +};
> +
> +&gpiob {
> +	gpio-line-names = "", "", "", "",
> +			  "", "", "", "DHCOR_BT_HOST_WAKE",
> +			  "", "", "", "",
> +			  "", "DHSBC_nTPM_CS", "", "";
> +};
> +
> +&gpioc {
> +	gpio-line-names = "", "", "", "DHSBC_USB_5V_MEAS",
> +			  "", "", "", "",
> +			  "", "", "", "",
> +			  "", "", "", "";
> +};
> +
> +&gpiod {
> +	gpio-line-names = "", "", "", "",
> +			  "", "DHCOR_RAM-CODING_0", "", "",
> +			  "", "DHCOR_RAM-CODING_1", "", "",
> +			  "", "", "", "";
> +};
> +
> +&gpioe {
> +	gpio-line-names = "", "", "", "",
> +			  "", "", "", "",
> +			  "", "DHSBC_nTPM_RST", "", "",
> +			  "DHSBC_nTPM_PIRQ", "", "DHCOR_WL_HOST_WAKE", "";
> +};
> +
> +&gpiof {
> +	gpio-line-names = "", "", "DHSBC_USB_PWR_nFLT", "",
> +			  "", "", "", "",
> +			  "", "", "", "",
> +			  "DHCOR_WL_REG_ON", "DHSBC_USB_PWR_CC2", "", "";
> +};
> +
> +&gpiog {
> +	gpio-line-names = "", "", "", "",
> +			  "", "", "", "",
> +			  "DHSBC_nETH2_RST", "DHCOR_BT_DEV_WAKE", "", "",
> +			  "DHSBC_ETH1_INTB", "", "", "DHSBC_ETH2_INTB";
> +};
> +
> +&gpioi {
> +	gpio-line-names = "DHCOR_RTC_nINT", "DHCOR_HW-CODING_1",
> +			  "DHCOR_BT_REG_ON", "DHCOR_PMIC_nINT",
> +			  "DHSBC_BOOT0", "DHSBC_BOOT1",
> +			  "DHSBC_BOOT2", "DHSBC_USB-C_DATA_VBUS";
> +};
> +
> +&i2c1 { /* Expansion connector: SDA:pin27 SCL:pin28 */
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&i2c1_pins_a>;
> +	pinctrl-1 = <&i2c1_sleep_pins_a>;
> +	i2c-scl-rising-time-ns = <96>;
> +	i2c-scl-falling-time-ns = <3>;
> +	clock-frequency = <400000>;
> +	status = "okay";
> +	/* spare dmas for other usage */
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +};
> +
> +&i2c5 { /* Expansion connector: SDA:pin3 SCL:pin5 */
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&i2c5_pins_b>;
> +	pinctrl-1 = <&i2c5_sleep_pins_b>;
> +	i2c-scl-rising-time-ns = <96>;
> +	i2c-scl-falling-time-ns = <3>;
> +	clock-frequency = <400000>;
> +	status = "okay";
> +	/* spare dmas for other usage */
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +};
> +
> +&m_can1 { /* Expansion connector: TX:pin16 RX:pin18 */
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&m_can1_pins_a>;
> +	pinctrl-1 = <&m_can1_sleep_pins_a>;
> +	status = "okay";
> +};
> +
> +&m_can2 { /* Expansion connector: TX:pin22 RX:pin26 */
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&m_can2_pins_a>;
> +	pinctrl-1 = <&m_can2_sleep_pins_a>;
> +	status = "okay";
> +};
> +
> +&pwr_regulators {
> +	vdd-supply = <&vdd>;
> +	vdd_3v3_usbfs-supply = <&vdd_usb>;
> +	status = "okay";
> +};
> +
> +&sai1 { /* Expansion connector: SCK-A:pin12 FS-A:pin35 SD-A:pin38 SD-B:pin40 */
> +	clocks = <&rcc SAI1>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
> +	clock-names = "pclk", "x8k", "x11k";
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&sai1a_pins_a &sai1b_pins_a>;
> +	pinctrl-1 = <&sai1a_sleep_pins_a &sai1b_sleep_pins_a>;
> +};
> +
> +&scmi_voltd {
> +	status = "disabled";
> +};
> +
> +&spi2 {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&spi2_pins_a>;
> +	pinctrl-1 = <&spi2_sleep_pins_a>;
> +	cs-gpios = <&gpiob 13 0>;
> +	status = "okay";
> +
> +	st33htph: tpm@0 {
> +		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
> +		reg = <0>;
> +		spi-max-frequency = <24000000>;
> +	};
> +};
> +
> +&spi3 { /* Expansion connector: MOSI:pin19 MISO:pin21 SCK:pin22 nCS:pin24 */
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&spi3_pins_a>;
> +	pinctrl-1 = <&spi3_sleep_pins_a>;
> +	cs-gpios = <&gpiof 3 0>;
> +	status = "disabled";
> +};
> +
> +&timers5 { /* Expansion connector: CH3:pin31 */
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +	status = "okay";
> +
> +	pwm {
> +		pinctrl-0 = <&pwm5_pins_a>;
> +		pinctrl-1 = <&pwm5_sleep_pins_a>;
> +		pinctrl-names = "default", "sleep";
> +		status = "okay";
> +	};
> +	timer@4 {
> +		status = "okay";
> +	};
> +};
> +
> +&timers13 { /* Expansion connector: CH1:pin32 */
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +	status = "okay";
> +
> +	pwm {
> +		pinctrl-0 = <&pwm13_pins_a>;
> +		pinctrl-1 = <&pwm13_sleep_pins_a>;
> +		pinctrl-names = "default", "sleep";
> +		status = "okay";
> +	};
> +	timer@12 {
> +		status = "okay";
> +	};
> +};
> +
> +&usart1 { /* Expansion connector: RX:pin33 TX:pin37 */
> +	pinctrl-names = "default", "sleep", "idle";
> +	pinctrl-0 = <&usart1_pins_b>;
> +	pinctrl-1 = <&usart1_sleep_pins_b>;
> +	pinctrl-2 = <&usart1_idle_pins_b>;
> +	status = "okay";
> +};
> +
> +&usart2 { /* Expansion connector: RX:pin10 TX:pin8 RTS:pin11 CTS:pin36 */
> +	pinctrl-names = "default", "sleep", "idle";
> +	pinctrl-0 = <&usart2_pins_b>;
> +	pinctrl-1 = <&usart2_sleep_pins_b>;
> +	pinctrl-2 = <&usart2_idle_pins_b>;
> +	uart-has-rtscts;
> +	status = "okay";
> +};
> +
> +&usbh_ehci {
> +	phys = <&usbphyc_port0>;
> +	status = "okay";
> +};
> +
> +&usbh_ohci {
> +	phys = <&usbphyc_port0>;
> +	status = "okay";
> +};
> +
> +&usbotg_hs {
> +	dr_mode = "peripheral";
> +	phys = <&usbphyc_port1 0>;
> +	phy-names = "usb2-phy";
> +	usb33d-supply = <&usb33>;
> +	status = "okay";
> +};
> +
> +&usbphyc {
> +	status = "okay";
> +	vdda1v1-supply = <&reg11>;
> +	vdda1v8-supply = <&reg18>;
> +};
> +
> +&usbphyc_port0 {
> +	phy-supply = <&vdd_usb>;
> +	st,current-boost-microamp = <1000>;
> +	st,decrease-hs-slew-rate;
> +	st,tune-hs-dc-level = <2>;
> +	st,enable-hs-rftime-reduction;
> +	st,trim-hs-current = <11>;
> +	st,trim-hs-impedance = <2>;
> +	st,tune-squelch-level = <1>;
> +	st,enable-hs-rx-gain-eq;
> +	st,no-hs-ftime-ctrl;
> +	st,no-lsfs-sc;
> +	connector {
> +		compatible = "usb-a-connector";
> +		vbus-supply = <&vbus_sw>;
> +	};
> +};
> +
> +&usbphyc_port1 {
> +	phy-supply = <&vdd_usb>;
> +	st,current-boost-microamp = <1000>;
> +	st,decrease-hs-slew-rate;
> +	st,tune-hs-dc-level = <2>;
> +	st,enable-hs-rftime-reduction;
> +	st,trim-hs-current = <11>;
> +	st,trim-hs-impedance = <2>;
> +	st,tune-squelch-level = <1>;
> +	st,enable-hs-rx-gain-eq;
> +	st,no-hs-ftime-ctrl;
> +	st,no-lsfs-sc;
> +	connector {
> +		compatible = "gpio-usb-b-connector", "usb-b-connector";
> +		vbus-gpios = <&gpioi 7 GPIO_ACTIVE_HIGH>;
> +		label = "Type-C";
> +		self-powered;
> +		type = "micro";
> +	};
> +};
> diff --git a/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi b/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
> new file mode 100644
> index 0000000000000..ddad6497775b8
> --- /dev/null
> +++ b/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
> @@ -0,0 +1,308 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright (C) 2024 Marek Vasut <marex@denx.de>
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/mfd/st,stpmic1.h>
> +#include <dt-bindings/regulator/st,stm32mp13-regulator.h>
> +#include "stm32mp13-pinctrl.dtsi"
> +
> +/ {
> +	model = "DH electronics STM32MP13xx DHCOR SoM";
> +	compatible = "dh,stm32mp131a-dhcor-som",
> +		     "st,stm32mp131";
> +
> +	aliases {
> +		mmc0 = &sdmmc2;
> +		mmc1 = &sdmmc1;
> +		serial0 = &uart4;
> +		serial1 = &uart7;
> +		rtc0 = &rv3032;
> +		spi0 = &qspi;
> +	};
> +
> +	memory@c0000000 {
> +		device_type = "memory";
> +		reg = <0xc0000000 0x20000000>;
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		optee@dd000000 {
> +			reg = <0xdd000000 0x3000000>;
> +			no-map;
> +		};
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		reset-gpios = <&gpiof 12 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	vin: vin {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vin";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +	};
> +};
> +
> +&i2c3 {
> +	i2c-scl-rising-time-ns = <96>;
> +	i2c-scl-falling-time-ns = <3>;
> +	clock-frequency = <400000>;
> +	status = "okay";
> +	/* spare dmas for other usage */
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +
> +	pmic: stpmic@33 {
> +		compatible = "st,stpmic1";
> +		reg = <0x33>;
> +		interrupts-extended = <&gpioi 3 IRQ_TYPE_EDGE_FALLING>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		status = "okay";
> +
> +		regulators {
> +			compatible = "st,stpmic1-regulators";
> +
> +			ldo1-supply = <&vin>;
> +			ldo2-supply = <&vin>;
> +			ldo3-supply = <&vin>;
> +			ldo4-supply = <&vin>;
> +			ldo5-supply = <&vin>;
> +			ldo6-supply = <&vin>;
> +			pwr_sw1-supply = <&bst_out>;
> +			pwr_sw2-supply = <&bst_out>;
> +
> +			vddcpu: buck1 { /* VDD_CPU_1V2 */
> +				regulator-name = "vddcpu";
> +				regulator-min-microvolt = <1250000>;
> +				regulator-max-microvolt = <1250000>;
> +				regulator-always-on;
> +				regulator-initial-mode = <0>;
> +				regulator-over-current-protection;
> +			};
> +
> +			vdd_ddr: buck2 { /* VDD_DDR_1V35 */
> +				regulator-name = "vdd_ddr";
> +				regulator-min-microvolt = <1350000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-always-on;
> +				regulator-initial-mode = <0>;
> +				regulator-over-current-protection;
> +			};
> +
> +			vdd: buck3 { /* VDD_3V3_1V8 */
> +				regulator-name = "vdd";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-initial-mode = <0>;
> +				regulator-over-current-protection;
> +			};
> +
> +			vddcore: buck4 { /* VDD_CORE_1V2 */
> +				regulator-name = "vddcore";
> +				regulator-min-microvolt = <1250000>;
> +				regulator-max-microvolt = <1250000>;
> +				regulator-always-on;
> +				regulator-initial-mode = <0>;
> +				regulator-over-current-protection;
> +			};
> +
> +			vdd_adc: ldo1 { /* VDD_ADC_1V8 */
> +				regulator-name = "vdd_adc";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				interrupts = <IT_CURLIM_LDO1 0>;
> +			};
> +
> +			vdd_ldo2: ldo2 { /* LDO2_OUT_1V8 */
> +				regulator-name = "vdd_ldo2";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				interrupts = <IT_CURLIM_LDO2 0>;
> +			};
> +
> +			vdd_ldo3: ldo3 { /* LDO3_OUT */
> +				regulator-name = "vdd_ldo3";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				interrupts = <IT_CURLIM_LDO3 0>;
> +			};
> +
> +			vdd_usb: ldo4 { /* VDD_USB_3V3 */
> +				regulator-name = "vdd_usb";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				interrupts = <IT_CURLIM_LDO4 0>;
> +			};
> +
> +			vdd_sd: ldo5 { /* VDD_SD_3V3_1V8 */
> +				regulator-name = "vdd_sd";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				interrupts = <IT_CURLIM_LDO5 0>;
> +			};
> +
> +			vdd_sd2: ldo6 { /* VDD_SD2_3V3_1V8 */
> +				regulator-name = "vdd_sd2";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				interrupts = <IT_CURLIM_LDO6 0>;
> +			};
> +
> +			vref_ddr: vref_ddr { /* VREF_DDR_0V675 */
> +				regulator-name = "vref_ddr";
> +				regulator-always-on;
> +			};
> +
> +			bst_out: boost { /* BST_OUT_5V2 */
> +				regulator-name = "bst_out";
> +			};
> +
> +			vbus_otg: pwr_sw1 {
> +				regulator-name = "vbus_otg";
> +				interrupts = <IT_OCP_OTG 0>;
> +			};
> +
> +			vbus_sw: pwr_sw2 {
> +				regulator-name = "vbus_sw";
> +				interrupts = <IT_OCP_SWOUT 0>;
> +				regulator-active-discharge = <1>;
> +			};
> +		};
> +
> +		onkey {
> +			compatible = "st,stpmic1-onkey";
> +			interrupts = <IT_PONKEY_F 0>, <IT_PONKEY_R 1>;
> +			interrupt-names = "onkey-falling", "onkey-rising";
> +			status = "okay";
> +		};
> +
> +		watchdog {
> +			compatible = "st,stpmic1-wdt";
> +			status = "disabled";
> +		};
> +	};
> +
> +	eeprom0: eeprom@50 {
> +		compatible = "atmel,24c256";	/* ST M24256 */
> +		reg = <0x50>;
> +		pagesize = <64>;
> +	};
> +
> +	rv3032: rtc@51 {
> +		compatible = "microcrystal,rv3032";
> +		reg = <0x51>;
> +		interrupts-extended = <&gpioi 0 IRQ_TYPE_EDGE_FALLING>;
> +	};
> +};
> +
> +&iwdg2 {
> +	timeout-sec = <32>;
> +	status = "okay";
> +};
> +
> +&qspi {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&qspi_clk_pins_a
> +		     &qspi_bk1_pins_a
> +		     &qspi_cs1_pins_a>;
> +	pinctrl-1 = <&qspi_clk_sleep_pins_a
> +		     &qspi_bk1_sleep_pins_a
> +		     &qspi_cs1_sleep_pins_a>;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	flash0: flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-rx-bus-width = <4>;
> +		spi-max-frequency = <108000000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +	};
> +};
> +
> +/* Console UART */
> +&uart4 {
> +	pinctrl-names = "default", "sleep", "idle";
> +	pinctrl-0 = <&uart4_pins_b>;
> +	pinctrl-1 = <&uart4_sleep_pins_b>;
> +	pinctrl-2 = <&uart4_idle_pins_b>;
> +	/delete-property/dmas;
> +	/delete-property/dma-names;
> +	status = "okay";
> +};
> +
> +/* Bluetooth */
> +&uart7 {
> +	pinctrl-names = "default", "sleep", "idle";
> +	pinctrl-0 = <&uart7_pins_a>;
> +	pinctrl-1 = <&uart7_sleep_pins_a>;
> +	pinctrl-2 = <&uart7_idle_pins_a>;
> +	uart-has-rtscts;
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "infineon,cyw43439-bt", "brcm,bcm4329-bt";
> +		max-speed = <3000000>;
> +		device-wakeup-gpios = <&gpiog 9 GPIO_ACTIVE_HIGH>;
> +		shutdown-gpios = <&gpioi 2 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
> +/* SDIO WiFi */
> +&sdmmc1 {
> +	pinctrl-names = "default", "opendrain", "sleep";
> +	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_clk_pins_a>;
> +	pinctrl-1 = <&sdmmc1_b4_od_pins_a &sdmmc1_clk_pins_a>;
> +	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a>;
> +	bus-width = <4>;
> +	cap-power-off-card;
> +	keep-power-in-suspend;
> +	non-removable;
> +	st,neg-edge;
> +	vmmc-supply = <&vdd>;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	brcmf: bcrmf@1 {	/* muRata 1YN */
> +		reg = <1>;
> +		compatible = "infineon,cyw43439-fmac", "brcm,bcm4329-fmac";
> +		interrupt-parent = <&gpioe>;
> +		interrupts = <14 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-names = "host-wake";
> +	};
> +};
> +
> +/* eMMC */
> +&sdmmc2 {
> +	pinctrl-names = "default", "opendrain", "sleep";
> +	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a &sdmmc2_clk_pins_a>;
> +	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_a &sdmmc2_clk_pins_a>;
> +	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_a>;
> +	bus-width = <8>;
> +	mmc-ddr-3_3v;
> +	no-sd;
> +	no-sdio;
> +	non-removable;
> +	st,neg-edge;
> +	vmmc-supply = <&vdd>;
> +	vqmmc-supply = <&vdd>;
> +	status = "okay";
> +};

