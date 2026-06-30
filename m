Return-Path: <devicetree+bounces-317505-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id txsTAyuFQ2rhZwoAu9opvQ
	(envelope-from <devicetree+bounces-317505-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:58:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5382F6E1D9C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:58:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jsK99kTW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317505-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317505-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C850301ABAF
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 08:56:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6721C34D389;
	Tue, 30 Jun 2026 08:56:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A6934E763
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 08:56:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782809764; cv=none; b=PVqcqjge38V1tN42tPy4cLs13NaefzbrP04kDD1HwZw5ZEx5HYJ3fxr3Rbf5mpRYIPmV4bNxIHFogF/GbxVXb1nTSBlwUv6u+OGBsrxhcKcQyOgSCGUyVa7YfLOHJvzFEAJWnolO632UJjoKVFixchQja5EGaj6AoR6Wn/MC9Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782809764; c=relaxed/simple;
	bh=S0StEdt/OxTFSJ1ebVoJhYk+16Jv9krN2/VO6ygstXc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PSmk6aFyfCBUJDb8eySuc83oejw+hYi3mKyQhukgTrUuTxnEHJhn2TA+nEm9HHzyY60/hu1/6QEUo/MqZr5BGAaxIIWx6q/CXMgNweNV++2dGxciEtUtjK/kTE4GBYwfngeEAVlhCpLhgDFB3RYcq22Xzz6L48ZzB9+XziSCrGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsK99kTW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39F9A1F000E9;
	Tue, 30 Jun 2026 08:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782809762;
	bh=9XesUVkH0QdW86jqGuPSuWzCc1fCdQrwbJJCRlKiF8w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jsK99kTWYTUFKruIbFgR1kvSEqmaf5w5arpvWXSjAiZJrdwvjpfbIEBRhyTOepqbc
	 rozRaEItdaGObfZcUqxcUJFbTLgZl6r8IJ/R6+lsdLuA2cL1ElAPB3qQ/H86G78pro
	 WoqtcwNLfomn1lEgDroOskNvYdH0zJyQ+IAfs5xuVQ2gwsDen3i9dJ0C9ypTTcYbCV
	 aqy/z2mEnRIvn4WyQkZ2wCczbKZdCLKi688K+K+sL+xFYVcMKQ0e1S4pTn/pGRd/A/
	 GMevgbibpZXQ3yfPa/mQeD9h35gDIT/IeaBjWBI96Rykir5Er7D88tmUeDaFoLe8rb
	 MzyMwHEp6webg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 1/9] block: partitions: of: Skip child nodes without
 reg property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Loic Poulain" <loic.poulain@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260629-block-as-nvmem-v6-1-f02513dcd46d@oss.qualcomm.com>
References: <20260629-block-as-nvmem-v6-0-f02513dcd46d@oss.qualcomm.com>
 <20260629-block-as-nvmem-v6-1-f02513dcd46d@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 08:56:01 +0000
Message-Id: <20260630085602.39F9A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317505-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:loic.poulain@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5382F6E1D9C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Signed integer overflow in parsing `#address-cells` and `#size-cel=
ls` leads to a massive out-of-bounds read in `of_read_number()`.
--

commit 60f98cd1d6a199dbbed8e4468a146aeef677518d
Author: Loic Poulain <loic.poulain@oss.qualcomm.com>

block: partitions: of: Skip child nodes without reg property

Child nodes of a fixed-partitions node are not necessarily partition entrie=
s.
This patch modifies validate_of_partition() to skip nodes without a reg
property, and guards add_of_partition() with a reg property check.

> diff --git a/block/partitions/of.c b/block/partitions/of.c
> index 53664ea06b654..60aa3d6906ca1 100644
> --- a/block/partitions/of.c
> +++ b/block/partitions/of.c
> @@ -15,6 +15,10 @@ static int validate_of_partition(struct device_node *n=
p, int slot)
>  	int a_cells =3D of_n_addr_cells(np);
>  	int s_cells =3D of_n_size_cells(np);
> =20
> +	/* Skip nodes without a reg property (e.g. nvmem-layout) */
> +	if (!reg)
> +		return 1;
> +
>  	/* Make sure reg len match the expected addr and size cells */
>  	if (len / sizeof(*reg) !=3D a_cells + s_cells)
>  		return -EINVAL;

[Severity: High]
This is a pre-existing issue, but can the addition of a_cells and s_cells
overflow and bypass this length validation?

If #address-cells and #size-cells are set to values that overflow when added
as signed integers (for example, 0xffffffff and 1 via a dynamically loaded
DT overlay), and the reg property is empty, this check would evaluate to
0 !=3D 0 and pass.

This would then pass a negative size to of_read_number() when evaluating
the offset just below this check:

block/partitions/of.c:validate_of_partition() {
	...
	/* Validate offset conversion from bytes to sectors */
	offset =3D of_read_number(reg, a_cells);
	...
}

include/linux/of.h:of_read_number() {
	u64 r =3D 0;
	while (size--)
		r =3D (r << 32) | be32_to_cpu(*(cell++));
	return r;
}

Since the while (size--) loop operates on signed integers without bounds
checking, a negative size wraps around, which could lead to a massive
out-of-bounds read and cause a kernel panic.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-block-as-n=
vmem-v6-0-f02513dcd46d@oss.qualcomm.com?part=3D1

