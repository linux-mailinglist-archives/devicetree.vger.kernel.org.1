Return-Path: <devicetree+bounces-25074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D50B812523
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 03:17:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0000C282417
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 02:17:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A2CF642;
	Thu, 14 Dec 2023 02:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQd0f7b1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5B47EE
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 02:17:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B12DC433C7;
	Thu, 14 Dec 2023 02:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702520260;
	bh=RR9Mj0aVnA/eW7GuuUubuStZFpU0qgBFK0cuRAVhtT8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UQd0f7b1xYdCRUpe1EXA20dabRv5gz5PEXB1g3O4jwKmhux7+xgzXlxFG2Hy27cTN
	 RVwZH3l6sTynCBDOVtpdhWBykbDlTjK19Ili4qt2Hn5Aq7Ts61aRLOKNmzxqeIa8lz
	 sjEtkjgkUh3zB0eokO2QZI78cmsus1mVTczbPRHUuxT5QeIpDnAOxcHd+Kq5MukDb2
	 +W2SVa1T2AxEyz4D3NjujeTAoU+EcEaLx3H81GbAckuCMyuPdUcUtJ5KVoOftCTSMI
	 GtZbjBAG9K9GznckzisWhDTpVfGUG2MOHpqLJCR/RXri2rnLd0fCjm7Yf2yIknlIEt
	 M8ath7j2TslbA==
Date: Thu, 14 Dec 2023 10:17:34 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org,
	Amarula patchwork <linux-amarula@amarulasolutions.com>,
	michael@amarulasolutions.com, Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 10/10] arm64: dts: imx8mn-bsh-smm-s2/pro: add display
 setup
Message-ID: <20231214021734.GX270430@dragon>
References: <20231207141723.108004-1-dario.binacchi@amarulasolutions.com>
 <20231207141723.108004-11-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231207141723.108004-11-dario.binacchi@amarulasolutions.com>

On Thu, Dec 07, 2023 at 03:16:39PM +0100, Dario Binacchi wrote:
> From: Michael Trimarchi <michael@amarulasolutions.com>
> 
> Add the display and nodes required for its operation.
> 
> Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> 
> ---
> 
> (no changes since v3)
> 
> Changes in v3:
> - Replace "synaptics,r63353" compatible with "syna,r63353", as
>   required by vendor-prefixes.yaml.
> - Squash patch [09/11] dt-bindings: ili9805: add compatible string for Tianma TM041XDHG01
>   into [07/11] dt-bindings: display: panel: Add Ilitek ili9805 panel controller.
> 
> Changes in v2:
> - Adjust the mipi_dsi node based on the latest patches merged into
>   the mainline in the dtsi files it includes.
> - Added to the series the following patches:
>   - 0001 drm/bridge: Fix bridge disable logic
>   - 0002 drm/bridge: Fix a use case in the bridge disable logic
>   - 0003 samsung-dsim: enter display mode in the enable() callback
>   - 0004 drm: bridge: samsung-dsim: complete the CLKLANE_STOP setting
> 
>  .../freescale/imx8mn-bsh-smm-s2-common.dtsi   |   1 +
>  .../freescale/imx8mn-bsh-smm-s2-display.dtsi  | 121 ++++++++++++++++++
>  2 files changed, 122 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-display.dtsi
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
> index 22a754d438f1..bbb07c650da9 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
> @@ -7,6 +7,7 @@
>  /dts-v1/;
>  
>  #include "imx8mn.dtsi"
> +#include "imx8mn-bsh-smm-s2-display.dtsi"
>  
>  / {
>  	chosen {
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-display.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-display.dtsi
> new file mode 100644
> index 000000000000..f0a924cbe548
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-display.dtsi
> @@ -0,0 +1,121 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2021 BSH
> + */
> +
> +/ {
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm1 0 700000 0>;	/* 700000 ns = 1337Hz */
> +		brightness-levels = <0 100>;
> +		num-interpolated-steps = <100>;
> +		default-brightness-level = <50>;
> +		status = "okay";
> +	};
> +
> +	reg_3v3_dvdd: regulator-3v3-O3 {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_dvdd>;
> +		regulator-name = "3v3-dvdd-supply";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio1 7 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	reg_v3v3_avdd: regulator-3v3-O2 {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_avdd>;
> +		regulator-name = "3v3-avdd-supply";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio1 5 GPIO_ACTIVE_LOW>;
> +	};
> +};
> +
> +&pwm1 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_bl>;

We usually end property list with 'status'.

> +};
> +
> +&lcdif {
> +	status = "okay";

Ditto

> +	assigned-clocks = <&clk IMX8MN_VIDEO_PLL1>;
> +	assigned-clock-rates = <594000000>;
> +};
> +
> +&pgc_dispmix {
> +	assigned-clocks = <&clk IMX8MN_CLK_DISP_AXI>, <&clk IMX8MN_CLK_DISP_APB>;
> +	assigned-clock-parents = <&clk IMX8MN_SYS_PLL2_1000M>, <&clk IMX8MN_SYS_PLL1_800M>;
> +	assigned-clock-rates = <500000000>, <200000000>;
> +};
> +
> +&mipi_dsi {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";

Ditto

> +	samsung,esc-clock-frequency = <20000000>;
> +	samsung,pll-clock-frequency = <12000000>;
> +
> +	panel@0 {
> +		compatible = "sharp,ls068b3sx02", "syna,r63353";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_panel>;
> +		reg = <0>;
> +
> +		backlight = <&backlight>;
> +		dvdd-supply = <&reg_3v3_dvdd>;
> +		avdd-supply = <&reg_v3v3_avdd>;
> +		reset-gpios = <&gpio4 29 GPIO_ACTIVE_HIGH>;
> +
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint = <&mipi_dsi_out>;
> +			};
> +		};
> +
> +	};
> +
> +	ports {
> +		port@1 {
> +			reg = <1>;

Have a newline between properties and child node.

> +			mipi_dsi_out: endpoint {
> +				remote-endpoint = <&panel_in>;
> +			};
> +		};
> +	};
> +};
> +
> +&gpu {
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +
> +	/* This is for both PWM and voltage regulators for display */
> +	pinctrl_bl: pwm1grp {
> +		fsl,pins = <
> +			MX8MN_IOMUXC_GPIO1_IO01_PWM1_OUT	0x16
> +		>;
> +	};
> +
> +	pinctrl_panel: panelgrp {
> +		fsl,pins = <
> +			MX8MN_IOMUXC_SAI3_RXC_GPIO4_IO29	0x16	/* panel reset */
> +		>;
> +	};
> +
> +	pinctrl_dvdd: dvddgrp {
> +		fsl,pins = <
> +			MX8MN_IOMUXC_GPIO1_IO07_GPIO1_IO7	0x16	/* VDD 3V3_VO3 */
> +		>;
> +	};
> +
> +	pinctrl_avdd: avddgrp {

Can we sort the pinctrl node alphabetically?

Shawn

> +		fsl,pins = <
> +			MX8MN_IOMUXC_GPIO1_IO05_GPIO1_IO5	0x16	/* VDD 3V3_VO2 */
> +		>;
> +	};
> +};
> -- 
> 2.43.0
> 

