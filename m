Return-Path: <devicetree+bounces-22071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F9080653B
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 03:44:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 498E01F20FDA
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:44:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51A2FEC9;
	Wed,  6 Dec 2023 02:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otbeRDrl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E151879
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 02:44:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A27AC433C8;
	Wed,  6 Dec 2023 02:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701830642;
	bh=2WCrzjk6sg9ZN4wNGQp/yrOmOx4mghiSWunWQXbn6fA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=otbeRDrlE1bRmPTpEzl385JvvSW/zdTsJI7vLYztAuUt2lihA/7RD/K0lNtQL2rz8
	 dOOMHJIQrvheoARXYontSS8vzblEzOFzjQKIPMs5b95o93bj6dAjd5323+2zWpEDJa
	 XTDHxaXXzOQ8LSsQeUoM72zCYgWlfQGUFSxB6Hn/T2uYU471E2/BV7CCqQ3r5c8bYM
	 x6I9+CZwUJXAP1thyzPWfoQ8DA3XsapHZV1DUvFcYtYVn/hD4A7HCbqPshVc7lSrWt
	 4CnGkIjU5fETjcM/qlEEYNlomv6AwkvoiCO3jaWmjxgQFof6AOBm1a+DOB+95zUe7p
	 +n34Eaz/2/vew==
Date: Wed, 6 Dec 2023 10:43:55 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Frieder Schrempf <frieder@fris.de>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Fabio Estevam <festevam@gmail.com>,
	Gregor Herburger <gregor.herburger@ew.tq-group.com>,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	Marek Vasut <marex@denx.de>, NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Philippe Schenker <philippe.schenker@toradex.com>,
	Tim Harvey <tharvey@gateworks.com>
Subject: Re: [PATCH v2 02/14] arm64: dts: imx8mm-kontron: Add DL
 (Display-Line) overlay with LVDS support
Message-ID: <20231206024355.GM236001@dragon>
References: <20231130161657.556483-1-frieder@fris.de>
 <20231130161657.556483-3-frieder@fris.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231130161657.556483-3-frieder@fris.de>

