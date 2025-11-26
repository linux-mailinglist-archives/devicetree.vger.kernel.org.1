Return-Path: <devicetree+bounces-242394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8C1C89E57
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 14:03:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 201503A5E75
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 13:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE1A61E5B64;
	Wed, 26 Nov 2025 13:03:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB6CB1B4223;
	Wed, 26 Nov 2025 13:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764162232; cv=none; b=rrPXmNqFX4g4+pq0D7m5wESW5YsBnt6Eahq+KRpqQZ+V7UrxxPRHT2Qrbpxaz5Owu7eja++aH0uNG7FA8THwo3Kgq1PivEpySm/WT9j+jUalMuulaTqAomLemSKqMqv5gAzeFOL835oZGq7L1SICGTTP6BYyKQwhmIFl37r3U9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764162232; c=relaxed/simple;
	bh=GJxg+mOomDF6t+bzwy7AaCjkDWkZiNI/cJ3AyC/vl7I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IgiJFb1kz/RC3aypwyJWWOu4LPwk/SeD/DCsB2m8e5aA39jdzdiJwpJAF9FSWX7mpcbf283G1MgsQ5v1rLsgIuLpbtgywgbqYpykhhFvzoojleTRF0H+f1h3BW63SdhnWGVMtqJ5iJr3OZTdcTIsa7ycP1UOvj67m1M+oa0bXG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5553A168F;
	Wed, 26 Nov 2025 05:03:39 -0800 (PST)
Received: from [10.1.33.153] (unknown [10.1.33.153])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1FDE83F66E;
	Wed, 26 Nov 2025 05:03:44 -0800 (PST)
