Return-Path: <devicetree+bounces-238454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AD1C5B5B7
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 06:04:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E73723B9F16
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 05:04:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49B0B21D596;
	Fri, 14 Nov 2025 05:04:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgbr1.qq.com (smtpbgbr1.qq.com [54.207.19.206])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C768414A60F
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 05:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.19.206
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763096646; cv=none; b=I4FHJTaP29nOFSQ1QsrgUVDZwEdZBfEFJz8NbHY/n72Drw28Ozxx+/XWttk0EvB7/u6oq4EVRGg1QKehbELadEKAoQRiyO6pRl00a3WvSkNfERHejWDif8faXeR4mj89Q92wOhkl5iadYuwcEmhX4n76gZce8aTbRyEpT+8iTK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763096646; c=relaxed/simple;
	bh=bP+xD+xY5PAWUIfSAZPFyGMkBdHuC39oeaR+rivC0ag=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=stm/CxDZ0Rvk6S52nHBln1/Mj2c/6a//A0AOasMxZOi28lxkmXTQcIKbpLAnHAlprLyDRIfg7C8odu8Y30sEO4PSduy4FlyMM0HNQREBytqxsJDdVdUrVVTQCjvWO1JHBnOkHSFtz2Nt8rhmcYgI8mtkr3smPCKrM+DaZqyJNTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.207.19.206
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1763096603tf54f4cf2
X-QQ-Originating-IP: yXxhx67R4Ql4rWCq44yALQ92mPTELLKqhVcUOtbJ4uI=
Received: from [IPV6:240f:10b:7440:1:1ea:c5f5: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 14 Nov 2025 13:03:20 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14970421709941988866
Message-ID: <F02BA2E6B1111826+2445b38d-b5e0-499c-83e7-4521c57b2210@radxa.com>
Date: Fri, 14 Nov 2025 14:03:20 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: Joseph Kogut <joseph.kogut@gmail.com>, Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
 honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com,
 amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
 <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
 <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
 <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
 <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NCDk2ZLQrX9GpwuJao7ZFTlIzCwIFQGF/GOa2HB8fyReF6DsQaAWD0cV
	6cVrxmOuMpG6AYETOQqF/502x+BZRoNBpJfMTijteaFfaDl3hXOQBmQgwaIi0ztZl1b6/2Y
	xL9HX4JjKKlw4iyQ2vu7BsZPIDNR5e4OOoAgoyxczw7xnD2CIcoCUszI5CR5Z6/LowTfV53
	NYqTrjndpSJZ4lMpmKnMBOPRFNmRGr2a2gIOqHEVTfJha7Ry9SHDBqkx/mCQPhmIa+uVDnS
	e7oNF0+Fe26fQYoIAkQDpDgwo0umNj/vpunVpXoQ09Tpbd8o4KqmEwJdgo/QGsAasGgFX0w
	vndO3PvnuEREIL0pwWk2JVKfuwWJ1pFn60AZ9GO+4E6WYfyuzoNvT8D/TaTD52IGfl5QOfb
	KM4bAVIo2cWTfQUIrJ6uN8rcBL8Jc38k8q0sKGwnxF90Yzwi36bYlp5YeFWnpXJgL0XE1MD
	+WRFuSKxGH7CDHxSoIXVRbOxQUGneOhwiLR6uZn278AD9rKo8aPDWOtKgWxqnexSh+bbRuk
	6XXYzuaku9iQDyClrtHOkzLNnAtkL0a3mc4xXTgd0jTcRfnGBVMP10cdm2ZdlB/z9URcxHm
	CAbaBaI6c8OUH8mBSr5Kf77Qd7Z8v8iuy9RPEkzlR1CHsAOtJskQ8rqwuUNqL+Qu3VT/ZK1
	U3VZSBSVSMr+44K/JZSwwXNvY2EWnhK79/0W+RgUsA5xKozDa5p5/IhFb9vpuvdzC4PEP3d
	S1GPQe+4ho1CzPOJoJNAFMrj3fMCwj6ZNH181Jv49/pQLPz9J+XQAAwUxrU3dmbLxfruJnb
	/yN9T7ofdFhAoRgyEk6hFoK/+IRnApzDOjUmys3C7vxPOOEQezaPBGGozmA0htdWYpCKC8p
	mkq83z7+cNdiN/CyOaulrTgHdqjmSoNVqEkU2Ct3gv81Ne+0WPtxRJuzoOTjmvKGFzMBXUq
	ivlqwm2JBHZc6ft5FwCss+QJ+QNkTKz5h0u210/0ZKa2Ld86VlJ0FVpTwkUbA/OgRAjeq/Z
	dUrwPFPwW3xMVJlhzKLAKLrGWNOzFSLnNM26V2fGjvbMIAsg+j
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0

Hi Dragan, Joseph,

On 11/12/25 09:46, Dragan Simic wrote:
> Hello Naoki,
> 
> On Wednesday, November 12, 2025 00:26 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>> On 11/11/25 23:33, Dragan Simic wrote:
>>> On Tuesday, November 11, 2025 12:52 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>> On 11/6/25 02:48, Joseph Kogut wrote:
>>>>> On Wed, Nov 5, 2025 at 4:15 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>>>> I'd like to clarify the situation regarding the v6 patch series I submitted.
>>>>>>
>>>>>> The original device tree work for the Radxa CM5 and IO Board was
>>>>>> authored by Joseph Kogut. I took over the responsibility of getting it
>>>>>> upstreamed with his agreement.
>>>>>
>>>>> I'll confirm this. I've been in communication with Naoki. They made a
>>>>> large number of revisions to my original patch series, which I think
>>>>> have technical merit. I suggested they submit the patches themselves,
>>>>> and gave them explicit permission to add my Signed-off-by and CC me.
>>>>>
>>>>> I assume this was the correct way for them to continue the work I
>>>>> started, but if not, please let us know the best way to proceed.
>>>>
>>>> Can anyone help us?
>>>
>>> I'm not exactly sure how to resolve the current situation, but for
>>> Signed-off-by tags to be present, in this case you'd need to have
>>> Co-developed-by tags as well, because the final patch versions,
>>> which would be submitted by Naoki, would differ significantly from
>>> the versions that Joseph actively worked on, if I understood
>>> everything correctly.  Though, for Joseph's Signed-off-by tags to
>>> be included there, he would also need to participate actively in
>>> the development of the final patch versions.
>>
>> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by
>>
>> If
>> ----
>> From: Joseph Kogut <joseph.kogut@gmail.com>
>>
>> <changelog>
>>
>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
>> Co-developed-by: FUKAUMI Naoki <naoki@radxa.com>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ----
>> then I can submit my patch series?
> 
> Actually, the Co-developed-by tags would be pointing to Joseph
> in that case, but as I described it above, this approach basically
> cannot be used, because Joseph's original work differs a lot from
> what you'd actually submit to the mailing list(s).
> 
>> Or,
>>
>>> Another option, technically a bit simpler, would be to include just
>>> Originally-by tags for Joseph, which would indicate that Joseph gave
>>> up on the development of the patches and handed them over to Naoki
>>> for future development and submission to the mailing lists. Though,
>>> that would require Joseph to publicly state exactly that.
>>
>> I cannot find any documentation about "Originally-by".
>> Is this correct?
>> ----
>> <changelog>
>>
>> Originally-by: Joseph Kogut <joseph.kogut@gmail.com>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ----
> 
> That approach is the only I see applicable in this case.  However,
> let's hear opinions from other people as well.

I see. I want to do this approach.

Joseph, could you give me a statement to do this?

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> By the way, what you called changelogs in the examples above is
> usually called patch descriptions.  When they become merged, they
> become called commit descriptions or, sometimes, commit messages.
> Using the standard lingo usually helps. :)
> 
> 



