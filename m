Return-Path: <devicetree+bounces-19046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E617F97BB
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:57:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 76DD8B20A1E
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:57:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D8261C29;
	Mon, 27 Nov 2023 02:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scoiiHyk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E4E17E3
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:57:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57B52C433C8;
	Mon, 27 Nov 2023 02:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701053831;
	bh=1JsYrnaKOXBSSBmst8jDG0Y0RikUhacklEL+uSp9B2k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=scoiiHyk96Mxd3J3gNIGvbvCMGknLnXXH/B99NhwRHMlmi9aUw76f4n++Z+TL8S5A
	 thdYdwiqlUtGTNnGtzxJLBktq9rh6IFk92aoZ7p6Uq/qCWg3zGNk4Y7fkJhWti3Z8I
	 h1duZuFN5wz/rbqXvCRfXnrd7HOxMnQ32ucTRifzL4M0fodc7a4M8lRJNL1jFVLoJ1
	 geKiuGFQZnji647J2upsd/7RApNWWg6zH6ZX0NPiRW7qSWGNadwakeFMcBx0x4f9Em
	 2ng9hRIeI20zM6CEWb3ZT8zBsI2Ovm5Y9uHirQsT0gRMHOIica9X0C3s1h+wsYBSeJ
	 O1upfkedU5q/A==
Date: Mon, 27 Nov 2023 10:57:06 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: devicetree@vger.kernel.org, Marco Felsch <m.felsch@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] arm64: dts: freescale: debix-som-a-bmb-08: Add CSI
 Power Regulators
Message-ID: <20231127025706.GT87953@dragon>
References: <20231101104614.2209986-1-kieran.bingham@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231101104614.2209986-1-kieran.bingham@ideasonboard.com>

On Wed, Nov 01, 2023 at 10:46:11AM +0000, Kieran Bingham wrote:
> Provide the 1.8 and 3.3 volt regulators that are utilised on the Debix
> SOM BMB-08 base board.
> 
> Facilitate this by also supplying the pin control used to enable the
> regulators on the second MIPI CSI port.
> 
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> 
> ---
> v2:
>  - Remove _SW post fixes from regulators.
> 
>  .../freescale/imx8mp-debix-som-a-bmb-08.dts   | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
> index 0b0c95432bdc..386177c66c6d 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
> @@ -63,6 +63,50 @@ regulator-som-vdd3v3 {
>  		regulator-always-on;
>  	};
>  
> +	reg_csi1_1v8: regulator-csi1-vdd1v8 {
> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-name = "CSI1_VDD1V8";
> +		gpio = <&expander0 13 GPIO_ACTIVE_HIGH>;
> +		vin-supply = <&reg_baseboard_vdd3v3>;
> +		enable-active-high;

Could you move it one line above, so that it appears right after
GPIO_ACTIVE_HIGH polarity?

Shawn

> +	};
> +
> +	reg_csi1_3v3: regulator-csi1-vdd3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "CSI1_VDD3V3";
> +		gpio = <&expander0 14 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		vin-supply = <&reg_vdd5v0>;
> +	};
> +
> +	reg_csi2_1v8: regulator-csi2-vdd1v8 {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_reg_csi2_1v8>;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-name = "CSI2_VDD1V8";
> +		gpio = <&gpio3 21 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		vin-supply = <&reg_baseboard_vdd3v3>;
> +	};
> +
> +	reg_csi2_3v3: regulator-csi2-vdd3v3 {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_reg_csi2_3v3>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "CSI2_VDD3V3";
> +		gpio = <&gpio4 25 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		vin-supply = <&reg_vdd5v0>;
> +	};
> +
>  	regulator-vbus-usb20 {
>  		compatible = "regulator-fixed";
>  		regulator-min-microvolt = <5000000>;
> @@ -413,6 +457,18 @@ MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03		0x41
>  		>;
>  	};
>  
> +	pinctrl_reg_csi2_1v8: regcsi21v8grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI5_RXD0__GPIO3_IO21		0x19
> +		>;
> +	};
> +
> +	pinctrl_reg_csi2_3v3: regcsi23v3grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25		0x19
> +		>;
> +	};
> +
>  	pinctrl_uart2: uart2grp {
>  		fsl,pins = <
>  			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX		0x14f
> -- 
> 2.34.1
> 

