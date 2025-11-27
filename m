Return-Path: <devicetree+bounces-242805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBBFC8F4BC
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 16:34:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 67FF94E5261
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 15:34:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E89733358C8;
	Thu, 27 Nov 2025 15:32:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CF6F33468C;
	Thu, 27 Nov 2025 15:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764257562; cv=none; b=niFhQcvCNjggmrV4DF+b7A5wzaanN/1961W6Q9wACKj0ZNlvAjfvId4q7cx5nyro1g11kmo2Ft08uXQNn3dFLA79TzHNoIOE/HnEF46n77vt1dqHaHJ1dgz6T+VuxwEJQcx6VEZC+lZNItkzgf3jTzhUrAR+3s+oq9H1YQw3mUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764257562; c=relaxed/simple;
	bh=QKvL/H0hrRSEDLplGK43+SkdORT6UW8johb9aAxh1o8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ruBkDOB+hul5uMgrIDPnsyuXCvz7y+EFRDuvkJhwSONB9fnkImrIkAOSuIchPGsoiExZ9wIEU3aAauMSAOC0MaZfGgEygm/ZNLtInW+Pyaj6h3xjt0pu73dbLCNfIOwlaEv+xKt2qluDKJrB6dzEmQSoaYn+jG1cXwq/ghLLugc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 36AA81063;
	Thu, 27 Nov 2025 07:32:32 -0800 (PST)
Received: from [10.57.87.167] (unknown [10.57.87.167])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F26F43F66E;
	Thu, 27 Nov 2025 07:32:35 -0800 (PST)
Message-ID: <f1932547-0fc6-4dbd-868c-0b0b34429a33@arm.com>
Date: Thu, 27 Nov 2025 15:32:34 +0000
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
Cc: Wei Yang <richard.weiyang@gmail.com>,
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
References: <bc88d132-452a-42a1-9ee5-5407334d8aac@kernel.org>
 <df7d10ba-bb42-4ea1-8c5b-5db88a18eccb@kernel.org>
 <6bdf2b89-7768-4b90-b5e7-ff174196ea7b@lucifer.local>
 <71123d7a-641b-41df-b959-88e6c2a3a441@kernel.org>
 <c0818f5b-b8a1-4730-aa1d-df0f547a3d47@arm.com>
 <20251126134726.yrya5xxayfcde3kl@master>
 <ee5f5da3-8c6b-4381-aee8-b0fab56cbf83@arm.com>
 <6b966403-91e0-4f06-86a9-a4f7780b9557@kernel.org>
 <ab39d448-aa1c-4c93-8e2b-5d97a9c76af5@lucifer.local>
 <1ca9f99f-6266-47ca-8c94-1a9b9aaa717f@kernel.org>
 <37973e21-e8f4-4603-b93d-4e0b1b2499fa@lucifer.local>
 <a1d25bde-3ab6-46b5-a957-db80da7e737b@kernel.org>
 <4505a93b-2bac-4ce1-8971-4c31f1ce1362@arm.com>
 <150ffcb7-2df2-4f3a-a12e-9807f13c6ab9@arm.com>
 <b2fbe58e-f47b-4a76-879b-fd38a915c2ce@kernel.org>
 <bcd2a49d-a42f-41e8-9f64-4fd24fc862c7@kernel.org>
 <bd4d746b-8929-4fd2-bd59-70654e794ee6@kernel.org>
