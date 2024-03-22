Return-Path: <devicetree+bounces-52341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AA788659E
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 04:43:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B7A31C21B69
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 03:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E589E4688;
	Fri, 22 Mar 2024 03:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="dkBQmGky"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49010B664
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 03:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711079006; cv=none; b=r+ky01iNuipH4d6jTt5+zk2gAb56fAYvQlu7kIlVWMRJKbTyPakhADaADwYxSiJZHaUHQwWrqK+pv1yws9SHf8GaMqX6FVzMQnnJia/71JCBew56SJKyAXAHJP22ZdUkeMSCZ0h5Rb1wsSZC0FoaZdhLHgW/0OOZnxCpgGC8jLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711079006; c=relaxed/simple;
	bh=31LidLo1d9SHHGhvHj6eVqwxueZXKVNGf2KY+08YnHs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nUle5K+Ju9nCEe57ll1bDVuuUU4/nGaYtimYiE/lX93btdzva73ZKXyoIIgNwojwPlKoiNvkI3xUXCOc49gLHcC+rpxBAHgWqpC/WTqNSEQXqPD6vjeBOROze2Qd7yVBFhOYq903DYUWbyjHB6hsYUrmqZVpUzs8hrf7jaLRq4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=dkBQmGky; arc=none smtp.client-ip=209.85.166.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-366bed3a440so7172815ab.0
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 20:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1711079004; x=1711683804; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TxrwCimaFyIjWf+99S22XQ+0Yy92SbX36MYkSACyHkI=;
        b=dkBQmGkyfhmWnzn/m5IwDEuR5JmNuaR4J0P36LvZUGlaMMGbvpwiUppD9zxSNdxUw+
         AHFxRJTO82UkJLIXH/pVlm3LhNQvBwEjl63s4sVRtgYBOSQIN2WoUbgl9X2NvMD0WQAt
         RzCOFNfZgBMw+ZV8I0025+hZ4qeArwsDbshSfre4SuxiyOlcMpOeu1fYqDfwloj63S6V
         y8gRxEdZ0St1BvY8VzBj3BeG/2YspTs/helBAwp/2TIwAZILVjaPxpCUGRtPxOu0Boja
         fPXZsO+8POogbhtyUKt7ZWgtDGHhyx1ZgH0y4cZIL7pj8FOXH1dNKIrwFNbnaUM6pF36
         20Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711079004; x=1711683804;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TxrwCimaFyIjWf+99S22XQ+0Yy92SbX36MYkSACyHkI=;
        b=AhFBGX3uRvPtBwz6FFPJ0fdxIlWCiZgUunk3o+LKpB0GRGvRxlikSfGiCEKN47FaXp
         jd9j66mlekSlK++1pBnwtjkl+kclQRj1zah8gM+yM2sU303vZ/0X9Ik48sxjmDNmOxaa
         FnMetR3FUB6u+FEYbjw1x3nLJqQ5nrJ8jWTwZ/X9qLeXzYXDhicYLcsPqgFimRk0mBrB
         CNHcaBYZ8TG/xkyZ7pmSKJ68akQFTV6WSsZs2Mt4qX4sb3v3jPvqYp30ovKcSWynwZTp
         VyCFeSpdm6yi+Gtn3kNrQ66pG6oeFc7qANj+9h5465Sa2B/la/VxYf8ZIEU+tWU3y4Ly
         pmuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjFg7B9vV+AWMJ16isQslJfUTS75KxoPbwDtEPjWtKjnLbYAeEun8Grzt24xBFhIzQzZFaZ4DpQsZ6youJ56aHbdKk+GrgKbDdnw==
X-Gm-Message-State: AOJu0YyrE2U/CXX5lG4WmPpgPd86iJJWKSePNRlCgEkqEhWu9bKV4of2
	Alc296kP4YoqTMf/kqBH8WHYrF3+9i6VCef659ecRll8JfIQFUBscgc4GyhaMJ4=
X-Google-Smtp-Source: AGHT+IGa+dG0fyL4hUTG3Wy0ov3wmOZJUbL2ipN3/WL93ib/M1xknmSqCPFZ/ccGlI5KyXkXVSO+Hw==
X-Received: by 2002:a05:6e02:e07:b0:368:5ee4:e5ab with SMTP id a7-20020a056e020e0700b003685ee4e5abmr1564361ilk.4.1711079004428;
        Thu, 21 Mar 2024 20:43:24 -0700 (PDT)
Received: from [100.64.0.1] ([136.226.86.189])
        by smtp.gmail.com with ESMTPSA id u8-20020a056e02080800b00366c4a8990asm329288ilm.27.2024.03.21.20.43.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Mar 2024 20:43:24 -0700 (PDT)
