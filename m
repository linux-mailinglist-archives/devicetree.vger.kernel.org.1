Return-Path: <devicetree+bounces-319623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e/pzGxfPRmoMeAsAu9opvQ
	(envelope-from <devicetree+bounces-319623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 22:50:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A97386FCD59
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 22:50:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TdVCbMOi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319623-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319623-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 77B14300C907
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 20:50:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8385E370AF0;
	Thu,  2 Jul 2026 20:50:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED81394471
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 20:50:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783025428; cv=none; b=M1fqDsljYpXCc39lMwsPfOSgX+R872IuUx3N43PoG1clmh/13yhRq3N2mYYbB1TJ3KBu5lasXK4Q5IuUcXi02jYHo7mGDD7Ljb8WeyWOX+ZjlCimKBrMRC6odfWudBGIyxLjStNsAMVPaTeFpa4fy92BIeWDWqBpEwE0T9uEqQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783025428; c=relaxed/simple;
	bh=5o3BAAfIYcSZ8Kz6K390dBQYLgHZP3V91Y/QBiWzoWc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=daukc/eZ4i4XfFyw2hpm6dqxu8WGEZepAkGUe/xwZi0TDwL3nZOUjCDWeT+GvH6hWiUp1pgG6EwNYMf5q2Z6xBFKX+VsHq47yU1XhORhJw516+5KwpJGgZ7a4orE+APO5bSOZQXgBHEW3E7/gxQYX5pSLMeqv0AAyF6ykNlZYII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdVCbMOi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4956D1F000E9;
	Thu,  2 Jul 2026 20:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783025425;
	bh=qBIWloFzjrOaOhG3cuqbvL3Z9cS1NggVrPF16Jo0sgg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TdVCbMOi5flZCrx10YpcNcm8p5sB0Vv0NhsLoEG5ysL1bPja5DvJWuaLc4P3YNjkn
	 zvV3FTuT0EA3dm852v0WGOH+ZeKxNwfm50dpI+d25JK62VojVNNYV5u4LuIaSy7N+k
	 L+9/kwO/Z1Fe6/v9Yzhc/9iRA3XY7s75X5yBtUGljvYDs4GJthZzM1Zw3QVlOp2KqD
	 vturx9qdF6KiEo+5OnG8UzG+5L+wZ8I0A0r93WkAJKcr3WgskgNose4LZkQbozmS+C
	 GYi0K1C7D4RXn3Vd3gYDdvOTEJqNIsyOkf53acODfaCy717TX2G+Rz51iiD4vKDwRT
	 y7DXSDk1DX3Pg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 07/12] clk: zte: Add zx PLL support infrastructure
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260702-zx29clk-v6-7-377b704f80c4@gmail.com>
References: <20260702-zx29clk-v6-0-377b704f80c4@gmail.com>
 <20260702-zx29clk-v6-7-377b704f80c4@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 20:50:24 +0000
Message-Id: <20260702205025.4956D1F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319623-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:stefandoesinger@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,init.name:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A97386FCD59

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [High] zx29_pll_set_rate can fail with -EINVAL for valid configurations d=
ue to a strict equality check and integer truncation during recalculation.
- [High] Modifying the PLL rate while it is active without the CLK_SET_RATE=
_GATE flag can crash downstream hardware.
- [Medium] Repeated error logging inside a nested loop when parent_rate is =
0 or calc_values fails floods the kernel logs.
- [Medium] dev_warn is used unconditionally in .determine_rate when a reque=
sted rate cannot be matched exactly.
- [Low] Uninitialized stack variable `val` is printed in an error message i=
f `regmap_read_poll_timeout` fails.
--

commit 65cd736a246afa41560a934d5f06e151e30761f6
Author: Stefan D=C3=B6singer <stefandoesinger@gmail.com>

clk: zte: Add zx PLL support infrastructure

This patch adds the infrastructure to support ZTE zx platforms' PLL
configuration. It includes rate calculation, prepare/enable handling,
and registration functions for the CCF.

