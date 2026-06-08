Return-Path: <devicetree+bounces-308080-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BIIdCCl3JmqPWwIAu9opvQ
	(envelope-from <devicetree+bounces-308080-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 10:02:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E90C653C75
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 10:02:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ivsxJxqp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308080-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308080-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2955C300A10A
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 07:56:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADBAD391835;
	Mon,  8 Jun 2026 07:56:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BAFF38F65B
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 07:56:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780905389; cv=none; b=u4ssxq47H2hLYWR8Yl45n0sTQNYAkhYoYjW3khfE1yw3Wo88WArGhk8yX/sB9HPI//gLlGJjXlis6DLjp5i0/8K/7B4GYbDTB7iCIzwxHzPVyWqPfODpmR5oY06G5KZ5Fac9NuSI14gxcRcOmsg4fxG3bMIqVVH7YA29ZqC7l+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780905389; c=relaxed/simple;
	bh=8/rPOc4azRljcpyYpXd+eWHCx1/gqf3YNQDhu4ei+aA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OSeDyqUvDbjl6KZe6tlTqGDcL4YStYo5CivkXidNc9ZThALAVp2keDytgsZh9iHFSm5eJtMrSWaQtKQcJJa8NP6pCv1wFNa/pEP4VVvdIx0P/Sm2lcke7O/GRds+tEThDWmcr8udKdY9tRLHHFLi/0zVC24Prgx3fA0ELvVzsSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivsxJxqp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 039FC1F00893;
	Mon,  8 Jun 2026 07:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780905388;
	bh=qNIsPQn5ftvKbnZQx1h9uyWGIndDcbIvdN8MLSEUQU4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ivsxJxqpLq29tV85k4jq2BQW741I4X/yfzkMsAHy1+7k+BhlOGFdlBXubpRQqtRPO
	 SRtpvI8uxESNu8gw22QGDJSJuFqQcA+0wMAHMYeNrzbLG47XMia6Cf44RyEZZ0AWiW
	 Qn5msFs7LhLNi2qkR4TSHD/G8fDWrDQcEV8q2Gi219rq2MmHFe+EnO2lF9lDnJaXH1
	 aQmENVwIFflyHt6YTEcWq2wHd1ofST0r0Bac8gFDUe2TRdRwSF4I968jbiCENTw4hG
	 M/J+X5lTrXhPVgqK9Erc4Qoan0KOTz2l5M54p4JcavGpen3tfYtD2sBykPrU8NodTD
	 KWzJ0lWIuw7SA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v16 04/10] arm64: kexec_file: Use
 crash_prepare_headers() helper to simplify code
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jinjie Ruan" <ruanjinjie@huawei.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260608073459.3119290-5-ruanjinjie@huawei.com>
References: <20260608073459.3119290-5-ruanjinjie@huawei.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 07:56:27 +0000
Message-Id: <20260608075628.039FC1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308080-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:ruanjinjie@huawei.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6E90C653C75

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Lockless memblock iteration in `arch_get_system_nr_ranges()` and `=
arch_crash_populate_cmem()` can lead to TOCTOU buffer overflow and Use-Afte=
r-Free due to concurrent memory hotplug.
--

commit 3445143d0dcc2150e57d4b72a58250e2bbaf7ea7
Author: Jinjie Ruan <ruanjinjie@huawei.com>

arm64: kexec_file: Use crash_prepare_headers() helper to simplify code

This commit replaces the existing prepare_elf_headers() with the newly
introduced crash_prepare_headers() function. It implements the two required
architecture functions, arch_get_system_nr_ranges() and
arch_crash_populate_cmem(), to traverse and populate memory ranges.

> diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/m=
achine_kexec_file.c
> index e31fabed378a5..b019b31df48cb 100644
> --- a/arch/arm64/kernel/machine_kexec_file.c
> +++ b/arch/arm64/kernel/machine_kexec_file.c
[ ... ]
> -static int prepare_elf_headers(void **addr, unsigned long *sz)
> +unsigned int arch_get_system_nr_ranges(void)
>  {
> -	struct crash_mem *cmem;
> -	unsigned int nr_ranges;
> -	int ret;
> -	u64 i;
> +	unsigned int nr_ranges =3D 2; /* for exclusion of crashkernel region */
>  	phys_addr_t start, end;
> +	u64 i;
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
> +	u64 i;
> =20
> -	cmem->max_nr_ranges =3D nr_ranges;
> -	cmem->nr_ranges =3D 0;
>  	for_each_mem_range(i, &start, &end) {
>  		cmem->ranges[cmem->nr_ranges].start =3D start;
>  		cmem->ranges[cmem->nr_ranges].end =3D end - 1;
>  		cmem->nr_ranges++;
>  	}

[Severity: High]
This isn't a bug introduced by this patch, but could this lockless memblock
iteration lead to a TOCTOU buffer overflow or use-after-free during
concurrent memory hotplug?

arch_get_system_nr_ranges() locklessly calculates the max_nr_ranges used to
allocate cmem. If memory is hot-plugged between this calculation and the
array population here in arch_crash_populate_cmem(), could the second loop
encounter more regions than initially allocated?=20

Because there is no bounds check against cmem->max_nr_ranges, could this
result in an out-of-bounds write past the flexible cmem->ranges array?

Additionally, memory hotplug calls memblock_add_node(), which can invoke
memblock_double_array(). This function reallocates memblock.memory.regions
and frees the old array. If this reallocation occurs while
for_each_mem_range() is iterating in either function, could the lockless
iteration dereference a freed regions array?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608073459.3119=
290-1-ruanjinjie@huawei.com?part=3D4

