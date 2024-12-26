Return-Path: <devicetree+bounces-133983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D189FC706
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 01:42:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A71D1883027
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 00:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30B4A36C;
	Thu, 26 Dec 2024 00:42:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg150.qq.com (smtpbg150.qq.com [18.132.163.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503293D66
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 00:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.132.163.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735173774; cv=none; b=UwrpY8yEm5/GrTdW8CFTKjzQjQyLt+r5Ws3whV2YURxSgjvlx3jQItdXr1QbEJiW3gXnMrXtiunk2HWjX2FtinIiRlWZUV3Va/rJ4tRgYmmbn6CaPcRUcwyYULH2+OwuOYbG3RpjVe44j4UwZYGG/MH1s8IF5WjBRz0pltnQVnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735173774; c=relaxed/simple;
	bh=O1BXCQ/145f4vgR8+/z9uC8wxbTsxx1LpIe7p/ONNSA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GgacGunJcAln+5McuKie9ZXQcqhEM97XQt3lo+g2+q7KQ7JujrXU2YGrhecx9dXwaMBD7gJG2ZxyvFfvzszCq3txTe9VzJLsUOn5oLslrGPwyJdfFtNeP65qHAgq2n66CFALLT48xiSqGwZS3lXQb83Qa2Izj8Kpto2vUm4R/TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.132.163.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip4t1735173695tiwqr0c
X-QQ-Originating-IP: 79ZxKSJvoqeVWDbeizzyhVD9v3D8Jb2HG7ib6aonO0U=
Received: from [IPV6:240f:10b:7440:1:d8d9:4d7d ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 26 Dec 2024 08:41:29 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8662033335659054945
Message-ID: <8D3886B0B9726004+4aa129f3-0141-4b62-8566-3e0971a617ca@radxa.com>
Date: Thu, 26 Dec 2024 09:41:28 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add Radxa ROCK 5B+ and rebase
 Radxa ROCK 5B
To: Dragan Simic <dsimic@manjaro.org>
Cc: Alexey Charkov <alchark@gmail.com>, heiko@sntech.de, robh@kernel.org,
 conor+dt@kernel.org, inindev@gmail.com, liujianfeng1994@gmail.com,
 jonas@kwiboo.se, dmt.yashin@gmail.com, sebastian.reichel@collabora.com,
 tim@feathertop.org, kever.yang@rock-chips.com,
 marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, michael.riesch@wolfvision.net,
 macromorgan@hotmail.com, krzk+dt@kernel.org
References: <20241224210912.2121-1-naoki@radxa.com>
 <CABjd4YxLnays9Ho0bDR0pTyz5Tjx3C=0U6bcRdQ8ntyu68VVGg@mail.gmail.com>
 <4FAC0C844CFF6787+c12ba0e7-c1da-4fe7-aa0f-79340b9ff81a@radxa.com>
 <28cff8b07bc271da3672076b32f13b44@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <28cff8b07bc271da3672076b32f13b44@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: Nlna3a5R+peuVEC16lOge95pS6u/wvEyKDlSESZkz9h3Sm2GX3Bgrt89
	7Bbg2vmYJ3QVF6Zm44y+FS4O/fbCjzQfwBjwF9GfwumoFoH/yPyTtFHB45fCFXOxrV49VWC
	SXN3AUyNAY7qMLb35Wv8uTmWraPNdy+xmU0xG3VEKrVOLERY08oGjauYrRA0X61O3M8R6vD
	6rXxDYN9EM3blanVS3EkeAHJ2PrVHiVEMuXLj2ChL1eibhF3IENr/j2RndGIqedtoqcC8X3
	CpjJrGXjRcnD2PkEMYr+lLFAeEblhiWwW3PpMuaxEAniO5b1lTuwDjGKfZq8QjGhMuBIafN
	V9atsCQ6NBR0F8Mz3AD0psObAn1vFIKlWxHTmzVSiLniHITRWRJqYHqAhY8d9pJU6ynXG71
	NlqfmUXlQNLycPAZM0q1ksRoLiP04p9xzehDEREZ7ZYXnmKrI6O4UMvvAybyaZfDBqBZcZl
	ux0WBUxo/0wEnG17Kl88kh4m/C+DTPY1Lu66pJSL58SwhgsX9ZCAvOk8IsyexN95yxen2Nf
	ccKf6j+DuRnDtw5LBP/JlXhVYEnPhVJf7EA9NFszJ8Jie4QD54Lt+IvDno1wLuBC1b+gU+1
	srcxeg3IIesc22bLCMqkCXTnCQ/CwXC2TJVJc+2YjsldgYT8GTxfmTN+GgPiY9IwhDyqCQQ
	tRKvGY6ULKbwE9XyFhqmTlLkMeR+j1CozAEGYw97JZz3qhtsa2/kkbKx++4zP16/hyNvrqt
	ulQCbuuO8MPC5i6EI1ZsrPrL2rTg2xTEYlaWjIxG93VdeWdjwFZKceBB8U212DsKjxWEaRw
	5gPdmCoT2M+3bd0szvPcUHKDNWdmWdzAKE75Q17UsKYachiIJ4tdvSo5iQfk2iuGQCCAp4Q
	2oZC+pjXYZPoLZLCmcy0iwQ1sENIPTGuD6tzYG5+83iAZ9pb3L5yVGicN/wx8BrG
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0

Hi Dragan,

On 12/25/24 19:25, Dragan Simic wrote:
> Hello Naoki,
> 
> On 2024-12-25 11:09, FUKAUMI Naoki wrote:
>> On 12/25/24 17:32, Alexey Charkov wrote:
>>> On Wed, Dec 25, 2024 at 12:22 PM FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>>
>>>> The Radxa ROCK 5B+ is an upgraded version of the Radxa ROCK 5B.
>>>>
>>>> This patch series introduces a shared .dtsi that can be used on the
>>>> new Radxa ROCK 5B+, the existing Radxa ROCK 5B, and the upcoming Radxa
>>>> ROCK 5T.
>>>>
>>>> This patch series includes "arm64: dts: rockchip: Add USB-C support to
>>>> ROCK 5B" by Sebastian Reichel[1].
>>>>
>>>> [1] https://patchwork.kernel.org/project/linux-rockchip/ 
>>>> patch/20241210163615.120594-1-sebastian.reichel@collabora.com/
>>>>
>>>> FUKAUMI Naoki (3):
>>>>    dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
>>>>    arm64: dts: rockchip: Add Radxa ROCK 5B+
>>>>    arm64: dts: rockchip: Convert Radxa ROCK 5B to use shared .dtsi
>>>
>>> This one doesn't look equivalent to the existing ROCK 5B device tree
>>> after your changes (I've noticed in particular that fan cooling levels
>>> are different - but that's just the part I remember well since I
>>> modified it earlier, there might be more differences).
>>
>> Thanks for pointing!
>>
>>> Would you mind rearranging the patches so that the split of ROCK 5B
>>> dts into a common .dtsi and per-board .dts additions could be made
>>> one-to-one equivalent without functional changes, and then add ROCK
>>> 5B+ and any other required changes on top of that?
>>
>> My priority goal is to add support for ROCK 5B+ and 5T. This time, I
>> will not make any changes to ROCK 5B so as not to break it. Therefore,
>> I will drop PATCH 3/3.
>>
>> (I would like to make changes to ROCK 5B at some point.)
> 
> I see, but I think that just dropping the patch 3/3 wouldn't be the
> best possible option.  That way you'd end up with a "dangling" dtsi
> file, used by just one board dts file, which is a bit suboptimal.

So please ignore this patch series until I can add ROCK 5T, which will 
be available soon. (Maybe...)

I'm sending v2 due to a small fix, please ignore it.

> I'd suggest that you actually do it the right way, so to speak, by
> actually converting the ROCK 5B dts file to use the shared dtsi file
> in a way that makes the transition more obvious and, as a result,
> easier to review, as already suggested above.

If I have enough time to fix the ROCK 5B dts, I will do it.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> As another option, I'm going to ask Radxa for a sample ROCK 5B+ board
> soon, for my Rockchip SoC binning project, and if I actually get it,
> I could take over this series, to help you that way with getting the
> patch series in better shape.



