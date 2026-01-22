Return-Path: <devicetree+bounces-258192-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sP0jBkOYcWngJgAAu9opvQ
	(envelope-from <devicetree+bounces-258192-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 04:23:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AC74F61489
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 04:23:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 278594C7B9C
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:22:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68E8034EF14;
	Thu, 22 Jan 2026 03:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="CWuMnatJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m4920.qiye.163.com (mail-m4920.qiye.163.com [45.254.49.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9186F30BF63;
	Thu, 22 Jan 2026 03:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769052118; cv=none; b=qSfGN2dfgvdQZ+SothrAG/Eu2ZnEDPnTzDO9Jr5igjNs1+h7Ghpz+EabtzGcrNca+aYXmBGfB2RO0v78qvfX4IxnMy170ZlzaRZRsH0huZVabL0Cf/VUtrUkpYJnDfDf053Jnp4fQKyl+PzxvtaCoUiK+iY/H+GTJ6ZBS7ls2EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769052118; c=relaxed/simple;
	bh=MEn+CSymw1fKSeilyCPnPMjMFivUkBIqcDjVR/9hHDM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tZmT3F1vZedgYEhr7H0HaVJ27lAvBAo1rd1YDjSXtNPOA8qLxu9z8GSrcy5JIaDc7/bYPR7CBSwlUB6tBEz7Mp78xcjLypaQ+jhm5tdB1m7tYsaRlejy/99yrVNAgqc2vLbfNlC3I9HlYUaEVA5RcDrNDz6yItPTywgv50LgeKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=CWuMnatJ; arc=none smtp.client-ip=45.254.49.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 31880f758;
	Thu, 22 Jan 2026 11:16:42 +0800 (GMT+08:00)
Message-ID: <f5e79cfe-6ea3-44c5-bb86-41cccef1401f@rock-chips.com>
Date: Thu, 22 Jan 2026 11:16:40 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Change gmac phy-mode to
 rgmii-id for rk3576 evb1
To: Andrew Lunn <andrew@lunn.ch>, Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexey Charkov <alchark@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
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
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <55c9b522-e43d-4df3-9f7a-3f2976b72854@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9be3b44a0503abkunm4f6e7110cdce0
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ01NH1YeHksfTR9IHU9KSB5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=CWuMnatJ8Tcc1M4hC3AcKcGHbh93rgCX1uDfNICI078TwKATK3jjawFmBnnprZV8+FUIjouoLASDsgfiwDcGuOmEBWvt9SLMAz+vONf9o2hWM3syTXqUckq8GhrtlKd2wGAdFuWWiKWZfKnzWjlIoOzWBp34eK7K5PifJNXwFLQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=otU8zUr9ysKQV+4+LBuLVMkqTGH9KAp1Ay6GIjsLfwE=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258192-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,rock-chips.com,collabora.com,radxa.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	R_SPF_SOFTFAIL(0.00)[~all];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[rock-chips.com,none];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: AC74F61489
X-Rspamd-Action: no action

Hi Andrew,

On 1/22/2026 10:40 AM, Andrew Lunn wrote:
> On Thu, Jan 22, 2026 at 09:38:17AM +0800, Chaoyi Chen wrote:
>> Hi Andrew,
>>
>> On 1/21/2026 8:55 PM, Andrew Lunn wrote:
>>>> @@ -721,6 +719,7 @@ rgmii_phy0: ethernet-phy@1 {
>>>>  		reset-assert-us = <20000>;
>>>>  		reset-deassert-us = <100000>;
>>>>  		reset-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
>>>> +		tx-internal-delay-ps = <1950>;
>>>
>>> The PHY should add 2000ps, as required by the RGMII standard. The
>>> difference is so small there is no need for tx-internal-delay.
>>>
>>
>> Thank you for the clarification. I chose 1950 here because I find that
>> the MotorComm yt8xxx Ethernet PHY binding only offer the options of 
>> 1950 or 2100. 
>>
>>> In most cases, 'rmgii-id' should be sufficient, unless the PCB is
>>> badly designed.
>>>
>>
>> I suspect the ROCK 4D board might be an exception. Sebastian once
>> reported that it wouldn't work properly under "rgmii-id". Well, I'm
>> not sure what strategy to adopt in this case.
> 
> Please check the report. And also, check what the PHY is doing for
> delays if you don't specify the property. Is it defaulting to near
> 2000ps?
> 

It is RTL8211F PHY. The origin report is here:

https://lore.kernel.org/all/20250724-rk3576-rock4d-phy-timings-v1-1-1cdce2b4aca4@kernel.org/

The RTL8211F binding doesn't provide any indication of the default
delay value. I'll checking datasheet to see if it's mentioned there.

-- 
Best, 
Chaoyi

