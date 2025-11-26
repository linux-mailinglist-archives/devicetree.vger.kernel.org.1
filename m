Return-Path: <devicetree+bounces-242465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F236C8A8EA
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 16:13:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA0573AB5A0
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 15:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B6CC308F23;
	Wed, 26 Nov 2025 15:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvQkRN19"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A25303A1B;
	Wed, 26 Nov 2025 15:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764169986; cv=none; b=bIZ2Y3WCU+wA01URNIPpYuklflzwqbLj+p57ea6jv1AtnhzzRPsovHH+L3S9wv20Vbqk4x5pMoOrXREAKWVqbrS7iOLr54H4wSdWybQ8tenJ4NAPqEa97WLf8GGy4ducuKoKrjHz3n0YJWLHYvoaoEF2yldZHlD3re1CR10omaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764169986; c=relaxed/simple;
	bh=0u1o2KJFgGMlu+9bXPvNMO4fZcJG4zl5WGYFbdjOE0Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ge2PLjDeBkTMz0uj6yU2CF1IFYsYSqjv5kJ/MuJPa8mztdau/cNbTGeCxsYpV19oAFA0HC47GX1cTVccO4uC98UyRj0YUf01yLre4EPr/xc/bUe1zycYCGVm8lY9aElfl/3jqz9YxrSIERUAy2N0OY6bbrzwF9LlqXvAdeDuPYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvQkRN19; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7514BC4CEF8;
	Wed, 26 Nov 2025 15:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764169986;
	bh=0u1o2KJFgGMlu+9bXPvNMO4fZcJG4zl5WGYFbdjOE0Y=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XvQkRN19LTR69pvq2REcXFW4oZY2i6UXRWgCyQ+XMFsOHihwUBtRRoLFAqpzZh/7A
	 QSmA9b7gJXSongNcKgQRd0Tl81WGpeWnFPHPCE5XLU20g83tc9/LiFpPnla6RobhWK
	 7WJlJ68CBeBqZnbfDcilHelOkUJ0XgBa6yhQJsUpyY/AdVSi5b3JtEZV6jjvvo9rro
	 X6orAvcL9QSKPyIUJnbAqHNObN42cyYmzMr89w7Nu4SWB423xBfhJFOM6bKgasGFaD
	 N7TmXBm8NiGtSi1DuX0uaQ4PdUWXN3llZdwJ/rL/iuND4nZeCj68zfriwWrVUeIyRT
	 Yu5/d68RRECEg==
Message-ID: <a1d25bde-3ab6-46b5-a957-db80da7e737b@kernel.org>
Date: Wed, 26 Nov 2025 16:12:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/22] mm: Always use page table accessor functions
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: Ryan Roberts <ryan.roberts@arm.com>, Wei Yang
 <richard.weiyang@gmail.com>, Samuel Holland <samuel.holland@sifive.com>,
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
From: "David Hildenbrand (Red Hat)" <david@kernel.org>
Content-Language: en-US
In-Reply-To: <37973e21-e8f4-4603-b93d-4e0b1b2499fa@lucifer.local>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/26/25 16:08, Lorenzo Stoakes wrote:
> On Wed, Nov 26, 2025 at 03:56:13PM +0100, David Hildenbrand (Red Hat) wrote:
>> On 11/26/25 15:52, Lorenzo Stoakes wrote:
>>>
>>> Would the pmdp_get() never get invoked then? Or otherwise wouldn't that end up
>>> requiring a READ_ONCE() further up the stack?
>>
>> See my other reply, I think the pmdp_get() is required because all pud_*
>> functions are just simple stubs.
> 
> OK, thought you were saying we should push further down the stack? Or up
> depending on how you view these things :P as in READ_ONCE at leaf?

I think at leaf because I think the previous ones should essentially be 
only used by stubs.

But I haven't fully digested how this is all working. Or supposed to work.

I'm trying to chew through the arch/arm/include/asm/pgtable-2level.h 
example to see if I can make sense of it,

> 
> Anyway. I am now designating you the expert at this ;)

Oh no. :)

> 
>>
>>>
>>>>
>>>> IOW, push the READ_ONCE() down to the lowest level so the previous ones
>>>> (that will get essentially ignore?) will get folded into the last
>>>> READ_ONCE()?
>>>>
>>>> But my head still hurts and I am focusing on something else concurrently :)
>>>
>>> Even if we could make this work, I don't love that there's some implicit
>>> assumption there that could easily break later on.
>>>
>>> I'd rather we kept it as stupid/obvious as possible...
>>
>> Looking at include/asm-generic/pgtable-nopmd.h I am not sure we are talking
>> about implicit assumptions here. It's kind-of the design that the pud_t
>> values are dummies, so why shoul the pudp_get() give you any guarantees.
>>
>> At least that's my current understanding, which might be very flawed :)
> 
> I mean I'm waving my hands around like I'm working on an aircraft carrier here
> so if you're _sure_ it's _absolutely_ safe then fine :)

Well, not yet ... :)

-- 
Cheers

David

