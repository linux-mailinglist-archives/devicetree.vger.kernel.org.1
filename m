Return-Path: <devicetree+bounces-237364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B84C50154
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 00:43:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 88B9D34AF4A
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 23:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A07022F39B1;
	Tue, 11 Nov 2025 23:43:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau2.qq.com (smtpbgau2.qq.com [54.206.34.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60122BCF6C
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 23:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.34.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762904632; cv=none; b=ehLf0hmeXgPQ6Zz/JVf+pFcKkpTJfXLHGhPkDuA+BoB/vYSwgnez3HXlCj9eiy7a3wPDW9QZEFSZsuqQFRT9A/mTbZQC3aZ2cHOPCtVAmbEp4o2SQGYbFwkYP4KawejciEOVwKM9gt6bQtAoEmEUxI6/SouhD632REGCfAJxhSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762904632; c=relaxed/simple;
	bh=B3Dnut4fQJEwN7E5t5xea2YKLQFbYio9PBFTVtf0OEY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e2gdIanmYrvNzcItajuR7iBM+HlOreFg+WTj/ITZqTNfG4IJg4QfrVKCBaiFjJvCuqEroFFwC34OTzklOOFMfXzuhJm62Y//sFgg/CciPXA1RA9ISsLcfUSd+3aaBLC+zjdsGOQxXZdHjs8IP11uSIEiyf27YNBX5XLUXhoXqGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.206.34.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip2t1762904540t397faa64
X-QQ-Originating-IP: 3dcZPtBgO74voEANBI/ulcXObdXebQI56V2G+7JYn5A=
Received: from [IPV6:240f:10b:7440:1:16e6:e9c9 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 12 Nov 2025 07:42:15 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 6471954112606321515
EX-QQ-RecipientCnt: 24
Message-ID: <774C3AB9F17BAE47+14f8b8ba-ba78-410e-b44c-4d077585d05a@radxa.com>
Date: Wed, 12 Nov 2025 08:42:15 +0900
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
 Dragan Simic <dsimic@manjaro.org>
Cc: Diederik de Haas <diederik@cknow-tech.com>, heiko@sntech.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com,
 pgwipeout@gmail.com, jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn,
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
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <572f341f-a5fa-4f1c-ad60-a5fe3e046d6d@cherry.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: M1tjFO1fqc+0IfBo9l2tuQU3vy+iWq+8WnPAtaUAuOdXJkKN2Gd2jVhD
	3oGBZgB1n9ZktmGoaJVVKDLwiSHWY4XEy8+VH2UH1uc9PwC/NUKvPM0D8R1MP0fqHHw5T8Z
	Fg9kH3zMaV7qdK+LSjO4QZkXAH/rUsx0AeR2IUZzXRQq5bOGF/Un6ewVJ+wO3s43vIHiIp4
	/6ySfUvPjc/sgdW9M3V5s3fmznNUm0luip6eST58WBO2v+vACqy7qXJWZ68HM1qJ9cgLg5N
	T2MlSwWFl4JDi/blch0+xYBdMGsI/GbFDQNADtMVmty6bwEppBe+KLn/OWb64Mmdd01AF8V
	3w30yaIoYEDpaWvqVqTUX4TXoSEx4obvJsLn/FQfJgu2sS+Lz0MGrRDatSLVMPCHLG07tgR
	cXe2HWE0roeBcEVmrnz+wE6emSzB2TT7oXCMFnXEpGj0xFPGRabAKLlAqKdRgBjFyX3j5YF
	KuFquD4i8qMI9FNwRPIe6G2tKGhpNpWSFQSZRarnU+HTGj1p7F9Jzq9emPzJaEZwM1/LN2b
	LZqtghuLDMLnnKRg91wYEUcMF6Q1JEypHfWcC9jmHOx85zfdS7QKrsJTNUCSfmbBa6ofkTS
	Zchpl/r9Ro7th5wKS85zKoU12lrcFliwUH34yO441KjkRrFv+LkUdYf5cGh86o6ADV/1Hxh
	SQvdmUUMBxcdv6N+4fmmUJPq1DitgbKdzatEaTN1LSOi3vGRjha4Tg3vkRKoNephw8OMDaL
	Jytq1St9UzDuSx/MatiV+kGG2DGN6PXn0Q5/C6EZPjOlCF8GizT9Bb0azRQh9Y2cyH8gJx0
	WJe6jxqXMx/thmw7tV7Vflfl3Dj9c0vayfyfULWOlEuUlHexzIy7EbKwb1CdQ4gGZ6pxsO7
	1a7Nm/CLfhziqiu2PfXcZrGlB2shSS47G3VJ26MhNBY3HLvn43owLcocqZxoss+dTzMQCj4
	be6cNBUOeiXEsNWpLsPSMnNjZtD+2+Q8pdwKWVButu+DVvLWDvpNW2+OeVSEjK2NPdPbgX1
	fq+NNC0A==
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0

Hi Quentin,

On 11/12/25 03:32, Quentin Schulz wrote:
> Hi all,
> 
> On 11/11/25 5:14 PM, Dragan Simic wrote:
>> Hello all,
>>
>> (+ Quentin)
>>
>> On Tuesday, November 11, 2025 16:32 CET, FUKAUMI Naoki 
>> <naoki@radxa.com> wrote:
>>> On 11/11/25 23:46, Dragan Simic wrote:
>>>> On Tuesday, November 11, 2025 14:07 CET, "Diederik de Haas" 
>>>> <diederik@cknow-tech.com> wrote:
>>>>> On Tue Nov 11, 2025 at 6:41 AM CET, FUKAUMI Naoki wrote:
>>>>>> Radxa's boards turn all LEDs on at boot(loader), but some boards 
>>>>>> don't
>>>>>> have `default-state` property in Linux kernel tree but have it in
>>>>>> U-Boot tree instead[1].
>>>>>>
>>>>>> This patch adds `default-state = "on"` for (almost) all LEDs (with a
>>>>>> few exceptions which should be "off" such as RGB LEDs on E25 and LAN/
>>>>>> WAN LEDs on E20C/E52C).
>>>>>
>>>>> I'm missing the *why* these changes would be an improvement.
>>>>>
>>>>> Personally, for both 'heartbeat' and 'netdev' triggers, I want them to
>>>>> be off by default and once it gets a 'heartbeat' or a 'netdev' 
>>>>> trigger,
>>>>> THEN I want the LED to be on/blinking.
>>>>
>>>> That's a good question for Naoki.  My own preference would also
>>>> be to have the device's power LED turned on by U-Boot as quickly
>>>> as possible after supplying power to the board or turning it on
>>>> by pressing the power button.  I'm actually not a big fan of
>>>> having all the LEDs shining for a couple of seconds or so, which
>>>> may actually look like some error condition to me.
>>>>
>>>> Having all that in mind, I may suggest that just the U-Boot's
>>>> behavior is changed to turn the power LEDs on only.
>>>
>>> I can't quite explain it, but...
>>>
>>> - 1st (Power) LED
>>>
>>> The 1st (power) LED turns on automatically/immediately without software
>>> intervention. (On some boards, this LED cannot be controlled by software
>>> at all.)
>>>
>>> In DTS, this should be described using `default-state = "on"`. The use
>>> of the Linux-specific property `linux,default-trigger = "default-on"` is
>>> unsuitable for non-Linux environments.
>>>
>>> - 2nd (Heartbeat) LED
>>>
>>> The 2nd (heartbeat) LED can be controlled by software. It should be lit
>>> up as quickly as possible to indicate that the very first software
>>> (e.g., the bootloader) is running.
>>>
>>> On Linux, usually this is used as `linux,default-trigger = "heartbeat"`.
>>> It indicates that kernel is running (regardless of the `default-state`
>>> setting), and its behavior can be modified in user space.
>>
>> As discussed already in the #linux-rockchip IRC channel, [1] perhaps
>> the best option would be to have the power LEDs turned on as quickly
>> upon powering on the board as possible, and to have U-Boot pulsate
>> the heartbeat LEDs using the LED_BOOT feature.  In such a scenario,
>> no other LEDs would be turned on early, and the LED-related DT parts
>> specific to U-Boot would be migrated to the kernel DTs.
>>
>> [1] https://libera.catirclogs.org/linux-rockchip/2025-11-11#38997824;
>>
> 
> The LED_BOOT feature (guarded by the Kconfig symbol of the same name) in 
> U-Boot only applies if /options/u-boot/boot-led property is set.

For the default state of the heartbeat LED, I'm thinking of using 
LED_BOOT (/options/u-boot/boot-led), but I'm concerned that this is 
U-Boot-specific.

> If the driver for the LED (typically a GPIO LED controller I guess, so 
> LED_GPIO symbol) is compiled in, then, as far as I could tell, the Boot 
> LED will be turned on right before entering the main loop of U-Boot.
> 
> If LED_BLINK (if HW blinking is supported) or LED_SW_BLINK is enabled, 
> the Boot LED will be blinking some time after relocation but still 
> turned on soon after (if it reaches that part of the code). This means 
> it'll be on before the kernel starts.
> 
> I'm not sure there's a way to hook something *after* we've entered U- 
> Boot main-loop (read "call led_boot_blink() from some board file"), 
> aside from calling `led <led-name> blink <period>` from U-Boot CLI.
> 
> I'm a bit bummed by this behavior, I would have preferred the ability to 
> have the Boot LED blink until the kernel starts. I could then have a 
> different period for U-Boot (50% duty cycle at 250ms period by default) 
> and for the kernel. Of course, if it's SW blinking, once exiting U-Boot 
> it won't blink anymore until the kernel takes over, but that's also a 
> nice information to have. Anyway, I'm not sure this is actually possible 
> with the LED_BOOT feature though one should be able to do this by 
> specifying the label of an LED node to fetch from DT and then calling 
> led_set_period(dev, period_ms); followed by led_set_state(dev, 
> LEDST_BLINK); in a board file, but this is also not so nice as it then 
> also requires some C board-specific code in U-Boot.
> 
> In U-Boot, only LEDs which have a "default-state" properties will be 
> auto-configured, otherwise one needs to control them manually (e.g. via 
> the `led` CLI command).

As you know, default "default-state" is "off".
  https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/leds/common.yaml?h=v6.17#n74

As far as I understand, there should not be any workarounds for specific 
implementations.
  https://lore.kernel.org/linux-rockchip/3389401.44csPzL39Z@phil/

So removing `default-state = "off"` is acceptable, right?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> If one wants to detect via an LED the current boot stage (U-Boot 
> reached, kernel started), then we need to NOT use LED_BOOT feature and 
> have U-Boot set the "boot" LED the opposite state than the default HW 
> state, i.e. if the LED is on without any running SW (power applied to 
> the device, empty boot media), then U-Boot should set it to off. Then 
> the kernel simply needs to start the heartbeat mode whenever ready. If 
> the default HW state is off, then U-Boot should set it on. I haven't 
> looked into the kernel side of things, but there could be a window 
> during which default-state property is applied before the heartbeat is 
> actually started.
> 
> The logic exposed in the previous paragraph should provide visual cues 
> on the current boot stage.
> 
> Note that LEDs with linux,default-trigger = "pattern" (with default- 
> state property) will be blinking once auto-configured in U-Boot as well 
> according to my reading of the led-uclass.c.
> 
> Hope this helps.
> 
> Cheers,
> Quentin
> 


