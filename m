Return-Path: <devicetree+bounces-237481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CC8C516AD
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 10:44:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E096418E0BDF
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 09:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2F372F9998;
	Wed, 12 Nov 2025 09:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="cqwbRrz5"
X-Original-To: devicetree@vger.kernel.org
Received: from out-176.mta1.migadu.com (out-176.mta1.migadu.com [95.215.58.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE742F90EA
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762940444; cv=none; b=Z4Fh2vfXb/pYj/7IwqDa1IrwJZOYTaX4Z8Vx/2YZkrTWuBkq68fVZD66kLXHcca3qMihGUGdZ3wyxQI0+1NmlMVJW/yPyuWXFRIw22i8sHeEKS2pt2vLon+aJZhnvnx6cZjwnyLHIP+rlrbEhRl/6vcitIB8gA40SuzeKsuRBHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762940444; c=relaxed/simple;
	bh=Pq5nziBpcyMZbqg/K8AirlOTPdwVK67SFCIFBouK2bw=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=CW0YqTpwNXVzLXskdzGYgEOcS+melrW8jPPrQ+ZqaFtp4nKW3il5N7C5DyI9hPZ4bRsYCAjkeaq8UswUbo01C/mLYXmbxOkLz6uuwPioCPIWjBZorzqY6zvSY38bxbAG4XlT44jf0/JQwKXb4Ml2gqms2H3rTo4k2u4kVRgQHnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=cqwbRrz5; arc=none smtp.client-ip=95.215.58.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1762940439;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cjIJ3Hr5gDzDqpKoJFsw8cvAIeX6fqrfqTQKFoqT6p4=;
	b=cqwbRrz5156KF/Ckf96aDJPtZZrUZAvJP7ea+jfRs3l/kp+IgmtpbE5XuTNez8FbDuhUYs
	8XzBPSknlLYgZnP+rC62RvPGtZCmx7skZbM8pI9RH18as98VmnUy+TfpBZo/5ico06yut4
	7YADeTXtJrbuV32fnBTKTigJ2PyFFccPAZWz7FgxEsR5tUxOPBd8ichka0f0TJ4O5gNJcM
	RCpRTpjcp+rcCl1ae7ZpgIGNmNuEOimSfMD63/+7B8pkY4ctL+KPsU9HoWNbQLW0n1uNU0
	Nb1Uzfoe89+VipS5HhVX5axlxKRnMiXpX8kdi3ZwfCCTvm6GkbROrYgGGSc/qg==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 12 Nov 2025 10:40:28 +0100
Message-Id: <DE6M84A93WTV.O5IW3BG8TZRW@cknow-tech.com>
Cc: "Diederik de Haas" <diederik@cknow-tech.com>, <heiko@sntech.de>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <jbx6244@gmail.com>, <pgwipeout@gmail.com>, <jonas@kwiboo.se>,
 <ziyao@disroot.org>, <amadeus@jmu.edu.cn>,
 <nicolas.frattaroli@collabora.com>, <pbrobinson@gmail.com>,
 <wens@kernel.org>, <detlev.casanova@collabora.com>, <stephen@radxa.com>,
 <sebastian.reichel@collabora.com>, <liujianfeng1994@gmail.com>,
 <andy.yan@rock-chips.com>, <damon.ding@rock-chips.com>,
 <kylepzak@projectinitiative.io>, <devicetree@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Turn all LEDs on at boot for
 Radxa boards
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "FUKAUMI Naoki" <naoki@radxa.com>, "Quentin Schulz"
 <quentin.schulz@cherry.de>, "Dragan Simic" <dsimic@manjaro.org>
References: <20251111054112.55505-1-naoki@radxa.com>
 <DE5W0143QGG2.3C7SW89IJKZ4P@cknow-tech.com>
 <516e919a-42af-8707-4e75-a808df8971fd@manjaro.org>
 <B0C8C5A69B9F465E+ba0ad139-d3d9-4492-ac9a-cc58f8f35074@radxa.com>
 <41275775-9e6e-9202-4c79-6140a56e41d5@manjaro.org>
 <572f341f-a5fa-4f1c-ad60-a5fe3e046d6d@cherry.de>
 <774C3AB9F17BAE47+14f8b8ba-ba78-410e-b44c-4d077585d05a@radxa.com>
In-Reply-To: <774C3AB9F17BAE47+14f8b8ba-ba78-410e-b44c-4d077585d05a@radxa.com>
X-Migadu-Flow: FLOW_OUT

Hi Naoki,

On Wed Nov 12, 2025 at 12:42 AM CET, FUKAUMI Naoki wrote:
> On 11/12/25 03:32, Quentin Schulz wrote:
>> On 11/11/25 5:14 PM, Dragan Simic wrote:
>>> On Tuesday, November 11, 2025 16:32 CET, FUKAUMI Naoki=20
>>> <naoki@radxa.com> wrote:
>>>> On 11/11/25 23:46, Dragan Simic wrote:
>>>>> On Tuesday, November 11, 2025 14:07 CET, "Diederik de Haas"=20
>>>>> <diederik@cknow-tech.com> wrote:
>>>>>> On Tue Nov 11, 2025 at 6:41 AM CET, FUKAUMI Naoki wrote:
>>>>>>> Radxa's boards turn all LEDs on at boot(loader), but some boards=20
>>>>>>> don't have `default-state` property in Linux kernel tree but
>>>>>>> have it in U-Boot tree instead[1].
>>>>>>>
>>>>>>> This patch adds `default-state =3D "on"` for (almost) all LEDs (wit=
h a
>>>>>>> few exceptions which should be "off" such as RGB LEDs on E25 and LA=
N/
>>>>>>> WAN LEDs on E20C/E52C).
>>>>>>
>>>>>> I'm missing the *why* these changes would be an improvement.
>>>>>>
>>>>>> Personally, for both 'heartbeat' and 'netdev' triggers, I want them =
to
>>>>>> be off by default and once it gets a 'heartbeat' or a 'netdev'=20
>>>>>> trigger, THEN I want the LED to be on/blinking.
>>>>>
>>>>> That's a good question for Naoki.=C2=A0 My own preference would also
>>>>> be to have the device's power LED turned on by U-Boot as quickly
>>>>> as possible after supplying power to the board or turning it on
>>>>> by pressing the power button.=C2=A0 I'm actually not a big fan of
>>>>> having all the LEDs shining for a couple of seconds or so, which
>>>>> may actually look like some error condition to me.
>>>>>
>>>>> Having all that in mind, I may suggest that just the U-Boot's
>>>>> behavior is changed to turn the power LEDs on only.
>>>>
>>>> I can't quite explain it, but...
>>>>
>>>> - 1st (Power) LED
>>>>
>>>> The 1st (power) LED turns on automatically/immediately without softwar=
e
>>>> intervention. (On some boards, this LED cannot be controlled by softwa=
re
>>>> at all.)
>>>>
>>>> In DTS, this should be described using `default-state =3D "on"`. The u=
se
>>>> of the Linux-specific property `linux,default-trigger =3D "default-on"=
` is
>>>> unsuitable for non-Linux environments.
>>>>
>>>> - 2nd (Heartbeat) LED
>>>>
>>>> The 2nd (heartbeat) LED can be controlled by software. It should be li=
t
>>>> up as quickly as possible to indicate that the very first software
>>>> (e.g., the bootloader) is running.
>>>>
>>>> On Linux, usually this is used as `linux,default-trigger =3D "heartbea=
t"`.
>>>> It indicates that kernel is running (regardless of the `default-state`
>>>> setting), and its behavior can be modified in user space.
>>>
>>> As discussed already in the #linux-rockchip IRC channel, [1] perhaps
>>> the best option would be to have the power LEDs turned on as quickly
>>> upon powering on the board as possible, and to have U-Boot pulsate
>>> the heartbeat LEDs using the LED_BOOT feature.=C2=A0 In such a scenario=
,
>>> no other LEDs would be turned on early, and the LED-related DT parts
>>> specific to U-Boot would be migrated to the kernel DTs.
>>>
>>> [1] https://libera.catirclogs.org/linux-rockchip/2025-11-11#38997824;
>>=20
>> The LED_BOOT feature (guarded by the Kconfig symbol of the same name) in=
=20
>> U-Boot only applies if /options/u-boot/boot-led property is set.
>
> For the default state of the heartbeat LED, I'm thinking of using=20
> LED_BOOT (/options/u-boot/boot-led), but I'm concerned that this is=20
> U-Boot-specific.

If U-Boot wants to use the heartbeat LED to signal the *bootloader* is
running, I guess that's fine. And if you want to make it solid or
blinking, that seems best discussed on the U-Boot ML.

I still consider the bootloader and the kernel stages separate.
And I haven't seen an argument why I should change *my* opinion on the
heartbeat and netdev triggers (default-state) wrt the kernel.

I don't think that what U-Boot does or doesn't do, should determine what
the Linux kernel does or doesn't do.
I have no plans to use another bootloader then U-Boot, but it's possible
that people do, so what the Linux kernel does should be independent from
what the/a specific bootloader does.

And as I said before, *I* want LEDs with netdev and heartbeat triggers,
to be off (at the start, which is indeed the default value).
I use the heartbeat trigger to:
1) See the kernel has started (and has gotten to the point the heartbeat
   'infrastructure' has been set up
2) Wait for the blinking to slow down as that (generally) means it's
   pretty much done with the boot process and the SSH server should
   probably be running then, so I can login
3) When the heartbeat LED is solid, that means the system has crashed
   (f.e. due to overheating ...)

