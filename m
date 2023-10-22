Return-Path: <devicetree+bounces-10641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EED7D2507
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 19:45:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 352152812E4
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5E88111B7;
	Sun, 22 Oct 2023 17:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvpT/NLp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843FB63B8
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 17:45:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86B21C433C7;
	Sun, 22 Oct 2023 17:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697996732;
	bh=JbZ2PzZZaBxejkHJXLSRADkSCgcvTSdrxEHIJ1m9eV0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XvpT/NLpgZkczSyfPrskKpofp0dlSEU3xmWYAez6L6fRaisdVuEzE3nL4W6Sv7QVM
	 Nkg0iXn9VbogSgGhsBTob5e+0Zxh2SGOgzIFX4zwOMRhNrrelmF/+5L9cKjiQoJvwe
	 NLMr8eUAXLM3H9r7UAFJmJuNQOJjUWUNlq0zLj5tTsETINq69Jo8ShEK9f67qdU5dy
	 10UBiixEuEOYmR4awpm+1IUnAifvcI0viaEcN3B2EOp+TUC8UQk8+podqKzqS1x5AE
	 QZTN+gZBp4jrceqWjtauiVMHcICViC9ne+SPONuOeG3JQJgJXLp4+ccwR97ZucCL1Q
	 +jr48wOZC5+bQ==
Date: Sun, 22 Oct 2023 18:45:27 +0100
From: Conor Dooley <conor@kernel.org>
To: Nik Bune <n2h9z4@gmail.com>
Cc: wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	skhan@linuxfoundation.org, baruch@tkos.co.il,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: watchdog: cnxt,cx92755-wdt: convert txt to
 yaml
Message-ID: <20231022-sequence-munchkin-099ebb5b0573@spud>
References: <20231022120328.137788-1-n2h9z4@gmail.com>
 <20231022-perish-ample-e8c009664a19@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kjXWxpFUU9GUqHjc"
Content-Disposition: inline
In-Reply-To: <20231022-perish-ample-e8c009664a19@spud>


--kjXWxpFUU9GUqHjc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 22, 2023 at 06:30:04PM +0100, Conor Dooley wrote:
> On Sun, Oct 22, 2023 at 02:03:28PM +0200, Nik Bune wrote:
> > Convert txt file to yaml.
> > Add maintainers list. Took from Documentation/devicetree/bindings/arm/d=
igicolor.yaml file.=20
>=20
> That seems like a bit of an odd reasoning, but Baruch was the submitter
> for the original txt form binding for this watchdog , per the git history.
>=20
> >=20
> > Signed-off-by: Nik Bune <n2h9z4@gmail.com>
> > ---
> >  .../bindings/watchdog/cnxt,cx92755-wdt.yaml   | 49 +++++++++++++++++++
> >  .../bindings/watchdog/digicolor-wdt.txt       | 25 ----------
> >  2 files changed, 49 insertions(+), 25 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/watchdog/cnxt,cx9=
2755-wdt.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/watchdog/digicolo=
r-wdt.txt
> >=20
> > diff --git a/Documentation/devicetree/bindings/watchdog/cnxt,cx92755-wd=
t.yaml b/Documentation/devicetree/bindings/watchdog/cnxt,cx92755-wdt.yaml
> > new file mode 100644
> > index 000000000000..acd2d30b20f3
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/watchdog/cnxt,cx92755-wdt.yaml
> > @@ -0,0 +1,49 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/watchdog/cnxt,cx92755-wdt.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Conexant Digicolor SoCs Watchdog timer
> > +
> > +description: |
> > +  The watchdog functionality in Conexant Digicolor SoCs relies on the =
so called
> > +  "Agent Communication" block. This block includes the eight programma=
ble system
> > +  timer counters. The first timer (called "Timer A") is the only one t=
hat can be
> > +  used as watchdog.
> > +
> > +allOf:
> > +  - $ref: watchdog.yaml#
> > +
> > +maintainers:
> > +  - Baruch Siach <baruch@tkos.co.il>
> > +
> > +properties:
> > +  compatible:
> > +    const: cnxt,cx92755-wdt
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      specifies the clock that drives the timer
>=20
> This can just be:
>   clocks:
>     maxItems: 1
>=20
> as clocks is a generic property & if there's only one clock, describing
> it is usually needless.
>=20
> Otherwise this conversion looks okay to me.

> > +
> > +  timeout-sec: true

While looking at your other wd conversion I noticed this, which should
not be needed since you are referencing watchdog.yaml.

Cheers,
Conor.

> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    watchdog@f0000fc0 {
> > +        compatible =3D "cnxt,cx92755-wdt";
> > +        reg =3D <0xf0000fc0 0x8>;
> > +        clocks =3D <&main_clk>;
> > +        timeout-sec =3D <15>;
> > +    };
> > diff --git a/Documentation/devicetree/bindings/watchdog/digicolor-wdt.t=
xt b/Documentation/devicetree/bindings/watchdog/digicolor-wdt.txt
> > deleted file mode 100644
> > index a882967e17d4..000000000000
> > --- a/Documentation/devicetree/bindings/watchdog/digicolor-wdt.txt
> > +++ /dev/null
> > @@ -1,25 +0,0 @@
> > -Conexant Digicolor SoCs Watchdog timer
> > -
> > -The watchdog functionality in Conexant Digicolor SoCs relies on the so=
 called
> > -"Agent Communication" block. This block includes the eight programmabl=
e system
> > -timer counters. The first timer (called "Timer A") is the only one tha=
t can be
> > -used as watchdog.
> > -
> > -Required properties:
> > -
> > -- compatible : Should be "cnxt,cx92755-wdt"
> > -- reg : Specifies base physical address and size of the registers
> > -- clocks : phandle; specifies the clock that drives the timer
> > -
> > -Optional properties:
> > -
> > -- timeout-sec : Contains the watchdog timeout in seconds
> > -
> > -Example:
> > -
> > -	watchdog@f0000fc0 {
> > -		compatible =3D "cnxt,cx92755-wdt";
> > -		reg =3D <0xf0000fc0 0x8>;
> > -		clocks =3D <&main_clk>;
> > -		timeout-sec =3D <15>;
> > -	};
> > --=20
> > 2.34.1
> >=20



--kjXWxpFUU9GUqHjc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTVftwAKCRB4tDGHoIJi
0m3oAP4+LnvE5nMD2qev8lpNQ6cWNAz+Yn6FUYt1ELYdCc7d5wD+NF/HvIgpnGrw
Uj3eZKfJY6zgaE6k4by1WJ/2V/5yhAo=
=uMnr
-----END PGP SIGNATURE-----

--kjXWxpFUU9GUqHjc--

