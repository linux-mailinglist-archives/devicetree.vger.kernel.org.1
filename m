Return-Path: <devicetree+bounces-316899-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pWTYK8ZCQmrX2wkAu9opvQ
	(envelope-from <devicetree+bounces-316899-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:02:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 330B66D8989
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:02:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=U4RLHtRK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316899-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-316899-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 164B33029C10
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:58:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D86623B71DE;
	Mon, 29 Jun 2026 09:58:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD80F3B71A9
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 09:58:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782727097; cv=none; b=fg//nUXJ/ISfp69rAhSgv0HRVVTjrGXHjOP02FE7wPblhDd6vGtzuBNvEIZ6oTa089+CxXxaOKI1CSge4LcMzl4exS8hKPZZculfYc7HP+sVVlXTJXtQMgSuSzgAx05idzrAPlvwhtGCTqvd6Q7e/6kQGXCOuKiowGckqq/L3c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782727097; c=relaxed/simple;
	bh=Jw2UNO7uFXqogtZg+nC9TF+iSrrJ/t03lCJXxAAWrmU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GvI4VFyKAaGw0TRPr6MgzDYX2cl/dVuE7rUpZAM1JANE12pvSoh+7G596M+WETKggJPv9QMNdcIx0hsyrjkYc4zOZMHulU6GpmOqYkSjXeUh5heer0/xF34XcXwif48JvHkh331AXtfdoMH6oNqHNfQeZZ3IZwYjuED6ff6moFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4RLHtRK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 024021F000E9;
	Mon, 29 Jun 2026 09:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782727096;
	bh=wmMybmRo3anWAcyjcmE8QOSAt15RWAB1QkpEKbtQDco=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=U4RLHtRKYpfteRPIseqWHDA6xS2rM8UN6KiAyarMZMstCjBVU/u2ebP0VIOPhsI/T
	 TLwIt+Jn2jT2tx7XSOEiKQnIVtE73lp68B3s9RzC4lqdaCH8Xv3ovDt1Xgt4MgBQ1J
	 3LoVvOxOb//h1KuzqwjiBGQGHqsf2jD15IcXiQ88Y5inuKyLEzhECQaVE71Vm4iNwv
	 g57oiyxa1kaTRo82INXa+/C3qTGq5mm6psbXdlgk24iQz2KvOHfHDsUT37gR/k9vpW
	 BaxchFgwApA46G4+XmqpHHQg57duVMPIIZqOdQ/d4sFYc8SSG1sbIxl/T071rxqiQ8
	 Bdmewr+V8pYCw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v17 01/10] riscv: kexec_file: Fix crashk_low_res not
 exclude bug
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jinjie Ruan" <ruanjinjie@huawei.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260629094746.191843-2-ruanjinjie@huawei.com>
References: <20260629094746.191843-1-ruanjinjie@huawei.com>
 <20260629094746.191843-2-ruanjinjie@huawei.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 09:58:15 +0000
Message-Id: <20260629095816.024021F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316899-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ruanjinjie@huawei.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,huawei.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 330B66D8989

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] A Time-of-Check to Time-of-Use (TOCTOU) race condition between cou=
nting system RAM ranges and populating them can lead to a heap buffer overf=
low in `prepare_elf64_ram_headers_callback()`.
--

commit d55f858d6c28d0bc9c6e0e425332f4e2b5fea19b
Author: Jinjie Ruan <ruanjinjie@huawei.com>

riscv: kexec_file: Fix crashk_low_res not exclude bug

This commit fixes a bug in the riscv kdump implementation where the
crashk_low_res reserved ranges were not excluded from the crash kernel
memory. It updates the number of reserved ranges and excludes the
low memory range to prevent it from being exported through /proc/vmcore.

Link: https://github.com/chenjh005/kexec-tools/tree/build-test-riscv-v2
Link: https://lore.kernel.org/all/20230726175000.2536220-1-chenjiahao16@hua=
wei.com/

> diff --git a/arch/riscv/kernel/machine_kexec_file.c b/arch/riscv/kernel/m=
achine_kexec_file.c
> index 54e2d9552e930..3f7766057cac3 100644
> --- a/arch/riscv/kernel/machine_kexec_file.c
> +++ b/arch/riscv/kernel/machine_kexec_file.c
> @@ -61,7 +61,7 @@ static int prepare_elf_headers(void **addr, unsigned lo=
ng *sz)
>  	unsigned int nr_ranges;
>  	int ret;
> =20
> -	nr_ranges =3D 1; /* For exclusion of crashkernel region */
> +	nr_ranges =3D 2; /* For exclusion of crashkernel region */
>  	walk_system_ram_res(0, -1, &nr_ranges, get_nr_ram_ranges_callback);
> =20
>  	cmem =3D kmalloc_flex(*cmem, ranges, nr_ranges);

[Severity: High]
This is a pre-existing issue, but what happens if memory is hot-added
concurrently between the first and second calls to walk_system_ram_res()
in prepare_elf_headers()?

If the number of RAM ranges increases after the first walk computes the
allocation size, the second walk will invoke
prepare_elf64_ram_headers_callback() more times than the allocated capacity.

Looking at prepare_elf64_ram_headers_callback(), there is no bounds check
against cmem->max_nr_ranges:

static int prepare_elf64_ram_headers_callback(struct resource *res, void *a=
rg)
{
        struct crash_mem *cmem =3D arg;

        cmem->ranges[cmem->nr_ranges].start =3D res->start;
        cmem->ranges[cmem->nr_ranges].end =3D res->end;
        cmem->nr_ranges++;

        return 0;
}

Could this cause a heap buffer overflow if the number of new regions exceeds
the padding reserved for exclusion ranges?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629094746.1918=
43-1-ruanjinjie@huawei.com?part=3D1

