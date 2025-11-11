Return-Path: <devicetree+bounces-237248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 044ABC4ECFD
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 16:39:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76A3A3BC516
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 15:35:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1B9936998E;
	Tue, 11 Nov 2025 15:34:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast3.qq.com (smtpbguseast3.qq.com [54.243.244.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED652F3C10
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 15:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.243.244.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762875274; cv=none; b=MIwo5ZtgZIV3pZmSoETb8j8iuE/wZLIhHOrpMY5YRotB8QaNsXp8NfbO1c2fXJU49q4vBtR/TIjKjaVqLGNQfD/RW7zoZsrPxaJYnlXMZ89d9hLN4DZWuDT1TU98zooPoFVg9/o/JqNTZT6k/uj+mB/wpiPwesh7lfNZIDvj0lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762875274; c=relaxed/simple;
	bh=8J0PkBxgB3ZhBtPj+G9LOp57uSCv4BWcp0FEe8a1/P0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UKaoRNjsm+Dz63iJbHr1x4yIYpqz9Fl4u5B1SNleGTcBD22jr8CzarZsVD0vNMFKzSeVlEVbp/r7sleE9RAeaoiazKnPcGfdUxxM+KXj6UIs7GpnQgoZfJUUV3HC82K50+BR1PL0zF8+ZPT+Ea5GVkqIKmWyw5EQ4tKSBt/IgBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.243.244.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1762875183td7307421
X-QQ-Originating-IP: YibyIjh8rVjDnM8ye+fS4TkHJ33V/iHkoULZhIFa9Bc=
Received: from [IPV6:240f:10b:7440:1:62e3:2c99 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 11 Nov 2025 23:32:57 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14738721810001780121
EX-QQ-RecipientCnt: 23
Message-ID: <B0C8C5A69B9F465E+ba0ad139-d3d9-4492-ac9a-cc58f8f35074@radxa.com>
Date: Wed, 12 Nov 2025 00:32:57 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: Turn all LEDs on at boot for
 Radxa boards
To: Dragan Simic <dsimic@manjaro.org>,
 Diederik de Haas <diederik@cknow-tech.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jbx6244@gmail.com, pgwipeout@gmail.com,
 jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn,
 nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org,
 detlev.casanova@collabora.com, stephen@radxa.com,
 sebastian.reichel@collabora.com, liujianfeng1994@gmail.com,
 andy.yan@rock-chips.com, damon.ding@rock-chips.com,
 kylepzak@projectinitiative.io, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251111054112.55505-1-naoki@radxa.com>
 <DE5W0143QGG2.3C7SW89IJKZ4P@cknow-tech.com>
 <516e919a-42af-8707-4e75-a808df8971fd@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <516e919a-42af-8707-4e75-a808df8971fd@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NojR6Ao/DkEDOzfxtENjUyR5ydpLQzDIDjVZNjyJyi1T78XT1dx4kcck
	M4gPmeTpda1uX1OC5Y44hco3yIaC1D5uw9e1W6umQCmxqt+mb+XWxYz79Oqedh7ZZe5RQs7
	oJyJCUD5TXifKHVm+W2ex9QtedlX8BAn7AcuMR32SwnbHOCdf90a7a9YuwoteHR5nUVqhtH
	aIF5D9aGgErZNT68B0PRwotr4Svq/cno830kziRjXJPt3X7+H38QMEt5lQE+TA8KNQU8KrL
	D6Ih2om751I4BClQ08I4RH6Kh+XUgyf82dJLQd2gDpiqJMRikvun0RarQIu4IbOVjMR927W
	q9R19wJozLHghJhjHiPaNRCU8qvOPt62oRLp8Jud5lqi96HOb4kTbyt+zunxU42nW1o3QFc
	FtGJfvT0cAWXxmRp0a1hKiWMB0s3Z/PVjjqksVil4ZyA05tb+f3BsJ5FsJXSLgyMm6DAPBp
	20ljv4maxfJUz0PzkYcznrhRF1dl+5LBDFV2VpO+c65jJezlRPvJnq9AqVdOdTvyYBhXRba
	IejIiP7MdIQeUe1Tx/0vk8n3b17UF4qfiu7mgmZOodxG0tmz6INl04aaeyUZOxovYZo/NC5
	AeYqQUNGqbnXqjNeCt3RuOCHrfb24KtnocCpJBGv4/65Eoru0NhpHmeTs5q1i9vW01in8O1
	NYNRjGRicpfIA7WtU0SNjytu7l0JecMlP6ObpKA8iMOJhoPMjt0lhkbJNmYz0YmHHHgTLym
	/8Xqg736qvl/5EH96cvhsTQaiIxP98qtOf/i5vsnU56QTJ9G+sprLOue/RVezFnYLii35Kv
	H+8dot27aa/gRfzuezs8SCrajlWHrQJKApDrkLlXqMtPf2UadX/5aRI5lJhHakMDKRX3VUD
	jHNmEdbq+5tDsVSkc3E8qunSIoa4OJETJAG/iS8ZRtlsuPi3S9Bef93QY7OW0EIwjqA8vvT
	Fd3RzxVQMC011YUNSrRG5mRpEGuxzdAZCGFrA9C2WVPDml9InhScwtbYbAfkx5HSf5Rc=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0

Hi Diederik, Dragan,

On 11/11/25 23:46, Dragan Simic wrote:
> Hello Diederik,
> 
> On Tuesday, November 11, 2025 14:07 CET, "Diederik de Haas" <diederik@cknow-tech.com> wrote:
>> On Tue Nov 11, 2025 at 6:41 AM CET, FUKAUMI Naoki wrote:
>>> Radxa's boards turn all LEDs on at boot(loader), but some boards don't
>>> have `default-state` property in Linux kernel tree but have it in
>>> U-Boot tree instead[1].
>>>
>>> This patch adds `default-state = "on"` for (almost) all LEDs (with a
>>> few exceptions which should be "off" such as RGB LEDs on E25 and LAN/
>>> WAN LEDs on E20C/E52C).
>>
>> I'm missing the *why* these changes would be an improvement.
>>
>> Personally, for both 'heartbeat' and 'netdev' triggers, I want them to
>> be off by default and once it gets a 'heartbeat' or a 'netdev' trigger,
>> THEN I want the LED to be on/blinking.
> 
> That's a good question for Naoki.  My own preference would also
> be to have the device's power LED turned on by U-Boot as quickly
> as possible after supplying power to the board or turning it on
> by pressing the power button.  I'm actually not a big fan of
> having all the LEDs shining for a couple of seconds or so, which
> may actually look like some error condition to me.
> 
> Having all that in mind, I may suggest that just the U-Boot's
> behavior is changed to turn the power LEDs on only.

I can't quite explain it, but...

- 1st (Power) LED

The 1st (power) LED turns on automatically/immediately without software 
intervention. (On some boards, this LED cannot be controlled by software 
at all.)

In DTS, this should be described using `default-state = "on"`. The use 
of the Linux-specific property `linux,default-trigger = "default-on"` is 
unsuitable for non-Linux environments.

- 2nd (Heartbeat) LED

The 2nd (heartbeat) LED can be controlled by software. It should be lit 
up as quickly as possible to indicate that the very first software 
(e.g., the bootloader) is running.

On Linux, usually this is used as `linux,default-trigger = "heartbeat"`. 
It indicates that kernel is running (regardless of the `default-state` 
setting), and its behavior can be modified in user space.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

