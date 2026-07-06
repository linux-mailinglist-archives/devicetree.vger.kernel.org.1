Return-Path: <devicetree+bounces-321627-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bRMyDUQ4TGp6hwEAu9opvQ
	(envelope-from <devicetree+bounces-321627-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 01:20:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 674CA716482
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 01:20:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FRaoOTHY;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321627-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321627-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 204F4302F735
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 23:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8220A3E51E8;
	Mon,  6 Jul 2026 23:20:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DF236F8EF;
	Mon,  6 Jul 2026 23:20:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783380033; cv=none; b=JBe2cRSbOU7NeJm+BS0772G5yGuBYhysylZ2mtp+7z7hH0SdxVheoTvBEZphn8DZeOpqHJgLcdl0N0chPrxwfQPnp2LHb7evLsDkynOG5nf7NHm7mn/Ogt2FGvzkzBhbfbYModz/tQVUwKUhrWFUXIkQC9Q5tZWpELV1v3Nb6KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783380033; c=relaxed/simple;
	bh=L11fIKbxV6cjmLDzzrSC3NsRoaszFTuLSQsScJVKYiQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EX7PObtVvvENX5KWz70Iz8xi8kfBe+MNAka9RWTXvooBgU0ndrNAS0F/Ff1rPnrhVwbUBybKQ8pWAdkVzCzWfdsjQlfiElo0S59iV3WIea9W2/oKo5GY9OPWwPHRuVOnrpvwPBT7dHURPWHgv4Fu0RWwN2xyb570sgS1nEOQUFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRaoOTHY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D95C21F000E9;
	Mon,  6 Jul 2026 23:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783380032;
	bh=VVzjjowMfqFq+0+YUgUFum1Kw+bY4y+e7gFAikKWL8E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FRaoOTHYv1/jD2sraCqmyHg9ZnSGs95xYfBs3zCvKPHNRc6MUPQmWOuCZQ/MjSog9
	 OhCe1RbVVWUSEQ+t/RIL4AHm2csyZgmRNbGkFkam+KjBxn061G3sBMM3bFJyjkKnjF
	 TXIVp8jGF9aSSy+PJU0MPjd2d/g0ZZUarmdjRfp0qfdCSCl5nW/UI+Z6G7SPLyN9bV
	 N6ZlFUs+G/7vntzv5jv/hKWT/6pCchsZ3fRk+ESoQNDquW5KmFnHLJRIQuyTzi+YP2
	 3NoOZA34dZxOLIvWxXv+D56hxcfKSYz30pRyL6U34/Wjph+YQqG4iBIBF70PYdNpWs
	 7b7M3K1zlO1CQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 5/8] riscv_cbqri: resctrl: Add cache allocation via
 capacity block mask
Reply-To: sashiko-reviews@lists.linux.dev
To: "Drew Fustini" <fustini@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, linux-rt-devel@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260706-dfustini-atl-sc-cbqri-dt-v4-5-e75c20201d64@kernel.org>
References: <20260706-dfustini-atl-sc-cbqri-dt-v4-0-e75c20201d64@kernel.org>
 <20260706-dfustini-atl-sc-cbqri-dt-v4-5-e75c20201d64@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 23:20:31 +0000
Message-Id: <20260706232031.D95C21F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321627-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:fustini@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:linux-rt-devel@lists.linux.dev,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 674CA716482

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] CBQRI controllers registered after system boot are not validated f=
or mismatched capabilities when attached to resctrl domains.
- [Medium] Missing ARCH_HAS_CPU_RESCTRL selection in RISC-V Kconfig prevent=
s RESCTRL_FS from being enabled.
--

--- Patch [5]: [PATCH v4 5/8] riscv_cbqri: resctrl: Add cache allocation vi=
a capacity block mask ---
commit bf65a655f2aedc980d538dde50ae87b2b9ea72e4
Author: Drew Fustini <fustini@kernel.org>

riscv_cbqri: resctrl: Add cache allocation via capacity block mask

Wire CBQRI capacity controllers into resctrl as RDT_RESOURCE_L2 and
RDT_RESOURCE_L3 schemata. Domains are created lazily in the cpuhp online
callback so cpu_mask reflects only currently online CPUs.

> diff --git a/drivers/resctrl/Kconfig b/drivers/resctrl/Kconfig
> index 92b9c82cf9f39..f8566c003d495 100644
> --- a/drivers/resctrl/Kconfig
> +++ b/drivers/resctrl/Kconfig
> @@ -42,3 +42,7 @@ menuconfig RISCV_CBQRI
>  if RISCV_CBQRI
> =20
>  endif
> +
> +config RISCV_CBQRI_RESCTRL_FS
> +	bool
> +	default y if RISCV_CBQRI && RESCTRL_FS

[Severity: Medium]
Will this feature ever be enabled? Since the RISC-V architecture Kconfig do=
es
not currently select ARCH_HAS_CPU_RESCTRL, it appears RESCTRL_FS can never =
be
satisfied, making this newly added support unreachable.

> diff --git a/drivers/resctrl/cbqri_resctrl.c b/drivers/resctrl/cbqri_resc=
trl.c
> new file mode 100644
> index 0000000000000..cb12a868561b9
> --- /dev/null
> +++ b/drivers/resctrl/cbqri_resctrl.c

[ ... ]

> +static int cbqri_attach_cpu_to_cap_ctrl(struct cbqri_controller *ctrl,
> +					unsigned int cpu)
> +{
> +	struct cbqri_resctrl_res *hw_res;
> +	struct rdt_ctrl_domain *domain;
> +	struct rdt_resource *res;
> +	int dom_id;
> +	int rid;
> +
> +	rid =3D cbqri_cache_level_to_rid(ctrl->cache.cache_level);
> +	if (rid < 0)
> +		return 0;
> +	hw_res =3D &cbqri_resctrl_resources[rid];
> +
> +	if (!hw_res->ctrl)
> +		return 0;
> +
> +	res =3D &hw_res->resctrl_res;
> +	dom_id =3D ctrl->cache.cache_id;
> +
> +	domain =3D cbqri_find_ctrl_domain(&res->ctrl_domains, dom_id);
> +	if (domain) {
> +		cpumask_set_cpu(cpu, &domain->hdr.cpu_mask);
> +		return 0;
> +	}
> +
> +	domain =3D cbqri_create_ctrl_domain(ctrl, res, cpu, dom_id);

[Severity: High]
Can a mismatched controller be attached here if it is probed after system b=
oot?

While cbqri_resctrl_pick_caches() verifies that all controllers agree on
capabilities like rcid_count and ncblks during boot, this function seems to
unconditionally create a new control domain for late-attached controllers
without similar validation against the baseline hw_res->ctrl capabilities.

If a deferred probe or late module load brings up a controller with fewer
capabilities (such as a smaller capacity block mask or fewer RCIDs), could
the resctrl core's use of the baseline capabilities lead to out-of-bounds
hardware writes when programming this new controller?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-dfustini-a=
tl-sc-cbqri-dt-v4-0-e75c20201d64@kernel.org?part=3D5

