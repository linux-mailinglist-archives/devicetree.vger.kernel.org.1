Return-Path: <devicetree+bounces-306554-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8CuhBYrfIGrz8gAAu9opvQ
	(envelope-from <devicetree+bounces-306554-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 04:14:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C82A63C6C3
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 04:14:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Pfhhunzy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306554-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306554-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 852853162347
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 02:07:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D19772DEA6E;
	Thu,  4 Jun 2026 02:03:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C348D1F30A9
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 02:03:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780538617; cv=none; b=BQL+5XTsbLtJpRrQODZkG/FK/K4tttW0IjdlKfVahOzAAqmGYRdADnJ/H6cwqT/FPm6ouSUWuh8MJMqSwDRDLUpSYvB570VUqVs/cxHoQQ1336q7p5zhjRimPRcWgVsvV+QLHBpD6evqJxfOELPtO4AtOXgIBfLvX87fhmiyfiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780538617; c=relaxed/simple;
	bh=JDWnhhCgkiRp5HJaWLTMd/f5uiK5IZswAKzRAoFzm1k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RefeImgmNKXMwXbTDldEzpVHs7j5cM+ZbIfyFpp8El+VP969Si2Mm4FnONBwLEHGTKPBfMa01jiU3YcdKJ2fvslCtmfr4tVdHNQ2ziwhqOaal47K3WL+7y8TFJu1fABxkMb9fH+1XIxp/mY1eDr88bBn8JdnwjhlJtupOYR7Ais=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pfhhunzy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45A5F1F00893;
	Thu,  4 Jun 2026 02:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780538616;
	bh=MI/xN/Fr1P9xwXckYAc2dIst4TH3ClfXkFt4KFzuH9I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Pfhhunzy/MC1AlLbTvUsJZMZuRupBgPzhniVmOe/8g9OW29jG3FqS9uUmKaLjG/kF
	 7dp6mqJf+S7gp0kXSBC1ylsBFDBIsyP8s3daj3thI7sLtKG9koaL/Qb2jXX0ptr1qm
	 6Xup+VJ9f+oC3uciuYBXgJRW34o3wD6Mg8CcBM/Bz9C8bIEbvO/dNjgRrpBvwp0POB
	 +ON/h8Oumj6k8K0KXnzNWOVPxjhPGn/kgMXTHJvj0CnB6jO0u90ZycC+EIZ6/eQnch
	 qeJKCmYxjDZc2I4vGjY8gb5zJnAc0+515ROzdCbdj+kdD3jeHZeqJsV986e67Rwn8Z
	 CDIai3KGm2iWQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4] of: reserved_mem: avoid post-init UAF when
 alloc_reserved_mem_array() fails
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wandun Chen" <chenwandun1@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260604015332.3669384-1-chenwandun1@gmail.com>
References: <20260604015332.3669384-1-chenwandun1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 02:03:35 +0000
Message-Id: <20260604020336.45A5F1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306554-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chenwandun1@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lixiang.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C82A63C6C3

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] A maliciously crafted Device Tree can cause a stack buffer overflo=
w due to missing bounds checking on `dynamic_nodes_cnt`.
--

commit 3cff43cb4eafb6dda732ba65e80fb9410ac03943
Author: Wandun Chen <chenwandun@lixiang.com>

of: reserved_mem: avoid post-init UAF when alloc_reserved_mem_array() fails

This patch resets the reserved_mem_count to 0 when alloc_reserved_mem_array=
()
fails. This prevents post-init use-after-free bugs that could occur when
of_reserved_mem_lookup() dereferences freed memory.

> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> index 8d5777cb5d1b3..deaea58c74f2a 100644
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c
[ ... ]
> @@ -266,7 +275,8 @@ void __init fdt_scan_reserved_mem_late(void)
>  	}
> =20
>  	/* Attempt dynamic allocation of a new reserved_mem array */
> -	alloc_reserved_mem_array();
> +	if (alloc_reserved_mem_array())
> +		return;
> =20
>  	if (__reserved_mem_check_root(node)) {
>  		pr_err("Reserved memory: unsupported node format, ignoring\n");

[Severity: High]
This isn't a bug introduced by this patch, but can a maliciously crafted
Device Tree cause a stack buffer overflow in fdt_scan_reserved_mem() due to
missing bounds checking on dynamic_nodes_cnt?

In drivers/of/of_reserved_mem.c:fdt_scan_reserved_mem():

	int dynamic_nodes_cnt =3D 0, count =3D 0;
	int dynamic_nodes[MAX_RESERVED_REGIONS];
	...
	fdt_for_each_subnode(child, fdt, node) {
		...
		if (err =3D=3D -ENOENT && of_get_flat_dt_prop(child, "size", NULL)) {
			dynamic_nodes[dynamic_nodes_cnt] =3D child;
			dynamic_nodes_cnt++;
		}
	}

There doesn't seem to be a bounds check to verify that dynamic_nodes_cnt is
strictly less than MAX_RESERVED_REGIONS before this write. If an untrusted
Device Tree contains more than MAX_RESERVED_REGIONS (64) dynamically
allocated reserved memory regions, could this write past the end of the
dynamic_nodes stack array?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604015332.3669=
384-1-chenwandun1@gmail.com?part=3D1

