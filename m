Return-Path: <devicetree+bounces-237369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B7350C502A5
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 02:02:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1727834C152
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 01:02:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F44D220F29;
	Wed, 12 Nov 2025 01:02:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg150.qq.com (smtpbg150.qq.com [18.132.163.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9EC2220F5C
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 01:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.132.163.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762909319; cv=none; b=mNDhvXyYaOcH7jfQCsVpSteV7xjeI273YR/bw1jFR6sHOZYqGI1UQm/XC1vK41KYNgVuhtDasNfNIGK+vzar9J16uPD1chTWzD83EN6aJSIfDAsJKn4g3Di6xRh6d1Hl6eN/hAngsSZZKn+lWMoM/ApJWQO9oOIKOQYLtatWyv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762909319; c=relaxed/simple;
	bh=ktx1C4BNDy2T3I430HlWO6IkFGoOg98mDrZ/KQCANkc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GsfHUc7KK4Qrph9CIz+cMhYzRfRM0gUPuMiDgFIl2J0kSEs1xbwbnNDw/nCO4GNd4sqftWhy79ARmjBP/ACG9NU5to4Qzcrs1+Zf4URrEdj4N9O+5verncOwTptc4NkxyFmqhfMf6OT1tQmnXPm1eqJ4uEdsf2F5xSWBnSTvw1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.132.163.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip4t1762909284t0ecad46c
X-QQ-Originating-IP: +PVpuR+pgj8F8fJiAgCS6btYuv2YbTk8iFN/foljanw=
Received: from [IPV6:240f:10b:7440:1:16e6:e9c9 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 12 Nov 2025 09:01:20 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 5829268747696676124
Message-ID: <EB08CB02156A172D+abf42f17-09e1-40ea-9369-eca481d230a6@radxa.com>
Date: Wed, 12 Nov 2025 10:01:20 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: Dragan Simic <dsimic@manjaro.org>
Cc: Joseph Kogut <joseph.kogut@gmail.com>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, honyuenkwun@gmail.com, quentin.schulz@cherry.de,
 pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
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
X-QQ-XMAILINFO: ODmRr9XAsEUIkpiG1jlbSi+GLIgbeIBK+ELxggU4eSMJUj1UwC6XMpcG
	3cPHXQC+oYxU9TZXp+bfjD9By3tW6xEMJm8yxPbrdG2hAVuMmHHMcxAxD8XXrxasBrLfibB
	7m8azso+IE3ZrYd2B4K8gzdaYzeMffmkSFPHBP0bE+kwfU4rTwjLEm/j1DxAqKZPNzGfoYH
	XGF2tcEV2DAliPigrDSk3lumD6WXLx+tMBorWvRQMoa9v6NAmXfHy1pMdtTpDm5HL1L/bnw
	Fsw0+Q2M45Abmdlyd9MOVPY7tjtZfqrBnN1/w196eV+WV3uPooUDQ4K95+RQLZBmlAgdwh2
	r9XVtznp1GAPNwiiAQvIRoJaGZtz7MA0dJusZbSWxhupaawqmILYQDAvtVutWx7Ee1/SO9Z
	YFlZFTAD4BVWQ95sH0E5e88iJ10fs4+9m8iIv3Wt3+pO95Hb7nsqHUPp3FDE4x71TPUEoA2
	4XE8QrTZdR8o8bsJ3g2sHJkaLOtyOl58SCcqPTcgAlwtIPa7SVOgiSLweRA6CpdZA3x/ehh
	RguU7CEh/+yQ2+ka+MDsF3o7rXzz7SRNSlIUHD9b7zx4dEVN1g6L/mhqc8vfFniMgdI0/WS
	nqKbrOiz+jwJ+XEgDWK4Uac9taLdDhLgYrfpzT3adhb13BlWVF0r6bvRXQMnybnxO3x2KLH
	8XneTd/7FlKnLAaueLR96Un+PYclBrlzwvzlXYWP5LsFudT+19+0jL5bICGCbOydfJQVj3P
	7/sKWEusayC/wISBsxyefGyCCHn/orNW2l9zl8ryi8Px3tK9UQAq7/wr1Nr09x+UttfDGMG
	W/P9ZwYP4fIBVWudjWU2G6JYhvmKKzitiogJa80d2tHMxwTsvvAy7Au56plKMfqkZpqLkun
	N0ZprM+gVvzZAQP2va/g2kZ2xQPuSoZVwIUeOKnlKWNakvmgqe25R93A5voo4tIXU6BQs/x
	DTtzjHUni5TBxzz75pib+vE0Eqg3mcKJVKafIg1b9uNaNCqvIE5SwkRZXZKhJvfn/SrPpSL
	5ugM3zxg==
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0

Hi Dragan, Joseph, all

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

Thank you very much for your advice.

So I want to hear Joseph's public statement and the opinions of other 
people.

> By the way, what you called changelogs in the examples above is
> usually called patch descriptions.  When they become merged, they
> become called commit descriptions or, sometimes, commit messages.
> Using the standard lingo usually helps. :)

Ah, it comes from
  https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by

Should it be fixed? ;)

Best regards

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.


