Return-Path: <devicetree+bounces-238497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 32989C5BC8E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 08:29:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5E1DB4E1A7C
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 07:28:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1A612F291D;
	Fri, 14 Nov 2025 07:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoGd0uR6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 993ED273D9A
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 07:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763105323; cv=none; b=bH1Sq3MJ+mH1cKdhu0/xbQgHgSkCHt/cuaePFupt/lmvZK4twf3l3NuaQJ61HMom4ppvi5AbH6lVP9RPG/Eh+7KrGMwA6OShaRixPjUMXhd+gv1kXebiIUITNyyAW42IP5A5YBaOurv4lAriSuKd5HVZzz7GHgiMgAgamaScZfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763105323; c=relaxed/simple;
	bh=2wfOSeYWqkrtfdCKyxxuH1LjgdmfJmq4Obbl9t+7vBU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R73IfBPYUVRIYi7q15Y3xShVD3Hup951jLCiy8e8tDU6D5BxFar1PlUDk6EBciI5V1DAw3o+bNyT+K/dSaM1YygSDJxy869SuZsMnECuPAOOAG4xDIV18esyejD8ar5dvtsdqqCF30+7l7CAC4V9UB2x1xGGJJSgcFbgypuM0HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoGd0uR6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9294EC116B1;
	Fri, 14 Nov 2025 07:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763105323;
	bh=2wfOSeYWqkrtfdCKyxxuH1LjgdmfJmq4Obbl9t+7vBU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NoGd0uR6mTOeLjr17rie8IGCBuNwyOe4pG89WWwm5dBmmHw6z35K7Kt9bloM+QjEl
	 ngl94baogZ9LJ1/kWW6LofiWxk4Fud33yBpGNg4vMVaMGc3nruio7ZbxHAoms4RbaO
	 ShGKuWiHywr9ZcaN0gxWAISnfaS79Ja83i3jo33Dt4QfxyTjFDOvT2eWaWo0UY19mB
	 9VqNE4C25NlTWC44kaA4qoN5dnyOGnqf1iy25P8F7s0aAWLPsXvItn+SRlx/2n9B9j
	 OlkQV+JU3bQ5Xxchc66MrG3d3TsFkvPU7USWgdyXC0D1SSzmdp04wZgHmekATBM2kx
	 uH8tpEcgEOrAw==
Message-ID: <67ccca04-b59d-4e22-a0fb-22b19378420d@kernel.org>
Date: Fri, 14 Nov 2025 08:28:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: Dragan Simic <dsimic@manjaro.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, Joseph Kogut <joseph.kogut@gmail.com>,
 heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonas@kwiboo.se, kever.yang@rock-chips.com, honyuenkwun@gmail.com,
 quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
 <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
 <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
 <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
 <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org>
 <F02BA2E6B1111826+2445b38d-b5e0-499c-83e7-4521c57b2210@radxa.com>
 <f2bc30de-119b-4f4a-844a-8a908c9290b6@kernel.org>
 <49c39864-3e58-2e0e-7abc-50502f2afb02@manjaro.org>
 <7ed7d24a-5395-429f-b999-1374ac910441@kernel.org>
 <cab16f94-4115-a606-60b4-043b6681f7ab@manjaro.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <cab16f94-4115-a606-60b4-043b6681f7ab@manjaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 14/11/2025 08:26, Dragan Simic wrote:
