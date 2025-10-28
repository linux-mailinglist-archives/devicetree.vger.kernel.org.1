Return-Path: <devicetree+bounces-232139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF73C149ED
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 13:27:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 817C24F0AFB
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 12:26:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77EFC32D421;
	Tue, 28 Oct 2025 12:26:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg150.qq.com (smtpbg150.qq.com [18.132.163.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62BC2139CE
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 12:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.132.163.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761654404; cv=none; b=tfg++j8YrIGvGSbC7QXBXZWMhGAT44UniwQ9m56pEhei8zynjW7WSslsPzXm0L94ORxtIxcmTe6wwIxlWQLrqIDfbMRBpXDqraRNSuMMf6UMtOppeaIhHubpzg/wC69YMOdTC93RutzsxFlaKREwGvHoeNW73Kz0NxglukMwYmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761654404; c=relaxed/simple;
	bh=N68wcf/V7B8aRXpClNfxorIGvhWOHLmzjflJ6wry/SI=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=oPbVkQT4pPvhd9pDDNuKNBEmgSqHQO/5o0Lr+n5UEmyUGqDfqnEsq3rPv8EXh2Lf1ugQsToIWYtchsElIkOwBXGq6Cn+C5XPa1AA7BT5/mZ1TOIV3NAsrNNO4ALq28tJcVzyJoQMPUAEVLBrGjbC0G0e/Mrw8Wq0rwVcyzw/MNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.132.163.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip2t1761654318t7f936c1d
X-QQ-Originating-IP: yvfBL7O8gh818stg7fqBr3pW5/SJD7nE4jj2O24rJtk=
Received: from [IPV6:240f:10b:7440:1:27fe:5767 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 28 Oct 2025 20:25:05 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9726398132461173433
Message-ID: <2677EA3D584229BA+9a4c2359-c8ef-48f9-ab9f-ce197dbcc203@radxa.com>
Date: Tue, 28 Oct 2025 21:25:02 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/3] Add Radxa CM5 module and IO board dts
From: FUKAUMI Naoki <naoki@radxa.com>
To: Joseph Kogut <joseph.kogut@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jimmy Hon <honyuenkwun@gmail.com>, Steve deRosier <derosier@cal-sierra.com>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com>
 <57969F385B5AF318+653dac83-8227-4987-84c6-f3e08b10085c@radxa.com>
 <CAMWSM7iHtAxewW4JkRqRsifVnccqeFviaCgeOyprKDr92FOurg@mail.gmail.com>
 <AE0735A6C797CCFF+10496d73-7c0a-4884-9561-24721305a24f@radxa.com>
Content-Language: en-US
In-Reply-To: <AE0735A6C797CCFF+10496d73-7c0a-4884-9561-24721305a24f@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: Mf+HUhdnuYe/4tSlQuwmfIpImsPDVH08knSQtbfVxEmRnWyZ10PiKQ6S
	GEd57lo86F14FvgWovdqBphSKxF4UIO7Ud/gQsacRCDK4ks9+7JJg+8JiX6loOMnUPhdA2c
	bHmnPwWcDmRYIXdj9ulGCoqO4FCwdhY63zTvFKlC1pgQmghKJHqCGmizFdebdEIxO7MnfAA
	rdvx464wSOVfhT8qucFbTxhovBa9VshnyvPRpg5f2URpgkuJmqtrXVBFieJcnZJegPftfa3
	nVB0OnpR9umxEy/lhnQO77L5hq8O7ZmhI+dBD8lIfpHjwggOlG2O6o7mO47ygSid8oF5U7n
	SGyAohO6DIvdHegL5bZ6jmAiWgVkt+jbWOFy1W0gkWFwTaI7GaYAhLrOUP1MrCKmaPKtEj4
	RdM0+NLtwdQo/FWoH9Bp+Uq+GnkrvVLNtCZ6Cf46OmvO7zQ7g9MLgbIMekFEBQ43HHYbwKg
	0NCb8FULee8K5ytTiAUeRcsNrjOyMlbBz3xoEnabUPID+gtY2jEhfeDAzC3afFeA7ejY6R+
	oPoGHK5msxtsFPuBjYYSyMP1zWvD3gnDBezg9Q7+MjCv1qjzjZhGQc4MtqniQASpLGPIL29
	efDXDv8dVc31ZOcOogHAdSuDogoS0qmQNF2YmGz8fmX7lk6X/wbYgZw3DaKNa60wYgEKPWx
	pkSmBCQ8rIodIxb/eZfyFmU4za+X3yPXCDklUBEwk8P2s144o6A4ZY0Tuh6U11nN+7+79Bf
	CHGl59sG+bZ8K850bA9OvpVZ+CqpubbPfaMNNobOJPcuysu0/uUTNXnVs6qMeLID1TODpjc
	bywQMdyk5lA8zbmKATygnCDQksFPappNZeN6iIHMgdu2pd7O2nf3nt+Xk9XHnOIKrP6jESB
	HS0U9MTTuT66njaD+kEIr+0kVCAqnRbOQUj2dHp1mVZsGNCVjwA/nW3IZs0SufB5xy5E1DC
	lX4Q9SGCK7Z0a7+zEr0td9nvnHIJKZuPtfOkdj5qu5wF1QuLTVp817quVN0J4iAxnvIvtwR
	UPD5IxWg==
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0

Hi Joseph,

I apologize for the delay in my work. My part is almost complete (see 
below), but would you like to take over the rest?

  https://github.com/RadxaNaoki/linux/commits/radxa-cm5-io/

Best regards,

FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 10/16/25 10:49, FUKAUMI Naoki wrote:
> Hi Joseph,
> 
> On 10/16/25 08:39, Joseph Kogut wrote:
>> Hello Naoki,
>>
>>
>> On Wed, Sep 3, 2025 at 1:28 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>
>>> Hi Joseph,
>>>
>>> I'm thinking of continuing your work, so if you've already done
>>> something, please let me know.
>>>
>>
>> I've not followed up on this series yet, but I'm planning on picking
>> it back up this week. I'm happy to collaborate with you, do let me
>> know if you've made any progress or improvements, and thank you for
>> your review earlier.
> 
> I've already almost finished the work. Unfortunately, a problem(*1) 
> caused the work to stop for a few weeks, but the problem has been 
> resolved(*2), so I can continue working. I'll post a patch soon once 
> some minor tweaking and testing is complete.
> 
> By the way, at some point I switched from "continuing your work" to 
> "recreating a new one based on my current work." The results of my 
> current work(*3) have changed significantly.
> 
> *1 https://patchwork.kernel.org/project/linux-pci/patch/20250922-pci-dt- 
> aspm-v2-1-2a65cf84e326@oss.qualcomm.com/#26603499
> *2 https://patchwork.kernel.org/project/linux-rockchip/ 
> patch/20251015123142.392274-2-cassel@kernel.org/
> *3 https://github.com/RadxaNaoki/u-boot/commits/radxa-cm5-io/
> 
> Best regards,
> 
> -- 
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
>> Best,
>> Joseph
>>
>>> Best regards,
>>>
>>> -- 
>>> FUKAUMI Naoki
>>> Radxa Computer (Shenzhen) Co., Ltd.
>>>
>>> On 6/18/25 07:11, Joseph Kogut wrote:
>>>> This patch series adds initial device tree support for the Radxa CM5 
>>>> SoM
>>>> and accompanying IO board.
>>>>
>>>> V4 -> V5:
>>>>     Patch (2/3), per Jimmy:
>>>>     - Alias eMMC to mmc0
>>>>     - Remove unused sdio alias
>>>>     - Move gmac, hdmi0 nodes to carrier board dts
>>>>
>>>>     Patch (3/3), per Jimmy:
>>>>     - Enable hdmi0_sound and i2s5_8ch
>>>>     - Remove redundant enablement of sdhci
>>>>     - Enable usb_host2_xhci
>>>>
>>>>     - Tested HDMI audio
>>>>
>>>> V3 -> V4:
>>>>     - Fixed XHCI initialization bug by changing try-power-role from 
>>>> source
>>>>       to sink
>>>>
>>>> V2 -> V3:
>>>>     - Addressed YAML syntax error in dt binding (per Rob)
>>>>     - Fixed whitespace issue in dts reported by checkpatch.pl
>>>>     - Split base SoM and carrier board into separate patches
>>>>     - Added further details about the SoM and carrier to the commit
>>>>       messages
>>>>
>>>> V1 -> V2:
>>>>     - Added copyright header and data sheet links
>>>>     - Removed non-existent property
>>>>     - Sorted alphabetically
>>>>     - Removed errant whitespace
>>>>     - Moved status to the end of each node
>>>>     - Removed pinctrl-names property from leds (indicated by 
>>>> CHECK_DTBS)
>>>>     - Removed delays from gmac with internal delay
>>>>
>>>> - Link to v4: https://lore.kernel.org/r/20250605-rk3588s-cm5-io-dts- 
>>>> upstream-v4-0-8445db5ca6b0@gmail.com
>>>>
>>>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
>>>> ---
>>>> Joseph Kogut (3):
>>>>         dt-bindings: arm: rockchip: Add Radxa CM5 IO board
>>>>         arm64: dts: rockchip: Add rk3588 based Radxa CM5
>>>>         arm64: dts: rockchip: Add support for CM5 IO carrier
>>>>
>>>>    .../devicetree/bindings/arm/rockchip.yaml          |   7 +
>>>>    arch/arm64/boot/dts/rockchip/Makefile              |   1 +
>>>>    .../boot/dts/rockchip/rk3588s-radxa-cm5-io.dts     | 486 ++++++++ 
>>>> +++++++++++++
>>>>    .../arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi | 135 ++++++
>>>>    4 files changed, 629 insertions(+)
>>>> ---
>>>> base-commit: 0af2f6be1b4281385b618cb86ad946eded089ac8
>>>> change-id: 20250605-rk3588s-cm5-io-dts-upstream-f4d1e853977e
>>>>
>>>> Best regards,
>>>
>>
> 
> 


