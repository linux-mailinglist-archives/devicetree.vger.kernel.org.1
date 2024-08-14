Return-Path: <devicetree+bounces-93727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A49B952043
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 18:43:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA0B21C21803
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 16:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A10A1B9B47;
	Wed, 14 Aug 2024 16:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXYtF2Ps"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05AD11B9B31
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 16:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723653804; cv=none; b=KjAPKslFMVANbq2Vv4La/JwQvxi2PULeeaTXS6yHnKUbAVwU5KW1XwYg5URgZgERNDdfBOYe4jqKl4kGTUhSEddohy6hYdS9xrzdMN7ddUvzMOQBumvCv9h3xUe6JBkM5T47209anZ0CjldRChZgG2wTlRguPxhwJfKKZGV8Hkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723653804; c=relaxed/simple;
	bh=r+so0DvCijpC250fbTxkWPDH5sszKbX8lk9GKOTMGZ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qomhoDpzi2JuzaYeSusiR0opMolV7Qu57z1mBD2n1X8As1k1LJk/Mj78m/vwwokR4Vs/3OS4Jfa8wCaXCw/lOH9v9AgqAtFDsIWsepzftET2PoNosi0DyIqsXspG3xBYAotX8KiWYxovkjfdm9VPpxZkUGy4G1Vmyu90P3EGtIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXYtF2Ps; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28468C116B1;
	Wed, 14 Aug 2024 16:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723653803;
	bh=r+so0DvCijpC250fbTxkWPDH5sszKbX8lk9GKOTMGZ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cXYtF2PsLbVHvwq4THStSTYgXPC/+mzd9+JlT/s56omfugiuAwAuidqGnEhjTP+Fw
	 6BrH1uKpdM/yjpHS4qdKOTYANh/RZZmSxTL43b03/3xyAElKk3h7Ml2n9xmdzmjdNu
	 s127G/4AdX8Ii4WTlWHUha7zC8ekLOBZ52TIrJvIy3UPDd89OBHN6FMFKpCqNUQSq3
	 ZY0DJnCjdmmHMQ3C5VwG56n6LKZZNQt2WHRTe7rxSoGI6pRsJqe+nZgl+dbjkLgq+6
	 1hf0WQZc1CaTTg1GWjnKCJGC3XPHXpQKP5/C6omcrEG3Z+hMl3FeUQ9OPlk0pP4cZO
	 qgleo/RgtV+KA==
Date: Wed, 14 Aug 2024 17:43:19 +0100
From: Conor Dooley <conor@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	linux-arm-kernel@lists.infradead.org, arm@kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] irqchip/armada-370-xp: Implement SoC Error interrupts
Message-ID: <20240814-faceted-fiddling-cda119e3f483@spud>
References: <20240814124537.29847-1-kabel@kernel.org>
 <87mslfnlve.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MZZuVwBAfSEWJp27"
Content-Disposition: inline
In-Reply-To: <87mslfnlve.ffs@tglx>


--MZZuVwBAfSEWJp27
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 14, 2024 at 05:51:33PM +0200, Thomas Gleixner wrote:
> On Wed, Aug 14 2024 at 14:45, Marek Beh=FAn wrote:
>=20
> Cc+ device tree people.
>=20
> > + The code binds this new interrupt domain to the same device-tree node=
 as
> > + the main interrupt domain. The main interrupt controller has its
> > + interrupts described by one argument in device-tree
> > + (#interrupt-cells =3D <1>), i.e.:
> > +=20
> > +   interrupts-extended =3D <&mpic 8>;
> > +=20
> > + Because of backwards compatibility we cannot change this number of
> > + arguments, and so the SoC Error interrupts must also be described by
> > + this one number.
> > +=20
> > + Thus, to describe a SoC Error interrupt, one has to add the an offset
> > + to the SoC Error interrupt number. Offset 0x400 was chosen because the
> > + main controller supports at most 1024 interrupts (in theory; in pract=
ice
> > + it seems to be 116 interrupts on all supported platforms). An example=
 of
> > + describing a SoC Error interrupt is
> > +=20
> > +   interrupts-extended =3D <&mpic 0x404>;
>=20
> This looks like a horrible hack and I don't understand why this can't be
> a separate interrupt controller, which it is in the hardware. That
> controller utilizes interrupt 4 from the MPIC.
>=20
> But then my DT foo is limited, so I let the DT folks comment on that.

I'm guessing, not being author and all that, that since the registers
for this SOC_ERR business are intermingled with those of the existing
interrupt controller it is not possible to create a standalone node for
the new controller with it's own reg entry, without having to redo
the binding etc for the existing controller, ending up with some sort of
syscon.
Alternatively, I suppose a child node could work, but it wouldn't be much
less of a hack than deciding that numbers > 400 are the SOC_ERR ones.
I see arguments for doing it either way and Marek must have an opinion
on doing it without a new node, given the comment suggesting that a
previous revision did have a dedicated node and that approach was
dropped.

Cheers,
Conor.

--MZZuVwBAfSEWJp27
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZrzepgAKCRB4tDGHoIJi
0rZFAPwJutc6oUSO1QolfVeil9YMLsGtlyWfQFjhe4j30WXADAD8DWgvDeUyi15W
3noQCz48klLoA/V7PWKJBpNT2ulUDQo=
=LMgF
-----END PGP SIGNATURE-----

--MZZuVwBAfSEWJp27--

