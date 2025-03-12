Return-Path: <devicetree+bounces-157006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7C7A5E617
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 22:05:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9CD3A1889C0A
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 21:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D2291F4C8E;
	Wed, 12 Mar 2025 21:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E9m+/Ne5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27831EFF85
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 21:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741813225; cv=none; b=Tw+dL7eODAqNep9y3F+C/bb7qUsFySdjs8XydyJ5447NeWbBD2AUxVkKXKzfGGeQUNVO1lIQc6SXLWReIqZYX8nwG3A6kB7uHn/IwBhZD883gFCDiZYtIvp3/nNeYx7PJhl7ZWboaPP9g4quwJhaiibq2DCu34/n+lPRq2mn2/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741813225; c=relaxed/simple;
	bh=ScuDkmShn2D0Kq8ggB9Erkj9flGtVscDeBuMOCChZIY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kc4ogLM8O4uwmxulM84eHorXQf5rkEl4dD7YsdWQ+SPuTcP9FEO1AjlncGtWlzbsAu4IedWMJcYamF4k1n+ZuV6YVGbLjQWij3QDPz4SnrO5r8v6z9KCMcXDsQiQWtx+RpRHaIO2Ap4OpD+wuPWQ1FDdb9Udsat9L4ZuCwAi/DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E9m+/Ne5; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aaf0f1adef8so49942166b.3
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 14:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741813222; x=1742418022; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IOnA+cmYlRAwYleIWz9JDxBsHfen78RX1YLWTTlffOk=;
        b=E9m+/Ne599eetBB3EUwzPne+s2W3qRTHEnv9+eKJoXmRepUJXndsUg2h7/p/fZw8zF
         fX9Ex11yrqrwJjLQFaHE20gHPtN5SzdvHtDs3LM/y9LstCH/RgV5iPjiOyJuyKjRaTv5
         cADtM9rltKYd6FsfQsSvBtytvkaO6T9AX8EF4J2LPix8MB1Rv14YNGFZ4ZdzUkJgCdVR
         lapH6k0n+8LM8TMMwO1+VUzfvnq6XiRg+fOksCK83FVgp5DUpDhGB4QR6ycedV/v96wo
         Q+OeE9/hQghVTohcBszFg3+dYDZhS07rUw8xlNd7l79T+E8r7jRmPwWoQsx9IHtwjQ8r
         Qplw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741813222; x=1742418022;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IOnA+cmYlRAwYleIWz9JDxBsHfen78RX1YLWTTlffOk=;
        b=mOfo86qs9slFAjNHwj/Ibr7Q5pRYXQ+dDskGGsfhj9O5bo5mVX6bwrh29KSXpoqi2f
         RvAbWQbi4+AlUOzB3GdjSi/DpaMC5BKhiZygoCR0qZxGOABMYo+x0TR1u7eV3XsbO4PQ
         qw1Vro/MCB5g0PKZ8wSPoOdW0Q6XL3xok7W49+RxGBtmOYcDy6GpUIRc0S/PLDFACETE
         8YKQryuYokqTHbB1/i6pOnEYkO2/VhAWzm9/t16EgXOJZpabwNmLgB/7XpZs/n5uTvm1
         Gd/DVRKeD8rOndFmQZbroVjd0E5j7sNKaV+5DRXz4BuJ1mW4iQbsGDe0IsuC6MiDnBFP
         Yqww==
X-Forwarded-Encrypted: i=1; AJvYcCWzWIHZGcnX8uDABUvpK5Joy7rCbt/JLkJqvACCAxHsIhz3aQmG8jONoP62qTWdGVZ5MAfxK1ol+gxr@vger.kernel.org
X-Gm-Message-State: AOJu0YwkmbTx9Kqq7GTLa+GBqeTJKi+kKKOmOdCiA6Cqag1d8hGUdCpS
	QL7wT4z3INE8X2dmmJTRwXlxNZZdlo76UErMLQ0TXLaU7w0xt9e0VsMdADnB36U=
