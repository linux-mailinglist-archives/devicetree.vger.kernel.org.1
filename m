Return-Path: <devicetree+bounces-205118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9AAB2800B
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 14:34:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B599AA26B8
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 12:33:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B04832E5421;
	Fri, 15 Aug 2025 12:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f1rZ0V57"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E351D79BE
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 12:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755261228; cv=none; b=nBkAqt3OSrQBdkwU8q9HGCD7I0Sw5uNk5hOAFsaJClPgBFyJYhpWfkQHXSn9u429TvxvVqNwLNoYT9N+HFjj4s5n9ysinI+x5M2lmpiCGA6ao8X6kVpBdpZHJYGX3thQkKsGTGW3+P2JuWYvBas8HVSl3lMOY1I3tXSgmyNz9Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755261228; c=relaxed/simple;
	bh=46GZGOaqakgBkUIdadnRnKYQ/NO/VAndrSXtVLNFpSk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NT8FyW8QO+GkfZJsIV6t5ey/P0lsQMdoArmO/EsxWl0E202BwurZXfpuWViz1eiVXdxrPiiO+reMqykq/X8d8JMMkK37uID99ZZIeaMH/Wwdl2pov0jZPvn1Rqag03HP2CZsBWleXTuuefZP9qJBTKFwYv1HKZTz5VNHlz12G5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f1rZ0V57; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3b9e4193083so1726304f8f.3
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 05:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755261225; x=1755866025; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c4A6yVHZqPsXST9r3W7CAib+iVrxdX7RAjsL0wZeyH4=;
        b=f1rZ0V57+TIOzRl+L7hjdQgjiwEnFqQYSREIf2eS3ejsvm54OR+Dp4sx7RLdILUvtf
         TYFsbovILVOsw9Ckn7jgUq6vPM9ZImFuBPgTjlUe4Rt6BMCfMltKAUALa85YyR7bGQq3
         noT2Zgd0o4XDlHQ5iI2j2kOEnwGJB/QAHSKtqj683Dk/AxZ5Q2d4FjU4galn3Qp5Emwy
         kRdAXblil4WRQXkFm+PULZ+8TDKj4GjK8PvWaRBjkNoHIwWSlIRoZH0m51AbkSjH3KjS
         q+PL5i9pjlBcg+gZhmCErvJLjM9KHZz5dBlbYrWnV77gunFIDzYQZsccBZYmipjyeobw
         9+Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755261225; x=1755866025;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c4A6yVHZqPsXST9r3W7CAib+iVrxdX7RAjsL0wZeyH4=;
        b=H70HM9g/cCUZXSw1BtCyCZxtS115lLUUXX7GVdxZk34vICYgwplPqhu9zbDri+LXgu
         5Y7498GO1ihcS8+8U0B4xElJeei2OoRtubprFMTOmtLIEcWw8grPNb/f71BgiiZlbPOg
         Bx8Z33Y+EFpZma0BWLN93OxcKPdCbSaPXkQFgWwxBCeEWjvk/DORjIbv7TpDwCRP5gJ7
         EmUC2crcmc78ZFWs2hXTIC4sU7jjDAlno6vyRuV4LTdjLCOr1/P7jcQQbpKM2occqgvL
         3rzf1QhZ2DRWfdKQ5n3bit5xCtnQszSZ6JXIwWgDwrB8BikttY4f85Hipb8sqRHtArkf
         sbRA==
X-Forwarded-Encrypted: i=1; AJvYcCVMEe7oECrX6sI7vUW2/6pUMPNO4sC9r7ajqssDTH+DIC36WwudId3b8LMje5gFe5EfHF6AM6bMf9Ds@vger.kernel.org
X-Gm-Message-State: AOJu0YwTdHqRADK0iKXaop24qQ8DZGRlhAc+RRCJYH485Tw5tCgBOzfK
	BBY+UTvAG2dmhMxbwWkm1u11F80oi8vadjWqq1sDGK/J9BCHDR8X6GWbAjIHOtp6hKc=
