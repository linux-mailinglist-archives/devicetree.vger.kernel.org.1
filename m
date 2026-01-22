Return-Path: <devicetree+bounces-258222-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCyiBHzRcWk+MgAAu9opvQ
	(envelope-from <devicetree+bounces-258222-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:27:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4FE627D5
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:27:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C63BE5469DE
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 07:27:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3E574611F4;
	Thu, 22 Jan 2026 07:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="e/1/N/h6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49208.qiye.163.com (mail-m49208.qiye.163.com [45.254.49.208])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC68433EB06;
	Thu, 22 Jan 2026 07:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.208
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769066837; cv=none; b=uVMDPh0NrVYWApqDN9KcdXG1CnF39nZPsUtBBUN0PtcqUMrFTazkDOGoPGyfM4GRcPGEuWVGJosVOW4eIjEPaC2t5+tQOXaW0wJ2aDLwOk+ZkH8Q5pFRMb5C6laZimjnziUksLdDzTyC+y1PUY+C92d29P5r22vp57hduReeb9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769066837; c=relaxed/simple;
	bh=e+HGaijuNfShAZ24U1rDRUxjbly2NpM3NgkOMJprROk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JVIPwdymHx0J/gRnXYJIzha7AYKdvtjj7or/dwbMczDa4R6I9T6yBWs6p54fA5Z16T7tRXBo2DDXHczGYYQzlJBWSGn8/BMkflCtWIy68gtHM13jfl27pvlx1rU3I0bJdVXZlZOHN6lbV0oy0pN7JZT2FDt28L7XNHvcI39G+AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=e/1/N/h6; arc=none smtp.client-ip=45.254.49.208
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 318437bb3;
	Thu, 22 Jan 2026 09:44:11 +0800 (GMT+08:00)
Message-ID: <e01451e1-78c8-4cd1-90a4-0f9ea38b1ab2@rock-chips.com>
Date: Thu, 22 Jan 2026 09:44:10 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Change gmac phy-mode to
 rgmii-id for rk3576 board
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
 <b25d6eb2-e105-4060-86fa-c1a06396ca92@lunn.ch>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <b25d6eb2-e105-4060-86fa-c1a06396ca92@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9be35f986103abkunm2cc02e0dab60f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk8fSVZCSx5CSU0ZTktMSEhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=e/1/N/h6wrnqA7VHwQI73Bv34Hxa4/97ZmtUIfQ98i+pN998XA6ELUU5l3UrHj0OtN2BVxucSQZnHneR/br2JWwSE3OPwK/ati9o9WrghKL5I6wF94M0lxfFLcSQGYTLNIWk/7d2Rk3YzVRq4Md5rNnxD8qN8B2H+YLJjd2afoM=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=xepetMOANOmDjgKxqlDl2/kYrljTtdNa/MYCm6NNH4g=;
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
	TAGGED_FROM(0.00)[bounces-258222-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 9F4FE627D5
X-Rspamd-Action: no action

Hi Andrew,

On 1/21/2026 8:57 PM, Andrew Lunn wrote:
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
> 
> Where did this formula come from? Is it in the datasheet.
> 

These are measured values obtained from hardware signal testing.
They are not documented in the TRM.

-- 
Best, 
Chaoyi

