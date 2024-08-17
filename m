Return-Path: <devicetree+bounces-94463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA71E955A07
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 00:31:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C09FB28239C
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 22:31:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E24F913DBA7;
	Sat, 17 Aug 2024 22:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="hJBBPh1Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70CC8C0B
	for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 22:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723933860; cv=none; b=scq855YSPNAzgAwOYnm5aAt2jxrw6fPlIBGKGa/usGZZVlcSqEiBiz1sEHxdKjurMzLmONh0pQaqUD0mnBhg9BmW3ay+ls42ZfsVUsWX1g+UWJ7r2wMaCC7xdNYmdLdHJSpcG6sE6XbtdBq94fErGUgm7oc9/l+nTzKP8tghBXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723933860; c=relaxed/simple;
	bh=S9NmShnBRyMKY/ExHR4kYdJv7LXDuIUTdhkIlim0Fgc=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=CJ/B8OBgLNACQDVCk3HaYoX7UuwUoIzDuIYe/OxLIUXSn69ttVpR62++xKrrps4gyVG2pDaFPVPC5Vhor/WcuL022XdIdkHN1UYHNMbouNzmQ5Z/YHDXXFyD/O1w7VUtLFflo0eT6Q3rNRNAECRoH8kKqCov/jp/N4TZGgY57G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=hJBBPh1Y; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723933855;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8mN8mDTF3xhCngjSEmCNdRagy3L4Z2oj5tRK1ioRv/0=;
	b=hJBBPh1YudgZ1ivlVOzVMJReIuvlUbb/mMyYgqNT5bOfOu7SHhyAz9GIXt2Q4mFesCrix5
	XLtzISXtEreBWUtSVhYdDQ5EvXwbOkH4ELfBkQh3jF23xNiXUPbX7QwksBdJQ4uUFVJ0/5
	1JYPk3NJOEp3dyNIlp86QSrZQUUXY7p9ctVybEje+WZCebnKfAshNuVHGRQhXUnCAjZPXP
	alEY7j7QpnvrZR9Oz3wJCE6T1nsv5b5ZySn1mX+apPO0ImS+KVqOQ8UvzLUvAWRe4d25/5
	8y3L31exwWyjC189wAiWoS/b2CXXcMFnY5AZ8Ui/05/otb545JHGuGpUfmz5Jg==
Date: Sun, 18 Aug 2024 00:30:55 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: add support for Radxa ROCK
 Pi E v3.0
In-Reply-To: <0CF9D1576916E834+1a310fc3-d77a-4296-818c-81800d9859cd@radxa.com>
References: <20240816213429.1093-1-naoki@radxa.com>
 <20240816213429.1093-2-naoki@radxa.com> <1819066.TLkxdtWsSY@diego>
 <85AB3D0B7214AEEA+d54aaa4a-ce0b-43ef-8cb8-ea2c2f305bcd@radxa.com>
 <cd08ce18bde728e2b33a995834441399@manjaro.org>
 <10ac45cf5bb5dfab9c08160c826c9b28@manjaro.org>
 <B26198585C33E0EC+958ace8d-0f31-4fc1-acc2-f090a31fa2e6@radxa.com>
 <79b071b69f0a3e5faac2c3daf1a4f272@manjaro.org>
 <0CF9D1576916E834+1a310fc3-d77a-4296-818c-81800d9859cd@radxa.com>
Message-ID: <d40e95d42074b9a2b8d353881d1be248@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-08-17 22:28, FUKAUMI Naoki wrote:
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
>>>>>> adding v3 dts seems not to be so important for Linux, but it's 
>>>>>> very
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
>>> currently both Pi E dts have "radxa,rockpi-e", it makes flashing 
>>> wrong
>>> firmware (include bootloaer, U-Boot) possible.
>> 
>> Could you, please, explain what's the actual issue with OpenWrt?  I 
>> did
>> read some GitHub issue that described it, IIRC, but I was unable to 
>> fully
>> understand what's the underlying issue.
> 
> $ wget
> https://downloads.openwrt.org/snapshots/targets/rockchip/armv8/openwrt-rockchip-armv8-radxa_rock-pi-e-ext4-sysupgrade.img.gz
> $ strings
> openwrt-rockchip-armv8-radxa_rock-pi-e-ext4-sysupgrade.img.gz | grep
> metadata
> {  "metadata_version": "1.1", "compat_version": "1.0",
> "supported_devices":["radxa,rock-pi-e"], "version": { "dist":
> "OpenWrt", "version": "SNAPSHOT", "revision": "r27160-b72c4b5386",
> "target": "rockchip/armv8", "board": "radxa_rock-pi-e" } }
> 
> $ wget
> https://downloads.openwrt.org/snapshots/targets/rockchip/armv8/openwrt-rockchip-armv8-radxa_rock-pi-e-v3-ext4-sysupgrade.img.gz
> $ strings
> openwrt-rockchip-armv8-radxa_rock-pi-e-v3-ext4-sysupgrade.img.gz |
> grep metadata
> {  "metadata_version": "1.1", "compat_version": "1.0",
> "supported_devices":["radxa,rock-pi-e-v3"], "version": { "dist":
> "OpenWrt", "version": "SNAPSHOT", "revision": "r27160-b72c4b5386",
> "target": "rockchip/armv8", "board": "radxa_rock-pi-e-v3" } }
> 
> since they are incompatible firmware, it needs to have different
> "supported_devices" string. if both are "radxa,rockpi-e", firmware
> validation will not work correctly.
> 
> (currently both values are wrong, it needs to be fixed, but it's 
> another story)
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
>  https://downloads.openwrt.org/snapshots/targets/rockchip/armv8/

Thanks for the explanations.  As discussed further in #linux-rockchip
on Libera.Chat, we do need a general solution for this issue, which 
would
get us covered for all the board variants that use different DRAM chips,
which are currently known to U-Boot only.

I'll keep thinking about this in the next couple of days, and I'll come
back with an update.

