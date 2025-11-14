Return-Path: <devicetree+bounces-238533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C4CC5C175
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:52:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A77CC356CA9
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 08:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 205F32F90D5;
	Fri, 14 Nov 2025 08:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="g0Bf0ERy"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F632DCBF8
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 08:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763110312; cv=none; b=Zo6DCAkWs9oEHlezalkS+BoFim74yxfrfJv0dFIHEQXJS0GK0HArDPeD8aaAX35nFqJpYfdR89fwISiNzASst4C0KLzWcfLfu7xGwu83C6YX6aKswGrDwQ6B4pOuNZtRrqI/D3z4idFq7WoP7kAwV7ztkMiGGsaXOGjkowAXhwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763110312; c=relaxed/simple;
	bh=2cIaTZmwBhyo30iA8poaViORtmijEWrAhSREERF2GME=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SDL1t5MBT60Chp2AfMnjIHzNHA7O7LTMGIAEGkylBHGRCHsWkOfIvJYPAiIpVSQqzmMxdzgSeJB/CPvxjjOG/GKGkh9SnOfdQnVuZk6Mma52+FCsO6tSxnJ03yJbwLGCH418NFJ306mXy5rnOcgPVnYtJzIOBTewwN0Nalq9uDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=g0Bf0ERy; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1763110307;
	bh=2cIaTZmwBhyo30iA8poaViORtmijEWrAhSREERF2GME=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=g0Bf0ERyBGBBEb7XJendqVYVeTdYklCIUn77Ujw+oGlcC6/otJSSYsA82WfL3Hkzw
	 TO3CO6g6S5sxDs+V5quxKNC+H02gLrq3K2y+ZBTIjJim+q1cThLveLp3RUefFoZ7pw
	 qNoqLrTBbKuornUVrcafT8iiVBr82zZ9kcCVqfKlpl6hoDa0/Pb1yNAkBlKIxjdTy7
	 ImBsfi1YnAU1Piyjj+lkQsbiJxWKOOrlaq41v8eQzv0bzaImVSmsXEO1kuy9V1Dks6
	 ncdzf1l4BXEjzzoKVJcvttT8S4d+gGX185GjL5FK4c7b7mRV5DPcksqZ9BRIxceJma
	 uOFPh38526fYw==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C002D17E0B46;
	Fri, 14 Nov 2025 09:51:46 +0100 (CET)
Message-ID: <f156cd48-d764-43c8-99ed-24ab212d8eee@collabora.com>
Date: Fri, 14 Nov 2025 10:51:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: Dragan Simic <dsimic@manjaro.org>, Krzysztof Kozlowski <krzk@kernel.org>
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
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <49c39864-3e58-2e0e-7abc-50502f2afb02@manjaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 11/14/25 9:17 AM, Dragan Simic wrote:
> Hello Krzysztof,
> 
> On Friday, November 14, 2025 08:10 CET, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>> On 14/11/2025 06:03, FUKAUMI Naoki wrote:
>>> On 11/12/25 09:46, Dragan Simic wrote:
>>>> On Wednesday, November 12, 2025 00:26 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>>> On 11/11/25 23:33, Dragan Simic wrote:
>>>>>> On Tuesday, November 11, 2025 12:52 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>>>>> On 11/6/25 02:48, Joseph Kogut wrote:
>>>>>>>> On Wed, Nov 5, 2025 at 4:15 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>>>>>>> I'd like to clarify the situation regarding the v6 patch series I submitted.
>>>>>>>>>
>>>>>>>>> The original device tree work for the Radxa CM5 and IO Board was
>>>>>>>>> authored by Joseph Kogut. I took over the responsibility of getting it
>>>>>>>>> upstreamed with his agreement.
>>>>>>>>
>>>>>>>> I'll confirm this. I've been in communication with Naoki. They made a
>>>>>>>> large number of revisions to my original patch series, which I think
>>>>>>>> have technical merit. I suggested they submit the patches themselves,
>>>>>>>> and gave them explicit permission to add my Signed-off-by and CC me.
>>>>>>>>
>>>>>>>> I assume this was the correct way for them to continue the work I
>>>>>>>> started, but if not, please let us know the best way to proceed.
>>>>>>>
>>>>>>> Can anyone help us?
>>>>>>
>>>>>> I'm not exactly sure how to resolve the current situation, but for
>>>>>> Signed-off-by tags to be present, in this case you'd need to have
>>>>>> Co-developed-by tags as well, because the final patch versions,
>>>>>> which would be submitted by Naoki, would differ significantly from
>>>>>> the versions that Joseph actively worked on, if I understood
>>>>>> everything correctly.  Though, for Joseph's Signed-off-by tags to
>>>>>> be included there, he would also need to participate actively in
>>>>>> the development of the final patch versions.
>>>>>
>>>>> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by
>>>>>
>>>>> If
>>>>> ----
>>>>> From: Joseph Kogut <joseph.kogut@gmail.com>
>>>>>
>>>>> <changelog>
>>>>>
>>>>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
>>>>> Co-developed-by: FUKAUMI Naoki <naoki@radxa.com>
>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>>> ----
>>>>> then I can submit my patch series?
>>>>
>>>> Actually, the Co-developed-by tags would be pointing to Joseph
>>>> in that case, but as I described it above, this approach basically
>>>> cannot be used, because Joseph's original work differs a lot from
>>>> what you'd actually submit to the mailing list(s).
>>>>
>>>>> Or,
>>>>>
>>>>>> Another option, technically a bit simpler, would be to include just
>>>>>> Originally-by tags for Joseph, which would indicate that Joseph gave
>>>>>> up on the development of the patches and handed them over to Naoki
>>>>>> for future development and submission to the mailing lists. Though,
>>>>>> that would require Joseph to publicly state exactly that.
>>>>>
>>>>> I cannot find any documentation about "Originally-by".
>>>>> Is this correct?
>>>>> ----
>>>>> <changelog>
>>>>>
>>>>> Originally-by: Joseph Kogut <joseph.kogut@gmail.com>
>>
>> There is no such tag. Don't invent tags.
> 
> True, it doesn't exist officially, but it's been used fairly often.

Hmm, actually this tag seems to be documented, or at least given as an example:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/maintainer-tip.rst?h=v6.18-rc5#n309

