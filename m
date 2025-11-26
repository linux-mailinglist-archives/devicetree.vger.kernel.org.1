Return-Path: <devicetree+bounces-242484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3393AC8AD43
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 17:08:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8C73B4E24D2
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 16:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B53833BBC4;
	Wed, 26 Nov 2025 16:07:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05BC133CE81;
	Wed, 26 Nov 2025 16:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764173252; cv=none; b=e8b42pqVtHk9VJOCfLSErEJ7UYJ66LC9u4SY5sXBN/Ye7WkL4Jl6f4xnmqehsawiW6VNrNHr2UpYH22idYFBUtZCdfTVS0E47ETbpWAeMVNIvSvbgX3wdK1Q1oIrIKRnrmqbNNOi1E+J2a+RHBj6jHEdIt1R5Zo8HEtAb5xVvdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764173252; c=relaxed/simple;
	bh=D5u21sgtki/irD2XESXFalufjgS/F69R9LlqZDg31ZE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fVdYa72jzM6qQox6ptNeP34OPBreYEsZ4geF3hlLd8i+/2BBYuTclC1Rl3DmqQ2lrIYs/lt0djorva2FCPnxpYkuPgrCeDJdRJIpz8rkT6dg3CHyybRwXpo6pRtg+FcLG4gwTiA2Z33bLlVXnsgauvwuBzjDazS3NeFGZqzywQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B9C41692;
	Wed, 26 Nov 2025 08:07:20 -0800 (PST)
Received: from [10.1.33.153] (unknown [10.1.33.153])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 051ED3F73B;
	Wed, 26 Nov 2025 08:07:24 -0800 (PST)
Message-ID: <4505a93b-2bac-4ce1-8971-4c31f1ce1362@arm.com>
Date: Wed, 26 Nov 2025 16:07:23 +0000
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
From: Ryan Roberts <ryan.roberts@arm.com>
In-Reply-To: <a1d25bde-3ab6-46b5-a957-db80da7e737b@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/11/2025 15:12, David Hildenbrand (Red Hat) wrote:
> On 11/26/25 16:08, Lorenzo Stoakes wrote:
>> On Wed, Nov 26, 2025 at 03:56:13PM +0100, David Hildenbrand (Red Hat) wrote:
>>> On 11/26/25 15:52, Lorenzo Stoakes wrote:
>>>>
>>>> Would the pmdp_get() never get invoked then? Or otherwise wouldn't that end up
>>>> requiring a READ_ONCE() further up the stack?
>>>
>>> See my other reply, I think the pmdp_get() is required because all pud_*
>>> functions are just simple stubs.
>>
>> OK, thought you were saying we should push further down the stack? Or up
>> depending on how you view these things :P as in READ_ONCE at leaf?
> 
> I think at leaf because I think the previous ones should essentially be only
> used by stubs.
> 
> But I haven't fully digested how this is all working. Or supposed to work.
> 
> I'm trying to chew through the arch/arm/include/asm/pgtable-2level.h example to
> see if I can make sense of it,

I wonder if we can think about this slightly differently;

READ_ONCE() has two important properties:

 - It guarrantees that a load will be issued, *even if output is unused*
 - It guarrantees that the read will be single-copy-atomic (no tearing)

I think for the existing places where READ_ONCE() is used for pagetable reads we
only care about:

 - It guarrantees that a load will be issued, *if output is used*
 - It guarrantees that the read will be single-copy-atomic (no tearing)

I think if we can weaken to the "if output is used" property, then the compiler
will optimize out all the unneccessary reads.

AIUI, a C dereference provides neither of the guarrantees so that's no good.

What about non-volatile asm? I'm told (thought need to verify) that for
non-volatile asm, the compiler will emit it if the output is used and remove it
otherwise. So if the asm contains the required single-copy-atomic, perhaps we
are in business?

So we would need a new READ_SCA() macro that could default to READ_ONCE() (which
is stronger) and arches could opt in to providing a weaker asm version. Then the
default pXdp_get() could be READ_SCA(). And this should work for all cases.

I think.

> 
>>
>> Anyway. I am now designating you the expert at this ;)
> 
> Oh no. :)
> 
>>
>>>
>>>>
>>>>>
>>>>> IOW, push the READ_ONCE() down to the lowest level so the previous ones
>>>>> (that will get essentially ignore?) will get folded into the last
>>>>> READ_ONCE()?
>>>>>
>>>>> But my head still hurts and I am focusing on something else concurrently :)
>>>>
>>>> Even if we could make this work, I don't love that there's some implicit
>>>> assumption there that could easily break later on.
>>>>
>>>> I'd rather we kept it as stupid/obvious as possible...
>>>
>>> Looking at include/asm-generic/pgtable-nopmd.h I am not sure we are talking
>>> about implicit assumptions here. It's kind-of the design that the pud_t
>>> values are dummies, so why shoul the pudp_get() give you any guarantees.
>>>
>>> At least that's my current understanding, which might be very flawed :)
>>
>> I mean I'm waving my hands around like I'm working on an aircraft carrier here
>> so if you're _sure_ it's _absolutely_ safe then fine :)
> 
> Well, not yet ... :)
> 


