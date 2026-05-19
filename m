Return-Path: <devicetree+bounces-299963-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIVNHgwxDGpuZAUAu9opvQ
	(envelope-from <devicetree+bounces-299963-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 11:44:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7813957B86A
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 11:44:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2F27A30623D5
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C24153EFFC2;
	Tue, 19 May 2026 09:24:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlB/RBfU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FE473E0090
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 09:24:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779182644; cv=none; b=NOpeAy1xKXlkguOqukxc9BtFUfZat2PDU8NNzB6TZs4LXO9ix+CNoIf/4PEGCGruhoD8SBuGprxAzTmWTyXtHSOil4EztBHxnOEgSmS6Xvcdu5aaHiZsqH0qiAb40/X4x8kPraudcXLjx0vC2fO7Tqy2sQqplx46S7hZHp8OQko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779182644; c=relaxed/simple;
	bh=W9tCChh774z7smGVrR5Sm5Cl4Zeu/K/I73fWHAcOnjo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=K6Cp0joeG2dMPXm8m63ypyObTTg8yZAburGY03rOs+f8h2gHhJCOsUSovLMiQr9hLerQ+dbcLqgC7M2uA9FuvJNGJK1WtJijcFiybubWZTLHteMT5J8ZBMgJcgthsm2ZI3G60f2OeayD1+q7e/tdQIJEt4JkvF/0e1eePlJpD2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlB/RBfU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0969FC2BCC9;
	Tue, 19 May 2026 09:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779182644;
	bh=W9tCChh774z7smGVrR5Sm5Cl4Zeu/K/I73fWHAcOnjo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=AlB/RBfUm+KbYBRR111a/hXbtVPg8X+kDzcz6I4Bw/yNE1ZYajbC9jumKgQ0MO0P9
	 7MOH6uIkzLz2br1zmuNBA1Eh4Oj/Jj4KsDnc6Wfl9ZN+DKR4uTlmVNOFJMLYBcOGYz
	 LIrb+jA2v0EzqV0ngJWlN5nLrbo5R8Sw99Z+qDDuKeqi5TI5liA7KqYCZMtE6jCrCz
	 K+ZGCAn5wpsmKPh8O20IZErYLh6nKgbM+aYJrFueZ0Mua3AcWMF1wfAPRFVZ6tzbJ4
	 ZEfytgMZKe2YLznSuBmoVPdJ5d/jqcd3QqTeMHD/l3lHYB0SVGzDE6SK0SSZGJjr6g
	 wv/S9ztfcYU/A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] of: reserved_mem: only support one <base size>
 entry in reg property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wandun Chen" <chenwandun1@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260519082427.4181476-4-chenwandun@lixiang.com>
References: <20260519082427.4181476-4-chenwandun@lixiang.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 09:24:03 +0000
Message-Id: <20260519092404.0969FC2BCC9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299963-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Queue-Id: 7813957B86A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Unconditional read of the first `reg` property entry without verif=
ying that `len > 0` leads to an out-of-bounds FDT read for empty `reg` prop=
erties.
--

commit def0743ccda5f4a97f9b1275e989c8ea559363b4
Author: Wandun Chen <chenwandun1@gmail.com>

of: reserved_mem: only support one <base size> entry in reg property

This commit simplifies reserved memory parsing by restricting support
to a single base/size entry in the reg property. It removes the loop
in the early pass and warns if multiple entries are present,
unconditionally reading only the first entry.

Link: https://lore.kernel.org/all/20260506014752.GA280279-robh@kernel.org/

> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> index 462e7c3078a3a..0e91c4a71d89d 100644
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c
> @@ -134,37 +134,38 @@ static int __init __reserved_mem_reserve_reg(unsign=
ed long node,
[ ... ]
>  	prop =3D of_flat_dt_get_addr_size_prop(node, "reg", &len);
>  	if (!prop)
>  		return -ENOENT;
> =20
> +	if (len > 1)
> +		pr_warn("Reserved memory: node '%s' has %d <base size> entries, only t=
he first is used\n",
> +			uname, len);
> +
>  	nomap =3D of_get_flat_dt_prop(node, "no-map", NULL) !=3D NULL;
> =20
>  	err =3D fdt_validate_reserved_mem_node(node, NULL);
>  	if (err && err !=3D -ENODEV)
>  		return err;
> =20
> -	for (i =3D 0; i < len; i++) {
> -		u64 b, s;
> -
> -		of_flat_dt_read_addr_size(prop, i, &b, &s);
> -
> -		base =3D b;
> -		size =3D s;
> +	of_flat_dt_read_addr_size(prop, 0, &b, &s);

If a device tree node contains an empty reg property,
of_flat_dt_get_addr_size_prop() returns a valid pointer to the empty
property data and sets len to 0.

Since the loop was removed, is there a risk of an out-of-bounds read here
because the code unconditionally calls of_flat_dt_read_addr_size()?

This could fetch garbage values for the physical base and size. If the
parsed garbage size happens to be non-zero, could the kernel attempt
to reserve unintended physical memory regions via
early_init_dt_reserve_memory()?

Would it be safer to verify len > 0 before reading the first entry?

> +	base =3D b;
> +	size =3D s;
[ ... ]
> @@ -277,20 +278,24 @@ void __init fdt_scan_reserved_mem_late(void)
>  	alloc_reserved_mem_array();
> =20
>  	fdt_for_each_subnode(child, fdt, node) {
> +		const __be32 *prop;
[ ... ]
> -		if (!of_flat_dt_get_addr_size(child, "reg", &b, &s))
> +		prop =3D of_flat_dt_get_addr_size_prop(child, "reg", &len);
> +		if (!prop)
>  			continue;
> =20
>  		ret =3D fdt_validate_reserved_mem_node(child, NULL);
>  		if (ret && ret !=3D -ENODEV)
>  			continue;
> =20
> +		of_flat_dt_read_addr_size(prop, 0, &b, &s);

Does this have the same out-of-bounds read potential when len =3D=3D 0?

The previous of_flat_dt_get_addr_size() wrapper explicitly checked that
entries !=3D 1, which inherently skipped empty reg properties.

>  		base =3D b;
>  		size =3D s;
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519082427.4181=
476-1-chenwandun@lixiang.com?part=3D3

