Return-Path: <devicetree+bounces-297821-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LWnIEQ9BmqmggIAu9opvQ
	(envelope-from <devicetree+bounces-297821-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 23:23:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1E8547031
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 23:23:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 547CC30173AE
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4188F3A7F68;
	Thu, 14 May 2026 21:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltfgtHWY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0CB397323
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 21:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778793793; cv=none; b=rrYKSMfXGe6i6bixcKSc9axrwk0Ck+TqvwZT3qp3547Td7ooxHn/XP7QxrK2/x6I5Or7nMvPZsKR+gCsLPvHOLndSw1tm4l8h8iUNWu8qjKZVkKD6LC4WvP/Gh0ujUknytkhPVQFW/hxXyEEg8/ZDOP47nMEhFzFn1CTsFB5TOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778793793; c=relaxed/simple;
	bh=QSJ68tQufrPqJTcM1WMEZGWFTD6Vrfn/cYLZrF1A7os=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HsTBqvAM+0YE991GfbEUqvnApNZJthZXpGCK6mOIYZUNBCf6d5L5+P0wUud1CLIJhihwAJzZhRjpdxcbc94ZN0B+TnS53xWu7hY2CgsZf1oI2f92Hx2B6vyKVSAxOw3uan82Gf/XINZrfebM0QdgwUEmpi0A7DJ3dOWjhv8f8RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltfgtHWY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC29AC2BCB3;
	Thu, 14 May 2026 21:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778793793;
	bh=QSJ68tQufrPqJTcM1WMEZGWFTD6Vrfn/cYLZrF1A7os=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=ltfgtHWYHHJrx1HXhUHeCsWRyrq1fD4llkzYY2CxfwmTgtKt6h6gkAqdxEPdIZLHk
	 THIF5aluPWqCJ58+3RlNKg+rBRn8u+1bFR5VYdkBNvmHuowOjKfgxxW39qSFnsZNxr
	 a0KgRfSWMK7UO5dOeHA3cCbR+hsZ+d3b/Gzq5Y95UPUEq9FOeqM/XO/3Tl+GYpD0L4
	 QLzU4W4qLgO90iknxKPVYmN7h3GCoIaJXEUjr9Ri1MJirr3So/l18sx61be8wpCG/o
	 5sjIoWcKaFOv830TRU/VO0NhrZQnTgWN3mBRfnNcIV6qvZ65RrgJ+RjZWInsEEMUe3
	 x7fH4G45fHfTA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 03/17] clocksource/drivers/arm_arch_timer: Default to
 EL2 virtual timer when running VHE
Reply-To: sashiko-reviews@lists.linux.dev
To: "Marc Zyngier" <maz@kernel.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260514150945.3917510-4-maz@kernel.org>
References: <20260514150945.3917510-4-maz@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 21:23:12 +0000
Message-Id: <20260514212312.BC29AC2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: EF1E8547031
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297821-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] kvm_arch_ptp_get_crosststamp requests the physical counter from KV=
M when ARCH_TIMER_HYP_VIRT_PPI is used, conflicting with the virtual counte=
r clocksource.
--

commit 46b3cf01730c13b97527ab1495a76cb40a0bdad8
Author: Marc Zyngier <maz@kernel.org>

clocksource/drivers/arm_arch_timer: Default to EL2 virtual timer when runni=
ng VHE

This commit switches the arch timer code to default to the virtual timer
when running in VHE mode. It ensures that the system clocksource utilizes
the virtual counter by treating ARCH_TIMER_HYP_VIRT_PPI similarly to
ARCH_TIMER_VIRT_PPI.

> diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/a=
rm_arch_timer.c
> index 90aeff44a2764..e3eb527650ec7 100644
> --- a/drivers/clocksource/arm_arch_timer.c
> +++ b/drivers/clocksource/arm_arch_timer.c

[ ... ]

> @@ -912,7 +913,8 @@ static void __init arch_counter_register(void)
>  	int width;
> =20
>  	if ((IS_ENABLED(CONFIG_ARM64) && !is_hyp_mode_available()) ||
> -	    arch_timer_uses_ppi =3D=3D ARCH_TIMER_VIRT_PPI) {
> +	    arch_timer_uses_ppi =3D=3D ARCH_TIMER_VIRT_PPI ||
> +	    arch_timer_uses_ppi =3D=3D ARCH_TIMER_HYP_VIRT_PPI) {
>  		if (arch_timer_counter_has_wa()) {
>  			rd =3D arch_counter_get_cntvct_stable;
>  			scr =3D raw_counter_get_cntvct_stable;

Could this cause a mismatch in kvm_arch_ptp_get_crosststamp() where it still
only checks for ARCH_TIMER_VIRT_PPI?

When ARCH_TIMER_HYP_VIRT_PPI is selected, the clocksource is backed by the
virtual counter here, but kvm_arch_ptp_get_crosststamp() will fall through
to the else branch and request KVM_PTP_PHYS_COUNTER from KVM:

drivers/clocksource/arm_arch_timer.c:kvm_arch_ptp_get_crosststamp() {
	...
	if (arch_timer_uses_ppi =3D=3D ARCH_TIMER_VIRT_PPI)
		ptp_counter =3D KVM_PTP_VIRT_COUNTER;
	else
		ptp_counter =3D KVM_PTP_PHYS_COUNTER;
	...
}

When running as an L1 guest hypervisor in VHE mode, could this pair the
guest's virtual clocksource with the host's returned physical counter
timestamp?

Since the host hypervisor (L0) can apply an offset to the virtual counter,
comparing the guest's virtual counter cycle with the host's physical counter
timestamp might result in an incorrect time offset and affect PTP clock
synchronization for nested VHE guests.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514150945.3917=
510-1-maz@kernel.org?part=3D3

