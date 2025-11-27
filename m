Return-Path: <devicetree+bounces-242857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC951C90082
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 20:39:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B0E73AA7E4
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 19:39:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80E422F39BD;
	Thu, 27 Nov 2025 19:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CC1qyyXK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF4B285C9F;
	Thu, 27 Nov 2025 19:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764272352; cv=none; b=OBmnw+K0oYaKjy5SYTJJ5dTt0EQotCPFDlsqsROFPk9sC7K1djPVWK6KjiWcM30t8DrYwC/ydYwvPOSPQDyyFwg+S5ewJyHVVDwxs/Q9FEUt+H8rV+f9C5QeHKZF5jI8S4FkvVKyPE0fDEMFTnc5hKgNA/iNUtQJ2ZEPeYsZ10U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764272352; c=relaxed/simple;
	bh=9CmP20l5fh1wI0Qc9aslBQ2/q51oJ57cp2te1agYTJ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Oytfz1/mA81lY17a4rJABzCcZjEaPGuSePj0L+Fme5a2YzL2IWvoxM18lTJpW7wYw2Fuykfd615EZsl6Zp9mFAKb2f9b3+FS2FanAfYUUbGqrHhI7R2s5cHYfpHnX5W5mxX7EejyZWicpcCqetDvasLNRWBxsIHzQT9xwaKRKjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CC1qyyXK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 671B7C4CEF8;
	Thu, 27 Nov 2025 19:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764272350;
	bh=9CmP20l5fh1wI0Qc9aslBQ2/q51oJ57cp2te1agYTJ4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CC1qyyXKyo4HeL/hyEiAmjyrdFYZCtsA9ufEs1ZbODnUMjPMpmfB0ekb5LgdLYCLX
	 CHpUVRLmWiP618uKzGcw7wbVXFiwRW6iCG11whNx4s8RBhJ8T9/2zgzHzeMA5neH+X
	 jzNpS88WZd5RjEB1yebsUUYBbWhpHDbiEFxPLMdhwQ4oBHPrIE4ZWkloGCINaM2Td4
	 NRFHi45iMDD6psQhkBxKT8Hte/o1Jf+XR9XXzKyaG1hLm6nKuFwYsMDrEhw0+17Fso
	 Ig8qddeXGqDngyGmHRXeegLObMvmeRhAeq0whuZCSxPlUukv5cYyvoYlWUMy+FQ+1D
	 EZxUxaIVmEl9w==
Message-ID: <cdfb3e14-f85b-4c85-9042-f9bc7728b375@kernel.org>
Date: Thu, 27 Nov 2025 20:39:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/22] mm: Always use page table accessor functions
To: Ryan Roberts <ryan.roberts@arm.com>,
 "David Hildenbrand (Red Hat)" <david@kernel.org>,
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
From: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Content-Language: fr-FR
In-Reply-To: <150ffcb7-2df2-4f3a-a12e-9807f13c6ab9@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



Le 26/11/2025 à 17:34, Ryan Roberts a écrit :
> On 26/11/2025 16:07, Ryan Roberts wrote:
>> On 26/11/2025 15:12, David Hildenbrand (Red Hat) wrote:
>>> On 11/26/25 16:08, Lorenzo Stoakes wrote:
>>>> On Wed, Nov 26, 2025 at 03:56:13PM +0100, David Hildenbrand (Red Hat) wrote:
>>>>> On 11/26/25 15:52, Lorenzo Stoakes wrote:
>>>>>>
>>>>>> Would the pmdp_get() never get invoked then? Or otherwise wouldn't that end up
>>>>>> requiring a READ_ONCE() further up the stack?
>>>>>
>>>>> See my other reply, I think the pmdp_get() is required because all pud_*
>>>>> functions are just simple stubs.
>>>>
>>>> OK, thought you were saying we should push further down the stack? Or up
>>>> depending on how you view these things :P as in READ_ONCE at leaf?
>>>
>>> I think at leaf because I think the previous ones should essentially be only
>>> used by stubs.
>>>
>>> But I haven't fully digested how this is all working. Or supposed to work.
>>>
>>> I'm trying to chew through the arch/arm/include/asm/pgtable-2level.h example to
>>> see if I can make sense of it,
>>
>> I wonder if we can think about this slightly differently;
>>
>> READ_ONCE() has two important properties:
>>
>>   - It guarrantees that a load will be issued, *even if output is unused*
>>   - It guarrantees that the read will be single-copy-atomic (no tearing)
>>
>> I think for the existing places where READ_ONCE() is used for pagetable reads we
>> only care about:
>>
>>   - It guarrantees that a load will be issued, *if output is used*
>>   - It guarrantees that the read will be single-copy-atomic (no tearing)
>>
>> I think if we can weaken to the "if output is used" property, then the compiler
>> will optimize out all the unneccessary reads.
>>
>> AIUI, a C dereference provides neither of the guarrantees so that's no good.
>>
>> What about non-volatile asm? I'm told (thought need to verify) that for
>> non-volatile asm, the compiler will emit it if the output is used and remove it
>> otherwise. So if the asm contains the required single-copy-atomic, perhaps we
>> are in business?
>>
>> So we would need a new READ_SCA() macro that could default to READ_ONCE() (which
>> is stronger) and arches could opt in to providing a weaker asm version. Then the
>> default pXdp_get() could be READ_SCA(). And this should work for all cases.
>>
>> I think.
> 
> I'm not sure this works. It looks like the compiler is free to move non-volatile
> asm sections which might be problematic for places where we are currently using
> READ_ONCE() in lockless algorithms, (e.g. GUP?). We wouldn't want to end up with
> a stale value.
> 
> Another idea:
> 
> Given the main pattern where we are aiming to optimize out the read is something
> like:
> 
> if (!pud_present(*pud))
> 
> where for a folded pmd:
> 
> static inline int pud_present(pud_t pud)	{ return 1; }
> 
> And we will change it to this:
> 
> if (!pud_present(pudp_get(pud)))
> 
> ...
> 
> perhaps we can just define the folded pXd_present(), pXd_none(), pXd_bad(),
> pXd_user() and pXd_leaf() as macros:
> 
> #define pud_present(pud)	1
> 
> Then the compiler will never even see the pudp_get().

Take care about macros with unused parameters, it can be a problem 
sometimes, see commit 05a4ab823983 ("powerpc/uaccess: fix warning/error 
with access_ok()")

Christophe


