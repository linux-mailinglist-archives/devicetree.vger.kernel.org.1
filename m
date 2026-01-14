Return-Path: <devicetree+bounces-255162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9C5D20417
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:41:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9EBB4308CDDC
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 701D73A4AD7;
	Wed, 14 Jan 2026 16:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bot3ecRr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A37E53A4F2D
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 16:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768408742; cv=none; b=rxDbbTSeWJJKW0a/uG5GCbos68G5v2G6jwtey5w1r6VncoGQiMBAc1oHtPlTBfujlzuMk1uRs4gJJQ1O3oWjQXGo9nKMc8FLoJkKaX86Q6Nv5Qr8xxiCnIraxNKmiEkD3wFvj6r1swdt/HgB8BKyiAb0LLgpOysjBN/AK+wxiaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768408742; c=relaxed/simple;
	bh=JCUV58cUqQKhCjdeo/XygWeSJIfKra0j28AlW6+loGA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RmjXsIH3EiHFgN638hER7Q3C7us7ubnuNEqymH7/s0+Mhqu6HHBRyMup2Lpv3at+XCosO7ZqcTJnReJhCAJg92+z3wfseOz7z1G9hYHblx3ASuh2RcphiWq0j43Sq3qdW5wYa9Ty0wfFeGg1IvHDQSk/Mdx9T3jF9fq6bqsbDx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bot3ecRr; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42fb03c3cf2so23912f8f.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 08:38:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768408736; x=1769013536; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kz9SH3CkZz+PQQkAjq5SbvfDuE757gp5ylXm52bn0UQ=;
        b=bot3ecRr/tikhJxHe8k6PPUFR7TOxUap1cxNxaivX//Veeh/pEXVRyINzg+OTZ66xy
         mKUIYsCRFL3qC1RSALTBCw37Umva0hjBcg3rEPlCLr3qEDXp/OuUvM5UJpNq7SnpizL2
         l39I8wizkYhNKTbTLcaGfBUXhpdJXh+b1+LWt1Pmtly75Eg6k3Hwkox35YroZzY25esj
         7Zqs6NduJZTHABCDK5Gi6hiqOY6Wx8cUAaEwdVcGroRX8iFO3Ao6Gpms0Zj+zfnkDJQb
         UbvXodfD8kC2p0C45qGsn0YaXJjM46UFk9iJq96jqJ6vrhXVs1XOrvmRUk8+xhek4hzO
         e5iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768408736; x=1769013536;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kz9SH3CkZz+PQQkAjq5SbvfDuE757gp5ylXm52bn0UQ=;
        b=Uxx0CVUjfYZpC0E4VijKOO3VSOusAdmiDLe9wqJ4dNq9KKd8698drq0/EywJwYjnnK
         5lLDWMlxbhCwsBHT9Ym+xdE2ZoV1t4yYTJgkAL/Jydf/8DTnq9wSp4pJ7awAjOif9CGU
         5T/pN6VXta2cSz4lDA45L3WUJBTDjxyTVZyc5jfWjoblnFor87IG3pPuUoZxWYl778mr
         VPenzcpq2JIRG25UD2yzX5XJZZC1Ox788XqI6b5/kmER9z2LYIsUc0JPE5pbj6lL3m1G
         14IH86CMUTVOwzm51m/ow8hg+srQE+EpJltdubgyPLCl7ln21io/BJbPtN2dOhahiN/m
         QWzw==
X-Forwarded-Encrypted: i=1; AJvYcCWHEGLL9ovVdg8V0QTh6Rtxo9BNhwwHrotOpo0RN96sdLlbZCfDoAWhSwJntjPqjWUvR9k6HYxtyh0q@vger.kernel.org
X-Gm-Message-State: AOJu0YydqlSDvjxTRQAlvTkkuBe6N5YmeWZc+bc68hYtazQcP1DZhdhr
	Yg17uQ5MBnQtyvPfZvburT5Bj3CbtbKRG46hyDeYAWGM+dglKVxZl0Pv+pmROpcE1CM=
