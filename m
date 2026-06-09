Return-Path: <devicetree+bounces-308952-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GDq2JVXxJ2oa6AIAu9opvQ
	(envelope-from <devicetree+bounces-308952-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 12:56:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DC265F2D7
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 12:56:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Pk3+TuNL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308952-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308952-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ED73A30156CC
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 10:51:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6C033F9265;
	Tue,  9 Jun 2026 10:51:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97C273DD505
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 10:51:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781002277; cv=none; b=eIPiKQGYLPT0l9H6BP7qTICfcH2JdJ9dB4iWzrOF6MYMdA/6HDd5ZHnCS0jq1trt0V3Nx8f8QAh6ulHhzTXle6/RdO2IE+GJ44mL2FxqQm4waERZ4uEHGOE/IOI4pRFXBWP9KQyLSG1Juv3hbHqFsfRPkDMrCtPOReV6W0SX+24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781002277; c=relaxed/simple;
	bh=3hDYfKMn3bvgPt3+r6IeMHWG6L4qjxWEW0MmZqSZ1fI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=i09YovShNTB59ypSg2JF8gvgHAArFX35B9oh/5ywy8yAa2qTuDs019Y29anl3i4O0j5PYVvWnsKKmFIxa4IbJcoJ//bw/qyh/CqbYZU49Ua7ONkm8nj+p8uUObhIRQBKoHBwgP5MS7kT7ygyPMXbBh7Oj56cG4c9IbmYsev85x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pk3+TuNL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DED0E1F00893;
	Tue,  9 Jun 2026 10:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781002276;
	bh=UpJMN65eYyUdu60adnEDzdcNcnW8N51kss42tY5wffg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Pk3+TuNL2Ajr0T1tzgW4W1VuOQJbprEQLtp8IN7GTCL7ubSC8rUqIXALJN4d+8Szc
	 gVqwRGKHxLrzrKpko0pvpW6QTeZ849xj6XT6lm20M6UsgHxn6a9y2Pc0uaSIFeod7F
	 twfpISkp2LdYmcoCBVI8F+YVwgtWUjtRcQuVfqHcx8W7upKs9bYxNbutf2wyVNU1/O
	 7/GlEqCA/jEFcpIHXfmc7TeezPaxtABLHspqyZ1ptMSmx9FAsciMpz2+GTnk2odhCu
	 rJzzNnpi2oDxtC/yIH9EmeYi1ZG8580j09BT3Ft32dgrSpmQl632JzcwbJ2CZpI70F
	 WK3qIx+MDZGsw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/7] dt-bindings: mmc: Document support for
 nvmem-layout
Reply-To: sashiko-reviews@lists.linux.dev
To: "Loic Poulain" <loic.poulain@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260608-block-as-nvmem-v3-1-82681f50aa35@oss.qualcomm.com>
References: <20260608-block-as-nvmem-v3-1-82681f50aa35@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 10:51:15 +0000
Message-Id: <20260609105115.DED0E1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308952-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:loic.poulain@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,qualcomm.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 06DC265F2D7

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Adding `nvmem-layout` as a child of a `fixed-partitions` node trig=
gers a preexisting uninitialized memory bug and potential kernel panic in t=
he block partition parser.
--

commit c354fbea36b7189e3294f56d353e1ba1075bff4d
Author: Loic Poulain <loic.poulain@oss.qualcomm.com>

dt-bindings: mmc: Document support for nvmem-layout

Add support for an nvmem-layout subnode under an eMMC hardware partition.
This allows the partition to be exposed as an NVMEM provider and its
internal layout to be described.

> diff --git a/Documentation/devicetree/bindings/mmc/mmc-card.yaml b/Docume=
ntation/devicetree/bindings/mmc/mmc-card.yaml
> index a61d6c96df759..ca907ad730959 100644
> --- a/Documentation/devicetree/bindings/mmc/mmc-card.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mmc-card.yaml
> @@ -40,6 +40,9 @@ patternProperties:
>          contains:
>            const: fixed-partitions
> =20
> +      nvmem-layout:
> +        $ref: /schemas/nvmem/layouts/nvmem-layout.yaml
> +

[Severity: High]
This isn't a bug introduced by this patch, but does adding this node trigger
an uninitialized memory bug during block partition parsing?

When the block layer parses subpartitions, it iterates over all child nodes
of the fixed-partitions node. Since the nvmem-layout child node lacks a reg
property, the block partition parser encounters an issue here in
block/partitions/of.c:validate_of_partition():

	int len;

	const __be32 *reg =3D of_get_property(np, "reg", &len);
	int a_cells =3D of_n_addr_cells(np);
	int s_cells =3D of_n_size_cells(np);

	/* Make sure reg len match the expected addr and size cells */
	if (len / sizeof(*reg) !=3D a_cells + s_cells)
		return -EINVAL;

	/* Validate offset conversion from bytes to sectors */
	offset =3D of_read_number(reg, a_cells);

Because of_get_property() returns NULL for nodes without a reg property,
len remains uninitialized stack garbage.

If the garbage value happens to satisfy the length check, it will call
of_read_number() with a NULL reg pointer, leading to a kernel panic.

Otherwise, it returns -EINVAL, causing of_partition() to abort and fail to
register any of the device tree partitions for the disk.

Should this block parser bug be addressed before or alongside encouraging
this topology in the device tree bindings?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608-block-as-n=
vmem-v3-0-82681f50aa35@oss.qualcomm.com?part=3D1

