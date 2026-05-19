Return-Path: <devicetree+bounces-299920-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPtfKJojDGpqXAUAu9opvQ
	(envelope-from <devicetree+bounces-299920-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:47:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E99857A70E
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:47:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DB5A33036E77
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C50B23E0081;
	Tue, 19 May 2026 08:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUbltXZc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1866175A71
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 08:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779180407; cv=none; b=rzjDZrKR5yECjb35rCiV4MCSnHJcokXPMGCobxHvDXPcP56ApdNr+X3xrUd3kCRNowi1MHxhdNPtX/Ftp3Q9GNlW/MpnMkFGUYASIZ1nKLqU4KKWp+pWp5w4QrYMwkpe58CHwBSQV61RCvT4bJJ3z5JjhwsjCa8XxlmqA0eFBmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779180407; c=relaxed/simple;
	bh=0nVhTKKCJZLHmetpoc1qyaULH6Bx3aiM0Hr+rSle7ig=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Su+BSTESmHjR4BAQ/DgDq3dQgqAI9mw2Xsa9IjE9LquO10nAS3RmpwkohkRuyTed9Nh5i0tysvNh4uQkoPpV1QQM4bo6ujXOnJExSVXe/gYx/BO6VLP+tEihcYAyPbXodT9Lb3aTl6e+mtR7bfTSQ84XlrtxueoeYCJ2yN40ySQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUbltXZc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9974C2BCB3;
	Tue, 19 May 2026 08:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779180407;
	bh=0nVhTKKCJZLHmetpoc1qyaULH6Bx3aiM0Hr+rSle7ig=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=jUbltXZcHUaikeifCn/b4Mfa2H26YHKUnSetpFiVoyjHtrkJK0eZ3X1bSChm+M+BL
	 rRra7F1j2qacbjas4ghiOn8xLjwVH0o+rmeqb2Ma03XykPjhG3CawNdxZnEm6GHn1B
	 HXWRo4/+MHfLeEVv3XCIcivOkNXNwzFuGYuWjLzauIyji82O7iwk+tyvEPo56B8iMv
	 LtyuK60A5ydNecQtwZQnQ5no8NrsXaDh9dLzT/TDSixplVgwbHnj2kMmSQuHzTyhOD
	 5Dl8frP9h3UGyrOQ5uByd7ceHewbo+Us7fP6kuyTUCHby0l044ySo3tLiwEDc6upPq
	 PnhcTDRECx1VQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/3] of: reserved_mem: avoid unnecessary memory
 allocation when __reserved_mem_check_root() fails
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wandun Chen" <chenwandun1@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260519082427.4181476-2-chenwandun@lixiang.com>
References: <20260519082427.4181476-2-chenwandun@lixiang.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 08:46:46 +0000
Message-Id: <20260519084646.C9974C2BCB3@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299920-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 4E99857A70E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Error paths in alloc_reserved_mem_array() fail to reset total_rese=
rved_mem_cnt, causing a deterministic buffer overflow.
--

commit b6927a2d1eca00b0e1f7c1ca6f640812391b20c8
Author: Wandun Chen <chenwandun1@gmail.com>

of: reserved_mem: avoid unnecessary memory allocation when __reserved_mem_c=
heck_root() fails

This commit delays the dynamic allocation of the reserved memory array
until after checking the root node format. It aims to prevent memory
allocation and potential waste if the reserved memory root format is
unsupported.

> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c
> @@ -265,14 +265,14 @@ void __init fdt_scan_reserved_mem_late(void)
[ ... ]
>  	if (__reserved_mem_check_root(node)) {
>  		pr_err("Reserved memory: unsupported node format, ignoring\n");
>  		return;
>  	}
> =20
> +	/* Attempt dynamic allocation of a new reserved_mem array */
> +	alloc_reserved_mem_array();

This isn't a bug introduced by this commit, but while looking at the
relocation of alloc_reserved_mem_array(), I noticed a pre-existing flaw
in its error paths.

If total_reserved_mem_cnt exceeds MAX_RESERVED_REGIONS (64), we attempt
to allocate a new array. If memblock_alloc() fails or alloc_size =3D=3D SIZ=
E_MAX,
alloc_reserved_mem_array() logs an error and returns early without resetting
total_reserved_mem_cnt back to MAX_RESERVED_REGIONS.

Since alloc_reserved_mem_array() returns void and doesn't propagate the
error, fdt_scan_reserved_mem_late() continues iterating over the remaining
nodes and calling fdt_init_reserved_mem_node().

Does this lead to an out-of-bounds write?

In fdt_init_reserved_mem_node(), the bounds check compares against the acti=
ve
total_reserved_mem_cnt:

drivers/of/of_reserved_mem.c:fdt_init_reserved_mem_node() {
    ...
    if (reserved_mem_count =3D=3D total_reserved_mem_cnt) {
        pr_err("not enough space for all defined regions.\n");
        return -ENOSPC;
    }
    ...
}

If alloc_reserved_mem_array() failed, reserved_mem still points to the
static 64-element array, but total_reserved_mem_cnt is still set to the
larger requested size. This appears to allow reserved_mem_count to exceed
64, deterministically writing past the end of the static array.

Could the error paths in alloc_reserved_mem_array() be updated to always
reset total_reserved_mem_cnt to MAX_RESERVED_REGIONS?

> +
>  	fdt_for_each_subnode(child, fdt, node) {
>  		const char *uname;
>  		u64 b, s;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519082427.4181=
476-1-chenwandun@lixiang.com?part=3D1

