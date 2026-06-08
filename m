Return-Path: <devicetree+bounces-307970-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id INAMG5M7JmruTgIAu9opvQ
	(envelope-from <devicetree+bounces-307970-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 05:48:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC586527D4
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 05:48:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=rock-chips.com header.s=default header.b=MJ8kb8iu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307970-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307970-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=rock-chips.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3597301184C
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 03:45:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E5F734D397;
	Mon,  8 Jun 2026 03:45:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973177.qiye.163.com (mail-m1973177.qiye.163.com [220.197.31.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181DC2E7635;
	Mon,  8 Jun 2026 03:45:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780890321; cv=none; b=S80cYoIQMwg8brccTuTyYRq3DV3k2I89WfgQgm+O8JjURAoyltAOMMEFpkt77+mll+uehsBHijsxFfcSVCOIy+jtjsl9vydvnJoo2hhfLnPZYi395BQrnYVJ+tFKLvN0bTrEL8HqCJWEAHs2TY8X6vkApLlIPM7kQc2kXcHjhSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780890321; c=relaxed/simple;
	bh=R7koPCJR5KSkVYKZmDMeUJqY/SE/Q7pTA6LPG1+MQ5M=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=uXQrsFoUlpOs9vXDrOd6gbikWLGEtCOoOOGIQz0yzmXI+xM+FnSii76ejG3V16zd1TvNI06kvQu/dGrj4BeQF2Cqdxt8Kr4s+w5dvBFB4x+Z6aG4nOCSHDo5sMlJ5ix0902MyY++vXPF5AyyTnqBJI3nPZwbjqx7rck3lQ2YPpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=MJ8kb8iu; arc=none smtp.client-ip=220.197.31.77
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4171d1d3a;
	Mon, 8 Jun 2026 11:40:04 +0800 (GMT+08:00)
Message-ID: <42f1f39f-ab2b-4473-a82a-7ccefad41fcf@rock-chips.com>
Date: Mon, 8 Jun 2026 11:40:02 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v3 6/9] iommu/rockchip: Clear AUTO_GATING bit 1 on the
 RK356x v1 IOMMU
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
To: Midgy Balon <midgy971@gmail.com>
Cc: Simon Xue <xxm@rock-chips.com>, tomeu@tomeuvizoso.net,
 ogabbay@kernel.org, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20260604135255.62682-1-midgy971@gmail.com>
 <20260604135255.62682-7-midgy971@gmail.com>
 <e44b506e-e9d2-48e3-acea-ab28b7be9b37@rock-chips.com>
 <CA+GS1Y16++cztPxdUGLrPA73ENm4vJGFrjm-jP8r=8OQqcMJGA@mail.gmail.com>
 <0919ffcc-81c3-483a-a3ba-404b455c2040@rock-chips.com>
Content-Language: en-US
In-Reply-To: <0919ffcc-81c3-483a-a3ba-404b455c2040@rock-chips.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9ea550ec4803a7kunm2506f40117785a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDSkgdVhlMShlNQx4fGUMeS1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	JNS0pVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
	b=MJ8kb8iu3k9kUW5PdS39JNE44AdvDP+25KeKewqwvQ/RgHEyL5ihvn80S04I9v8iAvtmc4m/wGvYWr1o93LDIoaLW9JtrrfkctewvhkyIZG8jZ/HS/zECvUB/KflIKXaj175aJMBP6eJFRogrm+S1h77FT2JKEi6FVjAl0EYr2E=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Ybnh8S/ooqviaQ5QVM8foenQiJIP8ZWOyOXPrW9VaXY=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:midgy971@gmail.com,m:xxm@rock-chips.com,m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-307970-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,rock-chips.com:mid,rock-chips.com:from_mime,rock-chips.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DBC586527D4

On 6/8/2026 9:45 AM, Chaoyi Chen wrote:
> Hi Midgy,
> 
> On 6/8/2026 5:05 AM, Midgy Balon wrote:
>> Hi Chaoyi,
>>
>>> As I said, it is v2. Could you please try using the code below instead and
>>> see if it works?
>>> [ auto_gate = read(RK_MMU_AUTO_GATING); auto_gate |= BIT(31); write(...) ]
>>
>> Thanks -- that's clearly the right shape (read-modify-write, before paging is
>> enabled, keeping the reset value instead of my clobbering 0x2).
>>
>> I rebuilt v7.1-rc6 (with the rocket RK3568 series + your per-device-ops work)
>> using your bit-31 version and tested it on a ROCK 3B: the NPU IOMMU comes up and
>> services the NPU's DMA cleanly -- the NPU probes, attaches its domain, and runs
>> repeated conv submissions with no DMA_READ_ERROR and no page-walk stall. No
>> regression from the write.
>>
>> To be precise about what I can and can't show: I tested both ways on v7.1-rc6 --
>> with your bit-31 write, and on the reset value (0x3) -- and the NPU
>> IOMMU services
>> the NPU's reads with zero faults in both cases (no DMA_READ_ERROR, no page-walk
>> stall). So I don't have a failing baseline here that bit-31 visibly
>> fixes. Is the
>> AUTO_GATING write needed on current mainline, or only under conditions I'm not
>> reproducing (a particular traffic pattern / silicon rev)? I'll keep the patch in
>> your form unless you'd prefer to drop it.
>>
>> One question so I document it correctly: what does bit 31 of RK_MMU_AUTO_GATING
>> control on the v2 block -- is it a master "disable internal auto clock-gating"
>> for the page-table walker (i.e. so a TLB-miss walk's AXI master keeps its clock
>> to completion)? The RK3568 TRM I have doesn't cover the IOMMU registers, so a
>> one-line description would let me write an accurate comment.
>>
> 
> Glad to hear this works. Please refer to the commit below.
> 
> [0]: https://github.com/rockchip-linux/kernel/commit/7f8158fb41b5cc8e738aaeebc3637c50ebd74cae
> [1]: https://github.com/rockchip-linux/kernel/commit/6a355e5f9a2069a2309e240791bc3aad63b7324e
> 

It looks like RGA needs this patch too, and it has already been merged :).

https://lore.kernel.org/all/20260428-spu-iommudtefix-v2-1-f592f579e508@pengutronix.de/

-- 
Best, 
Chaoyi

