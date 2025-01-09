Return-Path: <devicetree+bounces-136931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C1175A06F8B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 08:56:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 580C43A7B99
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 07:56:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C939E214A7A;
	Thu,  9 Jan 2025 07:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQzW38XL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E457214A71;
	Thu,  9 Jan 2025 07:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736409354; cv=none; b=XUkZu97d9XFahscS3L3GPo3NJc4nxfEbTX3ko6q79KPRn50Mu9fDl00suimtB5TYjiF8PAilRe6JNesOUDGMYeFbaohiuBtbKQ+SAedN+/VogkJUb0yCIutKjjgKxnf4J5vG1E2UmeWeG0CZzd3+wfJmG8vXloSLWMjaWFlHu/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736409354; c=relaxed/simple;
	bh=wgcey/kQiN800rSSdv2KSbHhuAIs+1NSfhJe54lJy3o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CVrqQF/E+SrEJTtgq21eJvfBn2vHBh7QwqtO1byUfWIe+kxmdOM9es8pz2lR1WG1jmTA0t236UewakY5372c9qCDaVbbQcBh63K+Daz7N/PyKGEYBybcPWH70hu9V9XMqwREjkJIvg//SBZ52XEfwORmmMAM3fewF9fCVPAKqZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQzW38XL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60A02C4CED2;
	Thu,  9 Jan 2025 07:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736409354;
	bh=wgcey/kQiN800rSSdv2KSbHhuAIs+1NSfhJe54lJy3o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XQzW38XL6YK6Nrzoc7Zi39V5umxnrJN8iJ7yKrkDhddQ0MA9aR9E6l6b3Jc/CKREL
	 8eNwWkJ0l+0VBlgHBrCt9eYF/4nnZElboJDB76zVodb4TxJkQavtQL4LMmNiSZpksC
	 BDLd+tPs2NhMy6jZ2Jmv0Xulv+LJIpXuPIBe33k+viBke3DnBJurxe5JXZDU4uWBH8
	 EHjK14oPxl0rnEuw87Ov4zZyEPvmjNmNIsgnSapdrD9E8NxpTunxZt5Dja0mjsuTSj
	 rZj2fXCH+uhpdnoawiFmj5xH6uO16YFqBE+L4DB0fGgED2foQrTBwiSVFXP2Sncb/R
	 jZhmLyVqNROIg==
Message-ID: <325c495b-8e5a-412f-9974-3ec7ab15b479@kernel.org>
Date: Thu, 9 Jan 2025 08:55:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 7/7] arm64: dts: mediatek: add display support for
 mt8365-evk
To: Alexandre Mergnat <amergnat@baylibre.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20231023-display-support-v5-0-3905f1e4b835@baylibre.com>
 <20231023-display-support-v5-7-3905f1e4b835@baylibre.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20231023-display-support-v5-7-3905f1e4b835@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/01/2025 17:15, Alexandre Mergnat wrote:
