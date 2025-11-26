Return-Path: <devicetree+bounces-242445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F74C8A4B0
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 15:22:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C7F22352E76
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 14:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8517B2F6582;
	Wed, 26 Nov 2025 14:22:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5CCC1E1DE9;
	Wed, 26 Nov 2025 14:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764166941; cv=none; b=TCrtA6yL+pQZOthzx9diYAuL59X5PaS0w+UitwBo35VQ6U05bvEvi38AMcjk/lQseC9Evf+sCVHGz23WuF6gpif9eGjXmshiaFNtVxsOs2yTDJy5OFjpVRrMO7P0CJhRMkSEkmrfMpqC0NtR+Yznp+0RpGXaP52S1f/dZHgR240=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764166941; c=relaxed/simple;
	bh=mtEjtPFIsDY94eINCxO5TyctHItxLPCeUAUa9eInnyM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NCx6GVXX+00yFVfiY/jCCkRmFN77Khqcehjm7POQks4IKHeH7wgDT+hBSPmWYQuYzWxltwm6OfbjLQheY6wBauwZSp2mhY2WdqnEAhmEq+HLeIuYPGlGG22L1wOcs6Ulrc9tZ6g3K6nYMGzzWo1hv1GV6k/LyPgwXeCqNBJc5F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 51E64168F;
	Wed, 26 Nov 2025 06:22:10 -0800 (PST)
Received: from [10.1.33.153] (unknown [10.1.33.153])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EFFEE3F73B;
	Wed, 26 Nov 2025 06:22:14 -0800 (PST)
Message-ID: <ee5f5da3-8c6b-4381-aee8-b0fab56cbf83@arm.com>
Date: Wed, 26 Nov 2025 14:22:13 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/22] mm: Always use page table accessor functions
Content-Language: en-GB
To: Wei Yang <richard.weiyang@gmail.com>
Cc: "David Hildenbrand (Red Hat)" <david@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Samuel Holland <samuel.holland@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>,
 linux-riscv@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-mm@kvack.org, devicetree@vger.kernel.org,
 Suren Baghdasaryan <surenb@google.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@kernel.org>, Michal Hocko <mhocko@suse.com>,
 Conor Dooley <conor@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Alexandre Ghiti <alex@ghiti.fr>, Emil Renner Berthing <kernel@esmil.dk>,
 Rob Herring <robh+dt@kernel.org>, Vlastimil Babka <vbabka@suse.cz>,
 "Liam R . Howlett" <Liam.Howlett@oracle.com>,
 Julia Lawall <Julia.Lawall@inria.fr>, Nicolas Palix <nicolas.palix@imag.fr>,
 Anshuman Khandual <anshuman.khandual@arm.com>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
 <20251113014656.2605447-7-samuel.holland@sifive.com>
 <02e3b3bd-ae6a-4db4-b4a1-8cbc1bc0a1c8@arm.com>
 <bc88d132-452a-42a1-9ee5-5407334d8aac@kernel.org>
 <df7d10ba-bb42-4ea1-8c5b-5db88a18eccb@kernel.org>
 <6bdf2b89-7768-4b90-b5e7-ff174196ea7b@lucifer.local>
 <71123d7a-641b-41df-b959-88e6c2a3a441@kernel.org>
 <c0818f5b-b8a1-4730-aa1d-df0f547a3d47@arm.com>
 <20251126134726.yrya5xxayfcde3kl@master>
From: Ryan Roberts <ryan.roberts@arm.com>
In-Reply-To: <20251126134726.yrya5xxayfcde3kl@master>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/11/2025 13:47, Wei Yang wrote:
> On Wed, Nov 26, 2025 at 01:03:42PM +0000, Ryan Roberts wrote:
>> On 26/11/2025 12:35, David Hildenbrand (Red Hat) wrote:
> [...]
>>>>>>> Hi,
>>>>>>>
>>>>>>> I've just come across this patch and wanted to mention that we could also
>>>>>>> benefit from this improved absraction for some features we are looking at for
>>>>>>> arm64. As you mention, Anshuman had a go but hit some roadblocks.
>>>>>>>
>>>>>>> The main issue is that the compiler was unable to optimize away the
>>>>>>> READ_ONCE()s
>>>>>>> for the case where certain levels of the pgtable are folded. But it can
>>>>>>> optimize
>>>>>>> the plain C dereferences. There were complaints the the generated code for arm
>>>>>>> (32) and powerpc was significantly impacted due to having many more
>>>>>>> (redundant)
>>>>>>> loads.
>>>>>>>
>>>>>>
>>>>>> We do have mm_pmd_folded()/p4d_folded() etc, could that help to sort
>>>>>> this out internally?
>>>>>>
>>>>>
>>>>> Just stumbled over the reply from Christope:
>>>>>
>>>>> https://lkml.kernel.org/r/0019d675-ce3d-4a5c-89ed-f126c45145c9@kernel.org
>>>>>
>>>>> And wonder if we could handle that somehow directly in the pgdp_get() etc.
>>
>> I certainly don't like the suggestion of doing the is_folded() test outside the
>> helper, but if we can push that logic down into pXdp_get() that would be pretty
>> neat. Anshuman and I did briefly play with the idea of doing a C dereference if
>> the level is folded and a READ_ONCE() otherwise, all inside each pXdp_get()
>> helper. Although we never proved it to be correct. I struggle with the model for
>> folding. Do you want to optimize out all-but-the-highest level's access or
>> all-but-the-lowest level's access? Makes my head hurt...
>>
>>
> 
> You mean sth like:
> 
> static inline pmd_t pmdp_get(pmd_t *pmdp)
> {
> #ifdef __PAGETABLE_PMD_FOLDED
> 	return *pmdp;
> #else
> 	return READ_ONCE(*pmdp);
> #endif
> }

Yes. But I'm not convinced it's correct.

I *think* (but please correct me if I'm wrong) if the PMD is folded, the PUD and
P4D must also be folded, and you effectively have a 2 level pgtable consisting
of the PGD table and the PTE table. p4dp_get(), pudp_get() and pmdp_get() are
all effectively duplicating the load of the pgd entry? So assuming pgdp_get()
was already called and used READ_ONCE(), you might hope the compiler will just
drop the other loads and just use the value returned by READ_ONCE(). But I doubt
there is any guarantee of that and you might be in a situation where pgdp_get()
never even got called (perhaps you already have the pmd pointer).

So I don't think it works.

Probably we either have to live with the extra loads or have 2 types of helper.

> 
>>>>
>>>> I find that kind of gross to be honest. Isn't the whole point of folding that we
>>>> don't have to think about it...
>>
>> Agreed, but if we can put it inside the default helper implementation, that
>> solves it, I think? An arch has to be careful if they are overriding the
>> defaults, but it's still well contained.
>>
>>>
>>> If we could adjust generic pgdp_get() and friends to not do a READ_ONCE() once
>>> folded we might not have to think about that in the callers.
>>>
>>> Just an idea, though, not sure if that would fly the way I envision it.
>>
>>
> 


