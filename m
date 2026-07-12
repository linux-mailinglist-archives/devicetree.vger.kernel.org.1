Return-Path: <devicetree+bounces-325000-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dWh8KtlMU2quZgMAu9opvQ
	(envelope-from <devicetree+bounces-325000-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 10:14:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 025DF74422A
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 10:14:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ivVB6hJH;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325000-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325000-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 995F0302496F
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 08:13:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C235374183;
	Sun, 12 Jul 2026 08:13:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E15873750B6;
	Sun, 12 Jul 2026 08:13:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783844024; cv=none; b=SV3to13XP3YxXt44qMIUecrhv1hK6Cnkg/b/i3fARVcNqfOlNkpYWG4qLvDaZ3LVlQJMsnt6U+WY8qkmMIoub9sFqkQt1829HuXYxlNIfPa0CuSST6LyZJilXFUzKOAe+dHX1vp3ZXA6ciVUvunrV2v6Tm6U/k2/jXa2cJfDF+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783844024; c=relaxed/simple;
	bh=ZIDrv0FINdeI224hoZ9Fl10M82eC27Ngr77xR61OysM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GQ+W+wZGzBy8rc+h637FFzqxYZjfXM/Z1SGYeBPHGFFvsq0ZEm/AIu73ILQtBF4dV9c2mvriGypJY6eaj3eeHUcw1ImNWan5w8VLiVXYRVWFbuDNBF7JCl2TM1Lzv1vHnFgHybcOAyiSSPKo794J0FbpCgUqVjAEYlCnK9ryijE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivVB6hJH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BA821F00A3A;
	Sun, 12 Jul 2026 08:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783844022;
	bh=/gUK/gfPOJdqpAFfny3cWyEsrcba5qTniaH4Hq+zPMQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ivVB6hJHxy2VnRTxiG+0JHN9KdicD6n0nPijkmIcRz39eholGOEFsCTROImcpbWl6
	 m/PEuCbZ6md87QX/MUm3oPHJ4SlQPDIV32SuZgVh4jg9SNDNgc+Mhly111ShRIhH8u
	 hm3vOOzrUg2mRh8jR3vwP8mjX4t8c+bsJEWA0PKQ04pHzUpMBayGCfPQ0cW6juviRc
	 j7kWKciJYikLltICtVBRAfu8Yb35Frq5AOuytQ29+1jDLEigCFgnx7179t2hjxYRZF
	 4SfEDDTW+rjZdMFC0J1olQQqubQJ0dOvpCZ8cqotX7GUM3wdrvP5J9irNfBwATkaUV
	 BAKP0EBTbnb2w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/8] clk: sunxi-ng: a733: Add PLL clocks support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Junhui Liu" <junhui.liu@pigmoral.tech>
Cc: linux-sunxi@lists.linux.dev, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260711-a733-clk-v2-4-974d188cbe0c@pigmoral.tech>
References: <20260711-a733-clk-v2-0-974d188cbe0c@pigmoral.tech>
 <20260711-a733-clk-v2-4-974d188cbe0c@pigmoral.tech>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Jul 2026 08:13:41 +0000
Message-Id: <20260712081342.5BA821F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-325000-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pigmoral.tech:email,smtp.kernel.org:mid,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:junhui.liu@pigmoral.tech,m:linux-sunxi@lists.linux.dev,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 025DF74422A

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The `hws` flexible array in `sun60i_a733_hw_clks` is allocated wit=
h insufficient size, leading to an out-of-bounds read in `sunxi_ccu_probe`.
- [Medium] The driver is missing the `MODULE_DEVICE_TABLE` macro, which pre=
vents it from being autoloaded by udev when built as a loadable module.
--

--- Patch [4]: [PATCH v2 4/8] clk: sunxi-ng: a733: Add PLL clocks support -=
--
commit 803dab2e98d8379ce658bcbb6ef611389e990997
Author: Junhui Liu <junhui.liu@pigmoral.tech>

clk: sunxi-ng: a733: Add PLL clocks support
   =20
Add PLL clock support for the main CCU of the Allwinner A733 SoC. The
structure is mostly similar to the sun55i, with the addition of a
PLL_REF clock that normalizes the hardware-detected DCXO/hosc frequency
(19.2MHz, 24MHz, or 26MHz) into a consistent 24MHz reference for all
subsequent PLLs.

> diff --git a/drivers/clk/sunxi-ng/ccu-sun60i-a733.c b/drivers/clk/sunxi-n=
g/ccu-sun60i-a733.c
> new file mode 100644
> index 0000000000000..f80db6ab1a98f
> --- /dev/null
> +++ b/drivers/clk/sunxi-ng/ccu-sun60i-a733.c

[ ... ]

> +static struct clk_hw_onecell_data sun60i_a733_hw_clks =3D {
> +	.hws	=3D {
> +		[CLK_PLL_REF]		=3D &pll_ref_clk.common.hw,

[ ... ]

> +		[CLK_PLL_DE_4X]		=3D &pll_de_4x_clk.common.hw,
> +		[CLK_PLL_DE_3X]		=3D &pll_de_3x_clk.common.hw,
> +	},
> +	.num	=3D CLK_FANOUT3 + 1,
> +};

[Severity: High]
Since this structure statically initializes a flexible array, the compiler =
will
only allocate space for the explicitly initialized elements (up to
CLK_PLL_DE_3X, which is 43 elements). However, .num is set to CLK_FANOUT3 +=
 1.

Will this cause sunxi_ccu_probe() to read out-of-bounds when iterating up to
.num?=20

If the out-of-bounds memory is non-NULL, could this lead to a panic when
dereferencing the pointer?

[ ... ]

> +static const struct of_device_id sun60i_a733_ccu_ids[] =3D {
> +	{ .compatible =3D "allwinner,sun60i-a733-ccu" },
> +	{ /* sentinel */ }
> +};

[Severity: Medium]
When this driver is built as a loadable module, will it fail to autoload?

It appears to be missing a MODULE_DEVICE_TABLE(of, sun60i_a733_ccu_ids)
declaration to export the alias metadata for udev.

> +
> +static struct platform_driver sun60i_a733_ccu_driver =3D {
> +	.probe	=3D sun60i_a733_ccu_probe,
> +	.driver	=3D {
> +		.name			=3D "sun60i-a733-ccu",
> +		.suppress_bind_attrs	=3D true,
> +		.of_match_table		=3D sun60i_a733_ccu_ids,
> +	},
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260711-a733-clk-v=
2-0-974d188cbe0c@pigmoral.tech?part=3D4

