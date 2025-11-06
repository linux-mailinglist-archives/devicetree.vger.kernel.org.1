Return-Path: <devicetree+bounces-235464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A71C39184
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 05:30:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BE7F3B9AE2
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 04:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BA9E2C158D;
	Thu,  6 Nov 2025 04:30:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F4C2C11CF
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 04:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762403401; cv=none; b=DmhA0HArtF6d7IC85dNvd3g1XdRWBxi+SxmDys+QzeTAy0oYizNWxWP+nBhjDOHVpnQfnYvXQMcrtlft39SGqTzWkGM5FmRDaRdxxXFVuXeW+aILAg1/E+WvmoEnpRshUDPCGerhwgeB3BNZXK4OoYDvIg3BP679oNcApX+KYEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762403401; c=relaxed/simple;
	bh=M7Xt9BUv8NCw+ia/deuhzv7uRZ1tvO5FpdyGDWDqH/Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bPc4Fw0hreDEGkRJb2glP1EELxq7+JkCvPkqv6Mf9Dc4d9nf5/4ToFmtiVOBVK3OuaF/l/uvEVOuOdZw6oOAtq+Bt0JNMAPf+fnQedxSbAPSwViLwkPYyvLeriDmNpV/Lx+t/3UjO/Dr/6p5b8mldhIj2hrXbk5pz1owM97JBzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip2t1762403365t556f18a9
