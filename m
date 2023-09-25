Return-Path: <devicetree+bounces-2897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 227507ACD84
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:15:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 4870A1C203D9
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 01:15:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 535CFA40;
	Mon, 25 Sep 2023 01:15:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430D6A2A
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84EDDC433C8;
	Mon, 25 Sep 2023 01:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695604508;
	bh=OoTH/z7nJRsjocyuzHaS3i7q/qJKfFeyOBG9EcrBcPU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=joo4UVaG71XsA8rVr0xsLwun4AUIm0EYEba5zZDra7qr/cKm69w5yn7TDqm99io0z
	 QATvZbDjvztYeY42GNCDrC06aRplIxVkjKw2PlIpSHvkRvAvy6AplCdJ0EEIOQa+KB
	 TChpvcsJIjOzTHiEMUyDYhVbSeA2kfmK3uPenfzE36qLpO0mIMnCkoirwj9WkaO7qy
	 W0vf9mTkiSmoWkrm4cesEVEjK6MvDfyewmQ5WKRf/dJB2CH3sKqbTU3Dn42KJcVDkS
	 GBBmtO9klvu81t6GgeUtZ0iZT4DpKkefoGkRmjLliYBC1IdwAS+E3YKRBb6G78S3zx
	 rpVojpL8aMydQ==
Date: Mon, 25 Sep 2023 09:14:57 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, aford@beaconembedded.com,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] arm64: dts: imx8mm-beacon: Add DMIC support
Message-ID: <20230925011457.GE7231@dragon>
References: <20230831115128.254226-1-aford173@gmail.com>
 <20230831115128.254226-2-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230831115128.254226-2-aford173@gmail.com>

On Thu, Aug 31, 2023 at 06:51:26AM -0500, Adam Ford wrote:
> The baseboard has a connector for a pulse density microphone.
> This is connected via the micfil interface and uses the DMIC
> audio codec with the simple-audio-card.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-beacon-baseboard.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-beacon-baseboard.dtsi
> index 313e93663d6f..d0dd4c81a557 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-beacon-baseboard.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-beacon-baseboard.dtsi
> @@ -6,6 +6,13 @@
>  #include <dt-bindings/phy/phy-imx8-pcie.h>
>  
>  / {
> +
> +	dmic_codec: dmic-codec {
> +		compatible = "dmic-codec";
> +		num-channels = <1>;
> +		#sound-dai-cells = <0>;
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  
> @@ -98,6 +105,22 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
>  		enable-active-high;
>  	};
>  
> +	sound-dmic {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "dmic";
> +		simple-audio-card,format = "pdm";
> +		simple-audio-card,bitclock-master = <&dailink_master>;
> +		simple-audio-card,frame-master = <&dailink_master>;
> +
> +		dailink_master: simple-audio-card,cpu {
> +			sound-dai = <&micfil>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&dmic_codec>;
> +		};
> +	};
> +
>  	sound-wm8962 {
>  		compatible = "simple-audio-card";
>  		simple-audio-card,name = "wm8962";
> @@ -228,6 +251,16 @@ pca6416_1: gpio@21 {
>  	};
>  };
>  
> +&micfil {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pdm>;
> +	assigned-clocks = <&clk IMX8MM_CLK_PDM>;
> +	assigned-clock-parents = <&clk IMX8MM_AUDIO_PLL1_OUT>;
> +	assigned-clock-rates = <49152000>;
> +	status = "okay";

We usually end property list with 'status'.

Shawn

> +	#sound-dai-cells = <0>;
> +};
> +
>  &mipi_csi {
>  	status = "okay";
>  	ports {
> @@ -365,6 +398,13 @@ MX8MM_IOMUXC_SAI2_MCLK_GPIO4_IO27		0x19
>  		>;
>  	};
>  
> +	pinctrl_pdm: pdmgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI5_RXC_PDM_CLK	0xd6
> +			MX8MM_IOMUXC_SAI5_RXD0_PDM_DATA0	0xd6
> +		>;
> +	};
> +
>  	pinctrl_reg_usb_otg1: usbotg1grp {
>  		fsl,pins = <
>  			MX8MM_IOMUXC_SAI3_RXC_GPIO4_IO29     0x19
> -- 
> 2.39.2
> 

