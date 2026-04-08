Return-Path: <devicetree+bounces-285788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yA32GqtU1mm8DQgAu9opvQ
	(envelope-from <devicetree+bounces-285788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 15:14:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CD33BCAE6
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 15:14:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DD089301387F
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 13:14:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0060A3CCFB7;
	Wed,  8 Apr 2026 13:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9Cjs7Bt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D169F38D00B;
	Wed,  8 Apr 2026 13:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775654046; cv=none; b=bguetpkMeZpF9j1jub7Pad021lu1oB+UE270yr1Gu3bup6xu8lioZO2D7t3L4+sAgsfqhE1mu1VkfEJ38vPJL9fm5OcMK3ORz1EAimOHi+tZunXReMa5q4LCt4z3V5/rW9HYo8VXkdZxWBkGykY3HEPLbpl4y2cU9E3EeGHTUCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775654046; c=relaxed/simple;
	bh=z8q4ncPH4c1plim8Lv7I6Q6nJPCoar03FfzaVYfd1pU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IVrwOVpgCsmq9y6ak2mFT0QuBTLnoICMqsAmP30+j7aHDOsDze52Pb9LJwvv6oXo2g9vgA+UYmgVM9wMClWLTfgKKGkv/OiEzLxTTxbfBzUhK0vBuFTeIQ5zzArvrg6xTKdXmhRXVbrtI9PXGGXGO7N7UjGHrY0Dds+u7plP/Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9Cjs7Bt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1121C19421;
	Wed,  8 Apr 2026 13:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775654046;
	bh=z8q4ncPH4c1plim8Lv7I6Q6nJPCoar03FfzaVYfd1pU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n9Cjs7Bth2XIC/jxF++rb+VJ6QaWmizAtCGnyTdQyD0Yxj0nzZDUuzfRDGVmpeF8Z
	 XTmwhworbyf29+s7PdCqG9o/5pzKGmUvU0m9JscLAVamt4Zovae22kH5aCj5IMBNr+
	 xMO1RmAnZjhSQUIvzYwycGKfz4BUKwksHZw5MxwXVxvh9XyS/VOUvkOI2WpMyk8ZLP
	 4BduEGhRvvfIB8cm5qW/drhYkGIZK2xYJ+LJ/gApBVwNHf8Z34g9fkov6v/GhFxDsA
	 oCIIW+CUZPN+/ub4FKXcdSF0Pg2x2T7Mg7A2fqhfzk42skbkDdEVcp2jVadGyfOxY6
	 1KHNRkRuni0BQ==
Date: Wed, 8 Apr 2026 14:14:01 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Herve Codina <herve.codina@bootlin.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 2/4] ASoC: dt-bindings: Add support for the GPIOs driven
 amplifier
Message-ID: <91f41e85-a70a-41be-8f90-92c1ef93386d@sirena.org.uk>
References: <20260330101610.57942-1-herve.codina@bootlin.com>
 <20260330101610.57942-3-herve.codina@bootlin.com>
 <20260408122901.GA42727-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/gIiaJRUw/5IfKBJ"
Content-Disposition: inline
In-Reply-To: <20260408122901.GA42727-robh@kernel.org>
X-Cookie: Often things ARE as bad as they seem!
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285788-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bootlin.com,gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org,csgroup.eu];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sirena.org.uk:mid]
X-Rspamd-Queue-Id: F0CD33BCAE6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--/gIiaJRUw/5IfKBJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 08, 2026 at 07:29:01AM -0500, Rob Herring wrote:
> On Mon, Mar 30, 2026 at 12:16:06PM +0200, Herve Codina wrote:

> > +dependencies:
> > +  gain-points: [ gain-gpios ]
> > +  gain-range: [ gain-gpios ]
> > +  gain-labels: [ gain-gpios ]

> gain-gpios is really optional?

You've still got mute control, and power up/down - each feature should
be optional.

--/gIiaJRUw/5IfKBJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnWVJgACgkQJNaLcl1U
h9D3Awf/e8H/NY6iRWy+XgSiVPn9AvssHdvREmwV6FJ2C8hXojdrV8XBoD/r5Bww
8UAlB5kdkolKhXj+EHTVq6ckYi8DqjeFaLyVmWAvg+eSEArUNw3shPdW0s8a1WJ7
7mnmLl5BUROho12E2uSlqSQgZfGjoKAcFDGpdMdBxecD1indkI5UDB1OjDVVA1XA
W+OuVDxT0iPeczhYvDe8U9f8W+F6qNNJjOsJfrhs97HSl5VL6j9bYb7cwFVVG2qS
MUoSk1Awt7rxKKbJqaJ7z4wyDGG/zdo8nsbaGKBqNoGLzU/LztfDzHkpBVhONk4j
wWFFId7YjlzyJO4MeVVgMAxMYsMonQ==
=CBZH
-----END PGP SIGNATURE-----

--/gIiaJRUw/5IfKBJ--

