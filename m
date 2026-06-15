Return-Path: <devicetree+bounces-311976-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2ysrIK8CMGrzLgUAu9opvQ
	(envelope-from <devicetree+bounces-311976-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 15:48:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CF8686DBF
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 15:48:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=rock-chips.com header.s=default header.b=kQLJJ9H+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311976-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311976-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=rock-chips.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 08CA3303BB2E
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 13:48:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CCC63F44FC;
	Mon, 15 Jun 2026 13:47:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15595.qiye.163.com (mail-m15595.qiye.163.com [101.71.155.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2B23F1ACE
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 13:47:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781531278; cv=none; b=GqDkSwW/vJgmtD0dWmMYYHpmYwhtPnf1vvYL9Ry8kMYureWkgtBU0d/p1JYpKqSDbXptb80/q6gx4lOZTwPPuk8+USXWLRWO474QwXKcxWX9XS4/NdvBrnbHnamty1S445QT8KeNOCtVgITDMhkBduEkvG2+r2dKU2UF2gioSPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781531278; c=relaxed/simple;
	bh=3KLwD7Dv6Za3eMvYy19EoEMa/3QaEc79TOSa6zxNAcU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BQI8wE24T+TRbpBNerrLyLPgKRSTpn0+FPCs52PUuYR+MAG/MA3zZIAYlft3hK0+gxqnImUUTIgjdFKjNipyZ27nCZ5dow/FwauWLbE9vc1YoS4bEdh1IxX9KhAAdvfkL0bg30MRUCQQYGQSzU+0JS/GFo8W382GR6VLNgIUKXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=kQLJJ9H+; arc=none smtp.client-ip=101.71.155.95
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4271bc926;
	Mon, 15 Jun 2026 21:32:08 +0800 (GMT+08:00)
Message-ID: <a007b499-fbb8-4fcd-b1f2-c1ab3d6a25cb@rock-chips.com>
Date: Mon, 15 Jun 2026 21:32:08 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 0/3] Add eDP support for RK3576
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: sebastian.reichel@collabora.com, nicolas.frattaroli@collabora.com,
 alchark@gmail.com, detlev.casanova@collabora.com,
 cristian.ciocaltea@collabora.com, michael.riesch@collabora.com,
 andy.yan@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260605022305.3058853-1-damon.ding@rock-chips.com>
 <cd1f968a-2e1b-434f-a331-a60cd8740032@rock-chips.com>
 <3213683.CbtlEUcBR6@diego>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <3213683.CbtlEUcBR6@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9ecb7b7f2103a8kunm47dcead08c7d
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaGhgaVkkfTENMHx8ZTUIZGVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQkxVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=kQLJJ9H+1CSZ65yj536jGKbv3YtDkqEYwaL8cLFzBsKAVvf5EgoKPQYIDwsH0Vluy6JvkCJCyy7vFNAbev/CCPktgYlpwkgMnRPkcB0axcRz+k/2cMGrdAq8AHfVO8QwvozLgKwDgb0CZah389/3CPr5uM2Jz8CfVXX4AwRg2Qw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=IEDSeKt6aBa3YjGZKrTBnH10OnTxt5lTag0LZBn0RGM=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311976-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:sebastian.reichel@collabora.com,m:nicolas.frattaroli@collabora.com,m:alchark@gmail.com,m:detlev.casanova@collabora.com,m:cristian.ciocaltea@collabora.com,m:michael.riesch@collabora.com,m:andy.yan@rock-chips.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[collabora.com,gmail.com,rock-chips.com,vger.kernel.org,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 97CF8686DBF

On 6/15/2026 9:01 PM, Heiko Stübner wrote:
> Hi Damon,
> 
> Am Montag, 15. Juni 2026, 14:33:03 Mitteleuropäische Sommerzeit schrieb Damon Ding:
>> Gentle ping on this patch series.
> 
> Linux 7.1 was released yesterday, so we're in the merge-window now.
> (And the 5th of june was shortly before -rc7, so too late for 7.2)
> 
> So I'll pick those up after the merge window end in 2 weeks.
> 
> 

Thanks for the heads-up. Got it. ;-)

Best regards,
Damon

>>
>> On 6/5/2026 10:23 AM, Damon Ding wrote:
>>> Picked from:
>>> https://lore.kernel.org/all/20260601065100.1103873-1-damon.ding@rock-chips.com/
>>>
>>> Patch 1-2 are to add missing clock "hclk" for RK3588 eDP nodes.
>>> Patch 3 is to add the RK3576 eDP node.
>>>
>>> Damon Ding (3):
>>>     arm64: dts: rockchip: Add missing hclk for RK3588 eDP0
>>>     arm64: dts: rockchip: Add missing hclk for RK3588 eDP1
>>>     arm64: dts: rockchip: Add eDP node for RK3576
>>>
>>>    arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 28 +++++++++++++++++++
>>>    arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  4 +--
>>>    .../arm64/boot/dts/rockchip/rk3588-extra.dtsi |  4 +--
>>>    3 files changed, 32 insertions(+), 4 deletions(-)
>>>
>>> ---
>>>
>>> Changes in v2:
>>> - Split out separate patches to add the "hclk" clock reference.
>>> - Split out separate patches to enable the "hclk" clock.
>>> - Add Reviewed-by tag.
>>>
>>> Changes in v3:
>>> - Add a patch to expand descriptions for clocks of the eDP node.
>>> - Add Reviewed-by tag.
>>>
>>> Changes in v4:
>>> - Modify commit msg.
>>>
>>> Changes in v5:
>>> - Enforce the correct third clock name on a per-compatible basis.
>>> - Modify the commit msg simultaneously.
>>> - Add Acked-by tag.
>>>
>>> Changes in v6:
>>> - Expand more detail commit msg about using hclk instead of grf clock.
>>>
>>> Changes in v7:
>>> - List all valid clock names at the top level, and constrain the clock
>>>     count for each platform with minItems/maxItems in allOf.
>>>
>>> Changes in v8:
>>> - Fix indentation to 10 for enum in clock-names property.
>>>
>>> Changes in v9:
>>> - Restore the explicit clock-names for RK3399 and RK3588 eDP dt-bindings.
>>>
>>> Changes in v10:
>>> - Use automatic cleanup to fix OF node reference leak reported by
>>>     Sashiko.
>>>
>>> Changes in v11:
>>> - Pick and rebase DT related patches.
>>>
>>
>>
> 
> 
> 
> 
> 
> 


