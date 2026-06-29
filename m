Return-Path: <devicetree+bounces-316959-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Dr4JNbxSQmos4wkAu9opvQ
	(envelope-from <devicetree+bounces-316959-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 13:10:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 395116D938B
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 13:10:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QMrrQtvH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316959-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316959-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0A68E3009F90
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:06:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4999338593;
	Mon, 29 Jun 2026 11:06:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD3F62765D7
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 11:06:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782731185; cv=none; b=VnTldR9uU8MM7yoF9YrkPJfJaKMqAnGyN6hiNneHIksruqtxqtRa8pkP7odc4JDIdfx58K4bStXHRaKwXrdnS16WYeiqAN3rcDViN4+09B3qAIwmIl7ugLckkJU3u+dXbl6j+3FUvoWMaXGVUS7LBgxh283R4ZWkPFcZDkGS6as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782731185; c=relaxed/simple;
	bh=yKd8A6p+8bziZPsp2Q28s2PZ2vk3u4AqtgqFKkxKqxY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TyxmEzwv5Xxxjg/HtTaPhZBcW4brvRKtGPkMzTMrRtWYLzF2hfNvOHTHr8hLh5Av1ymPqUYVb8Zb2WfzS8JaGhYteJ15gkq+7p+W+Ito2g9Yxq7mwBWs9iJS6n+tlsPCDaxsAFtN6UhRKX5eyCggLFDBr9bzwLvFilBVH/vvalU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMrrQtvH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19FAD1F000E9;
	Mon, 29 Jun 2026 11:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782731184;
	bh=lxoWw985NMd9JHNaIPVIITMVNctxRj+Fm6JNRS8rwMc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QMrrQtvHnsPioSmnlGtWJSNhx5j0VyHGA3dhkcg0fQKLrqzRWw5K3PHKrNzUJXPT+
	 7bd++QkFHYh2TKSxUiO3puS1DQBhSuiKpqafNjgsS4j967bMUhWSZWJpWmI/nQBdBA
	 WpyUq8ACZvw9aI/AF6mXgs+9LebK9JIf83r0ckLoPhnXe60Pk9WKbyoq22EwExtX+r
	 1bmKkTMLd55h9HM/RHBv2XWFa1gP3+3aDaEJbobf9EvkdFzqriS10wbW/tQ3I631l5
	 ekgbbXJQUgAnyk5E97zBkocGdkpZPQYvSbb9bSuPt1+FGljFtXnc1bgR50a+ih7flo
	 0xawbX/8Nlyew==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v17 07/10] LoongArch: kexec_file: Use
 crash_prepare_headers() helper to simplify code
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jinjie Ruan" <ruanjinjie@huawei.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260629094746.191843-8-ruanjinjie@huawei.com>
References: <20260629094746.191843-1-ruanjinjie@huawei.com>
 <20260629094746.191843-8-ruanjinjie@huawei.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 11:06:23 +0000
Message-Id: <20260629110624.19FAD1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316959-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ruanjinjie@huawei.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,huawei.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 395116D938B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Concurrent memory hotplug can modify `memblock.memory` during `kex=
ec_file_load()`, causing an out-of-bounds write on `cmem->ranges[]` and use=
-after-free on `memblock.memory.regions`.
--

commit 144c95098f9114fc6eb269028a7cf5e5b2d79839
Author: Jinjie Ruan <ruanjinjie@huawei.com>

LoongArch: kexec_file: Use crash_prepare_headers() helper to simplify code

This commit simplifies the kexec_file code by replacing the existing
prepare_elf_headers() with the generic crash_prepare_headers() helper.
It implements the architecture-specific arch_get_system_nr_ranges()
and arch_crash_populate_cmem() functions using for_each_mem_range.

> diff --git a/arch/loongarch/kernel/machine_kexec_file.c b/arch/loongarch/=
kernel/machine_kexec_file.c
> --- a/arch/loongarch/kernel/machine_kexec_file.c
> +++ b/arch/loongarch/kernel/machine_kexec_file.c

[ ... ]

> -static int prepare_elf_headers(void **addr, unsigned long *sz)
> +unsigned int arch_get_system_nr_ranges(void)
>  {
> -	int ret, nr_ranges;
> -	uint64_t i;
> +	int nr_ranges =3D 2; /* for exclusion of crashkernel region */
>  	phys_addr_t start, end;
> -	struct crash_mem *cmem;
> +	uint64_t i;
> =20
> -	nr_ranges =3D 2; /* for exclusion of crashkernel region */
>  	for_each_mem_range(i, &start, &end)
>  		nr_ranges++;
> =20
> -	cmem =3D kmalloc_flex(*cmem, ranges, nr_ranges);
> -	if (!cmem)
> -		return -ENOMEM;
> +	return nr_ranges;
> +}
> +
> +int arch_crash_populate_cmem(struct crash_mem *cmem)
> +{
> +	phys_addr_t start, end;
> +	uint64_t i;
> =20
> -	cmem->max_nr_ranges =3D nr_ranges;
> -	cmem->nr_ranges =3D 0;
>  	for_each_mem_range(i, &start, &end) {
>  		cmem->ranges[cmem->nr_ranges].start =3D start;
>  		cmem->ranges[cmem->nr_ranges].end =3D end - 1;
>  		cmem->nr_ranges++;
>  	}

[Severity: High]
This is a pre-existing issue, and was not introduced by the patch under
review, but could this loop overflow cmem->ranges[]?

The crash_prepare_headers() function first counts the memblock memory ranges
via arch_get_system_nr_ranges() to allocate the cmem array, and then
populates it using arch_crash_populate_cmem().

Neither of these functions appears to hold the mem_hotplug_lock via
get_online_mems(). If a concurrent memory hotplug event adds a new memory
range via memblock_add_node() between the counting and population steps,
does the loop here blindly increment cmem->nr_ranges past cmem->max_nr_rang=
es
and cause a heap out-of-bounds write?

Furthermore, if the hotplug event triggers memblock_double_array(), the
underlying memblock.memory.regions array might be reallocated and freed.
Could this lead to a use-after-free when for_each_mem_range() iterates
over the stale array pointer?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629094746.1918=
43-1-ruanjinjie@huawei.com?part=3D7