X-Gm-Gg: ASbGnctga7uWQoV7K6tK6Y5OkHmA+XTuBgJsdw+vw2YHedjvYiz8eYomGW/DeEDH/ui
	DHll3mYUsB5XaM7nfV7NwXhfi/f4OLbc1pZmNmSd0nJ3902gVhgy8gewqb1BvXNItYZO6wupcUg
	mjPo/N7O7hMX26dVWYfLLCdOr4S8dgFu47h/UJZPkCjOCqlQqVJYcXMOAtoB5/mbajVTyM38cCK
	/0IxTO3bk/JmshNcOpJN8gXj4THVVQrK4HV4wVO0TnNKi6DtXI6TWM6ewOhHcx4eDWIq7Rr8E9D
	Jpq3Pke1IMsGiXSHCz4WMGLvf2a6RPKhlhLTPTTdKQtVwyMRIKjcTQXMnL9bgO83O/5bWVvITcj
	6dRH8o8cHsfzJIixX6AJQybjdmwGLPrSrGSZvAcfQ/VugCZcQ5R6MhYJsu2gexfI=
X-Google-Smtp-Source: AGHT+IGBHiSfundG87accVUinkZKsE5MNwQTue7kqgOTCUA2ZmveVegoDTKu8lejFp3C7EeolwybYQ==
X-Received: by 2002:a05:6000:2003:b0:3b5:e084:283b with SMTP id ffacd0b85a97d-3bb67007615mr1525536f8f.17.1755261224898;
        Fri, 15 Aug 2025 05:33:44 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3bb7f02578dsm1736472f8f.62.2025.08.15.05.33.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Aug 2025 05:33:44 -0700 (PDT)
Message-ID: <074b6da4-ea61-453a-a398-608cf7750251@linaro.org>
Date: Fri, 15 Aug 2025 13:33:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sa8775p: Add CCI definitions
To: Wenmeng Liu <quic_wenmliu@quicinc.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, vladimir.zapolskiy@linaro.org,
 todor.too@gmail.com
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20250815-rb8_camera-v2-0-6806242913ed@quicinc.com>
 <20250815-rb8_camera-v2-2-6806242913ed@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250815-rb8_camera-v2-2-6806242913ed@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/08/2025 08:07, Wenmeng Liu wrote:
