Return-Path: <devicetree+bounces-247759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E059CCB43D
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 10:52:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0EB030954AE
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 09:49:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AECE32ABC3;
	Thu, 18 Dec 2025 09:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+zreEJo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638682C21DD;
	Thu, 18 Dec 2025 09:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766051373; cv=none; b=Lfg9XJ9gdgHcL2zzyFL/i9Osrx4zuBTwbenatTjfSpVfg0FneHoUmrEWin4KcKS6/hrbOBT2mrgPX09+05vMpFmGAR7k6BZgAVqUOVAdy1UMvdCXVZDHqhJm8I3sr05QM7BaSh17ct70W5PAhT1OHfXQ/bnkpg9BZkffhiAdIKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766051373; c=relaxed/simple;
	bh=jpct4wgiQvvz63Cwe2t0WKmpu8qE8JWTj+D4fEqN3KU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lZGq+AacwAn/X64H5NUy05grkPr+3YVQEU0cgS/mgw+VLgYwSMsxaZZF+Zucze20MeZbpJkG0d6FDzJQRpQAtF6gp9FGslx6GAuPWqz+Wi1LK55Nx0Nzpn8BzPJu38H4Ug+5rP7JKPAfNRsbGn/zx+o7yqEfn18dWlSMfebGywo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+zreEJo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76F25C4CEFB;
	Thu, 18 Dec 2025 09:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766051372;
	bh=jpct4wgiQvvz63Cwe2t0WKmpu8qE8JWTj+D4fEqN3KU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=i+zreEJolTQBByW8JlPjfJ3Z1VMPes2Pd7PeJAb/lYS9S+kjePXS6fxK/1oiCfHLA
	 SApDHO3FssA1sTS4F0w9Fy38cvl6WxkWVC0byQPuPQVMzC/aSU38p7T3YrTzKe/lEq
	 +t3yiGig3MducPpc0NbGREP5v9YB9iZndsqe1W4uJCR6ayBC+wFjG6VFCOs/Ruqnwr
	 /aqNqVbKxX2atQFftfDEC4z1dyMeo2hNdSyY1J2kx4C/dxYP0m2u9xYNOYoJOhOi8v
	 V67YJYBgk8qBspVZuXfk+ga0SVCqlyGMbpJhXfGQGXvZ8Lw12uC/zGimGfkUK+YzIy
	 Z5I+jzlJ5xCgg==
Message-ID: <cbea0364-b8e3-4e3b-852f-b16436b60de1@kernel.org>
Date: Thu, 18 Dec 2025 10:49:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/22] mm: Allow page table accessors to be
 non-idempotent
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
 <Liam.Howlett@oracle.com>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
 <20251113014656.2605447-9-samuel.holland@sifive.com>
 <fbfef7fc-4030-462b-b514-498eea6620aa@arm.com>
 <c2597d43-d909-4259-bb5b-9294e4069385@kernel.org>
 <af8fd275-a34d-4b2f-8834-9c85dab2bbae@sifive.com>
 <a063f6c5-2785-4a9f-8079-25edb3e54cef@arm.com>
From: "David Hildenbrand (Red Hat)" <david@kernel.org>
Content-Language: en-US
In-Reply-To: <a063f6c5-2785-4a9f-8079-25edb3e54cef@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/11/25 14:59, Ryan Roberts wrote:
> On 11/12/2025 00:33, Samuel Holland wrote:
>> On 2025-11-28 2:47 AM, David Hildenbrand (Red Hat) wrote:
>>> On 11/27/25 17:57, Ryan Roberts wrote:
>>>> On 13/11/2025 01:45, Samuel Holland wrote:
>>>>> Currently, some functions such as pte_offset_map() are passed both
>>>>> pointers to hardware page tables, and pointers to previously-read PMD
>>>>> entries on the stack. To ensure correctness in the first case, these
>>>>> functions must use the page table accessor function (pmdp_get()) to
>>>>> dereference the supplied pointer. However, this means pmdp_get() is
>>>>> called twice in the second case. This double call must be avoided if
>>>>> pmdp_get() applies some non-idempotent transformation to the value.
>>>>>
>>>>> Avoid the double transformation by calling set_pmd() on the stack
>>>>> variables where necessary to keep set_pmd()/pmdp_get() calls balanced.
>>>>
>>>> I don't think this is a good solution.
>>>
>>> Agreed,
>>>
>>>      set_pmd(&pmd, pmd);
>>>
>>> is rather horrible.
>> I agree that this patch is ugly. The only way I see to avoid code like this is
>> to refactor (or duplicate) the functions so no function takes pointers to both
>> hardware page tables and on-stack page table entries. Is that sort of
>> refactoring the right direction to go for v4?
> 
>  From a quick look at the code, I think that some cases are solvable by
> refactoring to pass the value instead of the pointer, and leave it to the higher
> level decide how to read the value from the pointer - it knows if it is pointing
> to HW pgtable or if it's a (e.g) stack value.
> 
> But the more I look at the code, the more instances I find where pointers to
> stack variables are being passed to arch pgtable helpers as if they are HW
> pgtable entry pointers. (Mainly pmd level).
> 
> I wonder if we need to bite the bullet and explicitly separate the types? At
> each level, we have:
> 
>   1. page table entry value
>   2. pointer to page table entry _value_ (e.g. pointer to pXX_t on stack)
>   3. pointer to page table entry in HW pgtable
> 
> Today, 1 is represented by pte_t, pmd_t, etc. 2 and 3 are represented by the
> same type; pte_t*, pmd_t*, etc.
> 
> If we create a new type for 3, it will both document and enforce when type 2 or
> type 3 is required.
> 
> e.g:
> 
> // pte_t: defined by arch.
> typedef unsigned long pte_t;
> 
> // ptep_t: new opaque type that can't be dereferenced.
> struct __ptep_t;
> typedef struct __ptep_t *ptep_t;

This is what I had in mind when we last discussed this topic and I 
suggested a way forward to not play whack-a-mole with new users that do 
*ptep showing up.

Agreed that we ideally indicate that this is a HW PTE pointer that must 
be de-referenced through ptep_get() or similar. (maybe we'd find a new 
name for this set of functions).

I talked to Samuel at LPC, pointing him at the way XEN-pv implemented 
support for changing PFNs in ptes. We might not need all of that rework 
to move forward with the risc-v change.

Having that said, I also agree that this would be a cleanup worth having 
(which will result in quite a bit of churn :) ).

So if someone wants to bump up the patch count, speak now.

-- 
Cheers

David

