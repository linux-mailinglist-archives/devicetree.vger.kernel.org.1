Return-Path: <devicetree+bounces-243079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BE6C937C6
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 05:04:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E330934A5FA
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 04:04:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6485D204C36;
	Sat, 29 Nov 2025 04:04:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813273C17
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 04:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764389054; cv=none; b=D6jid9N5I0L1ztXwDAqHEcW5LHzsSnyrzzhDudk8zG2lxOg3BLwgZauHXbeos0fycnTzRtlt7jN/QgmHNhgfmkNTWaMEXTCNrTsyK1E4klFNlBBBC47sZ+aJfonEJLvVt2N2MwkTIGM0XFJo/AV+IkLiG6ia06v1WZHa8rWp3so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764389054; c=relaxed/simple;
	bh=2Tg+DtZLvQ595heDXeDPQglgcjPq+PUtqrWOF1kDb18=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=H9xGLUsGdlWQzEDvvF063KNWXNCUYCITMwHPtgdlXP6mTxULqeyR2s4m/DrivdwP1DYxQEgIMoAg5ZqVxhAJt9/5QLfkB/V87o6p0RUtZGvWbWXHaMS46LvW6Ob+N7n6Mhgj3uIwKkwXnXYF8oil4OhpXOS/dgIaRIlztlnYmLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1764388956td5c53d22
X-QQ-Originating-IP: LtdDIbjCJka5QY1AWc27CjPJrWrm6S0Uh6qE7A0HUxs=
Received: from [IPV6:240f:10b:7440:1:380f:45ef ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 29 Nov 2025 12:02:33 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 10765144397012433443
Message-ID: <980092DD85519275+a4dd9cbd-12ad-4aec-b1a1-1b15f9932b8d@radxa.com>
Date: Sat, 29 Nov 2025 13:02:33 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
From: FUKAUMI Naoki <naoki@radxa.com>
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
 <60D749559660CD94+62b923bb-f852-4e83-b9fb-a2a25030ef73@radxa.com>
Content-Language: en-US
In-Reply-To: <60D749559660CD94+62b923bb-f852-4e83-b9fb-a2a25030ef73@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Nv1Zs1ssfOILQrTS0HjFHn65hhHoXvEr/AgQtjYuc4eSyQ+bZ/f1CJvb
	kSR8ySPF/qwYx9ji3SxVowv+yVjeJhtYgKCETzV39T5PWiM/VtK0R13m68pfhDfCZAtpUhv
	OtbCx5DErZVehHOQvLOZcokeks90rjr8FXDBsRcnJ2nc800ijGhpgz1NVEAkBv25mj7zCeT
	yBh5rfB94/WzKd6OccajraJ9M33OARhhdpRVf4D7SzbaM299FfXN7WcOg+PqK9spuslCWbq
	2juosDcc+nte5Y6ETFouEz2bwsN7cB6g02YgdTTadOws+3fLH3RFp98DYzFqNJ944ptHEym
	br2PBvRy2fer6dIMvpJAc/e9fC5KxrJczE+0wHzvGFIzgM6EHqFmLPN6C8zKyPS/P0HE+aO
	MuoWVQ+PQrVIGH2ejHICamW6mXwFTTIwpC3qOffV1pAdyp+/bWHtoSrhYkh37Uec4YXbf+h
	4S/dmVrEmE1SscsOj8xEywsNBEfGigo9qmvSbPafXL0w6ZIYBNhcA6cVGG0xk91Xz0SkxKO
	sJ68Ek8qY1E9uEIRm6AAHEHGWbaScYDaNo03WOmAMBncIK/WLrmoMe/lE79i4sVh3V1Qasp
	QvR4jRMt0jonzuQYyvEIJyVTv7eSklYEn3zFyFTqSr6B91jZnuhyczLrzHW3DwA5O4mhQXT
	VnEL2CMrey8x9/zVExX52bgMgopsLkNei+/HYzJrO24lhv4OT7prk3OoxMipwBTVSR8qoCR
	n+OcTjaFC1ozA748q2DuiK4esudQLz4Z2t5nzrv6GtRM2MeSCk/B2OAbYM0chXG8scfxo5h
	xu0mpxi+ZQRqU6ut7MUDCLBcl3Ev3BqvCACb8aexwHq4DhohFdqIPEBkY0b1uPFhgs5hcYG
	+H6NxQhP3dT1xBUAQvcbLoSB/vAmystR3xQ1BDYTkkU4yf99zNjh1dEA5js0A6VpzFcT0Wq
	eW6sW6N4YjNGiRGZsCTirtQJgi7k8cb1CLOnrh9qMt2oJXYrqsOH5ETpFiyauen1lfsl7GN
	g3DEHMYg==
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0

I forgot to mention this:
  https://forum.radxa.com/t/problem-using-i2s-and-spi-on-the-gpio-header-of-the-rock-pi-4b/25390/14

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 11/29/25 12:40, FUKAUMI Naoki wrote:
> Hi Alex,
> 
> On 11/29/25 10:36, Alex Bee wrote:
>> Hi,
>>
>> Am 28.11.25 um 13:33 schrieb Quentin Schulz:
>>> Hi Naoki,
>>>
>>> On 11/28/25 1:09 PM, FUKAUMI Naoki wrote:
>>>> Hi Quentin,
>>>>
>>>> On 11/28/25 19:24, Quentin Schulz wrote:
>>>>> Hi Naoki,
>>>>>
>>>>> On 11/27/25 4:20 PM, Quentin Schulz wrote:
>>>>>> Hi Naoki,
>>>>>>
>>>>>> On 10/27/25 1:52 AM, FUKAUMI Naoki wrote:
>>>>>>> This reverts commit 8240e87f16d17 ("arm64: dts: rockchip: fix
>>>>>>> audio-supply for Rock Pi 4").
>>>>>>>
>>>>>>> Fix the APIO5_VDD power supply to vcc_3v0 as per the 
>>>>>>> schematics[1][2]
>>>>>>> [3][4][5].
>>>>>>>
>>>>>>> This fixes the SPI-NOR flash probe failure when the blue LED is 
>>>>>>> on[6],
>>>>>>> and the garbled serial console output on Linux.
>>>>>>>
>>>>>>> The ES8316 headphone and microphone are confirmed to work correctly
>>>>>>> after this fix.
>>>>>>>
>>>>>
>>>>> Please test the ES8316 works when booting Linux from a U-Boot where 
>>>>> ROCKCHIP_IODOMAIN and SPL_ROCKCHIP_IODOMAIN is *disabled*.
>>>>
>>>> I tried below, and confirmed that ES8316 is still working.
>>>>
>>>> diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4- 
>>>> rk3399_defconfig
>>>> index 219f42bc7d4..276ca961c10 100644
>>>> --- a/configs/rock-pi-4-rk3399_defconfig
>>>> +++ b/configs/rock-pi-4-rk3399_defconfig
>>>> @@ -53,6 +53,7 @@ CONFIG_ROCKCHIP_GPIO=y
>>>>   CONFIG_SYS_I2C_ROCKCHIP=y
>>>>   CONFIG_LED=y
>>>>   CONFIG_LED_GPIO=y
>>>> +# CONFIG_ROCKCHIP_IODOMAIN is not set
>>>>   CONFIG_MMC_DW=y
>>>>   CONFIG_MMC_DW_ROCKCHIP=y
>>>>   CONFIG_MMC_SDHCI=y
>>>> diff --git a/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi 
>>>> b/ dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
>>>> index 046dbe32901..c734f7824c0 100644
>>>> --- a/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
>>>> +++ b/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
>>>> @@ -51,7 +51,7 @@
>>>>
>>>>          sound: sound {
>>>>                  compatible = "audio-graph-card";
>>>> -               label = "Analog";
>>>> +               label = "rk3588-es8316";
>>>>                  dais = <&i2s0_p0>;
>>>>          };
>>>>
>>>> @@ -516,7 +516,7 @@
>>>>   };
>>>>
>>>>   &io_domains {
>>>> -       audio-supply = <&vcca1v8_codec>;
>>>> +       audio-supply = <&vcc_3v0>;
>>>>          bt656-supply = <&vcc_3v0>;
>>>>          gpio1830-supply = <&vcc_3v0>;
>>>>          sdmmc-supply = <&vcc_sdio>;
>>>>
>>>> Notes:
>>>> - SPL_ROCKCHIP_IODOMAIN is not set by default
>>>> - I don't understand alsa ucm2 ;) so I modified /sound/label
>>>>
>>>
>>> Thanks for testing. Let's hope the original issue doesn't appear for 
>>> *some* boots (depending on probe order or some timing for example). 
>>> For now I guess this will do. Adding Alex in Cc maybe they are able 
>>> to reproduce the issue they had 4 years ago with their board?
>>>
>>> Cheers,
>>> Quentin
>>
>>
>> I can confirm that with this change analog audio is _broken_ for me 
>> again.
>>
>> I never had any issues with uart2 or spi - neither in kernel nor in u- 
>> boot
>> (also not after io-domain driver has been added to u-boot for RK3399).
>> Given this commit is now ~4 years in tree  I'd guess that someone else
>> would have reported that issue earlier. It's correct that this 
>> information
>> came from a "Power Domain Map"  which you call "non schematic" and the
>> "schematic part"  says something else -  it would have been indeed be
>> better to have clearer information.
> 
> We can confirm that "schematic part" is correct.
> 
>> Anyway: I can't neither see how this change should relate to uart2 or spi
>> which are both in different io-domain, nor why it would happen only in
>> u-boot. My strongest guess is, that radxa changed something along the 
>> way.
> 
> I'm sorry, I can't explain the relationship between UART2/SPI and APIO5.
> 
> However, I had been seeing "the garbled serial console output on Linux" 
> for a long time, and couldn't figure out how to fix it.
> 
> What version of your ROCK Pi 4 board do you have?
> 
> Best regards,
> 
> -- 
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
>> Or maybe it would be worth to double-check the io-domain driver in u- 
>> boot.
>>
>>
>> Regards,
>> Alex
>>
>>
>>
> 
> 


