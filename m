Return-Path: <devicetree+bounces-261412-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kjz5I6DRfWmITwIAu9opvQ
	(envelope-from <devicetree+bounces-261412-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 10:55:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5494AC1736
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 10:55:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D90F2300874E
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 09:55:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C0BB32F74B;
	Sat, 31 Jan 2026 09:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="fPmlXqpY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32112.qiye.163.com (mail-m32112.qiye.163.com [220.197.32.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EE321B9FD;
	Sat, 31 Jan 2026 09:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.112
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769853340; cv=none; b=G69B3IZ3z0SwRCrayT021Uq6ZhjlD0sfhbq2MqfljoO34++viqWtWoxPLyDgARgbLwbnWz9DoU5WrKkNsjIuhAJDkohoOtTX4BVR11Pg2AwMKb9E8mo/lFeciA5mNrmiG9gwgOGajCW8oRKbfxdGjmsxBEXEOpl/g7GMC33YYq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769853340; c=relaxed/simple;
	bh=Yw6Upyb+CWxY4Ou04WxDZ0z+wRHH51S4yIR9oJc4V5o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UsfaEX9nkR5eOFKafyItMrPffRssmv92FlMNcCaT2MmvuO8a2hz4v74tzzzvmFNrv2KymmjNHvOXvhoaOHNBL1gVfSqCFRNk+sTW7+/9ClwOBGe7oKGRlliC2C8L51/ernXXjf9iOgBCq+XNBtc4xtLgzxf9nOyulVQzxnhRFLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=fPmlXqpY; arc=none smtp.client-ip=220.197.32.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 32a366f45;
	Sat, 31 Jan 2026 14:26:14 +0800 (GMT+08:00)
Message-ID: <d552639a-331e-436d-8baf-62546253aa62@rock-chips.com>
Date: Sat, 31 Jan 2026 14:26:05 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Change gmac phy-mode to
 rgmii-id for rk3576 evb1
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andrew Lunn <andrew@lunn.ch>
Cc: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexey Charkov <alchark@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Stephen Chen <stephen@radxa.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260121031548.402-1-kernel@airkyi.com>
 <20260121031548.402-2-kernel@airkyi.com>
 <b87d0c82-b8b7-4e14-85c3-c4ba88aa4000@lunn.ch>
 <81D509A8F65F0243+c7b58aef-95a4-4f2a-a423-7e8b2c0bbeab@airkyi.com>
 <55c9b522-e43d-4df3-9f7a-3f2976b72854@lunn.ch>
 <f5e79cfe-6ea3-44c5-bb86-41cccef1401f@rock-chips.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <f5e79cfe-6ea3-44c5-bb86-41cccef1401f@rock-chips.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9c12bb0e0403abkunme89cdd3e6e3494
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0tLGFZOGkMfSU1OShgYTEtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE
	9VSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=fPmlXqpYaif+Alwx00473YixZd4FG1mKGYUX0cT/qaI8GyodiABrpI65MUYvdc7WDSRBI+E9+twWsYX0iXCBU4kQRIFA1hKnBG+Eo4cruwJXzniNEii4oKN3HJbUNhlcXo0+bXg9DCU8D8l8cb/uygMBWfJzuU6B4eN6LILi7w0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=s0+sAGqB2yhj2oDmerbSlM2FR61cb3QdCFDcKvvINYo=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261412-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[airkyi.com,kernel.org,sntech.de,gmail.com,rock-chips.com,collabora.com,radxa.com,vger.kernel.org,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: 5494AC1736
X-Rspamd-Action: no action

On 1/22/2026 11:16 AM, Chaoyi Chen wrote:
> Hi Andrew,
> 
> On 1/22/2026 10:40 AM, Andrew Lunn wrote:
>> On Thu, Jan 22, 2026 at 09:38:17AM +0800, Chaoyi Chen wrote:
>>> Hi Andrew,
>>>
>>> On 1/21/2026 8:55 PM, Andrew Lunn wrote:
>>>>> @@ -721,6 +719,7 @@ rgmii_phy0: ethernet-phy@1 {
>>>>>  		reset-assert-us = <20000>;
>>>>>  		reset-deassert-us = <100000>;
>>>>>  		reset-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
>>>>> +		tx-internal-delay-ps = <1950>;
>>>>
>>>> The PHY should add 2000ps, as required by the RGMII standard. The
>>>> difference is so small there is no need for tx-internal-delay.
>>>>
>>>
>>> Thank you for the clarification. I chose 1950 here because I find that
>>> the MotorComm yt8xxx Ethernet PHY binding only offer the options of 
>>> 1950 or 2100. 
>>>
>>>> In most cases, 'rmgii-id' should be sufficient, unless the PCB is
>>>> badly designed.
>>>>
>>>
>>> I suspect the ROCK 4D board might be an exception. Sebastian once
>>> reported that it wouldn't work properly under "rgmii-id". Well, I'm
>>> not sure what strategy to adopt in this case.
>>
>> Please check the report. And also, check what the PHY is doing for
>> delays if you don't specify the property. Is it defaulting to near
>> 2000ps?
>>
> 
> It is RTL8211F PHY. The origin report is here:
> 
> https://lore.kernel.org/all/20250724-rk3576-rock4d-phy-timings-v1-1-1cdce2b4aca4@kernel.org/
> 
> The RTL8211F binding doesn't provide any indication of the default
> delay value. I'll checking datasheet to see if it's mentioned there.
> 

If "rgmii-id" is set, the RTL8211F driver adds the 2ns delay:

[0] https://elixir.bootlin.com/linux/v6.19-rc5/source/drivers/net/phy/realtek/realtek_main.c#L602

Sebastian, could you try testing how much extra delay the GMAC still
needs to add for the ROCK4D to work correctly, assuming the PHY
already has a 2 ns delay when "rgmii-id" is set?

-- 
Best, 
Chaoyi

