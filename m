Return-Path: <devicetree+bounces-59556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEA28A5E5C
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 01:34:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BB0B28515B
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 23:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9CC0158DDD;
	Mon, 15 Apr 2024 23:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oOw7OV1K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B82C15885D
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 23:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713224065; cv=none; b=ma6UNN0RnDojgk3emCbuuXjcbxiHVyMNBDyLscfkh+lDOeduAJQyBoq9ofxdvr7KF5IASN+NuZeY8e0FDk1FgqNcmaDubzVqmr8QRkRaBEksPj2nSeMcJ4BqasxCwW8QH1x+hHq9K64wT9uODhnxZZTTRI+Isl+Pkhfii/k1tuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713224065; c=relaxed/simple;
	bh=gDfOKvooARS595YuZePIjRQWJo1r71UJRl8JvveYf6U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xel2EZ8b8aDxqweML67J5UDVFpSUomTaaIkxqLH0wfM0+X3+KRpamc4FXBqJXvlnqtnv4bfEcTjPGxGhQC76ILniargVPzjMbKnhNctdZHoU1wfTL3qzb5HP1AoM8Veb7ciDxuZnXhL+29UmhvYO1INdsZqbAdbkVoDfri1aEXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oOw7OV1K; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-56c5d05128dso3985881a12.0
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 16:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713224062; x=1713828862; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uWnsgwxyp2hync1lURb/DLtXuqHZbxB6A8Mb4rkvI9U=;
        b=oOw7OV1Kt/rvgxF55ShUInwfEMGj1KZ1yTBhlKBkp+onqVaZDm6nt03zX3KL8P5CW7
         ThnVt+WKF2f1Di6wGtYzYx/GlP8nho4g+MBJqlevljXxWNntnIyemYKn7Wor1yPg3atD
         JzZI6P1ClyGSaasmmrCfeurcN9hm6uYs+deZN6TnkRfYnBKSiP7NAcJ9BmAV8SgNonP1
         S0+rEMH0469270k8uiCgorYhQetW/btp66X9WINbXZTqNKX+/iC5PxOFDukw+ykYdQn5
         dzXQYW6996zvo/oOXwhaOvLPF/iNTSCtqjo6u2kkNnpRntcFDBAJnNb8pxD4gTTZ189g
         QuJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713224062; x=1713828862;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uWnsgwxyp2hync1lURb/DLtXuqHZbxB6A8Mb4rkvI9U=;
        b=jyf7dAtIpMCCCsufylTxZdi2SqNm8lD3CYZSbHYevAxzV1Gl4rD1DwYmjOPdr7tkx4
         zQQFIfhMsfVnj2YhL5mPzGKuNAekBj0OW4Qj9xiLEG4+XtdjawJxc7KnYNDrzvV0jmlC
         bhpuD3iBNlnUwxc+YDAYlg4lJOFVAfLHjTeinkVxLYE7d4oN4d6hBVPHhvU5otJKISpD
         gGnqoHA8oiUxbhmrM5WDNxuUboiaSLYAaEc1xNpwh6jRkUINTUUm3DibdAPqJyvX64SN
         Cg/MVd+kH6dOPTXqzAMhUmV1LMleWJuYLyziHJDEA4F6tFxGCNmkQXZtFLz1dO7DlEX5
         ityw==
X-Forwarded-Encrypted: i=1; AJvYcCV42GXSH9r93JRkGtZXwMHUMYGvq7l1TxKEhkDoOVEMOLyB0tJ7lS3h5A9nMGQEmpLjdE/y5AINlxNhHA9/PfFphqdQpDYXR11T4Q==
X-Gm-Message-State: AOJu0YzIWkYa2vVvBoiveyr4MWCJQMWghr3DnrCFmHfrjHYow0xVWmxp
	ONHiYXq6L3XMScoAPNtbF7UPOSTAuw3ljTX49YoPxx54CehZxsRh7JE/6WmwAT4=
X-Google-Smtp-Source: AGHT+IFDqJ7Gb2kmxnRa15zVV+E5hZy9b0WN+KN56XBvq/Ng/slpNQeTpIhhKfBlP+Rb2/KA+4whPg==
X-Received: by 2002:a17:907:9705:b0:a52:4403:9c2 with SMTP id jg5-20020a170907970500b00a52440309c2mr6293627ejc.14.1713224062407;
        Mon, 15 Apr 2024 16:34:22 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c52:73b0:74d6:fe8a:b9f:ef94? ([2a00:f41:c52:73b0:74d6:fe8a:b9f:ef94])
        by smtp.gmail.com with ESMTPSA id cw4-20020a170906c78400b00a4e58c74c9fsm6008220ejb.6.2024.04.15.16.34.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Apr 2024 16:34:22 -0700 (PDT)
Message-ID: <d8dc2a6b-4797-4829-9581-1a9e3fce069a@linaro.org>
Date: Tue, 16 Apr 2024 01:34:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: add description of CCI
 controllers
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240410074951.447898-1-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240410074951.447898-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/10/24 09:49, Vladimir Zapolskiy wrote:
> Qualcomm SM8650 SoC has three CCI controllers with two I2C busses
> connected to each of them.
> 
> The CCI controllers on SM8650 are compatible with the ones found on
> many other older generations of Qualcomm SoCs.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

[...]

>   
> +		cci0: cci@ac15000 {
> +			compatible = "qcom,sm8650-cci", "qcom,msm8996-cci";
> +			reg = <0 0x0ac15000 0 0x1000>;
> +			interrupts = <GIC_SPI 426 IRQ_TYPE_EDGE_RISING>;
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_NRT_CLK>,
> +				 <&camcc CAM_CC_SLOW_AHB_CLK_SRC>,
The DT should never ever touch the _SRC clocks directly, especially since
you're referencing the branch downstream of it right below

> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CCI_0_CLK>;
> +			clock-names = "camnoc_axi",
> +				      "slow_ahb_src",
> +				      "cpas_ahb",
> +				      "cci";
> +			pinctrl-0 = <&cci0_default &cci1_default>;
> +			pinctrl-1 = <&cci0_sleep &cci1_sleep>;
> +			pinctrl-names = "default", "sleep";
> +			status = "disabled";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			assigned-clocks = <&camcc CAM_CC_CCI_0_CLK_SRC>;
> +			assigned-clock-rates = <37500000>;

Why?

[...]

> +			pinctrl-0 = <&cci2_default &cci3_default>;
> +			pinctrl-1 = <&cci2_sleep &cci3_sleep>;

Please stick to a single naming scheme (cciX_Y or csiN)

Konrad

