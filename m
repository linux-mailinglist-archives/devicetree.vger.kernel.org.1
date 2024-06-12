Return-Path: <devicetree+bounces-74781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D90B904835
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 03:15:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 177C6285A70
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 01:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C124219E;
	Wed, 12 Jun 2024 01:15:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F032AD35
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 01:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718154922; cv=none; b=TikNbEju++RtPRhTMeV+eMqq9ueF0RY5dsWGDy+fHfcaji9sk2mZbah8bEESFUsUgJNW7ZuLX2jqyqqrvKLcFg3x+0+LX7eGV3A8AWa6GrM8KtF41n7Hg0HXZqTPigAIVCTQcUSBjtQ0a2kJUEcc5+Y7zrLd2bHxZxuDMz3gapQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718154922; c=relaxed/simple;
	bh=KvXcdo3XOHMOxIMMl3JEaSt03y2EjrHcDHQy6n4Fnck=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PzkvlwOWwUYVYJ3LxXhhaMenW2orC3KS7eD0wghDRZXrwsjnJ8wy6n5Z8ELQ2qk+p0tzOoeY2Kd6wnDnNyJmrJmxUVtOjS1GzyWOWxVWoiK/xovcrPJmkxLjib4e3PZK1JxyejHpprkxo2VYWm4j1lNRgohy/0U6OGLyQOz3YBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp77t1718154838tmm3c9ui
X-QQ-Originating-IP: hzFwlcaF6A3ehe/ZfSkHF2KUdnPUxqRl4fZFJNOFJDo=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 12 Jun 2024 09:13:55 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17490978406212277040
Message-ID: <3BA71BD12E90A400+a882cc79-85c5-48c7-acb0-bb31f45c7b9a@radxa.com>
Date: Wed, 12 Jun 2024 10:13:54 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: make "poweroff" work on rock-5a
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240611122746.751-1-naoki@radxa.com>
 <f623e316c7f94a318c78da9c48f66dc7@manjaro.org>
 <bf202a47cc6453d5aaacf09a29009380@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <bf202a47cc6453d5aaacf09a29009380@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz6a-0

Hello Dragan,

Thank you so much for your reply!

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 6/11/24 22:45, Dragan Simic wrote:
> On 2024-06-11 15:37, Dragan Simic wrote:
>> Hello Fukami,
>>
>> On 2024-06-11 14:27, FUKAUMI Naoki wrote:
>>> to make "poweroff" command work, add "system-power-controller;" into
>>> pmic@0. without this, "poweroff" works as same as "reboot".
> 
> Sorry, I forgot to add that the description above could be reworded
> a bit, e.g. not to repeat what's already visible in the patch itself.
> 
> For example:
> 
>      Designate the RK806 PMIC on the Radxa ROCK 5A as the system power
>      controller, so the board shuts down properly on poweroff(8).
> 
> The patch subject could also be tweaked a bit, e.g. to refer to the
> board as "Radxa ROCK 5A".
> 
>>> Fixes: 75fdcbc8f4c1 ("arm64: dts: rockchip: add PMIC to rock-5a")
>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>
>> Looking good to me, with a small remark below.
>>
>> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
>>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>>> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>>> index b070955627be..cf7b878a3eb2 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>>> @@ -395,6 +395,8 @@ pmic@0 {
>>>                  <&rk806_dvs2_null>, <&rk806_dvs3_null>;
>>>          spi-max-frequency = <1000000>;
>>>
>>
>> I don't think there's need for the empty line right above, i.e.
>> between the "spi-max-frequency" and "system-power-controller" lines.
>>
>>> +        system-power-controller;
>>> +
>>>          vcc1-supply = <&vcc5v0_sys>;
>>>          vcc2-supply = <&vcc5v0_sys>;
>>>          vcc3-supply = <&vcc5v0_sys>;
>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

