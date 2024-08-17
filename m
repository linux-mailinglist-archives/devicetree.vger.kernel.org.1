Return-Path: <devicetree+bounces-94461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4DC9559D7
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 23:33:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B1FDFB20FFE
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 21:33:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA33214375A;
	Sat, 17 Aug 2024 21:33:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A253A12DD88
	for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 21:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723930407; cv=none; b=clTp3kYmA6NR4/G9a1UQsj0UMYs8wCiXVRvnuslHlJ8tzmSpQkHw8/cp1K28SCEIQOl6pv+/EyYopaUAciwONNCauQgcYtnfQrma2kZgWoKU/31fNHHkuyZbg1JTDi0Vak3X8WItoa/ffoHKQ0UHMrq18AA+FdcQO0spzP1RMus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723930407; c=relaxed/simple;
	bh=bW6qeK6rawmD+O65gBKrmPETB2yJQ586fTU1ZwKSkmM=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Ifmft5zY4adthdeKoDsMOFZbWsWboeo7+c1dU7XJOANluEDvSTnDCwJsMIa4wmML1j2c5BC+qEESwkJLG97vT7p9KbLs/vBDJ3+ZwKLEi42gWyABlJOUSglcoNptCWjHsZqQY2WBAUm6MZXzXKe/rrnhKqaOUsoPkDA+LaoXXAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp78t1723930341tk1l5dvc
X-QQ-Originating-IP: yrnga0ti7bvjR48Z1W4ous1yymWrBfyK3i0t8kPdg6I=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 18 Aug 2024 05:32:19 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9311570680053716800
Message-ID: <3CD9E3AF16651DAA+6ab0bf56-89cc-493e-a87d-2e6680be566f@radxa.com>
Date: Sun, 18 Aug 2024 06:32:18 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: add support for Radxa ROCK
 Pi E v3.0
From: FUKAUMI Naoki <naoki@radxa.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240816213429.1093-1-naoki@radxa.com>
 <20240816213429.1093-2-naoki@radxa.com> <1819066.TLkxdtWsSY@diego>
 <85AB3D0B7214AEEA+d54aaa4a-ce0b-43ef-8cb8-ea2c2f305bcd@radxa.com>
 <cd08ce18bde728e2b33a995834441399@manjaro.org>
 <10ac45cf5bb5dfab9c08160c826c9b28@manjaro.org>
 <B26198585C33E0EC+958ace8d-0f31-4fc1-acc2-f090a31fa2e6@radxa.com>
 <79b071b69f0a3e5faac2c3daf1a4f272@manjaro.org>
 <0CF9D1576916E834+1a310fc3-d77a-4296-818c-81800d9859cd@radxa.com>
Content-Language: en-US
In-Reply-To: <0CF9D1576916E834+1a310fc3-d77a-4296-818c-81800d9859cd@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

