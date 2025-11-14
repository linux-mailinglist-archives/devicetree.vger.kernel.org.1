Return-Path: <devicetree+bounces-238597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 10154C5CA14
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:40:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B5D444F48AF
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 873BC31282C;
	Fri, 14 Nov 2025 10:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnoqS+MV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60994312808
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763116265; cv=none; b=SeykfqywnrTB/zrYb8gQdavqZa2TW1RgqS9cIJ36F4v1kZRV3PQfrbWjY+xSyPQDKQ+5AF2mDfUwmrDqr7AJSqId9xpAJJYI+CERjqLXcRjwif3YEDFdlRiXG/p+AEBxu6FSMB7anjWq/V0Zha8IxNl8SwbhKVvfTe3OfLUDmgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763116265; c=relaxed/simple;
	bh=XcLb0Pkr7Wtl1rUAEO8Toa2ADaRB8mTcjUnYhfD0PKM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tiXJ82fB+DjLJENpTBGnv1RsQ17Ddwqk5ziIJM1sLwThFHxDQhbc+RdBq6a4k/x5NG1vFYMV5A/StEEI8wp5hD90eSb3fwI7TPXzELaQKZSCq2Gfcgrx+1gKns04TotpqrVT9yZzTtgfVDbsHQu3kewzbywSNOPnMnlc0jSi7s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnoqS+MV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B427CC19421;
	Fri, 14 Nov 2025 10:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763116265;
	bh=XcLb0Pkr7Wtl1rUAEO8Toa2ADaRB8mTcjUnYhfD0PKM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AnoqS+MVybFD0zmVLgTfNFH2mihkg6ModeBI3XQq6CYGS0IevVKYazmYJvMN7PpYZ
	 hHxIQDTquFiyTzItg/uzeVR2+blyJZvz964jJj4mfGxK5uDPsUwQ1Kks3yyXNc0DzZ
	 SaG5OIZIzkf8oq001an5LamWo/TuOPBBqBjYzal8NeFU9t+SaYfFCu2tEjKs18c9ry
	 x8meaCzixrBkpNmPrRw4xR1kMO49mxQFAGtyQ0mMSQm3ZPcwlZmVyyz1mVKTWF8sas
	 0eEKPpjJYiSAs7vivobvOdaC0r8NtYIEc25lz0AoxrECk7KdXEm+ADTSwFmIKk4BYy
	 AAtZrB2T6wsEA==
Message-ID: <5b58dda8-af68-41cd-af23-ec48bfc11d79@kernel.org>
Date: Fri, 14 Nov 2025 11:30:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
To: Dragan Simic <dsimic@manjaro.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>, joseph.kogut@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com,
 quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <A3AD69295D2E2D65+db2dc8bd-054f-4dda-9dd1-3cc0c0feed35@radxa.com>
 <194908a1-f956-ba0a-656f-7b1e8456b51d@manjaro.org> <1942576.CQOukoFCf9@diego>
 <21ea3b50-6000-5202-49cf-685310e6fa18@manjaro.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <21ea3b50-6000-5202-49cf-685310e6fa18@manjaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 14/11/2025 11:12, Dragan Simic wrote:
