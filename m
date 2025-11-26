Return-Path: <devicetree+bounces-242560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 682F7C8BE22
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 21:36:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E05673594B1
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 20:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADDC1342CB6;
	Wed, 26 Nov 2025 20:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b="e98aQG4m"
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A291116DEB0;
	Wed, 26 Nov 2025 20:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764189358; cv=none; b=fGBw7nblfSZWvQr2E+KKprNb5HPJTMTzV/nL9EMtGHppyhCy6mt8FQOb5VEHr+x9TtDQvHjm0DHZ1oXwCdRveRSVOtv2KjR4RBAfnOzAl6SVv3JTgA46mKdIcdqKJZBA3Z6yHPL/Dv3sOqeJBr4zB4L3j54ZZes/llugBj67AyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764189358; c=relaxed/simple;
	bh=PWBb7YBqqVrepHeAXbn6qUNzohgHoNY+kclc0LC0W2g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EheflHoj1XwD6BUMtOsbkp92Odo283dix6CaNet73RVij1VTerQ6tvCkunl6NZT5dsFK/4Bxy1JHCww7668PCnDDyxf0Uh68nUgwkDkpckOHga8GnnS1rXbzAgWHl35IKsMtpz30nWFFzaYeE4bmE7TI2DXvVVvs/5Mt4AFCwV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=e98aQG4m; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1764189303;
	bh=izXh+/ex/S8HOJXHsJcERBFQl/fmMLPe+sQvN1oeXII=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=e98aQG4mS/zX/LytJxg3IMJngS/y/yyxBUbLogwjdgmEpF0YDcDZnU5orSfS02L58
	 RBoFI6BSUrD4/dny3V/wNvIpp3PsJwa8tb739UNjlp77RQFaVP1lUQYTIxe362QsrK
	 bF4RbIT/Hdxi8uJWwV2Ux6FleMBbz9RXvoShtvm6FfK0cqyfn4aC6BzAh77sDISTnD
	 tyaRU+UcuFRmwSrGHDRdBvrieKiE/XUCA0ROBydyL9LXhnJ3tfRF0UBk5voWYvYpEM
	 NRtwAkooocUX8XxUld+go8rCGdRpb8R9lFa5pNoAxlkbpeNB23M67UpY7PMLP+hy/Y
	 tVSkPe/VIaXzQ==
Received: from [192.168.2.54] (unknown [98.97.63.250])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id A99DFB2214C4;
	Wed, 26 Nov 2025 21:35:00 +0100 (CET)
Message-ID: <e4aa0839-1b2e-46a6-a33c-94d0da4922bd@freeshell.de>
Date: Wed, 26 Nov 2025 12:34:58 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: riscv: starfive: add
 xunlong,orangepi-rv
To: Conor Dooley <conor@kernel.org>
Cc: Icenowy Zheng <uwu@icenowy.me>, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Michael Zhu <michael.zhu@starfivetech.com>,
 Drew Fustini <drew@beagleboard.org>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
References: <20251123225059.49665-1-e@freeshell.de>
 <20251123225059.49665-2-e@freeshell.de>
 <20251124-free-bandicoot-of-skill-fa7d9a@kuoka>
 <20251124-state-campsite-3e7788a495c1@spud>
 <0e851ca0-1f56-437d-ae14-094c114d3b77@freeshell.de>
 <dc48fa76-0a08-4c9d-a3d7-724eb255aff8@kernel.org>
 <ff1f0e6b95150896136ab31ce13e0a2c7a3a5fe3.camel@icenowy.me>
 <489e9d44-fac6-4aa8-b094-ef20196e392b@kernel.org>
 <0a2104faee332ee143b5499c18aea3625971156c.camel@icenowy.me>
 <fb9ca9fd-1591-4e43-b055-b6ea8d55a42a@freeshell.de>
 <20251125-borrowing-arming-9c256497af8f@spud>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <20251125-borrowing-arming-9c256497af8f@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit


