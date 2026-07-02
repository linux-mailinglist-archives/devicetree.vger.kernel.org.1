Return-Path: <devicetree+bounces-319620-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q21EAG3ORmrbdwsAu9opvQ
	(envelope-from <devicetree+bounces-319620-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 22:47:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABAF6FCD2A
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 22:47:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=EfFve98P;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319620-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319620-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6B9943030D2B
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 20:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CB89394471;
	Thu,  2 Jul 2026 20:47:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C47239A04D
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 20:47:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783025249; cv=none; b=ju7fuAfg0wWiIYAtGOndePPA3MnHFevGLaIi+kLjmnMY7QP/U5ytQ3Q57hO54eqLZTc14CiE98smga7lEfOuC09m/9YzrLJtC0aYaeP+V+vmSQRs1j43b7MhfSSf9MQIYiK/clQlJy84p3+BEyhLQ84aVfgOXgrT3MMGRHr8Vyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783025249; c=relaxed/simple;
	bh=Al+/nop27gGRexf/WrF23t1DmTah4gntIiWJApdjMrk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BBwNQvqkJMhoCxNQ7BZdYbAlRiVkii4XzyXJh7FobmHuE+uveyfcc2cbY7AbjO2yAovEU7WKYJNtSyhRiKXKesipf6UBvuvivQtn8I/uVtwiFcQmnFIU9oR9kbniv5XPD7WNGGjaLJxjdphVqKdvmR7ylgXNeVvT48Eb8SFfrI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfFve98P; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A39C81F000E9;
	Thu,  2 Jul 2026 20:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783025247;
	bh=mwn8iQDF+0+xb1oC6rV7hBeX1TzcUzpTpcrFkGonFp4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EfFve98P2BpEJ8MVMc8vOM4kU3QSqCp7dQujEg51ccxo+AOCeaxt84lOiTnQrOdTG
	 o6xh8pAgWUA8CkQMUboQHuWUwJ0ycXn6qUbI1Omv31Kan5dJF0Q8Fgn/CRsbNh2FrJ
	 kRixKS50mldDzieQ2ArYZoRvNN+GQRud2N3WqYChvzWQmTJwJGnDUEs0x5+5K4TAOj
	 qLJ/yK2xPfHUg1Jy0ivyVq7h6xScj/20Y12iqnCUjJOsvRsI2j3RP6IVF6PdyExuqA
	 duYlSHboxUpM/U5yb/PLj9ZaL28prMKvDOf2Tkd6UFKodBJYXVhPHM9yBBzIPV3W1y
	 BAB7dVJqYSS/Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 09/12] clk: zte: Introduce a driver for zx297520v3
 matrix clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260702-zx29clk-v6-9-377b704f80c4@gmail.com>
References: <20260702-zx29clk-v6-0-377b704f80c4@gmail.com>
 <20260702-zx29clk-v6-9-377b704f80c4@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 20:47:27 +0000
Message-Id: <20260702204727.A39C81F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319620-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8ABAF6FCD2A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Required GMAC clock gates lack the CLK_IS_CRITICAL flag and will b=
e disabled by the clock framework.
--

commit 1d4a13593592a02eeff53731204ae6b0376ef509
Author: Stefan D=C3=B6singer <stefandoesinger@gmail.com>
Subject: clk: zte: Introduce a driver for zx297520v3 matrix clocks

This commit introduces a new clock driver for the ZTE zx297520v3 matrix
clocks. It defines the matrix muxes, inputs, and gates, mapping them to
the hardware registers. The driver is then registered alongside the
existing topclk driver.

> diff --git a/drivers/clk/zte/clk-zx297520v3.c b/drivers/clk/zte/clk-zx297=
520v3.c
> index 6fc98f98cf9c8..501f333b84fee 100644
> --- a/drivers/clk/zte/clk-zx297520v3.c
> +++ b/drivers/clk/zte/clk-zx297520v3.c

[ ... ]

> +	/* ZTE's driver has a statemt to the effect of *(top->base+0x11c) =3D 5=
, with a comment
> +	 * suggesting that this sets a 50 mhz clock. The clock code itself list=
s gmac clocks in
> +	 * matrix+110 and lists the parents of these clock as 50mhz gpll output=
, but the GMAC
> +	 * driver never enables the clocks. It turns out ZTE's code is highly m=
isleading.
> +	 *
> +	 * The GMAC's work clock is definitly not any gpll output because it ke=
eps working fine with
> +	 * gpll disabled. The MDIO speed is mostly unaffected by mpll speed cha=
nges, so it is most
> +	 * likely not fed by mpll either. All other PLLs can be disabled withou=
t breaking GMAC, so
> +	 * osc26m is the only possible remaining parent.
> +	 *
> +	 * The GMAC Gates are left enabled by the boot loader and are required =
for the GMAC to work.
> +	 *
> +	 * As for the 50 MHz comment: See rmiiphy_wclk.
> +	 */
> +	GATE(ZX297520V3_GMAC_WCLK,         "gmac_wclk",      clk_main[0],     0=
x110,  0, 0),
> +	GATE(ZX297520V3_GMAC_PCLK,         "gmac_pclk",      clk_main[0],     0=
x110,  1, 0),
> +	GATE(ZX297520V3_GMAC_AHB,          "gmac_ahb",       "ahb_wclk",      0=
x110,  2, 0),

[Severity: High]
Since the comment indicates the GMAC driver never enables these clocks but
they are required for the GMAC to work, will the clock framework's
clk_disable_unused() late initcall turn them off?

If they are left with 0 flags, the unused clock sweep will disable any
unclaimed clocks. Should these gates be marked with CLK_IS_CRITICAL (or
CLK_IGNORE_UNUSED) so they remain enabled and the Ethernet interface
keeps functioning?

> +
> +	GATE(ZX297520V3_MBOX_PCLK,         "mbox_pclk",      clk_main[0],      =
0x88,  2, 0),

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702-zx29clk-v6=
-0-377b704f80c4@gmail.com?part=3D9

