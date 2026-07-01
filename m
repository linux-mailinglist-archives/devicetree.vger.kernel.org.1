Return-Path: <devicetree+bounces-318712-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id STZvIlAqRWpy8AoAu9opvQ
	(envelope-from <devicetree+bounces-318712-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:55:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F22246EF07A
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:55:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Lb0CSpzB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318712-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318712-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A8A03301E778
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 14:37:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B329E34BA5B;
	Wed,  1 Jul 2026 14:37:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA9F2D0C89;
	Wed,  1 Jul 2026 14:37:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782916662; cv=none; b=gSA4SxBLSichtR0hhUXmSfETPUXq1TCyowgfwliYJjO0gxgHFdSEH4ZJ4LNJlUXrWq/aquLbn07EzNp+DpiYuB3ivBZjRijYheNk+Kaifizsw9Cxbb6xox0WzkywHyyc+CKh9X1pmAKILe4zTdL2hFEFOhnISbh42J7LDLzWbCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782916662; c=relaxed/simple;
	bh=q7YnJoFgZYK136rRY4DZuAs3QWIZAxCw6TpuCeVhNgc=;
	h=Date:Message-ID:From:To:Cc:Subject:In-Reply-To:References:
	 MIME-Version:Content-Type; b=j2zF0OCUpBm/RUNJtmh6E78e9/CnYfby1kiA5KgOyV/PenLrcYesJxWtukz35dbgLGQolnR7nGJtgtlgNspDL622c2KEpiU0mIZr7uzvVROgLe6S054xPwRE/2xmzAzNxUtcvIGGwpXtJJRVYySPGHZszwut2S4AiwsUDdbH9ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lb0CSpzB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DF3F1F00A3A;
	Wed,  1 Jul 2026 14:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782916661;
	bh=ih8VI3akqdV46XsDgt7LH8Bzy+tTYmREoOv79UKcJro=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Lb0CSpzBNMtYKCOss+E8Zo7rqOU/BCoor3uQEMe5WmqY2V1FabHF1Hm5ivjAoHwUZ
	 n4RaO0/1Jw6OnT0c5FKuDuabNnLydlJw/7DIJA52HG53hCLHgi49zRdwQ5a2WpE3M3
	 Ti2CbcOTrJniLipt9H92uU7Aqd17PCtxO5w2koBvHdAsrlEycJZDHQRwuoJT8ko6ao
	 FrO8Br5+oluj8TF7yq2V9lUbBYs1ajdZ7QeGFqTAiSx59EQ4a5XcaoZk+ATT52QtzQ
	 xVYi1dWUcWEBOwOe6OrpvX/Tb5h2hkCEQRdUP1E/J5OHmw1JndmU5UQlOEfGb4tg9E
	 E4r6QX9OligyQ==
Received: from sofa.misterjones.org ([185.219.108.64] helo=goblin-girl.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <maz@kernel.org>)
	id 1wew4I-00000000MEg-3kwO;
	Wed, 01 Jul 2026 14:37:38 +0000
Date: Wed, 01 Jul 2026 15:37:38 +0100
Message-ID: <86tsqipyh9.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: linux-arm-kernel@lists.infradead.org,	linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org,	devicetree@vger.kernel.org,
	"linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,	Lorenzo
 Pieralisi <lpieralisi@kernel.org>,	Hanjun Guo <guohanjun@huawei.com>,
	Sudeep Holla <sudeep.holla@kernel.org>,	Catalin Marinas
 <catalin.marinas@arm.com>,	Will Deacon <will@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,	Mark Rutland
 <mark.rutland@arm.com>,	Daniel Lezcano <daniel.lezcano@kernel.org>,	Thomas
 Gleixner <tglx@kernel.org>,	Rob Herring <robh@kernel.org>,	Krzysztof
 Kozlowski <krzk+dt@kernel.org>,	Conor Dooley <conor+dt@kernel.org>,	Chen-Yu
 Tsai <wens@kernel.org>,	Jernej Skrabec <jernej.skrabec@gmail.com>,	Samuel
 Holland <samuel@sholland.org>,	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,	Ge Gordon
 <gordon.ge@bst.ai>,	BST Linux Kernel Upstream Group
 <bst-upstream@bstai.top>,	Jesper Nilsson <jesper.nilsson@axis.com>,	Lars
 Persson <lars.persson@axis.com>,	Alim Akhtar <alim.akhtar@samsung.com>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,	Pengutronix Kernel Team
 <kernel@pengutronix.de>,	Fabio Estevam <festevam@gmail.com>,	Dinh Nguyen
 <dinguyen@kernel.org>,	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Thierry Reding <thierry.reding@kernel.org>,	Bjorn Andersson
 <andersson@kernel.org>,	Konrad Dybcio <konradybcio@kernel.org>,	Andreas
 =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>,	=?UTF-8?B?Ill1LUNodW4gTGlu?=
 =?UTF-8?B?IFvmnpfnpZDlkJtdIg==?= <eleanor.lin@realtek.com>,	Heiko Stuebner
 <heiko@sntech.de>,	Shawn Lin <shawn.lin@rock-chips.com>,	Orson Zhai
 <orsonzhai@gmail.com>,	Baolin Wang <baolin.wang@linux.alibaba.com>,	Michal
 Simek <michal.simek@amd.com>
Subject: Re: [PATCH v3 12/17] arm64: dts: nvidia: Add EL2 virtual timer interrupt
In-Reply-To: <00da7fd4-68a4-4a92-b4a1-600b5a2b72f4@nvidia.com>
References: <20260523140242.586031-1-maz@kernel.org>
	<20260523140242.586031-13-maz@kernel.org>
	<3c714ae3-8f62-4785-9f61-ba9899fd70d8@nvidia.com>
	<86wlvgpacz.wl-maz@kernel.org>
	<00da7fd4-68a4-4a92-b4a1-600b5a2b72f4@nvidia.com>
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
X-SA-Exim-Rcpt-To: jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, lpieralisi@kernel.org, guohanjun@huawei.com, sudeep.holla@kernel.org, catalin.marinas@arm.com, will@kernel.org, rafael@kernel.org, mark.rutland@arm.com, daniel.lezcano@kernel.org, tglx@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, wens@kernel.org, jernej.skrabec@gmail.com, samuel@sholland.org, neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, martin.blumenstingl@googlemail.com, gordon.ge@bst.ai, bst-upstream@bstai.top, jesper.nilsson@axis.com, lars.persson@axis.com, alim.akhtar@samsung.com, ivo.ivanov.ivanov1@gmail.com, Frank.Li@nxp.com, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, dinguyen@kernel.org, matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, thierry.reding@kernel.org, andersson@kernel.org, konradybcio@k
 ernel.org, afaerber@suse.de, eleanor.lin@realtek.com, heiko@sntech.de, shawn.lin@rock-chips.com, orsonzhai@gmail.com, baolin.wang@linux.alibaba.com, michal.simek@amd.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,kernel.org,huawei.com,arm.com,gmail.com,sholland.org,linaro.org,baylibre.com,googlemail.com,bst.ai,bstai.top,axis.com,samsung.com,nxp.com,pengutronix.de,collabora.com,suse.de,realtek.com,sntech.de,rock-chips.com,linux.alibaba.com,amd.com];
	TAGGED_FROM(0.00)[bounces-318712-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[48];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[maz@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jonathanh@nvidia.com,m:linux-arm-kernel@lists.infradead.org,m:linux-acpi@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-tegra@vger.kernel.org,m:lpieralisi@kernel.org,m:guohanjun@huawei.com,m:sudeep.holla@kernel.org,m:catalin.marinas@arm.com,m:will@kernel.org,m:rafael@kernel.org,m:mark.rutland@arm.com,m:daniel.lezcano@kernel.org,m:tglx@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:neil.armstrong@linaro.org,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:gordon.ge@bst.ai,m:bst-upstream@bstai.top,m:jesper.nilsson@axis.com,m:lars.persson@axis.com,m:alim.akhtar@samsung.com,m:ivo.ivanov.ivanov1@gmail.com,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:dinguyen@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:thierry.reding@k
 ernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:afaerber@suse.de,m:eleanor.lin@realtek.com,m:heiko@sntech.de,m:shawn.lin@rock-chips.com,m:orsonzhai@gmail.com,m:baolin.wang@linux.alibaba.com,m:michal.simek@amd.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,m:martinblumenstingl@gmail.com,m:ivoivanovivanov1@gmail.com,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maz@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,nvidia.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F22246EF07A

On Tue, 30 Jun 2026 13:09:20 +0100,
Jon Hunter <jonathanh@nvidia.com> wrote:
> 
> Hi Marc,
> 
> On 30/06/2026 11:54, Marc Zyngier wrote:
> 
> ...
> 
> >> Sorry for the delay. I gave this a test because I observed the warning
> >> that was added on the Tegra194 and Tegra234 platforms. This change
> >> fixes the warning for Tegra234, but on Tegra194 the platforms I tested
> >> hang on boot. It appears to be similar to the issue that Marek saw on
> >> his platforms and so I am wondering if Tegra194 also doesn't have this
> >> wired up?
> > 
> > I think you are in a better position than me to find out. It also
> > could be a firmware issue not making the PPI a Group-1 interrupt, and
> > therefore not allow Linux to configure the interrupt.
> 
> Yes absolutely. I will see what I can find out.
> 
> >> Was there any resolution to the issue reported by Marek?
> >> 
> >> FYI, the Tegra194 SoC has the 'NVIDIA Carmel ARM v8.2' CPUs [0].
> > 
> > There is no resolution so far. Florian was going to check what the
> > deal is with the Broadcom-related systems, but hasn't come back with
> > an answer yet.
> > 
> > The possibilities are as follows:
> > 
> > - remove the interrupt for the EL2 virtual timer and live with the
> >    warning
> > 
> > - add a patch such as [1], which should document the reason why this
> >    is now working (and fallback to the EL2 physical timer)
> > 
> > I'm happy either way, as long as we know exactly what we are dealing
> > with on each affected platform.
> 
> I would like to get the warning fixed for Tegra234. Do you want to
> split that part out of your patch and then I can test and we can at
> least fix for that device while I see whats up with Tegra194?

Getting the warning fixed for Tegra234 is probably limited to fixing
the DT, Feel free to lift that from my original patch and slap your
name on it.

Also consider fixing most of the PPI interrupt specifiers while you're
at it, because aside from the PMU, they are all awfully wrong.

Thanks,

	M.

-- 
Without deviation from the norm, progress is not possible.