X-QQ-Originating-IP: EwkxOrRxBoJddIR4pEOMne+0CXyJ2WWFVCrq2hNoezM=
Received: from [IPV6:240f:10b:7440:1:4c9d:dff9 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 06 Nov 2025 12:29:22 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15303690167575674742
Message-ID: <62149259BA8D0C0B+f4370c28-0eee-4095-9bf8-cd5e307a4c84@radxa.com>
Date: Thu, 6 Nov 2025 13:29:21 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: Add Radxa CM5 IO Board
To: Dragan Simic <dsimic@manjaro.org>
Cc: Jimmy Hon <honyuenkwun@gmail.com>, heiko@sntech.de,
 joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
 quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
 <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com>
 <35ff8e6f-dd2b-d909-70c7-b19240e32ccf@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <35ff8e6f-dd2b-d909-70c7-b19240e32ccf@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NkLA2q2LD229OLR7bumwerfj4+xi+hqMjSOo8CAQx1AL0AYz3pF5gFuX
	QW7uG19PfZAKm1boIIPlyJ9XdMw7XCLaQXxjdIOSD14JrrCqk0GCOFcRvtWhRmb9pyP2gtK
	HCDmonSA9UIPwC7Sb4KoJ0h3T0kkv00VFe6YM6mMM5HlIPN7rYpOxpyCQUD2XF2as6i8NbT
	Op7SwtamZakTwEpNZxEsqBNFvBOSCgeYXq3/1FrNLdv+fOgIZH/rRcDPM3CrkNn+CNG94AL
	qGkFrIEM5RjoEy8AKEu+EBEN2Safgt8D2mreFwWtemVlK+Aqu8ZVZLPodBtmcqFfN1j30HW
	yp/2QMHDTecQUc6s2cNbQQ94zNoBr5+n+FbM74S9AKyLVkGq5henXYmvJ5taKlsPH/OMION
	pXPsyaOuz4bZi6NX+Atw/WKQXFbpfqR8jKLbYfCCqoTBV96+TgQ3Y5CQ3Yy9G7cS+4U8d1s
	uzQokIDWrEcYzy9aaxgzxIPlLpf3fpta4d/nyMUCA0ZFUSHus8uwnV5Io/wXoDvZldlGeSM
	J3WnlH4rFf4Pp2KX9/oPnc54k7XtfP2GKLaqwyQtf+vCjHODeaV49FMsRsm1lqpb3XEjaP2
	KMIFxoaha82vDcJ5QfFfNUT6rzk3f5GajDamL5YTwzF3N9kgeiTO03k9bUsZif+HpFhWQTh
	0tmRUcYAYKSQn9NYp+qh4qWUWYmy6V1gHnx8tsVespukQc592jDcq3HikAP/QrRXpNIrVzT
	3f7FB4ifklBa74Alg/wBgEmJhTzOVWePP8RM4FKIYD/3UMX9itXNpHnWOWNB0Hh6Vvconx/
	MgLpdcxwlse+YgIvR2L9MQSX2fs0fXSdIQEPe14N/nYcE/dt/LrvMQKogngS9g1NP87AraO
	bueMwP3AWyQWTea8SBAJ/6/T33oidCZLkVM3z8hQksqxM1Q8p+4jwk75Doho1BmCHtAPt9o
	Q3qRPJrljSOpPNTe8aVTsPlJs8/uv7TpHAqAYFo1MEdXQyfAAlyo7s7kI
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0

Hi Dragan,

On 11/6/25 12:31, Dragan Simic wrote:
> Hello Naoki,
> 
> On Thursday, November 06, 2025 00:38 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>> On 11/6/25 03:27, Jimmy Hon wrote:
>>> On Tue, Nov 4, 2025 at 11:14 PM FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>>
>>>> The Radxa CM5 IO Board is an application board for the Radxa CM5.
>>>>
>>>> Specification:
>>>
>>>> - 1x microSD card slot
>>>
>>> [ snip ]
>>>
>>>> +
>>>> +&sdmmc {
>>>> +       bus-width = <4>;
>>>> +       cap-mmc-highspeed;
>>>> +       cap-sd-highspeed;
>>>> +       cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>>>> +       disable-wp;
>>>> +       no-sdio;
>>>> +       pinctrl-names = "default";
>>>> +       pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd>;
>>>> +       sd-uhs-sdr104;
>>>> +       vmmc-supply = <&vcc_3v3_s3>;
>>>> +       vqmmc-supply = <&vccio_sd_s0>;
>>>> +       status = "okay";
>>>> +};
>>>
>>> When used as a TF slot, shouldn't there be a "no-mmc" also?
>>
>> We have "eMMC to uSD."
>>    https://radxa.com/products/accessories/emmc-to-usd
>>
>> [  202.176757] mmc_host mmc1: Bus speed (slot 0) = 49500000Hz (slot req
>> 52000000Hz, actual 49500000HZ div = 0)
>> [  202.178477] mmc1: new high speed MMC card at address 0001
>> [  202.179534] mmcblk1: mmc1:0001 SLD64G 57.6 GiB
>> [  202.207336] mmcblk1boot0: mmc1:0001 SLD64G 4.00 MiB
>> [  202.210374] mmcblk1boot1: mmc1:0001 SLD64G 4.00 MiB
>> [  202.212967] mmcblk1rpmb: mmc1:0001 SLD64G 4.00 MiB, chardev (511:1)
>>
>> (I'm not sure why it says "Not work with the SD slot on the board." I
>> will check.)
> 
> Thanks for bringing this up, I've always wondered how are such
> simple eMMC-to-microSD adapters supposed to work, so this was
> a good opportunity to research that a bit further.
> 
> In a few words, they're not supposed to work in true microSD card
> slots, and they seem to rely on USB card readers that support
> multiple card interface standards, but not more than a single card
> at once, by wiring their single interface lines in parallel to the
> different types of card slots that they provide.
> 
> To explain it a bit further, an eMMC chip supports different data
> bus widths and a backward-compatible MMC card mode, but they have
> very little knowledge about the SD specification, despite being
> somewhat similar; the exception is the simplified eMMC boot mode.
> This is explained further in the JEDEC JESD84-B51 standard, which
> is available freely from the JEDEC website after registration.
> 
> This is also confirmed by the kernel messages quoted above, which
> show that the eMMC chip is detected as an MMC card this way.
> 
> With all that in mind, we should specify "no-mmc" here, because
> we're describing a microSD slot, instead of describing some hybrid
> MMC/microSD slot.  That also explains why the adapter sold by Radxa
> is described as not to be used with microSD card slots on SBCs.  I'd
> also like to hear is this adapter/eMMC chip combo recognized by the
> kernel when "no-mmc" is specified; it should fail.
> 
> Actually, not specifying "no-mmc" here may result in some unforeseen
> issues with some (or perhaps many?) microSD cards, because the MMC
> drivers will treat them as MMC-capable devices and try to initialize
> them as such, which may cause all kinds of issues.  In fact, I'm not
> really sure that the MMC drivers are actually implemented in a way
> that avoids all possible issues with the storage controllers that
> are capable of both SD and MMC modes when neither of "no-sd" and
> "no-mmc" is specified in their DT nodes.

I have no objection to specifying no-mmc (and removing 
cap-mmc-highspeed). We have a USB eMMC/UFS Module Reader, which is much 
faster than an eMMC to uSD reader :)

> Furthermore, it seems that specifying "cap-mmc-highspeed" together
> with "no-emmc" is actually redundant, which would make sense, but
> further research of the MMC drivers is needed.  I've added that to
> my ever-growing TODO list. :)

Good luck with your ever-growing TODO list!

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>>> That's how the Rock 5A, 5B, and 5C were defined.
>>
>> I have submitted a patch without "no-mmc" before. I intend to send one
>> again when I have the chance.
> 
> 



