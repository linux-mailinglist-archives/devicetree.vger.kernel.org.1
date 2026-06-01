Return-Path: <devicetree+bounces-305102-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YN1MDIJiHWoHaAkAu9opvQ
	(envelope-from <devicetree+bounces-305102-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 12:44:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D17961DC85
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 12:44:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 32ECE3014878
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 10:38:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3407838D41F;
	Mon,  1 Jun 2026 10:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gu5cS5qV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FC636998F
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 10:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780310279; cv=none; b=jk1saJNJj1FVoM2+WuVl5sldIXuOTxjJmoQbLgowd49jGv9PGFtteSbf+TRXDy0B5BrCnYZJUjUhPApf7w31o8MjhIrd1kIO/dhs78lZZIwLdadB7b3GNXT5mJvnO/vlFPAHgo9OhGsaru1ol/5hmhWVTJI+L/2ONyBkM66DNwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780310279; c=relaxed/simple;
	bh=Y+6sq0LaKO4ITt+MfYLzlduOnrcTt02TtAF7NDNRow0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=KQTNRyAP3gKR+m67FmUfOuJaprcf7Xeyrb3VTn0C10G6dcA7uiAq3gRDzJo6JFICQ5p4XFaD4wSwNqBcMiH0lK5s52QALRcZpfSaFh8kiw3NnrZaJ4Fp04hCNTCV7YdLjLdFPrvx5fzJGxoJ+EjmUhHQEiPkqfRMKxYBCyiXFBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gu5cS5qV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84E3E1F00893;
	Mon,  1 Jun 2026 10:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780310277;
	bh=ElilZgLJf/2h346vd0ho6REOOI8R6dff3vOgUTR+GkY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gu5cS5qVTsol6YGh/2NQ7Kejw2DTOptWx6ooOdGBVYYpxJN4adCXC2dl57sXoipMP
	 C1ITyo4cP/M3ZyFhs5BofX6yDTKpacHRNHX+vMlDesy7iDwUdtT2y9ypKfb7vYWET3
	 MXb7GJyYiDb1mjFegXEaG7IEgIMaylafzmzdZtSY+bfOe79eY6TQEjhF2uOdDsS4NS
	 SQL+tkCfcSvJx6o2ANnPO5H3CdSi3TxNQTXfQIinb/ym+lsF4zir1UQoffWlNlqJ45
	 rcYWfmnu740hNxRqP4VhuOtLzvdnNyZAeR3w0ecPDyliRPKIJBnIG8lT/zliUXGLsV
	 JhSdpK9rlrVrA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v15 10/23] crash_core: Introduce
 CRASH_HOTPLUG_SAFETY_PADDING for memory hotplug safety
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jinjie Ruan" <ruanjinjie@huawei.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260601094805.2928614-11-ruanjinjie@huawei.com>
References: <20260601094805.2928614-11-ruanjinjie@huawei.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 10:37:57 +0000
Message-Id: <20260601103757.84E3E1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305102-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,huawei.com:email]
X-Rspamd-Queue-Id: 9D17961DC85
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Lockless iteration of memblock regions can lead to Use-After-Free =
during kexec_file_load, which the introduced padding heuristic fails to add=
ress.
--

commit a849793b7e9ef0b0f1a7702a24c56ed556e7f47a
Author: Jinjie Ruan <ruanjinjie@huawei.com>

crash_core: Introduce CRASH_HOTPLUG_SAFETY_PADDING for memory hotplug safety

This commit introduces CRASH_HOTPLUG_SAFETY_PADDING to allocate extra slots
for the crash memory ranges array. This is intended to mitigate potential
TOCTOU races caused by concurrent memory hotplug events.

> diff --git a/include/linux/crash_core.h b/include/linux/crash_core.h
> index c1dee3f971a91..d4762e000098b 100644
> --- a/include/linux/crash_core.h
> +++ b/include/linux/crash_core.h
> @@ -14,6 +14,12 @@ struct crash_mem {
>  	struct range ranges[] __counted_by(max_nr_ranges);
>  };
> =20
> +#ifdef CONFIG_MEMORY_HOTPLUG
> +#define CRASH_HOTPLUG_SAFETY_PADDING 128
[Severity: High]
This is a pre-existing issue, but does this padding actually resolve the
concurrency problems with memory hotplug?

sys_kexec_file_load() holds kexec_lock but does not acquire the memory
hotplug lock (mem_hotplug_begin() or get_online_mems()). Consequently,
functions like arch_crash_populate_cmem() in arch/arm64/kernel/crash.c
and arch/loongarch/kernel/machine_kexec_file.c iterate over
memblock.memory.regions locklessly via for_each_mem_range().

If a concurrent memory hotplug event (e.g., __add_memory()) takes the
hotplug lock and calls memblock_add_node(), it can trigger
memblock_double_array(). This dynamically reallocates the memblock array
and immediately frees the old array via kfree() with no RCU grace period.

If for_each_mem_range() runs concurrently during the kfree(), could it
dereference the freed array, resulting in a direct use-after-free on the
source memblock.memory.regions array?

While the new padding heuristic might prevent out-of-bounds writes to the
destination cmem->ranges array, it appears it would fail to prevent the
use-after-free during the iteration itself.

> +#else
> +#define CRASH_HOTPLUG_SAFETY_PADDING 0
> +#endif
> +
>  #ifdef CONFIG_CRASH_DUMP
> =20
>  int crash_shrink_memory(unsigned long new_size);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601094805.2928=
614-1-ruanjinjie@huawei.com?part=3D10