> Hello Heiko,
> 
> On Friday, November 14, 2025 11:08 CET, Heiko Stübner <heiko@sntech.de> wrote:
>> Am Freitag, 14. November 2025, 09:32:29 Mitteleuropäische Normalzeit schrieb Dragan Simic:
>>> On Friday, November 14, 2025 09:24 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>> On 11/14/25 16:51, Krzysztof Kozlowski wrote:
>>>>> On 14/11/2025 08:47, FUKAUMI Naoki wrote:
>>>>>> On 11/14/25 16:42, Krzysztof Kozlowski wrote:
>>>>>>> On 14/11/2025 08:37, FUKAUMI Naoki wrote:
>>>>>>>> Hi Krzysztof,
>>>>>>>>
>>>>>>>> On 11/14/25 16:12, Krzysztof Kozlowski wrote:
>>>>>>>>> On 05/11/2025 08:08, Krzysztof Kozlowski wrote:
>>>>>>>>>> On 05/11/2025 07:57, FUKAUMI Naoki wrote:
>>>>>>>>>>> On 11/5/25 15:43, Krzysztof Kozlowski wrote:
>>>>>>>>>>>> On 05/11/2025 06:13, FUKAUMI Naoki wrote:
>>>>>>>>>>>>> Add device tree binding documentation for the Radxa CM5 IO Board.
>>>>>>>>>>>>>
>>>>>>>>>>>>> Link: https://dl.radxa.com/cm5/radxa_cm5_product_brief.pdf
>>>>>>>>>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>>>>>>>>>>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
>>>>>>>>>>>>
>>>>>>>>>>>> Wrong DCO chain.
>>>>>>>>>>>>
>>>>>>>>>>>>> ---
>>>>>>>>>>>>>      Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>>>>>>>>>>>>
>>>>>>>>>>>> NAK, you just stolen ownership of an already posted patch.
>>>>>>>>>>>
>>>>>>>>>>> Read "Changes in v6" and patches; my patches are not the same as v5.
>>>>>>>>>>> Your reply is totally inappropriate.
>>>>>>>>>>
>>>>>>>>>> Inappropriate is taking authorship of someone's patch, because we all
>>>>>>>>>> expect to preserve the original authorship. That's not only basic
>>>>>>>>>> decency but actually a standard.
>>>>>>>>>>
>>>>>>>>>> Additionally, read Joseph's reply that he wants to continue the work:
>>>>>>>>>> https://lore.kernel.org/all/CAMWSM7iHtAxewW4JkRqRsifVnccqeFviaCgeOyprKDr92FOurg@mail.gmail.com/
>>>>>>>>>>
>>>>>>>>>> You clearly do not understand how to continue with someone's work.
>>>>>>>>>>
>>>>>>>>>> It is still a NAK.
>>>>>>>>>
>>>>>>>>> And I still wait for justification why you took authorship of this
>>>>>>>>> patch, because to my eye you changed here nothing.
>>>>>>>>>
>>>>>>>>> So what did you change HERE that you think you are the author now?
>>>>>>>>
>>>>>>>> Changes in v6:
>>>>>>>> (Patch 1/3)
>>>>>>>> - Fix description; "Radxa CM5" is the correct name
>>>>>>>
>>>>>>> HERE, in this patch. Don't paste me hundreds of unrelated code. Write
>>>>>>> concise and precise answers/comments.
>>>>>>
>>>>>> https://lore.kernel.org/linux-rockchip/AE0735A6C797CCFF+10496d73-7c0a-4884-9561-24721305a24f@radxa.com/
>>>>>>
>>>>>> | By the way, at some point I switched from "continuing your work" to
>>>>>> | "recreating a new one based on my current work." The results of my
>>>>>> | current work(*3) have changed significantly.
>>>>>
>>>>> So next time I will take your patch, your code, say "I recreated it" and
>>>>> submit under my authorship and for you it is fine?
>>>>
>>>> Regarding CM5 patches, I'm fine.
>>>>
>>>>> Please take Joseph's patch instead. Read submitting patches doc to
>>>>> understand which one more tag has to be added when sending somoene
>>>>> else's work.
>>>>>
>>>>> In the future, I sincerely suggest avoiding re-creating people's work
>>>>> but building on top, because you just duplicate the effort.
>>>>
>>>> I understand that you don't understand how I made efforts to build my 
>>>> work on top of Joseph's patches.
>>>
>>> Maybe a solution for this huge mess could be that Naoki submits
>>> unmodified patches from Joseph first, using the standard procedure
>>> for that, and then the additional patch(es) that improve Joseph's
>>> work?  All that in the same series.
>>
>> There is also Co-developed-by as an option.
> 
> Ah, that's what the above-described option #1 involves, but it also 
> raises some possible concerns, described in one of my responses. [1]

There are no concerns to be raised. Please read DCO. The original author
GAVE certified what is necessary, thus any person taking this work
already can you that certification. You raised some uncertainty "I'm not
sure how fair is it for someone to become responsible" which is just not
right here. It is completely fair and completely correct from DCO point
of view, because the certification was already provided. Also from
certification point, there is no "weaker" form. Either you certify or not.

Best regards,
Krzysztof

