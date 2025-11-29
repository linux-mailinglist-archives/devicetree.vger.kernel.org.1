Return-Path: <devicetree+bounces-243075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA43C9374B
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 04:41:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5E32B4E0EE1
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 03:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F83C15A864;
	Sat, 29 Nov 2025 03:41:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau1.qq.com (smtpbgau1.qq.com [54.206.16.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B907849C
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 03:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.16.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764387687; cv=none; b=hjfptymC9Jn5/8u/TSl6lqTzZti2AxyiG3l7EP0k2tCdy5YQ8oJp7X3ffWABtgt0kMukHNo8iAE4XSrY9sC0xU/qWqszsiSN1KmpRtbkxq/2APeRYojvyucizDwoN9rELAJ7cQpVDSUecdqZfdwaOnfLDm9Yv6YxCTaA90MrlTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764387687; c=relaxed/simple;
	bh=JHW8++nTFcgbsz61czu8Twjj0Ajp1J3ybLw5eosCTLk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g1pxBKrBcUi7rq3BMfNEG4Z8gGpmS+8Vi/Xs9tNVO9TMb8LRPLaVUijyFFE02fluoYOH/8JtL9Plur5IlPGuESWyRNbDhkjgo4dWX+jWuaIaseWYeU3LR5wDzqwgAWWIHymvXsPJAVkhJ3B3ePHdajh3QMS843/putVNp2Q5uA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.206.16.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip4t1764387613t6198e465
X-QQ-Originating-IP: ExziU2EWH7I35K9c3wktBasCtFpddUdAlqtUdEacOQw=
Received: from [IPV6:240f:10b:7440:1:380f:45ef ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 29 Nov 2025 11:40:11 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2782995150907448899
Message-ID: <60D749559660CD94+62b923bb-f852-4e83-b9fb-a2a25030ef73@radxa.com>
Date: Sat, 29 Nov 2025 12:40:10 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
To: Alex Bee <knaerzche@gmail.com>, Quentin Schulz
 <quentin.schulz@cherry.de>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20251027005220.22298-1-naoki@radxa.com>
 <acfc2185-0cb9-4620-abdb-ee25028e8374@cherry.de>
 <a93ace02-a952-4727-957b-0ed790b47676@cherry.de>
 <20486653DCCA80ED+7f87a03c-519e-4d6a-a47c-7670e5ae502c@radxa.com>
 <ffe5e4d1-49d8-4075-a5c4-6f27dda7f35a@cherry.de>
 <acbbef49-02ad-47e9-9874-68d058b95f21@gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <acbbef49-02ad-47e9-9874-68d058b95f21@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: ObRDf3flJ9WfAr60yFyssVktXuCfbpPU+ECrQ8xSztp472KnJsZaMLrq
	a6V4S/Nd/1FWv4AMoHqrc+YGRzTD7GTazbb6QvDVPmQ3ywi2wUBgPOZcO/RRzZcIsUq2CqH
	X/MVHSIzUFZ0IaZzecCowcam99Os3PjzlE4J8aRQaIW9xLYFjI96IikHDjkf47YN0+8ucxn
	CcH+8el0buIZ/29VjSDy19R3Km3UvXOSvLVNtQBHcfBqZDF3axkPyQ9hb5JMoTHckAP774b
	9x+hfu3AGOzlnIX5jS520cPxyBx+2XJpGb+tOoMGwiAIAb9TCMl9rDMzZNY3RfyBALdCZ6g
	O3TkuwHfDX7l1dJOWGAvCJC0wPyLTMRL2z6+HLLmaMLtSPIb2S8fh7kr5l5a4wvoBNNKK8R
	88YeekQkJquNPFkNf9YSGbJp7sGhGv2L9gfeKHaDZM9EPbzbiM92X9npEH8Kbva+pGnl1Dt
	+Yo9WWSNPY+IAhtMV881B3Izy+SP7+zzyOoVaE/Pkk2udRi9stgEl2ZBLXDnIXA1J5qHZtc
	L9YnNj6CL60lCbToS3vDlYkl4mFIfhG75ci88TlIKni0Pct9L3PwL57O4osV4JZAtnSyGYA
	QZRUTVCOuY/vv/mu3qhflnZdnFn1pxCg402EvGg+h9TKhw2BOY3fDt62CrEhVKaZf7tapJf
	hJFsVJeN6JLrjhM66U1RbOvij4UkmFmTMq8yGUqdlmsPSMD5gKY1YzQvpZ3+a/QYmJfUmj0
	3EMadl6d4tdx1vpxuCvTjewTgws8WFEdQsyOyHjPulnt9C/ckptnMxI+AXST57ZkS6JOdqK
	Fs/NHRwrLq9jNJlcrqNAX2aXseIXOE0KHjkZXh+q4qEzGzEjfXOmGZGobsKOhS/y9aDYNuH
	aF8kEnsuZXuzqE7nP5/YCvJ2gWjhar55QFSvfncl0FYRxw/x+MDPCvSL4zYscaL1029qFDl
	F/n7r653jxTqj4QVmb0xfrg5J
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0

Hi Alex,

On 11/29/25 10:36, Alex Bee wrote:
> Hi,
> 
> Am 28.11.25 um 13:33 schrieb Quentin Schulz:
>> Hi Naoki,
>>
>> On 11/28/25 1:09 PM, FUKAUMI Naoki wrote:
>>> Hi Quentin,
>>>
>>> On 11/28/25 19:24, Quentin Schulz wrote:
>>>> Hi Naoki,
>>>>
>>>> On 11/27/25 4:20 PM, Quentin Schulz wrote:
>>>>> Hi Naoki,
>>>>>
>>>>> On 10/27/25 1:52 AM, FUKAUMI Naoki wrote:
>>>>>> This reverts commit 8240e87f16d17 ("arm64: dts: rockchip: fix
>>>>>> audio-supply for Rock Pi 4").
>>>>>>
>>>>>> Fix the APIO5_VDD power supply to vcc_3v0 as per the schematics[1][2]
>>>>>> [3][4][5].
>>>>>>
>>>>>> This fixes the SPI-NOR flash probe failure when the blue LED is 
>>>>>> on[6],
>>>>>> and the garbled serial console output on Linux.
>>>>>>
>>>>>> The ES8316 headphone and microphone are confirmed to work correctly
>>>>>> after this fix.
>>>>>>
>>>>
>>>> Please test the ES8316 works when booting Linux from a U-Boot where 
>>>> ROCKCHIP_IODOMAIN and SPL_ROCKCHIP_IODOMAIN is *disabled*.
>>>
>>> I tried below, and confirmed that ES8316 is still working.
>>>
>>> diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4- 
>>> rk3399_defconfig
>>> index 219f42bc7d4..276ca961c10 100644
>>> --- a/configs/rock-pi-4-rk3399_defconfig
>>> +++ b/configs/rock-pi-4-rk3399_defconfig
>>> @@ -53,6 +53,7 @@ CONFIG_ROCKCHIP_GPIO=y
>>>   CONFIG_SYS_I2C_ROCKCHIP=y
>>>   CONFIG_LED=y
>>>   CONFIG_LED_GPIO=y
>>> +# CONFIG_ROCKCHIP_IODOMAIN is not set
>>>   CONFIG_MMC_DW=y
>>>   CONFIG_MMC_DW_ROCKCHIP=y
>>>   CONFIG_MMC_SDHCI=y
>>> diff --git a/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi b/ 
>>> dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
>>> index 046dbe32901..c734f7824c0 100644
>>> --- a/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
>>> +++ b/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
>>> @@ -51,7 +51,7 @@
>>>
>>>          sound: sound {
>>>                  compatible = "audio-graph-card";
>>> -               label = "Analog";
>>> +               label = "rk3588-es8316";
>>>                  dais = <&i2s0_p0>;
>>>          };
>>>
>>> @@ -516,7 +516,7 @@
>>>   };
>>>
>>>   &io_domains {
>>> -       audio-supply = <&vcca1v8_codec>;
>>> +       audio-supply = <&vcc_3v0>;
>>>          bt656-supply = <&vcc_3v0>;
>>>          gpio1830-supply = <&vcc_3v0>;
>>>          sdmmc-supply = <&vcc_sdio>;
>>>
>>> Notes:
>>> - SPL_ROCKCHIP_IODOMAIN is not set by default
>>> - I don't understand alsa ucm2 ;) so I modified /sound/label
>>>
>>
>> Thanks for testing. Let's hope the original issue doesn't appear for 
>> *some* boots (depending on probe order or some timing for example). 
>> For now I guess this will do. Adding Alex in Cc maybe they are able to 
>> reproduce the issue they had 4 years ago with their board?
>>
>> Cheers,
>> Quentin
> 
> 
> I can confirm that with this change analog audio is _broken_ for me again.
> 
> I never had any issues with uart2 or spi - neither in kernel nor in u-boot
> (also not after io-domain driver has been added to u-boot for RK3399).
> Given this commit is now ~4 years in tree  I'd guess that someone else
> would have reported that issue earlier. It's correct that this information
> came from a "Power Domain Map"  which you call "non schematic" and the
> "schematic part"  says something else -  it would have been indeed be
> better to have clearer information.

We can confirm that "schematic part" is correct.

> Anyway: I can't neither see how this change should relate to uart2 or spi
> which are both in different io-domain, nor why it would happen only in
> u-boot. My strongest guess is, that radxa changed something along the way.

I'm sorry, I can't explain the relationship between UART2/SPI and APIO5.

However, I had been seeing "the garbled serial console output on Linux" 
for a long time, and couldn't figure out how to fix it.

What version of your ROCK Pi 4 board do you have?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Or maybe it would be worth to double-check the io-domain driver in u-boot.
> 
> 
> Regards,
> Alex
> 
> 
> 



