Return-Path: <devicetree+bounces-324516-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vOtiHy0LUWrw+QIAu9opvQ
	(envelope-from <devicetree+bounces-324516-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 17:09:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C1C73C15F
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 17:09:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dvUVzvra;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324516-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-324516-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1EF3E301DEFD
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 15:09:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3945B2E62D9;
	Fri, 10 Jul 2026 15:09:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3392E8DEC
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 15:09:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783696152; cv=none; b=XvaBmORSbDeFxCHgo/crec9q7mAaqjuZjXJHH2hM+Tw4hVrYR2pUz2BxGxT7QQipRi4aFHtzL5NhzOCAUFJcJS20M9iX8MWmvlnt41tzX6+hi77zpWF44gir0EiF6mpSo3KN2UDDiHW9UJxZ9y0BCEgUUq7t0RceuwBaqpQsbtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783696152; c=relaxed/simple;
	bh=6fVXoA+3Uf+AkLhPI+Ql+36BZcke28bJiUizZOt3JM4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nUcQm9CustGeOE8ltpKwUQc6ibGATwJdxhXmiSsHXoDqB37O4jFczJTxKp/uRMfVF18eYj6O5DjiQnf/Wp9QENfl776tG0vO2Pdbb4rJLXtmRq3xOrHX7bLiN/PVA5x+uqTtq7criLKtD2v7zih7FJRirLpm1PoeVprk49p0HCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvUVzvra; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26CD61F000E9;
	Fri, 10 Jul 2026 15:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783696149;
	bh=Uz1KpyPklgHHA7d/Pwa0W+d4aIXXq2l9lBzgSwirwq8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dvUVzvraLCX6upkkFtPKR9rJ4gpvp88QSBvocJUMcPvYrHnMKyqLJCG3CHc3GTZRv
	 wLo8E9V+1apeB2WnKOl1uuULgOMQ4Egu1VLX34QDy2+zO0qet9wb22zOMF6ecte8Dn
	 Sz/aMxnnGh8IzFjxDwHzBJJ0t5oEeg+NZUmnaaCXHvsKU79WUWN/ACe/tS2HMba9yX
	 jqyo8hleYy4F14nTXIiKfvO/icRKRUVbrLe6WfsWAcTh86JUjE/15rlfpUjJ92sGQ7
	 c0l69u3G4yxaJ8eJ1KiQuBvnmZie9NdzXC65GAQXeyP2sQpbt0lCyJiaE/zPaaueDY
	 DCXqmHvbY6C7Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 09/18] clk: mediatek: Add MT8189 apmixedsys clock
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260709-mt8189-clocks-system-base-v2-9-2926da3db6cf@collabora.com>
References: <20260709-mt8189-clocks-system-base-v2-0-2926da3db6cf@collabora.com>
 <20260709-mt8189-clocks-system-base-v2-9-2926da3db6cf@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 15:09:08 +0000
Message-Id: <20260710150909.26CD61F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324516-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:louisalexis.eyraud@collabora.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,collabora.com:email,state.base:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F2C1C73C15F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [Medium] FHCTL I/O memory mapped by fhctl_parse_dt() is leaked if mtk_clk=
_register_pllfhs() fails during probe.

Pre-existing issues:
- [High] Dangling I/O pointers in the static pllfhs array can lead to a use=
-after-free Data Abort on driver re-probe.
--

--- Patch [9]: [PATCH v2 09/18] clk: mediatek: Add MT8189 apmixedsys clock =
support ---
commit 5ceb4e2595f9e63ad996ab6c91c8b563477a9fc7
Author: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>

clk: mediatek: Add MT8189 apmixedsys clock support

Add support for the MT8189 apmixedsys clock controller, which provides
PLLs generated from SoC 26m.

> diff --git a/drivers/clk/mediatek/clk-mt8189-apmixedsys.c b/drivers/clk/m=
ediatek/clk-mt8189-apmixedsys.c
> new file mode 100644
> index 0000000000000..0657a50c30d9f
> --- /dev/null
> +++ b/drivers/clk/mediatek/clk-mt8189-apmixedsys.c

