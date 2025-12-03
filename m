Return-Path: <devicetree+bounces-244037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3D3C9F397
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 15:03:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26DBD3A1496
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 14:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DED820ADF8;
	Wed,  3 Dec 2025 14:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ddu3/wC6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B75D233D9E
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 14:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764770611; cv=none; b=klkz+kKjJKZ5A/ZAaIyajAEtMiP52R2awzQ7q5/axFr9W2QeZEdrYtqGE3l3hz+NK/f38sL9JwMEWJowkstHqkhY3hRFnPP855B3YinfuyIwlxybOAdWu3jz97iUKtxK04mTuxs1+N0nWIE0TUgg2apaqCAygcLMQ41hebS/4Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764770611; c=relaxed/simple;
	bh=vqilaDFq7QMfW8MkOVgEv4SUxZeaRzQQ78fl47zNIKM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mpRFCrluHTXMFbqpp6DLToL3xcixLX6fYpDLZecfHTP3pdn+kn4O1tZ56/Ta4YVVF3yQmf4Yqho3oEzxHsQgxKlKfYcZuKF5xuNnWddK4N0FgxK9zK4K9EX+il81XsUs+VlEjYAfceVprvj+PEiOQfm4MfQW/eATeCoxBkUzaIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ddu3/wC6; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-37baf2d159bso9174371fa.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 06:03:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764770608; x=1765375408; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xaodiixH7QwMZ6cHB6pQiSSb74/RAsiv51LwJjSi49k=;
        b=Ddu3/wC6y4oEy4W8gAPnXiPLBdd+JQsQ1p3v8ZRrc1VYjEnHd7ED6+oMNHNjJYpMMd
         hfBbxFZSVqr+2fw1JlB8ZubbbeggMts7qtISLCdD7Q0Nogb4li22Jq7pBQ+TikzxzZ1M
         Ryqk7FAw1+2XBDw7343WFga5avlYaQXXJt09a/+Qd2DGNIiJjD+DnWca3Wsseao0ENj3
         XVs3D9u7JNzb89bH3v5zLqebQGf6CA7z2CcfPYANqrfHPEWRryW8jZUYAi4zpTm7hF4C
         yEJ4LNrYPMjmJN1Nw4YgnrnD0sGi+TwHIHuaE39hzrtAff+9IedJnGeA0c+GpDyd+GVD
         1gzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764770608; x=1765375408;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xaodiixH7QwMZ6cHB6pQiSSb74/RAsiv51LwJjSi49k=;
        b=OTZKJ29FDWoIhP/FSOLzdVZJAessYLWSzp5JqHy5M/LXePPtzbTJnsx3qqxtYN3qyD
         0hafv31fScbuJokkJM0mEJFQv22KsotBoVNoFFv609s1bnbrGaVayWYeyAcjtqL4uWbb
         pM5q+hsEyjwULAHUx1VE+HnvIHEJH9T99qEqUaZTtEUf7rCkoYXEV+hXUo+OLREDMuc0
         WBLbMo1rXwLBTEPfGfTrvmyfNVcFCvEtiHF1KpuLLArnrtOhP4i/b5Qad5FhqQ4QWIKT
         8/P536TYa4IboPwjyEbnQjbNTo4MZUzx3wrZLzfax+edWt0Ly82ugasXvbHO9Zi2geW4
         XohA==
X-Forwarded-Encrypted: i=1; AJvYcCWoJXBpTzXyJEgKQLKGbr02g1+bX5ML6LSAZvnFIo+08dz/mMRIxyt1iLru9SM6XT6twqeEiYMjrOAe@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwen9eZh9CShjLIb3x0VW9pqNxTX3PydiGx3bCui7pV/kcGa8O
	MBbnHz1e1eiNwfFd3ojhlodv22k/XO2MKFz1512vYPqEUOvctQ1HJgv1SEPlwiCRnTo=
X-Gm-Gg: ASbGncsY0tD8fEau6fVjX7Tx2i/MLTzydgzp5p6MpiOReHIw8/RVsRs1zv36S1drRKp
	g00l66K+TuJqJ63CCAzrPW6AuEoyCwiXYPhQNT+BgLoZ8gr2eXLLTUAmqjeJ2AHrrE29LXmmQgd
	/xOC9809a2HC1cfkEXgo+qE3EkihFog0orpcbWazMp1EMXrJsniWP559Az9iVRlrRsuF5BNbizl
	BAPbqSU17JP8qi63uS0MFxOb7CYxLnFh8b74/v2+WPUz1m31lAXGY/UNyq/m6QpW+CadIVJR+yJ
	2p1x2dPiiYUHZT/e3oyNHNnuz2tvunjbIn5SalFSPw4c6BdJArgAfnoU7itmixsdppDCk7A+2Be
	Qkiu57mCModwZqVwVRQ2KYJ/H3YtnzSudiugSiwr8C0XwdB7LC1KH4ME37HGQ42m4duSLpE/Dvf
	shvr/DjGNWKBJsL4eUB7cfIXB/E705BGDPE3eWkzh4c9JtMkNoktX4j8CpP4e8gM95dg==
