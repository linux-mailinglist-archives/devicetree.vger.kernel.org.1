Return-Path: <devicetree+bounces-311447-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Wwk6IrexLmrC1wQAu9opvQ
	(envelope-from <devicetree+bounces-311447-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 15:50:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4D4681389
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 15:50:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=K+xbrmPQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311447-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311447-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CDE1730068DD
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 13:50:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F13763AFAE1;
	Sun, 14 Jun 2026 13:50:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07773A59A3
	for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 13:50:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781445043; cv=none; b=A05RQBCe/8vwxJ67tCLXm9AuxpwOSxSDctQ2SFs3MQW58OdwdLI2hfyCyZsJbuNW0xyJSCey10T6P7u+9tHTD5ViGMwCI0CzMy7USSqxBr5/EkJq3Y25yi/lFRzX88IwqBmbkFJnCo2hgeGYH1HNRyYmPYSfShR2qE3hpSvLq5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781445043; c=relaxed/simple;
	bh=8Gf18LyGLQy/rLGm8Dc2crI3Ocp7L3JWuqi/LNjy1pU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=I9Q5E0bKBX4lzWqixK7CIDrOW3RjgQbFEHeX0pekptwnSX4rQj/04Dg0joLrRa38zRPyX1jpkkEYas2It7Uz8rQiTDdn38/NFB/O/zmHODNUy6QWggeKMZBMlhaqlwv0f4eV+taR7cAM+hk9qOeddBAlB85EJmUFnjbN33M2M6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+xbrmPQ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D944B1F000E9;
	Sun, 14 Jun 2026 13:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781445042;
	bh=hHBb1v9Vl+Mk5+pl3RKOozs+2PgeOqAx4cZFtoh+eng=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=K+xbrmPQa9bPnhV5zZSoedezBvCQcVQCZzPhLg129CfBdMS3SU9tYl4nJsaPnWV2c
	 sgkBz3nyovBlJth72jmJ9BcSc4+LxEEZaWO9ib2cxoN5V2YERM4ko+8Y1ZyK78BFIq
	 kNKxd3jTF+0bi1EM5gKShqZYruzpcC7MtHw5chv20E+NTsGe1YwoHb7sZ+lFzOvlUu
	 0h5x3+tT2+rbK5taW+MafFMK17a/I0SrU0+aWUm1og9libpLCbYzUjQulc/ouObZeF
	 0WkpCwJTn9gHrWy5AGK01Shz2+LGutgbVPaAnV89F/woGa7uAbjkXvNde9DMhXgSF/
	 BFXHS/tPsgdUA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] of: reserved_mem: print skipped node name when
 too many regions are defined
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sang-Heon Jeon" <ekffu200098@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260614133807.2165124-3-ekffu200098@gmail.com>
References: <20260614133807.2165124-3-ekffu200098@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Jun 2026 13:50:41 +0000
Message-Id: <20260614135041.D944B1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-311447-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ekffu200098@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CB4D4681389

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Out-of-bounds write to the static `reserved_mem_array` if `membloc=
k_alloc` fails during dynamic array reallocation.
- [High] Ignored memory reservation failures allow unreserved memory to be =
successfully registered and handed out as exclusive reserved memory.
- [Medium] Dynamically allocated `no-map` reserved memory regions are leake=
d from `memblock.reserved` if their initialization fails.
--

commit f95986ab58870e3d79cb320c6dc73ef80982357e
Author: Sang-Heon Jeon <ekffu200098@gmail.com>

of: reserved_mem: print skipped node name when too many regions are defined

When too many reserved memory regions are defined,
fdt_init_reserved_mem_node() logs an error and skips the region without
naming the node.

Print the node name so the skipped node can be identified, matching
fdt_scan_reserved_mem().

> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> index 499b769e98096..df3d90cb8dbe1 100644
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c
> @@ -623,7 +623,8 @@ static void __init fdt_init_reserved_mem_node(unsigne=
d long node, const char *un
>  	struct reserved_mem *rmem =3D &reserved_mem[reserved_mem_count];
> =20
>  	if (reserved_mem_count =3D=3D total_reserved_mem_cnt) {
> -		pr_err("not enough space for all defined regions.\n");
> +		pr_err("not enough space for all defined regions, skip '%s'\n",
> +		       uname);
>  		return;
>  	}

[Severity: High]
This isn't a bug introduced by this patch, but does alloc_reserved_mem_arra=
y()
fail to reset total_reserved_mem_cnt on error?

If memblock_alloc() fails during dynamic array reallocation, it returns ear=
ly
without resetting total_reserved_mem_cnt back to its original value. When t=
he
bounds check in fdt_init_reserved_mem_node() is reached later,
reserved_mem_count can increment beyond the statically-sized
reserved_mem_array limit, potentially causing an out-of-bounds write:

drivers/of/of_reserved_mem.c:alloc_reserved_mem_array() {
    ...
	new_array =3D memblock_alloc(alloc_size, SMP_CACHE_BYTES);
	if (!new_array) {
		pr_err("Failed to allocate memory for reserved_mem array...");
		return;
	}
    ...
}

[Severity: High]
This is a pre-existing issue, but does __reserved_mem_reserve_reg()
unconditionally return 0 even if early_init_dt_reserve_memory() fails?

If memory reservation fails, it logs an error but returns success, allowing
unreserved memory to be successfully registered and later handed out as
exclusive reserved memory:

drivers/of/of_reserved_mem.c:__reserved_mem_reserve_reg() {
    ...
		if (early_init_dt_reserve_memory(base, size, nomap)) {
			pr_err("Reserved memory: failed to reserve...");
		}
	}
	return 0;
}

[Severity: Medium]
This is a pre-existing issue, but does fdt_init_reserved_mem_node() leak
dynamically allocated no-map regions if initialization fails?

If __reserved_mem_init_node() returns an error, the cleanup path for no-map
regions clears the MEMBLOCK_NOMAP flag but skips calling memblock_phys_free=
(),
which permanently leaks the physical memory from memblock.reserved:

drivers/of/of_reserved_mem.c:fdt_init_reserved_mem_node() {
    ...
	err =3D __reserved_mem_init_node(rmem, node);
	if (err !=3D 0 && err !=3D -ENODEV) {
		pr_info("node %s compatible matching fail\n", rmem->name);
		rmem->name =3D NULL;

		if (nomap)
			memblock_clear_nomap(rmem->base, rmem->size);
		else
			memblock_phys_free(rmem->base, rmem->size);
		return;
    ...
}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260614133807.2165=
124-1-ekffu200098@gmail.com?part=3D2

