Return-Path: <devicetree+bounces-242635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9CFC8D5B7
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 09:35:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7CEBD4E216B
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 08:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD3E331D39F;
	Thu, 27 Nov 2025 08:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgZwtp8T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84CE527F727;
	Thu, 27 Nov 2025 08:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764232546; cv=none; b=eodPhSDLd7B+MW7IC0uUJiEp5Cjs+WrlCvmqi/WJrZEexqhlRLFzZ+wVmYj1rmQ9a+lPM2VAVf9teM8IBBcJuOLAXb1wWrf1kqt10qmmKuUMSLqY4xczWm2Oo1tCV09SmK+fjjub6QiH51JNXUv1K6FPJ0LkxPv9gu2uCqwcUq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764232546; c=relaxed/simple;
	bh=qx0VZrdqJksxpKXVCVyXb4JAI2P5dCq0KsV9HbIKGek=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ltg3X7YddB6BvKa+Dqfv77AW9TRATPWYStLL35R0XR2mtusFlH00m2r9dB4NL/sL0i9ilrQlCU9MHLUw/W3j0HNXGeBrF2+Q8OGcSuKuXMq7a+ZGiORouCGHmg1LnQ9lLGfzgu4mBkQfuCrq9ut++PkIgN3uPKCrwm2PwJ42tbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgZwtp8T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E346C4CEF8;
	Thu, 27 Nov 2025 08:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764232546;
	bh=qx0VZrdqJksxpKXVCVyXb4JAI2P5dCq0KsV9HbIKGek=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JgZwtp8Tu+n8p3LaI0AsCxvsyQZRHcTfkmQ3l9GMb6+DsJHERvHrUAVvuNANZGssM
	 1M16aKThUv8pm2fpPqzK2E3IHdPvq+aq3wozuehRIzN/auBNvkuBrLr6jWjsAJGCMq
	 gKw7f/dbAyg/ijfp+HAJRn+vODfnzRDqa1NPE8PNzovArQpUEyQnNO9IlK9lVOFcaU
	 rIQPl3NMUd1o23B2Hqadw35UJ/5HrnWAquZp5u0emedD51lI/HoUp9yu7BgsLOvQ8k
	 XMwxnK1OciERhD8X2cpmZm/yFv7fG7M0DIasL3/JLatgVzgnVpA/FBj2y3iK0eiQu3
	 ClsmI9yWdvtIg==
Message-ID: <46ca641c-6a39-49e4-b1b2-23262841ecc8@kernel.org>
Date: Thu, 27 Nov 2025 09:35:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/22] mm: Always use page table accessor functions
To: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
 Ryan Roberts <ryan.roberts@arm.com>, Wei Yang <richard.weiyang@gmail.com>
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
 <a33b87ab-b24f-45d5-bd4a-646988b54a2b@kernel.org>
From: "David Hildenbrand (Red Hat)" <david@kernel.org>
Content-Language: en-US
In-Reply-To: <a33b87ab-b24f-45d5-bd4a-646988b54a2b@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/27/25 09:26, Christophe Leroy (CS GROUP) wrote:
> 
> 
> Le 26/11/2025 à 15:22, Ryan Roberts a écrit :
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
>>>>>>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.kernel.org%2Fr%2F0019d675-ce3d-4a5c-89ed-f126c45145c9%40kernel.org&data=05%7C02%7Cchristophe.leroy%40csgroup.eu%7C22d0a028b1ec4a8b678108de2cf73769%7C8b87af7d86474dc78df45f69a2011bb5%7C0%7C0%7C638997637481119954%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=ocR6usVgRHfue0MrtbQnDO8whINvy%2FDMAfNE3caiY8c%3D&reserved=0
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
> I think you can't assume pgdp_get() was already called, because some
> parts of code will directly descend to PMD level using pmd_off() or
> pmd_off_k()
> 
> static inline pmd_t *pmd_off(struct mm_struct *mm, unsigned long va)
> {
> 	return pmd_offset(pud_offset(p4d_offset(pgd_offset(mm, va), va), va), va);
> }
> 
> static inline pmd_t *pmd_off_k(unsigned long va)
> {
> 	return pmd_offset(pud_offset(p4d_offset(pgd_offset_k(va), va), va), va);
> }

I'll note that these (nesty) helpers only work when you know that you 
have folded page tables.

And that's why I am arguing that the pmdp_get() must actually be kept as is.

-- 
Cheers

David

