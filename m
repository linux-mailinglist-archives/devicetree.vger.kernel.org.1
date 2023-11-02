Return-Path: <devicetree+bounces-13519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D4A7DE93B
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 01:17:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 384B71C20DA9
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 00:17:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D6DD195;
	Thu,  2 Nov 2023 00:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fjz3k9HJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3F77E
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 00:17:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C268C433C7;
	Thu,  2 Nov 2023 00:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698884235;
	bh=TOJiriu7zo/tOZp6wt6uoQqF/K8RoG8GBogF+O+OlHg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fjz3k9HJotc18Y2AY4yosYabz+yl+n9B5E2DMxuLA98Igdoc8atWUGT0w+Potdj6A
	 vwaXd+5HCxLsFFXkHLjfI2gvOJCxDD4B39nauPuyv3sEEoJDz1HkBFHu37FoJErQ/L
	 te5TuHlyVDtNK6u6J2UM/8xVrR9NnT70JwKk2XKUcws4GzIRlHV9Qqacaodm+VE7YA
	 lWBAms4Kg4g33Uqcu4iLejvPxtJmK4y84z9URimUl4UZ4ArqtGty5L4+6b3BZJa5sc
	 rdN7ZED6BS2xdswu9HFD3YCyfp5gV1Dxg8wlObHLVTXRMjzkgN+Q+XTR8+CpzamRHS
	 Uw/8gSJq2YEJg==
Date: Thu, 2 Nov 2023 00:17:11 +0000
From: Conor Dooley <conor@kernel.org>
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: Rob Herring <robh@kernel.org>, linux-leds@vger.kernel.org,
	lee@kernel.org, linux-kernel@vger.kernel.org, kernel@sberdevices.ru,
	andy.shevchenko@gmail.com, conor+dt@kernel.org, pavel@ucw.cz,
	krzysztof.kozlowski+dt@linaro.org, rockosov@gmail.com,
	robh+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 11/11] dt-bindings: leds: aw200xx: fix led pattern and
 add reg constraints
Message-ID: <20231102-concave-untapped-804a5956faab@spud>
References: <20231101142445.8753-1-ddrokosov@salutedevices.com>
 <20231101142445.8753-12-ddrokosov@salutedevices.com>
 <169885374980.409399.3653628333009308100.robh@kernel.org>
 <20231101-bolster-anaerobic-244cd1a8c205@spud>
 <20231101174422.zs5er6tqethm46ur@CAB-WSD-L081021>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="1KMrlXhM842v/S70"
Content-Disposition: inline
In-Reply-To: <20231101174422.zs5er6tqethm46ur@CAB-WSD-L081021>


--1KMrlXhM842v/S70
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 01, 2023 at 08:44:22PM +0300, Dmitry Rokosov wrote:
> Hello Conor,
>=20
> On Wed, Nov 01, 2023 at 04:17:14PM +0000, Conor Dooley wrote:
> > On Wed, Nov 01, 2023 at 11:04:16AM -0500, Rob Herring wrote:
> > >=20
> > > On Wed, 01 Nov 2023 17:24:45 +0300, Dmitry Rokosov wrote:
> > > > AW200XX controllers have the capability to declare more than 0xf LE=
Ds,
> > > > therefore, it is necessary to accept LED names using an appropriate
> > > > regex pattern.
> > > >=20
> > > > The register offsets can be adjusted within the specified range, wi=
th
> > > > the maximum value corresponding to the highest number of LEDs that =
can
> > > > be connected to the controller.
> > > >=20
> > > > Fixes: e338a05e76ca ("dt-bindings: leds: Add binding for AW200xx")
> > > > Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
> > > > ---
> > > >  .../bindings/leds/awinic,aw200xx.yaml         | 64 +++++++++++++++=
++--
> > > >  1 file changed, 58 insertions(+), 6 deletions(-)
> > > >=20
> > >=20
> > > My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_ch=
eck'
> > > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > >=20
> > > yamllint warnings/errors:
> > >=20
> > > dtschema/dtc warnings/errors:
> > > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindin=
gs/leds/awinic,aw200xx.example.dtb: led-controller@3a: led@0: Unevaluated p=
roperties are not allowed ('reg' was unexpected)
> > > 	from schema $id: http://devicetree.org/schemas/leds/awinic,aw200xx.y=
aml#
> > > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindin=
gs/leds/awinic,aw200xx.example.dtb: led-controller@3a: led@1: Unevaluated p=
roperties are not allowed ('reg' was unexpected)
> > > 	from schema $id: http://devicetree.org/schemas/leds/awinic,aw200xx.y=
aml#
> > > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindin=
gs/leds/awinic,aw200xx.example.dtb: led-controller@3a: led@2: Unevaluated p=
roperties are not allowed ('reg' was unexpected)
> > > 	from schema $id: http://devicetree.org/schemas/leds/awinic,aw200xx.y=
aml#
> >=20
> > Looks like you need to drop the second part of this hunk from the patch.
> > @@ -45,17 +45,12 @@ properties:
> >      maxItems: 1
> > =20
> >  patternProperties:
> > -  "^led@[0-9a-f]$":
> > +  "^led@[0-9a-f]+$":
> >      type: object
> >      $ref: common.yaml#
> >      unevaluatedProperties: false
> > =20
> >      properties:
> > -      reg:
> > -        description:
> > -          LED number
> > -        maxItems: 1
> > -
> >        led-max-microamp:
> >          default: 9780
> >          description: |
> >=20
> > Each LED still only has one reg entry, right?
>=20
> You're right... the maxItems for 'reg' is still needed. I'll back it in
> the next version.
> But I don't understand, why my dt_binding_check run doesn't show me this
> problem... I don't specify DT_CHECKER_FLAGS, maybe this is a root cause.

I dunno! I do `make dt_binding_check W=3D1 DT_SCHEMA_FILES=3D"$filename"` to
test stuff.

Also, you can keep the tag.

--1KMrlXhM842v/S70
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZULqhgAKCRB4tDGHoIJi
0q4BAQC5YTzHsZRRP1WxLFh3vu211rMVno+IX+YO5RazUkgsMAEArUlNxt0UhTjw
Nq+4zijW6+jINWj/Jd91+bh5kDWepgk=
=fKHp
-----END PGP SIGNATURE-----

--1KMrlXhM842v/S70--

