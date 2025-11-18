Return-Path: <devicetree+bounces-239831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2C2C69CE0
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:05:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1501E4F68ED
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:01:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3769735CB76;
	Tue, 18 Nov 2025 13:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GC/MRswZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455DD35C1B4
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763474266; cv=none; b=SeW3v962j3yOXAbvwE18aBAhhaMbiMJoQv7BCABgfI4e53BRdR73NM5eUxJpLDvMkiW4xMrzIPYTq7nAXp1sBpikY0qHZVoTvcN+RwGsbK9OKWnUvaHInBZf4Foa2bHe0anb3wJMBhKP8mTJkrg4YVP4m9tlKWG4XcNacSJS4qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763474266; c=relaxed/simple;
	bh=mfMgEPem+bHdCW32SziEJw133LN6fYuGSmC870ikt8I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nottOQQp8UGbQ/smetCAdyIO9MnYWFjOFcstBlTj9+CF2tQ3bHYFiSoRWpMwoS8DmAomquSLZcb2yk/Qo4MxzPlwkGldD6+VFd7xh46wYKRRdgJmQaYAd1N8tuXZkcFQPuQcTmqNXc9koLnN/duyukSusXrZ5yqSNgcfLV7qhEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GC/MRswZ; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47795f6f5c0so24570375e9.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:57:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763474262; x=1764079062; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SUDZ4lylaMkBQy9BPqNgegQrO9kWuZYea7qf7A3b2LY=;
        b=GC/MRswZcBaqLBUZI42NmlIMRt8m1+kqjMzSYRp/vGIwLdk4VT9YAhhFki3sgYhm+W
         7MQVjmuUJQ1ez34bK5mLygiDm7A8dwn+hVGnbO2YjIAcFPlU7+W8xgQFPW7rjaMDaNkU
         r+Sk6lzg/k1I4q9jygJNZWo20NQvvNK/bhMHPNMg5KjBCzBUzinQnzlrmTHOluMtAiPh
         NOmzC/oRCgpT/56bJ7zDSDFpOMUaU2Ix2yn0C6+2pV70QGS+pFT7biLv+lICiEgdDAnT
         DTD4scazP+3d/b181e4SikN9AQAfjJpSQPTKLLLDqR6hEppqFZxJheA851yByUyrYQwz
         soAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763474262; x=1764079062;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SUDZ4lylaMkBQy9BPqNgegQrO9kWuZYea7qf7A3b2LY=;
        b=TQgx+aQz0Q/y7Pbg3w/kATVSwOwszrYK+3LZ6xW4EE3SP6CG3Ag8ERKuSDxV2W6mYa
         M3ZR8fmeTJqIKCo8iBBJ4LDbnSNH+PrmHvLl0EVjo/mJoY+sfC7DyinPPNCPwmYs+Nw+
         5o7SdlHxjmRfFWIDSU3Jjj79xxvWyYiakpz7AZWih1+/l4M3XBFklfnWOFN6Kb/Oj/kP
         u74+ifwbQ3WFpll7jqCgAn9h3tFwq7Im7Ucee6alj/Cf6PGvsrm7lwDMquPcPEEZpOHx
         JaULnSyYzh28S81at00zQZRfsa3KApYv7PmHYdsmbbO3IzsP4Yq0FuzF5Lu3pNE2QkFo
         2xbA==
X-Forwarded-Encrypted: i=1; AJvYcCUH4Gz0nUv6bsetq0RmF/EUPnrOtfdW1o5TYVlh39Sd9u0Z1lSl+qFEk+DWwDHHaWVW98NFSxAR4Kgc@vger.kernel.org
X-Gm-Message-State: AOJu0YzpVTu0r9HAGJdcJfuuAfVE368/RAroz6l+JEjLcRSCAPnJiY+o
	LWED7r6WfrN72msjGvzjrmgxEi6tniaxZxJp6RH/2sAnC3uk7xuigGG62wR8FAGi7no=
X-Gm-Gg: ASbGncugJHhXQXGsVLgeQt0h4eh3rNSkdj234iR7uf+Cbx1kqTe5ZtIqn7x7OK9qWCx
	w7ERrvuqFkVk1WMDmyR2H1K6zDS+/NeDzknPk5LiVLI+bQhPF84UiNLKLD+TudVsIaNKfd+Tjp6
	MHeiGU6tj6GDYiozPC9Fa8cy47ArhRJVuGhPuWUW4dGTLIHOy3dnEan+x/aSlKk2ceq3/PJCWOM
	saQi5kytsoFpnvEpAcEO1BZFb26GCDWFdsoRTIbzxxkOysjQa9MfaVOQAifreK83L6FVg7MtqUx
	eE+xi1GouOOCHAwKL2NiVc6wBLajRVD0XI8mPW9/2xtXk5cet6ZV8N9mLb/IAqz2nrkIkcr/3eT
	PXoOnr+uBPqArpL/WcJv8FBYv05b/cqgAOkjrkmWGYgXv4/9ves8VZLqtVU+ckbQ0LYvbkKm28d
	k6VDS1GahORVvvgCCE5eG6BAS+511g+MgiY0vqm23yYiJcfO8G4kFOa+ZpMoWECf938w==