Message-ID: <5c8c01be-d847-48bd-aea8-bf40a2576372@sifive.com>
Date: Thu, 21 Mar 2024 22:43:22 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RISC-V] [tech-j-ext] [RFC PATCH 5/9] riscv: Split per-CPU and
 per-thread envcfg bits
Content-Language: en-US
To: Deepak Gupta <debug@rivosinc.com>, Andrew Jones <ajones@ventanamicro.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, tech-j-ext@lists.risc-v.org,
 Conor Dooley <conor@kernel.org>, kasan-dev@googlegroups.com,
 Evgenii Stepanov <eugenis@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Guo Ren <guoren@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Paul Walmsley <paul.walmsley@sifive.com>
References: <20240319215915.832127-1-samuel.holland@sifive.com>
 <20240319215915.832127-6-samuel.holland@sifive.com>
 <CAKC1njSg9-hJo6hibcM9a-=FUmMWyR39QUYqQ1uwiWhpBZQb9A@mail.gmail.com>
 <40ab1ce5-8700-4a63-b182-1e864f6c9225@sifive.com>
 <17BE5F38AFE245E5.29196@lists.riscv.org>
 <CAKC1njTnheUHs44qUE2sTdr4N=pwUiOc2H1VEMYzYM84JMwe9w@mail.gmail.com>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <CAKC1njTnheUHs44qUE2sTdr4N=pwUiOc2H1VEMYzYM84JMwe9w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Deepak,

On 2024-03-20 6:27 PM, Deepak Gupta wrote:
>>>> And instead of context switching in `_switch_to`,
>>>> In `entry.S` pick up `envcfg` from `thread_info` and write it into CSR.
>>>
>>> The immediate reason is that writing envcfg in ret_from_exception() adds cycles
>>> to every IRQ and system call exit, even though most of them will not change the
>>> envcfg value. This is especially the case when returning from an IRQ/exception
>>> back to S-mode, since envcfg has zero effect there.
>>>
>>> The CSRs that are read/written in entry.S are generally those where the value
>>> can be updated by hardware, as part of taking an exception. But envcfg never
>>> changes on its own. The kernel knows exactly when its value will change, and
>>> those places are:
>>>
>>>  1) Task switch, i.e. switch_to()
>>>  2) execve(), i.e. start_thread() or flush_thread()
>>>  3) A system call that specifically affects a feature controlled by envcfg
>>
>> Yeah I was optimizing for a single place to write instead of
>> sprinkling at multiple places.
>> But I see your argument. That's fine.
>>
> 
> Because this is RFC and we are discussing it. I thought a little bit
> more about this.

Thanks for your comments and the discussion! I know several in-progress features
depend on envcfg, so hopefully we can agree on a design acceptable to everyone.

> If we were to go with the above approach that essentially requires
> whenever a envcfg bit changes, `sync_envcfg`
> has to be called to reflect the correct value.

sync_envcfg() is only needed if the task being updated is `current`. Would it be
more acceptable if this happened inside a helper function? Something like:

static inline void envcfg_update_bits(struct task_struct *task,
				      unsigned long mask, unsigned long val)
{
	unsigned long envcfg;

	envcfg = (task->thread.envcfg & ~mask) | val;
	task->thread.envcfg = envcfg;
	if (task == current)
		csr_write(CSR_ENVCFG, this_cpu_read(riscv_cpu_envcfg) | envcfg);
}

> What if some of these features enable/disable are exposed to `ptrace`
> (gdb, etc use cases) for enable/disable.
> How will syncing work then ?

ptrace_check_attach() ensures the tracee is scheduled out while a ptrace
operation is running, so there is no need to sync anything. Any changes to
task->thread.envcfg are written to the CSR when the tracee is scheduled back in.

> I can see the reasoning behind saving some cycles during trap return.
> But `senvcfg` is not actually a user state, it
> controls the execution environment configuration for user mode. I
> think the best place for this CSR to be written is
> trap return and writing at a single place from a single image on stack
> reduces chances of bugs and errors. And allows
> `senvcfg` features to be exposed to other kernel flows (like `ptrace`)

If ptrace is accessing a process, then task->thread.envcfg is always up to date.
The only complication is that the per-CPU bits need to be ORed back in to get
the real CSR value for another process, but this again is unrelated to whether
the CSR is written in switch_to() or ret_from_exception().

> We can figure out ways on how to optimize in trap return path to avoid
> writing it if we entered and exiting on the same
> task.

Optimizing out the CSR write when the task did not switch requires knowing if
the current task's envcfg was changed during this trip to S-mode... and this
starts looking similar to sync_envcfg().

Regards,
Samuel


