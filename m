Return-Path: <devicetree+bounces-309012-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oqQbD6IFKGrV7QIAu9opvQ
	(envelope-from <devicetree+bounces-309012-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 14:22:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 658E0660016
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 14:22:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=U5Iy8ByX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309012-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309012-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61E7530AF113
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 12:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA790413626;
	Tue,  9 Jun 2026 12:15:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0007413620;
	Tue,  9 Jun 2026 12:15:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781007352; cv=none; b=EW1kTPX8/8q2T6JAuCyQf6xwLc2KUgiVfKF/sLqq1nHBms942V7leOd2vOW0DavwyRhMOMjJIkJZp3ScthPcP3FUr/QS0cM26hRXK0K9G7D3IvfST1nXj0sg5EBBs0HLs53Lsk7SJ7RqnqXwzXpKVWL/pvfVF9oEeu6TgBeRj20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781007352; c=relaxed/simple;
	bh=k7+4ZqZBPFaOAX9D4tiT4BTkzq2pD3Z7B9cTrBetr00=;
	h=Date:Message-ID:From:To:Cc:Subject:In-Reply-To:References:
	 MIME-Version:Content-Type; b=o10VVWdR5MDRsgjZMmbpji2vdIv4Zrts9pjZB89L+TO5/VxLl/GpUgVWUsbGbczeE0+Wu3UuM5NsHEr/WyD13VkXXn+3kJKIAJwBZZOYO7DkPQwE091wXDupTLYmnGnbGJFZmSwF1A47ot8Ve01r777yfY4osm9b0IKCX2qV2jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5Iy8ByX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3ECB21F00893;
	Tue,  9 Jun 2026 12:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781007350;
	bh=O02wNSMoFIM0rygGZbIsJGDCRWP98Rp09cGml3zivWA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=U5Iy8ByXoOEv4Es+WJDoGvQezhugFYHIhxmHfowiy+fGi1olC7g8B1P5lmLYKyLWR
	 l6JqBulAaFuwOu1R7My3lyCXO2svWxxnn/foPSVaw+MHWryDVv3EJJyRCti+vxbM4/
	 nb+aKfa8TlP1eUI9wLq4IleCmyDyvNcw+DMWGd8JAvhiYr8OyDR2CDzx6qST5qNYYQ
	 SezlBJT7GI/PR2a9/coHGVHLlzP933O5IYBhtANKSu3ciPiFLOkRPGEJG8N/ScOUrk
	 5gyTi7RI/Dq29WNn6GqsS1FJldRmHBRjwHyR6Z+0ue6g8NRULZymopbT9TR45z5kOF
	 eARDeHSgzv56Q==
Received: from sofa.misterjones.org ([185.219.108.64] helo=goblin-girl.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <maz@kernel.org>)
	id 1wWvMx-0000000Au0g-2IwC;
	Tue, 09 Jun 2026 12:15:47 +0000
Date: Tue, 09 Jun 2026 13:15:46 +0100
Message-ID: <86cxxzucy5.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org,	linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org,	devicetree@vger.kernel.org,	Lorenzo Pieralisi
 <lpieralisi@kernel.org>,	Hanjun Guo <guohanjun@huawei.com>,	Sudeep Holla
 <sudeep.holla@kernel.org>,	Catalin Marinas <catalin.marinas@arm.com>,	Will
	Deacon <will@kernel.org>,	"Rafael J. Wysocki" <rafael@kernel.org>,	Mark
	Rutland <mark.rutland@arm.com>,	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Thomas Gleixner <tglx@kernel.org>,	Rob Herring <robh@kernel.org>,
	Krzysztof	Kozlowski <krzk+dt@kernel.org>,	Conor Dooley
 <conor+dt@kernel.org>,	Chen-Yu	Tsai <wens@kernel.org>,	Jernej Skrabec
 <jernej.skrabec@gmail.com>,	Samuel	Holland <samuel@sholland.org>,	Neil
 Armstrong <neil.armstrong@linaro.org>,	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,	Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>,	Ge Gordon <gordon.ge@bst.ai>,	BST
 Linux Kernel Upstream Group <bst-upstream@bstai.top>,	Jesper Nilsson
 <jesper.nilsson@axis.com>,	Lars	Persson <lars.persson@axis.com>,	Alim
 Akhtar <alim.akhtar@samsung.com>,	Ivaylo Ivanov
 <ivo.ivanov.ivanov1@gmail.com>,	Frank Li <Frank.Li@nxp.com>,	Sascha Hauer
 <s.hauer@pengutronix.de>,	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,	Dinh Nguyen <dinguyen@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,	AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>,	Thierry Reding
 <thierry.reding@kernel.org>,	Jonathan Hunter <jonathanh@nvidia.com>,	Bjorn
 Andersson <andersson@kernel.org>,	Konrad	Dybcio <konradybcio@kernel.org>,
	Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>,	=?UTF-8?B?Ill1LUNo?=
 =?UTF-8?B?dW4gTGluIFvmnpfnpZDlkJtdIg==?= <eleanor.lin@realtek.com>,	Heiko
 Stuebner <heiko@sntech.de>,	Shawn Lin <shawn.lin@rock-chips.com>,	Orson
 Zhai <orsonzhai@gmail.com>,	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Michal Simek <michal.simek@amd.com>,	Florian Fainelli
 <florian.fainelli@broadcom.com>
Subject: Re: [PATCH v3 03/17] clocksource/drivers/arm_arch_timer: Default to EL2 virtual timer when running VHE
In-Reply-To: <658bffa9-bd70-4b62-ac03-505822ba0be9@samsung.com>
References: <20260523140242.586031-1-maz@kernel.org>
	<20260523140242.586031-4-maz@kernel.org>
	<CGME20260609100324eucas1p146c5ffe86a104677143baaeca1d3feba@eucas1p1.samsung.com>
	<ea15cce1-b393-43f6-8d58-3d6f90f0c0cd@samsung.com>
	<86ik7st3nh.wl-maz@kernel.org>
	<193cc406-0834-4dee-9b4a-02cdfd85e05c@samsung.com>
	<86ecigt2hq.wl-maz@kernel.org>
	<658bffa9-bd70-4b62-ac03-505822ba0be9@samsung.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/30.1
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: m.szyprowski@samsung.com, linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, lpieralisi@kernel.org, guohanjun@huawei.com, sudeep.holla@kernel.org, catalin.marinas@arm.com, will@kernel.org, rafael@kernel.org, mark.rutland@arm.com, daniel.lezcano@kernel.org, tglx@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, wens@kernel.org, jernej.skrabec@gmail.com, samuel@sholland.org, neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, martin.blumenstingl@googlemail.com, gordon.ge@bst.ai, bst-upstream@bstai.top, jesper.nilsson@axis.com, lars.persson@axis.com, alim.akhtar@samsung.com, ivo.ivanov.ivanov1@gmail.com, Frank.Li@nxp.com, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, dinguyen@kernel.org, matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, thierry.reding@kernel.org, jonathanh@nvidia.com, andersson@kernel.org, konradybcio@kern
 el.org, afaerber@suse.de, eleanor.lin@realtek.com, heiko@sntech.de, shawn.lin@rock-chips.com, orsonzhai@gmail.com, baolin.wang@linux.alibaba.com, michal.simek@amd.com, florian.fainelli@broadcom.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,kernel.org,huawei.com,arm.com,gmail.com,sholland.org,linaro.org,baylibre.com,googlemail.com,bst.ai,bstai.top,axis.com,samsung.com,nxp.com,pengutronix.de,collabora.com,nvidia.com,suse.de,realtek.com,sntech.de,rock-chips.com,linux.alibaba.com,amd.com,broadcom.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:m.szyprowski@samsung.com,m:linux-arm-kernel@lists.infradead.org,m:linux-acpi@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:lpieralisi@kernel.org,m:guohanjun@huawei.com,m:sudeep.holla@kernel.org,m:catalin.marinas@arm.com,m:will@kernel.org,m:rafael@kernel.org,m:mark.rutland@arm.com,m:daniel.lezcano@kernel.org,m:tglx@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:neil.armstrong@linaro.org,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:gordon.ge@bst.ai,m:bst-upstream@bstai.top,m:jesper.nilsson@axis.com,m:lars.persson@axis.com,m:alim.akhtar@samsung.com,m:ivo.ivanov.ivanov1@gmail.com,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:dinguyen@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:thierry.reding@kernel.org,m:jonathanh@nvid
 ia.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:afaerber@suse.de,m:eleanor.lin@realtek.com,m:heiko@sntech.de,m:shawn.lin@rock-chips.com,m:orsonzhai@gmail.com,m:baolin.wang@linux.alibaba.com,m:michal.simek@amd.com,m:florian.fainelli@broadcom.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,m:martinblumenstingl@gmail.com,m:ivoivanovivanov1@gmail.com,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-309012-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[maz@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[49];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maz@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 658E0660016

On Tue, 09 Jun 2026 12:32:24 +0100,
Marek Szyprowski <m.szyprowski@samsung.com> wrote:
> 
> On 09.06.2026 12:46, Marc Zyngier wrote:
> > On Tue, 09 Jun 2026 11:35:24 +0100,
> > Marek Szyprowski <m.szyprowski@samsung.com> wrote:
> >> On 09.06.2026 12:21, Marc Zyngier wrote:
> >>> On Tue, 09 Jun 2026 11:03:21 +0100,
> >>> Marek Szyprowski <m.szyprowski@samsung.com> wrote:
> >>>> On 23.05.2026 16:02, Marc Zyngier wrote:
> >>>>> When running with at EL2 with VHE enabled, the architecture provides
> >>>>> two EL2 timer/counters, dubbed physical and virtual. Apart from their
> >>>>> names, they are strictly identical.
> >>>>>
> >>>>> However, they don't get virtualised the same way, specially when
> >>>>> it comes to adding arbitrary offsets to the timers. When running as
> >>>>> a guest, the host CNTVOFF_EL2 does apply to the guest's view of
> >>>>> CNTHV*_El2. This is not true for CNTPOFF_EL2 and CNTHP*_EL2, as
> >>>>> the architecture is broken past the first level of virtualisation
> >>>>> (it lacks some essential mechanisms to be usable, despite what
> >>>>> the ARM ARM pretends).
> >>>>>
> >>>>> This means that when running as a L2 guest hypervisor, using the
> >>>>> physical timer results in traps to L0, which are then forwarded to
> >>>>> L1 in order to emulate the offset, leading to even worse performance
> >>>>> due to massive trap amplification (the combination of register and
> >>>>> ERET trapping is absolutely lethal).
> >>>>>
> >>>>> Switch the arch timer code to using the virtual timer when running
> >>>>> in VHE by default, only using the physical timer if the interrupt
> >>>>> is not correctly described in the firmware tables (which seems
> >>>>> to be an unfortunately common case). This comes as no impact on
> >>>>> bare-metal, and slightly improves the situation in the virtualised
> >>>>> case.
> >>>>>
> >>>>> Signed-off-by: Marc Zyngier <maz@kernel.org>
> >>>> This patch landed recently in linux-next as commit d87773de9efe
> >>>> ("clocksource/drivers/arm_arch_timer: Default to EL2 virtual timer when
> >>>> running VHE"). In my tests I found that it breaks booting of RaspberryPi5
> >>>> board. Reverting it on top of linux-next fixes the issue. Here is a boot
> >>>> log:
> >>> Huh.
> >>>
> >>> [...]
> >>>
> >>>> arch_timer: cp15 timer running at 54.00MHz (hyp-virt).
> >>>> clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0xc743ce346, max_idle_ns: 440795203123 ns
> >>>> sched_clock: 56 bits at 54MHz, resolution 18ns, wraps every 4398046511102ns
> >>> The interrupt appears to be advertised in the DT, but doesn't seem to
> >>> fire. That's obviously not going to end well. My suspicion is that
> >>> either the interrupt isn't wired (that'd be hilariously abd), or is
> >>> left as Group-0 by the firmware (copy-paste from RPi4).
> >>>
> >>> Can you try the following hack and let me know if the kernel shouts at
> >>> you?
> >>>
> >>> Thanks,
> >>>
> >>> 	M.
> >>>
> >>> diff --git a/drivers/irqchip/irq-gic.c b/drivers/irqchip/irq-gic.c
> >>> index ec70c84e9f91d..d05791e6cc0db 100644
> >>> --- a/drivers/irqchip/irq-gic.c
> >>> +++ b/drivers/irqchip/irq-gic.c
> >>> @@ -213,6 +213,7 @@ static void gic_eoimode1_mask_irq(struct irq_data *d)
> >>>  static void gic_unmask_irq(struct irq_data *d)
> >>>  {
> >>>  	gic_poke_irq(d, GIC_DIST_ENABLE_SET);
> >>> +	WARN_ON(!gic_peek_irq(d, GIC_DIST_ENABLE_SET));
> >>>  }
> >>>  
> >>>  static void gic_eoi_irq(struct irq_data *d)
> >> I've applied this change, but it doesn't trigger any warning in the boot log.
> > [+ Florian]
> >
> > Huh. So that really points at the timer not being wired into the GIC,
> > Samsung style... Can you confirm that removing the EL2 virtual timer
> > from the DT results in a booting machine?
> 
> With the following diff the board boots again:

OK, so it really is the EL2 virtual timer PPI that is misbehaving.
Let's see what Florian comes up with on the status of this interrupt.

Thanks,

	M.

-- 
Without deviation from the norm, progress is not possible.

