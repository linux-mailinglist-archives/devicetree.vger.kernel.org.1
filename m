Return-Path: <devicetree+bounces-96670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9C695EFA6
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 13:25:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 98322B218A7
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 11:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E243B152166;
	Mon, 26 Aug 2024 11:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="dTEB+tWY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87C371547E7
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 11:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724671509; cv=none; b=jXAJziJtya1bckQYVaH+tbYMk22k69Q4WL+X2Ut4gj7VwPdUEe+Y61eKuXTPW5dQ21gaYNxNlFBoJLgXhTtdSI518Z7iKwe9Lf9nXfzZiewwzG4H6DdVHlgiZbFnRWIDeHbNEhiN8pXq2g0Ax/RwzF2jn/ACwabrAq3QD84m8dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724671509; c=relaxed/simple;
	bh=I55kMjNhxTABwhkE0ybtpSE+1/MUtN6Z89AIPtTsqmc=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=Nh5zEOKDF3Vh2dhva+FmY3mJZGPfNlTnAHrR/j1Cf0cvMbkwPSKw8VUedEglEUN9c1VhOedUYfBzAFXabixTeh9TSjSPgfr2rLp6O2+dw5qx89JALNkZi4HYoZ6gWEXhI8bFFg3TpJwuvSrrtTfs9f69hJ53EISxdIY1XSJBxjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=dTEB+tWY; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724671504;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oPO/T763yuL0Y+RE0eOKdBZY113mUuwHZaQEOM51Zc0=;
	b=dTEB+tWY+sOIyIQTmgo8MBcYmtNEkfilNIsQXJGbH6aYLOFgl4+MKwF3QC0YYXDUact+Wc
	NxGqM7EL70t3eF3jA4BwfctCb3AqRpqax7mxWJlXfy9r9fxoEpGnQjIgqIR9fUS/Lscrv0
	+c/Xj8WEhMfKR0lVRejoSVa9bGYSxk2OkT1DnJq1sFQTN8Xg2QOaXe228VDQJFgDne9F41
	XoxsP//cwXViiWWBu+Vp94Gi7FbVvvfWZqzTX0C8m/2K8p8xGmBAvnXAf8QIcVJWvMmXK0
	q9KuUlt0hg0E3RQf1eVHMfF76Vl1Ml1Yitkttm508sBQ0nq7zvQpaefvbTAaRg==
Date: Mon, 26 Aug 2024 13:25:04 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: add support for Radxa ROCK
 Pi E v3.0
In-Reply-To: <d40e95d42074b9a2b8d353881d1be248@manjaro.org>
References: <20240816213429.1093-1-naoki@radxa.com>
 <20240816213429.1093-2-naoki@radxa.com> <1819066.TLkxdtWsSY@diego>
 <85AB3D0B7214AEEA+d54aaa4a-ce0b-43ef-8cb8-ea2c2f305bcd@radxa.com>
 <cd08ce18bde728e2b33a995834441399@manjaro.org>
 <10ac45cf5bb5dfab9c08160c826c9b28@manjaro.org>
 <B26198585C33E0EC+958ace8d-0f31-4fc1-acc2-f090a31fa2e6@radxa.com>
 <79b071b69f0a3e5faac2c3daf1a4f272@manjaro.org>
 <0CF9D1576916E834+1a310fc3-d77a-4296-818c-81800d9859cd@radxa.com>
 <d40e95d42074b9a2b8d353881d1be248@manjaro.org>
Message-ID: <f5528290efb529ebcb599a2f1c309e63@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Naoki,

