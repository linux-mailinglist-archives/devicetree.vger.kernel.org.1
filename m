Return-Path: <devicetree+bounces-1803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD8D7A878D
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 16:50:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 181BF1C20D29
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8208E3B298;
	Wed, 20 Sep 2023 14:50:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF0E1428E
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 14:50:33 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C39991
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:50:31 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-991c786369cso961876666b.1
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695221430; x=1695826230; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L560O8LznDfcCbsVL+apZ5JDZeve8iwxi3CV96KHKHQ=;
        b=kz6HMrIjbzLdH5awxzkNFjadA3Hn7M5eqHrzhLBQZOBjxz3cpxwn3tg8HrZabsMs9y
         Os9N0eM/nbGwctSFVtJdBAfreJY6m5Tn0a0R5Lqczsa2pRq1wDMD0gR5+kzEDjSUqvpw
         6KqbASBZVK0c7ffKSo1iHUwYX3OfZhyukV9+P1ODsa9DrSFLjzAqARH9HsAABj3iYHD+
         Chptq0JgkNyqugqysNW3KWIa2S+LA/jb9EkN0iV1/6g9G5I5mI6YIt90vJVnnjv4jaRH
         2dpItjv4djiYXP8FWzBWe6acEPWuVgy8fhunf+s9gSFwjfsw9qiiOiAkNVoVkafIGOTd
         NHKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695221430; x=1695826230;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L560O8LznDfcCbsVL+apZ5JDZeve8iwxi3CV96KHKHQ=;
        b=MhG9S+DFASIXg7kf2Om9qJmiWkJ2JoVkCtoUGrul5Ji/fD9hQ+gEhbmV6sQRjXK/Tm
         9EwhHqXHjNWINWFDffvmeEJaW6uOC3dxpdxCeAV19nh1k7wxaOqS1uP8qLySFf64SZBI
         +XTT9Txrao0yW/tMRdGTa3zaMAbkAv1uxX5oeZ8XeNW8vMwqZ06mTyrcPlTDHqwSM+S/
         Y8gAgClxf3KgYZ/HS4sn8/c1NCw+psnz2Dw5xhhU5Fy6X0mAoHm9jilD6Xs3DzErQIA/
         OxmiMjnG2GDwOJN+MvON8oorrYaL9X/8y6qCtwCNw7wkQxWezOl9hCMxGX0P5NWoupu4
         31ww==
X-Gm-Message-State: AOJu0YysZ3G3xfbXMmiGXZYFybZkoWZClAEM8YfFKL6rWd1mmvRQQ/N+
	+JvNa1Zgqjc3wSEiAxhP4Sk8HA==
X-Google-Smtp-Source: AGHT+IHkYUHnyR9qTzuxYR22Orl/gY1yeo4VTHbqKE1Wd9pSDzfoOcW2996OUoupHvMa+XuMC45/5A==
X-Received: by 2002:a17:907:75c8:b0:9a5:cc73:a2a6 with SMTP id jl8-20020a17090775c800b009a5cc73a2a6mr2154478ejc.14.1695221429997;
        Wed, 20 Sep 2023 07:50:29 -0700 (PDT)
Received: from [172.20.86.172] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id bq14-20020a170906d0ce00b0099ddc81903asm9511064ejb.221.2023.09.20.07.50.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 07:50:29 -0700 (PDT)
Message-ID: <b45a5263-c6dd-f446-babe-1da287dbf74f@linaro.org>
Date: Wed, 20 Sep 2023 16:50:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 3/3] arm64: dts: qcom: msm8916-longcheer-l8150: Add
 battery and charger
Content-Language: en-US
To: Nikita Travkin <nikita@trvn.ru>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20230916-pm8916-dtsi-bms-lbc-v1-0-7db0b42f9fb1@trvn.ru>
 <20230916-pm8916-dtsi-bms-lbc-v1-3-7db0b42f9fb1@trvn.ru>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230916-pm8916-dtsi-bms-lbc-v1-3-7db0b42f9fb1@trvn.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/16/23 15:57, Nikita Travkin wrote:
> Longcheer L8150 doesn't have any dedicated fuel-gauge or charger,
> instead making use of the pmic hardware blocks for those purposes.
> 
> Add pm8916 bms and charger, as well as the battery cell description
> that those devices rely on.
> 
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---
>   .../boot/dts/qcom/msm8916-longcheer-l8150.dts      | 43 +++++++++++++++++++---
>   1 file changed, 37 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
> index 3892ad4f639a..95dddf3b3880 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
> @@ -33,6 +33,25 @@ wcnss_mem: wcnss@8b600000 {
>   		};
>   	};
>   
> +	battery: battery {
> +		compatible = "simple-battery";
> +		voltage-min-design-microvolt = <3400000>;
> +		voltage-max-design-microvolt = <4350000>;
> +		energy-full-design-microwatt-hours = <9500000>;
> +		charge-full-design-microamp-hours = <2500000>;
> +
> +		ocv-capacity-celsius = <25>;
> +		ocv-capacity-table-0 = <4330000 100>, <4265000 95>,
> +			<4208000 90>, <4153000 85>, <4100000 80>, <4049000 75>,
> +			<4001000 70>, <3962000 65>, <3919000 60>, <3872000 55>,
> +			<3839000 50>, <3817000 45>, <3798000 40>, <3783000 35>,
> +			<3767000 30>, <3747000 25>, <3729000 20>, <3709000 16>,
> +			<3688000 13>, <3681000 11>, <3680000 10>, <3679000 9>,
> +			<3677000 8>, <3674000 7>, <3666000 6>, <3641000 5>,
> +			<3597000 4>, <3537000 3>, <3457000 2>, <3336000 1>,
> +			<3000000 0>;
> +	};
> +
>   	gpio-keys {
>   		compatible = "gpio-keys";
>   
> @@ -220,6 +239,22 @@ &blsp_uart2 {
>   	status = "okay";
>   };
>   
> +&pm8916_bms {
> +	status = "okay";
status last

Konrad

