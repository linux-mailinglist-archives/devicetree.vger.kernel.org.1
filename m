Return-Path: <devicetree+bounces-245859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91279CB61F4
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 15:00:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BEA53300183A
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 14:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA4B52C1598;
	Thu, 11 Dec 2025 14:00:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1D3A2367DF;
	Thu, 11 Dec 2025 13:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765461602; cv=none; b=YBgA+peUvUGiOAu/Gzfc3iQowYIeld1eXuOwn6kEYuKe+zTARZF70w2lyG3EBjB3lwHHk/VqALIGwIrP7XOVaAQyo5B2g3veOXEHmegba6il6q92mnIcFvtlchwrtkBWgAncKI8CtE29NIeHUW24ims16KtLZoXwjCNPpHl9j8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765461602; c=relaxed/simple;
	bh=FoueaL92Jw4udLfLQWxLr8J+3uQdTxVk6BFBgkdICd4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uknQbbkSyxmFw8DWpyM3XRicQILNM0ur+Tboox017MvNv3KJ0yuzntGL5xVye+LBYoK1xmokT14wc/72Eu02gKoXNATRcQlAfTgprFLm7/4mYu5m14MHutjpsqAbf4N+7KBmMmaIFf+AJBc8Od3U3xYURrn4WUI6pdsdPcsmoIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8DEE41688;
	Thu, 11 Dec 2025 05:59:51 -0800 (PST)
Received: from [10.57.90.205] (unknown [10.57.90.205])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 05CCA3F73B;
	Thu, 11 Dec 2025 05:59:54 -0800 (PST)
Message-ID: <a063f6c5-2785-4a9f-8079-25edb3e54cef@arm.com>
Date: Thu, 11 Dec 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/22] mm: Allow page table accessors to be
 non-idempotent
Content-Language: en-GB
To: Samuel Holland <samuel.holland@sifive.com>,
 "David Hildenbrand (Red Hat)" <david@kernel.org>,
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
 <Liam.Howlett@oracle.com>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
 <20251113014656.2605447-9-samuel.holland@sifive.com>
 <fbfef7fc-4030-462b-b514-498eea6620aa@arm.com>
 <c2597d43-d909-4259-bb5b-9294e4069385@kernel.org>
 <af8fd275-a34d-4b2f-8834-9c85dab2bbae@sifive.com>
From: Ryan Roberts <ryan.roberts@arm.com>
In-Reply-To: <af8fd275-a34d-4b2f-8834-9c85dab2bbae@sifive.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 11/12/2025 00:33, Samuel Holland wrote:
> On 2025-11-28 2:47 AM, David Hildenbrand (Red Hat) wrote:
>> On 11/27/25 17:57, Ryan Roberts wrote:
>>> On 13/11/2025 01:45, Samuel Holland wrote:
>>>> Currently, some functions such as pte_offset_map() are passed both
>>>> pointers to hardware page tables, and pointers to previously-read PMD
>>>> entries on the stack. To ensure correctness in the first case, these
>>>> functions must use the page table accessor function (pmdp_get()) to
>>>> dereference the supplied pointer. However, this means pmdp_get() is
>>>> called twice in the second case. This double call must be avoided if
>>>> pmdp_get() applies some non-idempotent transformation to the value.
>>>>
>>>> Avoid the double transformation by calling set_pmd() on the stack
>>>> variables where necessary to keep set_pmd()/pmdp_get() calls balanced.
>>>
>>> I don't think this is a good solution.
>>
>> Agreed,
>>
>>     set_pmd(&pmd, pmd);
>>
>> is rather horrible.
> I agree that this patch is ugly. The only way I see to avoid code like this is
> to refactor (or duplicate) the functions so no function takes pointers to both
> hardware page tables and on-stack page table entries. Is that sort of
> refactoring the right direction to go for v4?

From a quick look at the code, I think that some cases are solvable by
refactoring to pass the value instead of the pointer, and leave it to the higher
level decide how to read the value from the pointer - it knows if it is pointing
to HW pgtable or if it's a (e.g) stack value.

But the more I look at the code, the more instances I find where pointers to
stack variables are being passed to arch pgtable helpers as if they are HW
pgtable entry pointers. (Mainly pmd level).

I wonder if we need to bite the bullet and explicitly separate the types? At
each level, we have:

 1. page table entry value
 2. pointer to page table entry _value_ (e.g. pointer to pXX_t on stack)
 3. pointer to page table entry in HW pgtable

Today, 1 is represented by pte_t, pmd_t, etc. 2 and 3 are represented by the
same type; pte_t*, pmd_t*, etc.

If we create a new type for 3, it will both document and enforce when type 2 or
type 3 is required.

e.g:

// pte_t: defined by arch.
typedef unsigned long pte_t;

// ptep_t: new opaque type that can't be dereferenced.
struct __ptep_t;
typedef struct __ptep_t *ptep_t;

// getter/setter responsible for cast & deref as appropriate.
pte_t ptep_get(ptep_t ptep)
{
	return READ_ONCE(*(pte_t *)ptep);
}

int do_stuff(void)
{
	// value on stack: ok
	pte_t mypte;

	// pointer to value on stack: ok
	pte_t *pmypte = &mypte;

	// handle to entry on stack: not allowed by compiler!
	ptep_t myptep = &mypte;

	// handle to entry in pgtable: ok
	ptep_t myptep = pte_offset_kernel(...);

	// read value of pgtable entry: ok
	pte_t val = ptep_get(myptep);

	// attempt to pass pointer to stack variable: not allowed by compiler!
	pte_t val = ptep_get(&mypte);

	// attempt to directly dereference ptep: not allowed by compiler!
	pte_t val = *myptep;
}


We could do this incrementally by initially typedefing ptep_t to be:
typedef pte_t *ptep_t;

Then we could flip the switch arch-by-arch to enable the stronger checking. We
likely wouldn't need to convert arches that don't care.

I think by doing this, it will expose all the current issues and force us to fix
them properly.

On the related subject of conversion to pXXp_get(); I've been looking into this
and personally, I think we should have 2 helper flavours at each level:

 - pXXd_get()      optimizable by compiler; defaults to C dereference
 - pXXd_get_once() single-copy-atomic and unmovable by compiler

It simplifies the converstion process, and reduces the risk of bugs
significantly (go read about the arm32 issues discussed in Anshuman's series if
you haven't done already).

I appreciate this is all probably a lot more work than you would prefer to sign
up for, I'd be happy to collaborate if we get concensus that this approach makes
sense. What do you think?

Thanks,
Ryan


