Return-Path: <devicetree+bounces-302692-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPiKEPRBFGo3LQcAu9opvQ
	(envelope-from <devicetree+bounces-302692-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 14:35:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAEA5CA935
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 14:34:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9BA4030038D4
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 12:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 928CC37E2EA;
	Mon, 25 May 2026 12:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0BAmRUD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAD73770B
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 12:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779712496; cv=none; b=DQH1OHieWeB6I5VZVolJL2KrOZzIWtC9JTOIxd9g22nsyDn7TU4QPG/xQtheM6Wvawpnb1z0IV/zzbeFVmPG2fBhMawICWZJM5L/VAOFTDrCdYhI1qfL1IKmIaSfGjQzfBmJE8ZHZqfG91xVRK2AVRB5RoeLER4DjSGst1mzZwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779712496; c=relaxed/simple;
	bh=hHCXqEvQWNwzILd3O7YlMAgd769Np8DRD33XnJo/+k0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sPmJj4pS9TXqSeYQj+aszDDa89I/oIj4zGcW5zriBbTpvj1iFaBh9WLafaVzYVOr0S8qEoxVOcJZGPsaP7rYHr40yZ2RjtSqiXOxrf4eXu/T44Gs/WZf8WJ4At0xi8X6jdYBProGwSmN2ufq0WVlsiHgnkcTzYpw8KcuTc2SeME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0BAmRUD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 801821F000E9;
	Mon, 25 May 2026 12:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779712494;
	bh=BLTVnEDC9w92wGnj8cjcMawvdtKUo7XE7qioGvhPZfM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=R0BAmRUDpzmws9ItDACYwpnIRrlEyHLDgdZwydt5yQooy1fRAJmhBd5CezCVGsCdK
	 GXkbDZL7dSdDS2pxwe8ciK9nibi7gwbMZ2Qu++HzdZK9jD6L9fWKHYYmGupCoL6gNM
	 VQKJ/w/Vh8WOq2ZvH/SAzQ0j523kuA2o6NPJE/1/y7/y/krKPYv7Hs8oUe22RqEKKn
	 P32c+a6mQmBYrPsFfaLCH2/cnoWuI37ux4xZnlUdVataelc9GQ7n8gssRurmdKIC9N
	 h4/l1nVgcPIiae2FZ1B22y7hlEN6BDyXvJNPOE46DsgGYBY3RpX8vQAlacepaoAc0f
	 j/faz7vj2OruA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3] of: reserved_mem: only support one <base size> entry
 in reg property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wandun Chen" <chenwandun1@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260525121700.2706141-1-chenwandun1@gmail.com>
References: <20260525121700.2706141-1-chenwandun1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 12:34:54 +0000
Message-Id: <20260525123454.801821F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-302692-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,lixiang.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: AAAEA5CA935
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Critical] The patch intentionally stops reserving secondary memory regio=
ns specified in `reg` properties of `/reserved-memory` nodes, potentially l=
eading to firmware memory corruption and security vulnerabilities.
--

commit 4a99806fb5d64e19b6d9489c7dcc7e2a91514b2b
Author: Wandun Chen <chenwandun@lixiang.com>
Subject: of: reserved_mem: only support one <base size> entry in reg proper=
ty

This commit restricts /reserved-memory nodes to processing only the first
<base size> entry in their reg properties. It drops support for multiple
entries based on the claim that they were never fully functional in late
initialization.

Link: https://lore.kernel.org/all/20260506014752.GA280279-robh@kernel.org/

> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> index 8d5777cb5d1b3..ce1d5530ec0fb 100644
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c

[ ... ]

> @@ -128,42 +128,43 @@ static int __init early_init_dt_reserve_memory(phys=
_addr_t base,
>  }
> =20
>  /*
> - * __reserved_mem_reserve_reg() - reserve all memory described in 'reg' =
property
> + * __reserved_mem_reserve_reg() - reserve memory described in the
> + * first entry in 'reg' property
>   */
>  static int __init __reserved_mem_reserve_reg(unsigned long node,
>  					     const char *uname)
>  {

[ ... ]

> -	for (i =3D 0; i < len; i++) {
> -		u64 b, s;
> -
> -		of_flat_dt_read_addr_size(prop, i, &b, &s);
> -
> -		base =3D b;
> -		size =3D s;
> +	of_flat_dt_read_addr_size(prop, 0, &b, &s);
> +	base =3D b;
> +	size =3D s;
> =20
> -		if (size && early_init_dt_reserve_memory(base, size, nomap) =3D=3D 0) {
> -			fdt_fixup_reserved_mem_node(node, base, size);
> -			pr_debug("Reserved memory: reserved region for node '%s': base %pa, s=
ize %lu MiB\n",
> -				uname, &base, (unsigned long)(size / SZ_1M));
> -		} else {
> -			pr_err("Reserved memory: failed to reserve memory for node '%s': base=
 %pa, size %lu MiB\n",
> -			       uname, &base, (unsigned long)(size / SZ_1M));
> -		}
> +	if (size && early_init_dt_reserve_memory(base, size, nomap) =3D=3D 0) {

[Severity: Critical]
Does this change unintentionally expose secondary memory regions specified =
in
reg properties to the kernel allocator?

Before this patch, __reserved_mem_reserve_reg() iterated over all <base siz=
e>
entries in a reg property and called early_init_dt_reserve_memory() for eac=
h.
This correctly excluded all specified memory regions from the kernel's memo=
ry
allocator via memblock_reserve() or memblock_mark_nomap().

The commit message states that multiple entries "have never been fully
functional" because fdt_scan_reserved_mem_late() skipped them. Does this
conflate dynamic driver bindings (which are initialized late) with static
firmware reservations?

Static reservations (such as those marked no-map) worked with multiple reg
entries and successfully protected those ranges. By limiting the reservation
to only the first entry, any device tree specifying multiple memory regions=
 in
a single node will have the secondary regions silently ignored.

Could the kernel now treat these secondary regions as available RAM? If a
platform's firmware uses multiple entries to reserve sensitive ranges (like
TrustZone memory or secure buffers), wouldn't the kernel overwriting them
cause memory safety risks or break device tree backward compatibility
guarantees?

> +		fdt_fixup_reserved_mem_node(node, base, size);
> +		pr_debug("Reserved memory: reserved region for node '%s': base %pa, si=
ze %lu MiB\n",
> +			 uname, &base, (unsigned long)(size / SZ_1M));
> +	} else {
> +		pr_err("Reserved memory: failed to reserve memory for node '%s': base =
%pa, size %lu MiB\n",
> +		       uname, &base, (unsigned long)(size / SZ_1M));
>  	}
>  	return 0;
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525121700.2706=
141-1-chenwandun1@gmail.com?part=3D1

