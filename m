Return-Path: <devicetree+bounces-235467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BD1C39248
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 06:09:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 49F47189EF7F
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 05:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 109F92D7388;
	Thu,  6 Nov 2025 05:09:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast2.qq.com (smtpbguseast2.qq.com [54.204.34.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6392D73B1
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 05:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762405773; cv=none; b=MQSKvo95fhVRKufLXYCd+HYMEEzy9HCWXKv4eMMa6wrFUM8u0jh0BQkBrYRTuLHRCZHwYFo7HkdGZVJhhBJvbPgGQnJDluYRfc/uagR43K1uR9U7BRhVIxO9Enxth/zeyOAQCJfNQ35hw1qnkkFZ94D54C+EJmweHB5WXL1Erm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762405773; c=relaxed/simple;
	bh=SG6ZCs4K3MfjChFnxj3XLS5F/NJo9w6a6Nh8cOfzpw0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AjaMMghvx14djhGnqltdsXba2xwivMOI4dONFkVf8dLRO/iF5XRFUAJTIz70354etbHh1xqsyv1sv8helYFHmDVWIzS1E4eBtNz1yyjeK/bqn3aaDNSYMCBzUb0JGL+hyEH0Bf9zhsUrPgFDQMH5tJ5BCWa9M+BB5pMQimGdfvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1762405729t0eb36ce5
X-QQ-Originating-IP: J22Kp3bUmr3w/xHa9uyHGXnUOdZUmSU/eZnYd9FtaZQ=
Received: from [IPV6:240f:10b:7440:1:4c9d:dff9 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 06 Nov 2025 13:08:46 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17265237028341387643
Message-ID: <57F9C541303D73B3+4c84cba4-8378-4b65-8065-46e28217694b@radxa.com>
Date: Thu, 6 Nov 2025 14:08:46 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: Add Radxa CM5 IO Board
To: Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, quentin.schulz@cherry.de, pbrobinson@gmail.com,
 amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
 <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com>
 <35ff8e6f-dd2b-d909-70c7-b19240e32ccf@manjaro.org>
 <CALWfF7K3zNxSsXVpW8pLc_xWi793HG99OvbshtP-0=764JmPKw@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <CALWfF7K3zNxSsXVpW8pLc_xWi793HG99OvbshtP-0=764JmPKw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: M1tjFO1fqc+0IfBo9l2tuQU+r52VxKiiq6zdQ20bb3xrfuAj97017sWS
	Y5yMefwsMGM4zPHD5qWWbnSkKkIixdyQdGI/NbqyA0WuLdwJ06d6IcFguRGyctZuNFiPFOt
	nwZQJxyIuYRAEHq2oRfQ/F/I5ugnn2gYPokTn1UT/wUaPmSPeBDHTAQJ2ehU0Mv9nl6L1tH
	U9DlXjfNPTrNfwNGUahAH1pFVU6fhD5iDVblHxBxvwpX0pjoJ5OBZoDVBlTs/xO0G1wItn9
	M7f5+uSnCRDSDvQLHYZVRjYNJTyE5kT8sJX3oVJVKj0o/HHJDt8o0qndXd85Jjf+bKcLYNY
	4GVk93TfaeeXHYSf76NR+4uYD16eyLm9+4PWKSzKjaLbEmPthraPnRLV2a9S7+wC0S+BegU
	XI7R3T84I6KPjeofQFBVZ7iiNG9d9F45zV9T0PsnKlgRJZrM6MqykuNdQQKrpWok43jm+6j
	nxUavUUUtvdXlJTTPX5KkrvwKph7He1GT9viPz3Hsbb4/WTct3dS5yMSw6SOx7wmQnN+IOS
	uEgDyzMnC0A7DBLv4xqzhs4Y099U62LnBAwQvNm2CBzC0B6ZJJCW8e0Zr1bkvFdvG4Ulipv
	Uy2ToA8oMOxFnEyLPmLRdTi2P0w8OGjH1TfPvOtRzyRN6XikIMGG/xWpWZv9Zva2UQy9r2d
	bdgD1a4Zu4Mi8b1xz5iUON0nQAmC/0r7sC0e12Se/HoxsBlkzJz4pU5biYYoxjcho28mz49
	R+TM6nLzhev3wy/hHjh7t9/+cyVCBZivl4Gd4ublmzDluuisqqr/wDauFf+VfuhXsPVGvQ6
	mHSLB7OvRQderCveouW3VIsDao5QbErFaXgZIuN8tWId+ZlIpjzdtHA0/10gt7TirXsOXfC
	Pmf1K3yJcdfVRq9I9rsjvAXqV318y9Ul5FfL3otBQm871m2pCHtr0TtTMKzlH/HURojwPy8
	FC2fwtAHQCcLwc+o2utSp3BmJrpKTS7cnWcAKfVMU9qsmnSSfJ5WHUVCNH/+1nbXfGaA=
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0

Hi Jimmy,

On 11/6/25 13:53, Jimmy Hon wrote:
> On Wed, Nov 5, 2025 at 9:31 PM Dragan Simic <dsimic@manjaro.org> wrote:
> 
> [ snip ]
> 
>>
>> With all that in mind, we should specify "no-mmc" here, because
>> we're describing a microSD slot, instead of describing some hybrid
>> MMC/microSD slot.  That also explains why the adapter sold by Radxa
>> is described as not to be used with microSD card slots on SBCs.  I'd
>> also like to hear is this adapter/eMMC chip combo recognized by the
>> kernel when "no-mmc" is specified; it should fail.
>>
>> Actually, not specifying "no-mmc" here may result in some unforeseen
>> issues with some (or perhaps many?) microSD cards, because the MMC
>> drivers will treat them as MMC-capable devices and try to initialize
>> them as such, which may cause all kinds of issues.  In fact, I'm not
>> really sure that the MMC drivers are actually implemented in a way
>> that avoids all possible issues with the storage controllers that
>> are capable of both SD and MMC modes when neither of "no-sd" and
>> "no-mmc" is specified in their DT nodes.
> 
> Hybrid MMC and SD slots are pretty normal on USB card readers. So it's
> normal for the host controller to figure out what kind of card is in
> the slot.
> https://uditagarwal.in/understanding-sd-sdio-and-mmc-interface/
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=6ae3e537eab9f560b516b001eb89f0cd568bdced
> was the commit that introduced the device tree properties. By the
> wording of the commit message, these device tree properties are used
> to indicate to the driver if the host controller hardware is capable
> of MMC initialization or SD initialization.
> 
> Since the host controller in the RK3588 is capable of all the modes,
> these properties do not need to be specified.
> 
> Since Radxa has the eMMC to uSD adapter, it makes sense Radxa would
> want to configure their microSD card slot on their boards to be a
> hybrid SD/MMC slot.
> 
> Now, the more fun question is if the adapter can handle eMMC HS200
> using the 4-bit bus?

I added
  mmc-hs200-1_8v;

I got

[  226.099510] mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req 
400000Hz, actual 400000HZ div = 0)
[  226.546246] mmc_host mmc1: Bus speed (slot 0) = 49500000Hz (slot req 
52000000Hz, actual 49500000HZ div = 0)
[  226.546371] mmc_host mmc1: Bus speed (slot 0) = 198000000Hz (slot req 
200000000Hz, actual 198000000HZ div = 0)
[  226.656853] dwmmc_rockchip fe2c0000.mmc: Successfully tuned phase to 76
[  226.657011] mmc1: error -110 whilst initialising MMC card
[  226.671469] mmc_host mmc1: Bus speed (slot 0) = 300000Hz (slot req 
300000Hz, actual 300000HZ div = 0)
[  226.793733] mmc1: switch to bus width 4 failed
[  226.798915] mmc1: mmc_select_hs200 failed, error -110
[  226.799390] mmc1: error -110 whilst initialising MMC card
[  226.811549] mmc_host mmc1: Bus speed (slot 0) = 200000Hz (slot req 
200000Hz, actual 200000HZ div = 0)
[  226.947518] mmc1: switch to bus width 4 failed
[  226.954978] mmc1: mmc_select_hs200 failed, error -110
[  226.955454] mmc1: error -110 whilst initialising MMC card

I don't know if this is board-dependent.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Jimmy
> 



