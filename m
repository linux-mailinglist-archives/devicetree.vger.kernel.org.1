Return-Path: <devicetree+bounces-10111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3E97CFB0C
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:32:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BCCA9B20EF9
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8193727457;
	Thu, 19 Oct 2023 13:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X17d+diE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CCC2744D
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 13:32:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4F5CC433C8;
	Thu, 19 Oct 2023 13:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697722335;
	bh=uIth58KOnu0F2t7Gf0oSpsZ5JWiWr+pq+5yI3KITDA4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X17d+diE3S+X/LEd5hs1P1DF8P9iQVp3EhubvjOpHCldFPZHMdV19ZKrYCMXR9TwT
	 m24rPnTJRkMnhgpACX9lyx1G81dewsPRKPNB/vvSuffFcPNWFMqrh3TQx7aDNJ1lUP
	 TGtXl0QmjvKnJyxO53jjPIrkG2sIZFhybhGhxlooU0HfBaYzIPvqsSk3S+00raaJB4
	 sktv1FtlDFNEGhyk2ttH573tK4bonpYiYJL/wn9F9YKEfE4xffH09AjiSb/njm6eKU
	 Aat69T6/wax74wtjrUAjebIq2787Gnb1y/lF2DopgQJtloDI2Hc9gUbBjcNd2y8kpg
	 hjsOZIeB5J7mQ==
Date: Thu, 19 Oct 2023 14:32:10 +0100
From: Conor Dooley <conor@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"shawnguo@kernel.org" <shawnguo@kernel.org>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"sboyd@kernel.org" <sboyd@kernel.org>,
	"abelvesa@kernel.org" <abelvesa@kernel.org>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>,
	"estevam@gmail.com" <estevam@gmail.com>,
	dl-linux-imx <linux-imx@nxp.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"inux-clk@vger.kernel.org" <inux-clk@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: clock: support i.MX93 Anatop
Message-ID: <20231019-president-gallantly-1b509e6eb2eb@spud>
References: <20231018084414.1950241-1-peng.fan@oss.nxp.com>
 <20231018-promenade-budding-3e228f241eb7@spud>
 <DU0PR04MB9417CD64DDD5238BCBC5B3E588D4A@DU0PR04MB9417.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VtVv58AsgCqDexvh"
Content-Disposition: inline
In-Reply-To: <DU0PR04MB9417CD64DDD5238BCBC5B3E588D4A@DU0PR04MB9417.eurprd04.prod.outlook.com>


--VtVv58AsgCqDexvh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 19, 2023 at 10:05:54AM +0000, Peng Fan wrote:
> > Subject: Re: [PATCH 1/2] dt-bindings: clock: support i.MX93 Anatop
> >=20
> > On Wed, Oct 18, 2023 at 04:44:13PM +0800, Peng Fan (OSS) wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > Support i.MX93 Anatop which generates PLL and feeds into CCM.
> >=20
> > What is "CCM". How do you "generate" a PLL?
>=20
> =20
> CCM: Clock Controller Module.

> I may use produces PLL

No, almost certainly it _is_ a PLL and produces a clock.

> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >  .../bindings/clock/fsl,imx93-anatop.yaml      | 41 +++++++++++++++++=
++
> > >  1 file changed, 41 insertions(+)
> > >  create mode 100644
> > > Documentation/devicetree/bindings/clock/fsl,imx93-anatop.yaml
> > >
> > > diff --git
> > > a/Documentation/devicetree/bindings/clock/fsl,imx93-anatop.yaml
> > > b/Documentation/devicetree/bindings/clock/fsl,imx93-anatop.yaml
> > > new file mode 100644
> > > index 000000000000..9585c9e4ee40
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/clock/fsl,imx93-anatop.yaml
> > > @@ -0,0 +1,41 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/clock/fsl,imx93-anatop.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: NXP i.MX93 Anatop Module
> >=20
> > I see there are also "anatop regulators" on some imx SoCs, just calling=
 this
> > "anatop module" does not seem sufficiently descriptive.
>=20
> Analog Module? How do you think?

It'd probably more be descriptive, but really putting the PLL bit in the
title would be helpful.

I assume "anatop" is what this thing is called in the RTL for the
device.

Cheers,
Conor.

> =20
> >=20
> > > +
> > > +maintainers:
> > > +  - Peng Fan <peng.fan@nxp.com>
> > > +
> > > +description: |
> >=20
> > Drop the |, you don't need it.
>=20
> Ok.
>=20
> >=20
> > > +  NXP i.MX93 anatop PLL module which generates PLL to CCM root.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    items:
> > > +      - const: fsl,imx93-anatop
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  '#clock-cells':
> > > +    const: 1
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - '#clock-cells'
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    anatop: clock-controller@44480000 {
> >=20
> > and the label is is not used, so should be dropped.
>=20
> Ok.
>=20
> Thanks,
> Peng.
>=20
> >=20
> > Thanks,
> > Conor.
> >=20
> > > +        compatible =3D "fsl,imx93-anatop";
> > > +        reg =3D <0x44480000 0x2000>;
> > > +        #clock-cells =3D <1>;
> > > +    };
> > > +
> > > +...
> > > --
> > > 2.37.1
> > >

--VtVv58AsgCqDexvh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTEv2gAKCRB4tDGHoIJi
0vTbAQCdtgf6jyJoIvRHR06DyWuImL0J27qLZptQv3FbnevShgD/X1Hf19mwJFfU
rHS1cw91RIoJ2A48wjGbSFPtGnwd2gk=
=F942
-----END PGP SIGNATURE-----

--VtVv58AsgCqDexvh--

