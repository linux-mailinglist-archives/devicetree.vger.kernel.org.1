Return-Path: <devicetree+bounces-59235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 518028A4780
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 07:13:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2BE51F21CEE
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 05:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E835A23D0;
	Mon, 15 Apr 2024 05:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="KmBQr6da"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161971367;
	Mon, 15 Apr 2024 05:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.248
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713157991; cv=none; b=FUeik9Bw8+VGoqMv/BeuYwyQ5P/PbhJA7paIm7ZiY0nEWpqCUaX1e1AC/JY1Ldb9zhW2vilick3jjjK//ALbYJWeiM8NkDYHELGm8TqKNsAC/Xit7HnkC5lxD6GXfnlOH90hYLwELYeWX3823RsYsm8H3dYk4D0ko//hValSvRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713157991; c=relaxed/simple;
	bh=3ay7QUHVnq3g2qo7RYJPpuz89x8PWB5r7okF2VoLa1c=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=o4a4DeKeZo4wvxfvaJxijgWBc779MCv4j2P7mJQCmTmnOg0g1n30yr0LMRPDQPAyL6BVgF8aIeEfvnPAVkBl+QUqlygaLAxwvLLZN8O6wn/8Cow7rx5Oi/p9cHRWN7xly8dWpJv23giK5J+B6VU8jAjRNZOVbTi6qa4KgKQ7ifU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=KmBQr6da; arc=none smtp.client-ip=198.47.23.248
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 43F5CnKa049580;
	Mon, 15 Apr 2024 00:12:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1713157969;
	bh=U6MBw7wQDrCAyt79Is6SYYDcOKYGdw7dyNXobmxAR8Y=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=KmBQr6daNEVu7Mh4KVCMZK5Wf6uYtAFCBHkCDq/bt/aH1ClHlnJyeTWadNDw94nAz
	 jrFh2un75srNiDO02RdlVfRhnpzJe/LfHFyblcdyHsJfXtInZnuDzGTnX3kvaq41T2
	 S+bkaDL8sVP1kR6LaGaq4DT7UJ3iTCvo62mKuYwc=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 43F5CnV4110551
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 15 Apr 2024 00:12:49 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 15
 Apr 2024 00:12:49 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 15 Apr 2024 00:12:49 -0500
Received: from [172.24.31.60] (lt5cd2489kgj.dhcp.ti.com [172.24.31.60])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 43F5Cjkt123637;
	Mon, 15 Apr 2024 00:12:46 -0500
Message-ID: <85ea2b33-05ac-400f-8017-5539d21ebe32@ti.com>
Date: Mon, 15 Apr 2024 10:42:45 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-j784s4-evm: Add support for multiple
 CAN instances
To: Bhavya Kapoor <b-kapoor@ti.com>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <vigneshr@ti.com>
CC: <linux-arm-kernel@lists.infradead.org>, <conor+dt@kernel.org>,
        <krzk+dt@kernel.org>, <robh@kernel.org>, <kristo@kernel.org>,
        <nm@ti.com>, <u-kumar1@ti.com>
References: <20240411201747.18697-1-b-kapoor@ti.com>
Content-Language: en-US
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <20240411201747.18697-1-b-kapoor@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hello Bhavya,

On 4/12/2024 1:47 AM, Bhavya Kapoor wrote:
> CAN instances 0 and 1 in the mcu domain and 16 in the main domain are
> brought on the evm through headers J42, J43 and J46 respectively. Thus,
> add their respective transceiver's 0, 1 and 2 dt nodes to add support
> for these CAN instances.

Looking at schematic and board data sheet, it appears, board has 6 CAN 
interfaces.

[J41--J46],  but we are enabling only 4.

I understand, other interfaces might be used for other purpose.

Vignesh/Nishanth,

Do you think, this make sense to code all available interfaces on board and

mark as reserved, if used for other purpose , similar to what is done 
for wkup_uart for this board.