X-Google-Smtp-Source: AGHT+IG9vP9ywNhwcCVn9uZYhtMtnoVY99ke6nSnOYKsVre1wo2fJQ2gXlVy6Kn/osQqy7PyWirVeQ==
X-Received: by 2002:a05:600c:4585:b0:477:63dc:be00 with SMTP id 5b1f17b1804b1-4778feaa7f5mr130859165e9.25.1763474262494;
        Tue, 18 Nov 2025 05:57:42 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:3006:e9fd:4de4:66f6? ([2a05:6e02:1041:c10:3006:e9fd:4de4:66f6])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47787e36ca3sm393988575e9.5.2025.11.18.05.57.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 05:57:42 -0800 (PST)
Message-ID: <bb985484-dc67-42ba-bbc4-94bab89f72b1@linaro.org>
Date: Tue, 18 Nov 2025 14:57:41 +0100
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
 ghennadi.procopciuc@oss.nxp.com, Vinod Koul <vinod.koul@linaro.org>
References: <20251017164238.1908585-1-daniel.lezcano@linaro.org>
 <20251017164238.1908585-3-daniel.lezcano@linaro.org>
 <aPP0uVZu1T7tTQGo@ashevche-desk.local>
 <050f96d5-e60c-4b33-b6d2-24fb3925e378@linaro.org>
 <aQMvqHGN7r6babgw@smile.fi.intel.com>
 <c4c14051-2ba2-4d80-a22d-4deb3709f727@linaro.org>
 <aQSvZT73NBWZFVfk@smile.fi.intel.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <aQSvZT73NBWZFVfk@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Andy,

On 10/31/25 13:45, Andy Shevchenko wrote:
> On Fri, Oct 31, 2025 at 12:32:03PM +0100, Daniel Lezcano wrote:
>> On 10/30/25 10:28, Andy Shevchenko wrote:
>>> On Thu, Oct 30, 2025 at 09:27:21AM +0100, Daniel Lezcano wrote:
>>>> On 10/18/25 22:12, Andy Shevchenko wrote:
>>>>> On Fri, Oct 17, 2025 at 06:42:38PM +0200, Daniel Lezcano wrote:
> 
> [ ... ]
> 
>>>>>> +	dma_samples = (u32 *)dma_buf->buf;
>>>>>
>>>>> Is it aligned properly for this type of casting?
>>>>
>>>> TBH, I don't know the answer :/
>>>>
>>>> How can I check that ?
>>>
>>> Is buf defined as a pointer to u32 / int or bigger? or is it just byte buffer?
>>> If the latter, how does the address of it being formed? Does it come from a heap
>>> (memory allocator)? If yes, we are fine, as this is usually the case for all
>>> (k)malloc'ed memory.
>>
>> buf is a byte buffer allocated with dmam_alloc_coherent(..., GFP_KERNEL)
> 
> We are fine :-)
> 
> ...
> 
>>>>>> +	dmaengine_tx_status(info->dma_chan, info->cookie, &state);
>>>>>
>>>>> No return value check?
>>>>
>>>> The return value is not necessary here because the caller of the callback
>>>> will check with dma_submit_error() in case of error which covers the
>>>> DMA_ERROR case and the other cases are not useful because the residue is
>>>> taken into account right after.
>>>
>>> In some cases it might return DMA_PAUSE (and actually this is the correct way
>>> to get residue, one needs to pause the channel to read it, otherwise it will
>>> give outdated / incorrect information).
>>
>> But if the residue is checked in the callback routine without checking
>> DMA_PAUSED, the result is the same no ?
> 
> DMA in some corner cases might have already be charged for the next transfer.
> Do you have a synchronisation between DMA start and residue check?
> 
> I.o.w. this may work for your case, but in general it's not guaranteed. The proper
> read of residue is to: pause DMA --> read residue --> resume DMA.

I discussed with Vinod about this change and he suggested to use the 
callback_result() to get the residue as a parameter so the 
dmaengine_txstatus() call won't be needed anymore.

Unfortunately, it does not work. I had a look in the DMA driver and the 
internals but my knowledge is limited in this area so I was unable to 
find out what is going on. Moreover there are no so many driver using 
this API I can use as an example. The best I was able to do was 
propagating the residue to the result in the vchan_complete() but it 
does not work.

Then I stepped back by not using the callback_result() and used 
dmaengine_pause(), read the residue, dmaengine_resume() but there are no 
result after these calls. I don't know why.

The issue you are mentioning above should be handled in other drivers 
doing the same kind of acquisition but the routine is similar to the one 
proposed here (eg. stm32).

The NXP SAR acquisition routine is running since several years in 
production AFAICT.

I investigated the different solutions without success, while I can run 
the acquisition routine without problem here with my hardware. A signal 
generator captured by the ADC, plotted and compared with the 
oscilloscope display.

The circ buffer is working well here and no bug was spotted with the 
current routine. I think I did my best to make the driver better from 
its initial submission. The best is the enemy of the good, and I would 
like to make some progress here in the driver acceptance. Changing the 
entire driver for the sake of replacing the circ_buffer by the kfifo and 
change the code for a scenario which is not happening is not really 
worth. Especially that the DMA engine is being modified to take into the 
cyclic DMA in its API, thus the circ_buffer and the routine will go away 
once the driver is changed to take into account this new API.

IOW, can we keep this routine as it is for now as it works fine and go 
forward for a v6 ?





-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

