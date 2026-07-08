Return-Path: <devicetree+bounces-322570-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xErDAhP9TWoLBQIAu9opvQ
	(envelope-from <devicetree+bounces-322570-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:32:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CDB722A63
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:32:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hVGCYgeg;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322570-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322570-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2283304B288
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 07:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EF0B3EB0E2;
	Wed,  8 Jul 2026 07:22:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F683EDE7E
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 07:22:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783495360; cv=none; b=Y2yhmFCIfU8LOcFF4OkNXZ24fmVldMrgXhbNWfpHHDl1H3gshTiGGsLEjhxylJh/plp+pQyBHMfzm8lfxekErWeSGWFyTemwUpscL2tQlSZyfrab/mXRqMccXZQnkUuyD53BqU1T+BoTxbsAp0nupwDPeMdeTCpZteJ6H/nEB10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783495360; c=relaxed/simple;
	bh=LwAiTP6wK7XROje5kddlxNPUoJ+EyH8OuPxoNK9SRSQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qFPuJfy3vwZXwZrnMFt/a8csN92lY174JRv+GA3DdVTlhcVtZtr6E9H2t93jo0Q+ymXp90IiKE03Js6sjP878nRBS932wTo6nEUMAnDDuZ5N9pEHqfaMJLfkO4GT8U8Al+KgSjEUNgTEdD9Gkt+YwqiQxkXceWGw90ZhIzkPyAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVGCYgeg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E16071F00A3A;
	Wed,  8 Jul 2026 07:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783495349;
	bh=E8HPZvEofekz2sVZyd9gxJBql7Aj+svwGogWEzND6BE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hVGCYgegrltxgZG0+Op0gVXf1qcbWA0IbESvNBSOQFPBVSbMhFoekFdG66pccYtBf
	 GCzIrapuzDQ+kq8EKGPVDclBzQxZLWXkq86U/LSco2He1D4/1QKCD9YDmkJb8fkwo+
	 TIHS8V8l9smjagXsTPGkEbT/DMuPOLnhWXzG/kCF5tTO2HRezTgZ835aYL8oNpfxnp
	 sSxgXg5X9F32kFa0MmewhVIwB/xI5FfsqzKJi47kdzmjvgvBzFslCKPtiwNE87A1ey
	 aZPenymJyUseZZ06uqRk5Jfhp9Ui4j8Wpssxf2ci46kQyax7AmzJZn2qnrdCaRE0GR
	 3g+/Tf8XEy36A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 18/26] sched/core: Annotate runqueues into meminspect
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260708-meminspect-v3-v3-18-7aa5a0a74d5c@oss.qualcomm.com>
References: <20260708-meminspect-v3-v3-0-7aa5a0a74d5c@oss.qualcomm.com>
 <20260708-meminspect-v3-v3-18-7aa5a0a74d5c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 07:22:28 +0000
Message-Id: <20260708072228.E16071F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322570-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mukesh.ojha@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 64CDB722A63

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Calling virt_to_phys() on a per-CPU pointer yields an invalid phys=
ical address and causes kernel panics.
- [Medium] Registering runqueues per-CPU dynamically will exhaust the memin=
spect inspection table on systems with large core counts.
--

--- Patch [18]: [PATCH v3 18/26] sched/core: Annotate runqueues into memins=
pect ---
commit 63843371f43c4c6cde135f463d4c294cece8bc8f
Author: Eugen Hristev <ehristev@kernel.org>

sched/core: Annotate runqueues into meminspect

This commit annotates runqueues for the meminspect API by explicitly
registering them during sched_init() since they are per-cpu allocations.

> diff --git a/kernel/sched/core.c b/kernel/sched/core.c
> index 2e7cde033a319..1c2e80a54d2b6 100644
> --- a/kernel/sched/core.c
> +++ b/kernel/sched/core.c

[ ... ]

> @@ -9059,6 +9060,7 @@ void __init sched_init(void)
>  #endif
> =20
>  		zalloc_cpumask_var_node(&rq->scratch_mask, GFP_KERNEL, cpu_to_node(i));
> +		meminspect_lock_register_va(rq, sizeof(*rq));

[Severity: High]
Does passing a per-CPU pointer to meminspect_lock_register_va() work correc=
tly
here?

The meminspect_lock_register_va() macro expands to meminspect_register_id_v=
a(),
which calls virt_to_phys() on the provided address. Since dynamically alloc=
ated
per-CPU memory resides in vmalloc space rather than the direct linear mappi=
ng,
won't calling virt_to_phys() on 'rq' yield an invalid physical address?

If CONFIG_DEBUG_VIRTUAL is enabled, this could trigger a VIRTUAL_BUG_ON() p=
anic
during early boot, or otherwise lead to invalid physical memory mapping in =
the
meminspect table.

[Severity: Medium]
Will registering every possible CPU's runqueue exhaust the meminspect dynam=
ic
IDs on large systems?

Because this registration sits inside the for_each_possible_cpu() loop, it
consumes a dynamic slot for every CPU. The meminspect table has a static ar=
ray
limit (MEMINSPECT_ID_MAX, typically 201), with dynamic slots starting at
MEMINSPECT_ID_DYNAMIC (~33). This leaves around 168 available slots.

On machines with high core counts (e.g., 256 or 512 CPUs), this loop will
exhaust all available dynamic slots. Any subsequent kernel subsystems attem=
pting
to register dynamic memory regions will then fail silently.

>  	}
> =20
>  	set_load_weight(&init_task, false);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-meminspect=
-v3-v3-0-7aa5a0a74d5c@oss.qualcomm.com?part=3D18

