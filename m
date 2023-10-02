Return-Path: <devicetree+bounces-5269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AEE7B5BC2
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 22:07:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 8EE571C20434
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:07:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B478F200C8;
	Mon,  2 Oct 2023 20:07:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A49E91D53B
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 20:07:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68E09C433C7;
	Mon,  2 Oct 2023 20:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696277234;
	bh=YTI1p52+JDOx/ndLU4/rvBQRdqn0ffVJBgdAmS9Eysc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gyLFkAvbjBsbz7EtRlxuSXURkv3HF8sxzr6VvY8aPN6XrFZq+whtSwjwqgfAoyVOv
	 uu1UjqSVvJOqHPcoDTwDzIYarhyc0oITL9vP9PgxA5nC26YYqMHC1pUmxSmyldtix7
	 NRwQyNsFrwh2//nec0VLzVO9ifuwcs6zq9G10JlXwQIVUoQ8oiJTG6LqzAeSPoeD7T
	 9yKNGGS4TQ9YkXj+jdpp5e4JAuAThsYx7F9o8kAdr9WzhsoISUNMS6d3SiG56VCIXx
	 61g75uobcYXI/iqgympFxVBGsEx8IliyluNxgW8cgkHDiApXbam8Dk6rNTEn+iqw3C
	 dbZlyx9XbY2rA==
Date: Mon, 2 Oct 2023 21:07:10 +0100
From: Conor Dooley <conor@kernel.org>
To: "Balas, Eliza" <Eliza.Balas@analog.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: misc: adi,axi-tdd: Add device-tree
 binding for TDD engine
Message-ID: <20231002-carnivore-clapped-33140a07ff67@spud>
References: <20230928092804.22612-1-eliza.balas@analog.com>
 <20230928092804.22612-2-eliza.balas@analog.com>
 <20231002163244.GA1886905-robh@kernel.org>
 <BN7PR03MB454508AF350D2DC96FE1743A97C5A@BN7PR03MB4545.namprd03.prod.outlook.com>
 <20231002-aggregate-scanner-3ca2ae69cf0c@spud>
 <BN7PR03MB4545090CC2F859333E9C3AB297C5A@BN7PR03MB4545.namprd03.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="451K07UXANYYvndp"
Content-Disposition: inline
In-Reply-To: <BN7PR03MB4545090CC2F859333E9C3AB297C5A@BN7PR03MB4545.namprd03.prod.outlook.com>


--451K07UXANYYvndp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 02, 2023 at 07:48:42PM +0000, Balas, Eliza wrote:
> > -----Original Message-----
> > From: Conor Dooley <conor@kernel.org>
> > Sent: Monday, October 2, 2023 22:21
> > To: Balas, Eliza <Eliza.Balas@analog.com>
> > Cc: Rob Herring <robh@kernel.org>; Krzysztof Kozlowski <krzysztof.kozlo=
wski+dt@linaro.org>; Conor Dooley <conor+dt@kernel.org>;
> > Derek Kiernan <derek.kiernan@amd.com>; Dragan Cvetic <dragan.cvetic@amd=
=2Ecom>; Arnd Bergmann <arnd@arndb.de>; Greg
> > Kroah-Hartman <gregkh@linuxfoundation.org>; linux-kernel@vger.kernel.or=
g; devicetree@vger.kernel.org
> > Subject: Re: [PATCH v2 1/2] dt-bindings: misc: adi,axi-tdd: Add device-=
tree binding for TDD engine
> >=20
> > [External]
> >=20
> > On Mon, Oct 02, 2023 at 04:46:26PM +0000, Balas, Eliza wrote:
> > > > -----Original Message-----
> > > > From: Rob Herring <robh@kernel.org>
> > > > Sent: Monday, October 2, 2023 19:33
> > > > To: Balas, Eliza <Eliza.Balas@analog.com>
> > > > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>; Conor =
Dooley <conor+dt@kernel.org>; Derek Kiernan
> > > > <derek.kiernan@amd.com>; Dragan Cvetic <dragan.cvetic@amd.com>; Arn=
d Bergmann <arnd@arndb.de>; Greg Kroah-Hartman
> > > > <gregkh@linuxfoundation.org>; linux-kernel@vger.kernel.org; devicet=
ree@vger.kernel.org
> > > > Subject: Re: [PATCH v2 1/2] dt-bindings: misc: adi,axi-tdd: Add dev=
ice-tree binding for TDD engine
> > > >
> > > > [External]
> > > >
> > > > On Thu, Sep 28, 2023 at 12:28:03PM +0300, Eliza Balas wrote:
> > > > > Add device tree documentation for the AXI TDD Core.
> > > > > The generic TDD controller is in essence a waveform generator
> > > > > capable of addressing RF applications which require Time Division
> > > > > Duplexing, as well as controlling other modules of general
> > > > > applications through its dedicated 32 channel outputs.
> > > > >
> > > > > The reason of creating the generic TDD controller was to reduce
> > > > > the naming confusion around the existing repurposed TDD core
> > > > > built for AD9361, as well as expanding its number of output
> > > > > channels for systems which require more than six controlling sign=
als.
> > > > >
> > > > > Signed-off-by: Eliza Balas <eliza.balas@analog.com>
> > > > > ---
> > > > >  .../devicetree/bindings/misc/adi,axi-tdd.yaml | 65 +++++++++++++=
++++++
> > > > >  MAINTAINERS                                   |  7 ++
> > > > >  2 files changed, 72 insertions(+)
> > > > >  create mode 100644 Documentation/devicetree/bindings/misc/adi,ax=
i-tdd.yaml
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/misc/adi,axi-tdd.y=
aml b/Documentation/devicetree/bindings/misc/adi,axi-
> > tdd.yaml
> > > > > new file mode 100644
> > > > > index 000000000000..8938da801b95
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/misc/adi,axi-tdd.yaml
> > > > > @@ -0,0 +1,65 @@
> > > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > > +# Copyright 2023 Analog Devices Inc.
> > > > > +%YAML 1.2
> > > > > +---
> > > > > +$id: https://urldefense.com/v3/__http://devicetree.org/schemas/m=
isc/adi,axi-
> > > > tdd.yaml*__;Iw!!A3Ni8CS0y2Y!5Cxus2huppjhkiJZLWTpJEgA0IXdLZx4t0fS9J1=
yt0xgjp9g3Y1N5PbZ7pAcIkKU4WPbS_TR9yjTKw$
> > > > > +$schema: https://urldefense.com/v3/__http://devicetree.org/meta-
> > > >
> > schemas/core.yaml*__;Iw!!A3Ni8CS0y2Y!5Cxus2huppjhkiJZLWTpJEgA0IXdLZx4t0=
fS9J1yt0xgjp9g3Y1N5PbZ7pAcIkKU4WPbS_RK8aQ9xw$
> > > > > +
> > > > > +title: Analog Devices AXI TDD Core
> > > > > +
> > > > > +maintainers:
> > > > > +  - Eliza Balas <eliza.balas@analog.com>
> > > > > +
> > > > > +description: |
> > > > > +  The TDD controller is a waveform generator capable of addressi=
ng RF
> > > > > +  applications which require Time Division Duplexing, as well as=
 controlling
