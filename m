Return-Path: <devicetree+bounces-316545-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MtimDeWDQWoPrwkAu9opvQ
	(envelope-from <devicetree+bounces-316545-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 22:28:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0306D4E4A
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 22:28:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MGwETKLq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316545-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316545-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21A84300DE37
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 20:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEB923B637F;
	Sun, 28 Jun 2026 20:28:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AD740D59D
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 20:28:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782678498; cv=none; b=lizwOmJ9+03+++gFussM7YrjeqV/U5y4hjYLEqnuw3H/FJ8hp7bTouipInVfdsL8QAOshscxwUp2nQgQfnUAE/B3SN8VSzDsoZFcy2hHFtya4FxJyMejYmFBw/1LnlwlfEdSJ84/xMDKGa91/Yp9OtSPmJxJ4AMD6iNag18ilVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782678498; c=relaxed/simple;
	bh=JbXhaCZ7pMUbiSwammhtSP5eGKjtUrdgmAsGTTBu+d4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XFnEAVF19mMI7XtmZSpOtn1yabGtNjhC/x9qamQht9/Tz0HM6YNZ5RI7a0Ot2A/3ao2jaJ7y+kSfjd5bKSPQ1appH8IFEigs78jAzEcNhIj5c3DUaHSBKfF8pgBnqoQEVoXFCs4hCiViURl8LUeS6GAfMp0SdrpHLD53D5iMajY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGwETKLq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF51E1F000E9;
	Sun, 28 Jun 2026 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782678497;
	bh=pcMbRG7vma1ZBpvNW8y/0sNoSAcP4Pu8pdE+Zvn7cFw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MGwETKLqCzn8HwhmU49leEZrLFPpVfoKa1fPbJ8U+ZnJPxg9Q74mb4fRTApoXJOrW
	 vSLt9mD2Lo0sXyIqY9vThPNGjdzi+YneyR1bcmHLDV9cGHYuuWM8uiIkeuU7znQDmz
	 QTFj3Mc6uEUIzTEpn0r7D04ejaxjIlNlZoCji+nzPuz1hJ6Ghss8atULWILMkeY7Wp
	 yBGDYG4JwJn4PNRU3wjUV0IdCoF/HH0lx8C384ZLvUamGRoobP1SqHk+wtBRGmwz+r
	 ip5YkqHWLy7zVmPy1azom57JPKrbqX8Qn851L1lHkId4/X3wkGcLpcowJEAMZPmHEX
	 YTMt8deIH+G7w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v5 07/12] clk: zte: Add regmap based clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260628-zx29clk-v5-7-79ff044e4192@gmail.com>
References: <20260628-zx29clk-v5-0-79ff044e4192@gmail.com>
 <20260628-zx29clk-v5-7-79ff044e4192@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Jun 2026 20:28:16 +0000
Message-Id: <20260628202816.DF51E1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316545-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:stefandoesinger@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5F0306D4E4A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Trailing semicolon at the end of the `zte_clk_regmap_div_set_rate` =
function definition.
--

commit 4685e6891643c422560d2af4689a1b287aa1ac18
Author: Stefan D=C3=B6singer <stefandoesinger@gmail.com>

clk: zte: Add regmap based clocks

This commit introduces regmap-based gate, divider, and mux clock
implementations for ZTE devices. It adds helper functions to register
these clocks using regmap structures and descriptions.

> diff --git a/drivers/clk/zte/clk-regmap.c b/drivers/clk/zte/clk-regmap.c
> index 7908f1562f639..903998ca95082 100644
> --- a/drivers/clk/zte/clk-regmap.c
> +++ b/drivers/clk/zte/clk-regmap.c
[ ... ]
> +static int zte_clk_regmap_div_set_rate(struct clk_hw *hw, unsigned long =
rate,
> +				   unsigned long parent_rate)
> +{
> +	struct zte_clk_regmap *clk =3D to_zte_clk_regmap(hw);
> +	unsigned int val;
> +	int ret;
> +
> +	ret =3D divider_get_val(rate, parent_rate, NULL, clk->size, 0);
> +	if (ret < 0)
> +		return ret;
> +
> +	val =3D (unsigned int)ret << clk->shift;
> +	return regmap_update_bits(clk->map, clk->reg, clk_div_mask(clk->size) <=
< clk->shift, val);
> +};

[Severity: Low]
This isn't a bug, but there is an unnecessary trailing semicolon at the end=
 of
this function definition.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260628-zx29clk-v5=
-0-79ff044e4192@gmail.com?part=3D7

