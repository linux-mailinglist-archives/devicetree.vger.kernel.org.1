Return-Path: <devicetree+bounces-316947-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id J96rApNPQmpi4gkAu9opvQ
	(envelope-from <devicetree+bounces-316947-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:57:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9F46D91E5
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:57:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cYYNvnuy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316947-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316947-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0ACD2302D528
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 10:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3095D3644A1;
	Mon, 29 Jun 2026 10:54:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193BC363C7F
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 10:53:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782730440; cv=none; b=OSrhCVOIuwgJJvYFyL73NUEWV93gmgpW/hL3NQFZB8po0/XwgMjCXYPZh3r3eRQMBnZZMrRB9vg83aurZFxAf/c1FD+wNx1V/yPwgAIp3G5uTwm6plWusMC+YQevq7SmiRRIK85vX3wzdPJnlfm/gN0jUnTXR5Kw/CePOAuBbjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782730440; c=relaxed/simple;
	bh=fHhOn9Fjn+W9vCoIvamkp0VdiCu2lLG67L3x9lsjevA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=swnnr+PmmlTHOitgDS0JM45Vb80qmhO5fVDRSSPWshsg6T84hYcsjFbtdwBfMcFab9sxEwmLpsA8wmPLbNwspedhjOmcg+Lgswpt/dEHjmKj7djcqXd1syr1NdQXVJ489/k8YEaSFMWYadznM42SHbNR7LB3qR6Hi84J1b6ExUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYYNvnuy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72D6D1F00A3A;
	Mon, 29 Jun 2026 10:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782730438;
	bh=UXAJDEa4HeP0+L1tiRrO1nNdY4zII6RWP6Gy3g4XAEo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cYYNvnuyeo/QX0bGoTd20K23m808N1LME0kqsU4L9Kgdbd4hgM0GcOMyB1gVmfguh
	 5Y+IIi/yfe1+BFas4bpuvl8dfql9hwr0R4KKcs+2sMt2y0ynJIi0GvDeqQx5HGu3ze
	 R9+kyFPZ2oAzLsceEpkDHy+bIcq5sLUR5ugsCwWOl7r2x/VRdf1X3z3EoH7SdMPofP
	 CrPeuLnFGfd/nTdWkBtLvfpllCyTSeGDtB0/hGbSIrP+b0riFcHzYIEfoVu/C2aYO+
	 AxqsdwLjK7STutq8l9CzqPtkGZ65LcwDYdU6WZ9Wh4gHlyvfMcdmnVaCASOEOt0lNO
	 uDcDXwc8CVPUw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v17 06/10] riscv: kexec_file: Use
 crash_prepare_headers() helper to simplify code
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jinjie Ruan" <ruanjinjie@huawei.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260629094746.191843-7-ruanjinjie@huawei.com>
References: <20260629094746.191843-1-ruanjinjie@huawei.com>
 <20260629094746.191843-7-ruanjinjie@huawei.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 10:53:58 +0000
Message-Id: <20260629105358.72D6D1F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-316947-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ruanjinjie@huawei.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,huawei.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4D9F46D91E5

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Concurrent memory hotplug during kexec file load causes an out-of-=
bounds array write in `prepare_elf64_ram_headers_callback` due to a TOCTOU =
mismatch.
--

commit a0fbb79c71ece58936999721df807081917d41c0
Author: Jinjie Ruan <ruanjinjie@huawei.com>

riscv: kexec_file: Use crash_prepare_headers() helper to simplify code

This commit refactors the crash core code to use crash_prepare_headers() to
reduce code duplication. It introduces arch_get_system_nr_ranges() to count
the max memory ranges and arch_crash_populate_cmem() to collect and fill
them into cmem.

> diff --git a/arch/riscv/kernel/machine_kexec_file.c b/arch/riscv/kernel/m=
achine_kexec_file.c
> index 3f7766057cac3..439cbc50dfa69 100644
> --- a/arch/riscv/kernel/machine_kexec_file.c
> +++ b/arch/riscv/kernel/machine_kexec_file.c
> @@ -44,6 +44,15 @@ static int get_nr_ram_ranges_callback(struct resource =
*res, void *arg)
>  	return 0;
>  }
> =20
> +unsigned int arch_get_system_nr_ranges(void)
> +{
> +	unsigned int nr_ranges =3D 2; /* For exclusion of crashkernel region */
> +
> +	walk_system_ram_res(0, -1, &nr_ranges, get_nr_ram_ranges_callback);
> +
> +	return nr_ranges;
> +}
> +
[ ... ]
> @@ -55,41 +64,9 @@ static int prepare_elf64_ram_headers_callback(struct r=
esource *res, void *arg)
>  	return 0;
>  }
> =20
> -static int prepare_elf_headers(void **addr, unsigned long *sz)
> +int arch_crash_populate_cmem(struct crash_mem *cmem)
>  {
> +	return walk_system_ram_res(0, -1, cmem, prepare_elf64_ram_headers_callb=
ack);
>  }

[Severity: High]
This isn't a bug introduced by this patch, but is there a pre-existing race=
=20
condition with concurrent memory hotplug here?

When kexec_file_load runs, arch_get_system_nr_ranges() counts the ranges to
allocate the cmem array in crash_prepare_headers(), and then
arch_crash_populate_cmem() fills it. Since this two-pass iteration is not
synchronized against memory hot-add events, could a new memory range be
added between the two passes?

If that happens, the number of discovered ranges will exceed the capacity
allocated for cmem. Looking at prepare_elf64_ram_headers_callback(), it
unconditionally writes to the array:

	cmem->ranges[cmem->nr_ranges].start =3D res->start;
	cmem->ranges[cmem->nr_ranges].end =3D res->end;
	cmem->nr_ranges++;

Could this result in an out-of-bounds write since it doesn't check against
cmem->max_nr_ranges during the second pass?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629094746.1918=
43-1-ruanjinjie@huawei.com?part=3D6

