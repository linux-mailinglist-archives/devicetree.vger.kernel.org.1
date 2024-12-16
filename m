Return-Path: <devicetree+bounces-131431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD279F3300
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 15:22:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DCF5D7A03E8
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 14:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C59292063C3;
	Mon, 16 Dec 2024 14:20:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgbr1.qq.com (smtpbgbr1.qq.com [54.207.19.206])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498261EEE0
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 14:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.19.206
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734358843; cv=none; b=s3dg9s1+2vqsqY2NczZOKczqeFo5PCrdX43kerAyyLm5Pf/Vk7MZFiqtty316ELTh0awoPKhwTK6/8Z4V+/B6AHZwCPByl6g18BFfyaPhiz0G6q966uHY4rSQTSIu/zRPv2Oq5xDYCLNwm6FOZOrlJv8RbrK7Q8WURF4eoLKST8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734358843; c=relaxed/simple;
	bh=qqVd8PjYR+p53VwNcT5s5nHzmt4R41d9MlorZeONEhs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CquYzEQfBXqNrLD4FTz1Iv86xx4xFKm6+piRrrpSnAkBxdCq9N7ubPzdbWcBL/FqXSRlJIqlep/iRgkQX7B0GUeUbJ77JMAaZWQCaWBzBpb5RpWD+SsXyYj35uBKRnuSU5oZlbTuNiq0iuqbnTkxqWMYNf9V3KP7dm/xJeOqqSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.207.19.206
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip4t1734358767tdjlx80
X-QQ-Originating-IP: /fCC4MATP0ZL2/mLhQ0HfNl5JloUob4VMJkL66r4qvA=
Received: from [IPV6:240f:10b:7440:1:f7da:fd82 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 16 Dec 2024 22:19:24 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17924903418608735060
Message-ID: <C6FD94DDF2E16CAE+22e3003e-0d66-4092-a9a2-def5daa6c202@radxa.com>
Date: Mon, 16 Dec 2024 23:19:23 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 02/12] arm64: dts: rockchip: Change node name for
 pwm-fan for Radxa ROCK 5C
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-3-naoki@radxa.com>
 <0b0efc1d-2340-4ec5-a46e-62a6cebbc2b6@kernel.org>
 <5707EE9715A7E332+f33721f1-8b50-4262-bdaa-468ad2c79ecc@radxa.com>
 <281bce4e-cec5-4ad8-940a-c9ef16202a43@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <281bce4e-cec5-4ad8-940a-c9ef16202a43@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OdKM2jcE40T2Mxw+WUBBPV5nS8cnquqG52eihEBmAC4USk9ssITrAMuO
	UCvHeJmPCauCLtECpa6TDQtSZYbJInZHmm5bjxGU4RQM87/5ZIVmbntZuQMl0IweQ6pJNad
	MS00y/P4GqZ8BGsU/QThb4mzlNbZ4VIS5f7YWRY4nrSzFcOcCLPSu6jVSmQ/61J568Kur0d
	r9V9G7aeSdQ2ozq6CsE90jqvcZ9ry6g1JiWs98/OalXxsp1nZBqC1mAG597a0PyRPrRoC/A
	LK8PEvGcaiSV9xJKOTP7N61T2x2a4UkV6ijcyHcjdlpHEWKD0YvXqcj4uS8gP7Q6usiUGwb
	zT0SFDz3VnFnO0fd0WAcC8n1qYEh4FLLQhjmbNooI3x6hmpUoKfuxGkRlWlTKcwfoWNVhSC
	dsO7sHG3fXJMYsNWHeSQokVYCRGtyeFBJ4NalZssRCdfYrqkpxhT1wlWqs48KFbkBVVjnTM
	BHhYZt07tHK3FRjHbcM7mNVDC3Kx2JQDbAMleK5OT+O4lDQgwmKkj7zksNa/anA/L3A7TcZ
	p/lUkruIgfxEFecqVRoGoTH7JD1LhRUijFMxR6BYfIdd+thfjdbKchhoJ8TXPk6jEyn28W0
	H/botQDAopUQ8yroOayZJcPX1Qix9h7UtenZeX2ks1gAZ3PCt15qN2ppLh2TkTQBxQidRxT
	JKiHBt0mhTfyvFFxMH52XH8boi2weKkBMnjCAzZLvgUiXb67a/jcyCoAc5ohEUjlQ9tiwhF
	AHb7m4QBUh4filzuz6Vhji4Bt2o6XjvEEWxcpvuZXmRzL0PuarBStkS8hQzxoln006heqe1
	YPlj8kncDZDWwdhjSp4dhCx77OYtqg3m13erwhpStPyTzMNOMSn11ws8IGQBRfl5ZjDb2F1
	40A0f9hoAKfezCoUdhX8m0DILGjIRCL3UHsYGn7QA6DAxCt58m/Ew6rMwbvfv76khQIIRr0
	If5f39DMc0l2O5XwzQnxrG9q4CZ2weMesGH/TumPrhEeu7/y4ijS/I/WH1zFbad0tU10CMg
	zOYohkHcCDC8CAt6Wq8T/yv0SKFr0=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0

On 12/16/24 22:56, Krzysztof Kozlowski wrote:
> On 16/12/2024 14:48, FUKAUMI Naoki wrote:
>> On 12/16/24 22:37, Krzysztof Kozlowski wrote:
>>> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>>>> Use more common name "pwm-fan" for pwm-fan node. No functinal change.
>>>
>>> No, generic name is fan.
>>
>>    https://lore.kernel.org/all/71aa84af7a030e66487076e0976c8cad@manjaro.org/
>>
> And? That's incorrect advice.  There is no such device as "pwm-fan".
> There is a "fan" and whether it is pwm or gpio it does not matter.
> 
> See DT spec and generic names recommendation.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/hwmon/pwm-fan.yaml#n67

Is it wrong?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 



