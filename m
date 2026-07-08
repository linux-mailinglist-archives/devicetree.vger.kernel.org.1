Return-Path: <devicetree+bounces-322557-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QkHEEIj5TWogBAIAu9opvQ
	(envelope-from <devicetree+bounces-322557-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:17:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B39037228C0
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:17:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="jPFzP/SW";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322557-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-322557-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E809B3022B6C
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 07:16:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA06E3EEAD8;
	Wed,  8 Jul 2026 07:16:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CF53E7BA1
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 07:16:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783494981; cv=none; b=WlDMrqL5R6c/hLR2c7mnZIDSXZUCrRlD7uST/1pDdEvWHOb6eDXJPeXn61+djBUqlqEZCeJ+yzhb80e0/ZmhOVCqB5zLNcZypi5opgTGzF8LO1Rbx1grDAE4enIJIEt5AOKH3hemIpnLYU9SxnJKb7FZsnGX4A4b0epqBYb70xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783494981; c=relaxed/simple;
	bh=PpJ59Rgff5oQTneMZ5UFy//x0OLtbfbKSwBXWIAs7vs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Y9D4CsDB3QMzxdcGLn3nqw1f83KMjYfNSUVZuyTek4GsfIeO98EZZqPC5bZnDEPkA3ETVSol2gLZ2LDPR2H6wIJb1QvTIdg0wWBI3x/DqoQTVSJvLUdEyOxEKwwknMEfkw94wzWz7uy4Ndac8Ei1jjbY18wKN6EOt3ZcTYPxkaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPFzP/SW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F2561F0155B;
	Wed,  8 Jul 2026 07:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783494964;
	bh=Gbw66bZRERBPBiFQN3UXUp9V5Frl15HRg5lSheD132k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jPFzP/SWOgwCavuYADJ5xGwHeE8PtIgW6WeJB+6MUkG5hoyqd1kBVpPgZrawOJ3yx
	 NKVZH7s6/HT42HzvAtS33n3FlkUYez/CMSTKGiW/F/ALWLUdP0lpgNKZw8PhedR0dS
	 LQqNgPNaVJmhIvD6FT+19nR6Xwuk15jVTdVaAMqSKB6lEfqAd5u/1nqshLXSO5nr4X
	 76CDrxUX5Tw/pbz0hnR6OWauNaVhbLAJE8p+WdOgsD36iVBbe/K0CMAswubv3QIHA8
	 sMXaB6dDI55tQElumjqMX1VhnXulhq9qvVarWS2bkfkMkne5xiGKkvLrexIsB7/uuR
	 dkPMwW/RN1QXg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 08/26] kernel/fork: Annotate static information into
 meminspect
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260708-meminspect-v3-v3-8-7aa5a0a74d5c@oss.qualcomm.com>
References: <20260708-meminspect-v3-v3-0-7aa5a0a74d5c@oss.qualcomm.com>
 <20260708-meminspect-v3-v3-8-7aa5a0a74d5c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 07:16:03 +0000
Message-Id: <20260708071604.0F2561F0155B@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322557-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mukesh.ojha@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B39037228C0

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Invalid physical address translation for kernel symbol in meminspe=
ct.
--

--- Patch [8]: [PATCH v3 08/26] kernel/fork: Annotate static information in=
to meminspect ---
commit 1636f69c14cba35cc52768f137946c4cd0a44fdc
Author: Eugen Hristev <ehristev@kernel.org>

kernel/fork: Annotate static information into meminspect

This commit annotates the vital static variable nr_threads into the
meminspect inspection table. The annotated information is stored in a
dedicated meminspect section for later retrieval.

> diff --git a/kernel/fork.c b/kernel/fork.c
> index 175c73bbe2bfc..ec99066eedd24 100644
> --- a/kernel/fork.c
> +++ b/kernel/fork.c

[ ... ]

> @@ -142,6 +144,7 @@
>   */
>  unsigned long total_forks;	/* Handle normal Linux uptimes. */
>  int nr_threads;			/* The idle threads do not count.. */
> +MEMINSPECT_SIMPLE_ENTRY(nr_threads);
=20
[Severity: High]
This is a pre-existing issue, but adding this annotation exposes a bug in t=
he
meminspect framework.

When MEMINSPECT_SIMPLE_ENTRY(nr_threads) is evaluated, the kernel symbol
nr_threads is passed to the framework. During boot, the framework processes
these entries and attempts a physical address translation:

kernel/meminspect/meminspect.c:meminspect_prepare_table() {
    ...
    inspect_entries[e->id].pa =3D virt_to_phys(inspect_entries[e->id].va);
    ...
}

Does this translation work correctly for kernel symbols? Using virt_to_phys=
()
on a kernel symbol (which resides in the kernel text/data mapping rather th=
an
the linear map) can return an invalid physical address or trigger a panic on
architectures like x86_64 and arm64 when CONFIG_DEBUG_VIRTUAL is enabled.

Could the underlying framework be updated to use __pa_symbol() for these
statically registered entries instead?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-meminspect=
-v3-v3-0-7aa5a0a74d5c@oss.qualcomm.com?part=3D8

