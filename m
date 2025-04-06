Return-Path: <devicetree+bounces-163477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B8BA7D054
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 22:33:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E9773AE0AE
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 20:33:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABAC119DF48;
	Sun,  6 Apr 2025 20:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ImTvZbGc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE80D2E62C
	for <devicetree@vger.kernel.org>; Sun,  6 Apr 2025 20:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743971621; cv=none; b=VaQbXgOj4PNw8eV6ZXsCJ0dwF+1W7J+vOU8hxgVY7pmFOldhV2K8ajeOKQyiU04ycGQJSV0xIuX1otMCdWBEzdyuCckHOH4qWFM4EeQPF4AydnGNMWsSQx3AxPfq3hDHqzYocRh3icU8PnPuYQJBOi8NZACimZcclz2ba7CN9Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743971621; c=relaxed/simple;
	bh=DWya8jh2xYXaCJnsy7kqSiKaD73itXYuK6UFzHlZibY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iNx9Rdwso7DuDgpjXbya53imdDj8X0CUpE4gj+WG43Mx2MChpOg7tqHV9Yz44dkHwHWzPCfykNyKZSAkgUHiw9ilDPei27DFSkDlmUJhTBTfVAQWesl/Xcv9wook1PkVNwzlmkzIwoNFVsSXb3E2xG3F52ZhROag9DTE8FPjIpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ImTvZbGc; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3912d2c89ecso3244689f8f.2
        for <devicetree@vger.kernel.org>; Sun, 06 Apr 2025 13:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743971618; x=1744576418; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VCGCDpg/t2fUSVKec7gttoFuR8UXHlXhKq+zwaUKf+Y=;
        b=ImTvZbGcmN2jdytwRlcqg8IlmbaQNmT9jBtN0b9qDXUoG4kHr+NdVepnEtHsG4eSpf
         s8R74LMKTUJRp+RDeGEPiemjUwE8rxrnJpoV1mFVOqWtgThh2L/Tn8JzRu+Ht2t0FDi2
         cr4IyptAaRwmgy0pNZHZKAMxpJzAGXBY9oDFUEnn05D3rqpy6rdB+3i6wqwcmMBJ6FIo
         DS0TbyRhzo64s5DH3+fWYEyKecHTca3MKKMJL1DFcnns9MwRsKXMMyxQEcFpIeOL4njB
         zc4vfkY3VNcIH+vjNLNO21AW5OzOq2s7QK10PstJ96FIZKfKEZrQcI/PbjV1b6m++ZnX
         0fSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743971618; x=1744576418;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VCGCDpg/t2fUSVKec7gttoFuR8UXHlXhKq+zwaUKf+Y=;
        b=be/M7Oc8FA0l7l5xYGmjKVN555B0usExne1xXQ+98IOho+EVSrXSWxV0OkBMmCiGzx
         L12fW7sIVNDRgrD77jCmI4jLOmCzZl2ouA/3yc39bOPXRgXhemJs339eOH2OyYaxOVm4
         cn9PZ80dFtx3wEn2Mb4R3YPfEOCvvp03TX6ZaiG8SYavBRz0HstFBMEoL28szxykiqrE
         7Du0LZ1IgXua5aorU2Sw7jd+c7babQwaWPcHnWSIri/IQ6WHrtzQylZhnD4hQY8Ktzh/
         N6sWHt/fcBUmA8eBFYOl8ioKh4i0PJcms9TUZOHjUVIPszui63G0X7QBZOSfttzaaHNm
         uh9g==
X-Forwarded-Encrypted: i=1; AJvYcCUUkH+BGXNMJe0U49kmSBblfO+1n1mhAVhgc8r0hnPLu3PWQw7v1aMbjgxQvNSp3/cJI+1n8Un0tgkV@vger.kernel.org
X-Gm-Message-State: AOJu0YyYQOHgiWKX5uxTtgTetKxVYlUqFBoQAR+2NLNSeKDJgPBXZuyu
	zHnmAURvGjU+3X5TNKvgrZpzQVi5cCMKUq/kXUxJGU78DCXNaAsH7WRoQ/eYNN8=
X-Gm-Gg: ASbGncu3uDfY/xV7Z97Y7E2q01Yu997Ts3/fDqQYPXBQipn5mpoJEXSTHbgnFNGX3NX
	c8EIRL7jTKbUJbCZkCoCJA3EmoqWEX4MhyDQWvSLev26QyNMQQYrDGBKSRygW/pvu7/tfRDiqdH
	PiCSyI/ojJNRpb/HuMvTdeoS4H09CJThfY69OKh9xqYVbdFOdBCJKpNmTj3WolVlfVhuXmliZNc
	oIoifjB9ybg5d5/dYuRmRqbb0cfxSX00AXvn6WXzfkW4RvN44YmRouH1QszKIw9V6rHbYIQjyYf
	gHxbIG1gWqPFI+ZqK16MovnmrrocBgqOGsk64lPL5+JF7ad/s5mIsD1I/JzlNiPwS5k94EZu8AQ
	MZl38QRKCqwnnExGU+S0=