for the record,

 
https://openwrt.org/docs/guide-developer/device-support-policies#modeldevice_name
  https://openwrt.org/docs/techref/sysupgrade

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 8/18/24 05:28, FUKAUMI Naoki wrote:
> On 8/18/24 05:12, Dragan Simic wrote:
>> On 2024-08-17 22:04, FUKAUMI Naoki wrote:
>>> On 8/18/24 04:51, Dragan Simic wrote:
>>>> On 2024-08-17 21:28, Dragan Simic wrote:
>>>>> On 2024-08-17 00:20, FUKAUMI Naoki wrote:
>>>>>> On 8/17/24 07:11, Heiko Stübner wrote:
>>>>>>> Am Freitag, 16. August 2024, 23:34:29 CEST schrieb FUKAUMI Naoki:
>>>>>>>> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the 
>>>>>>>> Rockchip
>>>>>>>> RK3328 chip that ships in a number of RAM/eMMC/WiFi/BT 
>>>>>>>> configurations:
>>>>>>>>
>>>>>>>> - Rockchip RK3328 SoC
>>>>>>>> - Quad A53 CPU
>>>>>>>> - 512MB/1GB/2GB DDR4 RAM
>>>>>> (snip)
>>>>>>> can you please describe what is different in that v3 board?
>>>>>>> Describing what is different to require a separate board 
>>>>>>> should've been
>>>>>>> part of the commit message.
>>>>>>>
>>>>>>> Because from those changes, the bottom line currently seems to be
>>>>>>> the same board with swapped mmc aliases?
>>>>>>
>>>>>> it's new board which uses DDR4 RAM (instead of DDR3 RAM on Pi E).
>>>>>> different bootloader (U-Boot) is required.
>>>>>>
>>>>>> adding v3 dts seems not to be so important for Linux, but it's very
>>>>>> important for U-Boot and OpenWrt(it includes bootloader for
>>>>>> distributed binary).
>>>>>
>>>>> Aren't there different methods that allow such board variants to be
>>>>> supported in U-Boot, with no need for a separate DT in the kernel?
>>>>> IIRC, there are already more than a few examples of such board 
>>>>> variants,
>>>>> which require different DRAM initialization, which is covered in 
>>>>> U-Boot
>>>>> by providing different builds that use the same DT.
>>>>
>>>> As an example, please have a look at the following files in U-Boot:
>>>>
>>>> - arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi
>>>> - arch/arm/dts/rk3399-nanopi-m4-2gb-u-boot.dtsi
>>>> - configs/nanopi-m4-rk3399_defconfig
>>>> - configs/nanopi-m4-2gb-rk3399_defconfig
>>>>
>>>> Basically, there's no need for separate DTs in the kernel, just to 
>>>> support
>>>> board variants with different DRAM types in U-Boot.
>>>
>>> OpenWrt firmware upgrading tool (sysupgrade) refers "compatible"
>>> string to validate new firmware file is surely "for this board".
>>>
>>> currently both Pi E dts have "radxa,rockpi-e", it makes flashing wrong
>>> firmware (include bootloaer, U-Boot) possible.
>>
>> Could you, please, explain what's the actual issue with OpenWrt?  I did
>> read some GitHub issue that described it, IIRC, but I was unable to fully
>> understand what's the underlying issue.
> 
> $ wget 
> https://downloads.openwrt.org/snapshots/targets/rockchip/armv8/openwrt-rockchip-armv8-radxa_rock-pi-e-ext4-sysupgrade.img.gz
> $ strings openwrt-rockchip-armv8-radxa_rock-pi-e-ext4-sysupgrade.img.gz 
> | grep metadata
> {  "metadata_version": "1.1", "compat_version": "1.0", 
> "supported_devices":["radxa,rock-pi-e"], "version": { "dist": "OpenWrt", 
> "version": "SNAPSHOT", "revision": "r27160-b72c4b5386", "target": 
> "rockchip/armv8", "board": "radxa_rock-pi-e" } }
> 
> $ wget 
> https://downloads.openwrt.org/snapshots/targets/rockchip/armv8/openwrt-rockchip-armv8-radxa_rock-pi-e-v3-ext4-sysupgrade.img.gz
> $ strings 
> openwrt-rockchip-armv8-radxa_rock-pi-e-v3-ext4-sysupgrade.img.gz | grep 
> metadata
> {  "metadata_version": "1.1", "compat_version": "1.0", 
> "supported_devices":["radxa,rock-pi-e-v3"], "version": { "dist": 
> "OpenWrt", "version": "SNAPSHOT", "revision": "r27160-b72c4b5386", 
> "target": "rockchip/armv8", "board": "radxa_rock-pi-e-v3" } }
> 
> since they are incompatible firmware, it needs to have different 
> "supported_devices" string. if both are "radxa,rockpi-e", firmware 
> validation will not work correctly.
> 
> (currently both values are wrong, it needs to be fixed, but it's another 
> story)
> 
>>> Radxa ROCK Pi E v1.x(DDR3) and ROCK Pi E v3(DDR4) are different
>>> incompatible boards, it must have different "compatible" string.
>>
>> Well, the above-mentioned Nano Pi M4 boards share the same DT and the 
>> same
>> "compatible" value, because for all consumers of the DT, except for 
>> U-Boot
>> that can already handle the differences, they are the same boards.
> 
> (un)fortunately Nano Pi M4 boards seems not to be supported by OpenWrt
> 
>   https://downloads.openwrt.org/snapshots/targets/rockchip/armv8/
> 
> Best regards,
> 
> -- 
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.

