Return-Path: <devicetree+bounces-309366-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lF1ICAa+KGqpIwMAu9opvQ
	(envelope-from <devicetree+bounces-309366-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 03:29:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE47665369
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 03:29:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=rock-chips.com header.s=default header.b="JMc/acb2";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309366-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309366-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=rock-chips.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7ED20301BECB
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 01:29:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC85D263C8F;
	Wed, 10 Jun 2026 01:29:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973189.qiye.163.com (mail-m1973189.qiye.163.com [220.197.31.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C61FD2773E5;
	Wed, 10 Jun 2026 01:29:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781054976; cv=none; b=T6H/QX+M/Yq+gEKKKBjjOCoNfF9iUoLsOaAgPt495dss3S61R2s92FkwtRAumwvHqJ18AbkL3U1D0x+nomzfyeVXf614jpQSCczLCBoNbByPB006B3gm/LxBdnlQyb/Cj+E/leEDMIq+hlxJ0GRuKjdYZDnWbbp0WJ7e5Tb7GM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781054976; c=relaxed/simple;
	bh=fqfLMJY/chnkgj0kUutKJERe3LT9Zo86vEHEspY85FQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d3BzA4aZHnwggpT6IubtpwZzeWaqtPERl+i2jKSHwSWZXkLz58ftga9ohqnUaC4TUdk0h+Nr6cSF/N9h5z/V0FnA/IOsKusgLN3nCY9lA0DsEgeBByZdbGaDp3/iJgeAx+PtdH58lCW66kgXWF3UirM61cofbCeobenS30p2mzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=JMc/acb2; arc=none smtp.client-ip=220.197.31.89
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 41bfeee6e;
	Wed, 10 Jun 2026 09:14:04 +0800 (GMT+08:00)
Message-ID: <b05f7154-e85f-4207-80ae-f080282ba780@rock-chips.com>
Date: Wed, 10 Jun 2026 09:14:02 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v3 0/9] accel: rocket: Add RK3568 NPU support
To: Midgy Balon <midgy971@gmail.com>
Cc: tomeu@tomeuvizoso.net, ogabbay@kernel.org, heiko@sntech.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org,
 will@kernel.org, robin.murphy@arm.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
 linux-kernel@vger.kernel.org, Simon Xue <xxm@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>
References: <20260604135255.62682-1-midgy971@gmail.com>
 <3d99569e-9c3a-49d1-93fb-1335382523e9@rock-chips.com>
 <CA+GS1Y1s78PwN63X2YJoS8VEGp7CpTERo_K65yKs00U4VRAw4Q@mail.gmail.com>
 <e5058919-9485-4de5-8eea-331ebfc2987c@rock-chips.com>
 <CA+GS1Y3ysdWZ3qCq3ip_Pbw+v4LxHZd95aBo=jwB+orYaMBBNw@mail.gmail.com>
 <CA+GS1Y0kAM_XGLQuKPTphif2HcQg18ZXhd8RHHr2xPOEMCDvXA@mail.gmail.com>
 <bcedaff0-abf8-4585-a0ea-057062cd0411@rock-chips.com>
 <CA+GS1Y2-hRqpGgsknh+oOX+-uZ3DZtdekdP9viTP6a40zhhUhg@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CA+GS1Y2-hRqpGgsknh+oOX+-uZ3DZtdekdP9viTP6a40zhhUhg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9eaf17f7ca03a7kunm086ddc0f265e19
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaTkIaVhgaT0JNSExLGhoeQlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=JMc/acb2P5/j0WDgBoNYDEgabsrTG6UUouYskrbbIrI3+e1FIjV+cY3SVNG0i6tQBYa65TADufI1IrcgOpVVxNrpxG7VhU9HVuUDORdfhEobuPvJC/wPn9SI+ziLIe3dHBTZ3H2EfowPzM3i1R4/7UXBr2WSPouPPyabXZj+Hlc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=xT9TRXqNVQ4NrOZ7G30C+sE2EpbR+Jn/B+pjkgNcIuw=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:midgy971@gmail.com,m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:xxm@rock-chips.com,m:finley.xiao@rock-chips.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-309366-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0CE47665369

Hi Midgy,

On 6/9/2026 7:11 PM, Midgy Balon wrote:
> Hello Chaoyi,
> 
> You were right - building rocket as a module fixes it. Thanks for the pointer.
> 
> I rebuilt with CONFIG_DRM_ACCEL_ROCKET=m (everything else the same:
> need_regulator on
> the RK3568 NPU power domain via a DOMAIN_M_R variant, domain-supply =
> <&vdd_npu>, and the
> regulator-always-on workaround dropped). The board now boots cleanly
> and, more importantly,
> an NPU job submit no longer hangs: I ran the test workload five times
> with no RCU stall and
> no freeze.
> 
> So with rocket=m the need_regulator approach works on RK3568, and I'll
> keep it for v4
> (domain-supply + need_regulator, instead of marking vdd_npu
> always-on). rocket=m is the
> normal configuration anyway; my earlier hang came from building it =y
> in a self-contained
> image, so it probed in the initcalls (around 2 s) and the genpd ->
> I2C-PMIC regulator
> transition ran before the system was ready. As a module it loads from
> udev much later
> (~6.8 s here), after the I2C controller and regulator core are fully up.
> 
> On your question of when the device-link error is printed - it is at
> power-domain
> controller probe, not at the rocket probe:
> 
>   [    2.700618] vdd_npu: Bringing 500000uV into 825000-825000uV
>   [    2.749637] rockchip-pm-domain fdd90000.power-management:power-controller:
>                  Failed to create device link (0x180) with supplier 0-0020 for
>                  /power-management@fdd90000/power-controller/power-domain@6
>   [    2.945955] platform fde40000.npu: Adding to iommu group 3
>   ...
>   [    6.840374] rocket: loading out-of-tree module taints kernel.
>   [    6.877647] [drm] Initialized rocket 0.0.0 for rknn on minor 0
>   [    6.879950] rocket fde40000.npu: Rockchip NPU core 0 version: 0
> 
> So the device-link to the rk809 PMIC (0-0020) fails to form at ~2.75
> s, well before rocket
> loads at ~6.8 s. It is non-fatal here - the vdd_npu rail is brought up
> by the regulator core
> and all jobs run - and there is no "failed to get ack on domain npu"
> NoC warning this boot
> (the always-on kernel had one). The complete boot log is attached.
> 
> Two notes / one question:
> - This boot used fw_devlink=permissive on the command line. Is the
> "Failed to create device
>   link ... supplier 0-0020" at pmdomain probe expected/benign, or is
> there a clean way to make
>   it order correctly (so it also works without permissive, and a =y
> build wouldn't deadlock in
>   the initcalls)?

We encountered the same issue on the RK3588 NPU before. And it was
resolved with the following patch at that time.

https://lore.kernel.org/all/20251216055247.13150-1-rmxpzlb@gmail.com/

Please compare the differences in NPU pmdomain and DTS configuration
between the RK3568 and RK3588.

> - (The convolution output is still uniform zero-point / the job times
> out - that is the
>   separate NPU compute-completion issue, unrelated to the power-domain
> work. Finley, that is
>   the one I flagged earlier re PVTPLL/NoC.)
> 
> Kind regards,
> Midgy
> 

-- 
Best, 
Chaoyi

