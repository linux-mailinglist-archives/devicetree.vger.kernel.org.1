Return-Path: <devicetree+bounces-191513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF54AEF861
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 14:27:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 34ADF1C03AEE
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 12:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AE09278753;
	Tue,  1 Jul 2025 12:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AA5kOqEB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BFD27817C
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 12:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751372630; cv=none; b=RSjxA+TVpe/z6e9fIqPlUTrjh69JGsUcg3GUL3hYMEeC3+p98R6psvCjS5rC1WNmaw3VaJirJQfq1y0yPcj7N9b03VOtIvfiALi2KJC+QUpoG8thZ5037ZMgAUnT14H2ba3IV0jl9PSci4NnatSSjoYCXAEL555t8zdYwQdEg40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751372630; c=relaxed/simple;
	bh=NJ124Dp79Lr/97fmwOSr//WxXPtWTp675G0RTga2t9M=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=OfSY7V6XNYHRtUq2qvuTYy9UeZB44SlGjsVodbf0iBOy6RPJK6QtU8OCQubXXKCrfjoMwl0HrOFtiwA43ulssY9MENiYOaBBtlItmiAPvF8oHrs8APt8mVQL2hy9vCgUMuJB81X2OfbJ+jFGMsKogHoqKCc8iF/JoaNWZabUQwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AA5kOqEB; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4538bc52a8dso36587675e9.2
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 05:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751372626; x=1751977426; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fP9MBwzFb18vSW3lc2L/Hc8pl9m7MaNHnOhRmIvCcfk=;
        b=AA5kOqEB4lYVNPXUaCRx7pSNm4iM/jvh0yJqKr/ps3Jp6NVhiFI/oc7uXgr+0rqlZU
         tiMwgFtitmG1DJMI07e57jqDRAMjczIRLDfk7AN8ZTDqUUxCs4OTGqdg9vrsaKQXuOdl
         llr/cFAZdvTuWrC4LmSio1SwgkzijmOggMr0KCzUG3tAg4ZBqykTt9Y9tWGvHrL/dYxM
         Nx1BEzvyhqHL6IfpUJFdNTxFsIQXpjCc4G3OiDUbkkpEVRR5n9y/ely6LCyW4yh1L2rd
         yPLpjwbwmCKsYz1II1TbkHtz85vDR0n5MgF8kZNFv7C73YYF1vEBO7U3fbV2GKhtPxvC
         KLMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751372626; x=1751977426;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fP9MBwzFb18vSW3lc2L/Hc8pl9m7MaNHnOhRmIvCcfk=;
        b=ShmoMtEpmxP2u+1c+2ifhF25avxF3Inye0D6/UMKrHEuf0TOo0SyEx+u3EFEAtz+0g
         L1I9SuaEBgzoNGGR6Ou5D5ILS99bVv5rEAH7MdbdMkiffs9g4bMrtDbIe4+oeLtZrhfu
         2UPJpWLI2bOD8srzjO6DF7zVeCmz8qGmc4/MRFLS9AofHmKX9VzS/T2+tAm2uCam+X39
         2jcyDL6SQyH5OWhaowFDrROnK2nWSHEZfTRBKwayXMiwbFZr6cKb4sC0NpMRvybMLgmf
         MsfOrkCa5CrQbQzu8+LyNWIY8/ZFXUDSSxGdY5IPXflakeRfJljo+YVTwxn0kPWvfes1
         H5gw==
X-Forwarded-Encrypted: i=1; AJvYcCWAAXMzpKfUi5JIWdj5nTnTq1AuOg+g1UbDxliBzhtJY2kUN0YxP5CQEcbe9/vVpaMP1AonlaAKqbdG@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw0mde7Fd+bywAFPZkvbL2NJx6fdeAadlm1/B+9wDtD0aSHpm7
	aqhdJqdVbg/0vXnDymZoWiS0l4xTQO42rhL9IMxW1uJa0ebhgjyrOzcq/gmVCh9zp30=
X-Gm-Gg: ASbGncsjGFn0i//KBdGnk+xfKUVhdybzPoQ6BpbkkR9bDYjjG/nbRS4gAsYJ+6p2tth
	Q7kVbP/imi5xPU8Bb3ZnWqhPfc5viwCDuIFwnlaN8wM9snPB+v203EyJlLfuKqY/B9brV3kLU0h
	7m044awrvAW6S9BZlpDHahS1HlCnB65w5eThFroNpixJQLpr+5Q7OFs+KisNqJ7soCvhmnNBNsK
	lEIsQcZ4+l/WcCoT/fx2MoHOkbUtRd+0Pp+cmRERPZdzHbR2oyD+P8E2lGHJER/veRy1TpKaoh3
	blxJhLknJerfhQVZajj9CSbkkCdoOijomnsc1gB8RtC6Oet3t16VaiYkgQCdjNHhHqd+AIsv1DW
	bFY0kLXeumC5AxjmG5w42SOPw843NRfPPfrWmlQ==
