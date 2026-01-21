Return-Path: <devicetree+bounces-257755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMLRHex7cGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:10:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3CF52A07
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:10:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 891234E19A0
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:10:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE20242B72B;
	Wed, 21 Jan 2026 07:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="e+4/XJNT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49225.qiye.163.com (mail-m49225.qiye.163.com [45.254.49.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1770944CAD4;
	Wed, 21 Jan 2026 07:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768979401; cv=none; b=bdgTWA6zruy4EySLVUskvSqduzQKcWI1HCU5vk6fgks8i87JLKMD1uW4uvHS1Zse88So6PXkqFIRt1p9xF4ng3D+Xzfm8UEyiRY8/8AtZVMWhv3Sx+YZkaUJP/IGy4ULIszLVyrbBNCt62NfXS5rjXJI3dhpyJEbdgv2HbOEWpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768979401; c=relaxed/simple;
	bh=1vQ9sAGctrnb4WD0RCFz8R0lYA+FkBxKy3D0DaH95xg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hkescJF0ugM0To+2VGP2qQ+fUEiLlUQR8LDkFXgDebvw8ZyrtDrTEFwrJc9NHjaQ9Efkez3wXExLcpnN/TalVP0Nk61clO/fwHOELOJE3WZw8j3XaFGzmkIvCFEsAxDWaWV1bpQjduNAc5MpUzSi2bzlJYk9GaPbZDmS0u/k44Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=e+4/XJNT; arc=none smtp.client-ip=45.254.49.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 316a0a540;
	Wed, 21 Jan 2026 14:54:26 +0800 (GMT+08:00)
Message-ID: <15a3e449-25e5-4387-963d-0dbda7be90f5@rock-chips.com>
Date: Wed, 21 Jan 2026 14:54:25 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Change gmac phy-mode to
 rgmii-id for rk3576 board
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
References: <20260121031548.402-1-kernel@airkyi.com> <aXBlBHZIPQ6xhykE@venus>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <aXBlBHZIPQ6xhykE@venus>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9bdf55465003abkunm4ed7deafb5040a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk1DSlZKTBkYTh1NShhMSEJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=e+4/XJNTG3dJj79/1WvOUqrCxW5tV9IdRs2FJ8fKvz7/CpOoAMKcucuuE31+iGLJehiJ/tT17MGbDgtNnOuAQcfgZZFQZk1LXHehCoDQT0kZvbMC8KVRj2Qj5m/dqc2D4uuEoph2HvA7bwF758kD1zoaqHrF+y9hRgk/UGy0pEA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=xzOVNeURzn/hBIJKnjKRrA+fpvW6DuQEnUIIkY5csqM=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257755-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[airkyi.com,kernel.org,sntech.de,gmail.com,rock-chips.com,collabora.com,radxa.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[rock-chips.com,none];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,rock-chips.com:email,rock-chips.com:dkim,rock-chips.com:mid]
X-Rspamd-Queue-Id: DC3CF52A07
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Sebastian, Andrew,

On 1/21/2026 1:51 PM, Sebastian Reichel wrote:
> Hi,
> 
> On Wed, Jan 21, 2026 at 11:15:45AM +0800, Chaoyi Chen wrote:
>> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>>
>> According to the description in the net documentation, PHY modes
>> "rgmii", "rgmii-rxid" and "rgmii-txid" modes require the clock signal
>> to be delayed on the PCB.
>>
>> The Rockchip platform has long used the above mentioned PHY modes and
>> private delay prop to describe the internal IO delay settings of the
>> chip, which is inconsistent with what is described in the documentation.
>>
>> Some background, for RK3576, you can assume that:
>>
>>         tx_delay_time(ns) = 0.0579 * delay_line_count + 0.105
>>
>> For example, tx_delay = <0x20> means:
>>
>>         time = 0.0579 * 0x20 + 0.105 ns = 1.9578 ns
>>
>> Recently, Andrew has often mentioned the problem of phy mode in board
>> level configuration. So let's start with the RK3576 to modify this.
>>
>> Please test this series of patches, thanks.
> 
> The RTL8211F PHY driver does not use the "tx-internal-delay-ps"
> property, which would require using phy_get_internal_delay(). Also
> the hardware only seems to support enabling/disabling a fixed delay
> of 2ns, so it cannot be implemented as far as I can tell. So unless
> I missed something, this series makes no sense as-is.
> 
> My suggestion would be to add support for <rx/tx>-internal-delay-ps
> to the Rockchip GMAC driver by introducing a new rk_gmac_ops
> entry to translate the standard properties into register values:
> 
> int rk3576_delay_conversion(unsigned int delay_ps) {
>     return (delay_ps*10 - 1050) / 579;
> }
> 
> That allows using standard properties in DT instead of vendor
> specific "rx_delay"/"tx_delay". This results in a much better board
> description and shows how far boards derive from the the standard
> 2ns (which can use rgmii-id without any extra delay specification).
> 

Oh, your approach was also my initial thought.

I first asked whether it would be more appropriate to implement this
in the PHY or in the GMAC, and Andrew told me it should preferably be 
done in the PHY. But I'm not sure whether all PHYs support this
operation.

Andrew, would it be possible to implement this in the GMAC for cases
where the PHY does not support it? Thanks.

-- 
Best, 
Chaoyi