X-Google-Smtp-Source: AGHT+IHtc5YwnEGlAelBln5DgnT0yCYtU5cwvHJhsh5XAEa37+7mKlypE9Zho7J98x0QunVjtiXWtw==
X-Received: by 2002:a2e:8a9c:0:b0:37a:4fb0:69a6 with SMTP id 38308e7fff4ca-37e66c0ad62mr3653081fa.2.1764770607481;
        Wed, 03 Dec 2025 06:03:27 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37d2369035dsm43222831fa.6.2025.12.03.06.03.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 06:03:27 -0800 (PST)
Message-ID: <3e1d1dc4-7b94-47df-b4bd-f6ce4d7842dd@linaro.org>
Date: Wed, 3 Dec 2025 16:03:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Add camera clock controller
To: Taniya Das <taniya.das@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
 Imran Shaik <imran.shaik@oss.qualcomm.com>,
 Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251203-sm8750_camcc_dt-v1-1-418e65e0e4e8@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251203-sm8750_camcc_dt-v1-1-418e65e0e4e8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Taniya.

On 12/3/25 12:32, Taniya Das wrote:
> Add the camcc clock controller device node for SM8750 SoC.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/sm8750.dtsi | 35 ++++++++++++++++++++++++++++++++++-
>   1 file changed, 34 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 3f0b57f428bbb388521c27d9ae96bbef3d62b2e2..f09cec6358806f21827e68e365b492e563c0689a 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -2,7 +2,8 @@
>   /*
>    * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
>    */
> -
> +#include <dt-bindings/clock/qcom,sm8750-cambistmclkcc.h>
> +#include <dt-bindings/clock/qcom,sm8750-camcc.h>
>   #include <dt-bindings/clock/qcom,rpmh.h>
>   #include <dt-bindings/clock/qcom,sm8750-gcc.h>
>   #include <dt-bindings/clock/qcom,sm8750-tcsr.h>

Please keep the list of included headers ordered.

> @@ -2046,6 +2047,22 @@ aggre2_noc: interconnect@1700000 {
>   			clocks = <&rpmhcc RPMH_IPA_CLK>;
>   		};
>   
> +		cambistmclkcc: clock-controller@1760000 {
> +		       compatible = "qcom,sm8750-cambistmclkcc";
> +		       reg = <0x0 0x1760000 0x0 0x6000>;
> +		       clocks = <&gcc GCC_CAM_BIST_MCLK_AHB_CLK> ,
> +				<&bi_tcxo_div2>,
> +				<&bi_tcxo_ao_div2>,
> +				<&sleep_clk>;
> +			power-domains = <&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MX>;
> +			required-opps = <&rpmhpd_opp_low_svs>,
> +					<&rpmhpd_opp_low_svs>;
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;

I've briefly checked the recently sent driver, and I didn't find that this
clock controller serves as a reset controller or a power domain controller.

And if so, these properties shall be obviously removed.

> +		};
> +
>   		mmss_noc: interconnect@1780000 {
>   			compatible = "qcom,sm8750-mmss-noc";
>   			reg = <0x0 0x01780000 0x0 0x5b800>;
> @@ -2740,6 +2757,22 @@ usb_dwc3_ss: endpoint {
>   			};
>   		};
>   
> +		camcc: clock-controller@ade0000 {
> +			compatible = "qcom,sm8750-camcc";
> +			reg = <0x0 0xade0000 0x0 0x20000>;
> +			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
> +				 <&bi_tcxo_div2>,
> +				 <&bi_tcxo_ao_div2>,
> +				 <&sleep_clk>;
> +			power-domains = <&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MXC>;
> +			required-opps = <&rpmhpd_opp_low_svs>,
> +					<&rpmhpd_opp_low_svs>;
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;
> +		};
> +
>   		pdc: interrupt-controller@b220000 {
>   			compatible = "qcom,sm8750-pdc", "qcom,pdc";
>   			reg = <0x0 0x0b220000 0x0 0x10000>, <0x0 0x164400f0 0x0 0x64>;
> 

-- 
Best wishes,
Vladimir

