Return-Path: <devicetree+bounces-305084-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qKGhFIhhHWojZwkAu9opvQ
	(envelope-from <devicetree+bounces-305084-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 12:40:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3B461DB00
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 12:40:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C1C35300B076
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 10:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA656395AC0;
	Mon,  1 Jun 2026 10:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExPZIAuB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FACE38BF9C
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 10:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780308958; cv=none; b=HIBNbzw54VpmPjivf2rLbW0jC3FNEOWSyaymLjhJWe02KzQ7v5WiTsJQH1ySRmz+gGtFJeh8+nYcy7Am3uNJuZjjU6Krlce4bbignbiF1UsdKmwkaB0+5g/h8nEsXXoN5/wFnoUoio6n1EWegMqZOijTxCVyMiltl8yMb98xW38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780308958; c=relaxed/simple;
	bh=X9mKZdkXaI7yj5FqQXNqD24oS2TNmz52TUeY/sNBH3I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=I9em+JYthDZyzylq0fBp7UVO9wWbj0MNtJ6ApV2jeAmKBol+Kxi+XSGcvr/PrrCxk+eyPbZ5VgNYjWUXsGru/wxK3ExEvgS/tSxxdWkeS0rhB0cu0LJnEr3Ohl0XJxakY4E+ZRq1mseffDaZY0/RQ7nZzm8L9Tlp11Jo0mh/QNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExPZIAuB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93BF61F00893;
	Mon,  1 Jun 2026 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780308953;
	bh=RmUKldAJK+JDH7XdzzKlhAu5SsWar1/NaYKXDQVQEhM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ExPZIAuBWilMDADY3Je9rKZm4aAXdBQKE6Y60ZHRProrWHrAvc44+Hv1rDzvxTNRE
	 YJGjeo9+KoXFn89o+rxEyq6DUvdYPev8ALfGfAdtbHdpf1+AUNcYDcziQwYySamSmi
	 k1JzFBfXuDbWRQXfZjRrk3EJ24tE2lruS8Ht3Af2IzUKlGt7KLsdCFnlcpy95O2bDp
	 +FN+MTx+n0kBPxbOoeQ8a1uqkufJ1kEvChZqiUgknYqe7C/8UK9GMrg0fdfEryLnMW
	 /ZiLN7DzK5TFr2juaEqKOEMCJ5CQcW3sgoYbUwJ+gmNVknn961rao7/7/tdLpAeN2f
	 9ZH3yUydJuZog==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v15 06/23] kexec: Extract kexec_free_segment_cma() from
 kimage_free_cma()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jinjie Ruan" <ruanjinjie@huawei.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260601094805.2928614-7-ruanjinjie@huawei.com>
References: <20260601094805.2928614-7-ruanjinjie@huawei.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 10:15:53 +0000
Message-Id: <20260601101553.93BF61F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305084-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,huawei.com:email,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: AB3B461DB00
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] kimage_load_cma_segment() leaves the trailing padding of CMA segme=
nts uninitialized, causing kexec purgatory SHA256 verification failures.
--

commit a9d6d83b4aab10c874e37c5a865249c7645d1e82
Author: Jinjie Ruan <ruanjinjie@huawei.com>

kexec: Extract kexec_free_segment_cma() from kimage_free_cma()

This patch extracts the single-pass CMA release logic into a dedicated expo=
rted
helper kexec_free_segment_cma(). It refactors the main kimage_free_cma() to
invoke this helper sequentially to maintain backward compatibility while
expanding single-slot flexibility.

> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
> index a43d2da0fe3e7..9195f81e53c48 100644
> --- a/kernel/kexec_core.c
> +++ b/kernel/kexec_core.c
[ ... ]
> -static void kimage_free_cma(struct kimage *image)
> +void kexec_free_segment_cma(struct kimage *image, unsigned long idx)
>  {
> -	unsigned long i;
> +	u32 nr_pages =3D image->segment[idx].memsz >> PAGE_SHIFT;
> +	struct page *cma =3D image->segment_cma[idx];
[ ... ]
> +	arch_kexec_pre_free_pages(page_address(cma), nr_pages);
> +	dma_release_from_contiguous(NULL, cma, nr_pages);
> +	image->segment_cma[idx] =3D NULL;
> +}

While reviewing this patch, I noticed a pre-existing issue in the related
kimage_load_cma_segment() function in the same file:

kernel/kexec_core.c:kimage_load_cma_segment() {
    ...
	/* Then copy from source buffer to the CMA one */
	while (mbytes) {
		size_t uchunk, mchunk;
    ...
		ptr    +=3D mchunk;
		mbytes -=3D mchunk;

		cond_resched();
	}

	/* Clear any remainder */
	memset(ptr, 0, mbytes);
    ...
}

[Severity: High]
This isn't a bug introduced by this patch, but does this memset actually cl=
ear
the trailing padding?

The while loop terminates when mbytes reaches 0, which translates the memset
to memset(ptr, 0, 0). Because kexec purgatory calculates the SHA256 digest =
of
the entire segment assuming the padding is zeroed, could the uninitialized
memory lead to a digest mismatch and cause kexec boot failures?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601094805.2928=
614-1-ruanjinjie@huawei.com?part=3D6

