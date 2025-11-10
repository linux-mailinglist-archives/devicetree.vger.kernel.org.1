Return-Path: <devicetree+bounces-236610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB3FC45CD7
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:04:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 172A7189122E
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:05:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B75FF2FF661;
	Mon, 10 Nov 2025 10:04:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgbr2.qq.com (smtpbgbr2.qq.com [54.207.22.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA32A2FE06C
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 10:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.22.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762769083; cv=none; b=TCvomwAvW9LeaHmauXcSqIMesCNrKTHGMRKTF0SMouAFnyIoHY+YKeZswa+vh8SM/c6qDWLg02d3ieSK26/Eq1tCKc5NvkKfWjbHLvfDGZmhQF3K4ygqm9ZEn3UqpSCOwKYr7+GIn5gjRw0jrm5j83eW9KG1RMXWkvWL2y62peM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762769083; c=relaxed/simple;
	bh=G5RFqggw/8bQoz9YUTBWfs5kWiifPxldKwMslsX7Qb8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n/4+gJdxs4Vyh3oSgRm+JFeiVI12obzYXBADP/uSf4fUm7GnTk8zlgc7X/bbgglUbnrdhE3xA78fApvMNqM6wfXDA3fAoq3YgN5Yg+4zFB9knCMFYJu3tC4xAFL0bg1DxFZaalg7RQXFkKUqYHfjd7FEZxApDnzb2pm6TmUyFug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.207.22.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1762768996t6564731f
X-QQ-Originating-IP: iLVhDFTu6feuscF3wXTXlffxykCNUkLurP6W/VoU7XY=
Received: from [IPV6:240f:10b:7440:1:64e0:6ba: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 10 Nov 2025 18:03:13 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3954833008606545328
Message-ID: <860B315F1E384446+bead5cf3-487a-46e4-a7c1-aaa1020c967f@radxa.com>
Date: Mon, 10 Nov 2025 19:03:13 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 11/14] arm64: dts: rockchip: Sort nodes/properties for
 Radxa ROCK 5C
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251109141859.206835-1-naoki@radxa.com>
 <20251109141859.206835-12-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251109141859.206835-12-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NDd9MucL1yTJl1FrNxHCKR9PTbGfRM37UKqjYKREDaHUHiKlRakjNaGl
	kGMCLXyPdz+SI/w1mJVAXL57Xk/sdm7bixeynebbqyDQW60B8vIN3rnmzGti63DBG1P1uWK
	5BllQVsomq2IjXh+MAjZm03WvurfZtWXHpdO07F1uafwp5A14CbxEDph2ArLfrg31RwpYP9
	rxPNFaOagz4lGa2OBxhIGQDaWR+DXLuITmUGzSjvB1BeDUEGyitdwNSgeathDp1abdbCq5L
	9EYhnxV5nOTvdN1lUjXQDdBNbIzgOQbiXOUZgBzOw2xVDauWtWMLsTMEFpo5XX9+8MCuXXm
	ZFFk26txAp1ECVj179DKeXTzlfvNHGaMF/G9+1eHf6JcApbzvYSCXXO6DIb+RpcCXGWd+Vi
	KCEBtYKHXTn4XwwI/BoK387RMYUCzoYMY3pM3cE/PJ30IYGL/b2hr0VC9h15aZ5Wv1PJAxs
	dmCOA4Lpxufz5OAX6vZmC5EMJkO3fuxDf9FwchAjMZmH0M9qcj2jLlD5OtRzfzW6wrYrzVv
	N0g6qLkK1USi/FxqQx0aVRiSWt2bzkZPQo5jlVEJufnEDmArBOx7M7zarA3FhLU9X2Mw5eC
	miIgmqU8O/vRveVcmwz5s0+IpBXSF6mTT8Srf7jVFrZc0SIusXDbL7nxhvJHlc9y1FMYosb
	6j7pNu6Gp++BBpLCrnsthMnZQn7nnHqXTNFtf3SFjT6uAyd8IQ7QtvbBxqt5Ug0K22TK99a
	+bAlq/sksF1K7I3HA679shCtxG/9godpwAw6IBWq9BdKeV9XuKU3yiNmc/in1ArBhW4w1PM
	omVmhkt7G7XcXRFszEym5q4nfE3PqUcYapeYq3HVPuzgy5T+yOs5BIJ0u6TR13QdPKV/C7Y
	Qt9ynnuEBsuksUMrlv16ifDfemNnApgw3qRDC0jnVZHGGPFnhWYLJUTRAFh/5DJkzCbD+0G
	c1iDyKpyJmpTlW0wjM562DIUuEkgtmeX2AG4=
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0

Hi,

On 11/9/25 23:18, FUKAUMI Naoki wrote:
> Sort nodes/properties alphanumerically. No functional change.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v7:
> - Reflect other commits, no functional change
> Changes in v6:
> - Reflect other commits, no functional change
> Changes in v5:
> - Reword commit message
> Changes in v4:
> - Reflect other commits, no functional change
> Changes in v3:
> - None
> Changes in v2:
> - New
> ---
>   .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 162 +++++++++---------
>   1 file changed, 81 insertions(+), 81 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 4e15c28f8a5fa..6ef9a5d8cd9c1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -25,15 +25,12 @@ chosen {
>   		stdout-path = "serial2:1500000n8";
>   	};
>   
> -	sound {
> -		compatible = "audio-graph-card";
> -		label = "rk3588-es8316";
> -		dais = <&i2s0_8ch_p0>;
> -		routing = "MIC2", "Mic Jack",
> -			  "Headphones", "HPOL",
> -			  "Headphones", "HPOR";
> -		widgets = "Microphone", "Mic Jack",
> -			  "Headphone", "Headphones";
> +	fan: fan {
> +		compatible = "pwm-fan";
> +		#cooling-cells = <2>;
> +		cooling-levels = <0 64 128 192 255>;

This should be

		cooling-levels = <0 24 44 64 128 192 255>;

I'll fix this in v8.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> +		fan-supply = <&vcc_5v0>;
> +		pwms = <&pwm3 0 60000 0>;
>   	};
>   
>   	hdmi0-con {
> @@ -70,12 +67,14 @@ led-1 {
>   		};
>   	};
>   
> -	fan: fan {
> -		compatible = "pwm-fan";
> -		#cooling-cells = <2>;
> -		cooling-levels = <0 24 44 64 128 192 255>;
> -		fan-supply = <&vcc_5v0>;
> -		pwms = <&pwm3 0 60000 0>;
> +	vcc_1v1_nldo_s3: regulator-1v1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_1v1_nldo_s3";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1100000>;
> +		regulator-max-microvolt = <1100000>;
> +		vin-supply = <&vcc_sysin>;
>   	};
>   
>   	vcc3v3_pcie2x1l2: regulator-3v3-0 {
> @@ -90,6 +89,40 @@ vcc3v3_pcie2x1l2: regulator-3v3-0 {
>   		vin-supply = <&vcc_sysin>;
>   	};
>   
> +	vcc_3v3_s0: regulator-3v3-1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_3v3_s0";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_3v3_s3>;
> +	};
> +
> +	vdd_3v3: regulator-3v3-2 {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usb_wifi_pwr>;
> +		regulator-name = "vdd_3v3";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_3v3_s3>;
> +	};
> +
> +	vcca: regulator-4v0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcca";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <4000000>;
> +		regulator-max-microvolt = <4000000>;
> +		vin-supply = <&vcc_sysin>;
> +	};
> +
>   	vcc5v_dcin: regulator-5v0-0 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "vcc5v_dcin";
> @@ -123,26 +156,6 @@ vcc5v0_usb_otg0: regulator-5v0-2 {
>   		vin-supply = <&vcc_sysin>;
>   	};
>   
> -	vcc_1v1_nldo_s3: regulator-1v1 {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc_1v1_nldo_s3";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <1100000>;
> -		regulator-max-microvolt = <1100000>;
> -		vin-supply = <&vcc_sysin>;
> -	};
> -
> -	vcc_3v3_s0: regulator-3v3-1 {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc_3v3_s0";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <3300000>;
> -		regulator-max-microvolt = <3300000>;
> -		vin-supply = <&vcc_3v3_s3>;
> -	};
> -
>   	vcc_5v0: regulator-5v0-3 {
>   		compatible = "regulator-fixed";
>   		enable-active-high;
> @@ -165,28 +178,15 @@ vcc_sysin: regulator-5v0-4 {
>   		vin-supply = <&vcc5v_dcin>;
>   	};
>   
> -	vcca: regulator-4v0 {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcca";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <4000000>;
> -		regulator-max-microvolt = <4000000>;
> -		vin-supply = <&vcc_sysin>;
> -	};
> -
> -	vdd_3v3: regulator-3v3-2 {
> -		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&usb_wifi_pwr>;
> -		regulator-name = "vdd_3v3";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <3300000>;
> -		regulator-max-microvolt = <3300000>;
> -		vin-supply = <&vcc_3v3_s3>;
> +	sound {
> +		compatible = "audio-graph-card";
> +		label = "rk3588-es8316";
> +		dais = <&i2s0_8ch_p0>;
> +		routing = "MIC2", "Mic Jack",
> +			  "Headphones", "HPOL",
> +			  "Headphones", "HPOR";
> +		widgets = "Microphone", "Mic Jack",
> +			  "Headphone", "Headphones";
>   	};
>   };
>   
> @@ -399,27 +399,27 @@ &package_thermal {
>   
>   	trips {
>   		package_fan0: package-fan0 {
> -			temperature = <55000>;
>   			hysteresis = <2000>;
> +			temperature = <55000>;
>   			type = "active";
>   		};
>   
>   		package_fan1: package-fan1 {
> -			temperature = <65000>;
>   			hysteresis = <2000>;
> +			temperature = <65000>;
>   			type = "active";
>   		};
>   	};
>   
>   	cooling-maps {
>   		map0 {
> -			trip = <&package_fan0>;
>   			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
> +			trip = <&package_fan0>;
>   		};
>   
>   		map1 {
> -			trip = <&package_fan1>;
>   			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
> +			trip = <&package_fan1>;
>   		};
>   	};
>   };
> @@ -437,6 +437,12 @@ &pd_gpu {
>   };
>   
>   &pinctrl {
> +	ethernet {
> +		gmac1_rstn: gmac1-rstn {
> +			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>   	leds {
>   		io_led: io-led {
>   			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
> @@ -447,12 +453,6 @@ power_led: power-led {
>   		};
>   	};
>   
> -	ethernet {
> -		gmac1_rstn: gmac1-rstn {
> -			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -
>   	pcie {
>   		pcie20x1_2_perstn_m0: pcie20x1-2-perstn-m0 {
>   			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
> @@ -463,6 +463,12 @@ pow_en: pow-en {
>   		};
>   	};
>   
> +	regulators {
> +		vcc_5v0_pwren_h: vcc-5v0-pwren-h {
> +			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>   	usb {
>   		usb_host_pwren_h: usb-host-pwren-h {
>   			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
> @@ -476,12 +482,6 @@ usb_wifi_pwr: usb-wifi-pwr {
>   			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
> -
> -	regulators {
> -		vcc_5v0_pwren_h: vcc-5v0-pwren-h {
> -			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
>   };
>   
>   &pwm3 {
> @@ -500,8 +500,8 @@ &sdhci {
>   	cap-mmc-highspeed;
>   	mmc-hs400-1_8v;
>   	mmc-hs400-enhanced-strobe;
> -	no-sdio;
>   	no-sd;
> +	no-sdio;
>   	non-removable;
>   	vmmc-supply = <&vcc_3v3_s0>;
>   	vqmmc-supply = <&vccio_flash>;
> @@ -514,8 +514,8 @@ &sdmmc {
>   	cap-sd-highspeed;
>   	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>   	disable-wp;
> -	no-sdio;
>   	no-mmc;
> +	no-sdio;
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd>;
>   	sd-uhs-sdr104;
> @@ -538,12 +538,12 @@ flash@0 {
>   };
>   
>   &spi2 {
> -	status = "okay";
>   	assigned-clocks = <&cru CLK_SPI2>;
>   	assigned-clock-rates = <200000000>;
>   	num-cs = <1>;
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
> +	status = "okay";
>   
>   	pmic@0 {
>   		compatible = "rockchip,rk806";
> @@ -898,10 +898,6 @@ &uart2 {
>   	status = "okay";
>   };
>   
> -&usbdp_phy0 {
> -	status = "okay";
> -};
> -
>   &usb_host0_ehci {
>   	status = "okay";
>   };
> @@ -923,7 +919,7 @@ &usb_host2_xhci {
>   	status = "okay";
>   };
>   
> -&vop_mmu {
> +&usbdp_phy0 {
>   	status = "okay";
>   };
>   
> @@ -931,6 +927,10 @@ &vop {
>   	status = "okay";
>   };
>   
> +&vop_mmu {
> +	status = "okay";
> +};
> +
>   &vp0 {
>   	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
>   		reg = <ROCKCHIP_VOP2_EP_HDMI0>;


