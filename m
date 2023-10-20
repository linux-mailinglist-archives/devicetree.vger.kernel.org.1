Return-Path: <devicetree+bounces-10415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AA97D1175
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 16:22:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 070131C20E98
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 14:22:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B09841D544;
	Fri, 20 Oct 2023 14:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNnUhRbK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90FA01A29D
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 14:22:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1A46C433C8;
	Fri, 20 Oct 2023 14:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697811748;
	bh=y3RAlabMY9JfTgyKPsrGaRZGjnShxDjVRxHtg+L1yjA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fNnUhRbK+JboDV8tfL1tmzlR4KdmkFxGZ73HsT6T66jO+mArOuodvbWbdQvugMyVl
	 Dq7rD4NAo4a+nX5l9vo/xDgXyVjhicQJ6tXnyz2xNEeB1WbDH0CWzTBipTJ5AhGvMJ
	 lumjTMwCPLR3cTD+qu+QujvDiZNiRZCXtGn1uS+x+BVS4vhEnhB1zSf8l7T0Qip7bl
	 HAwscskfBoTQSNfQtRyM5FSGOgVm8KbJCinUfMsPU2Q5bFKdobS4ww92urYT4nG+0K
	 zh/U9isAFFV8AvrmNxR8I5gYywJsB9NdEo2ahVN2eYGV+MdaWlV3moxDsOzApP5mfP
	 1f+njzJbKZLTw==
Date: Fri, 20 Oct 2023 15:22:22 +0100
From: Conor Dooley <conor@kernel.org>
To: William Qiu <william.qiu@starfivetech.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-pwm@vger.kernel.org,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	Hal Feng <hal.feng@starfivetech.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Subject: Re: [PATCH v6 1/4] dt-bindings: pwm: Add OpenCores PWM module
Message-ID: <20231020-giddy-fidgety-f070ef121ff2@spud>
References: <20231020103741.557735-1-william.qiu@starfivetech.com>
 <20231020103741.557735-2-william.qiu@starfivetech.com>
 <20231020-barley-rosy-92c3688cd515@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3KQTc1pnS1DLeim4"
Content-Disposition: inline
In-Reply-To: <20231020-barley-rosy-92c3688cd515@spud>


--3KQTc1pnS1DLeim4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 20, 2023 at 03:21:15PM +0100, Conor Dooley wrote:
> Krzysztof, William,
>=20
> On Fri, Oct 20, 2023 at 06:37:38PM +0800, William Qiu wrote:
> > Add documentation to describe OpenCores Pulse Width Modulation
> > controller driver.
> >=20
> > Signed-off-by: William Qiu <william.qiu@starfivetech.com>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Reviewed-by: Hal Feng <hal.feng@starfivetech.com>
> > ---
> >  .../bindings/pwm/opencores,pwm-ocores.yaml    | 53 +++++++++++++++++++
> >  1 file changed, 53 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pwm/opencores,pwm=
-ocores.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/pwm/opencores,pwm-ocores=
=2Eyaml b/Documentation/devicetree/bindings/pwm/opencores,pwm-ocores.yaml
> > new file mode 100644
> > index 000000000000..0f6a3434f155
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pwm/opencores,pwm-ocores.yaml
> > @@ -0,0 +1,53 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pwm/opencores,pwm-ocores.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: OpenCores PWM controller
> > +
> > +maintainers:
> > +  - William Qiu <william.qiu@starfivetech.com>
> > +
> > +description:
> > +  OpenCores PTC ip core contains a PWM controller. When operating in P=
WM mode, the PTC core
> > +  generates binary signal with user-programmable low and high periods.=
 All PTC counters and
> > +  registers are 32-bit.
> > +
> > +allOf:
> > +  - $ref: pwm.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - opencores,pwm-ocores
>=20
> What does the extra "ocores" suffix add, when it just repeats the vendor
> prefix?
>=20
> > +      - starfive,jh71x0-pwm
>=20
> Krzysztof, did you approve this generic compatible?
>=20
> And the whole thing looks like it should really be something like
>=20
> items:
>   - enum:
>       - starfive,jh7100-pwm
>       - starfive,jh7110-pwm
>   - const: opencores,pwm

(assuming that the opencores,pwm compatible represents a subset of what
is implemented on the jh7100 series)

--3KQTc1pnS1DLeim4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTKNHgAKCRB4tDGHoIJi
0s/HAP9VaJ5WdJWYuB+hx/HBT2bzsFHQFABLh7Gf7UltL5GDvwEAvAd8PHGeD+hI
/NZSW+d6MZdv9Im1y532IWKhqIM2Hw8=
=nKRH
-----END PGP SIGNATURE-----

--3KQTc1pnS1DLeim4--

