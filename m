Return-Path: <devicetree+bounces-13245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5FB7DD079
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 16:27:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BBDCFB20DDF
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 15:27:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A63C1E518;
	Tue, 31 Oct 2023 15:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lQqtcPkp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8FAB28EF
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 15:27:20 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0D2D9F
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 08:27:18 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-507975d34e8so8395809e87.1
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 08:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698766037; x=1699370837; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mh5G9tVVf1JRV0Miwwbk1Eyiy5gIebT90d4LTmK9Wrk=;
        b=lQqtcPkpSZwodxP+NlGpM1lCE6nO/w4gpMHp88r5xwnm4K883B/2rQq1byUerpyukv
         D7Cg6vMPatWnJdxmYy/JKp+AaUHYhd9qtHacVdP5DHsZEyNGA2XmuFtaoa81w2flflzW
         MDEUtTHfBhgiII93WqlFsntgStHOytgBQZ9n8HjX5WnhNj1cqajo3WLwh3rJCEXo/QtS
         F1Ss3BBotnEEDp9vMzeUy8ZRBiWu5oth9kZS3WaWY9UX/2nlGpqBylkFmvVmrxQJmN/7
         sCcJ2ZQeNGsI2PQQUPjlx+Eqhf//MWrU5o4GCxphCXru5D42VXRGy4v4bDXUCPn+0N5G
         i/tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698766037; x=1699370837;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mh5G9tVVf1JRV0Miwwbk1Eyiy5gIebT90d4LTmK9Wrk=;
        b=f3iXfemOMhMePZQSh5n8xaZITlB73uOpNuwis36xwWt+WTbDva8MdhGc9NHNJRq2PT
         4h77d6WcmjBUo8KLV9W8pUB1AT5yw+8sUKu4aGfQl0EYWI721PstcOZ9p+vk2Hptl4RX
         lUwApcI4R9XF8KZGbEobZJIcnuoGr95FqYD+tzzslYqeIhiR3MiLBGqs8xDem9dQM75p
         Kh9eNWdq1IntYLoTdsh4rKSdAZC/T059pJz7ClGOW518e79Z9Dbz2iHWVthgcXRrRJs6
         QS9ixZ6J2RA2P9kNhgCq2PcGaQQir30Hd+Qpj3Uo5HBTxzfC6965SUapTLnBeCbbDLC3
         +Q1w==
X-Gm-Message-State: AOJu0YzTsYkZ68WRM97akbi6AjOwkxkJjw8v9sc8CgmJ4kStqwqZ9Ov9
	zZGrHsuSvVD4/G8jtg5lXsoObxzfnEl9LguvMW4=
X-Google-Smtp-Source: AGHT+IE4pC3t7FwqoQD0BIaIDI2MyHaowR4Ik+vtDtozLojI3EFuqYMFMD/+gJ/POw2/NQahzE9vSQ==
X-Received: by 2002:a05:6512:1110:b0:507:9608:4a87 with SMTP id l16-20020a056512111000b0050796084a87mr10317659lfg.56.1698766036843;
        Tue, 31 Oct 2023 08:27:16 -0700 (PDT)
Received: from [192.168.143.96] (178235177091.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.91])
        by smtp.gmail.com with ESMTPSA id q16-20020ac25110000000b005057fe45833sm236371lfb.227.2023.10.31.08.27.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 08:27:16 -0700 (PDT)
Message-ID: <8be3b4f4-f3d1-41c8-bd4a-90adf1a02ea6@linaro.org>
Date: Tue, 31 Oct 2023 16:27:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 5/5] arm64: dts: qcom: ipq9574: Add support for SPI
 nand
Content-Language: en-US
To: Md Sadre Alam <quic_mdalam@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, broonie@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-spi@vger.kernel.org, quic_srichara@quicinc.com, qpic_varada@quicinc.com
References: <20231031120307.1600689-1-quic_mdalam@quicinc.com>
 <20231031120307.1600689-6-quic_mdalam@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20231031120307.1600689-6-quic_mdalam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 31.10.2023 13:03, Md Sadre Alam wrote:
