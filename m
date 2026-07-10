Return-Path: <devicetree+bounces-324515-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hbxkMZUNUWrW+gIAu9opvQ
	(envelope-from <devicetree+bounces-324515-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 17:19:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C17C873C2A6
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 17:19:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hNC+M9cp;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324515-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324515-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1DDD93034898
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 15:09:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62FC22DCC1F;
	Fri, 10 Jul 2026 15:09:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CE92ECE86
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 15:09:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783696152; cv=none; b=GBO8gASm4UJ1ChYMcgLI+9SZGqcv8C5Yp2Coh09A+scmewZQDP7ZYJf6Dk0IRGwNhMSDEDMRMwTY/cDA65jgveJwLnMlrOn6GryDIivC7SgBwta18gQTX3pr8j1/qn66PGUoOdQ7HVv+v8hfUUeBq4bVZjqZS2D3jKgiKVROyZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783696152; c=relaxed/simple;
	bh=yJr2jP7KNiwZ5pCk95Q53gopYjymYWGtWsz0LqgL4wU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kIA5OL3KNAuEr6b1B+i/MPYSQYWisw0WMR5Q0eydvWhLdMkaNWhK3ZuUqRgYyNIp1vfQtIFNQGNt8RoeoF3vdCpwlDDuEieeOv+zzsQGVE7OwFHlJqnRr0Jy4V9XJNn2IScN2bp1ZgiMant4hY3Ai59nNsX8PKg76wuqodEwfPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNC+M9cp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3FA51F01559;
	Fri, 10 Jul 2026 15:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783696150;
	bh=tRntSqQ1pX/aItXx6Re0D3ZNqlon+aXDvBaaE1gNwwM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hNC+M9cp1VAW5NB58AJjm6Z/AYvBytDTzoE3bLVd5fsR+GWOSa6cvxkTYSz6iWRYy
	 XJXorHNthk+pgwLbBBIWxaCAo3VU0S/d2jliqR9j7JnklmvkFYYGDylpzphceMewyx
	 6ZRk0c1zyRivDxB+2xJlVumR/nLK2Tj6o1VJU9kNJjU2GnlASRkaIOdvbaFtKDqzrO
	 silf5OW/7GmXedSbRHOngmPYKmpxO4OSgNM4WJ+XsNWT5xPTjNYbMmkKz56vIoYvCH
	 GqhaB6aAPIazbacKenDnEofqcoNkFOcX8Bor3fVhH5tChNnqzkxf0rU7VStkW8ZXFU
	 BNG0ErXVejatw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 10/18] clk: mediatek: Add MT8189 topckgen clock
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260709-mt8189-clocks-system-base-v2-10-2926da3db6cf@collabora.com>
References: <20260709-mt8189-clocks-system-base-v2-0-2926da3db6cf@collabora.com>
 <20260709-mt8189-clocks-system-base-v2-10-2926da3db6cf@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 15:09:09 +0000
Message-Id: <20260710150909.C3FA51F01559@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324515-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:louisalexis.eyraud@collabora.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C17C873C2A6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Use-After-Free in the clock notifier unregistration path on driver=
 removal.
--

--- Patch [10]: [PATCH v2 10/18] clk: mediatek: Add MT8189 topckgen clock s=
upport ---
commit 5d23b090dfc84556b649dbc1711e28c8f0b06604
Author: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>

clk: mediatek: Add MT8189 topckgen clock support

Add support for the MT8189 topckgen clock controller, which provides
muxes and dividers for clock selection in other IP blocks.

> diff --git a/drivers/clk/mediatek/clk-mt8189-topckgen.c b/drivers/clk/med=
iatek/clk-mt8189-topckgen.c
> new file mode 100644
> index 0000000000000..2473b617e9d62
> --- /dev/null
> +++ b/drivers/clk/mediatek/clk-mt8189-topckgen.c

[ ... ]

> +static int clk_mt8189_reg_mfg_mux_notifier(struct device *dev,
> +					   struct clk *clk)
> +{
> +	struct mtk_mux_nb *mfg_mux_nb;
> +
> +	mfg_mux_nb =3D devm_kzalloc(dev, sizeof(*mfg_mux_nb), GFP_KERNEL);
> +	if (!mfg_mux_nb)
> +		return -ENOMEM;
> +
> +	mfg_mux_nb->ops =3D &mtk_mux_clr_set_upd_ops;
> +	mfg_mux_nb->bypass_index =3D 0; /* Bypass to CLK_TOP_MFG_REF_SEL */
> +
> +	return devm_mtk_clk_mux_notifier_register(dev, clk, mfg_mux_nb);
> +}

[ ... ]

> +static struct platform_driver clk_mt8189_topck_drv =3D {
> +	.probe =3D mtk_clk_simple_probe,
> +	.remove =3D mtk_clk_simple_remove,

[Severity: High]
This is a pre-existing issue, but does combining
devm_mtk_clk_mux_notifier_register() with mtk_clk_simple_remove() lead to a
use-after-free on driver unbind?

When the driver is unbound, the .remove callback (mtk_clk_simple_remove) is
executed first, which manually unregisters and frees the clocks.

After .remove completes, the devres framework executes its teardown routine=
s.
This triggers the release of the notifier registered via
devm_mtk_clk_mux_notifier_register(), causing clk_notifier_unregister() to =
be
called with the already-freed clk pointer.

Can this sequence cause memory corruption when the freed clock pointer is
dereferenced?

> +	.driver =3D {
> +		.name =3D "clk-mt8189-topck",
> +		.of_match_table =3D of_match_clk_mt8189_topck,
> +	},
> +};
> +module_platform_driver(clk_mt8189_topck_drv);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-mt8189-clo=
cks-system-base-v2-0-2926da3db6cf@collabora.com?part=3D10

