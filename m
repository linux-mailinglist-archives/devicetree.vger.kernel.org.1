Return-Path: <devicetree+bounces-239098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB2EC61543
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 14:01:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 42A2835E0F0
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 13:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F31BD23D7F8;
	Sun, 16 Nov 2025 13:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="VKTYamgX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EA71FB1;
	Sun, 16 Nov 2025 13:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763298081; cv=none; b=HmWI5yspMEyUsFa2XtD5YOK3u1+qxnEQY+IvGnuXTVDAMg10uduG6A1PMgtC2CKVv/W+do/eHHd7YmonJn9K4H9lE1Tlfsgr9Ig5hABFfToSIkKEQiQtekqrSFcUDfCX9I1+MAlSDLLp0vlQ6GpHK/FSbQGj8vfiFI/Rf186nW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763298081; c=relaxed/simple;
	bh=MOXN045D4AqSxQcsMGvZcWt/F9fOFVpJeg5zuugyQIc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hYeuhJegC1QkZ0yf8K+LuaWUAYrDuRqOeNy5Z6gQKEyvxqyDApficYA2vk12B2P4toVpx/QuLlxtOAzwwqDKVNU1VgoLCF3xqkIsmXpbJLRD6mxboh+yHAwZR6ZH6lU886xdrmPNEFLkTHM/Bcgany7nVWWlx24dZ0o38Rlu/N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=VKTYamgX; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=xrrEPvFac+QuVmYvn8OxAAMOUJQuYqOMsCxiXyRX4tM=;
	b=VKTYamgXQCNutL7X05YB5x0En7+LFXbEoWX7PP7tXdTahQvLJ99362biAu1kAP
	UtnrIy2SA2BK7t1gqK9D0ipG3tyMY1M6d+aaj4a1aHuoEOVSfngSc3zn7rCvsl3o
	z0I8fK8u2NLaIkKfJFtsG03CaeWx6/P4jeA2IynXhewDw=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgAnS5bwyhlpW_g7AQ--.7954S3;
	Sun, 16 Nov 2025 21:00:34 +0800 (CST)
Date: Sun, 16 Nov 2025 21:00:31 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Yashwanth Varakala <y.varakala@phytec.de>
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, upstream@lists.phytec.de,
	peng.fan@nxp.com
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp libra: add peb-av-10 expansion
 board overlay
Message-ID: <aRnK7zqS5qLoAKWk@dragon>
References: <20251111143407.24657-1-y.varakala@phytec.de>
 <20251111143407.24657-3-y.varakala@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251111143407.24657-3-y.varakala@phytec.de>
X-CM-TRANSID:Mc8vCgAnS5bwyhlpW_g7AQ--.7954S3
X-Coremail-Antispam: 1Uf129KBjvJXoWxtrWrJF47AFyDWryruw4rKrg_yoW3tw4xpr
	9xCrWUCr48tr10y345G3Z7tr4fCa93Ka1v9w1jgry8CryqvF9rJF9rKw15uw4xJrsxZw4F
	qFyFvrWxKFnIq3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UcqXdUUUUU=
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNBKP9GkZyvIjqAAA3e

