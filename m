Return-Path: <devicetree+bounces-274142-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPFeCMh3sWk2vgIAu9opvQ
	(envelope-from <devicetree+bounces-274142-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:10:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4482651E1
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:10:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EDA12301DE02
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:10:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23D9235F614;
	Wed, 11 Mar 2026 14:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="H8OjOTTm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49244.qiye.163.com (mail-m49244.qiye.163.com [45.254.49.244])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4499A369215;
	Wed, 11 Mar 2026 14:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.244
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773238211; cv=none; b=kmUjjK/z1FdrZjKqVeyjeWW885ChCcm03qIjmxHMWyM3y6sYvZAuvw6vNr8Gf4Zf8HJL1e49KrQyv0gjbFcdicjwiu0F3GhvSFjCRfVfe9QBZ/xExUY6Z1TwSGOb+fhrObKXKEPBW/DW2zmnrtv4iMTIVKe9LGVDxZFNGOSreN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773238211; c=relaxed/simple;
	bh=TInLBp28EK0znbnP23RiEvjo+1byWVOga/66BUqdNuY=;
	h=Cc:Subject:To:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=qiEWJxgQZ+uQjd58MQkfrmiVE3N9ONYY+EoUeVOylfxoKL1dfOHrOqyoYhM8s98SVV2YDxIipl+y4qKeyVttOhA3TBEXMBDhy0zksfsPtQkouRA1COXZObg+SHRlR82U/LgVFDApJ0Z1e7/jHXI1JNfgk3WeY5ckBuzQY5xhOtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=H8OjOTTm; arc=none smtp.client-ip=45.254.49.244
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 369352f1f;
	Wed, 11 Mar 2026 22:04:48 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 FUKAUMI Naoki <naoki@radxa.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1] arm64: dts: rockchip: Enable PCIe CLKREQ# for RK3588
 on Rock 5b-5bp-5t series
To: Anand Moon <linux.amoon@gmail.com>
References: <20260311115502.7353-1-linux.amoon@gmail.com>
 <cc922ebf-9221-00f8-e951-903c97d24f20@rock-chips.com>
 <CANAwSgT_Qb+Xoqg4ezZaYDBu81--=yhdvQ+cskumoMMh=J2ing@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <77f0d3c2-649f-770d-1636-6fd52f3b5f5e@rock-chips.com>
Date: Wed, 11 Mar 2026 22:04:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <CANAwSgT_Qb+Xoqg4ezZaYDBu81--=yhdvQ+cskumoMMh=J2ing@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9cdd36e6eb09cckunm65969256164ad
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU8eSFZOQ0seTUJJH09CH0pWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=H8OjOTTmoRdwD7CxxdJv61r9AX5gJp2uHHnIVhNJjEI5yVikIexDygld6ueBXjhn0/Uo/rJqI6SwWCg6s7dPB5PYnVeOaWQpQdK3f48C4qkpOC2QiRyb+b6tKrbTJHB2Hmixl7r4YGDUWU0VeS32F+IitlR72zC24JBu96Eofak=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=hhCy0ytu2ON0MOLjFmsC+8EribvDYXOLcQTdJEzjNgQ=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: 7F4482651E1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274142-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,rock-chips.com:dkim,rock-chips.com:email,rock-chips.com:mid,radxa.com:url]
X-Rspamd-Action: no action

