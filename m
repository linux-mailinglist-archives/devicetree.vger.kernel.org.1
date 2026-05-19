Return-Path: <devicetree+bounces-299953-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPVFL9AqDGq0XwUAu9opvQ
	(envelope-from <devicetree+bounces-299953-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 11:18:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4116257B148
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 11:18:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3DD3B3038C4F
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:09:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E3A33D7D93;
	Tue, 19 May 2026 09:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bx2gMJFz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA6938F244
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 09:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779181743; cv=none; b=rtxOMc4Dwr9psODZWcEcm0oIAJLMCd7zDbFfcIiAx2Vy+CsqDovPNFc8ELbGSvooX7a1WgdwnskAEwt2Yz3+2igyAnmaOYGTAmd34re6CWy2AfEOIJl68luKSeUwdZIIaxjFEVMrVVhOw5sTbhAkot9DF8OCNUreVBy2ooYloRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779181743; c=relaxed/simple;
	bh=pSva4WJuG2ymZ/Kn6ETNYpZ/ixhdPe9iccI4/YsAWVQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=j/HsZsdmqtWgkIyfg9fjwc4XOoLn4ukPZSnZoA9EMeKOiR/D9wm8t7uL/LhUHHxXETqyFuD2zwjEMrGr0VQ48f5CHQkojypWELZAtLSxkI0dMLWICIbCF0/CLumbwkgfIRqWe1AgR4+6Dy0sm7s4ajEyDl6Pdqs5ZybT9Amadfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bx2gMJFz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAC5BC2BCB3;
	Tue, 19 May 2026 09:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779181743;
	bh=pSva4WJuG2ymZ/Kn6ETNYpZ/ixhdPe9iccI4/YsAWVQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=bx2gMJFzVIQdieFtQpDGxPeQQEAncL84E2wFAQU4tsHDql29jjZP/mhg2l9+QSJCk
	 zDK0PRuC+liZTPtZovsC76eC89KryHvdynmBq+aQ7gIlfS01O9kCqesWXBG8RkAFlW
	 F8DAZ7HgJPWKvDY8tH9ZXaC6NDZDCz+cHICqfq3Ki/96RQ9wYF4uG8iVHJvCusLACY
	 1YZ6biPrCTJ2kdBkzwqE8bATMCNU4EWZHeJE9nDMrO9ccSnOdBYepsQXRw0k6RMBtA
	 s6+BcNPGVBJonvT8X4U4dYtplpx6lnjpkwQ/92gAqSnt+HFA1Ao/N1UvRbbgmkeZhx
	 n0d8GvyF0TvDw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] of: reserved_mem: clean up redundant
 alloc_reserved_mem_array() call
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wandun Chen" <chenwandun1@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260519082427.4181476-3-chenwandun@lixiang.com>
References: <20260519082427.4181476-3-chenwandun@lixiang.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 09:09:02 +0000
Message-Id: <20260519090902.BAC5BC2BCB3@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299953-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 4116257B148
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Critical] Missing bounds check on `dynamic_nodes_cnt` in `fdt_scan_reser=
ved_mem()` allows out-of-bounds writes to the stack array `dynamic_nodes`.
- [High] Error handling in `alloc_reserved_mem_array()` fails to reset `tot=
al_reserved_mem_cnt` on allocation failure, leading to a buffer overflow on=
 the static `reserved_mem_array`.
--

commit 7ce94f9c503bebcfe72a546d200327f9bde1957e
Author: Wandun Chen <chenwandun1@gmail.com>

of: reserved_mem: clean up redundant alloc_reserved_mem_array() call

This commit skips calling alloc_reserved_mem_array() if total_reserved_mem_=
cnt
is 0 after fdt_scan_reserved_mem(). This avoids executing dynamic allocation
logic when there are no reserved memory regions to save.

> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> index 7856dc857d650..462e7c3078a3a 100644
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c
> @@ -270,6 +270,9 @@ void __init fdt_scan_reserved_mem_late(void)
>  		return;
>  	}
> =20
> +	if (!total_reserved_mem_cnt)
> +		return;
> +
>  	/* Attempt dynamic allocation of a new reserved_mem array */
>  	alloc_reserved_mem_array();

This problem wasn't introduced by this patch, but if alloc_reserved_mem_arr=
ay()
fails (e.g. memblock_alloc() fails or alloc_size =3D=3D SIZE_MAX), it retur=
ns
without resetting total_reserved_mem_cnt to MAX_RESERVED_REGIONS.

Because total_reserved_mem_cnt can exceed MAX_RESERVED_REGIONS, and
reserved_mem would still point to the static reserved_mem_array, would the
boundary check in fdt_init_reserved_mem_node() fail to stop insertions at
MAX_RESERVED_REGIONS?

Can this result in an out-of-bounds write into the static array?

Also not introduced by this patch, there appears to be a missing bounds
check in fdt_scan_reserved_mem():

drivers/of/of_reserved_mem.c:fdt_scan_reserved_mem() {
	int dynamic_nodes_cnt =3D 0, count =3D 0;
	int dynamic_nodes[MAX_RESERVED_REGIONS];
	...
		if (err =3D=3D -ENOENT && of_get_flat_dt_prop(child, "size", NULL)) {
			dynamic_nodes[dynamic_nodes_cnt] =3D child;
			dynamic_nodes_cnt++;
		}
	...
}

If a device tree contains more dynamically sized reserved memory nodes than
MAX_RESERVED_REGIONS, could this overwrite the bounds of the dynamic_nodes
stack array?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519082427.4181=
476-1-chenwandun@lixiang.com?part=3D2