X-Google-Smtp-Source: AGHT+IF2T/ew6ItA1dECwcwzpkVi16Ul9/UBVeAKXTtxDNk7WlS01HZkQ9dvJOSWDY34euUgABO/8A==
X-Received: by 2002:a05:600c:358d:b0:450:d367:c385 with SMTP id 5b1f17b1804b1-4538ee5d5f8mr200886185e9.16.1751372626384;
        Tue, 01 Jul 2025 05:23:46 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538233c05csm194901555e9.5.2025.07.01.05.23.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 05:23:45 -0700 (PDT)
Message-ID: <488281f6-5e5d-4864-8220-63e2a0b2d7f2@linaro.org>
Date: Tue, 1 Jul 2025 13:23:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sdm670-google-sargo: add imx355
 front camera
To: Richard Acayan <mailingradian@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250630225944.320755-7-mailingradian@gmail.com>
 <3qGugliBdtpdHGZzR9xh_974TfJigMYERGVAfqmpCqe1R7O0CLU8FzXVcIESzTIc-SKzpk42ZAx5-38eDX00Eg==@protonmail.internalid>
 <20250630225944.320755-11-mailingradian@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250630225944.320755-11-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/06/2025 23:59, Richard Acayan wrote:
> The Sony IMX355 is the front camera on the Pixel 3a. It is connected to
> CSIPHY1 and CCI I2C1, and uses MCLK2. Add support for it.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>   .../boot/dts/qcom/sdm670-google-sargo.dts     | 112 ++++++++++++++++++
>   1 file changed, 112 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts b/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
> index d01422844fbf..0af6a440ecbc 100644
> --- a/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
> @@ -172,6 +172,34 @@ vreg_s2b_1p05: vreg-s2b-regulator {
>   		regulator-min-microvolt = <1050000>;
>   		regulator-max-microvolt = <1050000>;
>   	};
> +
> +	cam_front_ldo: cam-front-ldo-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "cam_front_ldo";
> +		regulator-min-microvolt = <1352000>;
> +		regulator-max-microvolt = <1352000>;
> +		regulator-enable-ramp-delay = <135>;
> +
> +		gpios = <&pm660l_gpios 4 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&cam_front_ldo_pin>;
> +	};
> +
> +	cam_vio_ldo: cam-vio-ldo-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "cam_vio_ldo";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-enable-ramp-delay = <233>;
> +
> +		gpios = <&pm660_gpios 13 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&cam_vio_pin>;
> +	};
>   };
> 
>   &apps_rsc {
> @@ -392,6 +420,58 @@ vreg_bob: bob {
>   	};
>   };
> 
> +&camss {
> +	vdda-phy-supply = <&vreg_l1a_1p225>;

You've got your 1p2 but looks like you are missing your 0p8 supply

> +	status = "okay";
> +};
> +
> +&camss_endpoint1 {
> +	clock-lanes = <7>;
> +	data-lanes = <0 1 2 3>;
> +	remote-endpoint = <&cam_front_endpoint>;
> +	status = "okay";
> +};

This looks not like how the other dts are upstream. Does this work and 
pass the dt checker ?

Right now upstream wants something like this

&camss {
         vdda-phy-supply = <&vreg_l5a_0p88>;
         vdda-pll-supply = <&vreg_l9a_1p2>;
         status = "okay";

         ports {
                 /* The port index denotes CSIPHY id i.e. csiphy2 */
                 port@2 {
                         csiphy2_ep: endpoint {
                                 clock-lanes = <7>;
                                 data-lanes = <0 1 2 3>;
                                 remote-endpoint = <&imx577_ep>;
                         };
                 };
         };
};

Can the upstream driver actually consume the dt as you specified above ?

> +
> +&cci {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&cci1_default &cam_mclk_default>;
> +	pinctrl-1 = <&cci1_sleep>;
> +
> +	status = "okay";
> +};
> +
> +&cci_i2c1 {
> +	camera@1a {
> +		compatible = "sony,imx355";
> +		reg = <0x1a>;
> +
> +		clocks = <&camcc CAM_CC_MCLK2_CLK>;
> +		clock-names = "mclk";
> +
> +		clock-frequency = <19200000>;
> +
> +		assigned-clocks = <&camcc CAM_CC_MCLK2_CLK>;
> +		assigned-clock-rates = <24000000>;
> +
> +		reset-gpios = <&tlmm 9 GPIO_ACTIVE_HIGH>;
> +
> +		vana-supply = <&cam_front_ldo>;
> +		vdig-supply = <&cam_front_ldo>;
> +		vio-supply = <&cam_vio_ldo>;

These are the downstream names, taking imx512/477 as a reference point

                 dovdd-supply = <&vreg_l7f_1p8>;
                 avdd-supply = <&vdc_5v>;
                 dvdd-supply = <&vdc_5v>;

I'd guess the data sheet probably has better names like that.

---
bod