在 2026/03/11 星期三 21:43, Anand Moon 写道:
> Hi Shawn,
> 
> Thanks for your review comments.
> 
> On Wed, 11 Mar 2026 at 17:57, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>>
>> 在 2026/03/11 星期三 19:54, Anand Moon 写道:
>>> Add supports-clkreq and the corresponding pinmux configurations for PCIe
>>> ASPM L1 substates on the Rock 5B, 5B+, and 5T.
>>> The supports-clkreq flag informs the PCIe controller that the hardware
>>> routing for the CLKREQ# sideband signal is present. This enables support
>>> for PCIe ASPM (Active State Power Management) L1 substates, allowing for
>>> better power efficiency.
>>>
>>> Cc: Shawn Lin <shawn.lin@rock-chips.com>
>>> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
>>> ---
> I verified the change by comparing the lspci -vvv output from before
> and after the modification.
>>
>> It would be better if you could put the link to the schematic here(under
>> "---") for folks easy to review. I paste it here for reference：
>>
>> https://dl.radxa.com/rock5/5b+/docs/hw/radxa_rock5bp_v1.2_schematic.pdf
> Ok, I will follow this advice next time,
>>
>>>    arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 9 ++++++---
>>>    1 file changed, 6 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
>>> index b3e76ad2d869..668b19c05f7e 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
>>> @@ -468,7 +468,8 @@ map1 {
>>>
>>>    &pcie2x1l0 {
>>>        pinctrl-names = "default";
>>> -     pinctrl-0 = <&pcie2_0_rst>;
>>> +     pinctrl-0 = <&pcie2_0_rst>, <&pcie30x1m1_0_clkreqn>;
>>> +     supports-clkreq;
>>>        reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
>>>        vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
>>>        status = "okay";
>>> @@ -476,7 +477,8 @@ &pcie2x1l0 {
>>>
>>>    &pcie2x1l2 {
>>>        pinctrl-names = "default";
>>> -     pinctrl-0 = <&pcie2_2_rst>;
>>> +     pinctrl-0 = <&pcie2_2_rst>, <&pcie20x1m0_clkreqn>;
>>
>> Isn't it m1(PCIE20_1_2_CLKREQn_M1_L in the schematic)?
> 
> I just used the pinctrl label GPIO3_C7_u as a reference to select this
> one. see below.
> 
> [1] https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi#L1613-L1662
> 
> The RK3588 Technical Reference Manual (TRM) Part 2 provides the
> following details regarding the clkreq# signal
> pcie_clkreq_in/out_n    M0 PCIE20X1_2_CLKREQN_M0 GPIO3_C7_u
> pcie_clkreq_in/out_n    M1 PCIE20X1_2_CLKREQN_M1 GPIO4_B7_u

Okay, I checked it again, you are right. Apprently the schematic label
is insane which marks it as PCIE20_1_2_CLKREQn_M1_L....

> 
>>
>>> +     supports-clkreq;
>>>        reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
>>>        vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
>>>        status = "okay";
>>> @@ -488,7 +490,8 @@ &pcie30phy {
>>>
>>>    &pcie3x4 {
>>>        pinctrl-names = "default";
>>> -     pinctrl-0 = <&pcie3_rst>;
>>> +     pinctrl-0 = <&pcie3_rst>, <&pcie30x4m1_clkreqn>;
>>
>> The pin is correct but I don't think it would support
>> L1 substates because the refclk is out of control. For
>> any refclk coming from external clock generator, clkreq#
>> should connect to the enable pin of the clock generator.
>>
> I did not find the external clkreq# signal for this #clkreq signal in
> the schematics.
> 
> PCIE30X4_CLKREQn_M1_L  (GPIO4_B4_u) .

What I meant is PCIE30X4_CLKREQn_M1_L is connected between root port
and M.2 slot which is not the right hardware design to support L1 
substates with PCIe3.0 PHY. We could do that for combophy as the refclk
is auto controlled by controller when entering and exiting L1 substates.
But for PCIe3.0 PHY the refclk is always there coming from
Au5426_device, so the this port tries to enter L1 substates, no
component could turn off the refclk to meet the timing of entering L1
substate, except you connect clkreq# to the Au5426, because in that case
PHY could gate the incoming refclk via clkreq#, thanks to the natural
behaviour of how clkreq# is controlled.

To clarify, PCIE30X4_CLKREQn_M1_L is connected between the Root Port and
the M.2 slot. This hardware configuration is not suitable for supporting
L1 Substates with the PCIe 3.0 PHY. While this setup works for the Combo
PHY—where the controller automatically manages the reference clock
during L1 Substate entry and exit—it fails with the dedicated PCIe 3.0
PHY. In the latter case, the reference clock from the Au5426_device is
always active. Consequently, when this port attempts to enter L1
Substates, no component can gate the reference clock to meet the
required timing specifications.

The only way to satisfy the timing requirements is to connect CLKREQ# 
directly to the Au5426. This allows the PHY to gate the incoming 
reference clock via the CLKREQ# signal, leveraging its standard control 
behavior.

Otherwise you could only see it in L1 instead of L1 substates. By the
way, how do you verfy it could enter L1 substate? Do you use debugfs
like below ?
   cat /sys/kernel/debug/dwc_pcie_a40000000.pcie/ltssm_status

> 
>>> +     supports-clkreq;
>>>        reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
>>>        vpcie3v3-supply = <&vcc3v3_pcie30>;
>>>        status = "okay";
>>>
>>> base-commit: b29fb8829bff243512bb8c8908fd39406f9fd4c3
>>>
> 
> Thanks
> -Anand
> 

