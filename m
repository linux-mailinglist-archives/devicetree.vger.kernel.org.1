Return-Path: <devicetree+bounces-9970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 200A87CF35B
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:55:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B05D1B20D89
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 08:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16FFE16402;
	Thu, 19 Oct 2023 08:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uC7TqhGn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED8C415AF5
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 08:55:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69789C433C8;
	Thu, 19 Oct 2023 08:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697705724;
	bh=gwlgcQ3ZqyeFuGLncdKSOGMnNI0cOD810MBreEhi+TA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uC7TqhGnUNd9QLr+ZDwKcbNn/09s1m/SZE5jgShNsWSpCzha/Mg2pmU2qn+iKBJvV
	 175spQuQlBcmKSeSTj6ATSrykDAcdidoADKNqB8Gu0oLbzefD9HCGg7To1a1XRiCIu
	 2Sy6Z8SYNnPtnhD4gmUDE+4zJsz82aJBJROKbMXTrs9xOcxsk+iVNfYkFSVm4xX3js
	 hZrGQ8e/OqgOFkP+8aeZPWg6c084t8/yDfvKPsDzmJeRwjJ+U6XDIEfZqVy+rImaHP
	 ksM19pQHmkDzO38FBOPFlmwQBmpaNPNCEV9wxxfnV6/QHZHq82H2QCo8v7qvOf0jQi
	 GMvDs+dkCTIdg==
Date: Thu, 19 Oct 2023 09:55:20 +0100
From: Conor Dooley <conor@kernel.org>
To: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matt Ranostay <matt.ranostay@konsulko.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: iio: light: Squash APDS9300 and APDS9960
 schemas
Message-ID: <20231019-theme-clunky-f4a2e1d122e7@spud>
References: <20231019080437.94849-1-subhajit.ghosh@tweaklogic.com>
 <20231019-rematch-ethically-9d482ca4607e@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o+iwHg08XNFzcdm3"
Content-Disposition: inline
In-Reply-To: <20231019-rematch-ethically-9d482ca4607e@spud>


--o+iwHg08XNFzcdm3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 19, 2023 at 09:51:39AM +0100, Conor Dooley wrote:
> On Thu, Oct 19, 2023 at 06:34:37PM +1030, Subhajit Ghosh wrote:
> > Squashing Avago (Broadcom) APDS9300 and APDS9960 schemas into one
> > file and removing the other.
>=20
> > Link: https://lore.kernel.org/all/4e785d2e-d310-4592-a75a-13549938dcef@=
linaro.org/
>=20
> "Yes, they look similar. I will combine them all in a single yaml file in
> the next revision. Thank you Krzysztof."
>=20
> Yet this is a follow-up patch, not a version 2. The original patches
> seem to not have been applied, so I am not sure why you didn't send a
> v2?

> > ---
> >  .../bindings/iio/light/avago,apds9300.yaml    | 35 ++++++++++++---
> >  .../bindings/iio/light/avago,apds9960.yaml    | 44 -------------------
> >  2 files changed, 29 insertions(+), 50 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/iio/light/avago,a=
pds9960.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9300=
=2Eyaml b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
> > index 206af44f2c43..7826a1749fcd 100644
> > --- a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
> > +++ b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
> > @@ -4,17 +4,26 @@
> >  $id: http://devicetree.org/schemas/iio/light/avago,apds9300.yaml#
> >  $schema: http://devicetree.org/meta-schemas/core.yaml#
> > =20
> > -title: Avago APDS9300 ambient light sensor
> > +title: Avago Gesture, RGB, ALS and Proximity sensors
> > =20
> >  maintainers:
> >    - Jonathan Cameron <jic23@kernel.org>
> > +  - Matt Ranostay <matt.ranostay@konsulko.com>

Also:
<matt.ranostay@konsulko.com>: host aspmx.l.google.com said:
    550-5.1.1 The email account that you tried to reach does not exist.

--o+iwHg08XNFzcdm3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTDu+AAKCRB4tDGHoIJi
0tM1AP9J/187nzeXOZeMBjJXBvsCk/bdcxHKOI8Ee9RtLaDCCgEA+a8TvoojE6Un
eEsrqDgO1U5PGqZlkiKhLw+x22TA+wo=
=Hpaq
-----END PGP SIGNATURE-----

--o+iwHg08XNFzcdm3--

