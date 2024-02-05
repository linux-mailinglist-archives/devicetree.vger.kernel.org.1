Return-Path: <devicetree+bounces-38754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DCF84A0D9
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 18:34:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E24D1C22530
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 17:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06E5247F66;
	Mon,  5 Feb 2024 17:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="TsjV7eZ/"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92FE44C8C;
	Mon,  5 Feb 2024 17:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707154453; cv=none; b=dAT07Yrw/VrW9W1b4zxrPEPVrsdl1Fdf3dMmnzSgV2yLgpjdY3QRiGwGFEg4cWC/QmBfBP0JpU/oVLWbGfRN+2i2okK39X7IuTG5Kjcy37TgsO0PjPo32ITa5+1fTjEOPxEw+c1qYXHjm5yWboU4/rga/wpMN87HsKz0L9P7fDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707154453; c=relaxed/simple;
	bh=/jqtcPhqWUeQEj8DqWkxkYkh/jaLAKrAvduwRgOG6No=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=NvcCpFryg2lFcSYhq4JbWVOqcKsDcw4wljKt2Ig1+B9DLIwS/uoPfhF4CswNikMBuNmti1U/z7Tj2zqePLq5q7VCiXzhmN/NMSCpPaaFuWK855PIRg46Nri/xssOPgAnKeE/okAmH+hss6NTN+LtcDlv/XZ0yl+ll8npcsOUnD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=TsjV7eZ/; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 415HY3lU098555;
	Mon, 5 Feb 2024 11:34:03 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1707154443;
	bh=UrprV1G0cKfS8FbRkXrcvpyNcNC/ZRPQkv4yrO7fSz4=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=TsjV7eZ/Dw9zQRpLbqOk/AEF3ZBMEHDCZOQtGezLmJVVtT4HhoRUzE/raSz/K1W+L
	 cbWUemi01Ht/Jr3vn/UHfbbYPPUGSouo4IPT5a7M7Z2R/C7wbz+8PfK2O+dPeMnXHE
	 uJZ1dbSomIT39l0GuLP3q8bys3dPjJ4Or5EV1wFQ=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 415HY2Jg078472
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 5 Feb 2024 11:34:03 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 5
 Feb 2024 11:34:02 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 5 Feb 2024 11:34:02 -0600
Received: from [10.249.42.149] ([10.249.42.149])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 415HY1wk111997;
	Mon, 5 Feb 2024 11:34:02 -0600
