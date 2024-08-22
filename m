Return-Path: <devicetree+bounces-95731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1485195AF80
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 09:42:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A0CD1F234CD
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 07:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF8431537A3;
	Thu, 22 Aug 2024 07:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="IFcbWb0L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C161715C13A
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 07:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724312518; cv=none; b=SE8wBMhiZF85cMDHbaUvBGgvb8Cz6AUEB4Piuuc9s0ZcnF1dKlmDolDvhWosU8hQx4p+p5wvgk36LLRE7OJo1ejq/nsQfYK/Jw3LhAdDBUo7fY+Qw2Tg4ZF/caY92B4J1w0tXQYwy9dE0oZ7JNSgbXW69VAfZSi7ih7l6M6Ybh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724312518; c=relaxed/simple;
	bh=x08+cglI34uyyL1ihsQprvY+IYof5zcFfb7UBddUteg=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=p9bELrmZU0fNUmmRrjwExKN7YIX7OsKw4GYRSguStMmGEqOTZ+18Ivjb6yLL4D5qX/8YLWtMrgt9R+oY2BvI4Zu1LUwsXHk2qybnycEG4hVyRFLWExhBC27/2uBeMJRzE8AtU7lPe22YH5mBscF6ikHqkHHjGR2aJhe6IX68M2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=IFcbWb0L; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724312506;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U/tUeDcmjjH+tT1Pgn1G/YDE4JdZ7FQnGPenollIgXw=;
	b=IFcbWb0L2KgCG/CPhac2VFjxwB0/Vcxl7G8C2LZrbcxIZCtQZkJt3yM+abFsfGiGyHn3Ff
	FhDHJWRFwKwyF/4qR9Mh7dM6ezzF0kKtucUEn62rGLeAe9TFL+6MOkgfhLeZOqY1meT4Up
	FMxoLOWneQKZ9PWetWffkCtNOmObwFXAOUUjGkc4JGeUxNyC+liem1DIxQufoeVtasIOs8
	bbwZwzn1EfzuNglRPb+MpGyd9kpq4L5onlVdVitOvHKPBXy/02GVMesFrxil4psDL4n4rW
	gG2KXsORimtl+ivOTJjl99TkAmgp9k4847b+75tdAtylX9nhXpmpsbDG/O4rYw==
Date: Thu, 22 Aug 2024 09:41:46 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 naoki@radxa.com
Subject: Re: [PATCH v3 2/7] arm64: dts: rockchip: add NanoPC-T6 LTS
In-Reply-To: <5771ebfe-eb9d-46ee-9810-44e1fff03171@kernel.org>
References: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
 <20240821-friendlyelec-nanopc-t6-lts-v3-2-3ecfa996bbe0@linaro.org>
 <fbdda0b5-a924-48f8-a4d5-6578c2b5d378@kernel.org>
 <622eb49ded6ae0a13b318ac0fae21d92@manjaro.org>
 <5771ebfe-eb9d-46ee-9810-44e1fff03171@kernel.org>
Message-ID: <4a450e76e77d30afcdfc494818167e3a@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Krzysztof,

On 2024-08-22 08:31, Krzysztof Kozlowski wrote:
> On 21/08/2024 16:39, Dragan Simic wrote:
>> On 2024-08-21 15:13, Krzysztof Kozlowski wrote:
>>> On 21/08/2024 12:26, Marcin Juszkiewicz wrote:
>>>> FriendlyELEC introduced a second version of NanoPC-T6 SBC.
>>>> 
>>>> The miniPCIe slot got removed and USB 2.0 configuration has changed.
>>>> There are two external accessible ports and two ports on the 
>>>> internal
>>>> header.
>>>> 
>>>> There is an on-board USB hub which provides:
>>>> - one external connector (bottom one)
>>>> - two internal ports on pin header
>>>> - one port for m.2 E connector
>>>> 
>>>> The top USB 2.0 connector comes directly from the SoC.
>>>> 
>>>> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
>>>> ---
>>>>  arch/arm64/boot/dts/rockchip/Makefile              |  1 +
>>>>  .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     | 61
>>>> ++++++++++++++++++++++
>>>>  2 files changed, 62 insertions(+)
>>>> 
>>>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile
>>>> b/arch/arm64/boot/dts/rockchip/Makefile
>>>> index fda1b980eb4b..0f982c741243 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>>>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>>>> @@ -128,6 +128,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += 
>>>> rk3588-evb1-v10.dtb
>>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-friendlyelec-cm3588-nas.dtb
>>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar.dtb
>>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
>>>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
>>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
>>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
>>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
>>>> b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
>>>> new file mode 100644
>>>> index 000000000000..e950e40632cf
>>>> --- /dev/null
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
>>>> @@ -0,0 +1,61 @@
>>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>>> +/*
>>>> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
>>>> + * Copyright (c) 2023 Thomas McKahan
>>>> + * Copyright (c) 2024 Linaro Ltd.
>>>> + *
>>>> + */
>>>> +
>>>> +/dts-v1/;
>>>> +
>>>> +#include "rk3588-nanopc-t6.dts"
>>> 
>>> Do not include DTS files. Please rename board to DTSI (which is for
>>> includes) and then include it in respective boards. Remember to
>>> generate
>>> patches with proper -M/-B/-C so the rename will be properly 
>>> recognize.
>> 
>> This is perhaps a good opportunity to discuss this.  I already saw at
>> least half a dozen of instances where a board dts file is included in
>> another board dts file that modifies or extends it for another version
>> of the same board, or something like that.
>> 
>> Moreover, we'll most likely have to introduce quite a few new board 
>> dts
>> files, for board versions that use different type of DRAM and so far
>> were
>> handled in U-Boot only. [1]
>> 
>> Thus, I think this is a good opportunity to conclude what to do there.
>> If you insist on converting already existing dts files into dtsi 
>> files,
> 
> I did not write anything about this.

True, but I thought it was a good opportunity to discuss that in 
advance,
because it's going to be pretty much the same thing as what we're having
currently with the NanoPC-T6 LTS as a board variant.

>> we'll be introducing much more changes, which I'd be fine with, but 
>> I'd
>> then also like to convert _all_ existing cases of dts file inclusion
>> into
> 
> Don't understand. If I insist on converting already existing DTS, then
> convert all existing DTS?

Let me clarify, please.  With the NanoPC-T6 LTS, you asked for the 
current
NanoPC-T6 board dts file to be converted into a dtsi, from which the two
board variant dts files (the original and the LTS) will descend from.

Then I noticed that we already have board dts files that descend from 
other
board dts files (so, not from dtsi files as they should). [2][3][4]  
Based
on that, I asked do you insist on converting the current NanoPC-T6 dts 
into
a dtsi, because if you do, then we should fix other instances of the dts
inclusion as well.  Which I'm willing to do, by the way.

I hope it all makes more sense now.

[2] 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c-plus.dts?h=v6.11-rc4#n10
[3] 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c.dts?h=v6.11-rc4#n10
[4] 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts?h=v6.11-rc4#n5

>> proper inclusion of dtsi files, which will result in even more new 
>> files
>> being introduced, etc.
>> 
>> [1]
>> https://lore.kernel.org/linux-rockchip/172408433165.1619643.7928785825448507704.robh@kernel.org/T/#m52de793f30579a8063f66eb2e64026776da55a66