> Qualcomm SA8775P SoC contains 4 Camera Control Interface controllers.
> 
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/lemans.dtsi | 268 +++++++++++++++++++++++++++++++++++
>   1 file changed, 268 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> index 67d1e293861970e9ddfc0df1bb674aeffb6bee6f..ba2715eee4fbf705b790a46c3b09eb20007b32b5 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -4358,6 +4358,162 @@ videocc: clock-controller@abf0000 {
>   			#power-domain-cells = <1>;
>   		};
>   
> +		cci0: cci@ac13000 {
> +			compatible = "qcom,sa8775p-cci", "qcom,msm8996-cci";
> +			reg = <0x0 0x0ac13000 0x0 0x1000>;
> +
> +			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING>;
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +
> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CCI_0_CLK>;
> +			clock-names = "camnoc_axi",
> +				      "cpas_ahb",
> +				      "cci";
> +
> +			pinctrl-0 = <&cci0_0_default &cci0_1_default>;
> +			pinctrl-1 = <&cci0_0_sleep &cci0_1_sleep>;
> +			pinctrl-names = "default", "sleep";
> +
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			status = "disabled";
> +
> +			cci0_i2c0: i2c-bus@0 {
> +				reg = <0>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +
> +			cci0_i2c1: i2c-bus@1 {
> +				reg = <1>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +		};
> +
> +		cci1: cci@ac14000 {
> +			compatible = "qcom,sa8775p-cci", "qcom,msm8996-cci";
> +			reg = <0x0 0x0ac14000 0x0 0x1000>;
> +
> +			interrupts = <GIC_SPI 271 IRQ_TYPE_EDGE_RISING>;
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +
> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CCI_1_CLK>;
> +			clock-names = "camnoc_axi",
> +				      "cpas_ahb",
> +				      "cci";
> +
> +			pinctrl-0 = <&cci1_0_default &cci1_1_default>;
> +			pinctrl-1 = <&cci1_0_sleep &cci1_1_sleep>;
> +			pinctrl-names = "default", "sleep";
> +
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			status = "disabled";
> +
> +			cci1_i2c0: i2c-bus@0 {
> +				reg = <0>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +
> +			cci1_i2c1: i2c-bus@1 {
> +				reg = <1>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +		};
> +
> +		cci2: cci@ac15000 {
> +			compatible = "qcom,sa8775p-cci", "qcom,msm8996-cci";
> +			reg = <0x0 0x0ac15000 0x0 0x1000>;
> +
> +			interrupts = <GIC_SPI 651 IRQ_TYPE_EDGE_RISING>;
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +
> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CCI_2_CLK>;
> +			clock-names = "camnoc_axi",
> +				      "cpas_ahb",
> +				      "cci";
> +
> +			pinctrl-0 = <&cci2_0_default &cci2_1_default>;
> +			pinctrl-1 = <&cci2_0_sleep &cci2_1_sleep>;
> +			pinctrl-names = "default", "sleep";
> +
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			status = "disabled";
> +
> +			cci2_i2c0: i2c-bus@0 {
> +				reg = <0>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +
> +			cci2_i2c1: i2c-bus@1 {
> +				reg = <1>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +		};
> +
> +		cci3: cci@ac16000 {
> +			compatible = "qcom,sa8775p-cci", "qcom,msm8996-cci";
> +			reg = <0x0 0x0ac16000 0x0 0x1000>;
> +
> +			interrupts = <GIC_SPI 771 IRQ_TYPE_EDGE_RISING>;
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +
> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CCI_3_CLK>;
> +			clock-names = "camnoc_axi",
> +				      "cpas_ahb",
> +				      "cci";
> +
> +			pinctrl-0 = <&cci3_0_default &cci3_1_default>;
> +			pinctrl-1 = <&cci3_0_sleep &cci3_1_sleep>;
> +			pinctrl-names = "default", "sleep";
> +
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			status = "disabled";
> +
> +			cci3_i2c0: i2c-bus@0 {
> +				reg = <0>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +
> +			cci3_i2c1: i2c-bus@1 {
> +				reg = <1>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +		};
> +
>   		camss: isp@ac78000 {
>   			compatible = "qcom,sa8775p-camss";
>   
> @@ -5189,6 +5345,118 @@ tlmm: pinctrl@f000000 {
>   			gpio-ranges = <&tlmm 0 0 149>;
>   			wakeup-parent = <&pdc>;
>   
> +			cci0_0_default: cci0-0-default-state {
> +				pins = "gpio60", "gpio61";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-pull-up = <2200>;
> +			};
> +
> +			cci0_0_sleep: cci0-0-sleep-state {
> +				pins = "gpio60", "gpio61";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-pull-down;
> +			};
> +
> +			cci0_1_default: cci0-1-default-state {
> +				pins = "gpio52", "gpio53";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-pull-up = <2200>;
> +			};
> +
> +			cci0_1_sleep: cci0-1-sleep-state {
> +				pins = "gpio52", "gpio53";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-pull-down;
> +			};
> +
> +			cci1_0_default: cci1-0-default-state {
> +				pins = "gpio62", "gpio63";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-pull-up = <2200>;
> +			};
> +
> +			cci1_0_sleep: cci1-0-sleep-state {
> +				pins = "gpio62", "gpio63";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-pull-down;
> +			};
> +
> +			cci1_1_default: cci1-1-default-state {
> +				pins = "gpio54", "gpio55";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-pull-up = <2200>;
> +			};
> +
> +			cci1_1_sleep: cci1-1-sleep-state {
> +				pins = "gpio54", "gpio55";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-pull-down;
> +			};
> +
> +			cci2_0_default: cci2-0-default-state {
> +				pins = "gpio64", "gpio65";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-pull-up = <2200>;
> +			};
> +
> +			cci2_0_sleep: cci2-0-sleep-state {
> +				pins = "gpio64", "gpio65";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-pull-down;
> +			};
> +
> +			cci2_1_default: cci2-1-default-state {
> +				pins = "gpio56", "gpio57";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-pull-up = <2200>;
> +			};
> +
> +			cci2_1_sleep: cci2-1-sleep-state {
> +				pins = "gpio56", "gpio57";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-pull-down;
> +			};
> +
> +			cci3_0_default: cci3-0-default-state {
> +				pins = "gpio66", "gpio67";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-pull-up = <2200>;
> +			};
> +
> +			cci3_0_sleep: cci3-0-sleep-state {
> +				pins = "gpio66", "gpio67";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-pull-down;
> +			};
> +
> +			cci3_1_default: cci3-1-default-state {
> +				pins = "gpio58", "gpio59";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-pull-up = <2200>;
> +			};
> +
> +			cci3_1_sleep: cci3-1-sleep-state {
> +				pins = "gpio58", "gpio59";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-pull-down;
> +			};
> +
>   			qup_i2c0_default: qup-i2c0-state {
>   				pins = "gpio20", "gpio21";
>   				function = "qup0_se0";
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

