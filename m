Return-Path: <devicetree+bounces-233690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D3473C24C9A
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:32:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 54268188DF0D
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 11:32:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A48B345CB0;
	Fri, 31 Oct 2025 11:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i39+8zXo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B112125A0
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761910329; cv=none; b=OsvoMA3FJRWFBZzjUh17y3Bmos4xzbKMuHAXPu44PNp5Z8ryruolAW1O3irUhz58tuS5iY7XldqTb2zbH6UfsQXUspOf3ZiqmBkxqCSFH1pJa/8F2S1xCfOE4Pf9jmCJSrEfGUqSBAiHL53vaD58Cp/+CaflgsFtMk6krT1RJNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761910329; c=relaxed/simple;
	bh=rZ0TMSLeHMkDfV8viGGEm8oq1s3QC5Gza3J9ruliQrA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N6AaXVYck6F4ziY4E+oyUY8KzHLe/l29g/e9dxZJNuaZLXssCAqHjcoSqWS+E770bJUex+rWJhGrzAVCccVvlqOPQF2u0bc1R+HLwtHZdhcpFsSbK/v2hiveBUpJvlRxzxn/Xn7MhE+lm1GqqMTtaqUMWBkOtlVkXwtttiLSfG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i39+8zXo; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4710a1f9e4cso17449445e9.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 04:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761910326; x=1762515126; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5o5Hvq1mHcb5vjOQOhhn20wc83exLDCb9EuvKhyDJL0=;
        b=i39+8zXoiMXliW5qTf2LVHqKUyYObELIqYAS6elK1SnE7F9Nf9onPYuPScIS31KBeg
         kbOjYB+lSKxgnY8gBeamUDk2mrwgUnz/LUoidT6CyOUDQmTPfcVPv9ouV4soyJ6UZvRW
         XS/XNd+wfbL2r+RfTWWpTQiRZbvepnoXueEbBnvj18L/B/Ang6uF6n9K42jU+HdP1sHj
         xFWSdgfysVn/2H0zgYzlo9f5pRCvSecDAGiqa9iTjmkYuEq78Kbq1wZmRjXUachW8AOG
         Ouyk7IMXbku7QjTtA31bxU0HlLUQZmpAuI8FR0UjlfacT4H4fF1yM9O9LAO0cB9sGpFe
         6K3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761910326; x=1762515126;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5o5Hvq1mHcb5vjOQOhhn20wc83exLDCb9EuvKhyDJL0=;
        b=QEevU6ZdR+er3Yb9qt7UhZdpNrdoNVAGmWiH8KJDnYot59GIY9LbnAAdUoXTYMxct+
         c2WAcrHx3bTC6wE0G/1hZ9KeW8Q83nof2R32oEYWsZFVE7rvzLJBa9EaNUZDSFQun+AH
         ZsodiIyKG9dEfv4KAEUQj3+vCXDQz/aJi7/c7gAh2oXVSWiyfQ0NuCjQp9/cPrCYUPNA
         9R3Djl5tcHoqrvZOblYjGj5JmxJxP150RgEqaItXXLDmrol8nTC8RfVf3TV4S/ghfxRt
         s/+qRWH0b4Qb/ItyVClFzTFyHtDTrNJBVO30UfGuzlQaWaUsWv/E5Tr60XjFJw4TBsEA
         hajA==
X-Forwarded-Encrypted: i=1; AJvYcCWlbMH592FVrbeNIQayvorc72Na+pPRbtyQcU18F7VZFJUpXNsWk+Pfh8zWc5en+ZHTbKQGinTaZM/W@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo4p9NR5Pnbl02zEVB0BMrferdhb9P+G5WgF6C71Z0hLmmSdun
	uvzFTkHwEzr9umOaKZ/mI6eqz6p2bDY77YlWxvUG/wyaNpvu4sQ5dlES73zsZVVBsa9IrrCLuKE
	0MlnxnZU=
