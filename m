Return-Path: <devicetree+bounces-305371-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAnpMpzxHWotgAkAu9opvQ
	(envelope-from <devicetree+bounces-305371-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 22:54:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 30ABA625660
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 22:54:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 31D973006792
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 20:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E20F3DFC80;
	Mon,  1 Jun 2026 20:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9ut6TRL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D53361656
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 20:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780347111; cv=none; b=eQgl5soUmUZpKffx03EWfnjGoN5ts+JNDHq/2vdCUS/DdNepQEPdxmyOGkzCDMTdE1V6Vjw2IEF+x7TnBjZgtg6a2Te7IE52rN99lSAP35l9VHS9boEyVbUxfblhh25ihtbH5yPv0S1w+yxOv460xIuzC1+XP+4wvYwL3H6Jp4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780347111; c=relaxed/simple;
	bh=l8nMTW9zkZcE514Cp+aggp2+l+CA7dHCUjN2nh+Caeo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZfxsWgrOgeiINFnvZAqI3/O+dsY5Ro9J3Kl+6U65XoUSGZb1knMrUowCW408XG3ccoEWB7WEBte1b8lMLFkjd+LairiQ0pR89WK8XN7Fsx3SUGcPg6baO3kJyvDPaXtu5N+W6f25MOPLW2TChG8MHAzPfuT4EzWJa8M3o44plWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9ut6TRL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A07E31F00893;
	Mon,  1 Jun 2026 20:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780347109;
	bh=cKzZEsxAtSkMmEKXY9ld1YcP+4jsFpme/R/pmmkczF8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=R9ut6TRLw39BDNnrZrILWErpi+a4sEJe0dGlFQ29xjq5jk2kIXt2WJN30tRPkMQlx
	 9PRXLFWnqPR/CEZx+3DxBB+mvs0teSZnJF6YV/Qz4lY1QlFYkBzaQyEMGm76fGs51c
	 2WTm5wlsBEydr/axYDmjGIQZMwsoj2nVnAO8rzyp756A+03r2Cu6XoWFIZ1kCviAHh
	 /JV2N3CB/mlMRkjnqaONMgWJUHUJXJ90Hq7rTEuFLbWDpg/QtCAQqKevW9dN5+9PFZ
	 6lfwDFploB8qtAI6H78xOyL2B1NtutrrvUgkIie0m9os27yOIl8msmIsiq5jUqkaVM
	 CU+e3i8Ec2/Ew==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v6 08/18] riscv_cbqri: Add capacity controller
 monitoring device ops
Reply-To: sashiko-reviews@lists.linux.dev
To: "Drew Fustini" <fustini@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260601-ssqosid-cbqri-rqsc-v7-0-v6-8-baf00f50028a@kernel.org>
References: <20260601-ssqosid-cbqri-rqsc-v7-0-v6-8-baf00f50028a@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 20:51:49 +0000
Message-Id: <20260601205149.A07E31F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305371-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 30ABA625660
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Monitoring capability is permanently disabled if no CPUs in the ca=
che domain are online during controller probe.
--

commit 5bf7b161f1153d4375f89427853fb0d90c2f6a41
Author: Drew Fustini <fustini@kernel.org>

riscv_cbqri: Add capacity controller monitoring device ops

This commit adds capacity monitoring operations for the riscv_cbqri driver,
including operations to pre-arm and read live counters. It also adds logic
in the probe path to enable monitoring capabilities if cache size informati=
on
is available.

> diff --git a/drivers/resctrl/cbqri_devices.c b/drivers/resctrl/cbqri_devi=
ces.c
> index 65453e614a433..c44bc50c31bab 100644
> --- a/drivers/resctrl/cbqri_devices.c
> +++ b/drivers/resctrl/cbqri_devices.c
[ ... ]
> @@ -372,9 +412,31 @@ static int cbqri_probe_cc(struct cbqri_controller *c=
trl)
[ ... ]
> +	if (status =3D=3D CBQRI_MON_CTL_STATUS_SUCCESS) {
> +		/*
> +		 * Occupancy is reported to userspace in bytes, computed as
> +		 * cache_size * counter / ncblks by the resctrl glue. If
> +		 * cacheinfo has no cache_size, leave mon_capable false so
> +		 * the file is not exposed at all rather than silently
> +		 * returning 0.
> +		 */
> +		if (!ctrl->cache.cache_size)
> +			pr_debug("CC @%pa: cache_size unknown, occupancy monitoring disabled\=
n",
> +				 &ctrl->addr);
> +		else
> +			ctrl->mon_capable =3D true;
> +	}

[Severity: High]
Does this permanently disable monitoring for multi-socket systems or
late-plugged CPUs?

If all CPUs in the domain are offline during cbqri_probe_cc(), or if
cacheinfo is not yet populated (which happens during acpi_arch_init),
ctrl->cache.cache_size will be 0. This causes ctrl->mon_capable to be
permanently left as false.

When a CPU in this domain later comes online, cbqri_resctrl_online_cpu()
and cbqri_init_mon_counters() execute. However, because mon_capable was
locked to false at probe time, the resctrl core will never expose
monitoring files for this domain.

Could the monitoring capability flag be deferred or evaluated when CPUs
come online instead of hardcoding it to false during early probe?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601-ssqosid-cb=
qri-rqsc-v7-0-v6-0-baf00f50028a@kernel.org?part=3D8

