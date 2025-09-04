Return-Path: <devicetree+bounces-212958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE70CB443A3
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:53:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 49C311883322
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 746DC23D7C7;
	Thu,  4 Sep 2025 16:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fgCxiFYj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8F827FD7C
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 16:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757004778; cv=none; b=YTOvqBoZ0H2YBsm/FmnsBznkQJXp+h14JnmmwoN024FnTguD9PszF4IaDg81nwtxNvv1QDhUwloC5EZSnjaDETJiPsCxiN/91uZQNoe5BXq6uP2vj2KKfLdAQe0Cv6HrosU/rPe4QWleWUiVkhVI+enMvKwzSRx/K7iOwcoSX5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757004778; c=relaxed/simple;
	bh=7fvOz14syBHStBNZy4sYRSSBrNYheDkpZc1heoV3si8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=amtxxCzR1NDla5rHwKEKJhB3ZMxL9AxbxlH6NYII4ql5emyG9zQ4x41QEO2MClX7OWrWv/9glBRgNoy6pn/XAB4iiP4jQ2J/zMs1THZfdB/l4ggRHPzgopZOo6CeImlqK8sacoo2DCiyuDYk5i2t2TsAoSVq3Lx+OghllTbHMT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fgCxiFYj; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45b869d3571so4885295e9.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 09:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757004775; x=1757609575; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xFh89iR809PVR/b4+ILAvd+FMJiKpRfITsgR1aQ1ciM=;
        b=fgCxiFYjvONXUxH8Fv4gWtI7BDc3qzsItZayOnkLbCWNz0bRUceFWIRlUB0j0b+CCP
         5/3qUH4o8HiPDFngtrez6Pubh1XTKk96vLJNMv9PNV7mK+axW/iJDwAhDUQXhfo+30ap
         Ntp/CRPHIuZgnc3xYw/l6/nYotOZjuLpcSVgeoT3dlgdj9xgqehvsT0/W1J1kMf0StRQ
         1N9MRJ2xUOrDrgARXTcRlYnQn8JBznw+qXOrPXX8tXGoVTjd68UTPoLJSoLniNpk6P4w
         Pb87SN2BNka5AF/SNem9VdXQy+wLqhTlO4C5OnvKZaqG31m9kDEoIBupqgUc6HoDq5/P
         BrCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757004775; x=1757609575;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xFh89iR809PVR/b4+ILAvd+FMJiKpRfITsgR1aQ1ciM=;
        b=scV+t+mqKDJQzBcJ56NgDL+F0aem6wjrxb1NnDKKQp//DoLZFHUCflA6tBXqwyX5Rd
         NCPXTGc+t8+O2O6od2pYi2Ak97mTAlwGOlhrQ1dm+QunmYe9ywpTLned1UgNKVfVmvmU
         eebS14NiydZEeEalWTjjR6k9/Pcqy2j2CHWS1TT7D9cv9tIgMQlfSPc9ZYMPKFvS4MIT
         pBRrLeVYYio3wVwwXx4FboJKP1GVhRbbQVIdXe4lpjkA53uWs+LyOyv8Lhq5ui/tpsqM
         xZ0l1cSLjb8dka8oRtgjY6y8E1iuvEhKS0jvVq4MTwP/OH698jOGhY2weXQtrs3k3EmA
         S6MA==
X-Forwarded-Encrypted: i=1; AJvYcCVvJvPyMK9QmDv6h7FwAX2j7K4r+Nc75BPk1sAv1pxaaTvdEW6zpx5TPtITHSD7v9Ups4F80+w2lqXm@vger.kernel.org
X-Gm-Message-State: AOJu0YyRaASWXIOMnH4XYV5wXQ/lnnlOUCDxydQaIkMgja5J1hq1/mvC
	KYT0DguZE1JaOjxPZPya5P4hZF/IrAE/46Wz0I4Z4HRQqCRripxUMVOV786qXVGgLYQ=
