Return-Path: <devicetree+bounces-300590-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qD6QJGelDWqh0wUAu9opvQ
	(envelope-from <devicetree+bounces-300590-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 14:13:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E750258D69D
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 14:13:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A89D631C56F6
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:02:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C19653E0C70;
	Wed, 20 May 2026 12:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmhiW9ox"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B0B3E0C67
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 12:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779278524; cv=none; b=mTSBxM+2vWIbvXpmCj1hBtx8gNyZmPjZGujZo3etVtYIEg9b0tzYKmXUqQI+/zyruQuYrzFBXom8CLY3JMuE7xdm111zZtAgD6OInA7JMF7Ax6MnBy8RAP1bvJo0g6yVowtVeabM8/Si0qSPAPuavWop22O4cRR/IN6oqRMtuNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779278524; c=relaxed/simple;
	bh=BCzxPB4ojBYQzI9r4A+6DIA2hOF5VYDPqfE7/YthD1o=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XJgrlVHxSF2nlvmJ1GL+9Sg3h4ulhIDPej4UiaLLs+F403LcgB0jq/soPYO/SGny1IT/qP5iNIki4S3/AqDfBG39LmZI1HBY3fCoPm8c1Z3sYQ3+hx60/ckpbGm1WJel4zfK8WhXT9TNlyA3TWsDLBZNCwz5eR4Bk0sxzbf/7bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmhiW9ox; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20B7F1F000E9;
	Wed, 20 May 2026 12:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779278523;
	bh=bY38RAUE/SPUc5VJISXvC/1lBDIRpwGUshE7/6YPpII=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZmhiW9oxtXTSPhiY8ugNc7tdNm2DrrcaVULNWikYqKv/9Fg1AeHreI15xUOedFz1+
	 xmBw6xIuKjNRUf9bh/P1RtpGhN7lHn7z69yuB7bb3li7rSs2MDyXeMjGcVcKpF+7XG
	 UtclRAM7qGur44xuqU++OsC7OknZTvno2GqlLGpkjVeDXHVpPr9ZGrWscJEO/dvNI6
	 E11+ZowlkYdvIlehisExGaPGRHnMEWCRjjKNTg1mILQ8TEikkgOOROg4XBnaNxL/1L
	 eDV4AFS9h0EYhqGDdGg6SeIalj+RPRAmC+qqgo7ajuBfox+KMKAX4JQzW9LA2BfZz9
	 MTO0qJo35L3eg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 6/8] arm64: kdump: exclude non-dumpable reserved
 memory regions from vmcore
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wandun Chen" <chenwandun1@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260520091844.592753-7-chenwandun@lixiang.com>
References: <20260520091844.592753-7-chenwandun@lixiang.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 12:02:02 +0000
Message-Id: <20260520120203.20B7F1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300590-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: E750258D69D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Lockless traversal of `memblock.memory` combined with a Time-of-Ch=
eck to Time-of-Use (TOCTOU) pattern can cause an out-of-bounds array write =
if memory hotplug runs concurrently.
--

commit 9b53a1de1ee9b0da26c3c33056f291e1bba1171e
Author: Wandun Chen <chenwandun1@gmail.com>

arm64: kdump: exclude non-dumpable reserved memory regions from vmcore

Reserved memory regions are excluded from vmcore by default unless marked
dumpable. This patch honors the dumpable flag to filter out device firmware
regions reserved via device tree to reduce vmcore size.

> diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/m=
achine_kexec_file.c
> index e31fabed378a5..1d65320c6ba48 100644
> --- a/arch/arm64/kernel/machine_kexec_file.c
> +++ b/arch/arm64/kernel/machine_kexec_file.c
[ ... ]
> @@ -51,6 +52,7 @@ static int prepare_elf_headers(void **addr, unsigned lo=
ng *sz)
>  	nr_ranges =3D 2; /* for exclusion of crashkernel region */
>  	for_each_mem_range(i, &start, &end)
>  		nr_ranges++;

[Severity: High]
This is a pre-existing issue, but can this lockless traversal of
memblock.memory result in an out-of-bounds write if memory hotplug runs
concurrently?

The prepare_elf_headers() function iterates over memblock.memory twice:
first here to count the regions for sizing the cmem allocation, and then
later to populate cmem->ranges. This runs during the kexec_file_load
syscall which holds kexec_mutex but not memory hotplug locks like
device_hotplug_lock.

If a memory hotplug operation (e.g., via sysfs) occurs between the two
loops, memblock_add_node() could resize memblock.memory.regions via
memblock_double_array(). This would free the old array and increase the
region count.

Could this cause the second loop to iterate over a freed array and write
past the end of the allocated cmem->ranges array?

> +	nr_ranges +=3D of_reserved_mem_kdump_nr_ranges();
> =20
>  	cmem =3D kmalloc_flex(*cmem, ranges, nr_ranges);
>  	if (!cmem)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260520091844.5927=
53-1-chenwandun@lixiang.com?part=3D6

