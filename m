Return-Path: <devicetree+bounces-235553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2F5C39C70
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 10:16:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7655F18C66FE
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 09:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23DED303CAB;
	Thu,  6 Nov 2025 09:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="EVsVRcCF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3286.qiye.163.com (mail-m3286.qiye.163.com [220.197.32.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4C11E9906
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 09:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762420554; cv=none; b=qbg4aW8xTaYVEIDlWinXusgOB9fwHP3ebmaGKvUPQ4mNmydZp8ly+TYKD3g1uUO567SI92y0ZNgWsC8+IFN/LKJUyPsbm21n4gvGLijOnBYGTiW4xLOVRQr7sRhKcUcATEu31hha6Wq56PSPAlpvF7TBcWLXw/Q2lkLWWd5PidQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762420554; c=relaxed/simple;
	bh=kyOMFE1ZHCODpRUj5CsPSdzYwQOlGcUcHAuzX0dephA=;
	h=Message-ID:Date:MIME-Version:Cc:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=MfOrnnrPfoqAvbib7nSMaOJBn5Yg/JeFItzLHxsusRnMkrk/LLNfB/c/EPNn5wb+Pblrp2vGKpwBWhtyO/1oimkhydx+Fzhj4K89v3UyY4/rlckkcnoX3yyBwuSg/aPSGFsek6FJcl+5yHTrDekOyanIvq8Hw6VQa8CLZRbvUo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=EVsVRcCF; arc=none smtp.client-ip=220.197.32.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 28a003a3a;
	Thu, 6 Nov 2025 16:40:16 +0800 (GMT+08:00)
Message-ID: <a624f36b-5a06-44f5-98b2-4a194ecebc6a@rock-chips.com>
Date: Thu, 6 Nov 2025 16:40:14 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Jimmy Hon <honyuenkwun@gmail.com>,
 heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, quentin.schulz@cherry.de, pbrobinson@gmail.com,
 amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: Add Radxa CM5 IO Board
To: Dragan Simic <dsimic@manjaro.org>, FUKAUMI Naoki <naoki@radxa.com>
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
 <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com>
 <35ff8e6f-dd2b-d909-70c7-b19240e32ccf@manjaro.org>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <35ff8e6f-dd2b-d909-70c7-b19240e32ccf@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9a5852db0d09cckunm90f65a2de6d1cc
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhLQ1ZIGB1NGUJKHk0YSkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=EVsVRcCFOxEHG6CpeE2rBf6lRWtMELUzVsvBVu3MpMIaWQUlwgStYkjv1e6OtoTrdMHiL/flxVyqrfgJsRKNgaXm8FVHIre6dAC41MvxSo8hRQ02piwkzKCtHo1D8sBZ4Jp6BYj9u7MT6FQzHS74/t8QZRGHPAa6YUDjf031OvU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=OL4ei2eAwhIyMb6aBp01WxG7KhpGspUlQ42ju4Q0Mng=;
	h=date:mime-version:subject:message-id:from;

在 2025/11/06 星期四 11:31, Dragan Simic 写道:
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

Just chime in: The reason why we introduced these, is for controllers
not cards. AFAITC, before commit 6ae3e537eab9f5, we had done that way
for a decade, but rarely saw problems in this field.

> them as such, which may cause all kinds of issues.  In fact, I'm not
> really sure that the MMC drivers are actually implemented in a way
> that avoids all possible issues with the storage controllers that
> are capable of both SD and MMC modes when neither of "no-sd" and
> "no-mmc" is specified in their DT nodes.
> 
> Furthermore, it seems that specifying "cap-mmc-highspeed" together
> with "no-emmc" is actually redundant, which would make sense, but
> further research of the MMC drivers is needed.  I've added that to
> my ever-growing TODO list. :)
> 
>>> That's how the Rock 5A, 5B, and 5C were defined.
>>
>> I have submitted a patch without "no-mmc" before. I intend to send one
>> again when I have the chance.
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


