Return-Path: <devicetree+bounces-275449-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IE7VG+xAtGnCjwAAu9opvQ
	(envelope-from <devicetree+bounces-275449-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:53:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAC028794D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:52:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 36581308CBF2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC1283C5DDE;
	Fri, 13 Mar 2026 16:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGt6Mihz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D3D30E82D;
	Fri, 13 Mar 2026 16:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773420527; cv=none; b=H1POpGkuarmhNgfcMjxaA6bj5919DPTKof1vbCEK+hC3jJsTTwI/bnO4UqwWK+Ys/Mls8VN/OJyhugu1xGhjtSVIXUOK5+QGXYztDw6sJWnxp58a1h3Xhz1FigS3z3jNodV4UQuVSciT3KwCtoATS3w29w7ICxGKGhAMaw+vkug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773420527; c=relaxed/simple;
	bh=OuMawjsTQP6cRs8Og0jene1oaf3BQHmjfu6JPCuI+qw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M6qW5ALb0CdvEoEwb/sOO3eUvg8iALek7ifzbpdZZMz8erBKL2xpBGLEur3X5W/+s1jyIqNOplWc87WOHzbhSR84w8CuD04RCpjSGpMo906jh9qfsZmol6ZWzNFhEON3h6SVoqLvJCPSekI2gTPGn9k5p1+Dbt1nS4CPzwUQSwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGt6Mihz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E4F3C19421;
	Fri, 13 Mar 2026 16:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773420527;
	bh=OuMawjsTQP6cRs8Og0jene1oaf3BQHmjfu6JPCuI+qw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sGt6MihzN7ZITGSFxs3kQmaBpJSHcy2h7b/kBGbIrykgGW64Q7NwHNZx8gArniJX2
	 ch1szy2zLk4bRsr9AfJr7SWq5NNNaPcqfx/38ysRBN8TeyhONvikvoYPh0C9CkkrnD
	 acPFQDeVsCcqBHibaSQ/ioWYqfhmsIoO9s5Hrg0qoMa7nnbsCw0qVA4orbGD2YAWOn
	 5Bb+P3DFuBGlHsizaULb+8fPR6gWUjcbLAnfvqm9py5OWuvDihuPCoVmr9vM4+IW16
	 kediO84vA6SEq13UnD617uoU09BD04Lh5fq49icVt0jPiwGrhK4L4pkkhRowMjwobn
	 jFYVArGOWpfHw==
Date: Fri, 13 Mar 2026 16:48:41 +0000
From: Mark Brown <broonie@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: aspeedyh <yh_chung@aspeedtech.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Ryan Chen <ryan_chen@aspeedtech.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org,
	maciej.lawniczak@intel.com
Subject: Re: [PATCH 0/7] soc: aspeed: Add AST2600 eSPI controller support
Message-ID: <de40d5d7-2d2b-46a6-a725-c691005b63bd@sirena.org.uk>
References: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
 <20260313-energy-casket-ca8adc1f1fd1@spud>
 <903bcc13-5b50-462c-8fa8-051f07748127@sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JTpyDRd0+0jBU6j/"
Content-Disposition: inline
In-Reply-To: <903bcc13-5b50-462c-8fa8-051f07748127@sirena.org.uk>
X-Cookie: Monitor not included.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275449-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sirena.org.uk:mid]
X-Rspamd-Queue-Id: CAAC028794D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--JTpyDRd0+0jBU6j/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2026 at 04:32:31PM +0000, Mark Brown wrote:
> On Fri, Mar 13, 2026 at 04:24:22PM +0000, Conor Dooley wrote:
> > On Fri, Mar 13, 2026 at 06:07:35PM +0800, aspeedyh wrote:
> > > This series adds initial support for the eSPI controller found on ASP=
EED
> > > AST2600 BMC SoCs.
> > >=20
> > > The series introduces a eSPI controller framework for ASPEED SoCs und=
er
> > > drivers/soc/aspeed/, adds AST2600-specific controller support for
> > > peripheral and flash channels, defines the corresponding devicetree=
=20
> > > binding, and adds the AST2600 eSPI controller node to the SoC dtsi.
> > >=20
> > > The driver is intended to support host-BMC communication over the BMC=
-side
> > > eSPI slave controller present on AST2600 systems.
> >=20
> > This all seems to be in the wrong places entirely, shouldn't an eSPI
> > driver and bindings go in the spi subsystem? FSL's appears to be there.
> > Mark?
>=20
> As documented in submitting-patches.rst please send patches to the=20
> maintainers for the code you would like to change.  The normal kernel
> workflow is that people apply patches from their inboxes, if they aren't
> copied they are likely to not see the patch at all and it is much more
> difficult to apply patches.
>=20
> Please submit patches using subject lines reflecting the style for the
> subsystem, this makes it easier for people to identify relevant patches.
> Look at what existing commits in the area you're changing are doing and
> make sure your subject lines visually resemble what they're doing.
> There's no need to resubmit to fix this alone.

If this is a driver for SPI hardware it should be under drivers/spi and
use the framework there.

--JTpyDRd0+0jBU6j/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmm0P+gACgkQJNaLcl1U
h9B1bAgAhjDExdU7nWhBppym32h9JFvlNIdUal4t5ZuJWbf/lg8HFHnKImexzapT
oqN8FEnJdxLhzctp0aZE6FFgGWBc6Qk6Jkv+WoSyp+sS1bLUHjiwJlh4ecwb2cVU
g4WdcDGRRhx1dQSz8TW8oO22pViEYB7Q2FKXQAcZ3LMqPJV74ApRW0tzit+Z4bQd
PIQambqXcdo93X4Q2o+wZVmwFeHbJ5vYIYYfleaW5jYK1qb1ONdAd4L+1L521cyy
M6SeYTGeKJQqoqYRkVZlQ63dxnzWgOtJ3QQ7xppqXAYZTOZPHSiW4T00XlKfpBRT
2CLzUfNjBHHo43MpAzeQghjxjs0t8w==
=Qtsp
-----END PGP SIGNATURE-----

--JTpyDRd0+0jBU6j/--