Message-ID: <45a0ed98-8dd2-4c5b-8e89-40c70e3fe831@ti.com>
Date: Mon, 5 Feb 2024 11:34:01 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] arm64: dts: ti: k3-am62p: add the USB sub-system
Content-Language: en-US
To: Roger Quadros <rogerq@kernel.org>, <nm@ti.com>, <vigneshr@ti.com>
CC: <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <srk@ti.com>, <r-gunasekaran@ti.com>, <b-liu@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <20240205135908.54656-1-rogerq@kernel.org>
 <20240205135908.54656-4-rogerq@kernel.org>
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20240205135908.54656-4-rogerq@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 2/5/24 7:59 AM, Roger Quadros wrote:
> There are two USB instances available on the am62p5 starter kit. Include
> and enable them for use on the board.
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> Signed-off-by: Roger Quadros <rogerq@kernel.org>
> ---
> 
> Notes:
>      Changelog:
>      
>      v4 - no change
>      
>      v3 - no change
>      https://lore.kernel.org/all/20240201120332.4811-4-rogerq@kernel.org/
>      
>      v2:
>      - added USB PHY CTRL node changes here
>      - changed USB wrapper node names to usb@
>      - changed Type-C chip node name to usb-power-control@
> 
>   arch/arm64/boot/dts/ti/k3-am62p-main.dtsi   | 46 ++++++++++++++
>   arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi | 10 +++
>   arch/arm64/boot/dts/ti/k3-am62p5-sk.dts     | 67 +++++++++++++++++++++
>   3 files changed, 123 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
> index 4c51bae06b57..17d28390d587 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
> @@ -560,6 +560,52 @@ sdhci2: mmc@fa20000 {
>   		status = "disabled";
>   	};
>   
> +	usbss0: usb@f900000 {
> +		compatible = "ti,am62-usb";
> +		reg = <0x00 0x0f900000 0x00 0x800>;
> +		clocks = <&k3_clks 161 3>;
> +		clock-names = "ref";
> +		ti,syscon-phy-pll-refclk = <&usb0_phy_ctrl 0x0>;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		power-domains = <&k3_pds 178 TI_SCI_PD_EXCLUSIVE>;
> +		ranges;
> +		status = "disabled";
> +
> +		usb0: usb@31000000 {
> +			compatible = "snps,dwc3";
> +			reg = <0x00 0x31000000 0x00 0x50000>;
> +			interrupts = <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>, /* irq.0 */
> +			<GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>; /* irq.0 */
> +			interrupt-names = "host", "peripheral";
> +			maximum-speed = "high-speed";
> +			dr_mode = "otg";
> +		};
> +	};
> +
> +	usbss1: usb@f910000 {
> +		compatible = "ti,am62-usb";
> +		reg = <0x00 0x0f910000 0x00 0x800>;
> +		clocks = <&k3_clks 162 3>;
> +		clock-names = "ref";
> +		ti,syscon-phy-pll-refclk = <&usb1_phy_ctrl 0x0>;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		power-domains = <&k3_pds 179 TI_SCI_PD_EXCLUSIVE>;
> +		ranges;
> +		status = "disabled";
> +
> +		usb1: usb@31100000 {
> +			compatible = "snps,dwc3";
> +			reg = <0x00 0x31100000 0x00 0x50000>;
> +			interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>, /* irq.0 */
> +			<GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>; /* irq.0 */
> +			interrupt-names = "host", "peripheral";
> +			maximum-speed = "high-speed";
> +			dr_mode = "otg";
> +		};
> +	};
> +
>   	fss: bus@fc00000 {
>   		compatible = "simple-bus";
>   		reg = <0x00 0x0fc00000 0x00 0x70000>;
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi
> index 19f42b39394e..00dd38b02a52 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi
> @@ -18,6 +18,16 @@ chipid: chipid@14 {
>   			reg = <0x14 0x4>;
>   			bootph-all;
>   		};
> +
> +		usb0_phy_ctrl: syscon@4008 {
> +			compatible = "ti,am62-usb-phy-ctrl", "syscon";
> +			reg = <0x4008 0x4>;
> +		};
> +
> +		usb1_phy_ctrl: syscon@4018 {
> +			compatible = "ti,am62-usb-phy-ctrl", "syscon";
> +			reg = <0x4018 0x4>;
> +		};
>   	};
>   
>   	wkup_uart0: serial@2b300000 {
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> index 1773c05f752c..80be56c0a4e0 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> @@ -27,6 +27,8 @@ aliases {
>   		spi0 = &ospi0;
>   		ethernet0 = &cpsw_port1;
>   		ethernet1 = &cpsw_port2;
> +		usb0 = &usb0;
> +		usb1 = &usb1;
>   	};
>   
>   	chosen {
> @@ -297,6 +299,12 @@ AM62PX_IOPAD(0x01b0, PIN_OUTPUT, 2) /* (G20) MCASP0_ACLKR.UART1_TXD */
>   		bootph-all;
>   	};
>   
> +	main_usb1_pins_default: main-usb1-default-pins {
> +		pinctrl-single,pins = <
> +			AM62PX_IOPAD(0x0258, PIN_INPUT, 0) /* (G21) USB1_DRVVBUS */
> +		>;
> +	};
> +
>   	main_wlirq_pins_default: main-wlirq-default-pins {
>   		pinctrl-single,pins = <
>   			AM62PX_IOPAD(0x0128, PIN_INPUT, 7) /* (K25) MMC2_SDWP.GPIO0_72 */
> @@ -340,6 +348,36 @@ AM62PX_IOPAD(0x0124, PIN_INPUT, 7) /* (J25) MMC2_SDCD.GPIO0_71 */
>   	};
>   };
>   
> +&main_i2c0 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&main_i2c0_pins_default>;
> +	clock-frequency = <400000>;
> +
> +	typec_pd0: usb-power-controller@3f {
> +		compatible = "ti,tps6598x";
> +		reg = <0x3f>;
> +
> +		connector {
> +			compatible = "usb-c-connector";
> +			label = "USB-C";
> +			self-powered;
> +			data-role = "dual";
> +			power-role = "sink";
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				port@0 {
> +					reg = <0>;
> +					usb_con_hs: endpoint {
> +						remote-endpoint = <&usb0_hs_ep>;
> +					};
> +				};
> +			};
> +		};
> +	};
> +};
> +
>   &main_i2c1 {
>   	status = "okay";
>   	pinctrl-names = "default";
> @@ -460,6 +498,35 @@ cpsw3g_phy1: ethernet-phy@1 {
>   	};
>   };
>   
> +&usbss0 {
> +	status = "okay";
> +	ti,vbus-divider;
> +};
> +
> +&usbss1 {
> +	status = "okay";
> +	ti,vbus-divider;
> +};
> +
> +&usb0 {
> +	usb-role-switch;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	port@0 {
> +		reg = <0>;
> +		usb0_hs_ep: endpoint {
> +			remote-endpoint = <&usb_con_hs>;
> +		};
> +	};
> +};
> +
> +&usb1 {
> +	dr_mode = "host";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&main_usb1_pins_default>;

I'm not super familiar with USB, but I see this pinmux for the
"DRVVBUS" pin is usually added the the parent USB subsystem node (usbss).
Does this pin belong to the subsystem or the specific USB instance?

Andrew

> +};
> +
>   &mcasp1 {
>   	status = "okay";
>   	#sound-dai-cells = <0>;