X-Gm-Gg: ASbGncu62NLMi1PMoMANLy2KnXPJOrjJB2lHHsR7kfWVJ46g+KOJNp8MaluUalRRxDu
	g3C6bLUHeohjgdN4sy8pGT1zVt9FaKS7YdrDR37iTrb34XjMIlk4t3z8+KhYDLc8YOkVHsr+8Wq
	h71J7oEID2/RIenzvKgr5zRfmzFmDtbfvWlhb6+Kn9X5/dOYS/jbT6mrXSFgu2M5FSebvsVsBZL
	vLVQbof5e3udUXhAFtvYJi8AI/eAccNqMco3als+Csk8ScVOIkxnkj0dKEvc1yHeA4IcbfjwQx8
	bca+QmkRRZ/Jmwd59q9hUQRO4n4QcdrxB/5YH4HY5PjFXA5owUZEATztf1quSpYREgngBwHWhMS
	D5DIwNwjWIbiYnVIZanQw6IIipiB+7t+cxc6NLN5NceDmhexQb6Z2hPc5p2ND6sIoqcbmqh6W+I
	vAUIZ1p5R8A2AoALDkpzAV4HKezXT6SOzgTuJmoEN2hA==
X-Google-Smtp-Source: AGHT+IHh0iXxxs/GZwfYJs2dwZU3bN+0fVe/CVUJtTxBagoFSg/eGO0RYs1ORkUa/uu+I4VnRXWFhw==
X-Received: by 2002:a17:907:9691:b0:abf:6a53:2cd5 with SMTP id a640c23a62f3a-ac253035876mr2957964566b.48.1741813222026;
        Wed, 12 Mar 2025 14:00:22 -0700 (PDT)
Received: from ?IPV6:2001:1c06:2302:5600:7555:cca3:bbc4:648b? (2001-1c06-2302-5600-7555-cca3-bbc4-648b.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:7555:cca3:bbc4:648b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2773e8641sm779855866b.165.2025.03.12.14.00.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Mar 2025 14:00:21 -0700 (PDT)
Message-ID: <8ba6a6f6-2e6a-4945-b7c8-89f9ea7792a6@linaro.org>
Date: Wed, 12 Mar 2025 21:00:20 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8550: Additionally manage MXC
 power domain in camcc
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
References: <20250303225521.1780611-1-vladimir.zapolskiy@linaro.org>
 <20250303225521.1780611-3-vladimir.zapolskiy@linaro.org>
 <dbxvzgqs5slrl5edqunal3wplg5jiszqv46dr4nzgowwlhkhxa@qwtfq7nfjwfo>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <dbxvzgqs5slrl5edqunal3wplg5jiszqv46dr4nzgowwlhkhxa@qwtfq7nfjwfo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/03/2025 23:53, Dmitry Baryshkov wrote:
> On Tue, Mar 04, 2025 at 12:55:21AM +0200, Vladimir Zapolskiy wrote:
>> SM8550 Camera Clock Controller shall enable both MXC and MMCX power
>> domains.
> 
> Are those really required to access the registers of the cammcc? Or is
> one of those (MXC?) required to setup PLLs? Also, is this applicable
> only to sm8550 or to other similar clock controllers?
> 
>>
>> Fixes: e271b59e39a6f ("arm64: dts: qcom: sm8550: Add camera clock controller")
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>> index d02d80d731b9..d22b1753d521 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>> @@ -3329,7 +3329,8 @@ camcc: clock-controller@ade0000 {
>>   				 <&bi_tcxo_div2>,
>>   				 <&bi_tcxo_ao_div2>,
>>   				 <&sleep_clk>;
>> -			power-domains = <&rpmhpd SM8550_MMCX>;
>> +			power-domains = <&rpmhpd SM8550_MXC>,
>> +					<&rpmhpd SM8550_MMCX>;
>>   			required-opps = <&rpmhpd_opp_low_svs>;
>>   			#clock-cells = <1>;
>>   			#reset-cells = <1>;
>> -- 
>> 2.43.0
>>
> 

I think both of these are required.

Its a pattern we see again and again with videocc and camcc controllers. 
The GDSCs and => the hard-coded always on PLLs need to ensure these 
rails are on.

---
bod

