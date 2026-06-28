Return-Path: <devicetree+bounces-316541-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vZXsApOAQWqvrgkAu9opvQ
	(envelope-from <devicetree+bounces-316541-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 22:14:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 478AE6D4DD8
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 22:14:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316541-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316541-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13C8B300D6A5
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 20:14:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB7EC313E07;
	Sun, 28 Jun 2026 20:14:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EBA77261A
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 20:14:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782677648; cv=none; b=eI3TvSCaQgCk7OHMZIJQAiA1tmFLgruQ/r2jmEhuHyAEN8ISaQEBZUYo/b8VtJcC13VxQBwxwHzqjRJLeLFWmp/whZSznK+vHxFe3CQxkuVXsNsmG2dqgo32kbD2rwEWZufzpqY4+jESgMmVOS9e+j2tpZ161uZ/KYHyjc4/kO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782677648; c=relaxed/simple;
	bh=YGMXVkkbT7CT+eR2kVmA40O5lG7LvF2nAJlkaFRxvPM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Yz7pZtQ9aYoK9BkjPFJ89EcCJcg9YyaEwNnFVdJ7KLngK/JgPb8ncb9E3g1VlIIY/NQORnoJ7QnRbW4+tYUxraC1j17fyIJc6aDri3G/p7f6cdyR+FcyZGBL6LqzfLpnLtmBRahZJo2pU7TOD3z9GE7nxls6lNj7WbsE/pzY+jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAB271F000E9;
	Sun, 28 Jun 2026 20:14:06 +0000 (UTC)
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v5 06/12] clk: zte: Add zx PLL support
 infrastructure
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260628-zx29clk-v5-6-79ff044e4192@gmail.com>
References: <20260628-zx29clk-v5-0-79ff044e4192@gmail.com>
 <20260628-zx29clk-v5-6-79ff044e4192@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Jun 2026 20:14:03 +0000
Message-Id: <20260628201406.EAB271F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-316541-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stefandoesinger@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 478AE6D4DD8

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Calling `clk_hw_get_rate(clk_hw_get_parent(&pll->hw))` inside `zx2=
9_pll_determine_rate` will cause a NULL pointer dereference if the clock is=
 an orphan.
- [Medium] `zx29_pll_determine_rate` reads the currently committed hardware=
 parent rate instead of using the CCF transaction state, breaking rate prop=
agation.
- [Low] Using `abs(out - rate)` with an `unsigned long` rate causes a compi=
lation error and logic failure due to unsigned integer promotion.
--

commit f9e2c9def84f461469ea25564325f1d1985e1a5f
Author: Stefan D=C3=B6singer <stefandoesinger@gmail.com>

clk: zte: Add zx PLL support infrastructure

I am guessing how much of this is reusable among other zx chips or even
differently named ZTE platforms (if there are any). From reading the old
zx2967 code, I think the PLL code would be reusable there, maybe with
platform specific bitmasks but otherwise the same logic.

> diff --git a/drivers/clk/zte/pll-zx.c b/drivers/clk/zte/pll-zx.c
> index c0475d5441fbc..1482caeea9995 100644
> --- a/drivers/clk/zte/pll-zx.c
> +++ b/drivers/clk/zte/pll-zx.c
[ ... ]
> +static u32 zx29_pll_calc_values(const struct zx29_clk_pll *pll, unsigned=
 long parent_rate,
> +				unsigned long rate)
> +{
[ ... ]
> +			setting |=3D i << ZX29_PLL_POSTDIV1_SHIFT;
> +			setting |=3D j << ZX29_PLL_POSTDIV2_SHIFT;
> +			out =3D zx29_pll_get_rate(pll, parent_rate, setting);
> +
> +			if (abs(out - rate) > best)

[Severity: Low]
Could this fail to compile or produce a logic error due to unsigned integer
promotion?=20

The abs() macro in the kernel evaluates to ((void)0) when passed an
unsigned type like rate, which would result in a build failure.

If it were to compile, the unsigned subtraction out - rate could wrap around
for values below the target rate, causing valid frequencies to be incorrect=
ly
discarded.

> +				continue;
> +
> +			if (abs(out - rate) < best) {
> +				postdiv1 =3D i;
> +				postdiv2 =3D j;
[ ... ]
> +static int zx29_pll_determine_rate(struct clk_hw *hw, struct clk_rate_re=
quest *req)
> +{
> +	struct zx29_clk_pll *pll =3D to_zx29_clk_pll(hw);
> +	unsigned long new_rate, parent_rate =3D clk_hw_get_rate(clk_hw_get_pare=
nt(&pll->hw));

[Severity: High]
Is it possible to trigger a NULL pointer dereference here if the clock is an
orphan?=20

If the parent is not yet registered during system initialization,
clk_hw_get_parent() returns NULL, which clk_hw_get_rate() unconditionally
dereferences.

[Severity: Medium]
Additionally, does reading the currently committed hardware parent rate bre=
ak
rate propagation?

By calling clk_hw_get_rate() instead of using req->best_parent_rate, the dr=
iver
reads the old hardware rate of the parent rather than the proposed transact=
ion
state. This bypasses the Common Clock Framework's two-phase transactional m=
odel
and could calculate incorrect hardware dividers when the clock tree is being
reparented or rate-adjusted.

> +	u32 setting;
> +
> +	setting =3D zx29_pll_calc_values(pll, parent_rate, req->rate);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260628-zx29clk-v5=
-0-79ff044e4192@gmail.com?part=3D6

