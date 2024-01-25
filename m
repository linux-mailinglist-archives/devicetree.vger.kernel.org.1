Return-Path: <devicetree+bounces-35330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E67E83D0F2
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 00:51:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 158991F24123
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 23:51:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85FEB134CC;
	Thu, 25 Jan 2024 23:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rQn3qD5O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2C6A79D9
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 23:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706226650; cv=none; b=k523EDcG2Prd2OyzxKckhXAe7uCO+G6zetEKrF5DqJLk0a2KrmbWtKH8i90v5DT3tGYKmmFTXKKsn3IH9VYH/teiQNxC1VU4xef+vplm2v/2PspiVW1hawTrfjlkeFJDEmtJPa/5t1vXjIWSy1qAX6ud9+hIx4CEckRoNZC3+Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706226650; c=relaxed/simple;
	bh=m477urVRSMnVXboBy6oeu+74ms/xBqBmLsiSC0JOrfo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j5rUWVVA7M7VXYTZ1EJoS0gklSM+BvLp4SfDx9daGN2n3j0Yik38nt6DyCb/Oart/NMLGRHkTuV9kevwgPaN0XSYnccM98yEEiPLTDQ67RH68OzNbH09uFqdViHMjls0ZLIEpfNd/85rwsoNduur8m3olZ3ZJof3ge3+IvbRLac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rQn3qD5O; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-50eab4bf47aso1381564e87.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 15:50:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706226646; x=1706831446; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HMqF6kcGxv/o+d+Qb4jJWsBekLD4OHlxxe3556Hw09Y=;
        b=rQn3qD5OH3OaKTpt4lt/v/w29U++HO9htvqXyh6zuIeu3A8IImlaOIwdBgm9GK1EY6
         xbjdfNZsCtgeod2tyKtG0u2L98WZVsYNkxaBVj7NEJ1upAHsses4/q6grgtugVIog8g1
         wduKQauOce2mE4oEncqGpaTsxBh4InKVqwD2fGNtF8rkrXl85ZMOD72LK3mddgUb4Tpv
         UTuQuI9cbl+AbHrWX7MT5tJo24KXXhFS/S5dwSisXg/tuZPZyvsUG+uGsyi3blZ36rUu
         W22PN7HmrMLfP0uqZwt+cdUKwSkvqHJwn3oTBa8FHrm+eQFZDIR+3OIesp7zmbnI6bNS
         T56g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706226646; x=1706831446;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HMqF6kcGxv/o+d+Qb4jJWsBekLD4OHlxxe3556Hw09Y=;
        b=cZ/vyEwmCnlul6QaTWUp4k1UvHzso+6/fN+LeNbVeoXJk1qagIsKmONX4RrFiE5pce
         arAYlBVUr/XzcABpSk1Hm3Tf38L2DIaiZNZnrJrsInCXAIE7ucFlj1zbMUH65PS9mrpP
         vLEHLE2dVPUoRk8Ie92zSZkcr+VQRaTbmETZbFQBfHwpE3YdOEKyXExwBp+Bpe1dz71K
         7T2S2Wf6SiZfhJYHbAqHet6uNAERpJOipbkcZUO/ZUGAWv8+aDPNStRstg7BmScYjSlK
         Tr7q2t5FUBHSb88A8SCfjC2FYz2lxHfI6oRMq1RRCh0LWfVyynTGzQep4cuYukYlz5Tg
         WiRg==
X-Gm-Message-State: AOJu0Yzy3oEhUfCGSEOSZcS3VhLJEawLIFbYB2dEGHalvqtxHuZIbAFS
	eK6JRgOHFRzSHLx8km6uz+648iI7AtPgBRvljEXBAnOf0RM1X//PAtoIWuaRXzk=
X-Google-Smtp-Source: AGHT+IEGY/hr16dwZ5IcNgx/CmauHPsaJLzWX/B57eF+lGPF5KPQ1FqoEPCzGGqVJ/TlkmMwP9I3yQ==
X-Received: by 2002:ac2:5632:0:b0:510:15b3:4f84 with SMTP id b18-20020ac25632000000b0051015b34f84mr26892lff.12.1706226645702;
        Thu, 25 Jan 2024 15:50:45 -0800 (PST)
