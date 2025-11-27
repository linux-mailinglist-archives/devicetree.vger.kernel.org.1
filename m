Return-Path: <devicetree+bounces-242858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FD1C900E8
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 20:48:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D7E614E9675
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 19:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 531A030CD81;
	Thu, 27 Nov 2025 19:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHhD/aQh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2950230C371;
	Thu, 27 Nov 2025 19:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764272666; cv=none; b=Gqnp3GUhEJ9rW/PCeI5uCtvApP3SJ/jux9THTVfvnM/CGIlAISEq3cxMhNF++ToAeG8bMZhJVmWqQMncsal6z1f9Fau2YhLPgHEOYeIspEXWnJBjCYLKqSPKn4jTsqlapUJM2rR6Ns5plpx8grUd4fJxYO/xZ9lcVenqIPna7y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764272666; c=relaxed/simple;
	bh=2FTP2tPXd1GWQFRneLLYDqFrpGOgQxqB103gyOVSA4k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DQWTv5KVe4sPY1RjDtvRFF4nvzjboEwJic9QM2wUOjcTIFB0/gHR51C07GnXNFprF24Z1R+olIu9huFXnvuhOUZOSyqC4UUeqKQmIxQu7eDfHHwt2+KgJNFFReJvXcfX3vP8jocdphX9lDusDLomeQmIZB3f3XX1+Q6nG25rQT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHhD/aQh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DF0FC4CEF8;
	Thu, 27 Nov 2025 19:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764272665;
	bh=2FTP2tPXd1GWQFRneLLYDqFrpGOgQxqB103gyOVSA4k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DHhD/aQhOyARXtDI0hb53vOA6x8+UUybsf+r7ell6SNfujszItV4w+dfeFIi0VVvp
	 SfUh8H3uoek+9MTu+QV4uvODoSpGySXi0o6d5frjsPAj15Of1utMh7nsvJb974rQD6
	 F4niZwOZzwHFDuJtR/LiKuHlg7eHU7BRGLvv18H42Kw9FviKkVKPvJALmGQ/V+VhNO
	 Gdb9h5b6Acg/uJQzdygl3tGNU7KMzqs4YfOU3R9/nzYTx1T8Fo7IgVylHkbTf2yBLR
	 qH2rfGWT4eDqkPvd+NlC1Xr49i1FAUs47DzrgHd5fldJ4zKIhqGNc++3zPYYD4TB9K
	 fox1xbw6MnYrQ==
Message-ID: <f27429f3-9dd8-4006-b2d8-702436ade805@kernel.org>
Date: Thu, 27 Nov 2025 20:44:16 +0100
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

What about adding a memory clobber to the non-volatile asm ? Compiler 
shouldn't move the asm section in that case.

Christophe


