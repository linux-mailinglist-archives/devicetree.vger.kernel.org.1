Return-Path: <devicetree+bounces-8200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7F17C7191
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 17:34:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2933528243D
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 15:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 729432773F;
	Thu, 12 Oct 2023 15:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7npSNyH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A23266B8
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 15:34:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B93BAC433C8;
	Thu, 12 Oct 2023 15:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697124843;
	bh=Du9N4V6KWfnC15d6hQvbSe2MbqDzCzhgYPGU7vmPG0g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A7npSNyHNUta68Xb/V0V8wb+IV3OyfgVrQYSvOdRRCgyW8n94pjWXQBQX1UzMsP5C
	 OWptebPIYynHKKfjxDpsM8gVE8DCf0+2YGd6imQg3GKlbLV8435EgCogXsiZsOhNFv
	 dla6aEXbihUGUortH2fe0Qoy0yG+0p5JAgXTXcmtP5H9eyZBQgB9b6Q5tNdoF+k5He
	 uRmxBHTeAta7zaCbqr8sSd9Z2ODTXxhiq9oUH7c6P4DWmdm5N+Fqd3Ha0B3DhBjXoF
	 tojproG52XaWSCgTlu5WuJz9kKWsJX5nsqvAFdepVKCz0T131bRXhnUc0MSD00UVXX
	 shwV50CZY1ymw==
Date: Thu, 12 Oct 2023 16:33:59 +0100
From: Conor Dooley <conor@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	devicetree@vger.kernel.org, Lee Jackson <lee.jackson@arducam.com>
Subject: Re: [PATCH 1/2] media: dt-bindings: Add OmniVision OV64A40
Message-ID: <20231012-wisplike-distrust-6b49aa8eae5e@spud>
References: <20231010151208.29564-1-jacopo.mondi@ideasonboard.com>
 <20231010151208.29564-2-jacopo.mondi@ideasonboard.com>
 <20231011-conflict-monument-75379ef495cc@spud>
 <ar5rf3mas33vvg47jflmhajpyx2pypdjdf3x522x3a3v5cva2a@gjmr5cjv6dyd>
 <20231011-deserve-platonic-0beb72c94661@spud>
 <20231011162454.GB5306@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/uSO+fW+/nd4ynkl"
Content-Disposition: inline
In-Reply-To: <20231011162454.GB5306@pendragon.ideasonboard.com>


--/uSO+fW+/nd4ynkl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 11, 2023 at 07:24:54PM +0300, Laurent Pinchart wrote:
> On Wed, Oct 11, 2023 at 05:16:50PM +0100, Conor Dooley wrote:
> > On Wed, Oct 11, 2023 at 06:12:28PM +0200, Jacopo Mondi wrote:
> > > On Wed, Oct 11, 2023 at 04:53:34PM +0100, Conor Dooley wrote:
> > > > On Tue, Oct 10, 2023 at 05:12:07PM +0200, Jacopo Mondi wrote:
> > > > > Add bindings for OmniVision OV64A40.
> > > > >
> > > > > Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> > > > > Signed-off-by: Lee Jackson <lee.jackson@arducam.com>
> > > >
> > > > What does Lee's SoB indicate here?
> > >=20
> > > Lee has contributed to the development of the driver and validation of
> > > bindings.
> >=20
> > Then you're missing a Co-developed-by: from Lee :)
> >=20
> > > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > > index b19995690904..df089d68b58c 100644
> > > > > --- a/MAINTAINERS
> > > > > +++ b/MAINTAINERS
> > > > > @@ -15821,6 +15821,13 @@ S:	Maintained
> > > > >  T:	git git://linuxtv.org/media_tree.git
> > > > >  F:	drivers/media/i2c/ov5695.c
> > > > >
> > > > > +OMNIVISION OV64A40 SENSOR DRIVER
> > > > > +M:	Jacopo Mondi <jacopo.mondi@ideasonboard.org>
> > > > > +L:	linux-media@vger.kernel.org
> > > > > +S:	Maintained
> > > > > +T:	git git://linuxtv.org/media_tree.git
> > > >
> > > > Binding looks fine to me, my question is here. Usually having a tree
> > > > here means that you apply the patches yourself. Do you?
> > > >
> > >=20
> > > No, and only Mauro has commit rights on the media tree.
> > >=20
> > > All i2c sensor drivers have a tree listed, regardless who commits
> > > there. What should I put there ?
> >=20
> > IMO, nothing. The media tree entry should cover the parent directory,
> > no?
>=20
> There's little documentation for the T: tag. In MAINTAINERS, we have
>=20
>         T: *SCM* tree type and location.
>            Type is one of: git, hg, quilt, stgit, topgit
>=20
> which doesn't tell much. In Documentation/sbumitting-patches.rst,
> there's ona additional paragraph:
>=20
>   Note, however, that you may not want to develop against the mainline
>   tree directly.  Most subsystem maintainers run their own trees and
>   want to see patches prepared against those trees.  See the **T:**
>   entry for the subsystem in the MAINTAINERS file to find that tree, or
>   simply ask the maintainer if the tree is not listed there.
>=20
> If the purpose of the T: tag is to tell which tree patches for this
> driver should be developed against, the above tree seems right.

I suppose media has a different interpretation than is common elsewhere.
With the fixed attribution,
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--/uSO+fW+/nd4ynkl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSgR5wAKCRB4tDGHoIJi
0ia3AQDE54CI3/dcVe+fifBvzOy3N5W/4NbrczrDPQsThOO9rwD/UPV/H3zFqdQJ
KTah92fyUWgHrhmX3h8tvLUBiuiiwgU=
=Rba2
-----END PGP SIGNATURE-----

--/uSO+fW+/nd4ynkl--

