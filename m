Return-Path: <devicetree+bounces-252652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB665D01B8A
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 10:03:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20BD13016DD5
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:03:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16B3B34D4EB;
	Thu,  8 Jan 2026 08:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="f79xQ8sZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3286.qiye.163.com (mail-m3286.qiye.163.com [220.197.32.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517FA2DB7A4;
	Thu,  8 Jan 2026 08:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767861506; cv=none; b=nM1y7VO4L1RQib91/HwknQ24DcQsEnCcxkjqeuJ9dki0ZZuswZQ0PuBEgmw7DDz6D/IRX/g+Ar8/BBAPr7Cqw0dt2IoVSoMu62g4L8znKYd2T03j9BCjHsjabr6+r9PODFRO19YDTlJXHUTXtStaRYb3pkbmKP5zSiHdvVnfTOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767861506; c=relaxed/simple;
	bh=rDWPX0bX4HT1JMOVogTfF7+/NJlcRhsXbIBHWUuxWQM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JqiDWQ9wccUc/e2ZC/OTxNOyWrncvUOUjxRGvhJB4F1Sgfr3Xo429eeczV18vE1VL8LqJkrW0sV6AfLtnxqzRYfyMB7U0yj2DHQgPoI6tUoaIdFa002Wzm0tMNvBRNRTUWpVh/X5dLWZ4e1gmg052cj8vIYppXmcF2LaeNjeoXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=f79xQ8sZ; arc=none smtp.client-ip=220.197.32.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2fef36141;
	Thu, 8 Jan 2026 16:38:07 +0800 (GMT+08:00)
Message-ID: <6f55c325-6b2a-4fe9-a487-5f1ae7969d9d@rock-chips.com>
Date: Thu, 8 Jan 2026 16:38:06 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Alexey Charkov <alchark@gmail.com>, Chaoyi Chen <kernel@airkyi.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Quentin Schulz <quentin.schulz@cherry.de>,
 Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260107070322.323-1-kernel@airkyi.com>
 <20260107070322.323-3-kernel@airkyi.com>
 <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch>
 <CABjd4YzsjZXe16XWgrHRG5shNA_DQJF45i1roahvfAfV4xdU0Q@mail.gmail.com>
 <a545fec0-cb30-489a-b5e6-4ee87dcab41c@rock-chips.com>
 <5FFFBA7FAF5745A7+e0381969-800a-4bf6-9aac-81cffa3469a1@airkyi.com>
 <CABjd4YxwD_q_FrEuPw_GY+vG6700Vd_weWqdcFn2C3V0fqpO-Q@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CABjd4YxwD_q_FrEuPw_GY+vG6700Vd_weWqdcFn2C3V0fqpO-Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9b9cc1866103abkunm0e048bb5117cfb
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxhJQlZKTElOQx1OQk0YS01WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUJNS0
	pVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
	b=f79xQ8sZlvCVy2PFQxXZd70Z/gMMUfuu39/WzLEApaY/LtlnAlZLpyn8o0o7YdTMMF9rsFmxcNn+HU/BGHd8baUJbHmZ7Q7uLAgllFhWoZP56g9OZ17+f6gWldn6XDzL8XE03FG4Ba7H2AOQmequz04zyPDk5B86vAscguWQsL4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=lHhK7J9UwVHyDp7OnI2aJtOUELVCPGvnzkrrcOsH38Q=;
	h=date:mime-version:subject:message-id:from;

On 1/8/2026 4:11 PM, Alexey Charkov wrote:
> On Thu, Jan 8, 2026 at 12:02 PM Chaoyi Chen <kernel@airkyi.com> wrote:
>>
>> On 1/8/2026 3:42 PM, Chaoyi Chen wrote:
>>> Hello Alexey, Andrew,
>>>
>>> On 1/8/2026 2:53 PM, Alexey Charkov wrote:
>>>> On Wed, Jan 7, 2026 at 10:18 PM Andrew Lunn <andrew@lunn.ch> wrote:
>>>>>
>>>>>> +&gmac0 {
>>>>>> +     clock_in_out = "output";
>>>>>> +     phy-mode = "rgmii-rxid";
>>>>>
>>>>> rgmii-rxid is odd. Does the PCB really have an extra long TX clock
>>>>> line, but a short RX clock line?
>>>>>
>>>>> Try changing this to rgmii-id, and drop the tx_delay property.
>>>>
>>>> Actually it would be great if Rockchip could clarify the delay
>>>> duration introduced by a single delay element in GMAC-IOMUX delay
>>>> lines, which are controlled in the GMAC driver by the {tx,rx}_delay
>>>> properties. Maybe we could then switch to using
>>>> {tx,rx}_internal_delay_ps for fine-tuning the delays on the GMAC side
>>>> as envisaged in DT bindings [1], and use phy-mode = "rgmii-id"
>>>> throughout. Chaoyi, any chance you could ask around in your hardware
>>>> team?
>>>>
>>>> Currently though removing the delays at GMAC side altogether causes
>>>> unstable link operation - see [2] for example.
>>>>
>>>> [1] https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/net/ethernet-controller.yaml#L342-L347
>>>> [2] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commit/372f3e9ae62cc62cdf2543391ea57be6bb548a0c
>>>
>>> Sorry, this problem has been discussed many times before. It's because
>>> the gmac on the Rockchip platform currently relies on setting the
>>> corresponding delay via phy-mode [3].
>>>
>>> [3] https://lore.kernel.org/all/mqoyjn7mnq6tmt6n6oev4wa3herjaxlupml2fmcampwiajvj4a@r5zs4d3jdm5p/
>>>
>>> The delay introduced by the delay line is not absolute. In reality,
>>> it depends on factors such as the chip's design and process technology.
>>>
>>> And for RK3576, you can assume that:
>>>
>>>       time(ns) = 0.0579 * delay_line_count + 0.105
>>>
>>> For example, tx_delay = <0x20> means:
>>>
>>>       time = 0.0579 * 0x20 + 0.105 ns = 1.9578 ns
>>>
>>> And I believe {tx,rx}_internal_delay_ps is indeed a good idea.
>>> I'll try to add them in v3. Thanks.
>>>
>>
>> I've also see some dt that use {tx,rx}_internal_delay_ps inside the PHY,
>> and compared to doing it in the MAC, which one is the better choice?
> 
> Your PHY defaults to 1950ps in rgmii-id [1], so adding anything on top
> of that on GMAC side would land you with a longer total TX delay than
> you currently get according to the coefficients you've just posted
> (1784.1ps). I would say go for "tx-internal-delay-ps = <1800>" on the
> PHY side for the closest match.
> 
> [1] https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/net/motorcomm%2Cyt8xxx.yaml#L36

Ah, I thought it was something like this:

&gmac0 {
	phy-mode = "rgmii";
	tx-internal-delay-ps = <1784>;
};

But what you actually said was this:

&mdio1 {
	rgmii_phy: ethernet-phy@1 {
		compatible = "ethernet-phy-ieee802.3-c22";
		reg = <0x1>;
		tx-internal-delay-ps = <1784>;
	};
};

These two `tx-internal-delay-ps` things shouldn't be the same, right?

-- 
Best, 
Chaoyi

