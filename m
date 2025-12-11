Return-Path: <devicetree+bounces-245689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A629CB4592
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 01:29:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DB15930006F6
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 00:29:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36C8A214228;
	Thu, 11 Dec 2025 00:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="UhH4xqTJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E7731B87C0
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 00:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765412977; cv=none; b=EBK+zkEhPmxQN1v3u8dPiKwlUcFdsdMG6WNoX/FTxQ6QYBpfpfltozTAu8IPNMhlj3n7PUbu8azMP24EAndPQanThuVoPNUOoUS+PJdgarEByoF1xhgLaf3JZZYQmVEH/QGP1G1Z6GayxAtfKbwWsjeMRTY3/+ckeymVh83nAwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765412977; c=relaxed/simple;
	bh=miPtFXPjQNvxTz6ptrwfqOKKfUKaGCFr92LjoipOyMs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WyvcRsF3frtkzp6tDI2RGLlteFFUkyQeW7TgXzIovIknj4i5XQquk88kcUXxHg1Ue0dVKPs1h1/YJYrKjjDJ0hH3HQ5ZEa1oQ8o83Yb8VoWWUAIVA9C/ZvjkS7VMZjzTdjK7902GQYE9BY9W28YSGWg8ZXsDQsRlUadC+zISw9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=UhH4xqTJ; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-297dc3e299bso4217725ad.1
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 16:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1765412975; x=1766017775; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hph6c6mLrMrxrVM4J3elgrKqEusrkULz2AJc0PIUBG4=;
        b=UhH4xqTJV7OnKLxaLGTHqPjOX7o83Kw1MFwnZ4ybCSn7mWbrWDS9tlL/B7htYglQl5
         543aU/Y5vzywK8LdUoT6gTBMFlLtpGMe/xFt4xUNGOHD9qUd8zux6c5KhinYV7G4MbqN
         wM/1EHcFgSr9ZdcEdzO/ave4EMngGXISW4Jk6/k/Blw0MDTNJqHjgazxEroXB8xATTJC
         +YWTmw3iHdcKs3Fls6wiCroVsUdpOFn22ESwOpiFowDa1rijm8a+2Kw//zd1HDf8XQVE
         8jYd0Yy5io/4zxoMqI1rf89yU5va4T789oM38lkd6Dccw/9YVOoQQwRIyrmyFHNoFETE
         zxdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765412975; x=1766017775;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hph6c6mLrMrxrVM4J3elgrKqEusrkULz2AJc0PIUBG4=;
        b=jGWb7J8SG95XHpxLnh5+p795Na3nGEu9okIM3VizrS9cmRiIoV0himvJrz36MO4nIS
         CbZRMLbT1xfuJSAThXaC05klogTEl8a0roh7ymZ15nZ3fqnmjO3rETiP9m5lV+JTJSTI
         sVJeDztNAl3dpKXe9oi4IVieH8FquEvknUpNpSqvDZ8smXBWR5VwXpfkx1WLndn60s+0
         R3HMta6QWgzRmMXxjl+yqV/Fx1nWCk/1ce2D3VZAkJFsMLaJoqHRQqQ1smi0/Jve5fBw
         aFt6TSxEBEC5R+82uMOxf8CSqij7lhNs7fHM4bHRznQD5vHj/PlcOTZlq5kuIA3RpOyM
         sHzg==
X-Gm-Message-State: AOJu0YwOg9jyrDbxM8phip3Le3OOx+C83SBkHfcg9zWYcSnyv62UbojG
	QVmBo7uWMt1Wk0XGNBcAMnKzg9NwSgwxHlYZhmnTs3oJJIQ21TqZPbCmftlDVhMf+TfgMpF4cgd
	dCpPe
X-Gm-Gg: AY/fxX72vuBEZWfqSslar10IL7hh1MANgYkgK9xLHxG/U36jM2cbPXONyqzYNEHUpNN
	hgmSGpuk7U7vFqTtAl9BEcxropbh1p0KGSEepfBULXQWSvKRR8hpLr3YEXvJbEzdVXTXhmNbRqI
	/i3CQonfhFzi2GiOn/AmrMi7aMa7eXxsSm4ccaQYselNMmTM7qAepuA2nrjb7pF3iILKVTK3cw0
	VnsX94sDmpZLLEcYrTog3KTjp/ovJRvr/ZpEPqyNUHAqfgbKBiFcU9sZ6U8wn3vSwQOxY/b396K
	2RJDbVIVCoKU3AAikF70JCx8PJfdP56JF04Gv7IgSXd7Rk/NvFbQUo3O/S4U2Fwv/3Q/fuP0xSh
	WPgr6YRz1Yt6H0jTMXBPfMvW0qJEEd0WGYDF6V1w9V/xoohJ1ElSYzSQnCRx3zys0tRPfMCHp5l
	MmR2OUVhwBvYMenI5kIDe2J2pHTrVH6A==
