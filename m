Return-Path: <devicetree+bounces-10086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 394BF7CF902
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:33:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5AC0C1C20EAF
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AC97225B9;
	Thu, 19 Oct 2023 12:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDRtQflQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350F5225B5;
	Thu, 19 Oct 2023 12:33:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD9BAC433C7;
	Thu, 19 Oct 2023 12:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697718790;
	bh=HXrV7kCYq+8dGIOhmNM9cZKQg6C/pYcpWNZuJJdFHk0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DDRtQflQ6DoRnGhXyU8596WQTVwkxzEN9rM6R/RJmkwLdsw3cawUCn8QNo1m4jAD/
	 vcl4xzr0V03AkmOH2QIb3YNUlVewXZj0RDWhhXXyV4SUMbyeqMx/kvTOULLgT2Laib
	 badFdSUcZ4/URHh+P+31XdJZvVHlmpbfOGAK5mkxVj4uurGy9Pfu3dejUyvo2LrTzQ
	 OGvmEQdCDtu1zNgwsj0mDikkTyq+wfYH7RfSECzN9Nc5xwnpYJwIxs/HSytsfK4+Uh
	 LVIl6h8TSo2wnWeOSzmeosotOONJEZam7+JTQWWct9hWe/OrAF4H4cSxZo+5KycU0p
	 1HJJvWpEztZsw==
Date: Thu, 19 Oct 2023 13:33:04 +0100
From: Conor Dooley <conor@kernel.org>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Rob Herring <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <f.fainelli@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Eric Dumazet <edumazet@google.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	Rob Herring <robh+dt@kernel.org>, netdev@vger.kernel.org,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	"David S. Miller" <davem@davemloft.net>,
	linux-kernel@vger.kernel.org,
	Gregory Clement <gregory.clement@bootlin.com>
Subject: Re: [PATCH net-next v4 1/7] dt-bindings: net: dsa: Require ports or
 ethernet-ports
Message-ID: <20231019-retake-hash-ec6741c9f372@spud>
References: <20231018-marvell-88e6152-wan-led-v4-0-3ee0c67383be@linaro.org>
 <20231018-marvell-88e6152-wan-led-v4-1-3ee0c67383be@linaro.org>
 <169762516670.391804.7528295251386913602.robh@kernel.org>
 <20231019-repacking-scrunch-f2435c2fd7e8@spud>
 <ZTEg62nZtYXW2Uid@shell.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7TsvOlYB329qfCR5"
Content-Disposition: inline
In-Reply-To: <ZTEg62nZtYXW2Uid@shell.armlinux.org.uk>


--7TsvOlYB329qfCR5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 19, 2023 at 01:28:27PM +0100, Russell King (Oracle) wrote:
> On Thu, Oct 19, 2023 at 01:03:41PM +0100, Conor Dooley wrote:
> > On Wed, Oct 18, 2023 at 05:32:48AM -0500, Rob Herring wrote:
> > >=20
> > > On Wed, 18 Oct 2023 11:03:40 +0200, Linus Walleij wrote:
> > > > Bindings using dsa.yaml#/$defs/ethernet-ports specify that
> > > > a DSA switch node need to have a ports or ethernet-ports
> > > > subnode, and that is actually required, so add requirements
> > > > using oneOf.
> > > >=20
> > > > Suggested-by: Rob Herring <robh@kernel.org>
> > > > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> > > > ---
> > > >  Documentation/devicetree/bindings/net/dsa/dsa.yaml | 6 ++++++
> > > >  1 file changed, 6 insertions(+)
> > > >=20
> > >=20
> > > My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_ch=
eck'
> > > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > >=20
> > > yamllint warnings/errors:
> > > ./Documentation/devicetree/bindings/net/dsa/dsa.yaml:60:7: [warning] =
wrong indentation: expected 8 but found 6 (indentation)
> > > ./Documentation/devicetree/bindings/net/dsa/dsa.yaml:62:7: [warning] =
wrong indentation: expected 8 but found 6 (indentation)
> > >=20
> > > dtschema/dtc warnings/errors:
> > > Traceback (most recent call last):
> > >   File "/usr/local/bin/dt-doc-validate", line 64, in <module>
> > >     ret |=3D check_doc(f)
> > >            ^^^^^^^^^^^^
> > >   File "/usr/local/bin/dt-doc-validate", line 32, in check_doc
> > >     for error in sorted(dtsch.iter_errors(), key=3Dlambda e: e.lineco=
l):
> > >                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> > >   File "/usr/local/lib/python3.11/dist-packages/dtschema/schema.py", =
line 125, in iter_errors
> > >     self.annotate_error(scherr, meta_schema, scherr.schema_path)
> > >   File "/usr/local/lib/python3.11/dist-packages/dtschema/schema.py", =
line 104, in annotate_error
> > >     schema =3D schema[p]
> > >              ~~~~~~^^^
> > > KeyError: 'type'
> >=20
> > Locally, on an older version of dt-schema, I see
> > /stuff/linux-dt/Documentation/devicetree/bindings/net/dsa/dsa.yaml: $de=
fs: 'oneOf' should not be valid under {'$ref': '#/definitions/json-schema-p=
rop-names'}
> > 	hint: A json-schema keyword was found in $defs key.
> > 	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
> > /stuff/linux-dt/Documentation/devicetree/bindings/net/dsa/dsa.yaml: $de=
fs:oneOf: [{'required': ['ports']}, {'required': ['ethernet-ports']}] is no=
t of type 'object'
> > 	hint: $defs entries must contain schemas
> > 	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
> >   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
> >=20
> > On the latest version I see the error from the bot.
> >=20
> > Doing=20
> > diff --git a/Documentation/devicetree/bindings/net/dsa/dsa.yaml b/Docum=
entation/devicetree/bindings/net/dsa/dsa.yaml
> > index bd6948e4fd9e..25e5950d51ae 100644
> > --- a/Documentation/devicetree/bindings/net/dsa/dsa.yaml
> > +++ b/Documentation/devicetree/bindings/net/dsa/dsa.yaml
> > @@ -55,10 +55,10 @@ $defs:
> >              $ref: dsa-port.yaml#
> >              unevaluatedProperties: false
> > =20
> > -  oneOf:
> > -    - required:
> > -      - ports
> > -    - required:
> > -      - ethernet-ports
> > +oneOf:
> > +  - required:
> > +    - ports
> > +  - required:
> > +    - ethernet-ports
> > =20
> >  ...
> >=20
> > resolves both issues, but the older version of dt-schema definitely had
> > better error reporting in this case!
>=20
> And now I'm even more confused... your example in your other reply had
> six spaces before "- ports" and "- ethernet-ports" but here you're
> using four spaces.

Sorry! I thought it would be less confusing to provide a diff that
resolved one issue only.

--7TsvOlYB329qfCR5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTEiAAAKCRB4tDGHoIJi
0oxWAQDuOmv+NcWDC3gILLXySzfFGVR0cKMUHRRHUBJromR8AAD/cMdUKC8Bs4bi
CdvZFiEvi0/huqirb1bbmciszrNddQ8=
=rpyb
-----END PGP SIGNATURE-----

--7TsvOlYB329qfCR5--

