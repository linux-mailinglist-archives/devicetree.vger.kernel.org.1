Return-Path: <devicetree+bounces-237621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 00ED1C527CB
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 14:32:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B2C53A30B5
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 13:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65F3B330B33;
	Wed, 12 Nov 2025 13:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="JUFZxqTR"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A7A307AD1
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 13:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762953698; cv=none; b=IZhNfRK2UgEt4EkRP6BecG7U/2VE1/okMGIQxjzUslcWUgdAr1wNXufO1C0lE4uCv4FDWdtAfXS4MVM6k7HU9QjCY3ggjingAJcvnsmsNTgXVyoBO7oMu06Uuhn5YAGvrDoHd4MCzUusRoCdXMLtOmWiNGq85eAAHm3eHF9DdRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762953698; c=relaxed/simple;
	bh=M0kYAE3cyOAwApfQFZUaGyDPlmTtdTCUPZw8NrU51IQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=YhFypVxguwWM3Kr+x/a8Z+PPcBMz1Lwp3LWF0XT+yF7jFpNHp1rjD60dCFYzBRji4lfwv8RdPDJosTJifs/LmyMHuDFgSFNhsdkyVVZiVlS/Gz/M+gFStHgW91ku6lDVB/MY5HMt36NShgf49gElrqfJZeDHxSdxMipvJ/CYmgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=JUFZxqTR; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1762953689;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r0D2J+eI3PvSUY6f8Ua/F1VK1t8ze42IT7fidRI9eX4=;
	b=JUFZxqTResbyUvMBtZc6tUXxjNGE0hoV6iieqBZCBrlsFbC7uBj+7Lj0UfuHXm+dIs1eek
	c7qaQcKi/U3duCFJY/Ii9RINyh/te7BhMItgMas8L0t4BEIs1IbyHMcJRGWNEsVclDu7sm
	A4fNS9nGygCwRYADmsp7JtpL2jDoQnZ4dq5OUy63OW7Y9UENp6SKPJ2IZUuag9LfdXaWuL
	lFywOnTnaaj0qFBiIk1hAw5eOSOKeixMq5jVX/jZGWit/PfSnEij5Le2SSlHogHzyV8igr
	BJ6WxU2A1W4r/h3W9Tt+ZSACss2pl2w6kNj3Rx3TnL71CQ/hVbQKEUpBYQRHmw==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 12 Nov 2025 14:21:23 +0100
Message-Id: <DE6QX9I0TJSX.3KBGD0MQ10A3P@cknow-tech.com>
Cc: <heiko@sntech.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <jbx6244@gmail.com>, <pgwipeout@gmail.com>,
 <jonas@kwiboo.se>, <ziyao@disroot.org>, <amadeus@jmu.edu.cn>,
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
 <quentin.schulz@cherry.de>, "Diederik de Haas" <diederik@cknow-tech.com>,
 "Dragan Simic" <dsimic@manjaro.org>
References: <20251111054112.55505-1-naoki@radxa.com>
 <DE5W0143QGG2.3C7SW89IJKZ4P@cknow-tech.com>
 <516e919a-42af-8707-4e75-a808df8971fd@manjaro.org>
 <B0C8C5A69B9F465E+ba0ad139-d3d9-4492-ac9a-cc58f8f35074@radxa.com>
 <41275775-9e6e-9202-4c79-6140a56e41d5@manjaro.org>
 <572f341f-a5fa-4f1c-ad60-a5fe3e046d6d@cherry.de>
 <774C3AB9F17BAE47+14f8b8ba-ba78-410e-b44c-4d077585d05a@radxa.com>
 <DE6M84A93WTV.O5IW3BG8TZRW@cknow-tech.com>
 <1459ebad-c087-49ac-a316-14436fac4bc6@cherry.de>
 <B53A83D8C3B50A70+1b9d2253-6cf6-476f-b8f7-98552db461c7@radxa.com>
In-Reply-To: <B53A83D8C3B50A70+1b9d2253-6cf6-476f-b8f7-98552db461c7@radxa.com>
X-Migadu-Flow: FLOW_OUT

Hi,