X-Gm-Gg: ASbGnctzqGj7OdXaefqQt8GvMugbhkxl93cMDfWSlB/dvuvG7favSNvVq15z7baCwuO
	Hmy84+o2JpFdN2wa9Kl0LN9M7qSzpkxywrh+WMroiF03cdLXgnXEz2AKVYHvSG5hLYqQTBkV2d2
	N3pwMkRpdYe3ZVeT2uo9KCSfaYel6ym/si1j98hpwvDVVIhpLgbqG15SUH2Q+WddEX/dVAOGKu8
	V0to2zcrkhnkHNz+Q2+uZaw8+CETEHLhHD3hZUsASodZ78aPFK0ITT8l5EEx1fmMv7hLRIOyPjZ
	cfFVW3eMMxF1GW4XqDd3FPMzY04LyBBSaXmfpp6J0JnJxrE5UkSeXwhllM71fpb9SEnekwaFwxm
	kD1xKxQSjZM2ovi8Pv0638mrAywJtbpuB+oOMKtS+fbDuCTZy+X0sV2HribzUl0PHuApvlZdFKz
	50mMaFRpnS+64Tefjb/lFBFMI=
X-Google-Smtp-Source: AGHT+IF/3UAqS8oVgCQ/U/GWGmEsXBPfC2dj5lpBtR7xMDWEaxaLpTFZgIdSL6vjxf+WzDQruLwXDQ==
X-Received: by 2002:a05:600c:3baa:b0:45b:8b3e:9f7b with SMTP id 5b1f17b1804b1-45b8b3ea15cmr138645635e9.3.1757004774916;
        Thu, 04 Sep 2025 09:52:54 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:1ca0:c789:48cd:e2f9? ([2a05:6e02:1041:c10:1ca0:c789:48cd:e2f9])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45cb5693921sm91433315e9.0.2025.09.04.09.52.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 09:52:54 -0700 (PDT)
Message-ID: <9d4e7851-a874-413b-974c-d499ed59f553@linaro.org>
Date: Thu, 4 Sep 2025 18:52:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] iio: adc: Add the NXP SAR ADC support for the
 s32g2/3 platforms
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 linux-iio@vger.kernel.org, s32@nxp.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, chester62515@gmail.com, mbrugger@suse.com,
 ghennadi.procopciuc@oss.nxp.com
References: <20250903102756.1748596-1-daniel.lezcano@linaro.org>
 <20250903102756.1748596-3-daniel.lezcano@linaro.org>
 <aLgrGlpNrDTC5LAd@smile.fi.intel.com>
 <a34efc36-0100-4a7f-b131-566413ab88ae@linaro.org>
 <aLlAugdr-hwMNIje@smile.fi.intel.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <aLlAugdr-hwMNIje@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 04/09/2025 09:33, Andy Shevchenko wrote:
> On Wed, Sep 03, 2025 at 05:28:09PM +0200, Daniel Lezcano wrote:
>> On 03/09/2025 13:48, Andy Shevchenko wrote:
>>> On Wed, Sep 03, 2025 at 12:27:56PM +0200, Daniel Lezcano wrote:

[ ... ]

>>>> +	ret = read_poll_timeout(readl, msr, !(msr & REG_ADC_MSR_CALBUSY),
>>>
>>> Why not readl_poll_timeout()?
>>>
>>>> +				NXP_SAR_ADC_WAIT_US,
>>>> +				NXP_SAR_ADC_CAL_TIMEOUT_US,
>>>> +				true, REG_ADC_MSR(base));
>>>> +	if (ret)
>>>> +		return ret;
>>>
>>>> +	if (!(msr & REG_ADC_MSR_CALFAIL))
>>>> +		return 0;
>>>
>>> I would expect standard pattern — "errors first", but here either works.
>>
>> Does it mean this chunk of code can be preserved or do you prefer an error
>> block followed with a return 0 ?
> 
> Up to you. Only the question above (readl_poll_timeout() use) stays unanswered
> so far.

It is a typo, it should be readl_poll_timeout() as you suggested

[ ... ]


Thanks

   -- Daniel


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

