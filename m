Return-Path: <devicetree+bounces-319746-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0SXHFDA6R2onUgAAu9opvQ
	(envelope-from <devicetree+bounces-319746-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 06:27:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C51566FE6A4
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 06:27:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ChTH1aKH;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319746-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319746-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D1F143019466
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 04:27:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 946F731A556;
	Fri,  3 Jul 2026 04:27:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA2630D3F4
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 04:27:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783052843; cv=none; b=JpHoZuRCib28aSW8zEnp/ncXpwM8h0BdYjhbxmhuH6yczKDakUqGDZw9HVIJw/gWsWBna/J8e4gU2bKUTVWv549EGDdGJzQT2WZtPrWeDmxsU0cyDP2H1mzKLof/jPk4B99gS2rKW1g0wLhkxIfMbMXhWZJw+KIcYGkfgcytgKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783052843; c=relaxed/simple;
	bh=z1yI8NJz4zfaXCktd4jeIGf1LFibY4XzSfJ0T5gE0ns=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HG6FphCP6YimxLJxPse58EQVUl3aOnokc/jTmCPHDGvViHXAI8q1O/l9Zd+SPNKAnZByhMSCaTbO/91RBMh0hWFiUW1dQ2Ie8uvLJ2e5e63ObgaPwtRGUJI3d3BYJbzLChgkNl67sI1JA+0wG4kn/BTZGMx18y1gIQedmZ2GIOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChTH1aKH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB91A1F000E9;
	Fri,  3 Jul 2026 04:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783052835;
	bh=nDQixqx3sxjOUF5L9yQEKDFGap9P+DaxaLEpA9uvyds=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ChTH1aKHCxpgNzLF2xUx2Lo5xlB6BNponiADykA0UZb2mep9Ha+wsl6BRmS1DlxpE
	 eHx0SUwjlROEKDnihZrkR1XYSKrCi+CjtyX84WnobFSsl9IDQVwySDLuzzXjTKtOT+
	 YgCZc/zPGcVRWqVkcM8I7kI7/pL+LXINTKQ3fYMy/x6XwJuVGi7b/7l/PH/X70ibx9
	 nGwVn1SCN9q2Dxv/u8hzCC9FqTMI0NWa6d2jPYydE7szvbZYil7ICyZGNopyVsqVwH
	 pFgBfaFbnefJUTTeV4raAh/VrtmDy51EGMTLWWPgRgf7LzIkSo6iZi37fQJy200mvL
	 Mlo6bcyBrZesg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/9] of/numa: remove redundant numa_nodes_parsed
 node_set()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sang-Heon Jeon" <ekffu200098@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260703041329.2797584-4-ekffu200098@gmail.com>
References: <20260703041329.2797584-1-ekffu200098@gmail.com>
 <20260703041329.2797584-4-ekffu200098@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 04:27:14 +0000
Message-Id: <20260703042714.DB91A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319746-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ekffu200098@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C51566FE6A4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The function's final return status is order-dependent, improperly =
shadowing earlier successes if the last evaluated memory node lacks a 'numa=
-node-id' property.
--

commit a42c5d6d6a0d76bbe5386c6e6e6307393d31c628
Author: Sang-Heon Jeon <ekffu200098@gmail.com>

of/numa: remove redundant numa_nodes_parsed node_set()

This commit simplifies of_numa_parse_memory_nodes() by removing a redundant
node_set() call. The operation is now handled internally by
numa_add_memblk().

> diff --git a/drivers/of/of_numa.c b/drivers/of/of_numa.c
> index cd2dc8e825c92..230d5f628c1b4 100644
> --- a/drivers/of/of_numa.c
> +++ b/drivers/of/of_numa.c
> @@ -59,11 +59,8 @@ static int __init of_numa_parse_memory_nodes(void)
>  			r =3D -EINVAL;
>  		}
> =20
> -		for (i =3D 0; !r && !of_address_to_resource(np, i, &rsrc); i++) {
> +		for (i =3D 0; !r && !of_address_to_resource(np, i, &rsrc); i++)
>  			r =3D numa_add_memblk(nid, rsrc.start, rsrc.end + 1);
> -			if (!r)
> -				node_set(nid, numa_nodes_parsed);
> -		}

[Severity: High]
This is a pre-existing issue, but does this function accidentally return an
error if the last memory node evaluated lacks a NUMA node ID?

Looking at of_numa_parse_memory_nodes(), if the device tree contains multip=
le
memory nodes and the final iterated node does not have a "numa-node-id"
property, the loop handles it like this:

    for_each_node_by_type(np, "memory") {
        r =3D of_property_read_u32(np, "numa-node-id", &nid);
        if (r =3D=3D -EINVAL)
            continue;
        ...

This clobbers the r variable with -EINVAL and continues to the end of the
loop. If this is the last iteration, the loop terminates and the function
returns -EINVAL, discarding prior successful parses.

Could this lead to NUMA initialization failing entirely on valid system
configurations and falling back to a single node?

> =20
>  		if (!i || r) {
>  			of_node_put(np);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703041329.2797=
584-1-ekffu200098@gmail.com?part=3D3