On Wed Nov 12, 2025 at 12:36 PM CET, FUKAUMI Naoki wrote:
> My goal is to minimize the DTS fragments=20
> (u-boot/arch/arm/dts/*-u-boot.dtsi) in U-Boot, consolidate them=20
> upstream, and improve clarity/visibility.

Long story short: I was wrong.

It was mostly Quentin's argument/reminder that the DT is about
describing the hardware.
I think Quentin's point about 'initial state' was right on point,
certainly from my perspective and where my logic error came from.

Cheers,
  Diederik

> On 11/12/25 19:34, Quentin Schulz wrote:
>> On 11/12/25 10:40 AM, Diederik de Haas wrote:
>>> [You don't often get email from diederik@cknow-tech.com. Learn why=20
>>> this is important at https://aka.ms/LearnAboutSenderIdentification ]
>>>
>>> On Wed Nov 12, 2025 at 12:42 AM CET, FUKAUMI Naoki wrote:
>>>> On 11/12/25 03:32, Quentin Schulz wrote:
>>>>> On 11/11/25 5:14 PM, Dragan Simic wrote:
>>>>>> On Tuesday, November 11, 2025 16:32 CET, FUKAUMI Naoki
>>>>>> <naoki@radxa.com> wrote:
>>>>>>> On 11/11/25 23:46, Dragan Simic wrote:
>>>>>>>> On Tuesday, November 11, 2025 14:07 CET, "Diederik de Haas"
>>>>>>>> <diederik@cknow-tech.com> wrote:
>>>>>>>>> On Tue Nov 11, 2025 at 6:41 AM CET, FUKAUMI Naoki wrote:
>>>>>>>>>> Radxa's boards turn all LEDs on at boot(loader), but some boards
>>>>>>>>>> don't have `default-state` property in Linux kernel tree but
>>>>>>>>>> have it in U-Boot tree instead[1].
>>>>>>>>>>
>>>>>>>>>> This patch adds `default-state =3D "on"` for (almost) all LEDs=
=20
>>>>>>>>>> (with a
>>>>>>>>>> few exceptions which should be "off" such as RGB LEDs on E25=20
>>>>>>>>>> and LAN/
>>>>>>>>>> WAN LEDs on E20C/E52C).
>>>>>>>>>
>>>>>>>>> I'm missing the *why* these changes would be an improvement.
>>>>>>>>>
>>>>>>>>> Personally, for both 'heartbeat' and 'netdev' triggers, I want=20
>>>>>>>>> them to
>>>>>>>>> be off by default and once it gets a 'heartbeat' or a 'netdev'
>>>>>>>>> trigger, THEN I want the LED to be on/blinking.
>>>>>>>>
>>>>>>>> That's a good question for Naoki.=C2=A0 My own preference would al=
so
>>>>>>>> be to have the device's power LED turned on by U-Boot as quickly
>>>>>>>> as possible after supplying power to the board or turning it on
>>>>>>>> by pressing the power button.=C2=A0 I'm actually not a big fan of
>>>>>>>> having all the LEDs shining for a couple of seconds or so, which
>>>>>>>> may actually look like some error condition to me.
>>>>>>>>
>>>>>>>> Having all that in mind, I may suggest that just the U-Boot's
>>>>>>>> behavior is changed to turn the power LEDs on only.
>>>>>>>
>>>>>>> I can't quite explain it, but...
>>>>>>>
>>>>>>> - 1st (Power) LED
>>>>>>>
>>>>>>> The 1st (power) LED turns on automatically/immediately without=20
>>>>>>> software
>>>>>>> intervention. (On some boards, this LED cannot be controlled by=20
>>>>>>> software
>>>>>>> at all.)
>
> I'm not saying the DTS has anything about LEDs that can't be controlled=
=20
> by software, nor am I trying to add such a thing to the DTS.
>
> I'm just pointing out that the power LED is always on right after=20
> power-up. This makes it useless for determining if the software is runnin=
g.
>
>>>>>>> In DTS, this should be described using `default-state =3D "on"`. Th=
e=20
>>>>>>> use
>>>>>>> of the Linux-specific property `linux,default-trigger =3D "default-=
=20
>>>>>>> on"` is
>>>>>>> unsuitable for non-Linux environments.
>>>>>>>
>>=20
>> I think the wording in the binding can be understood two ways.
>>=20
>> The binding says the following about the default-state property:
>>=20
>> """
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 The initial state of the LED. If the LED=
 is already on or off and=20
>> the
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default-state property is set the to sam=
e value, then no glitch=20
>> should be
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 produced where the LED momentarily turns=
 off (or on). The "keep"=20
>> setting
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 will keep the LED at whatever its curren=
t state is, without=20
>> producing a
>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 glitch.
>> """
>>=20
>> I think the issue here is around the meaning of "initial state". I=20
>> believe Naoki is probably thinking about the **HW** initial state of the=
=20
>> LED, which is whatever is the state of the LED without SW control. I=20
>> think Diederik is thinking about this being the state of the LED right=
=20
>> when the SW takes over and configures the LED before the trigger is setu=
p.
>>=20
>> In the first interpretation, there's no need for an "improvement" for=20
>> the patches as they would just fix correctness of the DT wrt HW state at=
=20
>> boot.
>>=20
>> In the second interpretation, a change of this value must be justified=
=20
>> as people will simply disagree forever and we could end up with people=
=20
>> reverting other people's patches after each release. If it's just a=20
>> matter of taste, I believe the typical answer is keeping the status quo.
>>=20
>> We should find a way to make this binding not up to interpretation.
>>=20
>> Additionally, if the LED cannot be controlled on some boards, I don't=20
>> think it should be part of the DT.
>>=20
>>>>>>> - 2nd (Heartbeat) LED
>>>>>>>
>>>>>>> The 2nd (heartbeat) LED can be controlled by software. It should=20
>>>>>>> be lit
>>>>>>> up as quickly as possible to indicate that the very first software
>>>>>>> (e.g., the bootloader) is running.
>>>>>>>
>>=20
>> My understanding is Naoki wants to use default-state =3D on, for the=20
>> bootloader to turn it on as soon as it takes over control of the LEDs.
>>=20
>>>>>>> On Linux, usually this is used as `linux,default-trigger =3D=20
>>>>>>> "heartbeat"`.
>>>>>>> It indicates that kernel is running (regardless of the `default-=20
>>>>>>> state`
>>>>>>> setting), and its behavior can be modified in user space.
>>>>>>
>>>>>> As discussed already in the #linux-rockchip IRC channel, [1] perhaps
>>>>>> the best option would be to have the power LEDs turned on as quickly
>>>>>> upon powering on the board as possible, and to have U-Boot pulsate
>>>>>> the heartbeat LEDs using the LED_BOOT feature.=C2=A0 In such a scena=
rio,
>>>>>> no other LEDs would be turned on early, and the LED-related DT parts
>>>>>> specific to U-Boot would be migrated to the kernel DTs.
>>>>>>
>>>>>> [1] https://libera.catirclogs.org/linux-rockchip/2025-11-11#38997824=
;
>>>>>
>>>>> The LED_BOOT feature (guarded by the Kconfig symbol of the same=20
>>>>> name) in
>>>>> U-Boot only applies if /options/u-boot/boot-led property is set.
>>>>
>>>> For the default state of the heartbeat LED, I'm thinking of using
>>>> LED_BOOT (/options/u-boot/boot-led), but I'm concerned that this is
>>>> U-Boot-specific.
>>>
>>> If U-Boot wants to use the heartbeat LED to signal the *bootloader* is
>>> running, I guess that's fine. And if you want to make it solid or
>>> blinking, that seems best discussed on the U-Boot ML.
>>>
>>=20
>> The solution may still involve configuring the Device Tree, and we're=20
>> trying to have U-Boot-specific changes to the Device Tree in U-Boot=20
>> source tree to a minimum.
>>=20
>>> I still consider the bootloader and the kernel stages separate.
>>=20
>> They do however share most of their Device Tree (for Rockchip at least)=
=20
>> and the least (ideally no) changes we can have in U-Boot the better.
>>=20
>>> And I haven't seen an argument why I should change *my* opinion on the
>>> heartbeat and netdev triggers (default-state) wrt the kernel.
>>>
>>=20
>> Device Tree is not kernel specific as you said already.
>>=20
>>> I don't think that what U-Boot does or doesn't do, should determine wha=
t
>>> the Linux kernel does or doesn't do.
>>=20
>> It shouldn't, but (most of) the Device Tree is shared, so you cannot=20
>> just dismiss U-Boot behavior when talking about Linux behavior based on=
=20
>> Device Tree interpretation. We may have a need for a bootloader-specific=
=20
>> property. We have a Linux-specific one after all (linux,default-=20
>> trigger). Though... that does seem to be on the edge of what the DT is=
=20
>> made for (description of the HW, not logic/policy).
>>=20
>>> I have no plans to use another bootloader then U-Boot, but it's possibl=
e
>>> that people do, so what the Linux kernel does should be independent fro=
m
>>> what the/a specific bootloader does.
>
> Each software should be independent, but hardware (state) cannot be=20
> independent.
>
>> Barebox also uses upstream DT as far as I know and supports some Radxa=
=20
>> products (Rock 5B/5T/..., CM3, Rock (RK3188), Rock 3A from the arch/arm/=
=20
>> boards/radxa-* directories). Zephyr has support for RK3568, RK3588, and=
=20
>> other SoCs, and uses upstream DT as well.
>>=20
>> Again, we're talking about modifications of the Device Tree here, so=20
>> typically I would expect all consumers of that DT to be interpreting the=
=20
>> properties the same way, except if you have OS-specific properties/nodes=
=20
>> (think u-boot,config-compatible nodes, linux, prefixed properties,=20
>> bootph- properties, ...).
>>=20
>>> And as I said before, *I* want LEDs with netdev and heartbeat triggers,
>>> to be off (at the start, which is indeed the default value).
>
> If you are using U-Boot, heartbeat LED is already on by U-Boot,
> e.g.
>   https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk358=
8s-rock-5a-u-boot.dtsi#L10-12
>
> But it's not visible in DTS in Linux,
> e.g.
>   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts?h=3Dv6.17#n55
>
> I think this situation should be fixed.
>
> Best regards,
>
> --
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
>
>>> I use the heartbeat trigger to:
>>> 1) See the kernel has started (and has gotten to the point the heartbea=
t
>>> =C2=A0=C2=A0=C2=A0 'infrastructure' has been set up
>>> 2) Wait for the blinking to slow down as that (generally) means it's
>>> =C2=A0=C2=A0=C2=A0 pretty much done with the boot process and the SSH s=
erver should
>>> =C2=A0=C2=A0=C2=A0 probably be running then, so I can login
>>> 3) When the heartbeat LED is solid, that means the system has crashed
>>> =C2=A0=C2=A0=C2=A0 (f.e. due to overheating ...)
>>>
>>=20
>> If the *HW* default state of the LED is off and the default-state=20
>> property is off, then you won't be able to tell apart a completely=20
>> bricked board and one that is stuck somewhere between U-Boot proper and=
=20
>> the Linux kernel taking over that LED.
>>=20
>>> And also, if you're going to change/override other people's choices, a
>>> motivation as to why would be 'nice'.
>>>
>>>>> <more discussion about LED functionality in U-Boot ...>
>>>>
>>>> As you know, default "default-state" is "off".
>>>> =C2=A0=C2=A0 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/=
=20
>>>> linux.git/tree/Documentation/devicetree/bindings/leds/common.yaml?=20
>>>> h=3Dv6.17#n74
>>>>
>>>> As far as I understand, there should not be any workarounds for specif=
ic
>>>> implementations.
>>>> =C2=A0=C2=A0 https://lore.kernel.org/linux-rockchip/3389401.44csPzL39Z=
@phil/
>>>>
>>>> So removing `default-state =3D "off"` is acceptable, right?
>>>
>>> I don't see/understand the connection with 'workarounds for specific
>>> implementations' with removing ``default-state =3D "off"``.
>>>
>>> IMO it's perfectly fine to remove ``default-state =3D "off"``, although
>>> having it explicitly may be useful, especially if the commit that set
>>> that property specified *why* it should be "off".
>>>
>>=20
>> The status property defaults to okay, and we do not want them to be=20
>> listed explicitly. Not sure if there's consensus on applying this to all=
=20
>> properties which have defaults, across all subsystems.
>>=20
>>> Relatedly, when a node does not have the 'default-state' property, I
>>> would _assume_ the author wanted/intended it to be "off". Ideally it
>>> would be described in the commit message, but that is optional.
>>=20
>> The lack of a property doesn't necessarily mean it was forgotten, agreed=
.
>>=20
>>> But if that is changed, then it should be motivated *why*.
>>>
>>=20
>> Agreed.
>>=20
>> Cheers,
>> Quentin
>>=20