From: Ryan Roberts <ryan.roberts@arm.com>
In-Reply-To: <bd4d746b-8929-4fd2-bd59-70654e794ee6@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 27/11/2025 07:31, David Hildenbrand (Red Hat) wrote:
> On 11/27/25 08:14, David Hildenbrand (Red Hat) wrote:
>> On 11/26/25 21:31, David Hildenbrand (Red Hat) wrote:
>>> On 11/26/25 17:34, Ryan Roberts wrote:
>>>> On 26/11/2025 16:07, Ryan Roberts wrote:
>>>>> On 26/11/2025 15:12, David Hildenbrand (Red Hat) wrote:
>>>>>> On 11/26/25 16:08, Lorenzo Stoakes wrote:
>>>>>>> On Wed, Nov 26, 2025 at 03:56:13PM +0100, David Hildenbrand (Red Hat) wrote:
>>>>>>>> On 11/26/25 15:52, Lorenzo Stoakes wrote:
>>>>>>>>>
>>>>>>>>> Would the pmdp_get() never get invoked then? Or otherwise wouldn't that
>>>>>>>>> end up
>>>>>>>>> requiring a READ_ONCE() further up the stack?
>>>>>>>>
>>>>>>>> See my other reply, I think the pmdp_get() is required because all pud_*
>>>>>>>> functions are just simple stubs.
>>>>>>>
>>>>>>> OK, thought you were saying we should push further down the stack? Or up
>>>>>>> depending on how you view these things :P as in READ_ONCE at leaf?
>>>>>>
>>>>>> I think at leaf because I think the previous ones should essentially be only
>>>>>> used by stubs.
>>>>>>
>>>>>> But I haven't fully digested how this is all working. Or supposed to work.
>>>>>>
>>>>>> I'm trying to chew through the arch/arm/include/asm/pgtable-2level.h
>>>>>> example to
>>>>>> see if I can make sense of it,
>>>>>
>>>>> I wonder if we can think about this slightly differently;
>>>>>
>>>>> READ_ONCE() has two important properties:
>>>>>
>>>>>     - It guarrantees that a load will be issued, *even if output is unused*
>>>>>     - It guarrantees that the read will be single-copy-atomic (no tearing)
>>>>>
>>>>> I think for the existing places where READ_ONCE() is used for pagetable
>>>>> reads we
>>>>> only care about:
>>>>>
>>>>>     - It guarrantees that a load will be issued, *if output is used*
>>>>>     - It guarrantees that the read will be single-copy-atomic (no tearing)
>>>>>
>>>>> I think if we can weaken to the "if output is used" property, then the
>>>>> compiler
>>>>> will optimize out all the unneccessary reads.
>>>>>
>>>>> AIUI, a C dereference provides neither of the guarrantees so that's no good.
>>>>>
>>>>> What about non-volatile asm? I'm told (thought need to verify) that for
>>>>> non-volatile asm, the compiler will emit it if the output is used and
>>>>> remove it
>>>>> otherwise. So if the asm contains the required single-copy-atomic, perhaps we
>>>>> are in business?
>>>>>
>>>>> So we would need a new READ_SCA() macro that could default to READ_ONCE()
>>>>> (which
>>>>> is stronger) and arches could opt in to providing a weaker asm version.
>>>>> Then the
>>>>> default pXdp_get() could be READ_SCA(). And this should work for all cases.
>>>>>
>>>>> I think.
>>>>
>>>> I'm not sure this works. It looks like the compiler is free to move non-
>>>> volatile
>>>> asm sections which might be problematic for places where we are currently using
>>>> READ_ONCE() in lockless algorithms, (e.g. GUP?). We wouldn't want to end up
>>>> with
>>>> a stale value.
>>>>
>>>> Another idea:
>>>>
>>>> Given the main pattern where we are aiming to optimize out the read is
>>>> something
>>>> like:
>>>>
>>>> if (!pud_present(*pud))
>>>>
>>>> where for a folded pmd:
>>>>
>>>> static inline int pud_present(pud_t pud)    { return 1; }
>>>>
>>>> And we will change it to this:
>>>>
>>>> if (!pud_present(pudp_get(pud)))
>>>>
>>>> ...
>>>>
>>>> perhaps we can just define the folded pXd_present(), pXd_none(), pXd_bad(),
>>>> pXd_user() and pXd_leaf() as macros:
>>>>
>>>> #define pud_present(pud)    1
>>>>
>>>
>>> Let's take a step back and realize that with __PAGETABLE_PMD_FOLDED
>>>
>>> (a) *pudp does not make any sense

I'm struggling with this statement. The PMD is folded, not the PUD. So the PMD
table consists of a single entry, which overlays the entry in the PUD, right? So
the PUD exists and *pudp must be valid?

Now, pgtable-nopmd.h includes pgtable-nopud.h so actually the PUD is also folded
into the P4D and the P4D is also folded into the PGD. But the PGD exists and is
not folded.

So what you are saying is true in practice, I guess. But it's not true if you
replace PMD with P4D and PUD with PGD.

Does what I'm saying matter or have any impact on your assessment below? I have
no idea. My head hurts.

>>>
>>> For a folded PMD, *pudp == *pmdp and consequently we would actually
>>> get a PMD, not a PUD.

