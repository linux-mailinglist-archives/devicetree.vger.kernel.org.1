Return-Path: <devicetree+bounces-317506-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zS8kGvyHQ2qRaQoAu9opvQ
	(envelope-from <devicetree+bounces-317506-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:10:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BAD6E1F3F
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:10:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=atqXPlaB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317506-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317506-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1B61A30435BB
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AF2F3E6DD4;
	Tue, 30 Jun 2026 09:04:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4EF3E5A14
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 09:04:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782810254; cv=none; b=dYWXnEjNDTsRJZDJAb0lSbZsBOciu2uRPOx51qns7fVEvKzXALLtaTwQrDYaWwSU0gvb6j75hB5L6ynj/Vpu7lq7f3pxLdDU7ZSh3ymH/bvAcG31z5QOu6k3bqNWYNJjYN+CiHJU+oRR0YQg3lkv4Cd6Iutt7w0KDfTeh6erImc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782810254; c=relaxed/simple;
	bh=ishNFSa2/fAzAehpD+s3tFppiuJZ4jjTpVbnkdEwkKc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=c07g20PzkUmxUYCU0Q1IV6HPTMRLGQgFOCzTEJy+plzfQJr3RfYIM/udyBFa7SFeztcgWrkl87cgvr2UP5rgWx8T0SvOt+Y5E17tcjhJFG3Tv6BtpA2fNqJ+AuqoFD9i2QPnliotXAnetjpbqfG00SfbmlTANmF23p+P8/YBTl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atqXPlaB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A4051F000E9;
	Tue, 30 Jun 2026 09:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782810252;
	bh=xK19dFfrbuDDxAMpI6dgOiL3JqfUCBrZGIpbXLstX9M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=atqXPlaByfzt83jxs1Pz1znD89eVPJaE/Fs4BjOHnaa0NvIzfV4alUR8IKK5wa5i1
	 pI7m4dzEvILfSwcZbtCEiuG8hMmhlATOMbjVHLtYxM0Odk1gJS3vprbSjxIoxCl3Si
	 LGRd6Wp7TEdb9D/iQXr522N0ZBb7ogFfwCt3Yeqkv8d8spzABMTh6fq/EC0pyQGFzK
	 E9kloIg5bYTj0PjB+wUBqx/kNs7DzS1HEl25xDIgSX3gMtbRbyQC1PN/6DX5EzPl92
	 HX3jUxSdutU3OmjORj+/3UyxemYptSHCXhtXsSbp1YlE7X1dMUZIOKoo8SuCc8FZQQ
	 PmNxWdMqhhTWQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 08/10] arm64: kdump: exclude non-dumpable reserved
 memory regions from vmcore
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wandun Chen" <chenwandun1@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260630074715.4126796-9-chenwandun1@gmail.com>
References: <20260630074715.4126796-1-chenwandun1@gmail.com>
 <20260630074715.4126796-9-chenwandun1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 09:04:12 +0000
Message-Id: <20260630090412.6A4051F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317506-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:chenwandun1@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,lixiang.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C8BAD6E1F3F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Preexisting TOCTOU race in prepare_elf_headers() during memblock i=
teration can cause an out-of-bounds array write due to concurrent memory ho=
tplug.
--

commit 66936af0a692eab34029fe4f8b5ede43875e861f
Author: Wandun Chen <chenwandun@lixiang.com>
Date:   Tue Jun 30 07:47:12 2026 +0000

arm64: kdump: exclude non-dumpable reserved memory regions from vmcore
   =20
This commit excludes reserved memory regions from the vmcore unless they are
explicitly marked as dumpable. It uses device tree reservations to filter
out device firmware regions, reducing the size of the vmcore. The array
size is adjusted to accommodate these exclusions.

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
> +	nr_ranges +=3D of_reserved_mem_kdump_nr_ranges();
> =20
>  	cmem =3D kmalloc_flex(*cmem, ranges, nr_ranges);
>  	if (!cmem)

[Severity: High]
This isn't a bug introduced by this patch, but could this allocation lead to
an out-of-bounds write due to a time-of-check to time-of-use race?

In prepare_elf_headers(), the code counts the memory ranges with a first
for_each_mem_range() loop, allocates cmem based on that count, and then
populates cmem->ranges in a second for_each_mem_range() loop further down.

Because sys_kexec_file_load() does not hold the memory hotplug lock, a
concurrent memory hotplug operation could increase the number of ranges
between the two loops.

Since the second loop does not verify if cmem->nr_ranges exceeds
cmem->max_nr_ranges, could it write past the allocated array bounds?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630074715.4126=
796-1-chenwandun1@gmail.com?part=3D8