Received: from [172.30.205.155] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a21-20020a195f55000000b005100af37fbcsm10614lfj.166.2024.01.25.15.50.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 15:50:45 -0800 (PST)
Message-ID: <c58c5897-b3f0-4449-a5b1-df10b117733c@linaro.org>
Date: Fri, 26 Jan 2024 00:50:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 2/2] arm64: dts: qcom: msm8953: Add GPU
Content-Language: en-US
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vladimir Lypak <vladimir.lypak@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240125-msm8953-gpu-v1-0-f6493a5951f3@z3ntu.xyz>
 <20240125-msm8953-gpu-v1-2-f6493a5951f3@z3ntu.xyz>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240125-msm8953-gpu-v1-2-f6493a5951f3@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/25/24 22:56, Luca Weiss wrote:
> From: Vladimir Lypak <vladimir.lypak@gmail.com>
> 
> Add the GPU node for the Adreno 506 found on this family of SoCs. The
> clock speeds are a bit different per SoC variant, SDM450 maxes out at
> 600MHz while MSM8953 (= SDM625) goes up to 650MHz and SDM632 goes up to
> 725MHz.
> 
> To achieve this, create a new sdm450.dtsi to hold the 600MHz OPP and
> use the new dtsi for sdm450-motorola-ali.
> 
> Signed-off-by: Vladimir Lypak <vladimir.lypak@gmail.com>
> Co-developed-by: Luca Weiss <luca@z3ntu.xyz>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>   arch/arm64/boot/dts/qcom/msm8953.dtsi            | 115 +++++++++++++++++++++++
>   arch/arm64/boot/dts/qcom/sdm450-motorola-ali.dts |   2 +-
>   arch/arm64/boot/dts/qcom/sdm450.dtsi             |  14 +++
>   arch/arm64/boot/dts/qcom/sdm632.dtsi             |   8 ++
>   4 files changed, 138 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8953.dtsi b/arch/arm64/boot/dts/qcom/msm8953.dtsi
> index 91d083871ab0..1fe0c0c4fd15 100644
> --- a/arch/arm64/boot/dts/qcom/msm8953.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8953.dtsi
> @@ -1046,6 +1046,94 @@ mdss_dsi1_phy: phy@1a96400 {
>   			};
>   		};
>   
> +		gpu: gpu@1c00000 {
> +			compatible = "qcom,adreno-506.0", "qcom,adreno";
> +			reg = <0x01c00000 0x40000>;
> +			reg-names = "kgsl_3d0_reg_memory";
> +			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_OXILI_GFX3D_CLK>,
> +				 <&gcc GCC_OXILI_AHB_CLK>,
> +				 <&gcc GCC_BIMC_GFX_CLK>,
> +				 <&gcc GCC_BIMC_GPU_CLK>,
> +				 <&gcc GCC_OXILI_TIMER_CLK>,
> +				 <&gcc GCC_OXILI_AON_CLK>;
> +			clock-names = "core",
> +				      "iface",
> +				      "mem_iface",
> +				      "alt_mem_iface",
> +				      "rbbmtimer",
> +				      "alwayson";
> +			power-domains = <&gcc OXILI_GX_GDSC>;
> +
> +			iommus = <&gpu_iommu 0>;
> +			operating-points-v2 = <&gpu_opp_table>;
> +
> +			#cooling-cells = <2>;
> +
> +			status = "disabled";
> +
> +			zap-shader {
> +				memory-region = <&zap_shader_region>;
> +			};
> +
> +			gpu_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-19200000 {
> +					opp-hz = /bits/ 64 <19200000>;
> +					opp-supported-hw = <0xff>;
> +					required-opps = <&rpmpd_opp_min_svs>;
> +				};

If you remove all OPPs but this one, can the GPU still spit out pixels?

Konrad

