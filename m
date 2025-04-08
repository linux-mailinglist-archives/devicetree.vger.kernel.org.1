Return-Path: <devicetree+bounces-164547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E967A816A5
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 22:16:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 342E93BA064
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 20:13:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 966DF253F00;
	Tue,  8 Apr 2025 20:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="d6+5PxZN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0AB4253F23
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 20:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744143077; cv=none; b=MlTBXeyh1pg1y1FiRFik+Hyij+3/+5fJwR/meL6AerdUWbCkVdA0cVNkB9bi30jK4dBVVp782yj1Z8uI0b3T2Ogow93/KhRO3GBh7jE+hyVWddozq0+h/Us/6XMg6gUmfK28dohd+ZkKiyHrvLagqENjRFRGpSxhumJcUEYLX5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744143077; c=relaxed/simple;
	bh=NKGR9aNCdAuFjHfEVhQYZVeV11egoapzwZVQAXZ0KhY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Baj3+XA2VlCo35HmpDLrup5hizpbQbDeGjO+DXjApqgn12TsGsopugI5YcA/OXLJ7hJ44RN1j8agL2ydoh3U2Oa2V/eiWacKRrC6oUiR76Nm2FwBmVHhORN01ta5ZVrbnFmna15dRp7HJlD3q/rBlWaQqWGkCqp+pH4yAPHvOVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=d6+5PxZN; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3fcfc85f1f5so1726172b6e.2
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 13:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744143072; x=1744747872; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hy3Mbc+QJnexJzWSQDFuvCjCd9Gg8NAoaKf1OoRHY8k=;
        b=d6+5PxZNs8E2eLcW/C1FMT99NnUfGPkWkt9C2pDWQ7DRE67FF8EBKulcZaAsqtZa82
         oINDDQqw1sTCrPtiDc7CEKbg1NDn+lntk2beMXMJSi7Q/Kw0hPfsZCYMpYp0mClxIaPT
         YT/oyajMxCaZrZ77R9GqFdqw6JgKnEZv3Dm9Fcg1zi2yt3VZlSlDdnhSdH/aE50MDNh1
         e7xMntG2w2CDElxdqSNbKVJ2hZDuu8zObB4MdN6wGb3ajuwI5PTTCCvunf73/URERIfv
         UjiT84rgycRTYVOXRr/Docp5pTvPPzNeodbnljfx0TfH4iEPhRBClV2/Dt6j7V3DzDdr
         FW9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744143072; x=1744747872;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hy3Mbc+QJnexJzWSQDFuvCjCd9Gg8NAoaKf1OoRHY8k=;
        b=jOldD90qcgHODGEGKWmKHsjcBa4u6Tolk4+YSFVmc0W6tGane0JiTxRyycG4mJES3F
         Tsr/UVRonK2yadBlZV2k3JvWEyGMpbrPNwyoRbGX0ikjdw3z6E1QnmFtHnZRE05rnB0M
         ENBI1hriy+XANKZSCQdwUddNL+QBTcRmYI4xWOzTUrTZ6tAkcSfkpo6JRagXOIMe9t8T
         vnS8UPUHQOYHtsTtiGhjy99l+nmHoimfNBnRJ8/ZN08lJSCNLe4l4hhYbeT7LfvhqQFM
         HuD+rpDX4ikhXAnPNfBDMsYroRoQhQGbvpqzwCuL8x/SMh9wc9dlXlL/lPMzp4p8L6x6
         zhRw==
X-Forwarded-Encrypted: i=1; AJvYcCUDFnP7cQgw7PAJZbH+kOnHoBC+DNJdLEMJPXIQvBScKtkuoEKtgi8dQyPVoxEpocZVoOArii/W/9L0@vger.kernel.org
X-Gm-Message-State: AOJu0YwmWUlM2gs5u++g/INjMFcinRdLmcc9B57Alz4ZH1jIHl6ostku
	g/RkwqPeBQevQsZLkHZ/8L1um/ZwiLrueRDifOuVR0P2O25X7YtuefYwxm/8uJw=
X-Gm-Gg: ASbGncvEVnRauXtQZ3RJUT/sauytNiJTE7RsSN/NEEg8Q9f7FQXlCu611Ykz/6g9Fa5
	wj5lhGobfRBGd0y4f5y3uYptxLd921GhILC7bmHDYYCTM50IeDp8+SV9guKN6cBhG4CDa4u4PEO
	pBxG+w1eD9RNs76JQ5bukE5Yt2wqGlmeb007SHSJL7uc4IIcPeplOlNOd+cbJAJ+TNd1h1UD6e6
	gUCEMxLgoffsj25F25dT1J8NNpLxM1HIVUHhN2YIhlIulnaOB3IRnragJMhTWN83k+odUPTt9tM
	SmuHNByKclA1jMLSoj4K/3dTh5+QhxCIJZxbD354wkxYGBGdBz2oKRWqzhirJhRPcL/c/7R0Rtz
	aiPyHNIDJ