[ ... ]

> +static struct mtk_pllfh_data pllfhs[] =3D {
> +	FH(CLK_APMIXED_ARMPLL_LL, 0, 0x003C),
> +	FH(CLK_APMIXED_ARMPLL_BL, 1, 0x0050),
> +	FH(CLK_APMIXED_CCIPLL, 2, 0x0064),
> +	FH(CLK_APMIXED_MAINPLL, 3, 0x0078),
> +	FH(CLK_APMIXED_MMPLL, 4, 0x008C),
> +	FH(CLK_APMIXED_MFGPLL, 5, 0x00A0),
> +	FH(CLK_APMIXED_EMIPLL, 6, 0x00B4),
> +	FH(CLK_APMIXED_TVDPLL1, 7, 0x00C8),
> +	FH(CLK_APMIXED_TVDPLL2, 8, 0x00DC),
> +	FH(CLK_APMIXED_MSDCPLL, 9, 0x00F0),
> +	FH(CLK_APMIXED_UFSPLL, 10, 0x0104),
> +	FH(CLK_APMIXED_APUPLL, 11, 0x0118),
> +	FH(CLK_APMIXED_APUPLL2, 12, 0x012c),
> +};

[ ... ]

> +static int clk_mt8189_apmixed_probe(struct platform_device *pdev)
> +{
> +	int r;
> +	struct clk_hw_onecell_data *clk_data;
> +	struct device_node *node =3D pdev->dev.of_node;
> +	const u8 *fhctl_node =3D "mediatek,mt8189-fhctl";
> +
> +	clk_data =3D mtk_alloc_clk_data(ARRAY_SIZE(apmixed_plls));
> +	if (!clk_data)
> +		return -ENOMEM;
> +
> +	fhctl_parse_dt(fhctl_node, pllfhs, ARRAY_SIZE(pllfhs));
> +

[Severity: High]
This is a pre-existing issue, but does unbinding and re-probing this driver
create a use-after-free risk with the static pllfhs array?

When the driver is unbound, mtk_clk_unregister_pllfhs() unmaps the FHCTL
base but leaves the state.base pointer and state.fh_enable flag set in the
static array:

drivers/clk/mediatek/clk-pllfh.c:mtk_clk_unregister_pllfhs() {
        ...
        if (fhctl_base)
                iounmap(fhctl_base);
        ...
}

If the driver is then re-probed and fhctl_parse_dt() encounters an error
(like an of_iomap failure), it returns without clearing the static array.

When probe proceeds to mtk_clk_register_pllfhs(), will it see fh_enable =3D=
=3D 1
and attempt to access the unmapped I/O memory left over in state.base?

> +	r =3D mtk_clk_register_pllfhs(&pdev->dev, apmixed_plls, ARRAY_SIZE(apmi=
xed_plls),
> +				    pllfhs, ARRAY_SIZE(pllfhs), clk_data);
> +	if (r)
> +		goto free_apmixed_data;

[Severity: Medium]
If mtk_clk_register_pllfhs() fails here, does the error handling path leak
the I/O memory mapped by fhctl_parse_dt()?

The goto jumps directly to free_apmixed_data, completely bypassing the
unregister_plls label where the unmapping would normally happen.

> +
> +	r =3D of_clk_add_hw_provider(node, of_clk_hw_onecell_get, clk_data);
> +	if (r)
> +		goto unregister_plls;
> +
> +	platform_set_drvdata(pdev, clk_data);
> +
> +	return 0;
> +
> +unregister_plls:
> +	mtk_clk_unregister_pllfhs(apmixed_plls, ARRAY_SIZE(apmixed_plls), pllfh=
s,
> +				  ARRAY_SIZE(pllfhs), clk_data);
> +free_apmixed_data:
> +	mtk_free_clk_data(clk_data);
> +	return r;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-mt8189-clo=
cks-system-base-v2-0-2926da3db6cf@collabora.com?part=3D9

