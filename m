Return-Path: <devicetree+bounces-300649-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCbXKei0DWoT2QUAu9opvQ
	(envelope-from <devicetree+bounces-300649-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 15:19:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BBD58EA95
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 15:19:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 502D1309EE38
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 13:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B65203DFC60;
	Wed, 20 May 2026 13:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mlf4BpR/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5576C18A92F
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 13:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779282616; cv=none; b=BjZQMUpTWkTcvISo2A/oVwEtws+WRy76sLaT+Na1AakfqmjFNJ693hC91KVLIB95L8jcpYDOae2XArXIGB3BJykjqdsiocj5lvQbei6rAK83ujMpVx0GgcLUrmnvcmCV/jta4jlzg+ProJdWsEHNjR95S1o736/+L06mZbH5kec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779282616; c=relaxed/simple;
	bh=n1Woqfj+ZQRSmAN/Z77KEYG5XpBP2Q+PEFvLzS+eQ3g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fyM7uBbYHM6tcFpq4mnKLXsk8Eug+Gmr3XYaOctaHP4FvdTbIQty056Cv+4e8eKiDWbjRLqqOp67HLjtILUKvytZPEwS8R+F5Qy5AOuhex1HtA1dJO3Zs70Zn7RuE35fhEF3UrqeKzFBGTySt0EmdOfzfcgLlsdGBxPMP0bneXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mlf4BpR/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AADB41F000E9;
	Wed, 20 May 2026 13:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779282613;
	bh=sbuzNoheUphYFCY3oHKky5E0BnvfM+xA1Sj2wdIZy4Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Mlf4BpR/0aFDrGNjBTMKxD0Em0ZA4rTPWbt5p/5hp2hMZOT/Es7znZd/nNEPyNBpp
	 AljaNQqiJWBjU29dLHXHTUKjnSvGx6159QxpHMIZW6wC6MZfmkM2Pm7BZSWc8Je2JC
	 /n6fnR448cafpsCr/Y8mJv1qEBbPi34BuezWAODCf2Wksi/vGTpFik9YMrrlguU01w
	 Xjylz1oa0xXSZgiM26NfqhpmDsAef1/k6N8q6/UPT/abs1FbpXDQEiMh8S3Rn/XE5+
	 41l3VqrjsxQzW0EQ0n2iu0C5BghHMM7xLji1mf1JEjdSvcN6ZWy2Eky3/8fdzqUyG7
	 HwpWoU1B+Qqag==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 8/8] loongarch: kdump: exclude non-dumpable reserved
 memory regions from vmcore
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wandun Chen" <chenwandun1@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260520091844.592753-9-chenwandun@lixiang.com>
References: <20260520091844.592753-9-chenwandun@lixiang.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 13:10:13 +0000
Message-Id: <20260520131013.AADB41F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300649-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 20BBD58EA95
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Lockless iteration of memblock.memory during kexec_file_load can r=
ace with memory hotplug, leading to Use-After-Free (UAF) and out-of-bounds =
writes.
--

commit 940dd878bcc6cf760efd15c48a5b87206c6b6d94
Author: Wandun Chen <chenwandun1@gmail.com>

loongarch: kdump: exclude non-dumpable reserved memory regions from vmcore

This commit applies non-dumpable reserved memory filtering to LoongArch
kdump. It uses of_reserved_mem_kdump_exclude() to drop flagged regions and
of_reserved_mem_kdump_nr_ranges() to pre-size the crash_mem array.

> diff --git a/arch/loongarch/kernel/machine_kexec_file.c b/arch/loongarch/=
kernel/machine_kexec_file.c
> index 5584b798ba464..c5cead362d2db 100644
> --- a/arch/loongarch/kernel/machine_kexec_file.c
> +++ b/arch/loongarch/kernel/machine_kexec_file.c

[ ... ]

> @@ -67,6 +68,7 @@ static int prepare_elf_headers(void **addr, unsigned lo=
ng *sz)
>  	nr_ranges =3D 2; /* for exclusion of crashkernel region */
>  	for_each_mem_range(i, &start, &end)
>  		nr_ranges++;

[Severity: High]
This isn't a bug introduced by this patch, but can this lockless iteration
of memblock.memory race with memory hotplug?

The kexec_file_load syscall enters prepare_elf_headers() without holding
get_online_mems() or any lock that serializes against CPU/memory hotplug.

Inside prepare_elf_headers(), for_each_mem_range() locklessly iterates over
the memblock.memory regions twice: first to count the regions (nr_ranges),
and second to populate the cmem->ranges array.

On architectures that keep memblock post-boot (like LoongArch with
CONFIG_ARCH_KEEP_MEMBLOCK), a concurrent memory hotplug event
(e.g., add_memory_resource()) can mutate memblock.memory via
memblock_add_node().

If memblock.memory.cnt reaches its capacity, memblock_add_node() invokes
memblock_double_array(), which allocates a larger array, copies the
contents, and frees the old array. The concurrent for_each_mem_range() loop
could then access the freed array, resulting in a use-after-free.

Additionally, if memblock.memory.cnt increases between the first counting
loop and the second population loop, cmem->nr_ranges will exceed the
allocated size of the flex array, causing an out-of-bounds write into the
cmem->ranges array.

> +	nr_ranges +=3D of_reserved_mem_kdump_nr_ranges();
> =20
>  	cmem =3D kmalloc_flex(*cmem, ranges, nr_ranges);
>  	if (!cmem)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260520091844.5927=
53-1-chenwandun@lixiang.com?part=3D8

