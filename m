Return-Path: <devicetree+bounces-252276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C502CFD13A
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 11:03:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 26BA330012DF
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 10:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18A562F657C;
	Wed,  7 Jan 2026 10:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="CbuHjoAK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973180.qiye.163.com (mail-m1973180.qiye.163.com [220.197.31.80])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EEE42F5A09;
	Wed,  7 Jan 2026 10:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.80
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767780186; cv=none; b=of8qsxswvbsoSghoNIvoWrvad97KqQmN86iOgJkjbENGK8CGXVfSFBGzFO/tsezuHm5AeUzUJuczGNLrAS5cXiRusNB7hfcgOcGWTRbe828Ic17QCZbUTWw3u8pVYEAJUyOfE9npu9Hh6oN6RuZa3ag0TZ/+uEXjb8jrG9zDnsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767780186; c=relaxed/simple;
	bh=12U2jnPd3isqFAA2O53vNuisMvqfO02OvunAPN3gNjg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hWnlQB/P0C63qxe5jO3UUX9LACs8yr3HdEipTixtUYuyeTydMqREsDACInLfHmTGUtZHxCOGxb8DoDdrFotQAt0sTyg0YDfvDPD0Jo1sPy8v09RSfKhfk4FywLOnKnQFboILtlEjdeIa4+F4WNaZxrRCXgqzYs/RL/DCZIhIp+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=CbuHjoAK; arc=none smtp.client-ip=220.197.31.80
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2fcf9f2ae;
	Wed, 7 Jan 2026 17:57:49 +0800 (GMT+08:00)
Message-ID: <881548f1-7dd9-40bb-9267-e5a03fb97820@rock-chips.com>
Date: Wed, 7 Jan 2026 17:57:48 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Chaoyi Chen <kernel@airkyi.com>, Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Quentin Schulz
 <quentin.schulz@cherry.de>, Kever Yang <kever.yang@rock-chips.com>,
 Jonas Karlman <jonas@kwiboo.se>, John Clark <inindev@gmail.com>,
 FUKAUMI Naoki <naoki@radxa.com>, Jimmy Hon <honyuenkwun@gmail.com>,
 Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260107070322.323-1-kernel@airkyi.com>
 <20260107070322.323-3-kernel@airkyi.com>
 <CABjd4Yw1Dqsa9EsMRFT8LOvyU8QN1C8VP+j0tY6h1uJhhXRSSw@mail.gmail.com>
 <2437891.BjyWNHgNrj@diego>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <2437891.BjyWNHgNrj@diego>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9b97e423ab03abkunmdf9f022cdcc062
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh1PQlYYGUkZHh9LHkNCSEpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=CbuHjoAKF1SH96bKLC8UN9zFsIJgDGedN5XXHY37NWuC2kSyT7v5dhrpqzEvCVpym2t8xWMmM2flcSJofP9kdHC5FkX/A67WVuKVS0oggSbtgMPFHrWGjxC4KNZtWK2kJcoplHV6f4gK3t6x2ivOAsshiocTHzDBTFLdHZ2su0E=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=ZpI7ixf6pE65MWX/ISGsLaSM7+uU0I5nnjsyA1XGxI4=;
	h=date:mime-version:subject:message-id:from;

Hi Heiko,

