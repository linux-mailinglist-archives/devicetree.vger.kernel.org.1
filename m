Return-Path: <devicetree+bounces-170837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3151A9C7F8
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 13:43:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E2751172202
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18FCB2459DC;
	Fri, 25 Apr 2025 11:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="nH89DDly"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A902459D6
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 11:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745581370; cv=none; b=luV3220N4VM+505Cl7j2bHR/1jDQ0B8djor/XBYlC4saxt5qBwYiUypBeFLNGRgw/RblJ2NjFJ0tSHg0kIIr4kVJ/sQJURpWHloOJ8xAdAfWaToo8QaEmEa+YRt3eA/2B2MwyXMYYjEZDQeYrwSvBfpJNEjocvOTm6luSzhmju4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745581370; c=relaxed/simple;
	bh=3Ji49cbT2gfSvIq8CYcUaaNLPtr+CzcaLLKg5QrQiT8=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=Bw15Ga/fGkJbqTI01naFUxA7mAypCWbOcFMCtyGURgRTHKVdncpo3Ur1yOKDk3OGgdLUy0ucNaEo2qhxIzbjVyag09yH4fgFyw7+YUgm6W/WG+sRPh3kU032DT1uFz3bh+zznlKNWccEZCTlG1JKCLApgQlS0+bLpuxgsqZNfBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=nH89DDly; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43f106a3591so2062585e9.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 04:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1745581366; x=1746186166; darn=vger.kernel.org;
        h=in-reply-to:references:from:to:cc:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RyVQraiD8choursJseiRmBXZoIZWNTeRkqd4Ai9q43w=;
        b=nH89DDlyI9q4NUmPG6uPGSIMY5PE3mHWQaGnwuDjzhIpFtGqZltNEeVSOMeVa3SRM2
         g7xOdBFxjtVrckTTvBVgyYJXhwJ7XkUHp0bliIaSFY0SEbKl33L40+Gx5gZyqll0Uj1k
         W8reo0a4FE8SuyO746giZhk3U2tI6Ay2Pxo4hiF9gI0DFyu0jpwx8keDmtDboBcsNqxr
         lGAbfEV/ym6CSFmy1ogXzThNGMSAbhCnMVcFU9918rAMWsxa5xB6pSR52vYxT7BrmXAv
         yiguZdBGYAB3ll3wElZKKLKXP+sx59peEi1bnf1Nu0WTq43Q0tJl0R+s2n9MAM4rhMBZ
         +UwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745581366; x=1746186166;
        h=in-reply-to:references:from:to:cc:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RyVQraiD8choursJseiRmBXZoIZWNTeRkqd4Ai9q43w=;
        b=dgiIKU1YrC4rWJCI+goSLMsHbUTB/BUC65t7ns3I4HqhmQsiQHaEcEqGV2z0d6WGlL
         VuguDsfpYR0zWnGAZVSarmhnhV8/7M3SVmig7DJ0SlCcypvqdTINvP2OvmQE7i3jOQGN
         vSQWNIMmnFVgi9giWeopUYJz4f4BRz/rpsz8Q7mrUUKhBLJZiEzoyrNgKmYI/1pvvS3g
         bLJlJQXlwbhmVUlev0nOC1VVpq68IRsdAQPPp58yQKN7Fg6pWyJoTwfa53uKfhhHCqgH
         xooznPGaBzLE+RuEoo7p/z3sykKj93keP6fBDqtDK7K7GcQ/wKmS+j2btArc9dXhHmQi
         h5HA==
X-Forwarded-Encrypted: i=1; AJvYcCV9WaIgMM3NHhFJH9Ok/zbwQHWGI/2yMf/bevYyq78p5pG65Wto65JuOPuyMHRFE5v8lroOngFeGpTR@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9BW88jjWkzOZjJGYB2ZYdO1iK8szxUJn+kvASREdzwLPksEdr
	ZCV0BqtLhrE8Aamiq69psXkhVCstG6habBQxh3FO8vTb7VlCKbws9tNg504s/Kk=