X-Gm-Gg: ASbGnctttJ67AZomCN0M1Dl8VcHPsNoMlJXrDGSFg90ZWbH07twVqbvRmdlQJ9giiMK
	d12KStmuOjARtWyH8z5SPhQjMtoppVBgNkAoP3NeJdxSwT8FeXOofKzBeL+X50UrgFQlDYzYwKI
	APQtyJTJ4PK4g6RMeBbbHk47BV6HgBXXFP6Ogy/4AUsNOxPc20k5dE0p8eF4cb2C5iI5UuuoH2/
	0rGC+5K3KH4urBf43HG6CQRm0ZIca/XPf1hFlghGAQaD26cx+6uvFgR7E6Ox/sUU0RIYwMGZd53
	RFAM1PRCYbmeTLF49+jaFXEkh1zALh6ROPycH40rSLAa96u8TP37ZjoHcu4CjJaCRZ5EpNuwoKF
	KHwLZhbs7JiP6do9hhUUh1MM2qcyySYNOBQIqNbDNfdcHeROZQs6T6MYydtx/0cnJGjviJzdgG6
	HwJvOC2fYppPER/ToxcB50Ich5v8cL8R8lObIZ1wuZR8u6cRPrCw==
X-Google-Smtp-Source: AGHT+IEGw8J4fMoUSlvNobSiife2THo2Qv2aF9UAjT0gcyFDgCPPv/RSdWc/Vx7oZtBBWBje0Y1ZZA==
X-Received: by 2002:a05:600c:a44:b0:477:df3:1453 with SMTP id 5b1f17b1804b1-477308cd816mr31858515e9.28.1761910325455;
        Fri, 31 Oct 2025 04:32:05 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:2b:468c:c228:91bf? ([2a05:6e02:1041:c10:2b:468c:c228:91bf])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4772fbeef62sm21673055e9.1.2025.10.31.04.32.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 04:32:04 -0700 (PDT)
Message-ID: <c4c14051-2ba2-4d80-a22d-4deb3709f727@linaro.org>
Date: Fri, 31 Oct 2025 12:32:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] iio: adc: Add the NXP SAR ADC support for the
 s32g2/3 platforms
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 linux-iio@vger.kernel.org, s32@nxp.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, chester62515@gmail.com, mbrugger@suse.com,
 ghennadi.procopciuc@oss.nxp.com
References: <20251017164238.1908585-1-daniel.lezcano@linaro.org>
 <20251017164238.1908585-3-daniel.lezcano@linaro.org>
 <aPP0uVZu1T7tTQGo@ashevche-desk.local>
 <050f96d5-e60c-4b33-b6d2-24fb3925e378@linaro.org>
 <aQMvqHGN7r6babgw@smile.fi.intel.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <aQMvqHGN7r6babgw@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/30/25 10:28, Andy Shevchenko wrote:
> On Thu, Oct 30, 2025 at 09:27:21AM +0100, Daniel Lezcano wrote:
>> On 10/18/25 22:12, Andy Shevchenko wrote:
>>> On Fri, Oct 17, 2025 at 06:42:38PM +0200, Daniel Lezcano wrote:

[ ... ]

>>>> +#define NXP_SAR_ADC_IIO_BUFF_SZ		(NXP_SAR_ADC_NR_CHANNELS + (sizeof(u64) / sizeof(u16)))
>>>
>>> Hmm... Don't we have some macros so we can avoid this kind of hard coding?
>>
>> I don't find such a macro, do you have a pointer ?
> 
> If I got the use case correctly, I was thinking of IIO_DECLARE_BUFFER_WITH_TS().

Oh right ! Actually, IIO_DECLARE_BUFFER_WITH_TS() is used but the macro 
above was not removed :)

[ ... ]

>>>> +	dma_samples = (u32 *)dma_buf->buf;
>>>
>>> Is it aligned properly for this type of casting?
>>
>> TBH, I don't know the answer :/
>>
>> How can I check that ?
> 
> Is buf defined as a pointer to u32 / int or bigger? or is it just byte buffer?
> If the latter, how does the address of it being formed? Does it come from a heap
> (memory allocator)? If yes, we are fine, as this is usually the case for all
> (k)malloc'ed memory.

buf is a byte buffer allocated with dmam_alloc_coherent(..., GFP_KERNEL)


> ...
> 
>>>> +	dmaengine_tx_status(info->dma_chan, info->cookie, &state);
>>>
>>> No return value check?
>>
>> The return value is not necessary here because the caller of the callback
>> will check with dma_submit_error() in case of error which covers the
>> DMA_ERROR case and the other cases are not useful because the residue is
>> taken into account right after.
> 
> In some cases it might return DMA_PAUSE (and actually this is the correct way
> to get residue, one needs to pause the channel to read it, otherwise it will
> give outdated / incorrect information).

But if the residue is checked in the callback routine without checking 
DMA_PAUSED, the result is the same no ?


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

