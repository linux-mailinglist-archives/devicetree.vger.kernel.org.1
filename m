Return-Path: <devicetree+bounces-7762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0047C5596
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 15:39:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B621728237C
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9D981F94E;
	Wed, 11 Oct 2023 13:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOrMNnAG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7BE31F928;
	Wed, 11 Oct 2023 13:39:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE381C433C7;
	Wed, 11 Oct 2023 13:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697031556;
	bh=47vFEIfynYM2SLVuIlBK4kOi9a9GpRQT3cwG45gN3mQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vOrMNnAGCvhXr0s28XZ7tcCt2hw5zS9++2trRSGf/T4CZt2QzgkfTpdZzG4TE/U56
	 LA77ChGUDhVkrPStTXkLFX7RzvZ9K/l2ZfBmM0785zUkgxQ8wTLPjfAwMYUhjDjLXJ
	 daUfMUxdeOAPxXsemxK+6y/r2hV6Q7BlCRg2/eSwVpnwQlMYaKZnjMhP36tKkE6np3
	 u5RuUwQ3N4kDnfmxVX5VXeYSnSXjKYmSsQt2lFZuguPoMDB0nQOYPr0C5iBb85LaM/
	 gg9OtnW5vrT3HD5oPGjIQkm/k3OU7a3XGm4dfFupmOpJ+RiLlZn9IjpOY0L4uBSx4c
	 hRoU2YKUrLDQQ==
Date: Wed, 11 Oct 2023 14:39:10 +0100
From: Conor Dooley <conor@kernel.org>
To: Ante Knezic <ante.knezic@helmholz.de>
Cc: UNGLinuxDriver@microchip.com, andrew@lunn.ch, conor+dt@kernel.org,
	davem@davemloft.net, devicetree@vger.kernel.org,
	edumazet@google.com, f.fainelli@gmail.com,
	krzysztof.kozlowski+dt@linaro.org, kuba@kernel.org,
	linux-kernel@vger.kernel.org, marex@denx.de, netdev@vger.kernel.org,
	olteanv@gmail.com, pabeni@redhat.com, robh+dt@kernel.org,
	woojung.huh@microchip.com
Subject: Re: [PATCH net-next 2/2] dt-bindings: net: microchip,ksz: document
 microchip,rmii-clk-internal
Message-ID: <20231011-brittle-frantic-d39ec3dd23f9@spud>
References: <20231010-unwired-trench-c7a467118879@spud>
 <20231011132600.26297-1-ante.knezic@helmholz.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tHfanppQTDzMi70y"
Content-Disposition: inline
In-Reply-To: <20231011132600.26297-1-ante.knezic@helmholz.de>


--tHfanppQTDzMi70y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 11, 2023 at 03:26:00PM +0200, Ante Knezic wrote:
> On Tue, 10 Oct 2023 16:25:55 +0100, Conor Dooley wrote:
> > On Tue, Oct 10, 2023 at 03:18:54PM +0200, Ante Knezic wrote:
> > > Add documentation for selecting reference rmii clock on KSZ88X3 devic=
es
> > >=20
> > > Signed-off-by: Ante Knezic <ante.knezic@helmholz.de>
> > > ---
> > >  Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml | 6 +++=
+++
> > >  1 file changed, 6 insertions(+)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/net/dsa/microchip,ksz.=
yaml b/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
> > > index e51be1ac0362..3df5d2e72dba 100644
> > > --- a/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
> > > +++ b/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
> > > @@ -49,6 +49,12 @@ properties:
> > >        Set if the output SYNCLKO clock should be disabled. Do not mix=
 with
> > >        microchip,synclko-125.
> > > =20
> > > +  microchip,rmii-clk-internal:
> > > +    $ref: /schemas/types.yaml#/definitions/flag
> > > +    description:
> > > +      Set if the RMII reference clock should be provided internally.
> >=20
> > > Applies only
> > > +      to KSZ88X3 devices.
> >=20
> > This should be enforced by the schema, the example schema in the docs
> > should show you how to do this.
>=20
> I am guessing you are refering to limiting the property to ksz88x3 device=
s?
> Something like:
>=20
> if:
>   properties:
>     compatible:
>       enum:
>         - microchip,ksz8863
>         - microchip,ksz8873
> then:
>   properties:
>     microchip,rmii-clk-internal:
>       $ref: /schemas/types.yaml#/definitions/flag
>       description:
>         Set if the RMII reference clock is provided internally. Otherwise
>         reference clock should be provided externally.

Not quite. The definition of the property should be outside the if/then,
but one should be used to allow/disallow the property.

--tHfanppQTDzMi70y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSalfgAKCRB4tDGHoIJi
0j1vAQDpZsPIcSqaMqUI+uqMOAzykKbi5gXYur3unCFYlUPbUAD+KfDrAmTUEA2s
On9Np5vf099rBCZAx/bTeVYk3kPP2Q4=
=2uGA
-----END PGP SIGNATURE-----

--tHfanppQTDzMi70y--