> diff --git a/drivers/clk/zte/pll-zx.c b/drivers/clk/zte/pll-zx.c
> index 1a8cb37ca7e20..f527c15be01e7 100644
> --- a/drivers/clk/zte/pll-zx.c
> +++ b/drivers/clk/zte/pll-zx.c
[ ... ]
> @@ -3,15 +3,493 @@
> +static int zx29_pll_prepare(struct clk_hw *hw)
> +{
> +	struct zx29_clk_pll *pll =3D to_zx29_clk_pll(hw);
> +	u32 val;
> +	int res;
> +
> +	res =3D regmap_clear_bits(pll->map, pll->reg, ZX29_PLL_DISABLE);
> +	if (res < 0)
> +		return res;
> +
> +	/* Lock duration is usually between 300us to 500us */
> +	res =3D regmap_read_poll_timeout(pll->map, pll->reg, val, val & ZX29_PL=
L_LOCKED, 50, 2000);
> +	if (res) {
> +		regmap_set_bits(pll->map, pll->reg, ZX29_PLL_DISABLE);
> +		dev_err(pll->dev, "%s: PLL enable failed: %d\n", clk_hw_get_name(&pll-=
>hw), val);

[Severity: Low]
Is there a chance this could print uninitialized stack memory?

If regmap_read_poll_timeout() fails due to a hardware or regmap fault before
populating 'val', it looks like we might log the uninitialized contents of
'val' here.

> +	}
> +	return res;
> +}
[ ... ]
> +static unsigned long zx29_pll_get_rate(const struct zx29_clk_pll *pll, u=
nsigned long parent_rate,
> +				       u32 setting)
> +{
> +	unsigned long refdiv, fbdiv, postdiv1, postdiv2, freq;
> +	const char *name =3D clk_hw_get_name(&pll->hw);
> +	u64 vco;
> +
> +	refdiv =3D (setting & ZX29_PLL_REFDIV_MASK) >> ZX29_PLL_REFDIV_SHIFT;
> +	fbdiv =3D (setting & ZX29_PLL_FBDIV_MASK) >> ZX29_PLL_FBDIV_SHIFT;
> +	postdiv1 =3D (setting & ZX29_PLL_POSTDIV1_MASK) >> ZX29_PLL_POSTDIV1_SH=
IFT;
> +	postdiv2 =3D (setting & ZX29_PLL_POSTDIV2_MASK) >> ZX29_PLL_POSTDIV2_SH=
IFT;
> +	dev_dbg(pll->dev, "%s: reference clock %lu HZ, PLL setting 0x%08x\n",
> +		name, parent_rate, setting);
> +
> +	if (!refdiv || !postdiv1 || !postdiv2) {
> +		dev_err(pll->dev, "%s: divide by zero (%lu, %lu, %lu)\n", name, refdiv=
, postdiv1,
> +			postdiv2);

[Severity: Medium]
Could this dev_err() flood the kernel logs during frequency scaling or prob=
e?

If a driver queries a clock rate while the parent clock is disabled
(parent_rate =3D=3D 0), rational_best_approximation() can exit with refdiv =
=3D 0.

Since this get_rate() function is called repeatedly inside the 7x7 nested l=
oop
in zx29_pll_calc_values():

zx29_pll_calc_values() {
...
			setting |=3D j << ZX29_PLL_POSTDIV2_SHIFT;
			out =3D zx29_pll_get_rate(pll, parent_rate, setting);
...
}

It seems this might print 49 error messages for a single rate calculation
attempt.

> +		return 0;
> +	}
[ ... ]
> +static int zx29_pll_determine_rate(struct clk_hw *hw, struct clk_rate_re=
quest *req)
> +{
> +	struct zx29_clk_pll *pll =3D to_zx29_clk_pll(hw);
> +	unsigned long new_rate;
> +	u32 setting;
> +
> +	/* TODO: DPLL can switch between two parents, one of which is another P=
LL. Take this into
> +	 * account when searching the config space and set req->best_parent_rat=
e.
> +	 *
> +	 * In practise it shouldn't matter though. DPLL is always configured to=
 a fixed frequency.
> +	 */
> +	setting =3D zx29_pll_calc_values(pll, req->best_parent_rate, req->rate);
> +	if (!setting)
> +		return -EINVAL;
> +
> +	new_rate =3D zx29_pll_get_rate(pll, req->best_parent_rate, setting);
> +	if (new_rate !=3D req->rate) {
> +		dev_warn(pll->dev, "Did not find an exact match. Want %lu, got %lu\n",
> +			 req->rate, new_rate);

[Severity: Medium]
Is dev_warn() the appropriate log level here?

When a driver queries clk_round_rate() or clk_set_rate() with a target
frequency that cannot be perfectly matched by the dividers, returning a
rounded rate is the expected framework behavior.

Because .determine_rate() is queried heavily by the CCF, could this
unconditional warning cause significant log spam during normal operation?

> +		req->rate =3D new_rate;
> +	}
> +
> +	return 0;
> +}
> +
> +static int zx29_pll_set_rate(struct clk_hw *hw, unsigned long rate,
> +		      unsigned long parent_rate)
> +{
> +	struct zx29_clk_pll *pll =3D to_zx29_clk_pll(hw);
> +	int res =3D -EINVAL;
> +	u32 setting;
> +
> +	setting =3D zx29_pll_calc_values(pll, parent_rate, rate);
> +	if (zx29_pll_get_rate(pll, parent_rate, setting) =3D=3D rate) {

[Severity: High]
Will this strict equality check reject valid configuration requests?

When CCF's determine_rate computes a new rate, the value can be slightly
truncated. If CCF passes this truncated rate to zx29_pll_set_rate(),
recalculating the VCO target inside zx29_pll_calc_values() with:

	u64 vco =3D (u64)rate * i * j;

might cause it to fall below ZX29_PLL_VCO_MIN_FREQ or yield a slightly
different fractional setting. Since the condition here demands strict equal=
ity,
is it possible that legitimate clock rate changes will fail with -EINVAL?

> +		res =3D regmap_update_bits(pll->map, pll->reg, 0x00ffffff, setting);

[Severity: High]
Is it safe to modify these hardware divisors while the PLL is actively feed=
ing
downstream clocks?

This regmap_update_bits() modifies the reference and feedback dividers dire=
ctly
without engaging a bypass mode or polling for the lock bit.

Additionally, the initialization structure in zx_clk_register_plls() doesn't
set the CLK_SET_RATE_GATE flag:

zx_clk_register_plls() {
...
		init.name =3D desc[i].name;
		init.ops =3D &zx29_pll_ops;
...
}

Could changing the dividers on an active PLL cause the VCO to slew
unpredictably and crash downstream hardware?

> +		dev_info(pll->dev, "%s: Setting rate: 0x%08x\n", clk_hw_get_name(hw), =
setting);
> +	}
> +
> +	return res;
> +}
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702-zx29clk-v6=
-0-377b704f80c4@gmail.com?part=3D7

