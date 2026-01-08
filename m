Return-Path: <devicetree+bounces-252933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05473D04C5E
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:14:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1F837302FCD6
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:11:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70E8329BDBF;
	Thu,  8 Jan 2026 17:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s5BNwejb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B7429BD95
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 17:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767892293; cv=none; b=R6w2tU6ij1FwgDT3kqdHv9ekrmeF2TPcPXi7p0LlNqjOcsFVnkLQ7a4roer5c09xfa+9iFfzq/BXuOun4jdIoiHpcvzAUw77z/ay9Uj3XDFvhM39Pp936kx2wyh5+fg5anxregEs3TiKYe+omP4A359QuUXa9GkLoV8ugN+wYPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767892293; c=relaxed/simple;
	bh=e9OqkVMMy37uk1CkURat6knLOvBnqbZIsUVq9Z97zgM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hgj+Gy3AptqFpTzRIEfp3oKjTj2eRhk+rLsvq7qFEns2MZL/z/6lpzRAc/XngFhFliUM4H7wHbhjaOtzQKvFlqzuIxC5zTWMABS4jE6Pl8GkpAweb/hmgSilIBGKwKpBZd0L+j0WysEixY6WfQEH5sebUGJdkjWyFW27qg3+kLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s5BNwejb; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4775ae77516so37985235e9.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:11:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767892290; x=1768497090; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gXl0zYf215ujPOvXz+cH/E0XzrmTnHH+utNKWT0CFzk=;
        b=s5BNwejbEC2pcAGVQo1LKvR6L5sxgxyZ7M2e15BCYAstQkUee0Mpg5dW6luDGsetSU
         C9uE7q5pletvTmuaDbPkAVpw7/9okfF9Z3EZuIP/JyFEVwXWc4iv9EyJ1hjwhx/zdGEa
         uK+3+Pif1LJMNWfeKMeirSPE2UPoYlyAdZNwyhfAlWQTo1vMyNu3K2f6+Tki3H1X7neO
         HeHA9eh05S/6E8j0C6AwXu8noWDR4vnpmV8sa9F4WgqD0BMzT+/KEyYhLs3Y6ej9ikrt
         QwQUjtImFrbbwotMS44cjQhd8WLYcFEAuidzysqaSBqBJJi8fbwIS9Gid1donbHj+jca
         zoPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767892290; x=1768497090;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gXl0zYf215ujPOvXz+cH/E0XzrmTnHH+utNKWT0CFzk=;
        b=M0F7EjRH9jvee1ivVQaYtYSj9vyaD39d6MfFaoVWqTUATAwzp4+S262cfaQ9PJBZTE
         fcvihsdT8uj0LE3w4Niaio7rYoagD+0UK0PKec15KHW/J+DrGqVRVLaA3Y88QkAlsTWI
         th5L38JXzH4cT4EC5qDIZmMiuJy6EmJpSS+0ZqB8G1pB6JPyUx+2e7YyqQY7IXh4cF9Z
         9pxkds4eHAuBOyYXj1QWd/yBipXIQWxS97PDxw3YD4X+1vZTkEpsiTrOBhs3BsLaITWA
         Ee8V8SjavSuvjmGDgWL3YNNuaRVESXnU7Volyix7sBxs613WGNmF0GpyYL/pfuJbkrro
         6Rjg==
X-Forwarded-Encrypted: i=1; AJvYcCV675BPoptXGSfryafuEF28AUfnACI5rLE10CaZ1B1JfWk1GDfJP1vT9Y4Lj98r32i8kM4ULoIM0l3f@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8hSz7ajoK2h8cOfBu/lQm5wPrxHWSgYQmLgI+fr8gTLkVboQy
	n+vTxnQsIFfFCC1GAc5Wg9GgtBF6Dm7npdMwy+nycNqsIK71fRPYkbC3IMNoRB8/byY=
X-Gm-Gg: AY/fxX4kz/B6ZmWvpwg92096SG5KQKiSeiqQkyMKIksjXmOgXpVqKjb+lFN3/bdk/4c
	aYPCInuX41ppRNYRbaG8XSCKTAR4hMVplDB7XCVCiwnfu0ZKLQWjjetTdACSllfDJVAmhDIMyn6
	wZdmb8SPiMSbOGy9cItb9RSQV8m3w4bc2tSVdP89v2lWG3bbjL4mqerZjIFkTeT7roXFH1Ap+8H
	nkGEPbXcgUO7iwqw4JeVCeYznPK6ateQmdMahI8hSWEGWEqEEuhR3UF2wkRTG8Go1jma++kvL5p
	Tea1iZWyzIraujSl57yYW/paRZrr6+DTxbRMo0pjfrvtvLSgTirBajywPJqnmyLwG/3y16UOaMB
	kX4GLUqHM4lb8uhqC2hpR1cvj6//q5WfxqnxvUSWEZpsgdJqXx1PlaaU6rjC+SejQtwTkvL56qd
	bG/BKdshU9sWvTNqftbopIxPVByhTCm3L+Dq84Lv1UIYta11mjRpRSH+v1DhR4G2uZQQ==
