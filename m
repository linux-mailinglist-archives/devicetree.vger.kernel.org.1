Return-Path: <devicetree+bounces-313601-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BfXXKks6NGqwSAYAu9opvQ
	(envelope-from <devicetree+bounces-313601-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 20:34:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 107AD6A2299
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 20:34:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MWyF6nku;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313601-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313601-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A228D302ED72
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 18:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 788C0402429;
	Thu, 18 Jun 2026 18:34:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556CF3F23DB
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 18:34:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781807685; cv=none; b=rIOZY8hF8EXGGAjkA7L/8xEPUHOQqFsYruDiIVgkW9MOmrFjwxUNci++AfsEJyBciXCxd7iqEq7YvxQ7HDMegL+LwVZ4FG+vF/wwZhNfajPbA3AKSNNl5uc8Mgp4/7NlmTNyn/8Ma+RMbDobXlJd02xZFnMTfloqw2gkvOWsN40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781807685; c=relaxed/simple;
	bh=U77YMZyLvE3df99wwofuHzuU8XMhU4zPChwwENC1SEU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Tk935gVtiHNCR7wG3rnrXfRPp0lNmaKn/TQgoPIxKvERunZx9c5+5l5g4oVvCCdTtWrmsM6udS9zk1CSj0BHU9B+UvsopRKbI1KNT3SMOHxT/lvflZXmPLA9AMcWjn1QZ2PjAbI790w3eu1Xx1vPzEo+DxCmn1B3uMG5PDLJMC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWyF6nku; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC8621F00A3A;
	Thu, 18 Jun 2026 18:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781807684;
	bh=iMNY+Iz79d2J/L85GfrH1x85moPzEdypCm4Q4IzdDzM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MWyF6nkuqHsXw0t9sCrZBaBPrP0ZXDvIPY0kcq1Xo84zIo1ythXYyUOl7Mas6JjwY
	 oSiejCttC0gBsgS+s5n6mWY75ndjn1zuMD1obkVsv+948lnMDd3MArfcdz1leU0s0s
	 DdXCoEnKPc9FXFUr2iKAPUViRIXHykvXJra/fFiIlJuOHeqYPBmY2m2PSQiB8gwfOz
	 4NmKNsoo6HAZtdwPf6wrvESkDLvbIpRkaiis4KdG5btiOtzsYVdgcVHt1KIjfmAx9p
	 yk8Hirj6n9YHoVgi6vg6vcdiUcaGVI/yD6ecvwvzWOsXbKWjcW2GfXk3EeMxI+W/7U
	 VFbR/8q2dDdzA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 4/5] clk: renesas: Extract RZ/V2H PLL calculation
 helpers into shared library
Reply-To: sashiko-reviews@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: wsa+renesas@sang-engineering.com, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260618181949.3036280-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260618181949.3036280-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260618181949.3036280-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 18:34:42 +0000
Message-Id: <20260618183442.CC8621F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:wsa+renesas@sang-engineering.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:prabhakarcsengg@gmail.com,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-313601-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,renesas.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
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
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 107AD6A2299

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [Low] The new library file `rzv2h-cpg-lib.c` uses 64-bit math macros and =
functions but fails to explicitly include `<linux/math64.h>`.

Pre-existing issues:
- [High] Incorrect signed/unsigned promotion on 32-bit architectures causes=
 frequency calculation to erroneously increase instead of decrease when the=
 K component is negative.
--

commit 70a8fa3652af11a63021ff758a114c890594d96c
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

clk: renesas: Extract RZ/V2H PLL calculation helpers into shared library

This patch extracts the RZ/V2H PLL and divider parameter calculation
helpers into a new shared library, introducing the CLK_RZV2H_CPG_LIB
Kconfig symbol. It adds rzv2h-cpg-lib.c to host the algorithms and
updates the header to expose compatibility aliases for existing users.

> diff --git a/drivers/clk/renesas/rzv2h-cpg-lib.c b/drivers/clk/renesas/rz=
v2h-cpg-lib.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/clk/renesas/rzv2h-cpg-lib.c
> @@ -0,0 +1,217 @@
> +// SPDX-License-Identifier: GPL-2.0
[ ... ]
> +#include <linux/clk/renesas.h>
> +#include <linux/export.h>
> +#include <linux/math.h>
> +#include <linux/types.h>
> +#include <linux/units.h>

[Severity: Low]
Does this new file need to explicitly include linux/math64.h?

It heavily relies on 64-bit math operations like mul_u32_u32(), div_s64(),
DIV_S64_ROUND_CLOSEST(), and DIV_U64_ROUND_CLOSEST(), which are defined in
linux/math64.h. The original implementation in rzv2h-cpg.c included it,
but it appears to be missing here, which could lead to implicit function
declaration errors on certain architectures.

[ ... ]
> +bool rzv2h_cpg_get_pll_pars(const struct rzv2h_pll_limits *limits,
> +			    struct rzv2h_pll_pars *pars, u64 freq_millihz)
> +{
[ ... ]
> +				/* PLL_M component of (output * 65536 * PLL_P) */
> +				output =3D mul_u32_u32(p.m * 65536, input_fref);
> +				/* PLL_K component of (output * 65536 * PLL_P) */
> +				output +=3D p.k * input_fref;

[Severity: High]
This isn't a bug introduced by this patch, but could this integer promotion
cause incorrect frequency calculations on 32-bit architectures?

The variable p.k is declared as an s16 (signed) and input_fref is an
unsigned long. On 32-bit systems, unsigned long is a 32-bit unsigned
integer. When p.k is negative, does the C integer promotion rule cause it
to be cast to a 32-bit unsigned integer before multiplication, resulting
in a massive positive number wrapping around?

If so, when added to the u64 output variable, it would be zero-extended
rather than sign-extended, effectively increasing the frequency massively
rather than subtracting the proportional frequency.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618181949.3036=
280-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D4

