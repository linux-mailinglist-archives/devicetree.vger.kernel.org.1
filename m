Return-Path: <devicetree+bounces-316938-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fApkHUxMQmpO4QkAu9opvQ
	(envelope-from <devicetree+bounces-316938-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:43:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA63C6D9050
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:43:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bIPHKEd0;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316938-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316938-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0D1F1301D4CB
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 10:41:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD45D3B9DA5;
	Mon, 29 Jun 2026 10:41:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF9D3B9930
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 10:41:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782729693; cv=none; b=RGE+T+ABpXhzuSpkP7F5XL4YHouDzH9FQzmoFXWlvVjpnigzKRyZQ3nTV2Ptgb7fzfuMC25eSTl2klSzAZc4DO9WvC2mCp0OCLR8P78epxTscplKeZNdSIrYH4k0Iw3mITuyQ2MFUhPbMznGiyS6ujFishsLlSvE7KzUxu3RRY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782729693; c=relaxed/simple;
	bh=Nec21H0EcnFFtiFbJM4XlsG5iGGTEArCHPE3HSYPXus=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ij/UfyBkeee3HdRmkEM+Gsjbzhv2HnyGTG3bbXUTovWMKKczqfWN2k0na+x03ZGaIDMj/dm9AJKRKkfrlpuq0sLQ91g1eteVcj6RNPvZJcUOHei+CcPHJLuUigBycsJnM90lxNRc69untiu/OhP2hpFm8UHYbAfjRK10StevVQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIPHKEd0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F4151F000E9;
	Mon, 29 Jun 2026 10:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782729692;
	bh=k0b/aLPPsartUoVDYcslU1DgPszS82fOji7+C4Kra48=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bIPHKEd0x3GdAqkOSaqxUT6zS1wujVzViudFoeMjf36/D2wrCZWInu5soVjoclRTI
	 E09NVOQIot1yy4EQEIMMMoQQvTcosWEybGmSwWKyhktEUKtRlI70QfPNEO+sKBy8ZH
	 q5fNQsmDHnJTsFP7m+mkgNtBEPmsWzzjmfZq+ujeEvXoc2ICmR/+7u1P3v7YBx0z/g
	 3YCxMWmulYRgSuhWLF1Z1nWhYXEYn4kOXo/o0nazM+fY8I4/jT4f8vNEBi7GTKKpks
	 3iP56QE7JVi3QzsvpvQ/G8KL+gK2KZhvexv5kb4EzCOJ0x/0Uf/mqnbyIALgQuuTsj
	 fxFBpDGuujmDA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v17 05/10] x86/crash: Use crash_prepare_headers() helper
 to simplify code
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jinjie Ruan" <ruanjinjie@huawei.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260629094746.191843-6-ruanjinjie@huawei.com>
References: <20260629094746.191843-1-ruanjinjie@huawei.com>
 <20260629094746.191843-6-ruanjinjie@huawei.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 10:41:31 +0000
Message-Id: <20260629104132.1F4151F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316938-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ruanjinjie@huawei.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CA63C6D9050

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] A TOCTOU race condition with concurrent memory hotplug events can =
cause an out-of-bounds array write in `prepare_elf64_ram_headers_callback()=
`.
--

commit cd182ef6162a3474e9e6717a10d9147468938990
Author: Jinjie Ruan <ruanjinjie@huawei.com>

x86/crash: Use crash_prepare_headers() helper to simplify code
   =20
This commit simplifies the x86 crash code by replacing the existing
prepare_elf_headers() with the newly introduced crash_prepare_headers()
helper function. It implements the three required architecture-specific
callbacks to pre-count, collect, and exclude memory ranges.

> diff --git a/arch/x86/kernel/crash.c b/arch/x86/kernel/crash.c
> index cd796818d94d9..cb2ce7acfec45 100644
> --- a/arch/x86/kernel/crash.c
> +++ b/arch/x86/kernel/crash.c

[ ... ]

> @@ -177,49 +169,16 @@ static struct crash_mem *fill_up_crash_elf_data(voi=
d)
>  	 * But in order to lest the low 1M could be changed in the future,
>  	 * (e.g. [start, 1M]), add a extra slot.
>  	 */
> -	nr_ranges +=3D 3 + crashk_cma_cnt;
> -	cmem =3D vzalloc(struct_size(cmem, ranges, nr_ranges));
> -	if (!cmem)
> -		return NULL;
> -
> -	cmem->max_nr_ranges =3D nr_ranges;
> +	unsigned int nr_ranges =3D 3 + crashk_cma_cnt;
> =20
> -	return cmem;
> +	walk_system_ram_res(0, -1, &nr_ranges, get_nr_ram_ranges_callback);
> +	return nr_ranges;
>  }

[ ... ]

> @@ -233,35 +192,9 @@ static int prepare_elf64_ram_headers_callback(struct=
 resource *res, void *arg)
>  	return 0;
>  }
> =20
> -/* Prepare elf headers. Return addr and size */
> -static int prepare_elf_headers(void **addr, unsigned long *sz,
> -			       unsigned long *nr_mem_ranges)
> +int arch_crash_populate_cmem(struct crash_mem *cmem)
>  {
> +	return walk_system_ram_res(0, -1, cmem, prepare_elf64_ram_headers_callb=
ack);
> +}

[Severity: High]
This is a pre-existing issue, but could concurrent memory hotplug events
cause an out-of-bounds array write here?

In kernel/crash_core.c:crash_prepare_headers(), we first count the ranges
and allocate memory, then later populate it:

	max_nr_ranges =3D arch_get_system_nr_ranges();
	if (!max_nr_ranges)
		return -ENOMEM;

	cmem =3D alloc_cmem(max_nr_ranges);
	if (!cmem)
		return -ENOMEM;

	ret =3D arch_crash_populate_cmem(cmem);

Since mem_hotplug_lock isn't held during this sequence, a concurrent memory
hotplug event (like ACPI memory hot-add) can execute add_memory_resource()
and insert new System RAM resources into the iomem resource tree between the
count and the population steps.

If the number of newly added resources exceeds the padding added in
arch_get_system_nr_ranges(), prepare_elf64_ram_headers_callback()
can blindly write past the allocated bounds of cmem->ranges:

	cmem->ranges[cmem->nr_ranges].start =3D res->start;
	cmem->ranges[cmem->nr_ranges].end =3D res->end;
	cmem->nr_ranges++;

It doesn't appear to check against cmem->max_nr_ranges before incrementing
cmem->nr_ranges. Does this need an explicit bounds check or synchronization
to prevent potential heap corruption?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629094746.1918=
43-1-ruanjinjie@huawei.com?part=3D5