X-Google-Smtp-Source: AGHT+IGG41X3Gi6XWfcwkbEBHNuF5M72WCgsZAUNtD8A0ElHOPZt1svN/buMHpm5h2HwXWsKr665NQ==
X-Received: by 2002:a05:6000:2dc1:b0:431:327:5dd4 with SMTP id ffacd0b85a97d-432c379b38emr8881991f8f.46.1767892290050;
        Thu, 08 Jan 2026 09:11:30 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:37e6:ed62:3c8b:2621? ([2a05:6e02:1041:c10:37e6:ed62:3c8b:2621])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-432bd5ee5e3sm17552617f8f.35.2026.01.08.09.11.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 09:11:29 -0800 (PST)
Message-ID: <f5a96574-4d81-480f-b5fe-45c437a49288@linaro.org>
Date: Thu, 8 Jan 2026 18:11:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] counter: Add STM based counter
To: Frank Li <Frank.li@nxp.com>
Cc: wbg@kernel.org, robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 s32@nxp.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20260107133953.2094015-1-daniel.lezcano@linaro.org>
 <20260107133953.2094015-4-daniel.lezcano@linaro.org>
 <aV/eLFO57v567Fwa@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <aV/eLFO57v567Fwa@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 1/8/26 17:41, Frank Li wrote:
> On Wed, Jan 07, 2026 at 02:39:52PM +0100, Daniel Lezcano wrote:
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

>> +
>> +static struct counter_comp stm_cnt_count_ext[] = {
>> +	COUNTER_COMP_COUNT_U8("prescaler", nxp_stm_cnt_prescaler_read, nxp_stm_cnt_prescaler_write),
>> +	COUNTER_COMP_ENABLE(nxp_stm_cnt_count_enable_read, nxp_stm_cnt_count_enable_write),
>> +};
>> +
>> +static int nxp_stm_cnt_action_read(struct counter_device *counter,
>> +				   struct counter_count *count,
>> +				   struct counter_synapse *synapse,
>> +				   enum counter_synapse_action *action)
>> +{
>> +	*action = COUNTER_SYNAPSE_ACTION_RISING_EDGE;
>> +
>> +	return 0;
>> +}
>> +
>> +static int nxp_stm_cnt_count_read(struct counter_device *dev,
>> +				  struct counter_count *count, u64 *val)
>> +{
>> +	struct nxp_stm_cnt *stm_cnt = counter_priv(dev);
>> +	unsigned long irqflags;
>> +
>> +	spin_lock_irqsave(&stm_cnt->lock, irqflags);
>> +	*val = stm_cnt->counter + nxp_stm_cnt_get_counter(stm_cnt);
>> +	spin_unlock_irqrestore(&stm_cnt->lock, irqflags);
> 
> It think there are still rise condition here.
> 
> cpu 0                                            cpu 1
> 1:  nxp_stm_cnt_get_counter(stm_cnt); (0)
> 2: 						 irq_handle()
> 					         counter += INT_MAX;
> 3:
> 
> when wrap happen, nxp_stm_cnt_get_counter() return 0, but, irq still not
> handle yet.
> 
> so nxp_stm_cnt_count_read() return 0 at 1.
> 
> it return INT_MAX at 3 suddently.

Thanks for the review. Yes, it seems like there is a race for the reader 
result.

Except disabling / enabling the counter when reading the value, I don't 
see how to handle that case.



bool is_started = nxp_stm_cnt_is_started(stm_cnt);

if (is_started)
	nxp_stm_cnt_disable(stm_cnt);

/* If the counter wrapped, the interrupt fired already */

spin_lock_irqsave(&stm_cnt->lock, irqflags);

/* Counter can be zero (or more), we don't care, UINT_MAX was added */
*val = stm_cnt->counter + nxp_stm_cnt_get_counter(stm_cnt);

spin_unlock_irqrestore(&stm_cnt->lock, irqflags);

if (is_started)
	nxp_stm_cnt_enable(stm_cnt);





-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

