Return-Path: <devicetree+bounces-237564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CC0C52117
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 12:48:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E1D4A4E81AE
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 11:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04BA231196C;
	Wed, 12 Nov 2025 11:38:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau1.qq.com (smtpbgau1.qq.com [54.206.16.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2259301473
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 11:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.16.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762947529; cv=none; b=HE63/zMadZgOh0ToAvkSq1uiyPeMIoRhM/TMjMPtiKu6UVeyCcwtD2YBEn6Cgi4kmTH0FtxMxyN1PTc91uckkDfaItCF+kjfh9KOW36NxbkzYFd2C9ofQi0cdllmoyluZP9+xzsS4g2PyynQ0KbIgLXrKBNqRwOwKastgvPFtSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762947529; c=relaxed/simple;
	bh=i1mNOEdla0owhqSY4cpG5QVw8fdornw/0LzKg06s0AI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pXntxJY7AN8aNnqSgBuw5MT09WP2p/GgSoewDtEwhBkFEke0QVa/aRBldLuSGYzsSc1zI3l+7JFFLGfwzKTxp3gZl3l0e7m2MWMznpsNxWwQcnYys19a2EiynnmWivVw8cTQ9qpdRDB1vjBWPDXyaae0kPdlSkntmkPn5IlluWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.206.16.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip4t1762947421t8004729d
X-QQ-Originating-IP: AlfjT3HVwUUl20kxauNyIhwqvosTtFn4z1+AG5RnyXs=
Received: from [IPV6:240f:10b:7440:1:325d:36bf ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 12 Nov 2025 19:36:54 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15779683235920526526
EX-QQ-RecipientCnt: 24
Message-ID: <B53A83D8C3B50A70+1b9d2253-6cf6-476f-b8f7-98552db461c7@radxa.com>
Date: Wed, 12 Nov 2025 20:36:54 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: Turn all LEDs on at boot for
 Radxa boards
To: Quentin Schulz <quentin.schulz@cherry.de>,
 Diederik de Haas <diederik@cknow-tech.com>, Dragan Simic <dsimic@manjaro.org>
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
 <B0C8C5A69B9F465E+ba0ad139-d3d9-4492-ac9a-cc58f8f35074@radxa.com>
 <41275775-9e6e-9202-4c79-6140a56e41d5@manjaro.org>
 <572f341f-a5fa-4f1c-ad60-a5fe3e046d6d@cherry.de>
 <774C3AB9F17BAE47+14f8b8ba-ba78-410e-b44c-4d077585d05a@radxa.com>
 <DE6M84A93WTV.O5IW3BG8TZRW@cknow-tech.com>
 <1459ebad-c087-49ac-a316-14436fac4bc6@cherry.de>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <1459ebad-c087-49ac-a316-14436fac4bc6@cherry.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: M/uzSWI+68vFDhiu/PSxDApAdnWGqEgUK9Ac0Y21/YM0gaMekme4j7NU
	v33iLT/uTTVFO4o2A+j8M9z/HqS1qZu+HBlJvbpArTNCuRsyKcTgNJ+IWmERGjaBhb5WVMz
	G1RRIjt/TRveRwcMrgiQ0tlmR5D/s8mcBviqx2hPiXMl0/WsCf4G+7z4KbZB6h5viMyYEPY
	HUPHxhQbWOthNyQDwP8HbOsZ3WLwrbMgcsXwf2srqTR/LxvTdKEvP9xQTP2gv1/GUCLsrmt
	sS+qm7+Lg6VAJntZDG4ZxqidClVsIga/Qk2z6QBMeAizmheWbqfjGneYu7vJLrPHFv/pBV0
	sjH1zRha4aLiu3d+vTzupIpver6TYlSLANWX+vW521P9Bgwu3MVWwgJca9oEtPGrnHvXFPM
	xffqcJq2nGyXU9Vc0gGB9VQ3sTQmp0eg4f8atLxrt4/r4ruPxchfRk9fVVQwFsWT/yWxdD6
	tj8ud7MqvkwBeExUhkc/jlyd6oxzS9cnc0dxSdcXdpuoK9dFu2DaSpPwLxCRg2FmIU3jozA
	BOv2AZrKq/CWTEiZM5NYU5aD8yBR/59xOSosVXNTgtDnoo+yu4coUPL0nbaIAEJ8+2hfSTA
	z8Ni1Ibv3qgdQ5nw9xe56YGfM3gQ3tuBpdTSYkrpJsGqsHkGK5N71oTOf4l5g6so93p3n5Y
	s/m4xq96o18m1QZiMNYrMHNEHPuRkzkz4pRyOrGpQ9zF/Y/sOC94srZ3DQRbwb2SskGtDEf
	jd9gz9SSkLPTlf/+YKMZHz2/lgBJTtNau1S/X+HjGoMxjA8Iuq/y4YuXCOlN/lmnYzWqSBS
	FBCIvrrtO4Dl0L/eRgFXaBKR3N+o2CFXrSKNiMlxYsOmLVr9epdHzTeNd2H8CDxEAjjsqg8
	U3K5pj7kBa4dYUc8rZ2NXzh2jl45RV7G17HbCxIx5dqbFniB1phK9Uv8n2q4qul/XAJo9xC
	yl69AyW/lKoDUgs4OwohlJgvldnehY0mAnXp4ESkZPRN5PfyLJXEzszC4OA+RiKQX87xkre
	ShUC9ngUL4hM2lPQvsy9IhLpGzFVyQkWCD0PALfA==
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0

Hi all,

My goal is to minimize the DTS fragments 
(u-boot/arch/arm/dts/*-u-boot.dtsi) in U-Boot, consolidate them 
upstream, and improve clarity/visibility.

On 11/12/25 19:34, Quentin Schulz wrote:
> Hi all,
> 
> On 11/12/25 10:40 AM, Diederik de Haas wrote:
>> [You don't often get email from diederik@cknow-tech.com. Learn why 
>> this is important at https://aka.ms/LearnAboutSenderIdentification ]
>>
>> Hi Naoki,
>>
>> On Wed Nov 12, 2025 at 12:42 AM CET, FUKAUMI Naoki wrote:
>>> On 11/12/25 03:32, Quentin Schulz wrote:
>>>> On 11/11/25 5:14 PM, Dragan Simic wrote:
>>>>> On Tuesday, November 11, 2025 16:32 CET, FUKAUMI Naoki
>>>>> <naoki@radxa.com> wrote:
>>>>>> On 11/11/25 23:46, Dragan Simic wrote:
>>>>>>> On Tuesday, November 11, 2025 14:07 CET, "Diederik de Haas"
>>>>>>> <diederik@cknow-tech.com> wrote:
>>>>>>>> On Tue Nov 11, 2025 at 6:41 AM CET, FUKAUMI Naoki wrote:
>>>>>>>>> Radxa's boards turn all LEDs on at boot(loader), but some boards
>>>>>>>>> don't have `default-state` property in Linux kernel tree but
>>>>>>>>> have it in U-Boot tree instead[1].
>>>>>>>>>
>>>>>>>>> This patch adds `default-state = "on"` for (almost) all LEDs 
>>>>>>>>> (with a
>>>>>>>>> few exceptions which should be "off" such as RGB LEDs on E25 
>>>>>>>>> and LAN/
>>>>>>>>> WAN LEDs on E20C/E52C).
>>>>>>>>
>>>>>>>> I'm missing the *why* these changes would be an improvement.
>>>>>>>>
>>>>>>>> Personally, for both 'heartbeat' and 'netdev' triggers, I want 
>>>>>>>> them to
>>>>>>>> be off by default and once it gets a 'heartbeat' or a 'netdev'
>>>>>>>> trigger, THEN I want the LED to be on/blinking.
>>>>>>>
>>>>>>> That's a good question for Naoki.  My own preference would also
>>>>>>> be to have the device's power LED turned on by U-Boot as quickly
>>>>>>> as possible after supplying power to the board or turning it on
>>>>>>> by pressing the power button.  I'm actually not a big fan of
>>>>>>> having all the LEDs shining for a couple of seconds or so, which
>>>>>>> may actually look like some error condition to me.
>>>>>>>
>>>>>>> Having all that in mind, I may suggest that just the U-Boot's
>>>>>>> behavior is changed to turn the power LEDs on only.
>>>>>>
>>>>>> I can't quite explain it, but...
>>>>>>
>>>>>> - 1st (Power) LED
>>>>>>
>>>>>> The 1st (power) LED turns on automatically/immediately without 
>>>>>> software
>>>>>> intervention. (On some boards, this LED cannot be controlled by 
>>>>>> software
>>>>>> at all.)

I'm not saying the DTS has anything about LEDs that can't be controlled 
by software, nor am I trying to add such a thing to the DTS.

I'm just pointing out that the power LED is always on right after 
power-up. This makes it useless for determining if the software is running.

>>>>>> In DTS, this should be described using `default-state = "on"`. The 
>>>>>> use
>>>>>> of the Linux-specific property `linux,default-trigger = "default- 
>>>>>> on"` is
>>>>>> unsuitable for non-Linux environments.
>>>>>>
> 
> I think the wording in the binding can be understood two ways.
> 
> The binding says the following about the default-state property:
> 
> """
>        The initial state of the LED. If the LED is already on or off and 
> the
>        default-state property is set the to same value, then no glitch 
> should be
>        produced where the LED momentarily turns off (or on). The "keep" 
> setting
>        will keep the LED at whatever its current state is, without 
> producing a
>        glitch.
> """
> 
> I think the issue here is around the meaning of "initial state". I 
> believe Naoki is probably thinking about the **HW** initial state of the 
> LED, which is whatever is the state of the LED without SW control. I 
> think Diederik is thinking about this being the state of the LED right 
> when the SW takes over and configures the LED before the trigger is setup.
> 
> In the first interpretation, there's no need for an "improvement" for 
> the patches as they would just fix correctness of the DT wrt HW state at 
> boot.
> 
> In the second interpretation, a change of this value must be justified 
> as people will simply disagree forever and we could end up with people 
> reverting other people's patches after each release. If it's just a 
> matter of taste, I believe the typical answer is keeping the status quo.
> 
> We should find a way to make this binding not up to interpretation.
> 
> Additionally, if the LED cannot be controlled on some boards, I don't 
> think it should be part of the DT.
> 
>>>>>> - 2nd (Heartbeat) LED
>>>>>>
>>>>>> The 2nd (heartbeat) LED can be controlled by software. It should 
>>>>>> be lit
>>>>>> up as quickly as possible to indicate that the very first software
>>>>>> (e.g., the bootloader) is running.
>>>>>>
> 
> My understanding is Naoki wants to use default-state = on, for the 
> bootloader to turn it on as soon as it takes over control of the LEDs.
> 
>>>>>> On Linux, usually this is used as `linux,default-trigger = 
>>>>>> "heartbeat"`.
>>>>>> It indicates that kernel is running (regardless of the `default- 
>>>>>> state`
>>>>>> setting), and its behavior can be modified in user space.
>>>>>
>>>>> As discussed already in the #linux-rockchip IRC channel, [1] perhaps
>>>>> the best option would be to have the power LEDs turned on as quickly
>>>>> upon powering on the board as possible, and to have U-Boot pulsate
>>>>> the heartbeat LEDs using the LED_BOOT feature.  In such a scenario,
>>>>> no other LEDs would be turned on early, and the LED-related DT parts
>>>>> specific to U-Boot would be migrated to the kernel DTs.
>>>>>
>>>>> [1] https://libera.catirclogs.org/linux-rockchip/2025-11-11#38997824;
>>>>
>>>> The LED_BOOT feature (guarded by the Kconfig symbol of the same 
>>>> name) in
>>>> U-Boot only applies if /options/u-boot/boot-led property is set.
>>>
>>> For the default state of the heartbeat LED, I'm thinking of using
>>> LED_BOOT (/options/u-boot/boot-led), but I'm concerned that this is
>>> U-Boot-specific.
>>
>> If U-Boot wants to use the heartbeat LED to signal the *bootloader* is
>> running, I guess that's fine. And if you want to make it solid or
>> blinking, that seems best discussed on the U-Boot ML.
>>
> 
> The solution may still involve configuring the Device Tree, and we're 
> trying to have U-Boot-specific changes to the Device Tree in U-Boot 
> source tree to a minimum.
> 
>> I still consider the bootloader and the kernel stages separate.
> 
> They do however share most of their Device Tree (for Rockchip at least) 
> and the least (ideally no) changes we can have in U-Boot the better.
> 
>> And I haven't seen an argument why I should change *my* opinion on the
>> heartbeat and netdev triggers (default-state) wrt the kernel.
>>
> 
> Device Tree is not kernel specific as you said already.
> 
>> I don't think that what U-Boot does or doesn't do, should determine what
>> the Linux kernel does or doesn't do.
> 
> It shouldn't, but (most of) the Device Tree is shared, so you cannot 
> just dismiss U-Boot behavior when talking about Linux behavior based on 
> Device Tree interpretation. We may have a need for a bootloader-specific 
> property. We have a Linux-specific one after all (linux,default- 
> trigger). Though... that does seem to be on the edge of what the DT is 
> made for (description of the HW, not logic/policy).
> 
>> I have no plans to use another bootloader then U-Boot, but it's possible
>> that people do, so what the Linux kernel does should be independent from
>> what the/a specific bootloader does.

Each software should be independent, but hardware (state) cannot be 
independent.

> Barebox also uses upstream DT as far as I know and supports some Radxa 
> products (Rock 5B/5T/..., CM3, Rock (RK3188), Rock 3A from the arch/arm/ 
> boards/radxa-* directories). Zephyr has support for RK3568, RK3588, and 
> other SoCs, and uses upstream DT as well.
> 
> Again, we're talking about modifications of the Device Tree here, so 
> typically I would expect all consumers of that DT to be interpreting the 
> properties the same way, except if you have OS-specific properties/nodes 
> (think u-boot,config-compatible nodes, linux, prefixed properties, 
> bootph- properties, ...).
> 
>> And as I said before, *I* want LEDs with netdev and heartbeat triggers,
>> to be off (at the start, which is indeed the default value).

If you are using U-Boot, heartbeat LED is already on by U-Boot,
e.g.
  https://source.denx.de/u-boot/u-boot/-/blob/v2025.10/arch/arm/dts/rk3588s-rock-5a-u-boot.dtsi#L10-12

But it's not visible in DTS in Linux,
e.g.
  https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts?h=v6.17#n55

I think this situation should be fixed.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>> I use the heartbeat trigger to:
>> 1) See the kernel has started (and has gotten to the point the heartbeat
>>     'infrastructure' has been set up
>> 2) Wait for the blinking to slow down as that (generally) means it's
>>     pretty much done with the boot process and the SSH server should
>>     probably be running then, so I can login
>> 3) When the heartbeat LED is solid, that means the system has crashed
>>     (f.e. due to overheating ...)
>>
> 
> If the *HW* default state of the LED is off and the default-state 
> property is off, then you won't be able to tell apart a completely 
> bricked board and one that is stuck somewhere between U-Boot proper and 
> the Linux kernel taking over that LED.
> 
>> And also, if you're going to change/override other people's choices, a
>> motivation as to why would be 'nice'.
>>
>>>> <more discussion about LED functionality in U-Boot ...>
>>>
>>> As you know, default "default-state" is "off".
>>>    https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/ 
>>> linux.git/tree/Documentation/devicetree/bindings/leds/common.yaml? 
>>> h=v6.17#n74
>>>
>>> As far as I understand, there should not be any workarounds for specific
>>> implementations.
>>>    https://lore.kernel.org/linux-rockchip/3389401.44csPzL39Z@phil/
>>>
>>> So removing `default-state = "off"` is acceptable, right?
>>
>> I don't see/understand the connection with 'workarounds for specific
>> implementations' with removing ``default-state = "off"``.
>>
>> IMO it's perfectly fine to remove ``default-state = "off"``, although
>> having it explicitly may be useful, especially if the commit that set
>> that property specified *why* it should be "off".
>>
> 
> The status property defaults to okay, and we do not want them to be 
> listed explicitly. Not sure if there's consensus on applying this to all 
> properties which have defaults, across all subsystems.
> 
>> Relatedly, when a node does not have the 'default-state' property, I
>> would _assume_ the author wanted/intended it to be "off". Ideally it
>> would be described in the commit message, but that is optional.
> 
> The lack of a property doesn't necessarily mean it was forgotten, agreed.
> 
>> But if that is changed, then it should be motivated *why*.
>>
> 
> Agreed.
> 
> Cheers,
> Quentin
> 


