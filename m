Return-Path: <devicetree+bounces-242459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC42C8A7F3
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 15:59:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 029614EE890
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 14:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA3F3305E01;
	Wed, 26 Nov 2025 14:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKA8ZPZB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11B5302CB3;
	Wed, 26 Nov 2025 14:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764168817; cv=none; b=cOAStoJnQH8k6ME4SBBUyfxt7d7W4ZxwvfCxAbtVEhifrrp28wta+uUQgCV75xSSIBjWLanwnqhuW9CGjS3Nd8+rRbDNjnZ6n4wtDZVwzk08MppIiuP4JJH6VxcLMPKNJEXrUw0/YnMSzawZDjQQHlhwp/Z0rVpu2XwJn6C+BOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764168817; c=relaxed/simple;
	bh=c3XYY0cYtWPbzdfFG05mXSc/WqtZze6j0CNfdBzcecg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HgnC7ADUc29k8JTZbOoXGOtv6qNT6WK3G2FaHEdmsXC3Dc55uRA08AOvs/nQG8hsk8pyVPkEiuSmDkuNrKK6Wi2n/bgimSpbpnhTi5q7K4T51OgBxgSJjfvKCAQqnHsHZdNJ4aFBIYgf0cwuVJl5zMw+z/f9W6HAYEyVX2vDdMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKA8ZPZB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22155C4CEF7;
	Wed, 26 Nov 2025 14:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764168817;
	bh=c3XYY0cYtWPbzdfFG05mXSc/WqtZze6j0CNfdBzcecg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iKA8ZPZBzJCQYVEC7nRsRPwzuuWCfBhocWIEE6hhn+ym5dSpRSL0fAPhaA+Clc/qg
	 Acxjig2SijB4lbZWCCfVV+gD5keP+RT0r+pRsypmohhmQS1poaaqmC0ozypxxymmEG
	 bFNhTQliyy/QUx2BoZ6GnpplECtgUZz1k8uSqlQueSYJrbJTZWEnezPFBR2iicpBNv
	 VvQdvJLq66DJ3TDKqr1po8RlbDflk5NTEaXIGwhIEd8GA3vlrtFeGRlnoNqkHtKQZy
	 ZYtNKHlp5O9GEwLFOR33JAkEXGpVE81UDAWVtj/1iiW2t2+3VFj6LQeI7m054cCRrR
	 LWQawhT0xSlGA==
Message-ID: <82dca16e-6f71-45a9-9748-db47c1f42597@kernel.org>
Date: Wed, 26 Nov 2025 15:53:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/22] mm: Always use page table accessor functions
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Ryan Roberts <ryan.roberts@arm.com>
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
 <dce86811-e085-48f9-a0b3-977238877f7a@lucifer.local>
From: "David Hildenbrand (Red Hat)" <david@kernel.org>
Content-Language: en-US
In-Reply-To: <dce86811-e085-48f9-a0b3-977238877f7a@lucifer.local>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/26/25 15:37, Lorenzo Stoakes wrote:
> On Wed, Nov 26, 2025 at 02:22:13PM +0000, Ryan Roberts wrote:
>> On 26/11/2025 13:47, Wei Yang wrote:
>>> On Wed, Nov 26, 2025 at 01:03:42PM +0000, Ryan Roberts wrote:
>>>> On 26/11/2025 12:35, David Hildenbrand (Red Hat) wrote:
>>> [...]
>>>>>>>>> Hi,
>>>>>>>>>
>>>>>>>>> I've just come across this patch and wanted to mention that we could also
>>>>>>>>> benefit from this improved absraction for some features we are looking at for
>>>>>>>>> arm64. As you mention, Anshuman had a go but hit some roadblocks.
>>>>>>>>>
>>>>>>>>> The main issue is that the compiler was unable to optimize away the
>>>>>>>>> READ_ONCE()s
>>>>>>>>> for the case where certain levels of the pgtable are folded. But it can
>>>>>>>>> optimize
>>>>>>>>> the plain C dereferences. There were complaints the the generated code for arm
>>>>>>>>> (32) and powerpc was significantly impacted due to having many more
>>>>>>>>> (redundant)
>>>>>>>>> loads.
>>>>>>>>>
>>>>>>>>
>>>>>>>> We do have mm_pmd_folded()/p4d_folded() etc, could that help to sort
>>>>>>>> this out internally?
>>>>>>>>
>>>>>>>
>>>>>>> Just stumbled over the reply from Christope:
>>>>>>>
>>>>>>> https://lkml.kernel.org/r/0019d675-ce3d-4a5c-89ed-f126c45145c9@kernel.org
>>>>>>>
>>>>>>> And wonder if we could handle that somehow directly in the pgdp_get() etc.
>>>>
>>>> I certainly don't like the suggestion of doing the is_folded() test outside the
>>>> helper, but if we can push that logic down into pXdp_get() that would be pretty
>>>> neat. Anshuman and I did briefly play with the idea of doing a C dereference if
>>>> the level is folded and a READ_ONCE() otherwise, all inside each pXdp_get()
>>>> helper. Although we never proved it to be correct. I struggle with the model for
>>>> folding. Do you want to optimize out all-but-the-highest level's access or
>>>> all-but-the-lowest level's access? Makes my head hurt...
>>>>
>>>>
>>>
>>> You mean sth like:
>>>
>>> static inline pmd_t pmdp_get(pmd_t *pmdp)
>>> {
>>> #ifdef __PAGETABLE_PMD_FOLDED
>>> 	return *pmdp;
>>> #else
>>> 	return READ_ONCE(*pmdp);
>>> #endif
>>> }
>>
>> Yes. But I'm not convinced it's correct.
>>
>> I *think* (but please correct me if I'm wrong) if the PMD is folded, the PUD and
>> P4D must also be folded, and you effectively have a 2 level pgtable consisting
>> of the PGD table and the PTE table. p4dp_get(), pudp_get() and pmdp_get() are
>> all effectively duplicating the load of the pgd entry? So assuming pgdp_get()
>> was already called and used READ_ONCE(), you might hope the compiler will just
>> drop the other loads and just use the value returned by READ_ONCE(). But I doubt
>> there is any guarantee of that and you might be in a situation where pgdp_get()
>> never even got called (perhaps you already have the pmd pointer).
> 
> Yeah, it kinda sucks to bake that assumption in too even if we can prove it
> currently _is_ correct, and it becomes tricky because to somebody observing this
> they might well think 'oh so we don't need to think about tearing here' but in
> reality we are just assuming somebody already thought about it for us :)

Looking at include/asm-generic/pgtable-nopmd.h, PUD entries there are

* always present (pud_present() == 1)
* always a page table (pud_leaf() == 0)

And pmd_offset() is just a typecast.

So I wonder if that means that we can make pudp_get() be a simple load 
(!READ_ONCE) because nobody should possibly do something with that value 
as we must perform the pmd_present() checks etc. later and obtain the 
PMD through a READ_ONCE().

So far my thinking, maybe it's flawed :)

-- 
Cheers

David