X-Google-Smtp-Source: AGHT+IEqajP6+u4eTxzUYHfF6PVb972s/3Qa3UlhPbS0/TAJuALl6ObT5PUNXanFEPyHtJ8XnDuE7g==
X-Received: by 2002:a17:903:234c:b0:299:e041:ecf6 with SMTP id d9443c01a7336-29ec27ce2b4mr43176775ad.40.1765412974654;
        Wed, 10 Dec 2025 16:29:34 -0800 (PST)
Received: from [100.64.0.1] ([167.103.29.104])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c0c2b8e0fb4sm539653a12.25.2025.12.10.16.29.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Dec 2025 16:29:34 -0800 (PST)
Message-ID: <818ba76e-0553-459d-b956-520f23762034@sifive.com>
Date: Thu, 11 Dec 2025 09:29:28 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/22] checkpatch: Warn on page table access without
 accessors
To: "David Hildenbrand (Red Hat)" <david@kernel.org>,
 Joe Perches <joe@perches.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <pjw@kernel.org>, linux-riscv@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org
Cc: devicetree@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@kernel.org>,
 Michal Hocko <mhocko@suse.com>, Conor Dooley <conor@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>,
 Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>,
 Vlastimil Babka <vbabka@suse.cz>, "Liam R . Howlett"
 <Liam.Howlett@oracle.com>, Andy Whitcroft <apw@canonical.com>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
 <20251113014656.2605447-8-samuel.holland@sifive.com>
 <1dfa1e3566cafbe43a1d4753defef9c82ddb3b64.camel@perches.com>
 <a6e7a571-91d2-4e66-bc86-ba30f624294b@sifive.com>
 <273b638e-8251-4faf-929a-87432a48abdc@kernel.org>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <273b638e-8251-4faf-929a-87432a48abdc@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2025-11-14 4:17 AM, David Hildenbrand (Red Hat) wrote:
> On 13.11.25 03:36, Samuel Holland wrote:
>> On 2025-11-12 8:21 PM, Joe Perches wrote:
>>> On Wed, 2025-11-12 at 17:45 -0800, Samuel Holland wrote:
>>>> Architectures may have special rules for accessing the hardware page
>>>> tables (for example, atomicity/ordering requirements), so the generic MM
>>>> code provides the pXXp_get() and set_pXX() hooks for architectures to
>>>> implement. These accessor functions are often omitted where a raw
>>>> pointer dereference is believed to be safe (i.e. race-free). However,
>>>> RISC-V needs to use these hooks to rewrite the page table values at
>>>> read/write time on some platforms. A raw pointer dereference will no
>>>> longer produce the correct value on those platforms, so the generic code
>>>> must always use the accessor functions.
>>> []
>>>> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
>>> []
>>>> @@ -7721,6 +7721,13 @@ sub process {
>>>>                   ERROR("MISSING_SENTINEL", "missing sentinel in ID
>>>> array\n" . "$here\n$stat\n");
>>>>               }
>>>>           }
>>>> +
>>>> +# check for raw dereferences of hardware page table pointers
>>>> +        if ($realfile !~ m@^arch/@ &&
>>>> +            $line =~ /(?<!pte_t |p[mu4g]d_t |izeof\()\*\(?(vmf(\.|->))?
>>>> (pte|p[mu4g]d)p?\b/) {
>>>> +            WARN("PAGE_TABLE_ACCESSORS",
>>>> +                 "Use $3p_get()/set_$3() instead of dereferencing page
>>>> table pointers\n" . $herecurr);
>>>> +        }
>>>>       }
>>>
>>> Seems like a lot of matches
>>>
>>> $ git grep -P '(?<!pte_t |p[mu4g]d_t |izeof\()\*\(?(vmf(\.|->))?(pte|
>>> p[mu4g]d)p?\b' | \
>>>    grep -v '^arch/' | wc -l
>>> 766
> 
> That is indeed concerning.
> 
> I recall that we discussed an alternative approach with Ryan in the past: I
> don't remember all the details, but essentially it was about using separate
> types, such that dereferencing would not get you the type the other functions
> would be expecting. Such that the compiler will bark when you try to dereference.

Even if some functions a new incompatible pointer type, don't we still have the
problem that neither type would be safe to dereference?

A similar option to a new type would be to add a sparse annotation to the
pointers that reference hardware page tables, similar to __user. I have
prototyped a coccinelle script to add this annotation, and the sparse checking
works. But I don't have the coccinelle expertise to automate the whole thing, so
there's a lot of manual cleanup required. And this requires touching all
architectures at once to avoid introducing erroneous sparse warnings. So I did
not include this for v3 because it is quite a lot of churn. Is this something I
should try to fully implement for v4?

Regards,
Samuel


