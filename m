Return-Path: <devicetree+bounces-14558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DF47E5666
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 13:38:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 585191C20991
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 12:38:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4A1128F9;
	Wed,  8 Nov 2023 12:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDnVBLYq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F7110A25
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 12:37:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A859C433C8;
	Wed,  8 Nov 2023 12:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699447077;
	bh=Nbl715uHuDfn/0nWvvjyrAkfUOeRaffc0nWTyED+I84=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XDnVBLYqCKdpQTiMGYKQlHU+ljm3pEu6Ye6L6tARUOImAi5r7O1j+48rtPF9QpoST
	 LJkkRS7ARKlzDhCibIUkr23wdL2MXYTZibFGXUvMWJ94T/ejeOlfLHSxdzTAzEbAHx
	 4/Hf7ApkO0aWzRJpwNARHSzIZ3wqn/w5mHaoLOt+kH3wS3/TXDI4ja1vLehJHuu+Ty
	 wK3t9FlM7H/K6oAm1Wqnf5laExgDvrm2naewjTIuaJXMzbCkkKTiGfUwl8my2Cz1sQ
	 2Dv3XCWCEdHH98ugCkSMIGZi7j83KtW8+9vSStjL+hXbhxj+r+qYxN9O/509SybPy3
	 k076D7xNBJeBQ==
Date: Wed, 8 Nov 2023 12:37:52 +0000
From: Conor Dooley <conor@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: pwm: imx-pwm: Unify #pwm-cells for
 all compatibles
Message-ID: <20231108-wisdom-overall-753fbb76ac74@spud>
References: <20231106151326.812099-1-alexander.stein@ew.tq-group.com>
 <20231106151326.812099-2-alexander.stein@ew.tq-group.com>
 <20231106153926.dqvx56fegqpmw3k7@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/OQ5+urFAx7r7TQ3"
Content-Disposition: inline
In-Reply-To: <20231106153926.dqvx56fegqpmw3k7@pengutronix.de>


--/OQ5+urFAx7r7TQ3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 06, 2023 at 04:39:26PM +0100, Uwe Kleine-K=F6nig wrote:
> On Mon, Nov 06, 2023 at 04:13:24PM +0100, Alexander Stein wrote:
> > Use #pwm-cells for all i.MX variants. Only fsl,imx1-pwm does not support
> > inverted PWM output. Keep it the same for consistency.
> >=20
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> >  Documentation/devicetree/bindings/pwm/imx-pwm.yaml | 10 ++++------
> >  1 file changed, 4 insertions(+), 6 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/pwm/imx-pwm.yaml b/Docum=
entation/devicetree/bindings/pwm/imx-pwm.yaml
> > index c01dff3b7f843..a84a240a61dc1 100644
> > --- a/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
> > +++ b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
> > @@ -14,12 +14,10 @@ allOf:
> > =20
> >  properties:
> >    "#pwm-cells":
> > -    description: |
> > -      Should be 2 for i.MX1 and 3 for i.MX27 and newer SoCs. See pwm.y=
aml
> > -      in this directory for a description of the cells format.
> > -    enum:
> > -      - 2
> > -      - 3
> > +    description:
> > +      The only third cell flag supported by this binding is
> > +      PWM_POLARITY_INVERTED. fsl,imx1-pwm does not support this flags.
> > +    const: 3
>=20
> You dropped the | from the description line, but with my understanding
> of yaml this should be fine.

Ya, it was not required there in the first place.

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--/OQ5+urFAx7r7TQ3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUuBIAAKCRB4tDGHoIJi
0kpEAQD4tcfU6SMHTCcjORQdg7Gi2jg8AfMju13nkqlCsBldCgEA09z3EDTevezq
dIIrGwZTEfQqVKQpOQLX5G91WcLLZA4=
=NvpP
-----END PGP SIGNATURE-----

--/OQ5+urFAx7r7TQ3--