On 1/7/2026 4:21 PM, Heiko Stübner wrote:
> Am Mittwoch, 7. Januar 2026, 08:56:04 Mitteleuropäische Normalzeit schrieb Alexey Charkov:
>> Hi Chaoyi,
>>
>> On Wed, Jan 7, 2026 at 11:04 AM Chaoyi Chen <kernel@airkyi.com> wrote:
>>>
>>> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>>>
>>> General features for rk3576 evb2 board:
>>>     - Rockchip RK3576
>>>     - LPDDR4/4X
>>>     - eMMC5.1
>>>     - RK806-2x2pcs + DiscretePower
>>>     - 1x HDMI2.1 TX / HDMI2.0 RX
>>>     - 1x full size DP1.4 TX (Only 2 Lanes)
>>>     - 2x 10/100/1000M Ethernet
>>>     - 5x SATA3.0 7Pin Slot
>>>     - 2x USB3.2 Gen1 Host
>>>     - 3x USB2.0 Host
>>>     - WIFI/BT
>>>     - ...
>>>
>>> Tested with eMMC/SDMMC/HDMI/USB/Ethernet/WIFI/BT module.
>>>
>>> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> [...]
> 
>>> +       vbus5v0_typec: regulator-vbus5v0-typec {
>>> +               compatible = "regulator-fixed";
>>> +               regulator-name = "vbus5v0_typec";
>>
>> This might better be renamed, given that last time you mentioned this
>> board doesn't have a Type-C connector. Perhaps regulator-vbus5v0-otg?
> 
> Alternatively a comment above it.
> 
> I.e. regulator-naming should always follow the naming used in the
> schematics, so that it gets easier to reference between schematics
> and devicetree.
> 

Thanks for the explanation. I will fix this in v3.

> 
>>> +               regulator-min-microvolt = <5000000>;
>>> +               regulator-max-microvolt = <5000000>;
>>> +               enable-active-high;
>>> +               gpio = <&gpio0 RK_PD1 GPIO_ACTIVE_HIGH>;
>>> +               vin-supply = <&vcc5v0_device>;
>>> +               pinctrl-names = "default";
>>> +               pinctrl-0 = <&usb_otg0_pwren>;
>>> +       };
>>> +
>>> +       vcc12v_dcin: regulator-vcc12v-dcin {
>>> +               compatible = "regulator-fixed";
>>> +               regulator-name = "vcc12v_dcin";
>>> +               regulator-always-on;
>>> +               regulator-boot-on;
>>> +               regulator-min-microvolt = <12000000>;
>>> +               regulator-max-microvolt = <12000000>;
>>> +       };
>>> +
>>> +       vcc1v2_ufs_vccq_s0: regulator-vcc1v2-ufs-vccq-s0 {
>>> +               compatible = "regulator-fixed";
>>> +               regulator-name = "vcc1v2_ufs_vccq_s0";
>>> +               regulator-boot-on;
>>> +               regulator-always-on;
>>> +               regulator-min-microvolt = <1200000>;
>>> +               regulator-max-microvolt = <1200000>;
>>> +               vin-supply = <&vcc_sys>;
>>> +       };
>>> +
>>> +       vcc1v8_ufs_vccq2_s0: regulator-vcc1v8-ufs-vccq2-s0 {
>>> +               compatible = "regulator-fixed";
>>> +               regulator-name = "vcc1v8_ufs_vccq2_s0";
>>> +               regulator-boot-on;
>>> +               regulator-always-on;
>>> +               regulator-min-microvolt = <1800000>;
>>> +               regulator-max-microvolt = <1800000>;
>>> +               vin-supply = <&vcc_1v8_s3>;
>>> +       };
>>> +
>>> +       vcc3v3_hubreset: vcc3v3-hubreset {
>>> +               compatible = "regulator-fixed";
>>> +               regulator-name = "vcc3v3_hubreset";
>>> +               regulator-boot-on;
>>> +               regulator-always-on;
>>
>> If this regulator supplies a soldered-on discrete hub and is required
>> to power it up, won't it be better to describe the hub in the device
>> tree (see binding at [1]), make the regulator its supply, and perhaps
>> drop the "regulator-boot-on/regulator-always-on" annotation here,
>> letting the regulator core deal with its enabling instead?
>>
>> [1] https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/usb/usb-device.yaml
> 
> Yep, it would be nicer to it this way.
> A live example can be found in the Rock 5 ITX [2]
> 
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts#n1266

Thank you for the great example. BTW the hub used here is CH344. It
looks like we need to add a new binding :)

> 
> 
> Heiko
> 
> 
>> [snip]
>>
>> Other than these, LGTM - thanks for addressing my comments from v1!
>> Feel free to include my:
>>
>> Reviewed-by: Alexey Charkov <alchark@gmail.com>
>>
>> Best regards,
>> Alexey
>>
> 
> 
> 
> 
> 
> 

-- 
Best, 
Chaoyi