>  
> +&i2c1 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	clock-div = <2>;
> +	clock-frequency = <100000>;
> +	pinctrl-0 = <&i2c1_pins>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +
> +	it66121_hdmi: hdmi@4c {
> +		#sound-dai-cells = <0>;

compatible is always, ALWAYS first.

> +		compatible = "ite,it66121";

reg follows.


> +		interrupt-parent = <&pio>;
> +		interrupts = <68 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-0 = <&ite_pins>;
> +		pinctrl-names = "default";
> +		reg = <0x4c>;
> +		reset-gpios = <&pio 69 GPIO_ACTIVE_LOW>;
> +		vcn18-supply = <&mt6357_vsim2_reg>;
> +		vcn33-supply = <&mt6357_vibr_reg>;
> +		vrf12-supply = <&mt6357_vrf12_reg>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <0>;
> +				it66121_in: endpoint@0 {
> +					reg = <0>;
> +					bus-width = <12>;
> +					remote-endpoint = <&dpi0_out>;
> +				};
> +			};
> +
> +			port@1 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <1>;
> +				hdmi_connector_out: endpoint@0 {
> +					reg = <0>;
> +					remote-endpoint = <&hdmi_connector_in>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
>  &mmc0 {
>  	assigned-clock-parents = <&topckgen CLK_TOP_MSDCPLL>;
>  	assigned-clocks = <&topckgen CLK_TOP_MSDC50_0_SEL>;
> @@ -205,6 +362,11 @@ &mt6357_pmic {
>  	mediatek,micbias1-microvolt = <1700000>;
>  };
>  
> +&mt6357_vsim1_reg {
> +	regulator-min-microvolt = <1800000>;
> +	regulator-max-microvolt = <1800000>;
> +};
> +
>  &pio {
>  	aud_default_pins: audiodefault-pins {
>  		clk-dat-pins {
> @@ -267,6 +429,49 @@ clk-dat-pins {
>  		};
>  	};
>  
> +	dpi_default_pins: dpi-default-pins {
> +		pins {
> +			pinmux = <MT8365_PIN_0_GPIO0__FUNC_DPI_D0>,
> +				 <MT8365_PIN_1_GPIO1__FUNC_DPI_D1>,
> +				 <MT8365_PIN_2_GPIO2__FUNC_DPI_D2>,
> +				 <MT8365_PIN_3_GPIO3__FUNC_DPI_D3>,
> +				 <MT8365_PIN_4_GPIO4__FUNC_DPI_D4>,
> +				 <MT8365_PIN_5_GPIO5__FUNC_DPI_D5>,
> +				 <MT8365_PIN_6_GPIO6__FUNC_DPI_D6>,
> +				 <MT8365_PIN_7_GPIO7__FUNC_DPI_D7>,
> +				 <MT8365_PIN_8_GPIO8__FUNC_DPI_D8>,
> +				 <MT8365_PIN_9_GPIO9__FUNC_DPI_D9>,
> +				 <MT8365_PIN_10_GPIO10__FUNC_DPI_D10>,
> +				 <MT8365_PIN_11_GPIO11__FUNC_DPI_D11>,
> +				 <MT8365_PIN_12_GPIO12__FUNC_DPI_DE>,
> +				 <MT8365_PIN_13_GPIO13__FUNC_DPI_VSYNC>,
> +				 <MT8365_PIN_14_GPIO14__FUNC_DPI_CK>,
> +				 <MT8365_PIN_15_GPIO15__FUNC_DPI_HSYNC>;
> +			drive-strength = <4>;
> +		};
> +	};
> +
> +	dpi_idle_pins: dpi-idle-pins {
> +		pins {
> +			pinmux = <MT8365_PIN_0_GPIO0__FUNC_GPIO0>,
> +				 <MT8365_PIN_1_GPIO1__FUNC_GPIO1>,
> +				 <MT8365_PIN_2_GPIO2__FUNC_GPIO2>,
> +				 <MT8365_PIN_3_GPIO3__FUNC_GPIO3>,
> +				 <MT8365_PIN_4_GPIO4__FUNC_GPIO4>,
> +				 <MT8365_PIN_5_GPIO5__FUNC_GPIO5>,
> +				 <MT8365_PIN_6_GPIO6__FUNC_GPIO6>,
> +				 <MT8365_PIN_7_GPIO7__FUNC_GPIO7>,
> +				 <MT8365_PIN_8_GPIO8__FUNC_GPIO8>,
> +				 <MT8365_PIN_9_GPIO9__FUNC_GPIO9>,
> +				 <MT8365_PIN_10_GPIO10__FUNC_GPIO10>,
> +				 <MT8365_PIN_11_GPIO11__FUNC_GPIO11>,
> +				 <MT8365_PIN_12_GPIO12__FUNC_GPIO12>,
> +				 <MT8365_PIN_13_GPIO13__FUNC_GPIO13>,
> +				 <MT8365_PIN_14_GPIO14__FUNC_GPIO14>,
> +				 <MT8365_PIN_15_GPIO15__FUNC_GPIO15>;
> +		};
> +	};
> +
>  	ethernet_pins: ethernet-pins {
>  		phy_reset_pins {
>  			pinmux = <MT8365_PIN_133_TDM_TX_DATA1__FUNC_GPIO133>;
> @@ -308,6 +513,33 @@ pins {
>  		};
>  	};
>  
> +	i2c1_pins: i2c1-pins {
> +		pins {
> +			pinmux = <MT8365_PIN_59_SDA1__FUNC_SDA1_0>,
> +				 <MT8365_PIN_60_SCL1__FUNC_SCL1_0>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	ite_pins: ite-pins {
> +		irq_ite_pins {
That's some downstream copy-paste. Align DTS coding style.

Best regards,
Krzysztof