X-Gm-Gg: ASbGncv3tFaej7DMp9RDRjWLzKwj2942Y2ofyQSbDGwDrkew5KZiZwUCsobGroOWoNJ
	5/GTIdzLxVLytuvigrYSufI+FrVOfV4X2PFUwAMxwGg9R2KUxVwxFMOJjojZb+qUsYfOhNTaWma
	3fHp8DzajI7Ei7Xq3vpeGtYVZdgnph7LTwR0VQH8rDRg3hNee95o2zqtBycYDae3SWBswEPAgap
	rFnwqh5TDo7zjXex8SMCI5/YZvLT3rC6K6KvyyZQKHdCfxdcj0LEm/VlqFz1wDxnI53f/yE5KnT
	K5D9ImNdeQaSylcpPJXQKybPMFotgYTBqbLBBdhwPgR+ZOHi
X-Google-Smtp-Source: AGHT+IHSwXKm2b0KR1kACN9BXrADFLHJi8d2f8OL0xZ1T0iAnfUkAWtBlFVbUnZ2xOUkCinbSJhTAg==
X-Received: by 2002:a05:600c:1d01:b0:43d:fa5e:50e6 with SMTP id 5b1f17b1804b1-440a66c250dmr6293955e9.9.1745581365815;
        Fri, 25 Apr 2025 04:42:45 -0700 (PDT)
Received: from localhost ([2a02:8308:a00c:e200:84a3:2b0a:bdb8:ce08])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073e4698csm2104230f8f.62.2025.04.25.04.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 04:42:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 25 Apr 2025 13:42:44 +0200
Message-Id: <D9FOY8JACYTH.1FU7ZTEHFC5NI@ventanamicro.com>
Subject: Re: [PATCH v12 12/28] riscv: Implements arch agnostic shadow stack
 prctls
Cc: "Thomas Gleixner" <tglx@linutronix.de>, "Ingo Molnar"
 <mingo@redhat.com>, "Borislav Petkov" <bp@alien8.de>, "Dave Hansen"
 <dave.hansen@linux.intel.com>, <x86@kernel.org>, "H. Peter Anvin"
 <hpa@zytor.com>, "Andrew Morton" <akpm@linux-foundation.org>, "Liam R.
 Howlett" <Liam.Howlett@oracle.com>, "Vlastimil Babka" <vbabka@suse.cz>,
 "Lorenzo Stoakes" <lorenzo.stoakes@oracle.com>, "Paul Walmsley"
 <paul.walmsley@sifive.com>, "Palmer Dabbelt" <palmer@dabbelt.com>, "Albert
 Ou" <aou@eecs.berkeley.edu>, "Conor Dooley" <conor@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Arnd Bergmann" <arnd@arndb.de>, "Christian Brauner" <brauner@kernel.org>,
 "Peter Zijlstra" <peterz@infradead.org>, "Oleg Nesterov" <oleg@redhat.com>,
 "Eric Biederman" <ebiederm@xmission.com>, "Kees Cook" <kees@kernel.org>,
 "Jonathan Corbet" <corbet@lwn.net>, "Shuah Khan" <shuah@kernel.org>, "Jann
 Horn" <jannh@google.com>, "Conor Dooley" <conor+dt@kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-fsdevel@vger.kernel.org>,
 <linux-mm@kvack.org>, <linux-riscv@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-arch@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <linux-kselftest@vger.kernel.org>,
 <alistair.francis@wdc.com>, <richard.henderson@linaro.org>,
 <jim.shu@sifive.com>, <andybnac@gmail.com>, <kito.cheng@sifive.com>,
 <charlie@rivosinc.com>, <atishp@rivosinc.com>, <evan@rivosinc.com>,
 <cleger@rivosinc.com>, <alexghiti@rivosinc.com>, <samitolvanen@google.com>,
 <broonie@kernel.org>, <rick.p.edgecombe@intel.com>, "linux-riscv"
 <linux-riscv-bounces@lists.infradead.org>
To: "Deepak Gupta" <debug@rivosinc.com>
From: =?utf-8?q?Radim_Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@ventanamicro.com>
References: <20250314-v5_user_cfi_series-v12-0-e51202b53138@rivosinc.com>
 <20250314-v5_user_cfi_series-v12-12-e51202b53138@rivosinc.com>
 <D92V2NPNZYV0.136MJ2HOK48HE@ventanamicro.com>
 <aAnBmexbL4XmVxQk@debug.ba.rivosinc.com>
 <D9EWR3RQK0FD.3GF55KNS53YSR@ventanamicro.com>
 <aAp_87-Xr6gn_hD7@debug.ba.rivosinc.com>