On Thu, Nov 30, 2023 at 05:16:02PM +0100, Frieder Schrempf wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> The Kontron Electronics DL i.MX8MM consists of the BL i.MX8MM board
> and a 7" LVDS panel. Provide an overlay that enables the panel.
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> ---
> Changes for v2:
> * Rework DSI mux GPIO logic to be compatible with overlay
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   4 +
>  .../boot/dts/freescale/imx8mm-kontron-dl.dtso | 200 ++++++++++++++++++
>  2 files changed, 204 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-kontron-dl.dtso
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 300049037eb0b..e08024797721a 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -166,6 +166,10 @@ dtb-$(CONFIG_ARCH_MXC) += imx8ulp-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxla.dtb
>  
> +imx8mm-kontron-dl-dtbs			:= imx8mm-kontron-bl.dtb imx8mm-kontron-dl.dtbo
> +
> +dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-dl.dtb
> +
>  imx8mm-venice-gw72xx-0x-imx219-dtbs	:= imx8mm-venice-gw72xx-0x.dtb imx8mm-venice-gw72xx-0x-imx219.dtbo
>  imx8mm-venice-gw72xx-0x-rpidsi-dtbs	:= imx8mm-venice-gw72xx-0x.dtb imx8mm-venice-gw72xx-0x-rpidsi.dtbo
>  imx8mm-venice-gw72xx-0x-rs232-rts-dtbs	:= imx8mm-venice-gw72xx-0x.dtb imx8mm-venice-gw72xx-0x-rs232-rts.dtbo
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-kontron-dl.dtso b/arch/arm64/boot/dts/freescale/imx8mm-kontron-dl.dtso
> new file mode 100644
> index 0000000000000..c6369072577e0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-kontron-dl.dtso
> @@ -0,0 +1,200 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2023 Kontron Electronics GmbH
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include "imx8mm-pinfunc.h"
> +
> +&{/} {
> +	compatible = "kontron,imx8mm-bl", "kontron,imx8mm-sl", "fsl,imx8mm";
> +
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm1 0 50000 0>;
> +		brightness-levels = <0 100>;
> +		num-interpolated-steps = <100>;
> +		default-brightness-level = <100>;
> +	};
> +
> +	panel {
> +		compatible = "panel-lvds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_panel>;
> +		backlight = <&backlight>;
> +		data-mapping = "vesa-24";
> +		enable-gpios = <&gpio3 19 GPIO_ACTIVE_HIGH>;
> +		height-mm = <86>;
> +		width-mm = <154>;
> +
> +		panel-timing {
> +			clock-frequency = <51200000>;
> +			hactive = <1024>;
> +			vactive = <600>;
> +			hsync-len = <1>;
> +			hfront-porch = <160>;
> +			hback-porch = <160>;
> +			vsync-len = <1>;
> +			vfront-porch = <12>;
> +			vback-porch = <23>;
> +		};
> +
> +		port {
> +			panel_out_bridge: endpoint {
> +				remote-endpoint = <&bridge_out_panel>;
> +			};
> +		};
> +	};
> +};
> +
> +&dsi_mux_sel_hdmi {
> +	status = "disabled";
> +};
> +
> +&dsi_mux_sel_lvds {
> +	status = "okay";
> +};
> +
> +&dsi_out_bridge {
> +	remote-endpoint = <&bridge_in_dsi_lvds>;
> +};
> +
> +&gpio3 {
> +	panel_rst {
> +		gpio-hog;
> +		gpios = <20 GPIO_ACTIVE_HIGH>;
> +		output-high;
> +		line-name = "panel-reset";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_panel_rst>;
> +	};
> +
> +	panel_stby {
> +		gpio-hog;
> +		gpios = <21 GPIO_ACTIVE_HIGH>;
> +		output-high;
> +		line-name = "panel-standby";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_panel_stby>;
> +	};
> +
> +	panel_hinv {
> +		gpio-hog;
> +		gpios = <24 GPIO_ACTIVE_HIGH>;
> +		output-high;
> +		line-name = "panel-horizontal-invert";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_panel_hinv>;
> +	};
> +
> +	panel_vinv {
> +		gpio-hog;
> +		gpios = <25 GPIO_ACTIVE_HIGH>;
> +		output-low;
> +		line-name = "panel-vertical-invert";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_panel_vinv>;
> +	};
> +};
> +
> +&hdmi {
> +	status = "disabled";
> +};
> +
> +&i2c2 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	gt911@5d {
> +		compatible = "goodix,gt928";
> +		reg = <0x5d>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_touch>;
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <22 8>;
> +		reset-gpios = <&gpio3 23 0>;
> +		irq-gpios = <&gpio3 22 0>;
> +	};
> +};
> +
> +&lvds {
> +	status = "okay";
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		port@2 {
> +			reg = <2>;

Have a newline between properties and child node.

> +			bridge_out_panel: endpoint {
> +				remote-endpoint = <&panel_out_bridge>;
> +			};
> +		};
> +	};
> +};
> +
> +&pwm1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm1>;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_panel_rst: panelrstgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI5_RXC_GPIO3_IO20		0x19
> +		>;
> +	};
> +
> +	pinctrl_panel_stby: panelstbygrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI5_RXD0_GPIO3_IO21		0x19
> +		>;
> +	};
> +
> +	pinctrl_panel_hinv: panelhinvgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI5_RXD3_GPIO3_IO24		0x19
> +		>;
> +	};
> +
> +	pinctrl_panel_vinv: panelvinvgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI5_MCLK_GPIO3_IO25		0x19
> +		>;
> +	};
> +
> +	pinctrl_i2c2: i2c2grp {

Could you sort the pinctrl nodes alphabetically?

Shawn

> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C2_SCL_I2C2_SCL			0x40000083
> +			MX8MM_IOMUXC_I2C2_SDA_I2C2_SDA			0x40000083
> +		>;
> +	};
> +
> +	pinctrl_pwm1: pwm1grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SPDIF_EXT_CLK_PWM1_OUT		0x6
> +		>;
> +	};
> +
> +	pinctrl_panel: panelgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI5_RXFS_GPIO3_IO19		0x19
> +		>;
> +	};
> +
> +	pinctrl_touch: touchgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI5_RXD1_GPIO3_IO22		0x19
> +			MX8MM_IOMUXC_SAI5_RXD2_GPIO3_IO23		0x19
> +		>;
> +	};
> +};
> -- 
> 2.43.0
> 

