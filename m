Return-Path: <devicetree+bounces-312485-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rFz3HyUvMWrqdQUAu9opvQ
	(envelope-from <devicetree+bounces-312485-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:10:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D042E68EA9F
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:10:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gd72MEyE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312485-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312485-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5E6183013B7C
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 11:09:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EB5A426D02;
	Tue, 16 Jun 2026 11:09:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81E96309F00;
	Tue, 16 Jun 2026 11:09:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781608190; cv=none; b=nBsariXmHGN5shFRcAJlujNnc8+nnB3IUOLuvvtRiXdyQV6/yI5oOjU3rUX3Fyx0vKWlhBcyRXlkXbbvjJBSk7a/kk1cYlW/U0tu9dnudtaikKwFjDn6FQejRkaohXZUE5DsndXAloknQ8/a5PPJ4rTdxmgJUJFVAe5RzJ22DoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781608190; c=relaxed/simple;
	bh=AjKd75RB0qGlWqPFNPqCY9pJjFFNLAEX/Ps73l8d6Yw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TIjtqIJSBPR0C+rPVXgsygeHmKGp42jNMlf58rbAysGPvWuVXgR/sUBLyEn+WFolCiR5SuhojBUaB+YH9dV8D8ezXpy1IWuFh7eXrlGgGY6J9CEvU3sepwrZUVfwy+dHwg4ec8nAiMU7RXH0bjOOWi+dlUQ+XMi1BS7WoyTzWJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gd72MEyE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98DF71F000E9;
	Tue, 16 Jun 2026 11:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781608189;
	bh=mK9HYVdQKJlIyEdG/ut16hHa0K36o0/3LJEgVGYcSUo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gd72MEyE4Blx+0jFHAmEscIwwfWEQLpIdjNt24ej/LvV+NYx1s7DSV1cdZqCnpuLM
	 BjZaTLi70P2+X/8IEJNQzctRy586GmEP93Vk1mmgcbI0tyj0uXNd4EEx6GpLIqNo1i
	 wmt+4coVDOvLMQXbE0bdHJV+iAZ931MVr69A4r5I4Vz1Yi+GuVzXZJJATeN5tbAaVv
	 iBmwFkBGVjv+0HY0vHtSJotk6iG6Ksv+BOAI4z+XYXSDnKgo9WuFaa1MCueGLxwcBE
	 +JgZJjApCyKc15jxTPNBRW02W+EKOHPC+WljjLrNEzn62y7WO4V/b0MdvjJ0FyC8Ix
	 IaV6R8jkTziRg==
Date: Tue, 16 Jun 2026 13:09:46 +0200
From: Thierry Reding <thierry.reding@kernel.org>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	linux-i2c@vger.kernel.org, Thierry Reding <treding@nvidia.com>, 
	Peter Rosin <peda@lysator.liu.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: i2c: i2c-mux-pinctrl: change maintainer
Message-ID: <ajEuUbjIWSpD9ieO@arch.a226c7d-lcedt>
References: <20260611122704.7559-2-wsa+renesas@sang-engineering.com>
 <ajBGibftf679T6P4@arch.a226c7d-lcedt>
 <ajBq_yjuV-LeqgpI@zenone.zhora.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lglwbbgf5exx6rig"
Content-Disposition: inline
In-Reply-To: <ajBq_yjuV-LeqgpI@zenone.zhora.eu>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312485-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@kernel.org,m:wsa+renesas@sang-engineering.com,m:linux-i2c@vger.kernel.org,m:treding@nvidia.com,m:peda@lysator.liu.se,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa@sang-engineering.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[thierry.reding@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thierry.reding@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,nvidia.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D042E68EA9F


--lglwbbgf5exx6rig
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] dt-bindings: i2c: i2c-mux-pinctrl: change maintainer
MIME-Version: 1.0

On Mon, Jun 15, 2026 at 11:15:08PM +0200, Andi Shyti wrote:
> Hi Thierry,
>=20
> > >  maintainers:
> > > -  - Wolfram Sang <wsa@kernel.org>
> > > +  - Thierry Reding <treding@nvidia.com>
> > > =20
> > >  description: |
> > >    This binding describes an I2C bus multiplexer that uses pin multip=
lexing to route the I2C
> >=20
> > By default I used to list the subsystem maintainer as the bindings
> > maintainer if the binding wasn't Tegra-specific, or in this case the
> > original author wasn't active anymore.
> >=20
> > I'm fine being listed as the maintainer for this if you don't want to,
> > but I prefer to use the thierry.reding@kernel.org email address for
> > communication.
>=20
> Just to be clear, are you saying that in this file you want your
> kernel.org e-mail or are you referring to generic communication?

I prefer the kernel.org e-mail for generic communication. The corporate
one is primarily important but inconvenient for mass-communication on
thi lists.

Thierry

--lglwbbgf5exx6rig
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmoxLvgACgkQ3SOs138+
s6EC1A/+MKJ4ECmfNPo28COAifNBNz7HEAqDMywS6+Qh5jltrk1P/OciTusfpAQC
gAaQ1EPWasOISgwd3Id43stTl+Gm83cLc9TxZQEKrtzfmYs1Q6UlqlVQuXh+rdWa
on0zakyl80rjPFVV0PnLzi8K2gLekN/G4hHGmVUwG19pBrsd+2VdaXV0SUGIWB3B
fDrpMrnGFLJGfLheH8cs4MbKsILUyDdv7OMPk83jdkLQl4C2Fcb5f4+8x53zFRez
EqZd12wJfnVx5NPhKP0PWCavacJcYxYvjUiCLIQ71jVYrjxJM9t6G1wOV7V+IIn+
DBm52C6PJZd4pAYI3GntP2fR0szLzPBqDYM+Suz/rSyAXhtgB/yfKBL2iezciOVp
XzV7cKqJJNRDYki4qdGrBvpPJj6JJw2WuDzKQCSJJ8mjxYsCrGBBx41W4kXeu1C3
Fw3bk3q3fe34U7WDoWbr/PFRwO7/wLM5TSqMIlRAq+vVd01mgzZHY/pP1i11Pm3M
qz+peFTyZB5QFdIVQ3BCy9LR+G8D2Df1Tipy26SI+IcqLd8zakntaF3BgiGMFSo7
fBaFUytyUzkXEyFZRp/zFhm7rWLzzXhkbxbOIPIaiksgyBAItxcmJWxWVBcruP7F
Nqc07wCrpdTzeWMKCthvzwIwbOi7Jz7qRgGKMieLR5dUZ7ZD0+M=
=KYu2
-----END PGP SIGNATURE-----

--lglwbbgf5exx6rig--