> On Friday, November 14, 2025 08:22 CET, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>> On 14/11/2025 08:17, Dragan Simic wrote:
>>> On Friday, November 14, 2025 08:10 CET, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>>> On 14/11/2025 06:03, FUKAUMI Naoki wrote:
>>>>> On 11/12/25 09:46, Dragan Simic wrote:
>>>>>> On Wednesday, November 12, 2025 00:26 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>>>>> On 11/11/25 23:33, Dragan Simic wrote:
>>>>>>>> On Tuesday, November 11, 2025 12:52 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>>>>>>> On 11/6/25 02:48, Joseph Kogut wrote:
>>>>>>>>>> On Wed, Nov 5, 2025 at 4:15 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>>>>>>>>> I'd like to clarify the situation regarding the v6 patch series I submitted.
>>>>>>>>>>>
>>>>>>>>>>> The original device tree work for the Radxa CM5 and IO Board was
>>>>>>>>>>> authored by Joseph Kogut. I took over the responsibility of getting it
>>>>>>>>>>> upstreamed with his agreement.
>>>>>>>>>>
>>>>>>>>>> I'll confirm this. I've been in communication with Naoki. They made a
>>>>>>>>>> large number of revisions to my original patch series, which I think
>>>>>>>>>> have technical merit. I suggested they submit the patches themselves,
>>>>>>>>>> and gave them explicit permission to add my Signed-off-by and CC me.
>>>>>>>>>>
>>>>>>>>>> I assume this was the correct way for them to continue the work I
>>>>>>>>>> started, but if not, please let us know the best way to proceed.
>>>>>>>>>
>>>>>>>>> Can anyone help us?
>>>>>>>>
>>>>>>>> I'm not exactly sure how to resolve the current situation, but for
>>>>>>>> Signed-off-by tags to be present, in this case you'd need to have
>>>>>>>> Co-developed-by tags as well, because the final patch versions,
>>>>>>>> which would be submitted by Naoki, would differ significantly from
>>>>>>>> the versions that Joseph actively worked on, if I understood
>>>>>>>> everything correctly.  Though, for Joseph's Signed-off-by tags to
>>>>>>>> be included there, he would also need to participate actively in
>>>>>>>> the development of the final patch versions.
>>>>>>>
>>>>>>> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by
>>>>>>>
>>>>>>> If
>>>>>>> ----
>>>>>>> From: Joseph Kogut <joseph.kogut@gmail.com>
>>>>>>>
>>>>>>> <changelog>
>>>>>>>
>>>>>>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
>>>>>>> Co-developed-by: FUKAUMI Naoki <naoki@radxa.com>
>>>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>>>>> ----
>>>>>>> then I can submit my patch series?
>>>>>>
>>>>>> Actually, the Co-developed-by tags would be pointing to Joseph
>>>>>> in that case, but as I described it above, this approach basically
>>>>>> cannot be used, because Joseph's original work differs a lot from
>>>>>> what you'd actually submit to the mailing list(s).
>>>>>>
>>>>>>> Or,
>>>>>>>
>>>>>>>> Another option, technically a bit simpler, would be to include just
>>>>>>>> Originally-by tags for Joseph, which would indicate that Joseph gave
>>>>>>>> up on the development of the patches and handed them over to Naoki
>>>>>>>> for future development and submission to the mailing lists. Though,
>>>>>>>> that would require Joseph to publicly state exactly that.
>>>>>>>
>>>>>>> I cannot find any documentation about "Originally-by".
>>>>>>> Is this correct?
>>>>>>> ----
>>>>>>> <changelog>
>>>>>>>
>>>>>>> Originally-by: Joseph Kogut <joseph.kogut@gmail.com>
>>>>
>>>> There is no such tag. Don't invent tags.
>>>
>>> True, it doesn't exist officially, but it's been used fairly often.
>>>
>>>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>>>>> ----
>>>>>>
>>>>>> That approach is the only I see applicable in this case.  However,
>>>>>> let's hear opinions from other people as well.
>>>>>
>>>>> I see. I want to do this approach.
>>>>>
>>>>> Joseph, could you give me a statement to do this?
>>>>
>>>> Use standard authorship and standard tags, some of which are explained
>>>> in Submitting patches.
>>>
>>> Frankly, your suggestion is useless, because it doesn't explain what 
>>> to do in this particular case.
>>
>> Maybe because you did not read the doc...
> 
> I think you already know the answer: I read it multiple times and 
> used it as a reference more than once.

Then if you read it and saw my objection to inventing tags, you could
guess that only first solution for patches with changes coming from
multiple authors is allowed. Also you would find from that doc, that
patches which were not changed - like in this patchset - must be
attributed to single author followed by SoB. So both cases nicely
explained. Pretty simple once you remove the invented tag option,
because it is really unnecessary.


Best regards,
Krzysztof