> CAN instance 4 in the main domain is brought on the evm through header
> J45. The CAN High and Low lines from the SoC are routed through a mux
> on the evm. The select lines need to be set for the CAN signals to
> reach to its transceiver on the evm. Therefore, add transceiver 3
> dt node to add support for this CAN instance.
>
> Signed-off-by: Bhavya Kapoor <b-kapoor@ti.com>
> ---
>
> rebased to next-20240411
>
>   arch/arm64/boot/dts/ti/k3-j784s4-evm.dts | 107 +++++++++++++++++++++++
>   1 file changed, 107 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts b/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
> index 81fd7afac8c5..e56901973895 100644
> --- a/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts
> @@ -272,6 +272,45 @@ dp0_connector_in: endpoint {
>   			};
>   		};
>   	};
> +
> +	transceiver0: can-phy0 {
> +		compatible = "ti,tcan1042";
> +		#phy-cells = <0>;
> +		max-bitrate = <5000000>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&mcu_mcan0_gpio_pins_default>;
> +		standby-gpios = <&wkup_gpio0 69 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	transceiver1: can-phy1 {
> +		compatible = "ti,tcan1042";
> +		#phy-cells = <0>;
> +		max-bitrate = <5000000>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&mcu_mcan1_gpio_pins_default>;
> +		standby-gpios = <&wkup_gpio0 2 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	transceiver2: can-phy2 {
> +		/* standby pin has been grounded by default */
> +		compatible = "ti,tcan1042";
> +		#phy-cells = <0>;
> +		max-bitrate = <5000000>;
> +	};
> +
> +	transceiver3: can-phy3 {
> +		compatible = "ti,tcan1042";
> +		#phy-cells = <0>;
> +		max-bitrate = <5000000>;
> +		standby-gpios = <&exp2 7 GPIO_ACTIVE_HIGH>;
> +		mux-states = <&mux1 1>;
> +	};
> +
> +	mux1: mux-controller {
> +		compatible = "gpio-mux";
> +		#mux-state-cells = <1>;
> +		mux-gpios = <&exp2 14 GPIO_ACTIVE_HIGH>;

Could you help here on logic to choose pin 14

As I see for this mux

S0 is CANUART_MUX_SEL0 [Pin 14, which you want to control as high]

S1 is Pin 15 is "CANUART_MUX2_SEL1"

S2 is high

So in order to get CAN on mux output

All, S0, S1 and S2 should be high.

IMO, you should control both S0 and S1, or just S1 and S0 with dip switch

> +	};
>   };
>   
>   &wkup_gpio0 {
> @@ -336,6 +375,20 @@ J784S4_IOPAD(0x014, PIN_INPUT_PULLUP, 8) /* (AG33) MCAN14_TX.I2C4_SCL */
>   			J784S4_IOPAD(0x010, PIN_INPUT_PULLUP, 8) /* (AH33) MCAN13_RX.I2C4_SDA */
>   		>;
>   	};
> +
> +	main_mcan4_pins_default: main-mcan4-default-pins {
> +		pinctrl-single,pins = <
> +			J784S4_IOPAD(0x088, PIN_INPUT, 0) /* (AF36) MCAN4_RX */
> +			J784S4_IOPAD(0x084, PIN_OUTPUT, 0) /* (AG38) MCAN4_TX */
> +		>;
> +	};
> +
> +	main_mcan16_pins_default: main-mcan16-default-pins {
> +		pinctrl-single,pins = <
> +			J784S4_IOPAD(0x028, PIN_INPUT, 0) /* (AE33) MCAN16_RX */
> +			J784S4_IOPAD(0x024, PIN_OUTPUT, 0) /* (AH34) MCAN16_TX */
> +		>;
> +	};
>   };
>   
>   &wkup_pmx2 {
> @@ -415,6 +468,32 @@ J784S4_WKUP_IOPAD(0x104, PIN_INPUT, 0) /* (U33) MCU_ADC1_AIN6 */
>   			J784S4_WKUP_IOPAD(0x108, PIN_INPUT, 0) /* (Y36) MCU_ADC1_AIN7 */
>   		>;
>   	};
> +
> +	mcu_mcan0_pins_default: mcu-mcan0-default-pins {
> +		pinctrl-single,pins = <
> +			J784S4_WKUP_IOPAD(0x050, PIN_OUTPUT, 0) /* (K33) MCU_MCAN0_TX */
> +			J784S4_WKUP_IOPAD(0x054, PIN_INPUT, 0) /* (F38) MCU_MCAN0_RX */
> +		>;
> +	};
> +
> +	mcu_mcan1_pins_default: mcu-mcan1-default-pins {
> +		pinctrl-single,pins = <
> +			J784S4_WKUP_IOPAD(0x068, PIN_OUTPUT, 0) /* (H35) WKUP_GPIO0_4.MCU_MCAN1_TX */
> +			J784S4_WKUP_IOPAD(0x06c, PIN_INPUT, 0) /* (K36) WKUP_GPIO0_5.MCU_MCAN1_RX */
> +		>;
> +	};
> +
> +	mcu_mcan0_gpio_pins_default: mcu-mcan0-gpio-default-pins {
> +		pinctrl-single,pins = <
> +			J784S4_WKUP_IOPAD(0x040, PIN_INPUT, 7) /* (J38) MCU_SPI0_D1.WKUP_GPIO0_69 */
> +		>;
> +	};
> +
> +	mcu_mcan1_gpio_pins_default: mcu-mcan1-gpio-default-pins {
> +		pinctrl-single,pins = <
> +			J784S4_WKUP_IOPAD(0x060, PIN_INPUT, 7) /* (J35) WKUP_GPIO0_2 */
> +		>;
> +	};
>   };
>   
>   &wkup_pmx1 {
> @@ -1105,3 +1184,31 @@ dp0_out: endpoint {
>   		};
>   	};
>   };
> +
> +&mcu_mcan0 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mcu_mcan0_pins_default>;
> +	phys = <&transceiver0>;
> +};
> +
> +&mcu_mcan1 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mcu_mcan1_pins_default>;
> +	phys = <&transceiver1>;
> +};
> +
> +&main_mcan16 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&main_mcan16_pins_default>;
> +	phys = <&transceiver2>;
> +};
> +
> +&main_mcan4 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&main_mcan4_pins_default>;
> +	phys = <&transceiver3>;
> +};