Well based on what I said above, the PMD is folded into the PUD, the PUD is
folded into the P4D and the P4D is folded into the PGD. So all of those things
are actually pointing to the PGD entry in the PGD table, right? And pmd_t,
pud_t, p4d_t are all defined as containers holding the next thing up:

typedef struct { pud_t pud; } pmd_t;

So it all works out, and is safe, I think?

>>>
>>> For this reason all these pud_* helpers ignore the passed value
>>> completely. It would be wrong.
>>>
>>> (b) pmd_offset() does *not* consume a pud but instead a pudp.
>>>
>>> That makes sense, just imagine what would happen if someone would pass
>>> *pudp to that helper (we'd dereference twice ...).
>>>
>>>
>>> So I wonder if we can just teach get_pudp() and friends to ... return
>>> true garbage instead of dereferencing something that does not make sense?

Sorry, I don't really understand why dereferencing does not make sense. the
pud_t is a struct containing a single p4d_t and that is a struct containing a
single pgd_t and it is pointing to the pgd entry. So why isn't it safe?

>>>
>>> diff --git a/include/linux/pgtable.h b/include/linux/pgtable.h
>>> index 32e8457ad5352..c95d0d89ab3f1 100644
>>> --- a/include/linux/pgtable.h
>>> +++ b/include/linux/pgtable.h
>>> @@ -351,7 +351,13 @@ static inline pmd_t pmdp_get(pmd_t *pmdp)
>>>     #ifndef pudp_get
>>>     static inline pud_t pudp_get(pud_t *pudp)
>>>     {
>>> +#ifdef __PAGETABLE_PMD_FOLDED
>>> +       pud_t dummy = { 0 };
>>> +
>>> +       return dummy;

If you're confident that this is correct, then I believe you. But I can't follow
your logic at the moment. But we have a fairly long history of you being right
and me not understanding... :)

I don't think in general it is invalid for something to call the getter and do
something with the result just because it's folded. e.g. log it's value. So I
don't think returning a dummy value is ok.

See __print_bad_page_map_pgtable() for example?

>>> +#else
>>>            return READ_ONCE(*pudp);
>>> +#endif
>>>     }
>>>     #endif
>>>     set_pud/pud_page/pud_pgtable helper are confusing, I would
>>> assume they are essentially unused (like documented for set_put)
>>> and only required to keep compilers happy.
>>
>> Staring at GUP-fast and perf_get_pgtable_size()---which should better be
>> converted to pudp_get() etc--I guess we might have to rework
>> p4d_offset_lockless() to do something that doesn't rely on
>> passing variables of local variables.
>>
>> We might have to enlighten these walkers (and only these) about folded
>> page tables such that they don't depend on the result of pudp_get() and
>> friends.
> 
> Talking to myself (I know), handling this might be as simple as having
> 
> diff --git a/include/asm-generic/pgtable-nopmd.h b/include/asm-generic/pgtable-
> nopmd.h
> index 8ffd64e7a24cb..60e5ba02bcf06 100644
> --- a/include/asm-generic/pgtable-nopmd.h
> +++ b/include/asm-generic/pgtable-nopmd.h
> @@ -49,6 +49,13 @@ static inline pmd_t * pmd_offset(pud_t * pud, unsigned long
> address)
>  }
>  #define pmd_offset pmd_offset
>  
> +static inline pmd_t * pmd_offset_lockless(pud_t *pud, puf_t pud, unsigned long
> address)
> +{
> +       return (pmd_t *)pud;
> +}
> +#define pmd_offset_lcokless pmd_offset_lockless
> +
> +
>  #define pmd_val(x)                             (pud_val((x).pud))
>  #define __pmd(x)                               ((pmd_t) { __pud(x) } )
>  
> 
> IOW, just like for pmd_offset() we cast the pointer and don't ever touch the pud.
> 
> 
> As a reminder, the default is
> 
> #ifndef pmd_offset_lockless
> #define pmd_offset_lockless(pudp, pud, address) pmd_offset(&(pud), address)
> #endif
> 
> (isn't that nasty? :) )

Just as a general comment; arm64 expects and requires today that any pte_t
pointer passed to ptep_get(), set_ptes(), and all the other ptep helpers point
to entries in the pgtable. We cannot tolerate being passed pointers to stack
variables. We assume we can roam around in the pgtable for contpte purposes.

Extending this to the other levels, we would have the same requirements.

Thanks,
Ryan

> 