On 11/25/25 11:14, Conor Dooley wrote:
> On Tue, Nov 25, 2025 at 05:07:00AM -0800, E Shattow wrote:
>>
>>
>> On 11/25/25 00:01, Icenowy Zheng wrote:
>>> 在 2025-11-25星期二的 08:48 +0100，Krzysztof Kozlowski写道：
>>>> On 25/11/2025 08:33, Icenowy Zheng wrote:
>>>>> 在 2025-11-25星期二的 08:28 +0100，Krzysztof Kozlowski写道：
>>>>>> On 24/11/2025 22:59, E Shattow wrote:
>>>>>>>
>>>>>>> On 11/24/25 05:22, Conor Dooley wrote:
>>>>>>>> On Mon, Nov 24, 2025 at 08:28:10AM +0100, Krzysztof Kozlowski
>>>>>>>> wrote:
>>>>>>>>> On Sun, Nov 23, 2025 at 02:50:44PM -0800, E Shattow wrote:
>>>>>>>>>> From: Icenowy Zheng <uwu@icenowy.me>
>>>>>>>>>>
>>>>>>>>>> Add "xunlong,orangepi-rv" as a StarFive JH7110 SoC-based
>>>>>>>>>> board.
>>>>>>>>>>
>>>>>>>>>> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
>>>>>>>>>> Signed-off-by: E Shattow <e@freeshell.de>
>>>>>>>>>
>>>>>>>>> <form letter>
>>>>>>>>> This is a friendly reminder during the review process.
>>>>>>>>>
>>>>>>>>> It looks like you received a tag and forgot to add it.
>>>>>>>>
>>>>>>>> It's from me, don't resubmit just to add it since it'll be me
>>>>>>>> applying
>>>>>>>> anyway.
>>>>>>>>
>>>>>>>
>>>>>>> Hi Conor,
>>>>>>>
>>>>>>> Okay. Yes I'd dropped the tag since the commit message is
>>>>>>> appreciably
>>>>>>> different, and you would be handling it again anyways. Thanks!
>>>>>>> And
>>>>>>> thank
>>>>>>> you Krzysztof for the reminder -E
>>>>>>
>>>>>>
>>>>>> And where did you explain that you dropped the tag because of
>>>>>> that?
>>>>>> Please read the form letter carefully.
>>>>>
>>>>> Well I think there's no clear definition of "the patch has changed
>>>>> substantially" here.
>>>>>
>>>>> E may think for this such-short patch, the commit message weighs a
>>>>> lot
>>>>> and the change to it is significant to the patch (e.g. making the
>>>>> patch
>>>>> not clear enough).
>>>>
>>>> You still did not bother to read what we expect. I do not discuss if
>>>> this changed significantly or not, although it is obvious that it did
>>>> not change and tag should have been retained.
>>>>
>>>> Look again:
>>>> <QUOTE>
>>>> Please read:
>>>> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
>>>>
>>>> If a tag was not added on purpose, please state why and what changed.
>>>> </QUOTE>
>>>>
>>>> Where did you explain that?
>>>
>>> Sure, I agree that explaination of this should be delivered.
>>>
>>>>
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>
>>
>> Krzysztof,
>>
>> The submitting-patches document does not support your assertion in this
>> situation. I evidently have a different understanding of than you, as
>> when I read it before sending the series I did arrive at the action of:
>>
>> 1. Acked-by is less formal and so it is a matter of opinion and
>> judgement whether to retain it or not. I choose not to here due to
>> changes visible in the commit log (the commit messages and titles). I
>> would let Conor decide if they will acknowledge the revised series
>> instead of making that decision for them.
> 
> If anything, acked-by being "less formal" would mean that it's more
> resistant to chances in the patch.
> 

That is an interesting "read between the lines" opposite meaning of
formality than what I understand it to be. I'm making my internal mental
note, weird, but okay.

>> 2. I am not required to mention the drop of any Acked-by tag in the
>> cover letter for this situation. Conor is handling this series so I do
>> need to participate on the mailing list when there's a question or
>> comment about picking up the lack of Acked-by.
> 
> If I were you, I would pretty much always mention the reason for
> dropping tags unless the changelog or cover letter contains some pretty
> drastic changes between versions thereby making it really obvious why
> the tags are gone.

Sounds good to me and I will comply. I did infer this from the initial
form-letter reply by Krzysztof that something had run afoul of norms. No
problem for me to explain my understanding so it can be worked out what
needs to happen, and so thank you for the clarification. This was not
the time-saving noise reduction I intended for.

-E

