Return-Path: <devicetree+bounces-243072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A39C9362A
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 02:36:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70D6B3A7D2A
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 01:36:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ED2F1A073F;
	Sat, 29 Nov 2025 01:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L4rohnMu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5A33D994
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764380192; cv=none; b=V6cc61hPBirta8mSIzC+xxcoyq31ipnUP0YW6fGdCI2IUr1Xn4vXefNjnoHn0Ey7DyguDm+W22VSe0oSt0OVO5JNEOHZ7UI3UzWdCNVnxQBlZxMpNrqJB2cYA/psg0Uvk46ErOyAqMktwVLsy+3lvSE9ob3WAG7tT3d/qIEXJyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764380192; c=relaxed/simple;
	bh=2xaCtJUa6eb+n4HDagZQL7TGTypY2X5CmyLEfb+K8So=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hcMCe4LB5jASQNZdZIZGDGBy2nTYhLb3d2nhs/jxIRinM10AJFRogDDG6QObbrFb9dwhSOIIy6Mb675xYMbcuuKSAbZftga/RVUShUJ+3bfcMUmtp+43ue8J5aqDX1y2xCEe/q9KRejG2ZQC55sQXQtw3QyTTnxH01x99PB5qR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L4rohnMu; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-63c489f1e6cso3630915a12.1
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 17:36:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764380189; x=1764984989; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=brbtVzp9BLMWuVli2pkASz2oawHMJEd3+pWhWeFi5tI=;
        b=L4rohnMuHrw2gJK3WS4vq5jylL7Ysygcna8BTU9rDTo/xN/6/NFm697ea9WpsjJAxW
         KZxMi6gnixFD9y45BJbvBxwMDBNkW5c5iFDIEjxfBeSEdm3Zu0Vajkmf5+GGI+EZXxHN
         9DV/KUguFwSCaTHrzmQIQtiqoQsMNpkLStzU55t5u9vS+cf0uUSSguVjoFLQzkzhk+nw
         iCW7/jCGVauMMevCMNQVdKTUKTaQlLwKpJ4NdclH+YI55aDrdKGfmjh+br+TEWc632S0
         eHbWewa6tIuHp8fM5k6CpxY0GmuErCmrFQfTeHL1ehzQN6lmOoGEIjj+Z8Jf3q2KDUNR
         YIOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764380189; x=1764984989;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=brbtVzp9BLMWuVli2pkASz2oawHMJEd3+pWhWeFi5tI=;
        b=E5oGdLE9G+C8TBfdOgDYFR6o/azreUckVSfUk4IOkw/mfQgAZEVlCuRDzin++NXg+8
         M7K3e0zfyoCpQCbk9VcKO95JQgUQYyLh7DXDQZvBxyjwbS1CXZXtkVi+nPTH8zL/n/KQ
         jBV0TUvzSH65YHWj8Z35aL+shNW1mJ96/faUIL1POgwauPlGLZt3UDvSOGyhL7kf1qvK
         CXi5/txmnvKWY0xpJbGT5pV1dJrujZ+h9QlEQKWaVZsVz4rvdN6bm7HqDlGzJCDjMQe7
         5W3Xf04vkxOd60+ECBvuJcSLnfS3eivJgzhLRv3hXjXHiVp/5SsIT348baMyHOo4Wc4M
         0dLw==
X-Forwarded-Encrypted: i=1; AJvYcCXa0QncHrHMbIz+mdWrEYhrqoDtNcTRuZU7yIhgirZmmL3+VWW8VcjRq7Q5nDstTaHfM6nexUAvlOMA@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/F9Ytjz40Jtiom7COcKFpel4JAaBw9J1oNb7BsjNZvIXceYaB
	aSS8ciCYxi00S078aWInTehweTQQ2g8eRfoL46GcM3sDVrtcmR5hU6c=
X-Gm-Gg: ASbGnctSQNBxob1q56IiDZKRwnKVlc68iWTraIu6dQrWOrO160rNeJts6xLpQ0iIpdL
	iwjmIdP5aCXLTVn3EU3JDsoBJgf6cW8/egYy3ZVZSul5eFQAPEJeP8R5rOUjbZ012tn0zqzJV0t
	jQEQk2R3IOZTQ3FXfUTJFRSmdXi7BVTkSBDD2WxbUToaYqbomLIYCpLJ7fTIBe/PVHJF6/J29O4
	nSqy2+ubzHpGUfoDtr32XlEOP2ipyOa9z87XrdSXtEz0YaNDLa8zGP0+O8C8TiLizYFshoYj0h/
	MMR3cO0Y2ldzEqIS+wHbEnE3uuCwNTqucagI96Ohnhy5YTFdPuUg1riv0GITp719WmHsmyeomXO
	q0iS9twM/Jo2yHFfTyqKUS94ninKtsqwrJCiOBHJp0pv/jIZgvBEnMmTWAV6e3ySk2YU897XK/H
	MhYM+Gchzr6hSBDKUZ+xPeQsZbhPB0oC/HoXpub8OUHTYbiGAk0ZM7JfhU
X-Google-Smtp-Source: AGHT+IF30E7FIZNrGZvmowLANQLOzFlQpnnEHeJ6v+UVVtB3DQJGu8iTaB4+RnJu0gDLiUkyoZAZBA==
X-Received: by 2002:a05:6402:350b:b0:63b:ee76:3f63 with SMTP id 4fb4d7f45d1cf-6455508801fmr30169625a12.7.1764380188746;
        Fri, 28 Nov 2025 17:36:28 -0800 (PST)
