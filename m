Return-Path: <devicetree+bounces-300508-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JxcOp6PDWoIzQUAu9opvQ
	(envelope-from <devicetree+bounces-300508-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:40:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A52458BE32
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:40:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B0DD3306AD1E
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 10:37:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DDA63D8119;
	Wed, 20 May 2026 10:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4xKdNfy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1703A7F75
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 10:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779273456; cv=none; b=TaSS1Vi+1XyR9MuXPEyf1GG1H/2ThBaeJl+WRsCZ31Xc3VlcX6FrEz+6jbfe0tZbGsBQTrgy8vC0ttAP7yW+T19sT0/4FUGGwDs4w0F16oOjbIIS9iprJ32QWWS+mES3a4+SFy/6ub7Qf6dCARMYSB05WCkQz9+Q1gLhOI14TB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779273456; c=relaxed/simple;
	bh=b1KS4ve7nKCZnietzA3JqZt5Sc/XivNo+XmABNMV1yg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=rz6L9GAtotXelEPN/4P6bnG+ItHAu2VifPHoBddTZJOiOsrZtib6uyti6NKErFPCxsqZmZYD5EBwJbP3NlPahhqHzOqVfQc2Sq6W3yza3e6CocQ787LbU0FYS+60eb8L5Wup7oXXVww6+vrg86OGuavWKA7+nqM5EDjc4eo79L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4xKdNfy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CDFA1F000E9;
	Wed, 20 May 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779273454;
	bh=Wo5xbYL+itlqTvl7Ze4s4sO7SYGNulrf+hWbS5SGRVs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=I4xKdNfykyy8WG9EJfc4LSXD4ZoZWi3ubi5ZM9pyt59y/RHAOmSGh63QfL1a/chAM
	 +dkhG9Qvf2wht/3qOo7Rvog/FBzmtRLBkjdGnUaKDpYNwddE+YJOrNCeqF/jpCEKPj
	 1lw1sW357clg1p6/qehnme0aPfZFxNwS76yxJmtunvTNnASWDFyP7K2laIJ777N+Ul
	 /cDnXQ7N3NyJ7njzUGpduI1wkXUPZRCoqQE+emenoc90jTywE7eZUV4tX9Qw9WiTIG
	 AIztDSFGAvGZc/kZYcLjYip6EUif5wzBecDNtceNTHA+nJl+h5A0YSNmuo7PZIb2iA
	 1+vDA2LaTglaQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/8] of: reserved_mem: save /memreserve/ entries into
 the reserved_mem array
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wandun Chen" <chenwandun1@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260520091844.592753-5-chenwandun@lixiang.com>
References: <20260520091844.592753-5-chenwandun@lixiang.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 10:37:33 +0000
Message-Id: <20260520103734.2CDFA1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-300508-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 6A52458BE32
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Out-of-bounds write to the statically allocated `reserved_mem_arra=
y` due to inflated `total_reserved_mem_cnt` without guaranteed array reallo=
cation.
--

commit cac834a48f61205ebaa2a6eaf1bc2f735c0a6c46
Author: Wandun Chen <chenwandun1@gmail.com>

of: reserved_mem: save /memreserve/ entries into the reserved_mem array

This commit saves /memreserve/ entries into the reserved_mem array so they
can be excluded from kdump vmcores. Overlapping entries are marked as dumpa=
ble
to ensure useful crash analysis data is retained.

> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 82f7327c59ea9..d2bcaf149fe81 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
[ ... ]
> @@ -516,7 +517,9 @@ void __init early_init_fdt_scan_reserved_mem(void)
>  		if (!size)
>  			break;
>  		memblock_reserve(base, size);
> +		nr_memreserve++;
>  	}
> +	fdt_reserved_mem_account_memreserve(nr_memreserve);
>  }
[ ... ]
> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> index 313cbc57aa453..6dfe9e03c535d 100644
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c
[ ... ]
> @@ -241,6 +241,43 @@ static void __init __rmem_check_for_overlap(void)
>  	}
>  }
> =20
> +static void __init fdt_reserved_mem_add_memreserve(phys_addr_t base,
> +						   phys_addr_t size)
> +{
> +	struct reserved_mem *rmem;
> +	bool dumpable =3D false;
> +	int i;
> +
> +	if (reserved_mem_count =3D=3D total_reserved_mem_cnt) {
> +		pr_err("not enough space for memreserve regions.\n");
> +		return;
> +	}

[Severity: High]
Could this lead to an out-of-bounds write to the statically allocated
reserved_mem_array during early boot?

fdt_reserved_mem_account_memreserve() increments total_reserved_mem_cnt
by the number of /memreserve/ entries. However, if the device tree lacks
a /reserved-memory node, fdt_scan_reserved_mem_late() returns early and
alloc_reserved_mem_array() is bypassed.

If this happens, the reserved_mem pointer continues to point to the
statically allocated array with a fixed capacity of MAX_RESERVED_REGIONS.

Since the check above compares against the inflated total_reserved_mem_cnt,=
 it
appears we could write past the end of the static array if the device tree
contains 64 or more /memreserve/ entries?

> +
> +	for (i =3D 0; i < reserved_mem_count; i++) {
> +		rmem =3D &reserved_mem[i];
> +
> +		if (!rmem->dumpable)
> +			continue;
> +
> +		if (base < rmem->base + rmem->size && rmem->base < base + size) {
> +			dumpable =3D true;
> +			break;
> +		}
> +	}
> +
> +	rmem =3D &reserved_mem[reserved_mem_count];
> +	rmem->base =3D base;
> +	rmem->size =3D size;
> +	rmem->dumpable =3D dumpable;
> +
> +	reserved_mem_count++;
> +}
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260520091844.5927=
53-1-chenwandun@lixiang.com?part=3D4

