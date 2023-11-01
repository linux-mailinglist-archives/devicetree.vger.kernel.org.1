Return-Path: <devicetree+bounces-13493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8855D7DE4E6
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 17:56:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E238CB20A78
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9640114010;
	Wed,  1 Nov 2023 16:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="oFnlwh2C"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B2CC8C10
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 16:56:27 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66CA610C;
	Wed,  1 Nov 2023 09:56:22 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 134DE1BF208;
	Wed,  1 Nov 2023 16:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1698857780;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=o+TYf8tLlwtnhvu7jfapP0ZzLYtbHs0SJdPBDg+r/PY=;
	b=oFnlwh2CiPf0XJwGwtizVlJt+f4ewsRqVObY18ZDMwHfGQ9WXQXtbncCRXw8PJDpLM/UCD
	8HuCtdGaQ2B+BU6b5VGFwO3xnba9GDIcbhK9uFjV6ztioZyU5oVjOH2xNFVI4Ya5rC11p8
	mMUfVzWmDHSSARpSGl5p5LAvRuGsxVoXfHRt0SqpfRiGaR0jvkuzKSDuQZnKyds7vVXKGN
	Nmu7Kj4UTfMZmLoHr8uNSo2Gmbmapu/VbuCmY6D5nQrrLI5Vx2oVQyFqujjOSRHs70bndz
	MKwxhiUYv6DdmMeiTkWKYkSW47sImR/opneDU6x80i9JXr8eC/iIHL1FMq/O7g==
Date: Wed, 1 Nov 2023 17:56:19 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Mehdi Djait <mehdi.djait@bootlin.com>,
	mchehab@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com,
	alexandre.belloni@bootlin.com, maxime.chevallier@bootlin.com,
	michael.riesch@wolfvision.net
Subject: Re: [PATCH v9 1/3] media: dt-bindings: media: add bindings for
 Rockchip CIF
Message-ID: <ZUKDM-_Re4qFHH9T@aptenodytes>
References: <cover.1698666612.git.mehdi.djait@bootlin.com>
 <5f83d60031320c4c7b0f0727604903f50ee49058.1698666612.git.mehdi.djait@bootlin.com>
 <20231030193236.GA1995060-robh@kernel.org>
 <ZUDOCywnEqJSuQMM@aptenodytes>
 <20231101-ergonomic-grafted-2edc0290c569@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tGS4dK5LvN/190zE"
Content-Disposition: inline
In-Reply-To: <20231101-ergonomic-grafted-2edc0290c569@spud>
X-GND-Sasl: paul.kocialkowski@bootlin.com


--tGS4dK5LvN/190zE
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Conor,

On Wed 01 Nov 23, 15:44, Conor Dooley wrote:
> On Tue, Oct 31, 2023 at 10:51:07AM +0100, Paul Kocialkowski wrote:
> > Hi Rob,
> >=20
> > On Mon 30 Oct 23, 14:32, Rob Herring wrote:
> > > On Mon, Oct 30, 2023 at 01:25:12PM +0100, Mehdi Djait wrote:
> > > > Add a documentation for the Rockchip Camera Interface
> > > > binding.
> > > >=20
> > > > Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
> > > > ---
> > > > v8=3D>v9:
> > > > dropped the "Reviewed-by: Rob Herring <robh@kernel.org>"
> > > > because of the following changes:
> > > > - changed the compatible to rk3066-cif: rk3066 is the earliest Rock=
chip SoC
> > > >   that uses cif and it is the first model starting the RK30 lineup.
> > >=20
> > > Is px30 compatible with rk3066? It's not clear because you didn't add=
=20
> > > rk3066 support. If not compatible, then add rk3066 when you have a us=
er.=20
> > > If it is compatible, then you should have a fallback for px30.
> >=20
> > Just to clarify here: we haven't checked that rk3066 uses the exact same
> > programming model as px30 (so there should be no fallback compatible), =
but it
> > is definitely the same unit (in a different version).
>=20
> If you aren't sure about the programming model, are you sure about the
> number of clocks, resets etc that it has? Same IP in a different SoC
> could be integrated differently, right?

Yes absolutely there might be differences in these areas. But we can always=
 add
conditionals in the binding to take care of different cases later.

My main concern is to avoid giving px30 too much importance just because it
happens to be the first platform supported by the Linux driver.

Cheers,

Paul

> > Since the yaml binding document will apply to all generations of the un=
it,
> > the name of the file should be the first generation (rk3066) instead of=
 the
> > px30 which is just one of the many iterations of the unit.
> >=20
> > It would be both confusing and irrelevant to pick px30 just because it =
happens
> > to be the first generation supported in the Linux driver (and described=
 in
> > the binding).



--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--tGS4dK5LvN/190zE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmVCgzMACgkQ3cLmz3+f
v9H3FAf/WjMfxacq7f9Su3oJCd059UA3G2OfjKLNkOogkv52/MsbxkKNVA3zW4qF
na2nBCQiCA46fB2WBNJ0rmCz2acRUBYDxWho//H6GfLrEWGUrJ/fnrzCpWewrSIb
fa+b4v9ayogxqAfhBtK50vCRkdui5gfslh5m9z8snBCBZvvXxRXSnP1DmWz+DAC/
YBG/m/py2WEbfz9yusO3KAkEsR0UuBwD2299yVe8SF750m8q5bzTyE0st5CJUuAw
0yNYo2UGIHayTHZHPOp0Ww35IFIalvqbhDHte6jKZD3VFVQvg3GtF+sbM5rWmO/S
a3RT0uPustfvM8mDIpNQemjMz7DSaA==
=qVos
-----END PGP SIGNATURE-----

--tGS4dK5LvN/190zE--

