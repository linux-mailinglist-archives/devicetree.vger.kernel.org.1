Return-Path: <devicetree+bounces-317535-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sLYNGI6MQ2qvbAoAu9opvQ
	(envelope-from <devicetree+bounces-317535-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:29:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B695E6E230C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:29:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IRm3ReJ8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317535-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317535-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A6E55309B2CD
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:22:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63A2E36213E;
	Tue, 30 Jun 2026 09:22:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D7A3815D4
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 09:22:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811371; cv=none; b=bBl/6SuwNxumZ0xHJ+XH6PdQo/UK/9nn/W39ID+8wDLhThMR5Iy5bsD4+1OhuJ+ra5/nLPDvSy7mIeeMyy6ow91R8cMfOzS2+KWDAhnzWcNtBKclyhkHjXFlKQNuArEbKKCQAuonIi9PhmFVCuMClkmQWyqA2ryMHJSBgtVy6yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811371; c=relaxed/simple;
	bh=AYBarYRYIwk+59883gPQSLR1CFBQ2/1ARfP5k9h/QoE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BtjK/M2vQUxZ8bwSrKbSG2U0FAYvx/qHs+xAcxFUgP+1ffiV9Uut7oLuPd4cf5gZ4WQRJ6G0dq/64h28XMgLYCsbt+zS/TOkuIh0MQzFqebcowVMsPCYe6GSpJSGsJYl4qfwyb/78UHmVs4Srld0/J5QpyYSXAXu3D0aFULMsXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRm3ReJ8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85B991F00A3A;
	Tue, 30 Jun 2026 09:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782811369;
	bh=sbhlNkRMZcS8MzQF5Rya3mWM2ceczFeJ7ICQhV7n4TQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IRm3ReJ8A1sBL8bwU0UoACDgJLugPRjQhi2O98BT4+R0qnXbe2ZOwYm07hCcthnb3
	 ZTKByktL0B9KUXoNPW3t5Lf/tGHYNJxEtgRZ5+SSbKkEx7NFvpD4Ggi+VQL3nWtbjU
	 cHvbAylp/04KcO0Cz4RWF+KDzKtoTCVNjEJz4WmhMytBN1Q/QM9BZF4pK7PdA0DcC3
	 tICn/DIbfbpFHi9Sp5fRwlRR/2vJN9PdhxIak5BP+fjZPe4psXUDj/HdHChRAMGXKx
	 EittpMKDan6nQHu77euFePBODeQYyAekxscvAWKUGljvIWaGtlrH20kdTufUBtdM45
	 9GzSbk0ZXArZQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 09/10] riscv: kdump: exclude non-dumpable reserved
 memory regions from vmcore
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wandun Chen" <chenwandun1@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260630074715.4126796-10-chenwandun1@gmail.com>
References: <20260630074715.4126796-1-chenwandun1@gmail.com>
 <20260630074715.4126796-10-chenwandun1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 09:22:48 +0000
Message-Id: <20260630092249.85B991F00A3A@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317535-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:chenwandun1@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B695E6E230C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Concurrent memory hotplug between two `walk_system_ram_res()` call=
s creates a race condition leading to an out-of-bounds array write in `prep=
are_elf64_ram_headers_callback()`.
--

commit a4a73b4654fd97d90e65198367a18f9dc30631b2
Author: Wandun Chen <chenwandun@lixiang.com>

riscv: kdump: exclude non-dumpable reserved memory regions from vmcore

This commit applies non-dumpable reserved memory filtering to RISC-V kdump,
similar to arm64. It excludes flagged regions from the elfcorehdr PT_LOAD
segments and pre-sizes the crash_mem array accordingly.

> diff --git a/arch/riscv/kernel/machine_kexec_file.c b/arch/riscv/kernel/m=
achine_kexec_file.c
> index 59d4bbc848a89..25359d583bc3b 100644
> --- a/arch/riscv/kernel/machine_kexec_file.c
> +++ b/arch/riscv/kernel/machine_kexec_file.c
[ ... ]
> @@ -64,6 +65,7 @@ static int prepare_elf_headers(void **addr, unsigned lo=
ng *sz)
> =20
>  	nr_ranges =3D 1; /* For exclusion of crashkernel region */
>  	walk_system_ram_res(0, -1, &nr_ranges, get_nr_ram_ranges_callback);
> +	nr_ranges +=3D of_reserved_mem_kdump_nr_ranges();
> =20
>  	cmem =3D kmalloc_flex(*cmem, ranges, nr_ranges);
>  	if (!cmem)

[Severity: High]
This is a pre-existing issue, but is it possible for a memory hotplug event
to occur between counting the ranges here and when the array is actually
populated?

In prepare_elf_headers(), the code counts the memory ranges to allocate
the cmem array, but a concurrent memory hot-add could occur before the
subsequent walk_system_ram_res() call populates it:

arch/riscv/kernel/machine_kexec_file.c:prepare_elf_headers() {
    ...
    walk_system_ram_res(0, -1, &nr_ranges, get_nr_ram_ranges_callback);
    ...
    ret =3D walk_system_ram_res(0, -1, cmem, prepare_elf64_ram_headers_call=
back);
    ...
}

If the number of ranges increases, prepare_elf64_ram_headers_callback()
will write past the end of the flexible array since it doesn't verify
that cmem->nr_ranges is less than cmem->max_nr_ranges:

arch/riscv/kernel/machine_kexec_file.c:prepare_elf64_ram_headers_callback()=
 {
    ...
    cmem->ranges[cmem->nr_ranges].start =3D res->start;
    cmem->ranges[cmem->nr_ranges].end =3D res->end;
    cmem->nr_ranges++;
    ...
}

Could this missing bounds check lead to an out-of-bounds heap write?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630074715.4126=
796-1-chenwandun1@gmail.com?part=3D9

