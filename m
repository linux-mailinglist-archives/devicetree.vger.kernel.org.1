Return-Path: <devicetree+bounces-14077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD977E1F26
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:02:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A623C28121A
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 11:02:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEB0118035;
	Mon,  6 Nov 2023 11:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300411863A
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 11:02:39 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E22EBD
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 03:02:37 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qzxNL-0002Ho-O0; Mon, 06 Nov 2023 12:02:35 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qzxNK-0070S0-VC; Mon, 06 Nov 2023 12:02:34 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qzxNK-00Da6k-LF; Mon, 06 Nov 2023 12:02:34 +0100
Date: Mon, 6 Nov 2023 12:02:34 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-pwm@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: pwm: imx-pwm: Add constraints for
 #pwm-cells
Message-ID: <20231106110234.d62xhsk2za5ohr6d@pengutronix.de>
References: <20231106095205.231210-1-alexander.stein@ew.tq-group.com>
 <20231106095205.231210-2-alexander.stein@ew.tq-group.com>
 <20231106103621.2fh6fkpdafpz4toa@pengutronix.de>
 <8300676.T7Z3S40VBb@steina-w>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vno4u6qwlv7yrytv"
Content-Disposition: inline
In-Reply-To: <8300676.T7Z3S40VBb@steina-w>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--vno4u6qwlv7yrytv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 06, 2023 at 11:49:19AM +0100, Alexander Stein wrote:
> Hello Uwe,
>=20
> Am Montag, 6. November 2023, 11:36:21 CET schrieb Uwe Kleine-K=F6nig:
> > Hello,
> >=20
> > [dropped Philippe Schenker from Cc as his email bounced in the past]
> >=20
> > On Mon, Nov 06, 2023 at 10:52:03AM +0100, Alexander Stein wrote:
> > > Only fsl,imx1-pwm comptabile devices use #pwm-cells =3D <2>. Newer So=
Cs
> > > supportinverted PWM output, thus #pwm-cells needs to be set to 3.
> > >=20
> > > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > > ---
> > >=20
> > >  .../devicetree/bindings/pwm/imx-pwm.yaml      | 20 ++++++++++++++++-=
--
> > >  1 file changed, 17 insertions(+), 3 deletions(-)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
> > > b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml index
> > > c01dff3b7f843..59a981c0f39ab 100644
> > > --- a/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
> > > +++ b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
> > > @@ -9,9 +9,6 @@ title: Freescale i.MX PWM controller
> > >=20
> > >  maintainers:
> > >    - Philipp Zabel <p.zabel@pengutronix.de>
> > >=20
> > > -allOf:
> > > -  - $ref: pwm.yaml#
> > > -
> > >=20
> > >  properties:
> > >    "#pwm-cells":
> > >      description: |
> > >=20
> > > @@ -74,6 +71,23 @@ required:
> > >  additionalProperties: false
> > >=20
> > > +allOf:
> > > +  - $ref: pwm.yaml#
> > > +
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            const: fsl,imx1-pwm
> > > +    then:
> > > +      properties:
> > > +        "#pwm-cells":
> > > +          enum: [2]
> >=20
> > Given that arch/arm/boot/dts/nxp/imx/imx1.dtsi has:
> >=20
> > 	pwm: pwm@208000 {
> > 		#pwm-cells =3D <3>;
> > 		compatible =3D "fsl,imx1-pwm";
> > 		...
> >=20
> > this looks wrong.
>=20
> Indeed, something i doesn't match. Checking with [1] section 22.4.1 there=
 are=20
> no bits regarding output inversion. Also pwm_imx1_apply returns -EINVAL i=
f=20
> state->polarity !=3D PWM_POLARITY_NORMAL.
> So IMO "#pwm-cells =3D <3>" is wrong for imx1. If fixed to 2, this also m=
atches=20
> the description for the value of #pwm-cells in imx-pwm.yaml.

The reasoning only works in one direction, i.e. if your PWM supports
inversed polarity you need #pwm-cells =3D <3>. But there no problem in
using 3 cells for a PWM that doesn't support inversed output. Some might
call it unnecessary verboseness, other might call it consistency.

I'd say the right thing to do here is to stick to =3D 3 and adapt this
patch and the already existing comment in imx-pwm.yaml.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--vno4u6qwlv7yrytv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmVIx8kACgkQj4D7WH0S
/k6uOwf6A3+Bwg80EL0j4sXYxSFniVgXaJSG3Nu8tJhUYFDbOi6Bkq/i6Xmeon8P
n4CaO0gezvrIFciVA3o+XP8kqpm1z4vzq8OLgoVRGyZ14F1NlQwA1uRxNnjAyu7M
HEtarFuqLekNmDOj0ckLudiIoqXiN8sJDJyzsw5L08cyvKUXFQlZy6NyDP9UaG2G
9F1T9K47UA2vIQjWBXhfr8kBEkEuvn3Q45rv5Ia2IzRhlyp8G2oBoSzpqa7a6zDD
gNNqrOWJvsaYeWbuql29bAap1hyiUsSxjPH4vVe1XIHz3aj1f1eBfMuNG4mqS54L
TzycPjksXSaoNA6xNqbbDWpRnFZe6w==
=VXcD
-----END PGP SIGNATURE-----

--vno4u6qwlv7yrytv--

