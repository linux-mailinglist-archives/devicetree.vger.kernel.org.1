Return-Path: <devicetree+bounces-117272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E35289B5C1A
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 07:57:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A6872281836
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 06:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E88EB1DA617;
	Wed, 30 Oct 2024 06:57:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7141D9A47
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 06:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730271467; cv=none; b=N4D2gq4Fsj/COjgqbWWYj0DUQ5E9bFUaFVHJHcrWFJ0HXoykhOK06kISyIvWHbZsOvZ/R6NjQZ5vT6hdTWp/Bbkmo0O1oAI4HUobsTsD1RWp0kH1PDOw2jf+QmrTEdforS+TBxDA2TipxyGaJUkymCYTu4ooICGvtwXrMLpajtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730271467; c=relaxed/simple;
	bh=Af+rYfRl0w6Rw7eMsd4LGgSDqqts23t4L4nxVVDGSu0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hgAasL2UrTLCRr3+te4y4Z0lJYtrp/Bw8I6G80eVfygZDkamKII7418HaQ6/7IkI8pDfHnSG3RLse8tZbVP5KEvMf8trp/I/5zUoGZtvYaOjgI1yXTUkYd0jXNr1rurF9jec11nlT2r6s/r9TOY+FPd7mipBavZNPn9lmbLOVjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip3t1730271398tosmee8
X-QQ-Originating-IP: HYPucG35j92Rx/gYRVc91fYMW7X2Dz/rbJNQGFnK5tA=
Received: from [IPV6:240f:10b:7440:1:2231:c46: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 30 Oct 2024 14:56:33 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 207981743245967855
Message-ID: <C05BCF5E4F84451F+e29f0311-b245-4c3a-a9eb-0f8a7ef3c3d6@radxa.com>
Date: Wed, 30 Oct 2024 15:56:33 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: use "pwm-leds" for multicolor PWM
 LEDs on Radxa E25
To: Krzysztof Kozlowski <krzk@kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240816110402.840-1-naoki@radxa.com> <2335200.ElGaqSPkdT@diego>
 <5667DC6446CBC344+3d442915-f28d-4d50-85e3-3863e3c7092a@radxa.com>
 <6f9994b3-d16a-4bfa-aaf8-ce1c5abde91b@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <6f9994b3-d16a-4bfa-aaf8-ce1c5abde91b@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: Nwz8Cs33/LprWeYpsbhHmuJX5rMTG6YZq25lhNA7P9Hzqgqedwh77bPb
	X8SzO5oA7I7xQ3VBicEMZGR7X4zV+NTyuQUCJy/+Impg2TE9LobvWTV0obpwN8TPeHxJYPk
	5xpHqQA4uuwo1Hat7FRcNFO0LE3Vda0uBdsGjXW37jJWLT87xJML9G4GPbVVsXNnfDssNnM
	DR3XAgTTeg78NX9B1iTYE0wsos/muOd61wCjW81UsZr1/Tl2/AbKeInaERqaDF0j6mN2eAX
	UXipjFK1CtZeWvG6cbNnCWb6fZhifyeuvFk0PeEPrOPeKwUhzk02icVt3ko6KhlnWAF39/D
	fhYSzNSftiGfl4PA82jtYHIGYAm8Qtz7/1mT3AfhVGguMxrPe/whpHLF/o406xJ5RsmBpJ4
	V/3CZytRFQw0JMe2nGV9qvJn1WDhUlPulZ/VxSfVICEbhY4vdKl0xZ8mEhxmg2IALP9cx7A
	N/uFTK32GhZLKuaVYZRdXpKOWbvPolvYDFGW1ff3eqTqPFkSOs4JSoJkYRvr+o2+UrG5uwV
	bgjnl6PwGjtzS4lgletrTQyjGLG+KZ83Zr93Wth45juJvR+jJhfhpQuAB6uK/YCmgLRUdgS
	0osNWNgXk+iPuz/a1r2+H/RN5GgpRabgpTzxsNr2LcHXrbMJDPiIP4IR/GQ9YcQBRKfaxPl
	FDeGRf+Ha6kkqYQHEu9vO+ZEbaFs7qOMqJQ3b+UZxlHfJjbNPktkLbUoU5TQLPVc8comsic
	IAPL+bK5TxfpHbQa+f7IY+G6xmwV6DaalgNmYjYygxwGzWYPb0gM1lb0SP+nkZQOFwVLF2M
	H189RfNYl5szF3aePvBE7qcZRAeulYB8zXNUVQFqXLEnXtMV0sMX5H3dpCKYNAwE1/3K4Na
	M65dXFgWSek5Xb3bX6y9B4xhSTCjJpVOI4Qf/LPphvqxqploax998fF9TalWjmtCHvTmx1+
	b0bk=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0

Hi,

On 8/16/24 21:25, Krzysztof Kozlowski wrote:
> On 16/08/2024 13:57, FUKAUMI Naoki wrote:
>> Hi,
>>
>> On 8/16/24 20:26, Heiko Stübner wrote:
>>> Am Freitag, 16. August 2024, 13:04:02 CEST schrieb FUKAUMI Naoki:
>>>> to make multicolor PWM LEDs behavior more consistent with vendor
>>>> kernel[1], use "pwm-leds" for it on Radxa E25.
>>>
>>> sorry, but that is definitly not a valid reason.
>>
>> I see. I'll not change it.
>>
>>> A devicetree does describe actual hardware and is not a space for
>>> configuration choices. So that whole notion to "match a kernel"
>>> is not correct.
>>>
>>> Looking at
>>> https://wiki.radxa.com/Rock3/CM/CM3I/E25/getting_started
>>> the specification table clearly designates the board's LED as
>>> "RGB LED" - so one LED and multicolor .
>>
>> I understand following behavior is not possible on mainline.
>>
>> https://github.com/radxa-pkg/rsetup/blob/main/config/00-rgb0-rainbow.conf
>>
>> this is not what we(Radxa) want, but we need to follow the rule.
>>
>> (btw wiki.radxa.com is outdated, it's not used anymore)
> 
> Your Radxa vendor kernel and whatever you have *MUST* align to the
> upstream, not the other way. The upstream is the correct source of doing
> things, not the other way.

could you tell me how to make rainbow color effect with 
"pwm-leds-multicolor" driver?

as far as I know, "pattern" trigger can change (only) brightness, not color.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof


