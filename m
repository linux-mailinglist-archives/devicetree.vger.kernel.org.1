Return-Path: <devicetree+bounces-317489-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rPCjEh58Q2q8ZAoAu9opvQ
	(envelope-from <devicetree+bounces-317489-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:19:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 979F56E1972
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:19:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jV4BvcL5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317489-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317489-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49FED3012D07
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 08:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0286D274FD1;
	Tue, 30 Jun 2026 08:19:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F321A682A
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 08:19:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782807578; cv=none; b=IY1IO26/XfLCluvHfCOULVLG2D+UCxzq5Gyk8ThMZAzueGnb4sogq5ApLSvxpmNTjGD90DKWjryWtE7RKPRHXw8gT3p/BYeEh4uxCsz5k952or2/BJfPkKdNmtZOAi5K5Z//U+yhptNMVIfO4z76zEdWSBl7WkcHULiyKT/YNI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782807578; c=relaxed/simple;
	bh=xRsESIX3rWpHD7b/u6aFGbFigXBnTDD7BHzv59NjTQs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=q+mcRGHRbm4Z8s0ObMp6iYmnkLdNfBChxp9zCm2k78giJbUwOcma9hxGG+KiTCw8EAhy5UMGLIiEfyM+hKgAZc8wcM1Lb2rYkvSdwwMUK9XQabp5703UErz538nxPrbzpEpokNF8b3LsdPJSkO91PijoxkTmTVYhZhxGYCSmv1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jV4BvcL5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F4091F000E9;
	Tue, 30 Jun 2026 08:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782807577;
	bh=uWsawWr2XZI8pkSjLM/OVf+1RuIrZdE8Ao9QGFOCb3A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jV4BvcL5YM8l3e/bsANpco/f+9Hezbyj32wrz239EmwF6pW74lEPvczEmZYME89Fp
	 MfkPvI+SgBJzCMGc5bcGJLldbcgoQFoSjlPftCl0Ojnp5qF9dTh3ic8wcEg90cL4VQ
	 G0aC4tPzJzGhC+crHoAWwlp/VTRUWq5dysZNUXXLo/g++TlGBqpd2uZT9rasSPgxNc
	 jjyOIu0RQ7KcGD1XRpkct1Pe3yjsmqqjxAB1JEtkCKJvdas0VO1HFwO9prbOazaBQ7
	 n25rKDMM0flHRgrO8pducwBfBEM+HxcqkeyewiUmGtcou80da5lUN381XMIjKHE9Yo
	 BF5HS2V5/fMCQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 03/10] of: reserved_mem: skip late scan when no
 regions are reserved
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wandun Chen" <chenwandun1@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260630074715.4126796-4-chenwandun1@gmail.com>
References: <20260630074715.4126796-1-chenwandun1@gmail.com>
 <20260630074715.4126796-4-chenwandun1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 08:19:36 +0000
Message-Id: <20260630081937.3F4091F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317489-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:chenwandun1@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,lixiang.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 979F56E1972

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The `dynamic_nodes` array in `fdt_scan_reserved_mem()` has a fixed=
 size of `MAX_RESERVED_REGIONS` (64) but lacks bounds checking, leading to =
a potential stack buffer overflow.
--

commit e62a55f3fff119a2e88f5aefe6dbf1cf5ef32c31
Author: Wandun Chen <chenwandun@lixiang.com>

of: reserved_mem: skip late scan when no regions are reserved

This commit optimizes reserved memory initialization by skipping the
late scan when no reserved regions exist. It updates
alloc_reserved_mem_array() to return -ENODEV directly if
total_reserved_mem_cnt is 0.

> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> index 42649dc3613f0..e1bd35115cc1e 100644
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c
> @@ -76,7 +76,7 @@ static int __init alloc_reserved_mem_array(void)
>  	int ret;
> =20
>  	if (!total_reserved_mem_cnt)
> -		return 0;
> +		return -ENODEV;
> =20
>  	alloc_size =3D array_size(total_reserved_mem_cnt, sizeof(*new_array));

[Severity: High]
This isn't a bug introduced by this patch, but while reviewing the reserved
memory changes, I noticed a potential issue in the nearby
fdt_scan_reserved_mem() function.

Does this code overflow dynamic_nodes[] if the device tree contains more
than MAX_RESERVED_REGIONS dynamic regions?

drivers/of/of_reserved_mem.c:fdt_scan_reserved_mem() {
	int dynamic_nodes_cnt =3D 0;
	int dynamic_nodes[MAX_RESERVED_REGIONS];
...
	if (err =3D=3D -ENOENT && of_get_flat_dt_prop(child, "size", NULL)) {
		dynamic_nodes[dynamic_nodes_cnt] =3D child;
		dynamic_nodes_cnt++;
	}
...
}

If a malformed Flattened Device Tree is provided with more than 64 dynamica=
lly
allocated reserved memory regions, it looks like dynamic_nodes_cnt could
increment past the bounds of the array, leading to stack corruption.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630074715.4126=
796-1-chenwandun1@gmail.com?part=3D3

