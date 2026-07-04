Return-Path: <devicetree+bounces-320477-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id w17wHpUOSWogyAAAu9opvQ
	(envelope-from <devicetree+bounces-320477-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 15:45:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E35707B7D
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 15:45:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="e33lS//5";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320477-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-320477-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7B4F3300999B
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 13:45:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E4ED1891A9;
	Sat,  4 Jul 2026 13:45:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548C629408
	for <devicetree@vger.kernel.org>; Sat,  4 Jul 2026 13:45:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783172755; cv=none; b=jCgBuMzxHaUg0QSWO5Rw3XLrdBxtsfWK7HP7d7IG4Gaxuu4hv90OwuXGsGh5EbBr295GAXSja/syZdUWRJa9KRYi27hhOjJ69kdS0hkmlCaiT4dllu/te1JpYMpLKx0W+SjMLEJ0W/FQJE68AMjLrXKwoj0ZwZvfRGoiwnSqHls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783172755; c=relaxed/simple;
	bh=XX0rlxQKlC72XbF8JJPz0j0CDcsiZ9Mng6bJ0nwlZqA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=X3Ko2FfBosTyPEDqUwQIp3aMxdf3oaoZ7MPveqGl510C1b3tXZ2hCObAVpGAUuy/VmiP10yyOJygivvs/U1jcM4aZ1awdRjXkNvotflVtEkIDcvPjTqJJlCv8NYq2BUCsEuMNkzMkuGKV2lE4TQjmlH35CAiRbpEwIjuZySspkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e33lS//5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 979031F000E9;
	Sat,  4 Jul 2026 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783172753;
	bh=c5Kz2dfxCpYzCiMfFQfjMy4crys0bea2FZsaF1RX92k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=e33lS//5u3UjOArJhg0VTkx5KnY4o82rQ/XVhK+t2Po0T/EW/HEFI9na2ahdsBlsR
	 zfxEyPoWLhrShsGp0wU6Ve9KpTgHNkWXmK9ln2DdzFylJYFX/9bwe6yz+xSMLXUdzB
	 pnk/8sA2IPXg1+gdReIZA6dg3upN/QwyCr6CHILR0Rtp0dBBQaZoXSL9wKirnf+Zxm
	 JCaLTvPvfpz+ZvrCtw8ETrUK/ihi0Bw2Em3KezJQ3NBsT09XKUc8/EAPcoE/e5fmIk
	 XvlhFqsjv704gsIlpPUYA70nL6yzWoysJ9VT4q9S+hFNMBgQ6LRkneB9MQuB9XOrnn
	 dxjkcVBe4mseg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 4/9] nvmem: layouts: Support fixed-layout as the
 nvmem device node itself
Reply-To: sashiko-reviews@lists.linux.dev
To: "Loic Poulain" <loic.poulain@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260703-block-as-nvmem-v8-4-98ae32bfc49a@oss.qualcomm.com>
References: <20260703-block-as-nvmem-v8-0-98ae32bfc49a@oss.qualcomm.com>
 <20260703-block-as-nvmem-v8-4-98ae32bfc49a@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 04 Jul 2026 13:45:53 +0000
Message-Id: <20260704134553.979031F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320477-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:loic.poulain@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 13E35707B7D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Double parsing of NVMEM cells leading to duplicate sysfs entries=
 and device probe failure when a legacy provider adds the `fixed-layout` co=
mpatible string.
--

commit 5ae6267ddd6db9a2a2626cb61243805bccbca0b9
Author: Loic Poulain <loic.poulain@oss.qualcomm.com>

nvmem: layouts: Support fixed-layout as the nvmem device node itself

This commit modifies of_nvmem_layout_get_container() to return the nvmem
device node itself if it lacks an "nvmem-layout" child but has the
"fixed-layout" compatible string.

> diff --git a/drivers/nvmem/layouts.c b/drivers/nvmem/layouts.c
> index b90584e1b99ea..efa631ce7283b 100644
> --- a/drivers/nvmem/layouts.c
> +++ b/drivers/nvmem/layouts.c
> @@ -167,7 +167,18 @@ static int nvmem_layout_bus_populate(struct nvmem_de=
vice *nvmem,
> =20
>  struct device_node *of_nvmem_layout_get_container(struct nvmem_device *n=
vmem)
>  {
> -	return of_get_child_by_name(nvmem->dev.of_node, "nvmem-layout");
> +	struct device_node *np;
> +
> +	/* Search for nvmem-layout child */
> +	np =3D of_get_child_by_name(nvmem->dev.of_node, "nvmem-layout");
> +	if (np)
> +		return np;
> +
> +	/* The nvmem of_node is itself a fixed-layout node */
> +	if (of_device_is_compatible(nvmem->dev.of_node, "fixed-layout"))
> +		return of_node_get(nvmem->dev.of_node);

[Severity: Medium]
Could this lead to double parsing of NVMEM cells and device probe failures
for legacy providers?

If a legacy provider (which sets config->add_legacy_fixed_of_cells =3D true
in its driver) updates its device tree node to include the "fixed-layout"
compatible string, it looks like nvmem_register() might parse the cells
twice:

drivers/nvmem/core.c:nvmem_register() {
        ...
        if (config->add_legacy_fixed_of_cells) {
                rval =3D nvmem_add_cells_from_legacy_of(nvmem);
                if (rval)
                        goto err_remove_cells;
        }

        rval =3D nvmem_add_cells_from_fixed_layout(nvmem);
        if (rval)
                goto err_remove_cells;
        ...
}

Because of_nvmem_layout_get_container() now returns the nvmem device node
itself, both functions would process the same child nodes.

Would nvmem_populate_sysfs_cells() then fail with -EEXIST due to duplicate
sysfs entries and abort the device registration?

> +
> +	return NULL;
>  }
>  EXPORT_SYMBOL_GPL(of_nvmem_layout_get_container);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-block-as-n=
vmem-v8-0-98ae32bfc49a@oss.qualcomm.com?part=3D4

