Return-Path: <devicetree+bounces-316574-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lGlmLg2SQWoCsQkAu9opvQ
	(envelope-from <devicetree+bounces-316574-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 23:28:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9D76D5017
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 23:28:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PtObG81y;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316574-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316574-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 340A73008A58
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 21:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A400637F8D3;
	Sun, 28 Jun 2026 21:28:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 924E637998C;
	Sun, 28 Jun 2026 21:28:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782682102; cv=none; b=TuVOwUj5rDeYNbiAzFeew/tNi8FGHzgkqBfAiebK47rBWNafe547fy0KFC905UT2XG3aSQvIYXy7OPEeu5K+eOb4IkxMWtto+ydjVJixrzLiEwroC1Dj4By2A0guZqlqERz14Yla/2Fc65oDm8e9xkogw3uqUL+I0lYqogPG+no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782682102; c=relaxed/simple;
	bh=6If53qCEGeqmsHG9gVdv74cYCE5mGOq4nXDsgxI0n+I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PSo5fOtIfR5jwG09MsxJJYsfuQuZi52GoAj4TM/QtAx9zsPacesFKXIMf84zhQ/TQy0Bym8KsjeHSlunUBnIYXxD7cKF/MBH2vOoLgRLEmHS+07HJE8YSOFZfqZq+AvdRuZqxyy4vLM/U8vFPUkmw0bj26E0JgVl0Prj4bhnzY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtObG81y; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0DD51F000E9;
	Sun, 28 Jun 2026 21:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782682101;
	bh=vqH3G6bSUXbWuUW4MjlRz+BJtiNK6Vqkx5oRTX3uwE0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PtObG81ygO4gj0F2ttAElMa8CbpbH8ILPBs1pJkFT4i7AXr2CTt7E+Lx5i2JQHg2R
	 7QM0BocInM4JXFjIeDgBqWJptjlNee0muhVBU6Vi9UrrVu2NIJ6XwTqx143uMjljIT
	 VRNI0vFIEqreqgaIQ0qBNmkXdP2/7ScFlXMU7SofmNd0Wq35N6315Cb7UWmL2wqHsu
	 g+tVk1g487lL/YnMFnJEesjHCgVOX9orrBdJbcUn5YbmslqiPyS3evHy8D0tCZU6Ad
	 tBx58ZUgfptPHdRxEdJN3A5ha/i1uCEXqrSM5v4QAcVtSoyC79GFwT/dCQrvZ5nTlP
	 6kAMm629DWygQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/8] riscv: Add support for srmcfg CSR from Ssqosid
 extension
Reply-To: sashiko-reviews@lists.linux.dev
To: "Drew Fustini" <fustini@kernel.org>
Cc: linux-kernel@vger.kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, linux-rt-devel@lists.linux.dev
In-Reply-To: <20260628-dfustini-atl-sc-cbqri-dt-v3-3-c9c1342fe3cf@kernel.org>
References: <20260628-dfustini-atl-sc-cbqri-dt-v3-0-c9c1342fe3cf@kernel.org>
 <20260628-dfustini-atl-sc-cbqri-dt-v3-3-c9c1342fe3cf@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Jun 2026 21:28:20 +0000
Message-Id: <20260628212820.D0DD51F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316574-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:fustini@kernel.org,m:linux-kernel@vger.kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-rt-devel@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1C9D76D5017

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Failing cpuhp_setup_state skips PM notifier registration, silent=
ly breaking QoS IDs across system suspend/resume.
--

commit e3ff463a672a85eb328bf3048323a464af88e408
Author: Drew Fustini <fustini@kernel.org>

riscv: Add support for srmcfg CSR from Ssqosid extension

This commit adds support for the srmcfg CSR defined in the Ssqosid ISA
extension. It introduces a per-task thread field and a per-CPU cache to tra=
ck
Resource Control ID (RCID) and Monitoring Counter ID (MCID) fields, updating
the CSR during context switches.

Link: https://github.com/riscv/riscv-ssqosid/releases/tag/v1.0

[ ... ]

> diff --git a/arch/riscv/kernel/qos.c b/arch/riscv/kernel/qos.c
> new file mode 100644
> index 0000000000000..c8900d91996f2
> --- /dev/null
> +++ b/arch/riscv/kernel/qos.c

[ ... ]

> +static int __init riscv_srmcfg_init(void)
> +{
> +	int err;
> +
> +	if (!riscv_has_extension_unlikely(RISCV_ISA_EXT_SSQOSID))
> +		return 0;
> +
> +	/*
> +	 * cpuhp_setup_state() invokes the startup callback locally on every
> +	 * already-online CPU, so no separate seed loop is needed here.
> +	 */
> +	err =3D cpuhp_setup_state(CPUHP_AP_ONLINE_DYN, "riscv/srmcfg:online",
> +				riscv_srmcfg_reset_cache, riscv_srmcfg_reset_cache);
> +	if (err < 0) {
> +		pr_warn("srmcfg cpuhp registration failed (%d), cpus brought online af=
ter boot will not invalidate the CSR_SRMCFG cache\n",
> +			err);
> +		return err;

[Severity: Medium]
If cpuhp_setup_state() fails and returns early here, the
cpu_pm_register_notifier() registration is skipped, but the hardware
capability RISCV_ISA_EXT_SSQOSID remains active.

Because returning an error from an arch_initcall does not halt the boot
process, the QoS feature will remain active in the kernel.

If the PM notifier is not registered to invalidate the software cache upon
exit from low-power states, will subsequent context switches find a cache
match, mistakenly bypass the csr_write(), and execute tasks with the wrong
hardware QoS ID?

> +	}
> +
> +	cpu_pm_register_notifier(&riscv_srmcfg_pm_nb);
> +	return 0;
> +}
> +arch_initcall(riscv_srmcfg_init);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260628-dfustini-a=
tl-sc-cbqri-dt-v3-0-c9c1342fe3cf@kernel.org?part=3D3

