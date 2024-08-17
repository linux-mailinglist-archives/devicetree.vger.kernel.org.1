Return-Path: <devicetree+bounces-94449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E34A95597D
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 22:05:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A39951C20AA2
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 20:05:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0A0412CDAE;
	Sat, 17 Aug 2024 20:05:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bg1.exmail.qq.com (bg1.exmail.qq.com [114.132.58.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23861646
	for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 20:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.132.58.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723925141; cv=none; b=ImexrGhhIq/teHx+hmOIg6+xgvYPIMLXtYeSTjUOEzy6wm8mnGRlpIUaZZ3ofvxWrtRunKVJybmerUd+MeZj6fg2yDFaJg7R1okpRlsru7KMsO2i/NPjAIPkmiUiAgkM7jkQj7K1y0asDsWHxgfVcpYbD4JN55nGZnWZHmHoV70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723925141; c=relaxed/simple;
	bh=FUgsblTD3B5WR+HQ80Vv9GHfL5FKsOOrJ3cmzcWlVnQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uHYXHAnIubKnQElDJhpvFaNIJOI56ypVH1YL/tjvVJIXFgZrx+AXUnyZ1dD4NJ2uhKaXCGYyj74HdRnHaVmjO/NzRkcW8pe+bIsHZa12g+/TEtSUXJYY2Xx8k4sHKYqZaRISrGC1x/eQkf6LT+CsJ8Hfhj0NTO3uRVbIQmQeYPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=114.132.58.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp85t1723925062tzsbwaiz
X-QQ-Originating-IP: CBGgm4hhFCjI2/gjcT4v0DHMDAL6Xep/C4wbePg+xOY=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 18 Aug 2024 04:04:19 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 5138856890497871707
Message-ID: <B26198585C33E0EC+958ace8d-0f31-4fc1-acc2-f090a31fa2e6@radxa.com>
Date: Sun, 18 Aug 2024 05:04:19 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: add support for Radxa ROCK
 Pi E v3.0
To: Dragan Simic <dsimic@manjaro.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240816213429.1093-1-naoki@radxa.com>
 <20240816213429.1093-2-naoki@radxa.com> <1819066.TLkxdtWsSY@diego>
 <85AB3D0B7214AEEA+d54aaa4a-ce0b-43ef-8cb8-ea2c2f305bcd@radxa.com>
 <cd08ce18bde728e2b33a995834441399@manjaro.org>
 <10ac45cf5bb5dfab9c08160c826c9b28@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <10ac45cf5bb5dfab9c08160c826c9b28@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi,

On 8/18/24 04:51, Dragan Simic wrote:
> On 2024-08-17 21:28, Dragan Simic wrote:
>> Hello Fukaumi,
>>
>> On 2024-08-17 00:20, FUKAUMI Naoki wrote:
>>> On 8/17/24 07:11, Heiko Stübner wrote:
>>>> Am Freitag, 16. August 2024, 23:34:29 CEST schrieb FUKAUMI Naoki:
>>>>> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
>>>>> RK3328 chip that ships in a number of RAM/eMMC/WiFi/BT configurations:
>>>>>
>>>>> - Rockchip RK3328 SoC
>>>>> - Quad A53 CPU
>>>>> - 512MB/1GB/2GB DDR4 RAM
>>> (snip)
>>>> can you please describe what is different in that v3 board?
>>>> Describing what is different to require a separate board should've been
>>>> part of the commit message.
>>>>
>>>> Because from those changes, the bottom line currently seems to be
>>>> the same board with swapped mmc aliases?
>>>
>>> it's new board which uses DDR4 RAM (instead of DDR3 RAM on Pi E).
>>> different bootloader (U-Boot) is required.
>>>
>>> adding v3 dts seems not to be so important for Linux, but it's very
>>> important for U-Boot and OpenWrt(it includes bootloader for
>>> distributed binary).
>>
>> Aren't there different methods that allow such board variants to be
>> supported in U-Boot, with no need for a separate DT in the kernel?
>> IIRC, there are already more than a few examples of such board variants,
>> which require different DRAM initialization, which is covered in U-Boot
>> by providing different builds that use the same DT.
> 
> As an example, please have a look at the following files in U-Boot:
> 
> - arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi
> - arch/arm/dts/rk3399-nanopi-m4-2gb-u-boot.dtsi
> - configs/nanopi-m4-rk3399_defconfig
> - configs/nanopi-m4-2gb-rk3399_defconfig
> 
> Basically, there's no need for separate DTs in the kernel, just to support
> board variants with different DRAM types in U-Boot.

OpenWrt firmware upgrading tool (sysupgrade) refers "compatible" string 
to validate new firmware file is surely "for this board".

currently both Pi E dts have "radxa,rockpi-e", it makes flashing wrong 
firmware (include bootloaer, U-Boot) possible.

Radxa ROCK Pi E v1.x(DDR3) and ROCK Pi E v3(DDR4) are different 
incompatible boards, it must have different "compatible" string.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

