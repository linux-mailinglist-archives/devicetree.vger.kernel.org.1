Return-Path: <devicetree+bounces-242377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFEEC89B7D
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 13:19:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 36EDB4E1A62
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 12:19:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FC79326936;
	Wed, 26 Nov 2025 12:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3f6skmv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A1B8325729;
	Wed, 26 Nov 2025 12:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764159548; cv=none; b=Zgm2RqqqxIJjgOaJ0UL1QnrupCocJr56DyiklUxizuYpKstuY1n0PJrHS5+/sykK3ie/jHBzs1f0bf+ff5hdF+ObKj1OBXC4O63S+OMbvFt780P0n8m8CV8h9ulw6fegCzkXBBvJ4KAl/nJlmejf9txkdZoyGJsP4x8xBS26/2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764159548; c=relaxed/simple;
	bh=ma7x77mcp++yOaA+tQf5VwWQgC8A62xYMabV/ICqieo=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=ZhMUDbgh+XLCWKgimJRnbNPb9KA/Ek3/scZgQLPTtsN7060GqiCf1qaQAmUolxPHb6ta+/DB0cZ6heODLK6UFhccf2wlVNKs7FmZ/h46AZ0fk1y2TbnFJn2NNijsP1fRzGaOcstEajzDCB+JXo00FqDi7htxVuX8A81DLdKpBto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3f6skmv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7348C113D0;
	Wed, 26 Nov 2025 12:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764159547;
	bh=ma7x77mcp++yOaA+tQf5VwWQgC8A62xYMabV/ICqieo=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=D3f6skmvyEwFQ6GcsmWCUMpDzR29kqNoSz21S697+cgAnHCPtqAVpRK5FO8n0foRk
	 w+p7odI+hZYN1BUGcWGQV8rSriDIOZcp+2yPlOIQLhxb+ZRzKQLvLS9FtvhfrVLYZe
	 BCdgexPlLZxAjWXXkGVxlHnxobkWy1eCXPed4keEvMN3sB7CUnBt+VuRfkNrS4RU60
	 clLCupwtRNlxZy1OKldXhxUwjyJawrzwni1O+v6XadG6I3G3HoqR9INyVC3ziWPWc/
	 UWP35qM1Ub+uCKi0VmFEur1VMa3LH4V9IgB3w1XS+sJeJylKus4fIhzYikGMuB8Ibe
	 JxOtv+pp0YMcA==
Message-ID: <df7d10ba-bb42-4ea1-8c5b-5db88a18eccb@kernel.org>
Date: Wed, 26 Nov 2025 13:19:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/22] mm: Always use page table accessor functions
From: "David Hildenbrand (Red Hat)" <david@kernel.org>
To: Ryan Roberts <ryan.roberts@arm.com>,
 Samuel Holland <samuel.holland@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>,
 linux-riscv@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-mm@kvack.org
Cc: devicetree@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@kernel.org>,
 Michal Hocko <mhocko@suse.com>, Conor Dooley <conor@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>,
 Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>,
 Vlastimil Babka <vbabka@suse.cz>, "Liam R . Howlett"
 <Liam.Howlett@oracle.com>, Julia Lawall <Julia.Lawall@inria.fr>,
 Nicolas Palix <nicolas.palix@imag.fr>,
 Anshuman Khandual <anshuman.khandual@arm.com>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
 <20251113014656.2605447-7-samuel.holland@sifive.com>
 <02e3b3bd-ae6a-4db4-b4a1-8cbc1bc0a1c8@arm.com>
 <bc88d132-452a-42a1-9ee5-5407334d8aac@kernel.org>
