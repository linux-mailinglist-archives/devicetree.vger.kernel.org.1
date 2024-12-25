Return-Path: <devicetree+bounces-133924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA1C9FC4BE
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 11:11:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83FC216229A
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 10:11:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 394FD156F4A;
	Wed, 25 Dec 2024 10:11:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg151.qq.com (smtpbg151.qq.com [18.169.211.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC05413211A
	for <devicetree@vger.kernel.org>; Wed, 25 Dec 2024 10:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.169.211.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735121473; cv=none; b=EhhP4eyNmmfJJdUKo4pl4QmeISIX/gsWCffu+belFhbT+xs8FydV1ZtT3pnY/c9ooGKUNVcYmV29ajVCXd6JdlHhXoTDT/MUj9a/JB8cLUMIMHvT5ZyXrkp92wcWy0nYqOwt7ohZraAWVgrgd+rLXbW3m2xOXpxa12+DDYYCtoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735121473; c=relaxed/simple;
	bh=oi9Hmv1RyYEImL8kKJW6xxAW/IwBLYERqansZ05cbf8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e5xYXLMgHIXBJV1RvVeZfMulhwDsFe+EIGFT6aTYrjw/4pqEHuOhUIKiA1TcQLsbsQJPSZjBzq+oO8cMpaClXs+8ngWmxKo4iqRqK0V10uWzpYtgZSIJ4c0AsHq4BqzmZhhggNmP7qdfid2Qo8i+9ahyyvyhw4oYk5gxZD4y2go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.169.211.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip2t1735121387tkwd6g2
X-QQ-Originating-IP: emESMqMKvjO+IcNFlbeJQJBnooD3qynZfOnK8JPR8iE=
Received: from [IPV6:240f:10b:7440:1:44cd:ada9 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 25 Dec 2024 18:09:42 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 11688568092456734613
Message-ID: <4FAC0C844CFF6787+c12ba0e7-c1da-4fe7-aa0f-79340b9ff81a@radxa.com>
Date: Wed, 25 Dec 2024 19:09:41 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add Radxa ROCK 5B+ and rebase
 Radxa ROCK 5B
To: Alexey Charkov <alchark@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com,
 liujianfeng1994@gmail.com, jonas@kwiboo.se, dmt.yashin@gmail.com,
 sebastian.reichel@collabora.com, tim@feathertop.org,
 kever.yang@rock-chips.com, marcin.juszkiewicz@linaro.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 michael.riesch@wolfvision.net, macromorgan@hotmail.com, krzk+dt@kernel.org,
 dsimic@manjaro.org
References: <20241224210912.2121-1-naoki@radxa.com>
 <CABjd4YxLnays9Ho0bDR0pTyz5Tjx3C=0U6bcRdQ8ntyu68VVGg@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <CABjd4YxLnays9Ho0bDR0pTyz5Tjx3C=0U6bcRdQ8ntyu68VVGg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MxijBxVjjH5DYEpn2I7kLj1e1qndFvK+cWaj6O5qplQMQcSQnetLIteI
	1Cl8UaTzc0JW3g547Qh/IcO577ATbgWnOXNJWisqCAo9JfJV5Y4c3OP/eRXLmqIQnDyjkwo
	rInJp1qyomh0amFmW2rn4LAQ7abOA7lRGruNXlIr70tCWSgf+rQyWgG+oztJbXg4kXDqAK5
	5R80weH9RAAhyZUgm/XzYAr0eUpK6unoAdI1I3k/tRSgSnFFQmNFbCfAk0aCMvVnLr6cNIh
	w+dFxHITByJ+GGbBEXh2TQoJfmifwBVx7a8wFo0q0e905v7ugYb25aP5CLVDe9OSZoLayC0
	gTzHa+X8Q6at4PgOU1ZD3SEhuk32UtmhB4KnPL8dP2QdSXw7amrWBvBBb9fv4iI3WqHvw4R
	ShWOfJYhH3lyT5BqaG8Rn2VttqiAdbgkRLodvy8WHO9zu2Sb5i6+T2XaVWwqKVPAgbuDbfq
	qr/h2s/yAb/VN9vZm5718mjFKZVxLt6BF+cArg4DPMK1a1aXoYBlHZ149kp4s8MNb77E5b9
	VTt29Ee4WNNbWkctWgAJSVr6YpAn4O3HhovW+UPUO0jpZo4LjOSv+DhuXsSEQirh4SycoQw
	G37LatyLsjp8h0sS5KRoT9+06+6yNJKDHWVnHGMsnpExRB7hiKhw7n7H+x0nsFrQeNfliWj
	48RXG8SrTQwIfocnbIfWDr3EulbAI310JHcP8dOKpj1Yo1rxLiylzjC8dyHBtHgBg//DMKP
	kqAWF2+WcVtWzkhzZ/wYH7pGf6o4wicG30s5V8UXbba/KFDNJKWKDH2PQ0raOSnUcNMe8l7
	7BrryYxgh0mqIiQ0cCFXZiB/Ob2LX241U498rW7B2543SVQMklPpclGc/QOK0S3HxUSF+Vp
	ivVjX2BGThTm6Kxd2Mil2n5N8oidbxIRBZOUeGWOueHbrf+2UJfaU5wxPLP0kWrm
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0

Hi Alexey,

On 12/25/24 17:32, Alexey Charkov wrote:
> Hi Naoki,
> 
> On Wed, Dec 25, 2024 at 12:22 PM FUKAUMI Naoki <naoki@radxa.com> wrote:
>>
>> The Radxa ROCK 5B+ is an upgraded version of the Radxa ROCK 5B.
>>
>> This patch series introduces a shared .dtsi that can be used on the
>> new Radxa ROCK 5B+, the existing Radxa ROCK 5B, and the upcoming Radxa
>> ROCK 5T.
>>
>> This patch series includes "arm64: dts: rockchip: Add USB-C support to
>> ROCK 5B" by Sebastian Reichel[1].
>>
>> [1] https://patchwork.kernel.org/project/linux-rockchip/patch/20241210163615.120594-1-sebastian.reichel@collabora.com/
>>
>> FUKAUMI Naoki (3):
>>    dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
>>    arm64: dts: rockchip: Add Radxa ROCK 5B+
>>    arm64: dts: rockchip: Convert Radxa ROCK 5B to use shared .dtsi
> 
> This one doesn't look equivalent to the existing ROCK 5B device tree
> after your changes (I've noticed in particular that fan cooling levels
> are different - but that's just the part I remember well since I
> modified it earlier, there might be more differences).

Thanks for pointing!

> Would you mind rearranging the patches so that the split of ROCK 5B
> dts into a common .dtsi and per-board .dts additions could be made
> one-to-one equivalent without functional changes, and then add ROCK
> 5B+ and any other required changes on top of that?

My priority goal is to add support for ROCK 5B+ and 5T. This time, I 
will not make any changes to ROCK 5B so as not to break it. Therefore, I 
will drop PATCH 3/3.

(I would like to make changes to ROCK 5B at some point.)

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> See what Dragan did where he prepared parent .dtsi for per-variant OPPs [1]
> 
> [1] https://lore.kernel.org/linux-rockchip/9ffedc0e2ca7f167d9d795b2a8f43cb9f56a653b.1717923308.git.dsimic@manjaro.org/
> 
> Best,
> Alexey
> 