Received: from ?IPV6:2a02:810b:f13:8500:d236:5f71:a9ed:86de? ([2a02:810b:f13:8500:d236:5f71:a9ed:86de])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64750a6ea4csm5751730a12.4.2025.11.28.17.36.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 17:36:27 -0800 (PST)
Message-ID: <acbbef49-02ad-47e9-9874-68d058b95f21@gmail.com>
Date: Sat, 29 Nov 2025 02:36:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
To: Quentin Schulz <quentin.schulz@cherry.de>, FUKAUMI Naoki
 <naoki@radxa.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20251027005220.22298-1-naoki@radxa.com>
 <acfc2185-0cb9-4620-abdb-ee25028e8374@cherry.de>
 <a93ace02-a952-4727-957b-0ed790b47676@cherry.de>
 <20486653DCCA80ED+7f87a03c-519e-4d6a-a47c-7670e5ae502c@radxa.com>
 <ffe5e4d1-49d8-4075-a5c4-6f27dda7f35a@cherry.de>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <ffe5e4d1-49d8-4075-a5c4-6f27dda7f35a@cherry.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

Am 28.11.25 um 13:33 schrieb Quentin Schulz:
> Hi Naoki,
>
> On 11/28/25 1:09 PM, FUKAUMI Naoki wrote:
>> Hi Quentin,
>>
>> On 11/28/25 19:24, Quentin Schulz wrote:
>>> Hi Naoki,
>>>
>>> On 11/27/25 4:20 PM, Quentin Schulz wrote:
>>>> Hi Naoki,
>>>>
>>>> On 10/27/25 1:52 AM, FUKAUMI Naoki wrote:
>>>>> This reverts commit 8240e87f16d17 ("arm64: dts: rockchip: fix
>>>>> audio-supply for Rock Pi 4").
>>>>>
>>>>> Fix the APIO5_VDD power supply to vcc_3v0 as per the schematics[1][2]
>>>>> [3][4][5].
>>>>>
>>>>> This fixes the SPI-NOR flash probe failure when the blue LED is 
>>>>> on[6],
>>>>> and the garbled serial console output on Linux.
>>>>>
>>>>> The ES8316 headphone and microphone are confirmed to work correctly
>>>>> after this fix.
>>>>>
>>>
>>> Please test the ES8316 works when booting Linux from a U-Boot where 
>>> ROCKCHIP_IODOMAIN and SPL_ROCKCHIP_IODOMAIN is *disabled*.
>>
>> I tried below, and confirmed that ES8316 is still working.
>>
>> diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4- 
>> rk3399_defconfig
>> index 219f42bc7d4..276ca961c10 100644
>> --- a/configs/rock-pi-4-rk3399_defconfig
>> +++ b/configs/rock-pi-4-rk3399_defconfig
>> @@ -53,6 +53,7 @@ CONFIG_ROCKCHIP_GPIO=y
>>   CONFIG_SYS_I2C_ROCKCHIP=y
>>   CONFIG_LED=y
>>   CONFIG_LED_GPIO=y
>> +# CONFIG_ROCKCHIP_IODOMAIN is not set
>>   CONFIG_MMC_DW=y
>>   CONFIG_MMC_DW_ROCKCHIP=y
>>   CONFIG_MMC_SDHCI=y
>> diff --git a/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi b/ 
>> dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
>> index 046dbe32901..c734f7824c0 100644
>> --- a/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
>> +++ b/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
>> @@ -51,7 +51,7 @@
>>
>>          sound: sound {
>>                  compatible = "audio-graph-card";
>> -               label = "Analog";
>> +               label = "rk3588-es8316";
>>                  dais = <&i2s0_p0>;
>>          };
>>
>> @@ -516,7 +516,7 @@
>>   };
>>
>>   &io_domains {
>> -       audio-supply = <&vcca1v8_codec>;
>> +       audio-supply = <&vcc_3v0>;
>>          bt656-supply = <&vcc_3v0>;
>>          gpio1830-supply = <&vcc_3v0>;
>>          sdmmc-supply = <&vcc_sdio>;
>>
>> Notes:
>> - SPL_ROCKCHIP_IODOMAIN is not set by default
>> - I don't understand alsa ucm2 ;) so I modified /sound/label
>>
>
> Thanks for testing. Let's hope the original issue doesn't appear for 
> *some* boots (depending on probe order or some timing for example). 
> For now I guess this will do. Adding Alex in Cc maybe they are able to 
> reproduce the issue they had 4 years ago with their board?
>
> Cheers,
> Quentin


I can confirm that with this change analog audio is _broken_ for me again.

I never had any issues with uart2 or spi - neither in kernel nor in u-boot
(also not after io-domain driver has been added to u-boot for RK3399).
Given this commit is now ~4 years in tree  I'd guess that someone else
would have reported that issue earlier. It's correct that this information
came from a "Power Domain Map"  which you call "non schematic" and the
"schematic part"  says something else -  it would have been indeed be
better to have clearer information.

Anyway: I can't neither see how this change should relate to uart2 or spi
which are both in different io-domain, nor why it would happen only in
u-boot. My strongest guess is, that radxa changed something along the way.
Or maybe it would be worth to double-check the io-domain driver in u-boot.


Regards,
Alex



