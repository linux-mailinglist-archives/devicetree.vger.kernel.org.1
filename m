Return-Path: <devicetree+bounces-295979-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AC19HuKnAmpSvQEAu9opvQ
	(envelope-from <devicetree+bounces-295979-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 06:09:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA999519796
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 06:09:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 631F9303CC1B
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 04:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E76E531715B;
	Tue, 12 May 2026 04:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYEIvXmV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3ADF383328;
	Tue, 12 May 2026 04:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778558890; cv=none; b=evo5J8Z978vPAHKGhh211jwg44edSlGA62/W+GrAmilpjNVwD4fv8kGAQrt/6oLOOQJ3NY7ILi43KxPItegVkAXTW0OAvytvfdkWhjtp7E+LOpg/F7H4cnuHxtF8mAbW292nGXw9zKlq/ZxhYWohhXtNTu5bqipLKF5m1MOOHgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778558890; c=relaxed/simple;
	bh=OWwrwL1Uj4xXo37Pa8FWFds4fKGMXpKu7TjL+rVPlCk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=C+dOu5AlgC4k/JL4KjVmIY3UOUe5Uk3sDYmtx2T62NQ/uYJxXpbc5kpM1k1z64zfMDY2+bgi+ZgwvEZWChFW2v1yoFysrHXz5Lit1Ee0WIUMdTn1eV97GJPfrhQuDwfeZCYQ/QVpv5W3Vopma9CCDln2rSh8DjYp+sPmbhNqTAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYEIvXmV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 928D4C2BCB8;
	Tue, 12 May 2026 04:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778558889;
	bh=OWwrwL1Uj4xXo37Pa8FWFds4fKGMXpKu7TjL+rVPlCk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=YYEIvXmVw5KuEKtVxFf/0lu3KytpN7PxD3jilrK5OxLLcEXwpzylNLxdQB/XBFR6i
	 8fGeuaU7PuZQeOepsqWnUkmhQ0LMn9aPJKyQCGlTZCEbeOI5cB+1kHl/KqVzFd0/Vj
	 mvyon4jCVpIdbE6eL+MGkmFDnuZjyPova0IXoHO3nBbiP9ciPZavf821/TdHhaA1MN
	 W8gcl1Lmk/Us1FkrdtKoXp4PQF/d1Rpj7RqotyPdPnKgDBSOUikcrXM117kAeUbSuU
	 EReoE77VUOXCof/d8OaA559ljlnVdXZ/No2BPz7nSKegMfRz9cRdLSxlY7qO3yTYcX
	 6TK6hBitCnNoQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/5] media: hi846: fix link frequency handling
Reply-To: sashiko@lists.linux.dev
To: "Pengyu Luo" <mitltlatltl@gmail.com>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, imx@lists.linux.dev, robh@kernel.org, Frank.Li@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260511103927.279550-3-mitltlatltl@gmail.com>
References: <20260511103927.279550-3-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 04:08:08 +0000
Message-Id: <20260512040809.928D4C2BCB8@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: CA999519796
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295979-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] Dropping the mandatory V4L2_CID_LINK_FREQ control breaks compatibi=
lity with downstream MIPI CSI-2 receivers.
- [High] Uninitialized clock pointer access causes the device tree link fre=
quency validation to be silently bypassed.
- [High] Integer division precision loss in the link frequency calculation =
causes mismatches with exact device tree specifications.
- [Medium] The commit message claims to drop the mclk clock rate check, but=
 the corresponding code remains unmodified.
--

commit 92606ae6195a0cd5f3f660281d12726034b8af33
Author: Pengyu Luo <mitltlatltl@gmail.com>

media: hi846: fix link frequency handling

This commit modifies link frequency handling to use runtime calculation
based on PLL configuration, lane count, and external clock rate, removing
hardcoded link frequencies. It drops the exposed link_freq control and
adjusts pixel rate calculations.

>     3. dropped mclk clock rate check.

The commit message says the mclk clock rate check was dropped, but looking =
at
the driver, the check if (mclk_freq !=3D 25000000) appears to still be pres=
ent
in hi846_probe(). Was this change accidentally omitted from the patch?

[ ... ]

> diff --git a/drivers/media/i2c/hi846.c b/drivers/media/i2c/hi846.c
> index 7f069aca0fce5..61297ef66a0eb 100644
> --- a/drivers/media/i2c/hi846.c
> +++ b/drivers/media/i2c/hi846.c

[ ... ]