> Add support for QPIC SPI NAND for IPQ9574
> 
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 56 ++++++++++-----------
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi       | 30 ++++++++++-
>  2 files changed, 57 insertions(+), 29 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> index 1bb8d96c9a82..5e4200edb873 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> @@ -15,48 +15,48 @@ / {
>  	compatible = "qcom,ipq9574-ap-al02-c7", "qcom,ipq9574";
>  };
>  
> -&sdhc_1 {
> -	pinctrl-0 = <&sdc_default_state>;
> -	pinctrl-names = "default";
> -	mmc-ddr-1_8v;
> -	mmc-hs200-1_8v;
> -	mmc-hs400-1_8v;
> -	mmc-hs400-enhanced-strobe;
> -	max-frequency = <384000000>;
> -	bus-width = <8>;
> -	status = "okay";
> -};
How is removing SDHCI related to adding support for SPI NAND flash?
You must explain your changes in the commit message.

> -
>  &tlmm {
> -	sdc_default_state: sdc-default-state {
> -		clk-pins {
> +	qspi_nand_pins: qspi_nand_pins {
node names (between : and {) must not include underscores, use
hyphens instead

> +		spi_clock {
>  			pins = "gpio5";
> -			function = "sdc_clk";
> +			function = "qspi_clk";
>  			drive-strength = <8>;
>  			bias-disable;
>  		};
>  
> -		cmd-pins {
> +		qspi_cs {
>  			pins = "gpio4";
> -			function = "sdc_cmd";
> +			function = "qspi_cs";
>  			drive-strength = <8>;
>  			bias-pull-up;
>  		};
>  
> -		data-pins {
> -			pins = "gpio0", "gpio1", "gpio2",
> -			       "gpio3", "gpio6", "gpio7",
> -			       "gpio8", "gpio9";
> -			function = "sdc_data";
> +		qspi_data {
> +			pins = "gpio0", "gpio1", "gpio2";
> +			function = "qspi_data";
>  			drive-strength = <8>;
>  			bias-pull-up;
>  		};
>  
> -		rclk-pins {
> -			pins = "gpio10";
> -			function = "sdc_rclk";
> -			drive-strength = <8>;
> -			bias-pull-down;
> -		};
> +	};
> +};
> +
> +&qpic_bam {
> +	status = "okay";
> +};
> +
> +&qpic_nand {
> +	status = "okay";
status should come last
> +	pinctrl-0 = <&qspi_nand_pins>;
> +	pinctrl-names = "default";
> +	spi_nand: spi_nand@0 {
no underscores in node names
missing newline between properties and subnodes

> +		compatible = "spi-nand";
> +		nand-ecc-engine = <&qpic_nand>;
> +		reg = <0>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		nand-ecc-strength = <4>;
> +		nand-ecc-step-size = <512>;
> +		spi-max-frequency = <8000000>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index b44acb1fac74..f9c21373f5e6 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -336,10 +336,38 @@ sdhc_1: mmc@7804000 {
>  			status = "disabled";
>  		};
>  
> +		qpic_bam: dma@7984000 {
> +			compatible = "qcom,bam-v1.7.0";
> +			reg = <0x7984000 0x1c000>;
> +			interrupts = <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&gcc GCC_QPIC_AHB_CLK>;
> +			clock-names = "bam_clk";
> +			#dma-cells = <1>;
> +			qcom,ee = <0>;
> +			status = "disabled";
> +		};
You're modifying the SoC and board devicetrees in one go, this won't fly

> +
> +		qpic_nand: spi@79b0000 {
> +			compatible = "qcom,ipq9574-nand";
> +			reg = <0x79b0000 0x10000>;

> +			#address-cells = <1>;
> +			#size-cells = <0>;
these two properties usually go below status, at the end

> +			clocks = <&gcc GCC_QPIC_CLK>,
> +			<&gcc GCC_QPIC_AHB_CLK>,
> +			<&gcc GCC_QPIC_IO_MACRO_CLK>;
Indentation here is messy

> +			clock-names = "core", "aon", "io_macro";
one per line, please

> +			dmas = <&qpic_bam 0>,
> +				<&qpic_bam 1>,
> +				<&qpic_bam 2>;
ditto

> +			dma-names = "tx", "rx", "cmd";
ditto

> +			nand-ecc-engine = <&bch>;
> +			status = "disabled";
> +		};
> +
>  		bch: qpic_ecc {
>  			compatible = "qcom,ipq9574-ecc";
>  			status = "ok";
> -		}
> +		};
This means the previous dt patch would not compile

Konrad

