Return-Path: <devicetree+bounces-284949-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IS9Nli+02m4lQcAu9opvQ
	(envelope-from <devicetree+bounces-284949-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Apr 2026 16:08:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B3C3A3C9A
	for <lists+devicetree@lfdr.de>; Mon, 06 Apr 2026 16:08:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DD6E33008C3A
	for <lists+devicetree@lfdr.de>; Mon,  6 Apr 2026 14:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6731B37E2FC;
	Mon,  6 Apr 2026 14:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4xnzn0V"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4418337E2ED;
	Mon,  6 Apr 2026 14:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775484500; cv=none; b=CnuDu2m6mdY8pfZe0PbH+G21cjWFXb8W1ywkLYVjDrHYCO1cTWCYGak2/z0NGofmGqrVak9FIuADb0bokwhagqv7lHNpqvF1b9OVlEmchEyiFwDliPKzNOcwRtvFQrqmh6LkF9qfBzCE1dMax+juFXhZyDgxieLsVyQae3/GZ8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775484500; c=relaxed/simple;
	bh=Iit21ugcQYqhMKIo1exkcOq4GLdsozr7xD1UhzGP0wk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AQKIeamG+YuXRbeiHkLoDJTpbycAWEliXw5vyJRvKI1L3Ng9B4U32R7LuaCb5yldiX7nVHD8uthmoiOzplwekYVP/wU5gabT6KtybdCIJ7pZmL/64DcqD3gCGfvSr0WP/1wAtliU4XeKynNsVV8xYwmZYI9cnLX6/5e0ngjHKP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4xnzn0V; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45507C2BCB0;
	Mon,  6 Apr 2026 14:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775484500;
	bh=Iit21ugcQYqhMKIo1exkcOq4GLdsozr7xD1UhzGP0wk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U4xnzn0VwUKjahsWP92yRe5AgtNwaB7d7H9SjyUbyMEULt2bXEuExG8jzgbI8MT/U
	 dTYQQqE4TgchR3AG5C+Q8rFvJrrBX9LCAQ62mxTaQKfjammEX2kZZQJyTcqqlUOudl
	 Lcaz9qhQDwL7aBYL/2zoJQayF3Jytha6mvWgxQ+dl3BVFsvMQNMBk+Xvm1fGs1GLha
	 SB4Fa8epzvQjSfU8meJSWbxavLmqn6tXRD6aLnnybs9/9ujwEj+8SFqVqWXeAqk0+h
	 WGRNgdd0x51sjHXP0JjRKxhw695oAU9XbhJ6qF+21zV9MP6EzS+seT5IhNdO/U3m3N
	 xuxlqoVThgHYA==
Date: Mon, 6 Apr 2026 15:08:14 +0100
From: Mark Brown <broonie@kernel.org>
To: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: Herve Codina <herve.codina@bootlin.com>,
	Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 0/4] ASoC: Add support for GPIOs driven amplifiers
Message-ID: <4cdf90a0-b408-4fff-8847-1e960e99a3fb@sirena.org.uk>
References: <20260330101610.57942-1-herve.codina@bootlin.com>
 <4daaa17d-5673-4efa-92ce-4f2ce87eb812@sirena.org.uk>
 <20260330173944.3fdc27ec@bootlin.com>
 <27e23c7b-4aca-41d2-96b8-df02c52e8121@sirena.org.uk>
 <20260330184128.68a4e779@bootlin.com>
 <32fc8606-d475-4cc0-b2a1-c5549aef402f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RxFF+iWQ2KMH5J1H"
Content-Disposition: inline
In-Reply-To: <32fc8606-d475-4cc0-b2a1-c5549aef402f@kernel.org>
X-Cookie: Does not include installation.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-284949-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bootlin.com,gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org,csgroup.eu];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sirena.org.uk:mid]
X-Rspamd-Queue-Id: C6B3C3A3C9A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--RxFF+iWQ2KMH5J1H
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 05, 2026 at 07:00:20PM +0200, Christophe Leroy (CS GROUP) wrote:
> Le 30/03/2026 =E0 18:41, Herve Codina a =E9crit=A0:

> > I could merge everything in one .c file but only a few part of source c=
ode
> > will be common to simple-amplifier and audio-gpio-amp. IMHO the resulti=
ng
> > merged code will look like two different drivers merged in one .c file.

> Following explanation from Herve I have the feeling that combining the two
> drivers into a single one will bring more complexity for little benefit.

> Do you still think it is worth having a combined driver allthough they
> address quite different setups ?

Yes, it's just a difference in the binding not in the runtime stuff.
The two will inevitably grow together over time, keeping them separate
is just creating a long term bikeshedding problem wondering which to use
for a given situation.

--RxFF+iWQ2KMH5J1H
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnTvk0ACgkQJNaLcl1U
h9CNowf9FN8GUFEiS7pgN1u8sOrEqEcd6VzSBRB1YH0Xf8gfyMQqB9dQJmEBzark
HThGXg9k+xZKQOaXaJPJWpvDPGcYIkOMrePi3Qaejmj/OdwXaPaB9GoiFU/Jkscb
k+v8uX938fJLMs1syF7bam8Xr/XoH9+ScHDbeQoP4jfKGS6wr83U6PRbQUdc5MQk
mpWS6p0SOdmU+9ZxJN680Qs8UJkg0KXCpQ4CCwgv1TikpULLG2zGKB6wx8YJ3+np
nIpHsS4+7EocTK/BzwqAmP1Rly77kLKlgb/KVp2lzmhop/TL7WC0riWlbSUyoVe9
T45P1ceRngqJXBgVca/oslR4GctmUQ==
=+JWl
-----END PGP SIGNATURE-----

--RxFF+iWQ2KMH5J1H--