> @@ -1192,21 +1185,37 @@ static const struct hi846_datafmt *hi846_find_dat=
afmt(u32 code)
>  	return NULL;
>  }
> =20
> -static inline u8 hi846_get_link_freq_index(struct hi846 *hi846)
> +static u64
> +hi846_get_link_freq(struct hi846 *hi846, const struct hi846_mode *cur_mo=
de)
>  {
> -	return hi846->cur_mode->link_freq_index;
> -}
> +	u16 cfg =3D cur_mode->pll_cfg_4lane;
> +	u64 mclk =3D clk_get_rate(hi846->clock);
> =20
> -static u64 hi846_get_link_freq(struct hi846 *hi846)
> -{
> -	u8 index =3D hi846_get_link_freq_index(hi846);
> +	/* NOTE: 6, 7 actually map to 8, 10, but this won't be that big */
> +	u8 post_div1 =3D 1 + FIELD_GET(GENMASK(10, 8), cfg);
> +	u8 post_div2 =3D 1 << FIELD_GET(GENMASK(12, 11), cfg);
> =20
> -	return hi846_link_freqs[index];
> +	/*
> +	 * HI846_REG_PLL_CFG_MIPI1_H =3D 0x025a, it is fixed in listed modes
> +	 * [11:8]: 0x02 =3D> pre_div =3D 3
> +	 * [7:0]: 0x5a =3D> multiplier =3D 90
> +	 */
> +	u64 link_freq =3D mclk / 3 * 90 / post_div1 / post_div2;

Could this integer division cause a precision loss?

If mclk is 25000000, 25000000 / 3 truncates to 8333333. Multiplied by 90 and
divided by 4 (the post dividers), this evaluates to 187499992 Hz instead of
the exact 187500000 Hz.

This truncation could cause hi846_check_link_freqs() to fail the equality
check against the frequencies specified in the device tree, falsely rejecti=
ng
valid hardware configurations.

Would it be better to reorder the operations to multiply before dividing
(e.g., mclk * 90 / 3 / ...)?

[ ... ]

> @@ -1426,14 +1435,6 @@ static int hi846_init_controls(struct hi846 *hi846)
> =20
>  	ctrl_hdlr->lock =3D &hi846->mutex;
> =20
> -	hi846->link_freq =3D
> -		v4l2_ctrl_new_int_menu(ctrl_hdlr, &hi846_ctrl_ops,
> -				       V4L2_CID_LINK_FREQ,
> -				       ARRAY_SIZE(hi846_link_freqs) - 1,
> -				       0, hi846_link_freqs);
> -	if (hi846->link_freq)
> -		hi846->link_freq->flags |=3D V4L2_CTRL_FLAG_READ_ONLY;
> -

Will dropping the V4L2_CID_LINK_FREQ control break compatibility with
downstream MIPI CSI-2 receivers?

The V4L2 specification mandates the V4L2_CID_LINK_FREQ control for MIPI CSI=
-2
transmitters. Downstream receiver hardware queries this control via
v4l2_get_link_freq() to dynamically configure their own PLLs and lane timing
constraints. Removing it might prevent receivers from successfully locking =
onto
the transmitter's data lanes.

[ ... ]

> @@ -1950,16 +1950,17 @@ static int hi846_identify_module(struct hi846 *hi=
846)
>  static s64 hi846_check_link_freqs(struct hi846 *hi846,
>  				  struct v4l2_fwnode_endpoint *ep)
>  {
> -	const s64 *freqs =3D hi846_link_freqs;
> -	int freqs_count =3D ARRAY_SIZE(hi846_link_freqs);
> +	int freqs_count =3D ARRAY_SIZE(supported_modes);
> +	u64 link_freq;
>  	int i, j;
> =20
>  	for (i =3D 0; i < freqs_count; i++) {
> +		link_freq =3D hi846_get_link_freq(hi846, &supported_modes[i]);

Can this access hi846->clock before it is initialized?

If hi846_check_link_freqs() is called during probe via hi846_parse_dt() bef=
ore
the clock is initialized, hi846->clock will be NULL.

Calling clk_get_rate(NULL) safely returns 0, leading to a computed link_freq
of 0. When this 0 frequency is not found in the DT endpoints, this function
returns 0. The caller checks if (fq), which evaluates to false for 0,
incorrectly treating the mismatch as a success and bypassing the DT hardware
capability validation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511103927.2795=
50-1-mitltlatltl@gmail.com?part=3D2