On 2024-08-18 00:30, Dragan Simic wrote:
> On 2024-08-17 22:28, FUKAUMI Naoki wrote:
>> On 8/18/24 05:12, Dragan Simic wrote:
>>> On 2024-08-17 22:04, FUKAUMI Naoki wrote:
>>>> On 8/18/24 04:51, Dragan Simic wrote:
>>>>> On 2024-08-17 21:28, Dragan Simic wrote:
>>>>>> On 2024-08-17 00:20, FUKAUMI Naoki wrote:
>>>>>>> On 8/17/24 07:11, Heiko Stübner wrote:
>>>>>>>> Am Freitag, 16. August 2024, 23:34:29 CEST schrieb FUKAUMI 
>>>>>>>> Naoki:
>>>>>>>>> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the 
>>>>>>>>> Rockchip
>>>>>>>>> RK3328 chip that ships in a number of RAM/eMMC/WiFi/BT 
>>>>>>>>> configurations:
>>>>>>>>> 
>>>>>>>>> - Rockchip RK3328 SoC
>>>>>>>>> - Quad A53 CPU
>>>>>>>>> - 512MB/1GB/2GB DDR4 RAM
>>>>>>> (snip)
>>>>>>>> can you please describe what is different in that v3 board?
>>>>>>>> Describing what is different to require a separate board 
>>>>>>>> should've been
>>>>>>>> part of the commit message.
>>>>>>>> 
>>>>>>>> Because from those changes, the bottom line currently seems to 
>>>>>>>> be
>>>>>>>> the same board with swapped mmc aliases?
>>>>>>> 
>>>>>>> it's new board which uses DDR4 RAM (instead of DDR3 RAM on Pi E).
>>>>>>> different bootloader (U-Boot) is required.
>>>>>>> 
>>>>>>> adding v3 dts seems not to be so important for Linux, but it's 
>>>>>>> very
>>>>>>> important for U-Boot and OpenWrt(it includes bootloader for
>>>>>>> distributed binary).
>>>>>> 
>>>>>> Aren't there different methods that allow such board variants to 
>>>>>> be
>>>>>> supported in U-Boot, with no need for a separate DT in the kernel?
>>>>>> IIRC, there are already more than a few examples of such board 
>>>>>> variants,
>>>>>> which require different DRAM initialization, which is covered in 
>>>>>> U-Boot
>>>>>> by providing different builds that use the same DT.
>>>>> 
>>>>> As an example, please have a look at the following files in U-Boot:
>>>>> 
>>>>> - arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi
>>>>> - arch/arm/dts/rk3399-nanopi-m4-2gb-u-boot.dtsi
>>>>> - configs/nanopi-m4-rk3399_defconfig
>>>>> - configs/nanopi-m4-2gb-rk3399_defconfig
>>>>> 
>>>>> Basically, there's no need for separate DTs in the kernel, just to 
>>>>> support
>>>>> board variants with different DRAM types in U-Boot.
>>>> 
>>>> OpenWrt firmware upgrading tool (sysupgrade) refers "compatible"
>>>> string to validate new firmware file is surely "for this board".
>>>> 
>>>> currently both Pi E dts have "radxa,rockpi-e", it makes flashing 
>>>> wrong
>>>> firmware (include bootloaer, U-Boot) possible.
>>> 
>>> Could you, please, explain what's the actual issue with OpenWrt?  I 
>>> did
>>> read some GitHub issue that described it, IIRC, but I was unable to 
>>> fully
>>> understand what's the underlying issue.
>> 
>> $ wget
>> https://downloads.openwrt.org/snapshots/targets/rockchip/armv8/openwrt-rockchip-armv8-radxa_rock-pi-e-ext4-sysupgrade.img.gz
>> $ strings
>> openwrt-rockchip-armv8-radxa_rock-pi-e-ext4-sysupgrade.img.gz | grep
>> metadata
>> {  "metadata_version": "1.1", "compat_version": "1.0",
>> "supported_devices":["radxa,rock-pi-e"], "version": { "dist":
>> "OpenWrt", "version": "SNAPSHOT", "revision": "r27160-b72c4b5386",
>> "target": "rockchip/armv8", "board": "radxa_rock-pi-e" } }
>> 
>> $ wget
>> https://downloads.openwrt.org/snapshots/targets/rockchip/armv8/openwrt-rockchip-armv8-radxa_rock-pi-e-v3-ext4-sysupgrade.img.gz
>> $ strings
>> openwrt-rockchip-armv8-radxa_rock-pi-e-v3-ext4-sysupgrade.img.gz |
>> grep metadata
>> {  "metadata_version": "1.1", "compat_version": "1.0",
>> "supported_devices":["radxa,rock-pi-e-v3"], "version": { "dist":
>> "OpenWrt", "version": "SNAPSHOT", "revision": "r27160-b72c4b5386",
>> "target": "rockchip/armv8", "board": "radxa_rock-pi-e-v3" } }
>> 
>> since they are incompatible firmware, it needs to have different
>> "supported_devices" string. if both are "radxa,rockpi-e", firmware
>> validation will not work correctly.
>> 
>> (currently both values are wrong, it needs to be fixed, but it's 
>> another story)
>> 
>>>> Radxa ROCK Pi E v1.x(DDR3) and ROCK Pi E v3(DDR4) are different
>>>> incompatible boards, it must have different "compatible" string.
>>> 
>>> Well, the above-mentioned Nano Pi M4 boards share the same DT and the 
>>> same
>>> "compatible" value, because for all consumers of the DT, except for 
>>> U-Boot
>>> that can already handle the differences, they are the same boards.
>> 
>> (un)fortunately Nano Pi M4 boards seems not to be supported by OpenWrt
>> 
>>  https://downloads.openwrt.org/snapshots/targets/rockchip/armv8/
> 
> Thanks for the explanations.  As discussed further in #linux-rockchip
> on Libera.Chat, we do need a general solution for this issue, which 
> would
> get us covered for all the board variants that use different DRAM 
> chips,
> which are currently known to U-Boot only.
> 
> I'll keep thinking about this in the next couple of days, and I'll come
> back with an update.

As a separate thought, is there some way to detect the actual ROCK Pi E
board variant at runtime, using some GPIO line, ADC readout, or 
something
similar?  That would help with making it possible to have a single 
U-Boot
build for both board variants.