Message-ID: <c0818f5b-b8a1-4730-aa1d-df0f547a3d47@arm.com>
Date: Wed, 26 Nov 2025 13:03:42 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/22] mm: Always use page table accessor functions
Content-Language: en-GB
To: "David Hildenbrand (Red Hat)" <david@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: Samuel Holland <samuel.holland@sifive.com>,
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
From: Ryan Roberts <ryan.roberts@arm.com>
In-Reply-To: <71123d7a-641b-41df-b959-88e6c2a3a441@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 26/11/2025 12:35, David Hildenbrand (Red Hat) wrote:
> On 11/26/25 13:27, Lorenzo Stoakes wrote:
>> On Wed, Nov 26, 2025 at 01:19:00PM +0100, David Hildenbrand (Red Hat) wrote:
>>> On 11/26/25 13:16, David Hildenbrand (Red Hat) wrote:
>>>> On 11/26/25 12:09, Ryan Roberts wrote:
>>>>> On 13/11/2025 01:45, Samuel Holland wrote:
>>>>>> Some platforms need to fix up the values when reading or writing page
>>>>>> tables. Because of this, the accessors must always be used; it is not
>>>>>> valid to simply dereference a pXX_t pointer.
>>>>>>
>>>>>> Fix all of the instances of this pattern in generic code, mostly by
>>>>>> applying the below coccinelle semantic patch, repeated for each page
>>>>>> table level. Some additional fixes were applied manually, mostly to
>>>>>> macros where type information is unavailable.
>>>>>>
>>>>>> In a few places, a `pte_t *` or `pmd_t *` is actually a pointer to a PTE
>>>>>> or PMDE value stored on the stack, not a pointer to a page table. In
>>>>>> those cases, it is not appropriate to use the accessors, because the
>>>>>> value is not globally visible, and any transformation from pXXp_get()
>>>>>> has already been applied. Those places are marked by naming the pointer
>>>>>> `ptentp` or `pmdvalp`, as opposed to `ptep` or `pmdp`.
>>>>>>
>>>>>> @@
>>>>>> pte_t *P;
>>>>>> expression E;
>>>>>> expression I;
>>>>>> @@
>>>>>> - P[I] = E
>>>>>> + set_pte(P + I, E)
>>>>>>
>>>>>> @@
>>>>>> pte_t *P;
>>>>>> expression E;
>>>>>> @@
>>>>>> (
>>>>>> - WRITE_ONCE(*P, E)
>>>>>> + set_pte(P, E)
>>>>>> |
>>>>>> - *P = E
>>>>>> + set_pte(P, E)
>>>>>> )
>>>>>
>>>>> There should absolutely never be any instances of core code directly
>>>>> setting an
>>>>> entry at any level. This *must* always go via the arch code helpers. Did you
>>>>> find any instances of this? If so, I would consider these bugs and suggest
>>>>> sending as a separate bugfix patch. Bad things could happen on arm64
>>>>> because we
>>>>> may need to break a contiguous mapping, which would not happen if the value is
>>>>> set directly.
>>>>>
>>>>>>
>>>>>> @@
>>>>>> pte_t *P;
>>>>>> expression I;
>>>>>> @@
>>>>>> (
>>>>>>      &P[I]
>>>>>> |
>>>>>> - READ_ONCE(P[I])
>>>>>> + ptep_get(P + I)
>>>>>> |
>>>>>> - P[I]
>>>>>> + ptep_get(P + I)
>>>>>> )
>>>>>>
>>>>>> @@
>>>>>> pte_t *P;
>>>>>> @@
>>>>>> (
>>>>>> - READ_ONCE(*P)
>>>>>> + ptep_get(P)
>>>>>> |
>>>>>> - *P
>>>>>> + ptep_get(P)
>>>>>> )
>>>>>
>>>>> For reading the *PTE*, conversion over to ptep_get() should have already been
>>>>> done (I did this a few years back when implementing support for arm64
>>>>> contiguous
>>>>> mappings). If you find any cases where direct dereference or READ_ONCE() is
>>>>> being done in generic code for PTE, then that's a bug and should also be
>>>>> sent as
>>>>> a separate patch.
>>>>>
>>>>> FYI, my experience was that Coccinelle didn't find everything when I was
>>>>> converting to ptep_get() - although it could have been that my Cochinelle
>>>>> skills
>>>>> were not up to scratch! I ended up using an additional method where I did a
>>>>> find/replace to convert "pte_t *" to "ptep_handle_t" and declared pte_handle_t
>>>>> as a void* which causes a compiler error on dereference. Then in a few key
>>>>> places I did a manual case from pte_handle_t to (pte_t *) and compiled
>>>>> allyesconfig.
>>>>>
>>>>> I'm assuming the above Cocchinelle template was also used for pmd_t, pud_t,
>>>>> p4d_t and pgd_t?
>>>>>
>>>>>>
>>>>>> Additionally, the following semantic patch was used to convert PMD and
>>>>>> PUD references inside struct vm_fault:
>>>>>>
>>>>>> @@
>>>>>> struct vm_fault vmf;
>>>>>> @@
>>>>>> (
>>>>>> - *vmf.pmd
>>>>>> + pmdp_get(vmf.pmd)
>>>>>> |
>>>>>> - *vmf.pud
>>>>>> + pudp_get(vmf.pud)
>>>>>> )
>>>>>>
>>>>>> @@
>>>>>> struct vm_fault *vmf;
>>>>>> @@
>>>>>> (
>>>>>> - *vmf->pmd
>>>>>> + pmdp_get(vmf->pmd)
>>>>>> |
>>>>>> - *vmf->pud
>>>>>> + pudp_get(vmf->pud)
>>>>>> )
>>>>>>
>>>>>>
>>>>>> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
>>>>>> ---
>>>>>> This commit covers some of the same changes as an existing series from
>>>>>> Anshuman Khandual[1]. Unlike that series, this commit is a purely
>>>>>> mechanical conversion to demonstrate the RISC-V changes, so it does not
>>>>>> insert local variables to avoid redundant calls to the accessors. A
>>>>>> manual conversion like in that series could improve performance.
>>>>>>
>>>>>> [1]: https://lore.kernel.org/linux-mm/20240917073117.1531207-1-
>>>>>> anshuman.khandual@arm.com/
>>>>>
>>>>> Hi,
>>>>>
>>>>> I've just come across this patch and wanted to mention that we could also
>>>>> benefit from this improved absraction for some features we are looking at for
>>>>> arm64. As you mention, Anshuman had a go but hit some roadblocks.
>>>>>
>>>>> The main issue is that the compiler was unable to optimize away the
>>>>> READ_ONCE()s
>>>>> for the case where certain levels of the pgtable are folded. But it can
>>>>> optimize
>>>>> the plain C dereferences. There were complaints the the generated code for arm
>>>>> (32) and powerpc was significantly impacted due to having many more
>>>>> (redundant)
>>>>> loads.
>>>>>
>>>>
>>>> We do have mm_pmd_folded()/p4d_folded() etc, could that help to sort
>>>> this out internally?
>>>>
>>>
>>> Just stumbled over the reply from Christope:
>>>
>>> https://lkml.kernel.org/r/0019d675-ce3d-4a5c-89ed-f126c45145c9@kernel.org
>>>
>>> And wonder if we could handle that somehow directly in the pgdp_get() etc.

I certainly don't like the suggestion of doing the is_folded() test outside the
helper, but if we can push that logic down into pXdp_get() that would be pretty
neat. Anshuman and I did briefly play with the idea of doing a C dereference if
the level is folded and a READ_ONCE() otherwise, all inside each pXdp_get()
helper. Although we never proved it to be correct. I struggle with the model for
folding. Do you want to optimize out all-but-the-highest level's access or
all-but-the-lowest level's access? Makes my head hurt...


>>
>> I find that kind of gross to be honest. Isn't the whole point of folding that we
>> don't have to think about it...

Agreed, but if we can put it inside the default helper implementation, that
solves it, I think? An arch has to be careful if they are overriding the
defaults, but it's still well contained.

> 
> If we could adjust generic pgdp_get() and friends to not do a READ_ONCE() once
> folded we might not have to think about that in the callers.
> 
> Just an idea, though, not sure if that would fly the way I envision it.



