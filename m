Return-Path: <devicetree+bounces-318730-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id B7rQJb8sRWro8AoAu9opvQ
	(envelope-from <devicetree+bounces-318730-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 17:05:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED086EF198
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 17:05:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Yh7i9q4l;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318730-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318730-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 54B6E302737A
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 15:05:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D9B33E2773;
	Wed,  1 Jul 2026 15:05:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 996B63451CC
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 15:05:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782918329; cv=none; b=gHNtkbJg2LvazaTa0x29zwUbSAYUxSnZi9EpNNweGoPcwNsqDmht97Iz2TNr1qTqQ0WfOvVAE94an4c7KnvDhTSOdvlW07DVFMVrQOx5jTJaNwn1XcsaXVdpbp8NLahD33irWWbaAO+j8G8/Ta0yrXAN9lI213vkHTJyqZJCe58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782918329; c=relaxed/simple;
	bh=JiDKJzHuXulezD2Km6oke/ZQ7KtSNy7rcdgMzCqEFFE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=m9GjwJOai/+uiDbeZYUEB3OoUx+dimLkJvl5FP+n3W9VBUOHHKrhLMIXBnFWUd/jjMMnatDViZGZsOTxmNZnzaxIqkOh7F92BQt5+ZrNkNC4inmXPWUVzd6WQ5d2oe/+6uSwTk5HFxIKZSQmuQ0pQDhUsqEr6MAuBgdW24oKUes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yh7i9q4l; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6DAA1F000E9;
	Wed,  1 Jul 2026 15:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782918326;
	bh=AdIX5gokl7HvkqnfiN/dAFzirwJk5AUF/GJsvW5jnmU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Yh7i9q4lMU5t0ErV/ojxvfrz319KByZkw29Nf4LeSpAlD4MT5kduN1bqAvgF4M7lI
	 dZfbgQWI68Y6Xf0Q/BvsEDs/OtLAI2hlsKKE+K875pAAfyV8ltlvs5zI+FHtCmTXm6
	 dj9UJ4b42ezksyp6BTm2vrJXLt0sXDkAcIBbWOdS3ABkBrusKsORJMtQD9qeBmLWuH
	 OsqkWa94NlxZK+S4Hj4T+WgRsDD1HrY6koSolGFMedTvDKHNyXBs4TrF6RW0737BCo
	 4IBXR9GA31eFB8yaQvgg9StlW61Qn/GPH/pnsGA6HwsXXq8kdbdrFMtcdGF0eGansX
	 5tccSPscx/yWw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] clk: si544: add support for si549
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?UGF2ZWwgTMO2Ymw=?= <pavel@loebl.cz>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260701145101.3932655-3-pavel@loebl.cz>
References: <20260701145101.3932655-1-pavel@loebl.cz>
 <20260701145101.3932655-3-pavel@loebl.cz>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 15:05:25 +0000
Message-Id: <20260701150525.C6DAA1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318730-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:pavel@loebl.cz,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,loebl.cz:email,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2ED086EF198

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Unconditional dereference of `client->dev.of_node` during probe fa=
llback path causes a kernel panic on non-DT systems.
- [High] Untrusted or unprogrammed hardware input causes a divide-by-zero k=
ernel panic.
--

commit 8414d21feff1150c560a77278d7dec845cbe570f
Author: Pavel L=C3=B6bl <pavel@loebl.cz>

clk: si544: add support for si549

Add support for Si549, which only differs from Si544 in internal
oscilator frequency. Si549 also comes in three types A,B and C.
Each having different maximum output frequency.

This patch also fixes maximum frequency of Si544 C. Which should
be 325MHz according to datasheet.

> diff --git a/drivers/clk/clk-si544.c b/drivers/clk/clk-si544.c
> index 09c06ecec1a52..b13aeead9c028 100644
> --- a/drivers/clk/clk-si544.c
> +++ b/drivers/clk/clk-si544.c

[ ... ]

> @@ -145,6 +153,8 @@ static int si544_get_muldiv(struct clk_si544 *data,
>  	settings->delta_m =3D reg[0] << 8 | reg[1] << 16 | reg[2] << 24;
>  	settings->delta_m >>=3D 8;
> =20
> +	settings->xo_freq =3D data->chip_info->xo_freq;
> +
>  	return 0;
>  }

[Severity: High]
This is a pre-existing issue, but I noticed that si544_get_muldiv() reads t=
he
high-speed divider (hs_div) directly from the I2C device registers without
validation.

Could this lead to a division by zero later?

If the hardware is unprogrammed or an I2C device returns zero for these
registers, settings->hs_div becomes 0. Then, when si544_calc_center_rate() =
is
called:

si544_calc_center_rate() {
	u32 d =3D settings->hs_div * BIT(settings->ls_div_bits);
	...
	do_div(vco, d);
}

d would evaluate to 0, triggering a divide-by-zero kernel panic. Is it worth
adding a check for hs_div =3D=3D 0 after reading the registers?

[ ... ]

> @@ -446,7 +458,7 @@ static int si544_probe(struct i2c_client *client)
>  	init.num_parents =3D 0;
>  	data->hw.init =3D &init;
>  	data->i2c_client =3D client;
> -	data->max_freq =3D (uintptr_t)i2c_get_match_data(client);
> +	data->chip_info =3D i2c_get_match_data(client);
> =20
>  	if (of_property_read_string(client->dev.of_node, "clock-output-names",
>  			&init.name))

[Severity: High]
This isn't a bug introduced by this patch, but can this fallback cause a NU=
LL
pointer dereference on non-DT systems?

If the driver is instantiated via a mechanism that does not use Device Tree
(such as sysfs new_device), client->dev.of_node will be NULL.

When of_property_read_string() detects the NULL node, it returns an error,
which triggers the fallback logic right below this diff:

		init.name =3D client->dev.of_node->name;

This unconditionally dereferences the NULL of_node pointer. Should this code
check if client->dev.of_node is valid before attempting to use it?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701145101.3932=
655-1-pavel@loebl.cz?part=3D2

