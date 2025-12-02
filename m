Return-Path: <devicetree+bounces-243618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82139C9AB7A
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 09:38:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 222B93A4444
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 08:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 568BB2580F2;
	Tue,  2 Dec 2025 08:38:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEEBD218827
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 08:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764664728; cv=none; b=XbO1zZERvYXCktfFv9v1hJZMX5x+5R8yW8yOvdAnHnns+IiYf56shaGYQxr873uKiyp2tWIl0m1LvzqsyGHco0Jt/Kau29yqlQBt9kBHlMWmGi26FW3qUHCAb6gp4j5osG+qof7T4KClWw8xaNDWaG4fJMn9pWQPhji8r46oa6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764664728; c=relaxed/simple;
	bh=tHeFvc7UhicjqN00K1r884+rK0Ul+tMYEK4JceK0xMI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YeQ/keFpERoOMeBUKp2/mGqmS1km2XS9eGYhm20bXVuf6OwmkAula5efdhjcCTSAHC9Tdh8EJEniM5YlO1HtpuAc+JdaNQVaXWf+PybYAoNccuaRwlxk9ifF0//8UlqboHEJ9GkH0fsjisWeRVAazCxncwDu1ZeGiyiy1OrlEg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip4t1764664668t3725c885
X-QQ-Originating-IP: qHSl1Yl2slirFGRTqNTrStmEkXBqkUSw3ZOxNOPAMrA=
Received: from [IPV6:240f:10b:7440:1:a68f:7233 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 02 Dec 2025 16:37:45 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16993972051535158119
Message-ID: <852EA51CD6BBC1AD+2613d6c1-d999-47c1-9842-ef6ce3ddd1f3@radxa.com>
Date: Tue, 2 Dec 2025 17:37:44 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v5 3/3] arm64: dts: rockchip: Add support for CM5
 IO carrier
To: Michael Opdenacker <michael.opdenacker@rootcommit.com>, heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quentin.schulz@cherry.de, jonas@kwiboo.se,
 kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com,
 inindev@gmail.com, dsimic@manjaro.org, pbrobinson@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251202052702.155523-1-naoki@radxa.com>
 <20251202052702.155523-4-naoki@radxa.com>
 <39d3d988-f436-4b31-a130-c65dc292c469@rootcommit.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <39d3d988-f436-4b31-a130-c65dc292c469@rootcommit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NO0eLx0aUO/YN78Hw5ehA4SdICYIKGwZrhzNRsgw23mevF7DmAQHbAk1
	1gtbY0FNquQAnhIHbQ6GPF7DLanuO3r9OLAD12bAITb1RSa8OavS/vw2oFXk2qgXcjWClXw
	GPMyBaDya/2yCH2UqOvFMMvmDSI5C58K1jgVfQTLP+1Eb0swT+RC9nfF4lMt5BqWTRNJi7X
	wEujyYykpbH5IlwLsnvf6EcSq0jc2mhrCvsSnWuyHmm4fZXrEAWdw3XO+uB5V1rzAElwb8G
	pCPoVXjs/OxcIw1MlyUqrpZHKgcd+LCcMzmVVXCW3AE6Nq5Ue9NiZRByUYP9oGp4KoERckR
	dLfbstqobltMmR/BwtyRdJI3ZWeIBcVu/396IAKVgLZ5eZ55h9LvrpX2fVU22UkdlLxbUR2
	p/tcVdJLIo/284bPtW0EmPK0t9Lz9jHdttcKs1i97vbbqFRwlx71+Ounal6YameHgFmydiN
	qt9vMivnD0AL0YiHlipt+bdLjl5tCCh3tPv+ig3uz07N3AwSSB7hk51VLYXSTgkKQ59xfJg
	V0UNj+GjQMhLSSPeqQIArBBAiFM6vDjboekIlUgsY7utmNQwyXWbZfMraaJSdYMHLCnUg5M
	uIJLe3J9vssPwZDnegldmrnc3JVURhvWSOzcnVcPIO6YMxJUNu3eU/L4pXkMRo8qoBfz24Y
	OHBaC/MFcsIoH6pgb3vaV4JBTrWXO+YZ30Y5GAqtJGOPc4u2RY5HPrq61AWeVvRK2irWCJo
	gwzCH0Z9eUyPNTPhYQaXomRWiwTLuTKysuuq4+MjgkcWNmHlQnEVx75HMl2BIGqRB/eEVg0
	OyHJxhVAKDu10OAF+/PZKGhMX3uB8ETW5FJiltjNq6UlzcS/avilDe48FflQiUlCGs7haq0
	buXbM71l8Q3pUbk9MOY3q29WsxXyVIKL3m9CmQFVAiGoUqlipfbzchz2tcw9y0cUPekD4/t
	0+9KCL/AoAg5NTJHtwm74sxe6V/Rrfeqz8deRNfyBeUw+BcNP4Wxy4Mx39bNWzDF5f8Jcyc
	xnbUuLWGZ+GGrrYRBzSR3PnSTwwyA=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0

Hi Michael,

On 12/2/25 17:30, Michael Opdenacker wrote:
> Hi Naoki,
> 
> Thanks for the patch update!
> 
> On 12/2/25 06:27, FUKAUMI Naoki wrote:
>> From: Joseph Kogut <joseph.kogut@gmail.com>
>>
>> From: Joseph Kogut <joseph.kogut@gmail.com>
>>
>> Specification:
>> - 1x HDMI
>> - 2x MIPI DSI
>> - 2x MIPI CSI
>> - 1x eDP
>> - 1x M.2 E key
>> - 1x USB 3.0 Host
>> - 1x USB 3.0 OTG
>> - 2x USB 2.0 Host
>> - Headphone jack w/ microphone
>> - Gigabit Ethernet w/ PoE
>> - microSD slot
>> - 40-pin expansion header
>> - 12V DC
>>
>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> Rebased on linux-next 20251201, no change.
>> ---
>>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>   .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 486 ++++++++++++++++++
>>   2 files changed, 487 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5- 
>> io.dts
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/ 
>> dts/rockchip/Makefile
>> index dbdda9783e93..697808b544d8 100644
>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>> @@ -210,6 +210,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-odroid-m2.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5b.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-roc-pc.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-radxa-cm5-io.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5c.dtb
> 
> Small nitpick...
> The file names are alphanumerically ordered in this file.
> You should have rk3588s-radxa-cm5-io.dtb before rk3588s-roc-pc.dtb.

Sorry, it was my mistake while rebasing to linux-next. I'll resend this 
patch series with this correction.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Cheers
> Michael.
> 