And also, if you're going to change/override other people's choices, a
motivation as to why would be 'nice'.

>> <more discussion about LED functionality in U-Boot ...>
>
> As you know, default "default-state" is "off".
>   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/Documentation/devicetree/bindings/leds/common.yaml?h=3Dv6.17#n74
>
> As far as I understand, there should not be any workarounds for specific=
=20
> implementations.
>   https://lore.kernel.org/linux-rockchip/3389401.44csPzL39Z@phil/
>
> So removing `default-state =3D "off"` is acceptable, right?

I don't see/understand the connection with 'workarounds for specific
implementations' with removing ``default-state =3D "off"``.

IMO it's perfectly fine to remove ``default-state =3D "off"``, although
having it explicitly may be useful, especially if the commit that set
that property specified *why* it should be "off".

Relatedly, when a node does not have the 'default-state' property, I
would _assume_ the author wanted/intended it to be "off". Ideally it
would be described in the commit message, but that is optional.
But if that is changed, then it should be motivated *why*.

Cheers,
  Diederik

>
> Best regards,
>
> --
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
>
>> If one wants to detect via an LED the current boot stage (U-Boot=20
>> reached, kernel started), then we need to NOT use LED_BOOT feature and=
=20
>> have U-Boot set the "boot" LED the opposite state than the default HW=20
>> state, i.e. if the LED is on without any running SW (power applied to=20
>> the device, empty boot media), then U-Boot should set it to off. Then=20
>> the kernel simply needs to start the heartbeat mode whenever ready. If=
=20
>> the default HW state is off, then U-Boot should set it on. I haven't=20
>> looked into the kernel side of things, but there could be a window=20
>> during which default-state property is applied before the heartbeat is=
=20
>> actually started.
>>=20
>> The logic exposed in the previous paragraph should provide visual cues=
=20
>> on the current boot stage.
>>=20
>> Note that LEDs with linux,default-trigger =3D "pattern" (with default-=
=20
>> state property) will be blinking once auto-configured in U-Boot as well=
=20
>> according to my reading of the led-uclass.c.
>>=20
>> Hope this helps.
>>=20
>> Cheers,
>> Quentin
>>=20


