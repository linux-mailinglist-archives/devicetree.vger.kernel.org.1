Return-Path: <devicetree+bounces-242455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F2AC8A6EB
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 15:48:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D88FB349FFA
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 14:47:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29840304BA4;
	Wed, 26 Nov 2025 14:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Knb6dB6K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E4B302755;
	Wed, 26 Nov 2025 14:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764168408; cv=none; b=MTYmWA/4pCA0SINXOZ8PaShxuycja5neREkORcPlVDXCJYQIWhzK4R9lDnCrRDhEwTc7fsWnayuuZ1PTfiw1ukJPH49ARg9NToze7OIpSIHGJSSNclwSiM/hNsF5YtsvOvYXKtzCnGScWEfAiW87VxVqYTU3lEsxbKCAner9LsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764168408; c=relaxed/simple;
	bh=rN8uuyU8RJxsQK9SI2vsik5bVZRYdR4fDfMryS9LdTo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j0HU3+gP9i0BFA6dwIPNpNBsaJDUolYgU+xglKrtd6wugSQCbZL4WxvxU8/7tJ2bRJ0KGnfqKUZ1tKIJkp2HvdIaFpljX0hPSCL8XF1o8I8KJRXpDVN5BDb9R1QOLQtg7u5bPeCR9nlYR/tlFjhN+D1e4FseEtJmDvT8SK3Vzjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Knb6dB6K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D951FC4CEF7;
	Wed, 26 Nov 2025 14:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764168407;
	bh=rN8uuyU8RJxsQK9SI2vsik5bVZRYdR4fDfMryS9LdTo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Knb6dB6KKmlnmfJpGMk6rLZZg/Xct6yBU+L1A5tJGCzb90ZgbFIwltq2rnJrqAlb7
	 1m5cTDHSno9KWGcw9J9xR1Vx6XYBkWdCJzainHhBbiuiOXeYZyf1CNuUDvRsEFpkVV
	 7IJu0+1HHJuTC+uWYmKLKfGHbKpiReXDB7NMDr5kMlBx9faWmr3mgZ6PD6RzEcGh6y
	 wtbFL4cEKyAzFnXjBZeg4brZpmGf/C3fwJost64KZLAqrMU0dQsh+XijAoVcsQU8Ij
	 3VZVb7gospy7DoVSKnuqOIyjQ0D9N3e2LKLO3PtlK7etI21gf96UYXggvB3TqwbADK
	 adsHLAl4WA45A==
Message-ID: <6b966403-91e0-4f06-86a9-a4f7780b9557@kernel.org>
Date: Wed, 26 Nov 2025 15:46:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/22] mm: Always use page table accessor functions
To: Ryan Roberts <ryan.roberts@arm.com>, Wei Yang <richard.weiyang@gmail.com>
Cc: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
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
 <ee5f5da3-8c6b-4381-aee8-b0fab56cbf83@arm.com>
From: "David Hildenbrand (Red Hat)" <david@kernel.org>
Content-Language: en-US
In-Reply-To: <ee5f5da3-8c6b-4381-aee8-b0fab56cbf83@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/26/25 15:22, Ryan Roberts wrote:
> On 26/11/2025 13:47, Wei Yang wrote:
>> On Wed, Nov 26, 2025 at 01:03:42PM +0000, Ryan Roberts wrote:
>>> On 26/11/2025 12:35, David Hildenbrand (Red Hat) wrote:
>> [...]
>>>>>>>> Hi,
>>>>>>>>
>>>>>>>> I've just come across this patch and wanted to mention that we could also
>>>>>>>> benefit from this improved absraction for some features we are looking at for
>>>>>>>> arm64. As you mention, Anshuman had a go but hit some roadblocks.
>>>>>>>>
>>>>>>>> The main issue is that the compiler was unable to optimize away the
>>>>>>>> READ_ONCE()s
>>>>>>>> for the case where certain levels of the pgtable are folded. But it can
>>>>>>>> optimize
>>>>>>>> the plain C dereferences. There were complaints the the generated code for arm
>>>>>>>> (32) and powerpc was significantly impacted due to having many more
>>>>>>>> (redundant)
>>>>>>>> loads.
>>>>>>>>
>>>>>>>
>>>>>>> We do have mm_pmd_folded()/p4d_folded() etc, could that help to sort
>>>>>>> this out internally?
>>>>>>>
>>>>>>
>>>>>> Just stumbled over the reply from Christope:
>>>>>>
>>>>>> https://lkml.kernel.org/r/0019d675-ce3d-4a5c-89ed-f126c45145c9@kernel.org
>>>>>>
>>>>>> And wonder if we could handle that somehow directly in the pgdp_get() etc.
>>>
>>> I certainly don't like the suggestion of doing the is_folded() test outside the
>>> helper, but if we can push that logic down into pXdp_get() that would be pretty
>>> neat. Anshuman and I did briefly play with the idea of doing a C dereference if
>>> the level is folded and a READ_ONCE() otherwise, all inside each pXdp_get()
>>> helper. Although we never proved it to be correct. I struggle with the model for
>>> folding. Do you want to optimize out all-but-the-highest level's access or
>>> all-but-the-lowest level's access? Makes my head hurt...
>>>
>>>
>>
>> You mean sth like:
>>
>> static inline pmd_t pmdp_get(pmd_t *pmdp)
>> {
>> #ifdef __PAGETABLE_PMD_FOLDED
>> 	return *pmdp;
>> #else
>> 	return READ_ONCE(*pmdp);
>> #endif
>> }
> 
> Yes. But I'm not convinced it's correct.

Yeah, I'm also still trying to understand how it could work.

> 
> I *think* (but please correct me if I'm wrong) if the PMD is folded, the PUD and
> P4D must also be folded, and you effectively have a 2 level pgtable consisting
> of the PGD table and the PTE table. p4dp_get(), pudp_get() and pmdp_get() are
> all effectively duplicating the load of the pgd entry? So assuming pgdp_get()
> was already called and used READ_ONCE(), you might hope the compiler will just
> drop the other loads and just use the value returned by READ_ONCE(). But I doubt
> there is any guarantee of that and you might be in a situation where pgdp_get()
> never even got called (perhaps you already have the pmd pointer).
With __PAGETABLE_PMD_FOLDED we treat the PUD to be fake-present, like

static inline int pud_present(pud_t pud)	{ return 1; }

And obtaining the pmd_t* is essentially  cast of the pud_t*

static inline pmd_t * pmd_offset(pud_t * pud, unsigned long address)
{
	return (pmd_t *)pud;
}

So in that case we might want to have the READ_ONCE() remove from the 
pudp_get(), not the pmdp_get()?

IOW, push the READ_ONCE() down to the lowest level so the previous ones 
(that will get essentially ignore?) will get folded into the last 
READ_ONCE()?

But my head still hurts and I am focusing on something else concurrently :)

-- 
Cheers

David