X-Google-Smtp-Source: AGHT+IESJ8Rxdp/XXpq92L2e0M83vsXuVGRWnHDL4atp/VFNNs1LmSeanqZA4fRos5yy9QpaMq7APw==
X-Received: by 2002:a05:6000:178c:b0:391:45e9:face with SMTP id ffacd0b85a97d-39d14662fc6mr8760585f8f.54.1743971617976;
        Sun, 06 Apr 2025 13:33:37 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-39c301a6a60sm10022277f8f.29.2025.04.06.13.33.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Apr 2025 13:33:36 -0700 (PDT)
Message-ID: <60132403-d849-47a7-a11c-e829ffefc7a9@linaro.org>
Date: Sun, 6 Apr 2025 22:33:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: Add NXP Software Watchdog
 Timer
To: Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
 wim@linux-watchdog.org
Cc: linux@roeck-us.net, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, S32@nxp.com, ghennadi.procopciuc@nxp.com,
 thomas.fossati@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 Vincent Guittot <vincent.guittot@linaro.org>
References: <20250402154942.3645283-1-daniel.lezcano@linaro.org>
 <20250402154942.3645283-2-daniel.lezcano@linaro.org>
 <64b6d599-fe67-586a-e4b0-73d9b73499de@oss.nxp.com>
 <c570c99d-53f5-4f77-a730-42e5a2016dc5@linaro.org>
 <93d83df2-d3bc-e32d-70a6-158571504275@oss.nxp.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <93d83df2-d3bc-e32d-70a6-158571504275@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 04/04/2025 08:35, Ghennadi Procopciuc wrote:
> On 4/3/2025 6:10 PM, Daniel Lezcano wrote:
>> On 03/04/2025 08:19, Ghennadi Procopciuc wrote:
>>> On 4/2/2025 6:49 PM, Daniel Lezcano wrote:
>>> [ ... ]
>>>> +examples:
>>>> +  - |
>>>> +    watchdog@0x40100000 {
>>>> +        compatible = "nxp,s32g2-swt";
>>>> +        reg = <0x40100000 0x1000>;
>>>> +        clocks = <&clks 0x3a>;
>>>> +        timeout-sec = <10>;
>>>> +    };
>>>
>>> The S32G reference manual specifies two clocks for the SWT module: one
>>> for the registers and another for the counter itself. Shouldn't both
>>> clocks be represented in the bindings?
>>
>> AFAICS, there are two clocks as described in the documentation for the
>> s32g2 page 846, section 23.7.3.3 SWT clocking.
> 
> This diagram illustrates the module clocks and their connections to the
> S32GS system clocks. From the module's perspective, there are three
> clocks: MODULE_CLOCK, REG_INTF, and COUNTER_CLOCK. Specifically, on
> S32G2 SoCs, the first two are connected to XBAR_DIV3_CLK, while the
> counter clock is linked to FIRC_CLK. Based on my understanding of the
> device tree, this configuration should be listed as follows:
> 
> clocks = <&clks XBAR_DIV3_CLK>, <&clks XBAR_DIV3_CLK>, <&clks FIRC_CLK>;
> clock-names = "module", "reg", "counter";
> 
> Configuring it this way allows flexibility to reuse the same clocking
> scheme for other SoCs where the integration is performed differently. It
> is possible that the 'module' and 'reg' clocks could be linked to two
> distinct system clocks.

That is something we can handle when the other SoC will be in the 
process of being upstream, no ?

I don't see how that can help with the current hardware we are 
describing. What is the benefit ?

I would prefer to stick to what is needed today

>> The module and the register clock are fed by the XBAR_DIV3_CLK which is
>> an system clock always-on.
> 
> XBAR_DIV3_CLK is not an always-on clock, meaning it is not available
> during suspend, if that is what you mean by always-on. The SIRC can be
> considered the only always-on clock on this device.
> 
>>
>> The counter is fed by the FIRC_CLK which described as "FIRC_CLK is the
>> default clock for the entire system at power-up."
>>
>>  From my understanding, we should not describe the XBAR_DIV3_CLK as it is
>> a system clock.
>>
>> And the FIRC_CLK is only there to get the clock rate in the driver.
>>
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