> > > > > +  other modules of general applications through its dedicated 32=
 channel
> > > > > +  outputs. It solves the synchronization issue when transmitting=
 and receiving
> > > > > +  multiple frames of data through multiple buffers.
> > > > > +  The TDD IP core is part of the Analog Devices hdl reference de=
signs and has
> > > > > +  the following features:
> > > > > +    * Up to 32 independent output channels
> > > > > +    * Start/stop time values per channel
> > > > > +    * Enable and polarity bit values per channel
> > > > > +    * 32 bit-max internal reference counter
> > > > > +    * Initial startup delay before waveform generation
> > > > > +    * Configurable frame length and number of frames per burst
> > > > > +    * 3 sources of synchronization: external, internal and softw=
are generated
> > > > > +  For more information see the wiki:
> > > > > +  https://wiki.analog.com/resources/fpga/docs/axi_tdd
> > > > > +
> > > > > +properties:
> > > > > +  compatible:
> > > > > +    enum:
> > > > > +      - adi,axi-tdd-2.00.a
> > > >
> > > > Where does this version number come from? I looked at the above lin=
k and
> > > > see versions such as '2021_R2', '2019_r2', etc. I didn't dig deeper
> > > > whether there's some per IP version.
> > > >
> > > > If you want to use version numbers, please document the versioning
> > > > scheme. For example, see
> > > > Documentation/devicetree/bindings/sifive/sifive-blocks-ip-versionin=
g.txt.
> > > >
> > > > Rob
> > >
> > > The version refers to the IP version. The version of the IP is also
> > > specified in its VERSION register (there is a drop down to expand the
> > > register map on the wiki page) which is verified by the driver during
> > > probe. "2021_R2" refers to the compatible tool version used for
> > > creating the FPGAIP Core.
> >=20
> > If you have version registers in these IPs, what benefit does version
> > numbers in the compatible string bring?
> > Rather than using the version numbers to validate what the DT gave you,
> > which not the kernel's job IMO, why not just use the information from
> > the register to determine the version?
> >=20
> > Cheers,
> > Conor.
>=20
> As the description of this patch says, we want to resolve the naming conf=
usion around the existing repurposed TDD core (https://wiki.analog.com/reso=
urces/eval/user-guides/ad-pzsdr2400tdd-eb/reference_hdl#tdd_controller)
> built for AD9361 and this TDD Engine IP core (https://wiki.analog.com/res=
ources/fpga/docs/axi_tdd) which is a similar core, with more output channel=
s and some extra features. The version numbers in the compatible string are=
 used to differentiate between the two IPs.

Firstly, please fix your mail client to wrap text at a sane width :)
Secondly, where is the binding for that TDD ad9361 specific core that
calling this generic one "adi,axi-tdd" would conflict with?
Grepping the bindings directory of the kernel tree for "adi.*tdd" returns
nothing. If there is an ad9361 specific tdd, I would expect it to have a
compatible like "adi,ad9361-tdd".

--451K07UXANYYvndp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRsi7QAKCRB4tDGHoIJi
0hgGAP4ungSPkt3sOkkUfztwf/Bq59bmcxo3fKJ4RIVg4zoGVgD/V1qv0td9doEv
pyLisaQ1Jcocjto+qx4QwOdWOkU+sg4=
=MzeR
-----END PGP SIGNATURE-----

--451K07UXANYYvndp--