Content-Language: en-US
In-Reply-To: <bc88d132-452a-42a1-9ee5-5407334d8aac@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/26/25 13:16, David Hildenbrand (Red Hat) wrote:
> On 11/26/25 12:09, Ryan Roberts wrote:
>> On 13/11/2025 01:45, Samuel Holland wrote:
>>> Some platforms need to fix up the values when reading or writing page
>>> tables. Because of this, the accessors must always be used; it is not
>>> valid to simply dereference a pXX_t pointer.
>>>
>>> Fix all of the instances of this pattern in generic code, mostly by
>>> applying the below coccinelle semantic patch, repeated for each page
>>> table level. Some additional fixes were applied manually, mostly to
>>> macros where type information is unavailable.
>>>
>>> In a few places, a `pte_t *` or `pmd_t *` is actually a pointer to a PTE
>>> or PMDE value stored on the stack, not a pointer to a page table. In
>>> those cases, it is not appropriate to use the accessors, because the
>>> value is not globally visible, and any transformation from pXXp_get()
>>> has already been applied. Those places are marked by naming the pointer
>>> `ptentp` or `pmdvalp`, as opposed to `ptep` or `pmdp`.
>>>
>>> @@
>>> pte_t *P;
>>> expression E;
>>> expression I;
>>> @@
>>> - P[I] = E
>>> + set_pte(P + I, E)
>>>
>>> @@
>>> pte_t *P;
>>> expression E;
>>> @@
>>> (
>>> - WRITE_ONCE(*P, E)
>>> + set_pte(P, E)
>>> |
>>> - *P = E
>>> + set_pte(P, E)
>>> )
>>
>> There should absolutely never be any instances of core code directly setting an
>> entry at any level. This *must* always go via the arch code helpers. Did you
>> find any instances of this? If so, I would consider these bugs and suggest
>> sending as a separate bugfix patch. Bad things could happen on arm64 because we
>> may need to break a contiguous mapping, which would not happen if the value is
>> set directly.
>>
>>>
>>> @@
>>> pte_t *P;
>>> expression I;
>>> @@
>>> (
>>>     &P[I]
>>> |
>>> - READ_ONCE(P[I])
>>> + ptep_get(P + I)
>>> |
>>> - P[I]
>>> + ptep_get(P + I)
>>> )
>>>
>>> @@
>>> pte_t *P;
>>> @@
>>> (
>>> - READ_ONCE(*P)
>>> + ptep_get(P)
>>> |
>>> - *P
>>> + ptep_get(P)
>>> )
>>
>> For reading the *PTE*, conversion over to ptep_get() should have already been
>> done (I did this a few years back when implementing support for arm64 contiguous
>> mappings). If you find any cases where direct dereference or READ_ONCE() is
>> being done in generic code for PTE, then that's a bug and should also be sent as
>> a separate patch.
>>
>> FYI, my experience was that Coccinelle didn't find everything when I was
>> converting to ptep_get() - although it could have been that my Cochinelle skills
>> were not up to scratch! I ended up using an additional method where I did a
>> find/replace to convert "pte_t *" to "ptep_handle_t" and declared pte_handle_t
>> as a void* which causes a compiler error on dereference. Then in a few key
>> places I did a manual case from pte_handle_t to (pte_t *) and compiled allyesconfig.
>>
>> I'm assuming the above Cocchinelle template was also used for pmd_t, pud_t,
>> p4d_t and pgd_t?
>>
>>>
>>> Additionally, the following semantic patch was used to convert PMD and
>>> PUD references inside struct vm_fault:
>>>
>>> @@
>>> struct vm_fault vmf;
>>> @@
>>> (
>>> - *vmf.pmd
>>> + pmdp_get(vmf.pmd)
>>> |
>>> - *vmf.pud
>>> + pudp_get(vmf.pud)
>>> )
>>>
>>> @@
>>> struct vm_fault *vmf;
>>> @@
>>> (
>>> - *vmf->pmd
>>> + pmdp_get(vmf->pmd)
>>> |
>>> - *vmf->pud
>>> + pudp_get(vmf->pud)
>>> )
>>>
>>>
>>> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
>>> ---
>>> This commit covers some of the same changes as an existing series from
>>> Anshuman Khandual[1]. Unlike that series, this commit is a purely
>>> mechanical conversion to demonstrate the RISC-V changes, so it does not
>>> insert local variables to avoid redundant calls to the accessors. A
>>> manual conversion like in that series could improve performance.
>>>
>>> [1]: https://lore.kernel.org/linux-mm/20240917073117.1531207-1-anshuman.khandual@arm.com/
>>
>> Hi,
>>
>> I've just come across this patch and wanted to mention that we could also
>> benefit from this improved absraction for some features we are looking at for
>> arm64. As you mention, Anshuman had a go but hit some roadblocks.
>>
>> The main issue is that the compiler was unable to optimize away the READ_ONCE()s
>> for the case where certain levels of the pgtable are folded. But it can optimize
>> the plain C dereferences. There were complaints the the generated code for arm
>> (32) and powerpc was significantly impacted due to having many more (redundant)
>> loads.
>>
> 
> We do have mm_pmd_folded()/p4d_folded() etc, could that help to sort
> this out internally?
> 

Just stumbled over the reply from Christope:

https://lkml.kernel.org/r/0019d675-ce3d-4a5c-89ed-f126c45145c9@kernel.org

And wonder if we could handle that somehow directly in the pgdp_get() etc.

-- 
Cheers

David