X-Google-Smtp-Source: AGHT+IE8nNTgB6dy/XdcKIBtTqym2gMO2UZjpx330tqiOTBJS+T/NPOP1RDevUQcPBjWRVuzwCtREw==
X-Received: by 2002:a05:6808:f16:b0:3f6:ab0d:8dc0 with SMTP id 5614622812f47-4007372de8cmr135170b6e.24.1744143072623;
        Tue, 08 Apr 2025 13:11:12 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-400699fd5ccsm574106b6e.33.2025.04.08.13.11.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Apr 2025 13:11:12 -0700 (PDT)
Message-ID: <2b322564-10c0-4bbd-89d9-bc9da405f831@riscstar.com>
Date: Tue, 8 Apr 2025 15:11:10 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] serial: 8250_of: add support for an optional bus
 clock
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, benjamin.larsson@genexis.eu,
 bastien.curutchet@bootlin.com, u.kleine-koenig@baylibre.com, lkundrak@v3.sk,
 devicetree@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250408175146.979557-1-elder@riscstar.com>
 <20250408175146.979557-3-elder@riscstar.com>
 <Z_V-aKBOFHt-0RKz@smile.fi.intel.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <Z_V-aKBOFHt-0RKz@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/8/25 2:52 PM, Andy Shevchenko wrote:
> On Tue, Apr 08, 2025 at 12:51:43PM -0500, Alex Elder wrote:
>> The SpacemiT UART requires a bus clock to be enabled, in addition to
>> it's "normal" core clock.  Look up the core clock by name, and if
>> that's found, look up the bus clock.  If named clocks are used, both
>> are required.
>>
>> Supplying a bus clock is optional.  If no bus clock is needed, the clocks
>> aren't named and we only look up the first clock.
> 
> Code and description are not aligned. And What you are described above make
> more sense to me than what's done below.

I want to do this the right way.

My explanation says:
- look up the core clock by name
     - if that is found, look up the bus clock
     - both clocks are required in this case (error otherwise)
- If the "core" clock is not found:
     - look up the first clock.

And my code does:
- look up the core clock by name (not found is OK)
     - if it is found, look up the bus clock by name
     - If that is not found or error, it's an error
- if the "core" clock is not found
     - look up the first clock

What is not aligned?


> Also can we simply not not touch this conditional at all, but just add
> a new one before? Like
> 
> 	/* Get clk rate through clk driver if present */
> 
> 	/* Try named clock first */
> 	if (!port->uartclk) {
> 		...
> 	}
> 
> 	/* Try unnamed core clock */
> // the below is just an existing code.

That's easy enough.  I think it might be a little more code
but I have no problem with that.

> 	if (!port->uartclk) {
> 		...
> 	}
> 
> ...
> 
>>   	/* Get clk rate through clk driver if present */
>>   	if (!port->uartclk) {
>> -		info->clk = devm_clk_get_enabled(dev, NULL);
>> +		info->clk = devm_clk_get_optional_enabled(dev, "core");
>>   		if (IS_ERR(info->clk)) {
>> -			ret = dev_err_probe(dev, PTR_ERR(info->clk), "failed to get clock\n");
>> +			ret = dev_err_probe(dev, PTR_ERR(info->clk),
>> +					    "failed to get core clock\n");
> 
> Can be still one line.
> 
>>   			goto err_pmruntime;
>>   		}
>>   
>> +		/* If we got the core clock, look for a bus clock */
>> +		if (info->clk) {
>> +			info->bus_clk = devm_clk_get_enabled(dev, "bus");
>> +			if (IS_ERR(info->bus_clk)) {
>> +				ret = dev_err_probe(dev, PTR_ERR(info->bus_clk),
>> +					    "failed to get bus clock\n");
> 
> Something with indentation happened here and below.
> 
>> +				goto err_pmruntime;
>> +			}
>> +		} else {
>> +			/* Fall back to getting the one unnamed clock */
>> +			info->clk = devm_clk_get_enabled(dev, NULL);
>> +			if (IS_ERR(info->clk)) {
>> +				ret = dev_err_probe(dev, PTR_ERR(info->clk),
>> +						"failed to get clock\n");
>> +				goto err_pmruntime;
>> +			}
>> +		}
>> +
>>   		port->uartclk = clk_get_rate(info->clk);
>>   	}
> 
>> +
> 
> Stray change.

Sorry, I didn't notice that.  Next time it won't be there.

Thanks for your (quick) review.

					-Alex


>>   	/* If current-speed was set, then try not to change it. */
>>   	if (of_property_read_u32(np, "current-speed", &spd) == 0)
>>   		port->custom_divisor = port->uartclk / (16 * spd);
> 


