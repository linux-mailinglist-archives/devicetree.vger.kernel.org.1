Return-Path: <devicetree+bounces-11700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1F87D65D1
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:52:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08A331C20BDD
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:52:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8F0E1F601;
	Wed, 25 Oct 2023 08:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sr9C9xVp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606D01C6A1
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:52:32 +0000 (UTC)
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3121129
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:52:29 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-53db360294fso8491283a12.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698223948; x=1698828748; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BrnF6XSJFhLZM0Y5XF5MVsrX+Gn9weZN81Kc+HqarqM=;
        b=sr9C9xVp56FCiqPGPOpPpn2h5wvBdLnIwJ8sEYHCklFkcqGUq3j6vWZ64xqiTbUKZj
         UQQDGr90SJlQDrccaw2eSUowxLWEtLBMrInkzPKCUZ0MQpcP8dy32GYXCxbHQ2416qC+
         pxLyW71oqiiTE3f9EU/9f0vDt1w12qICDjgGKwmlrYw8e5pPbrj85qPPD63fhuUMfRC8
         yYXoi/evb6muTtdRdx/opfc6icVDNHKxg5teqzOjh/o0YcUtjjGtI2UBW6UrgTUpTvNn
         8IFFnWcVR9354uil6hjxHmWVLayRh7lXffAlLEGHokZ6kX9abKDvJSwVKLDsxT4UiuDK
         fqlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698223948; x=1698828748;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BrnF6XSJFhLZM0Y5XF5MVsrX+Gn9weZN81Kc+HqarqM=;
        b=IlKLC/UCOeqv4/q5g7BzepmUMLD3A/MGPnCTX3nJMo+U8r3mVl44dLzcnUUk9vnjpj
         NbWNNnGvf+LIIf90K5/3Ln5afR+wzjG9HfuOBHlHmJBq4JYEM5WIBnP+CtfdDQPw/Mfh
         1BpLsW+F1fCpYol2BuIMx3x2o5mIq2xj5uUs0RvOFja7gOs53mCuL2QxAqEWewuuH7lE
         PjwJC72MDR4YtzvE88CXTsfQwyEYaABRtzLBhW7sUp6XguY6ki4SGzj5IbLMLLNIG8E2
         RbtdS58HAZ1gsN+xFAt0Ls6saO8eANcpKDyFKY4hZ87AsO1kqUXxHGWg043nmGRF0IYR
         5evQ==
X-Gm-Message-State: AOJu0YwZZCAeSlANbEpLc3mjZKFcH1kuT4oSWXOtDo5q5i/OltuBWPDx
	At8v6qTxSCvVelsuibEW1BmBww==
X-Google-Smtp-Source: AGHT+IFUSyCneDZ86mJ/1UYXAF0SrEDCn4dhDu/JBQPjuFaVQ4wzRc9f4E3qiv2yZCG/RLYb7JnG6A==
X-Received: by 2002:a05:6402:2706:b0:540:31dc:ff8b with SMTP id y6-20020a056402270600b0054031dcff8bmr8009016edd.13.1698223948148;
        Wed, 25 Oct 2023 01:52:28 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id m20-20020a509994000000b0053635409213sm9415717edb.34.2023.10.25.01.52.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 01:52:27 -0700 (PDT)
Message-ID: <68e9c5f5-8ca9-40c3-979c-651e89c9061f@linaro.org>
Date: Wed, 25 Oct 2023 10:52:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] ARM: dts: qcom: samsung-matisse-common: Add
 initial common device tree
Content-Language: en-US
To: Stefan Hansson <newbyte@postmarketos.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20231025083952.12367-1-newbyte@postmarketos.org>
 <20231025083952.12367-2-newbyte@postmarketos.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231025083952.12367-2-newbyte@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 25/10/2023 10:37, Stefan Hansson wrote:
> According to the dts from the kernel source code released by Samsung,
> matissewifi and matisselte only have minor differences in hardware, so
> use a shared dtsi to reduce duplicated code. Additionally, this should
> make adding support for matisse3g easier should someone want to do that
> at a later point.
> 
> As such, add a common device tree for all matisse devices by Samsung
> based on the matissewifi dts. Support for matisselte will be introduced
> in a later patch in this series and will use the common dtsi as well.
> 
> Signed-off-by: Stefan Hansson <newbyte@postmarketos.org>
> ---

...

> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts b/arch/arm/boot/dts/qcom/qcom-msm8226-samsung-matisse-common.dtsi
> similarity index 90%
> copy from arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts
> copy to arch/arm/boot/dts/qcom/qcom-msm8226-samsung-matisse-common.dtsi
> index f516e0426bb9..11fec4e963b7 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8226-samsung-matisse-common.dtsi
> @@ -1,10 +1,9 @@
>  // SPDX-License-Identifier: BSD-3-Clause
>  /*
>   * Copyright (c) 2022, Matti Lehtimäki <matti.lehtimaki@gmail.com>
> + * Copyright (c) 2023, Stefan Hansson <newbyte@postmarketos.org>

Removing lines is not a much of a copyrightable change.

>   */
>  
> -/dts-v1/;
> -
>  #include <dt-bindings/input/input.h>
>  #include "qcom-msm8226.dtsi"
>  #include "qcom-pm8226.dtsi"
> @@ -13,10 +12,6 @@
>  /delete-node/ &smem_region;
>  
>  / {
> -	model = "Samsung Galaxy Tab 4 10.1";
> -	compatible = "samsung,matisse-wifi", "qcom,apq8026";
> -	chassis-type = "tablet";
> -
>  	aliases {
>  		mmc0 = &sdhc_1; /* SDC1 eMMC slot */
>  		mmc1 = &sdhc_2; /* SDC2 SD card slot */
> @@ -137,8 +132,8 @@ reg_tsp_1p8v: regulator-tsp-1p8v {
>  		gpio = <&tlmm 31 GPIO_ACTIVE_HIGH>;
>  		enable-active-high;
>  
> -		pinctrl-names = "default";
>  		pinctrl-0 = <&tsp_en_default_state>;
> +		pinctrl-names = "default";

That's an unexpected change.


>  	};
>  
>  	reg_tsp_3p3v: regulator-tsp-3p3v {
> @@ -147,11 +142,11 @@ reg_tsp_3p3v: regulator-tsp-3p3v {
>  		regulator-min-microvolt = <3300000>;
>  		regulator-max-microvolt = <3300000>;
>  
> -		gpio = <&tlmm 73 GPIO_ACTIVE_HIGH>;
> +		/* GPIO is board-specific */
>  		enable-active-high;

Then regulator as well. Move it to board.

>  
> -		pinctrl-names = "default";
>  		pinctrl-0 = <&tsp_en1_default_state>;
> +		pinctrl-names = "default";
>  	};
>  
>  	reserved-memory {
> @@ -223,26 +218,6 @@ &adsp {
>  	status = "okay";
>  };
>  
> -&blsp1_i2c2 {
> -	status = "okay";
> -
> -	accelerometer@1d {
> -		compatible = "st,lis2hh12";
> -		reg = <0x1d>;
> -
> -		interrupt-parent = <&tlmm>;
> -		interrupts = <54 IRQ_TYPE_LEVEL_HIGH>;
> -
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&accel_int_default_state>;
> -
> -		st,drdy-int-pin = <1>;
> -
> -		vdd-supply = <&pm8226_l19>;
> -		vddio-supply = <&pm8226_lvs1>;
> -	};
> -};
> -
>  &blsp1_i2c4 {
>  	status = "okay";
>  
> @@ -253,28 +228,8 @@ muic: usb-switch@25 {
>  		interrupt-parent = <&tlmm>;
>  		interrupts = <67 IRQ_TYPE_EDGE_FALLING>;
>  
> -		pinctrl-names = "default";
>  		pinctrl-0 = <&muic_int_default_state>;
> -	};
> -};
> -
> -&blsp1_i2c5 {
> -	status = "okay";
> -
> -	touchscreen@4a {
> -		compatible = "atmel,maxtouch";
> -		reg = <0x4a>;
> -
> -		interrupt-parent = <&tlmm>;
> -		interrupts = <17 IRQ_TYPE_LEVEL_LOW>;
> -
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&tsp_int_rst_default_state>;
> -
> -		reset-gpios = <&pm8226_gpios 6 GPIO_ACTIVE_LOW>;
> -
> -		vdd-supply = <&reg_tsp_1p8v>;
> -		vdda-supply = <&reg_tsp_3p3v>;
>  	};
>  };
>  
> @@ -287,9 +242,9 @@ pm8226_s3: s3 {
>  			regulator-max-microvolt = <1300000>;
>  		};
>  
> +		/* Upper voltage constraint is board-specific */
>  		pm8226_s4: s4 {
>  			regulator-min-microvolt = <1800000>;
> -			regulator-max-microvolt = <1800000>;

Then keep here widest constraints. IOW, this should be changed not in
this patch, but your next one.


>  		};
>  
>  		pm8226_s5: s5 {
> @@ -307,9 +262,9 @@ pm8226_l2: l2 {
>  			regulator-max-microvolt = <1200000>;
>  		};
>  
> +		/* Upper voltage constraint is board-specific */
>  		pm8226_l3: l3 {
>  			regulator-min-microvolt = <750000>;
> -			regulator-max-microvolt = <1337500>;

Ditto

>  			regulator-always-on;
>  		};
>  
> @@ -493,7 +448,7 @@ tsp_en_default_state: tsp-en-default-state {
>  	};
>  
>  	tsp_en1_default_state: tsp-en1-default-state {
> -		pins = "gpio73";
> +		/* pins is board-specific */

Then node is board specific as well.



Best regards,
Krzysztof