On Tue, Nov 11, 2025 at 03:34:07PM +0100, Yashwanth Varakala wrote:
> Add an overlay of expansion board (PEB-AV-10) that supports multimedia
> interfaces, 3.5mm headphone jack, a USB-A port and LVDS, backlight
> connectors can be connected to the imx8mp libra. Audio works when no
> display is connected to expansion board.
> 
> A separate overlay for Powertip display, based on peb-av-10.dtsi and
> intended for use with PEB-AV-10 expansion board, will be added
> later as display support is not yet available.
> 
> Signed-off-by: Yashwanth Varakala <y.varakala@phytec.de>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   3 +
>  .../imx8mp-libra-rdk-fpsc-lvds-peb-av-10.dtsi | 196 ++++++++++++++++++
>  .../imx8mp-libra-rdk-fpsc-lvds-peb-av-10.dtso |   9 +
>  3 files changed, 208 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-libra-rdk-fpsc-lvds-peb-av-10.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-libra-rdk-fpsc-lvds-peb-av-10.dtso
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index eb38dcc76b84..0d2bd8d1d3b6 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -223,8 +223,11 @@ imx8mp-libra-rdk-fpsc-lvds-etml1010g3dra-dtbs += imx8mp-libra-rdk-fpsc.dtb \
>  	imx8mp-libra-rdk-fpsc-lvds-etml1010g3dra.dtbo
>  imx8mp-libra-rdk-fpsc-lvds-ph128800t006-zhc01-dtbs += imx8mp-libra-rdk-fpsc.dtb \
>  	imx8mp-libra-rdk-fpsc-lvds-ph128800t006-zhc01.dtbo
> +imx8mp-libra-rdk-fpsc-lvds-peb-av-10-dtbs += imx8mp-libra-rdk-fpsc.dtb \
> +	imx8mp-libra-rdk-fpsc-lvds-peb-av-10.dtbo
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-libra-rdk-fpsc-lvds-etml1010g3dra.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-libra-rdk-fpsc-lvds-ph128800t006-zhc01.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mp-libra-rdk-fpsc-lvds-peb-av-10.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-msc-sm2s-ep1.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-navqp.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-nitrogen-enc-carrier-board.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-libra-rdk-fpsc-lvds-peb-av-10.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-libra-rdk-fpsc-lvds-peb-av-10.dtsi
> new file mode 100644
> index 000000000000..6574dfbb32f7
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-libra-rdk-fpsc-lvds-peb-av-10.dtsi
> @@ -0,0 +1,196 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> +/*
> + * Copyright (C) 2025 PHYTEC Messtechnik GmbH
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/clock/imx8mp-clock.h>
> +#include "imx8mp-pinfunc.h"
> +
> +&{/} {
> +
> +	backlight_lvds1: backlight-lvds1 {
> +		compatible = "pwm-backlight";
> +		pinctrl-0 = <&pinctrl_lvds1>;
> +		pinctrl-names = "default";
> +		power-supply = <&reg_vcc_12v>;
> +		status = "disabled";
> +	};
> +
> +	panel_lvds1: panel-lvds1 {
> +		backlight = <&backlight_lvds1>;
> +		power-supply = <&reg_vdd_3v3>;
> +		status = "disabled";
> +
> +		port {
> +			panel1_in: endpoint {
> +				remote-endpoint = <&ldb_lvds_ch1>;
> +			};
> +		};
> +	};
> +
> +	reg_vcc_12v: regulator-12v {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-max-microvolt = <12000000>;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-name = "VCC_12V";
> +	};
> +
> +	reg_vcc_1v8_audio: regulator-1v8 {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-name = "VCC_1V8_Audio";
> +	};
> +
> +	reg_vcc_3v3_analog: regulator-3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "VCC_3V3_Analog";
> +	};
> +
> +	sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "snd-peb-av-10";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,bitclock-master = <&dailink_master>;
> +		simple-audio-card,frame-master = <&dailink_master>;
> +		simple-audio-card,mclk-fs = <32>;
> +		simple-audio-card,widgets =
> +			"Line", "Line In",
> +			"Speaker", "Speaker",
> +			"Microphone", "Microphone Jack",
> +			"Headphone", "Headphone Jack";
> +		simple-audio-card,routing =
> +			"Speaker", "SPOP",
> +			"Speaker", "SPOM",
> +			"Headphone Jack", "HPLOUT",
> +			"Headphone Jack", "HPROUT",
> +			"LINE1L", "Line In",
> +			"LINE1R", "Line In",
> +			"MIC3R", "Microphone Jack",
> +			"Microphone Jack", "Mic Bias";
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&codec>;
> +		};
> +
> +		dailink_master: simple-audio-card,cpu {
> +			sound-dai = <&sai5>;
> +		};
> +	};
> +};
> +
> +&i2c5 {
> +	clock-frequency = <400000>;
> +	pinctrl-0 = <&pinctrl_i2c5>;
> +	pinctrl-1 = <&pinctrl_i2c5_gpio>;
> +	pinctrl-names = "default", "gpio";
> +	scl-gpios = <&gpio3 21 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpio5 4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	codec: codec@18 {

audio-codec for node name

Shawn

> +		compatible = "ti,tlv320aic3007";
> +		reg = <0x18>;
> +		pinctrl-0 = <&pinctrl_tlv320>;
> +		pinctrl-names = "default";
> +		#sound-dai-cells = <0>;
> +		ai3x-gpio-func = <0xd 0x0>;
> +		ai3x-micbias-vg = <2>;
> +		AVDD-supply = <&reg_vcc_3v3_analog>;
> +		DRVDD-supply = <&reg_vcc_3v3_analog>;
> +		DVDD-supply = <&reg_vcc_1v8_audio>;
> +		IOVDD-supply = <&reg_vdd_3v3>;
> +	};
> +
> +	eeprom@57 {
> +		compatible = "atmel,24c32";
> +		reg = <0x57>;
> +		pagesize = <32>;
> +		vcc-supply = <&reg_vdd_3v3>;
> +	};
> +};
> +
> +&ldb_lvds_ch1 {
> +	remote-endpoint = <&panel1_in>;
> +};
> +
> +&pwm2 {
> +	pinctrl-0 = <&pinctrl_pwm2>;
> +	pinctrl-names = "default";
> +};
> +
> +&sai5 {
> +	pinctrl-0 = <&pinctrl_sai5>;
> +	pinctrl-names = "default";
> +	assigned-clocks = <&clk IMX8MP_CLK_SAI5>;
> +	assigned-clock-parents = <&clk IMX8MP_AUDIO_PLL1_OUT>;
> +	assigned-clock-rates = <12288000>;
> +	clocks = <&audio_blk_ctrl IMX8MP_CLK_AUDIOMIX_SAI5_IPG>,
> +		 <&clk IMX8MP_CLK_DUMMY>,
> +		 <&audio_blk_ctrl IMX8MP_CLK_AUDIOMIX_SAI5_MCLK1>,
> +		 <&clk IMX8MP_CLK_DUMMY>,
> +		 <&clk IMX8MP_CLK_DUMMY>,
> +		 <&clk IMX8MP_AUDIO_PLL1_OUT>,
> +		 <&clk IMX8MP_AUDIO_PLL2_OUT>;
> +	clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3", "pll8k",
> +		      "pll11k";
> +	#sound-dai-cells = <0>;
> +	fsl,sai-mclk-direction-output;
> +	fsl,sai-synchronous-rx;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_i2c5: i2c5grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI5_RXD0__I2C5_SCL	0x400001c2
> +			MX8MP_IOMUXC_SPDIF_RX__I2C5_SDA		0x400001c2
> +		>;
> +	};
> +
> +	pinctrl_i2c5_gpio: i2c5gpiogrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI5_RXD0__GPIO3_IO21	0x1e2
> +			MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04	0x1e2
> +		>;
> +	};
> +
> +	pinctrl_lvds1: lvds1grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI3_RXFS__GPIO4_IO28	0x12
> +		>;
> +	};
> +
> +	pinctrl_pwm2: pwm2grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_GPIO1_IO09__PWM2_OUT	0x12
> +		>;
> +	};
> +
> +	pinctrl_sai5: sai5grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI2_RXD0__AUDIOMIX_SAI5_TX_DATA00 0xd6
> +			MX8MP_IOMUXC_SAI3_RXD__AUDIOMIX_SAI5_RX_DATA00	0xd6
> +			MX8MP_IOMUXC_SAI5_MCLK__AUDIOMIX_SAI5_MCLK	0xd6
> +			MX8MP_IOMUXC_SAI5_RXD1__AUDIOMIX_SAI5_TX_SYNC	0xd6
> +			MX8MP_IOMUXC_SAI5_RXD2__AUDIOMIX_SAI5_TX_BCLK	0xd6
> +		>;
> +	};
> +
> +	pinctrl_tlv320: tlv320grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI3_RXC__GPIO4_IO29	0x16
> +		>;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-libra-rdk-fpsc-lvds-peb-av-10.dtso b/arch/arm64/boot/dts/freescale/imx8mp-libra-rdk-fpsc-lvds-peb-av-10.dtso
> new file mode 100644
> index 000000000000..803a199dffa3
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-libra-rdk-fpsc-lvds-peb-av-10.dtso
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> +/*
> + * Copyright (C) 2025 PHYTEC Messtechnik GmbH
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include "imx8mp-libra-rdk-fpsc-lvds-peb-av-10.dtsi"
> -- 
> 2.34.1
> 


