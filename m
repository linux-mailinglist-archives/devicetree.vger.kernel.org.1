Return-Path: <devicetree+bounces-25493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E0731813617
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 17:22:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 466E5B2094F
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:22:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAD345F1F3;
	Thu, 14 Dec 2023 16:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stjZi4UC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B5D5F1F0
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 16:22:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E424EC433C8;
	Thu, 14 Dec 2023 16:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702570956;
	bh=OMKVLv9NYzhuXYvDBlUO7M+vxpTr7gLzVqD9Q0PQcIk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=stjZi4UCT11AygYn1GChVhEvqQTM3fNvheYZz3LHZGZ9HTKo2sjML7eLHMDrBOLaI
	 vCixHOyPXvKnNUOtaVR9qUcMqXyCoXe5LPJrfk9R7UdN4RWNuaArx6zhv19JmTnggd
	 I2rwJZEv8VltqXZaR4GQIkz5a78aOXYWi1GlZqrL+bW4H1I0I00B+qN1uePGJVb5US
	 j2DmYClWJH2DfHlt2SnqJpmPF+GT5eKEs522NTiyRAWk58ze/dB37FeAPeuNLlPxM4
	 rWfXg2YQnux5pYfakB0kNae6Rebj7iBf62T7a8YsMwlJBhGlP1xuDnv24x9C2bPrTE
	 ytbJyAPXGwB9w==
Date: Thu, 14 Dec 2023 16:22:29 +0000
From: Conor Dooley <conor@kernel.org>
To: JeeHeng Sia <jeeheng.sia@starfivetech.com>
Cc: "kernel@esmil.dk" <kernel@esmil.dk>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"krzk@kernel.org" <krzk@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
	"palmer@dabbelt.com" <palmer@dabbelt.com>,
	"aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
	"daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
	"tglx@linutronix.de" <tglx@linutronix.de>,
	"anup@brainfault.org" <anup@brainfault.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"jirislaby@kernel.org" <jirislaby@kernel.org>,
	"michal.simek@amd.com" <michal.simek@amd.com>,
	Michael Zhu <michael.zhu@starfivetech.com>,
	"drew@beagleboard.org" <drew@beagleboard.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 2/6] dt-bindings: riscv: Add StarFive JH8100 SoC
Message-ID: <20231214-platonic-unhearing-27e2ec3d8f75@spud>
References: <20231201121410.95298-1-jeeheng.sia@starfivetech.com>
 <20231201121410.95298-3-jeeheng.sia@starfivetech.com>
 <20231213-imminent-favorable-a7d25e6555af@spud>
 <f6665b5c235148279104c4c3fa9ff080@EXMBX066.cuchost.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="i1pQ8XIdCyW9abGP"
Content-Disposition: inline
In-Reply-To: <f6665b5c235148279104c4c3fa9ff080@EXMBX066.cuchost.com>


--i1pQ8XIdCyW9abGP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 12:36:57AM +0000, JeeHeng Sia wrote:
>=20
>=20
> > -----Original Message-----
> > From: Conor Dooley <conor@kernel.org>
> > Sent: Wednesday, December 13, 2023 8:43 PM
> > To: JeeHeng Sia <jeeheng.sia@starfivetech.com>
> > Cc: kernel@esmil.dk; robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.=
org; krzk@kernel.org; conor+dt@kernel.org;
> > paul.walmsley@sifive.com; palmer@dabbelt.com; aou@eecs.berkeley.edu; da=
niel.lezcano@linaro.org; tglx@linutronix.de;
> > anup@brainfault.org; gregkh@linuxfoundation.org; jirislaby@kernel.org; =
michal.simek@amd.com; Michael Zhu
> > <michael.zhu@starfivetech.com>; drew@beagleboard.org; devicetree@vger.k=
ernel.org; linux-riscv@lists.infradead.org; linux-
> > kernel@vger.kernel.org; Leyfoon Tan <leyfoon.tan@starfivetech.com>; Con=
or Dooley <conor.dooley@microchip.com>
> > Subject: Re: [PATCH v3 2/6] dt-bindings: riscv: Add StarFive JH8100 SoC
> >=20
> > On Fri, Dec 01, 2023 at 08:14:06PM +0800, Sia Jee Heng wrote:
> > > Add device tree bindings for the StarFive JH8100 RISC-V SoC.
> > >
> > > Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> > > Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > ---
> > >  Documentation/devicetree/bindings/riscv/starfive.yaml | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/riscv/starfive.yaml b/=
Documentation/devicetree/bindings/riscv/starfive.yaml
> > > index cc4d92f0a1bf..12d7844232b8 100644
> > > --- a/Documentation/devicetree/bindings/riscv/starfive.yaml
> > > +++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
> > > @@ -30,6 +30,10 @@ properties:
> > >                - starfive,visionfive-2-v1.3b
> > >            - const: starfive,jh7110
> > >
> > > +      - items:
> > > +          - enum:
> > > +              - starfive,jh8100-evb
> >=20
> > Hmm, reading some of the other threads it appears that the evaluation
> > platform that you guys have is actually just an FPGA? Could you please
> > provide more information as to what this "evb" actually is?
> >=20
> > If it is just an FPGA-based evaluation platform I don't think that we
> > want to merge patches for the platform. I'm fine with patches adding
> > peripheral support, but the soc/board dts files and things like pinctrl
> > or clock drivers I am not keen on.
> > Perhaps Emil also has an opinion on this.
> Eco the same reply here. I am not sure what you mean. We verified on FPGA=
 & Emulator,
> and the logic is pretty much close to the real silicon.

"Pretty much close" That doesn't give me confidence. The compatible
should uniquely identify an SoC, but if it is used for both the actual
SoC and for something "pretty much close" to the actual SoC then that
does not hold.

> I did mention that in the cover letter as well.

Ah apologies for missing that. I try to read cover letters but the
volume of mail gets to me at times.

> I am new to Linux, so I am wondering if there is a Linux upstream guideli=
ne mentioning
> that pre-silicon software is not allowed to upstream?

I wouldn't say that this is the case, but things like clock and pinctrl
drivers are the sort of things that are likely to vary in your "pretty
much close" as that is the kind of thing that change for your final
integration, versus a more "standalone" peripheral.

For dts stuff, in RISC-V at least, we've been operating so far on the
basis that systems implemented entirely on an FPGA are not suitable for
inclusion in mainline. I would say that this can probably be relaxed to
allow systems where there are publicly available, versioned, designs or
bitstreams that are widely used that these devicetrees correspond to.
This would suit something like if AMD published a bitstream using one
of their new MicroblazeV cpu cores as a sort of "reference design".

> Hope there is an updated Linux
> upstream guideline that benefit other vendors.

I have no idea if there is one or not. I think it generally varies on
individual maintainers etc, and for something like a dts it comes down
to the platform maintainer (Emil) I suppose. Sending stuff out before
your SoC has been produced is really great though, so it is a fine line
to avoid discouraging something we really like to see.

Cheers,
Conor.

--i1pQ8XIdCyW9abGP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXsrxQAKCRB4tDGHoIJi
0uK+AQC2DmGOWd1dZ0NqujXAEMZ7V/aeOWxTvJb3NvzYserHSgEA+qqzaBqI+4z6
fZ+r3FZkfxYU9XjFsStLKJA6ZdgoSwU=
=qiyL
-----END PGP SIGNATURE-----

--i1pQ8XIdCyW9abGP--