In-Reply-To: <aAp_87-Xr6gn_hD7@debug.ba.rivosinc.com>

2025-04-24T11:16:19-07:00, Deepak Gupta <debug@rivosinc.com>:
> On Thu, Apr 24, 2025 at 03:36:54PM +0200, Radim Kr=C4=8Dm=C3=A1=C5=99 wro=
te:
>>2025-04-23T21:44:09-07:00, Deepak Gupta <debug@rivosinc.com>:
>>> On Thu, Apr 10, 2025 at 11:45:58AM +0200, Radim Kr=C4=8Dm=C3=A1=C5=99 w=
rote:
>>>>2025-03-14T14:39:31-07:00, Deepak Gupta <debug@rivosinc.com>:
>>>>> diff --git a/arch/riscv/include/asm/usercfi.h b/arch/riscv/include/as=
m/usercfi.h
>>>>> @@ -14,7 +15,8 @@ struct kernel_clone_args;
>>>>>  struct cfi_status {
>>>>>  	unsigned long ubcfi_en : 1; /* Enable for backward cfi. */
>>>>> -	unsigned long rsvd : ((sizeof(unsigned long) * 8) - 1);
>>>>> +	unsigned long ubcfi_locked : 1;
>>>>> +	unsigned long rsvd : ((sizeof(unsigned long) * 8) - 2);
>>>>
>>>>The rsvd field shouldn't be necessary as the container for the bitfield
>>>>is 'unsigned long' sized.
>>>>
>>>>Why don't we use bools here, though?
>>>>It might produce a better binary and we're not hurting for struct size.
>>>
>>> If you remember one of the previous patch discussion, this goes into
>>> `thread_info` Don't want to bloat it. Even if we end shoving into task_=
struct,
>>> don't want to bloat that either. I can just convert it into bitmask if
>>> bitfields are an eyesore here.
>>
>>  "unsigned long rsvd : ((sizeof(unsigned long) * 8) - 2);"
>>
>>is an eyesore that defines exactly the same as the two lines alone
>>
>>  unsigned long ubcfi_en : 1;
>>  unsigned long ubcfi_locked : 1;
>>
>>That one should be removed.
>>
>>If we have only 4 bits in 4/8 bytes, then bitfields do generate worse
>>code than 4 bools and a 0/4 byte hole.  The struct size stays the same.
>>
>>I don't care much about the switch to bools, though, because this code
>>is not called often.
>
> I'll remove the bitfields, have single `unsigned long cfi_control_state`
> And do `#define RISCV_UBCFI_EN 1` and so on.

I might have seemed too much against the bitfieds, sorry.  I am against
the rsvd fields, because it is a pointless cognitive overhead and even
this series already had a bug in them.

#defines should generate the same code as bitfields (worse than bools),
so the source code is really a matter of personal preference.
(I do prefer bitfields.)

>>>>> @@ -262,3 +292,83 @@ void shstk_release(struct task_struct *tsk)
>>>>> +int arch_lock_shadow_stack_status(struct task_struct *task,
>>>>> +				  unsigned long arg)
>>>>> +{
>>>>> +	/* If shtstk not supported or not enabled on task, nothing to lock =
here */
>>>>> +	if (!cpu_supports_shadow_stack() ||
>>>>> +	    !is_shstk_enabled(task) || arg !=3D 0)
>>>>> +		return -EINVAL;
>>>>
>>>>The task might want to prevent shadow stack from being enabled?
>>>
>>> But Why would it want to do that? Task can simply not issue the prctl. =
There
>>> are glibc tunables as well using which it can be disabled.
>>
>>The task might do it as some last resort to prevent a buggy code from
>>enabling shadow stacks that would just crash.  Or whatever complicated
>>reason userspace can think of.
>>
>>It's more the other way around.  I wonder why we're removing this option
>>when we don't really care what userspace does to itself.
>>I think it's complicating the kernel without an obvious gain.
>
> It just feels wierd. There isn't anything like this for other features li=
t-up
> via envcfg. Does hwprobe allow this on per-task basis? I'll look into it.

I think PMM doesn't allow to lock and the rest don't seem configurable
from userspace.

It's not that important and we hopefully won't be breaking any userspace
if we decided to allow it later, so I'm fine with this version.

