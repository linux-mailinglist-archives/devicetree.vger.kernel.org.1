Return-Path: <devicetree+bounces-259098-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8EF5HTnDc2kCygAAu9opvQ
	(envelope-from <devicetree+bounces-259098-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 19:51:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 202ED79C55
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 19:51:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2358302A2CE
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2B9F226CFE;
	Fri, 23 Jan 2026 18:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvIZxIm6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE081158DA3;
	Fri, 23 Jan 2026 18:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769194232; cv=none; b=RZdM0BL7TAahLIJMXCU31BUpBZ4yW5clmFTed3qUOY3haS+8ztHM7qNc5yJA+5uu8PVIUHwsU6w62Z1MsifKy0p0qyzpMU6iNRO4Mauam1mLFG4ZK5v2RovfLsq6hOBUBNLmABAUYXk5uSwQrvIcAxExlXcFo1U/EdFUwJfcfjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769194232; c=relaxed/simple;
	bh=AACTcPuZyvGB0IXgMsUqrbXIGUUWuQnFbMjQ3y1LIQw=;
	h=Content-Type:MIME-Version:In-Reply-To:References:Subject:From:Cc:
	 To:Date:Message-ID; b=tPY2J4mLR+zAqPIBbcdI6SZyE6e3x0pPZiGwMJhrso1rqFrBYJVC6PT5AYgnkvugQCvSrclOKAZaqOaysUrFHbXDzZfYrAKl9w9+50Umcz7Sj38HctlCN5mWnS6UbMZT7iCa65Ej8rb08zsV8Ai1lB7ugzcGCPyXvHuUiYl+a68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvIZxIm6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A419EC4CEF1;
	Fri, 23 Jan 2026 18:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769194232;
	bh=AACTcPuZyvGB0IXgMsUqrbXIGUUWuQnFbMjQ3y1LIQw=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=TvIZxIm6nAa5pIdXTJIiF3XNFtpA2ghG49/okK3C3O3Pf3y9DE79FJtkRwlIRPNLV
	 obfZIIrLQVChY3xgPxJUU8kaWLJqFZIijF0g/G25CfCiHgzDvaS2k8WH2m2HVDuPE6
	 LZri3qZRWeK3r1ahN1jDItZSEz7n7dFy8v1FtxXG8naRSeQmDsXl2YV3k3Vy8qYfBf
	 vIVCc2ONoOmY7YS7IHuEyM0cCmsjBNz+FaYojRSRlyziN0trQXuyX7MohbmwcReYCi
	 2z3BeQhmE51tX5zfe0dME3W9dqEU745sjF6y33nFFv9A5ylnOVGaBNsVJX9MkrGX3h
	 z8tMPot2fQE6A==
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260121071412.256215-3-kenadicanady@gmail.com>
References: <20260121071412.256215-1-kenadicanady@gmail.com> <20260121071412.256215-3-kenadicanady@gmail.com>
Subject: Re: [PATCH v2 2/2] Add clock driver for Unisoc SC9832E SoC.
From: Stephen Boyd <sboyd@kernel.org>
Cc: zhang.lyra@gmail.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Nadi Ke <kenadicanady@gmail.com>
To: Nadi Ke <kenadicanady@gmail.com>, baolin.wang@linux.alibaba.com, conor+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com, orsonzhai@gmail.com, robh@kernel.org
Date: Fri, 23 Jan 2026 11:50:30 -0700
Message-ID: <176919423048.4027.4488503741628294165@lazor>
User-Agent: alot/0.11
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259098-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,linux.alibaba.com,kernel.org,baylibre.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sboyd@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 202ED79C55
X-Rspamd-Action: no action

Quoting Nadi Ke (2026-01-21 00:14:12)
> diff --git a/drivers/clk/sprd/sc9832e-clk.c b/drivers/clk/sprd/sc9832e-cl=
k.c
> new file mode 100644
> index 000000000..0574097b0
> --- /dev/null
> +++ b/drivers/clk/sprd/sc9832e-clk.c
> @@ -0,0 +1,1077 @@
[...]
> +};
> +
> +static const struct of_device_id sprd_sc9832e_clk_ids[] =3D {
> +       { .compatible =3D "sprd,sc9832e-glbregs",         /* 0x402b0000 */
> +         .data =3D &sc9832e_pmu_gate_desc },
> +       { .compatible =3D "sprd,sc9832e-pll",                     /* 0x40=
3c0000 */
> +         .data =3D &sc9832e_pll_desc },
> +       { .compatible =3D "sprd,sc9832e-mpll",            /* 0x403f0000 */
> +         .data =3D &sc9832e_mpll_desc },
> +       { .compatible =3D "sprd,sc9832e-dpll",            /* 0x403d0000 */
> +         .data =3D &sc9832e_dpll_desc },
> +       { .compatible =3D "sprd,sc9832e-rpll",            /* 0x40410000 */
> +         .data =3D &sc9832e_rpll_desc },
> +       { .compatible =3D "sprd,sc9832e-apahb-gate",      /* 0x20e00000 */
> +         .data =3D &sc9832e_apahb_gate_desc },
> +       { .compatible =3D "sprd,sc9832e-aonapb-gate",     /* 0x402e0000 */
> +         .data =3D &sc9832e_aonapb_gate_desc },
> +       { .compatible =3D "sprd,sc9832e-ap-clk",          /* 0x21500000 */
> +         .data =3D &sc9832e_ap_clk_desc },
> +       { .compatible =3D "sprd,sc9832e-aon-clk",         /* 0x402d0000 */
> +         .data =3D &sc9832e_aon_clk_desc },
> +       { .compatible =3D "sprd,sc9832e-apapb-gate",      /* 0x71300000 */
> +         .data =3D &sc9832e_apapb_gate_desc },
> +       { }
> +};
> +MODULE_DEVICE_TABLE(of, sprd_sc9832e_clk_ids);

Please move this after probe next to the driver structure.

> +
> +static int sc9832e_clk_probe(struct platform_device *pdev)
> +{
> +       const struct of_device_id *match;
> +       const struct sprd_clk_desc *desc;
> +       int ret;
> +
> +       match =3D of_match_node(sprd_sc9832e_clk_ids, pdev->dev.of_node);

Use device_get_match_data()

> +       if (!match)
> +               return -ENODEV;
> +
> +       desc =3D match->data;
> +