X-Gm-Gg: AY/fxX7fssCQlhcMpkDCoQBxymWodFIak+A3CLKij5VJROhC6m+/rYvU2KD2sp2i+g/
	HuoWEeen8eIoTwONUy5pLTe0M3eKALxuRlmjbgFpcND2uBvhj9E+OTDM0fmzi+Gte6zSUmYMpYb
	z61kLtDEmt/jOuc98IJrBRDjyPsEHjBUYYdFuehYjBLHP27wrliTbIVqpKRbBHGwt4PEdSECuqh
	W5uL76RnpB4l+dCgOg1YIMj6OXrcX08moOdXKV3Kaea2SO84ZmWII8aTrO0e1pnJPZ5e9AZzq2a
	aYldEgBwkd1cp4ol7CTAD8U9S0hRFG3hW6HFbu1lRNdIlMbSifNGg4L1o9eozYuq6G0QFirn5Ew
	r0MvvQ37YSGz295nLLX8BAPySrZo+MNOtG3rJPZvfS9iChdxitvS5trgocpEY/L4zoBQFIouKK2
	WhBVDJI37wJuVTdiEUWRQ/SqFx2rRlaokNB05bbTz/wqfMYKg=
X-Received: by 2002:a05:6000:616:b0:432:c37c:d83a with SMTP id ffacd0b85a97d-4342c4ffd94mr3862827f8f.15.1768408735959;
        Wed, 14 Jan 2026 08:38:55 -0800 (PST)
Received: from [192.168.2.1] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-434af6d90aasm207556f8f.29.2026.01.14.08.38.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 08:38:55 -0800 (PST)
Message-ID: <19dbdd5d-42d8-4ce6-8d8e-f91251348780@linaro.org>
Date: Wed, 14 Jan 2026 17:38:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] counter: Add STM based counter
To: Frank Li <Frank.li@nxp.com>
Cc: wbg@kernel.org, robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 s32@nxp.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20260113165220.1599038-1-daniel.lezcano@linaro.org>
 <20260113165220.1599038-4-daniel.lezcano@linaro.org>
 <aWaIXRLxGBh0bjuQ@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <aWaIXRLxGBh0bjuQ@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 1/13/26 19:01, Frank Li wrote:
> On Tue, Jan 13, 2026 at 05:52:20PM +0100, Daniel Lezcano wrote:
>> The NXP S32G2 automotive platform integrates four Cortex-A53 cores and
>> three Cortex-M7 cores, along with a large number of timers and
>> counters. These hardware blocks can be used as clocksources or
>> clockevents, or as timestamp counters shared across the various
>> subsystems running alongside the Linux kernel, such as firmware
>> components. Their actual usage depends on the overall platform
>> software design.
>>
>> In a Linux-based system, the kernel controls the counter, which is a
>> read-only shared resource for the other subsystems. One of its primary
>> purposes is to act as a common timestamp source for messages or
>> traces, allowing correlation of events occurring in different
>> operating system contexts.
>>
>> These changes introduce a basic counter driver that can start, stop,
>> and reset the counter. It also handles overflow accounting and
>> configures the prescaler value.
>>
>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>> ---

[ ... ]

>> +static int nxp_stm_cnt_count_read(struct counter_device *dev,
>> +				  struct counter_count *count, u64 *val)
>> +{
>> +	struct nxp_stm_cnt *stm_cnt = counter_priv(dev);
>> +	u32 w1, w2, cnt;
>> +
>> +	do {
>> +		w1 = atomic_read(&stm_cnt->nr_wraps);
>> +		cnt = nxp_stm_cnt_get_counter(stm_cnt);
>> +		w2 = atomic_read(&stm_cnt->nr_wraps);
>> +	} while (w1 != w2);
> 
> Still have problem. Does hardware have overflow flags? This way is just
> work for hardware overflow

No, there is no overflow flag. Just a comparator.

> CPU1
> 
> 	w1  = 0
>          count = 0xffff,ffff
> 	w2 = 0
> 
> 
> when count wrap to 0, triger irq, but irq handle have latency at CPU0,
> CPU0 have not chance to sevice irq. you can add printk at irq sevice to
> create corner case.
> 
> So CPU1 get
> 
> 	w1= 0
> 	count = 0
> 	w2=0
> 
> so counter still suddently change to 0.

Ok, so I think I'll stick to the initial implementation and just give 
the counter number instead of trying to do fancy things.


[ ... ]

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

