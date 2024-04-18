Return-Path: <devicetree+bounces-60770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 763258AA4CD
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 23:42:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3381028225B
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 21:42:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C48CD194C96;
	Thu, 18 Apr 2024 21:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jFVDf/Ih"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E455180A67
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 21:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713476532; cv=none; b=PXElb2Xx7XpCTYBlpxMqCayjgX9Z/2c4kBVj0EWwtoQEqNHV33pUVVpO0o8KdSigotpcRKBDSOF5nBWFvxfcqhv5K5l0aGaH40C+PrdWhWn0hxjfZZin5VKc+VpVkiIahOgG5JkTp96RP544CgvaP0eK16OMPVJqUHge9u9deeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713476532; c=relaxed/simple;
	bh=WtskFcXhMjR7KGLa/EybzEvTmBKO55rE+m+2o5mVVAY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IcNh7FXHdTSUF0APIzbvvZDzIQlUTWVLbko+KV+onFUyVHPcvil30iCDSkQwky54g+bhRwGObmd3/y34NoNVwdoHs8JgWOGZSI5kUdfR3PV5KGCNf+9sZ6UoV8rgTOnbkyo+od/6b/Pm6apaJ5KFnIJ9iBfQ30YAtyN3A7FRLqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jFVDf/Ih; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2dac628f081so3218191fa.2
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 14:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713476529; x=1714081329; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G6qLjV1IiGoZYxcFKtlSSeHOWF32/4pQhZyX3MS3EUg=;
        b=jFVDf/Ihqgnj+G4kU6xEPVzTUP3QQy1VeeazEg2cJMC/YE1JfjzDNf00+qCScSIqT0
         a3pknSFQFDciWwxyrsHFLCzXBlDEFuYP7OhWlMJ9venwnxxRsS2ZmiP3X6Iwg7qxog2m
         OZGxzBuBi8fcuaTwojknUtrFP1Bh4LpZuW+ueLyzmuvUUAAANxxjwmxKAQpV+RWglr73
         /3//Bl8Ai1aPXxcfkuG0Y6O0dmIyRmowXXJcOjbdektHisbB5T+p576PtXx514i36cYi
         3c3HZlU1V2Fqs4k/L+sEhqGSRJX5iDL1qleuqAsR+Ayja6xsZqADJrS9XOmTOJx65v8z
         4oEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713476529; x=1714081329;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G6qLjV1IiGoZYxcFKtlSSeHOWF32/4pQhZyX3MS3EUg=;
        b=vqOsFkhm1QqhP1Uj+NyWtcR6DSK6a/4m43u9PaHJXxQp99oDwiAr6kPpxuRgHyGjgk
         jbXWYrpJhwkJkdsDLJZcLi6dqlAtdMid/3ytHMLBQBPvvRl9R+fff/4v0pf/nRvzG/oU
         kbcVWds4qJWmfB2QAGzG4MMAS1/7CzTNssWwqJGey0C8k9Bw0wwKwb3WOLcIP52Z74Z6
         BZcSwa8Dyidpls3LY1BfKd4EfPgVB9+7hHcwNyalzDmSmafyaZmZHWSPP0xeWAcoU2hF
         6a7rfhE3WWce+8JOcAddolATvrP7ACRBQyZpOyArWAjL6xgE53qp2nd7TXnvHu7rYgtf
         7Z0A==
X-Forwarded-Encrypted: i=1; AJvYcCVHLCXhhTZPt8Oko2r/iSnuNbpA3bWS/98DbOflQ+aP/R5hEZ9WJMPzyPy/Rxp5+1FiRn+9rcdYXC+dDnk2+JsBo4Ks4nMD9mchfw==
X-Gm-Message-State: AOJu0Yzwax3V+JpGcZ2xBuRDtkUwPZaUzw86wgk9zmtycH5Hsca2uXDW
	WU+LZOsao/5S+o+v1nGo/4/Rs3UMvN52x4lnWrzobKskGhQ90PbjUq5DS3KToeA=
X-Google-Smtp-Source: AGHT+IH2I/USjtrfvmfKW7EtgYLZUP/ZOZOUPQorVrLEVUig0k54+C3W3JPLbQZmqa5pzt9F+omNFw==
X-Received: by 2002:a19:e05d:0:b0:516:d6b5:7caf with SMTP id g29-20020a19e05d000000b00516d6b57cafmr134304lfj.6.1713476529028;
        Thu, 18 Apr 2024 14:42:09 -0700 (PDT)
Received: from [192.168.1.102] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id q12-20020a056512210c00b00516a25e9ce1sm400171lfr.294.2024.04.18.14.42.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Apr 2024 14:42:08 -0700 (PDT)
Message-ID: <3fb64c9f-615c-42f0-9d89-7b8964c9303b@linaro.org>
Date: Fri, 19 Apr 2024 00:42:07 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: add description of CCI
 controllers
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240410074951.447898-1-vladimir.zapolskiy@linaro.org>
 <d8dc2a6b-4797-4829-9581-1a9e3fce069a@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <d8dc2a6b-4797-4829-9581-1a9e3fce069a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Konrad,

thank you for review.

On 4/16/24 02:34, Konrad Dybcio wrote:
> 
> 
> On 4/10/24 09:49, Vladimir Zapolskiy wrote:
>> Qualcomm SM8650 SoC has three CCI controllers with two I2C busses
>> connected to each of them.
>>
>> The CCI controllers on SM8650 are compatible with the ones found on
>> many other older generations of Qualcomm SoCs.
>>
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
> 
> [...]
> 
>>    
>> +		cci0: cci@ac15000 {
>> +			compatible = "qcom,sm8650-cci", "qcom,msm8996-cci";
>> +			reg = <0 0x0ac15000 0 0x1000>;
>> +			interrupts = <GIC_SPI 426 IRQ_TYPE_EDGE_RISING>;
>> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
>> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_NRT_CLK>,
>> +				 <&camcc CAM_CC_SLOW_AHB_CLK_SRC>,
> The DT should never ever touch the _SRC clocks directly, especially since
> you're referencing the branch downstream of it right below
> 

Totally agree, this will go away.

>> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
>> +				 <&camcc CAM_CC_CCI_0_CLK>;
>> +			clock-names = "camnoc_axi",
>> +				      "slow_ahb_src",
>> +				      "cpas_ahb",
>> +				      "cci";
>> +			pinctrl-0 = <&cci0_default &cci1_default>;
>> +			pinctrl-1 = <&cci0_sleep &cci1_sleep>;
>> +			pinctrl-names = "default", "sleep";
>> +			status = "disabled";
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +
>> +			assigned-clocks = <&camcc CAM_CC_CCI_0_CLK_SRC>;
>> +			assigned-clock-rates = <37500000>;
> 
> Why?

That's a leftover for silencing a loud complain in the kernel log on
driver initialization, will remove the frequency assignement, thank you!

> [...]
> 
>> +			pinctrl-0 = <&cci2_default &cci3_default>;
>> +			pinctrl-1 = <&cci2_sleep &cci3_sleep>;
> 
> Please stick to a single naming scheme (cciX_Y or csiN)

Agreed. It may meet objections, but my preference is to force cciX_Y naming
scheme, and at some point in future I hope pin controls will enter I2C bus
subnodes.

--
Best wishes,
Vladimir

