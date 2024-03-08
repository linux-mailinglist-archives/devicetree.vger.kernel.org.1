Return-Path: <devicetree+bounces-49291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5FB875EA7
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 08:38:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F73628311A
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 07:37:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B0214F5F8;
	Fri,  8 Mar 2024 07:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hVenKu+8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177E14EB49
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 07:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709883472; cv=none; b=oomFJbOR60p4L4dLSyJilKnH3iCmdhkezLqAR1S+pUmfxr/AJk+y4WfF9HSA4ZCdQ6QlYAMfzmD7cGDCd0GR7oi+gPihc2MX7OZmuJj9vDF5gcwTuedwmmJcZvj9p3ijgl6qkoQ5fPNw2H36I8DGAwU3mSBCzMlvTjmuxNZykSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709883472; c=relaxed/simple;
	bh=wBiR39uzYKc4tZlVThLdr1KErfH2j2DZYVoFRU26Mew=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vC+JO9Wdusuf8damKCVsjzFd7p2R5PbdTcnqktd0PQjKOaFF6VWmfE3UxY8y/Ftx35PKrXJi9+T83do0uabZryzb+CTJ4H1IR2YM2vHYNAVwSDwt0v2HLIJWIYba1Up7GS3ysvqCAn2DZ3pEvn+YBoTN37A4n/J5/wMK5+RpR4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hVenKu+8; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4130ff11782so3793585e9.2
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 23:37:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709883468; x=1710488268; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OhiQMXQwl+cGnIcsRqQff0Uowg+nqWN2zmSceUCwYy0=;
        b=hVenKu+8BkDkhrH/FqyvIr5q7QSMi/FaUjCpHbdjRPz79fq7mcnyEu1m9P3YEHImzF
         T+ykQC2GTOUhfnYP/fxwbTUHVYt8+2YJUip/SMnpxtL8bX90o4WcXAepvIKMTpdVPsyp
         8H5E3PqNzAX9l5hXocgp+3LkAxrzJA4bkNIgPU1hoCFMnW0hDXyHOH6jv9Y2t6aVXweX
         EKRd36QNtX0sY9CE6iE/KUBNPMkugopHv+BP3vychi7JhKjkoqFQzOqOypi8urh8vO+I
         Am0LI3bPKxNgRjMmk9an93tt6vvr7RIC+kgahqrK2ZVGze0fcMB/zS3zr4bmnl4owB11
         9fnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709883468; x=1710488268;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OhiQMXQwl+cGnIcsRqQff0Uowg+nqWN2zmSceUCwYy0=;
        b=LQ1k0Ogr0uiTBKAZYLEOEQOM2aqYsVhpjixK2du7N9fqpjlQos07myE2Wf8VADr1m7
         1OLv6kZ6TqqHJDV0aOMNmdtueYX0oqCMcwclDNQ2uCXS+pfn4DB5pQI45jb2gn/kK+Br
         rcgjiQvySRkL+IpIDmJDhEYExhSy5mxPhogeAiydUT+s2ysOynQQ410sCDT2bj7Vbppc
         fIkJMXuCIT49khKPovaGDKZj0ZcBaqVkI2QUcJzbi1HlwSTwa1cAQs1lNMcbuuKMARuF
         AmGdxUM5og7DQe9CPfk8g1qCddp27b+vSTrWooEBREWl9bLmaq3ZTxx84eSAEKWvu6b5
         o9Dw==
X-Forwarded-Encrypted: i=1; AJvYcCW/IWoMyXHHKUzQay0Q9CJhllBV/W5ty6F0aHppUO5wdry8phFW332DZB20rqTeqi2BUmNGuMTmEEDVymRENI2NPNdHS8KxVVN94A==
X-Gm-Message-State: AOJu0YwSMSBeKrPEyKXYgzIqw5rF9Oirhnw/zH6rdBv7Jxq2cJDmIGND
	2Try/AlB6hKA1Xf0i0LMETbgcGYZ6UqTJlrcmYNwOD7AmVva9rxsvpB4jewjBls=
X-Google-Smtp-Source: AGHT+IHeM3AFJo8jH68+WgOn5Bb5yw3pborl2F1ryp8Z37+rRnPpazNBL9tDmD3xUUjWGzp5w/3qaA==
X-Received: by 2002:a05:600c:4fd3:b0:412:fa5f:7f85 with SMTP id o19-20020a05600c4fd300b00412fa5f7f85mr4665433wmq.19.1709883468522;
        Thu, 07 Mar 2024 23:37:48 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.35])
        by smtp.gmail.com with ESMTPSA id b6-20020a05600c4e0600b004131b337c82sm375764wmq.31.2024.03.07.23.37.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Mar 2024 23:37:48 -0800 (PST)
Message-ID: <4124c401-512e-469c-9080-2f2fa5d548b7@linaro.org>
Date: Fri, 8 Mar 2024 07:37:46 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: exynos: gs101: move serial_0 pinctrl-0/names
 to dtsi
Content-Language: en-US
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 peter.griffin@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: alim.akhtar@samsung.com, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, willmcvicker@google.com,
 kernel-team@android.com
References: <20240307135248.162752-1-tudor.ambarus@linaro.org>
 <3acffe042bde796dc47d4bdcb339f0081a05193c.camel@linaro.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <3acffe042bde796dc47d4bdcb339f0081a05193c.camel@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 3/7/24 14:00, André Draszik wrote:
> On Thu, 2024-03-07 at 13:52 +0000, Tudor Ambarus wrote:
>> The pinctrl nodes are coming from the shared gs101-pinctrl.dtsi,
>> thus the pinctrl-0/names shall stay in dtsi. Move them.
>>
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>> ---
>>  arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 2 --
>>  arch/arm64/boot/dts/exynos/google/gs101.dtsi       | 2 ++
>>  2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
>> index 6ccade2c8cb4..9dc0f47ef646 100644
>> --- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
>> +++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
>> @@ -103,8 +103,6 @@ key_power: key-power-pins {
>>  };
>>  
>>  &serial_0 {
>> -	pinctrl-names = "default";
>> -	pinctrl-0 = <&uart0_bus>;
>>  	status = "okay";
>>  };
>>  
>> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>> index 55e6bcb3689e..ee65ed9d2cfc 100644
>> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>> @@ -421,6 +421,8 @@ serial_0: serial@10a00000 {
>>  				reg = <0x10a00000 0xc0>;
>>  				interrupts = <GIC_SPI 634
>>  					      IRQ_TYPE_LEVEL_HIGH 0>;
>> +				pinctrl-names = "default";
>> +				pinctrl-0 = <&uart0_bus>;
> 
> The preferred order for these is pinctrl-0 pinctrl-names (and I thought
> I had sent a patch for all such issues in gs101, but looks like I
> didn't...)

Okay, I'll send v2 and change the order in the same patch.

> 
> Once addressed:
> 
> Reviewed-by: André Draszik <andre.draszik@linaro.org>
> 
> Cheers,
> Andre'
> 

