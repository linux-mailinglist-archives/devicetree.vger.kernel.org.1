Return-Path: <devicetree+bounces-7802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2597C58F9
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:16:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4638A282655
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 16:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE59832C8F;
	Wed, 11 Oct 2023 16:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHSlCmB0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD4830F88
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:16:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04411C433C7;
	Wed, 11 Oct 2023 16:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697041015;
	bh=1HtfMwwWKWdnGGsRx45OYRgNuOSJpgS2aLGiJYenX/Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UHSlCmB0Udk4pS3w90Eq0sQlpg9OrfwPTLH19fn4tLEd5O8QUn69BTeCLoNNMPKgg
	 wmosN6ARTNqh32QEMv26k2sb6rUFtT9CDhV2fu5gZz2VoAa2h/Y035RwQoJv+WKs1M
	 xJi12aEJip8xnyltCfBzMCY/cEl9QdaGpb3uJjm8niHleRV+Qbm8KJBK6ImVnar28e
	 C/Hw1WX02/n/cHdFWL/zP6V5VJ6cs1rZzjwsx86cUmlkvBn3/1P7KHfywl5196KqZ3
	 gIaAH2FfnY3FQ2v+JIHy5YMZSRkPJ3kKrzhcUym691rqPHhpEo1NTzwMZ8plgUQFYf
	 0ys16KF6C472Q==
Date: Wed, 11 Oct 2023 17:16:50 +0100
From: Conor Dooley <conor@kernel.org>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	devicetree@vger.kernel.org, Lee Jackson <lee.jackson@arducam.com>
Subject: Re: [PATCH 1/2] media: dt-bindings: Add OmniVision OV64A40
Message-ID: <20231011-deserve-platonic-0beb72c94661@spud>
References: <20231010151208.29564-1-jacopo.mondi@ideasonboard.com>
 <20231010151208.29564-2-jacopo.mondi@ideasonboard.com>
 <20231011-conflict-monument-75379ef495cc@spud>
 <ar5rf3mas33vvg47jflmhajpyx2pypdjdf3x522x3a3v5cva2a@gjmr5cjv6dyd>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oJpiP+JDvBGvfJNX"
Content-Disposition: inline
In-Reply-To: <ar5rf3mas33vvg47jflmhajpyx2pypdjdf3x522x3a3v5cva2a@gjmr5cjv6dyd>


--oJpiP+JDvBGvfJNX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 11, 2023 at 06:12:28PM +0200, Jacopo Mondi wrote:
> On Wed, Oct 11, 2023 at 04:53:34PM +0100, Conor Dooley wrote:
> > Hey,
> >
> > On Tue, Oct 10, 2023 at 05:12:07PM +0200, Jacopo Mondi wrote:
> > > Add bindings for OmniVision OV64A40.
> > >
> > > Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> > > Signed-off-by: Lee Jackson <lee.jackson@arducam.com>
> >
> > What does Lee's SoB indicate here?
> >
>=20
> Lee has contributed to the development of the driver and validation of
> bindings.

Then you're missing a Co-developed-by: from Lee :)

> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index b19995690904..df089d68b58c 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -15821,6 +15821,13 @@ S:	Maintained
> > >  T:	git git://linuxtv.org/media_tree.git
> > >  F:	drivers/media/i2c/ov5695.c
> > >
> > > +OMNIVISION OV64A40 SENSOR DRIVER
> > > +M:	Jacopo Mondi <jacopo.mondi@ideasonboard.org>
> > > +L:	linux-media@vger.kernel.org
> > > +S:	Maintained
> > > +T:	git git://linuxtv.org/media_tree.git
> >
> > Binding looks fine to me, my question is here. Usually having a tree
> > here means that you apply the patches yourself. Do you?
> >
>=20
> No, and only Mauro has commit rights on the media tree.
>=20
> All i2c sensor drivers have a tree listed, regardless who commits
> there. What should I put there ?

IMO, nothing. The media tree entry should cover the parent directory,
no?

Thanks,
Conor.

--oJpiP+JDvBGvfJNX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSbKcgAKCRB4tDGHoIJi
0hQFAQCeeus3+i7JzsMkd+1RohdU3+zMlpPlaQ5WTYwPgCC2rgD/dXU5djkVRqGM
6weUT8b3aWIElQNg6ZncRe+VL9dfEwk=
=dsWT
-----END PGP SIGNATURE-----

--oJpiP+JDvBGvfJNX--

