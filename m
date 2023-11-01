Return-Path: <devicetree+bounces-13483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FC27DE3F2
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:44:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9AE428134C
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B06411428C;
	Wed,  1 Nov 2023 15:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHjhLGZM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E2ECCA73
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C094C433C7;
	Wed,  1 Nov 2023 15:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698853448;
	bh=LOLkdWyXlUPi/tob8rtWu6/QnkwJBoUQig0d19hPCiA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kHjhLGZMNagQaCEQr1O10zzYkGsfgf6rUpdIGSRGxKXH+Vt/5ksjNTwaXmIPDnmsS
	 7uaTUYRtDweNgA+ES41AfY8FJ0bz3eN0sVL61ZAv8BauQ1t5VezztjphJVmqbb5V2g
	 jZVruTyNu4+XN+PWPCLXM9ZDV0+aiFNR/jyIx1Hfw4pAvGid4qGUgAIwueanxEvciP
	 kLc4jfhJpWcRQZ7mAzXb01z1da+hoorKTFBT9DI9SNh6/F6+XJIIY7a29usYYUiXiw
	 0+Zwi36lNjukjpEgnw4HCP42VzDTTXG9Yh8YcIhBeDJBj812vrqyxms2SPbh3Q9t3C
	 Re1Y91O4r2gJA==
Date: Wed, 1 Nov 2023 15:44:02 +0000
From: Conor Dooley <conor@kernel.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, Mehdi Djait <mehdi.djait@bootlin.com>,
	mchehab@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com,
	alexandre.belloni@bootlin.com, maxime.chevallier@bootlin.com,
	michael.riesch@wolfvision.net
Subject: Re: [PATCH v9 1/3] media: dt-bindings: media: add bindings for
 Rockchip CIF
Message-ID: <20231101-ergonomic-grafted-2edc0290c569@spud>
References: <cover.1698666612.git.mehdi.djait@bootlin.com>
 <5f83d60031320c4c7b0f0727604903f50ee49058.1698666612.git.mehdi.djait@bootlin.com>
 <20231030193236.GA1995060-robh@kernel.org>
 <ZUDOCywnEqJSuQMM@aptenodytes>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YVNaohhmDitCSSUU"
Content-Disposition: inline
In-Reply-To: <ZUDOCywnEqJSuQMM@aptenodytes>


--YVNaohhmDitCSSUU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 31, 2023 at 10:51:07AM +0100, Paul Kocialkowski wrote:
> Hi Rob,
>=20
> On Mon 30 Oct 23, 14:32, Rob Herring wrote:
> > On Mon, Oct 30, 2023 at 01:25:12PM +0100, Mehdi Djait wrote:
> > > Add a documentation for the Rockchip Camera Interface
> > > binding.
> > >=20
> > > Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
> > > ---
> > > v8=3D>v9:
> > > dropped the "Reviewed-by: Rob Herring <robh@kernel.org>"
> > > because of the following changes:
> > > - changed the compatible to rk3066-cif: rk3066 is the earliest Rockch=
ip SoC
> > >   that uses cif and it is the first model starting the RK30 lineup.
> >=20
> > Is px30 compatible with rk3066? It's not clear because you didn't add=
=20
> > rk3066 support. If not compatible, then add rk3066 when you have a user=
=2E=20
> > If it is compatible, then you should have a fallback for px30.
>=20
> Just to clarify here: we haven't checked that rk3066 uses the exact same
> programming model as px30 (so there should be no fallback compatible), bu=
t it
> is definitely the same unit (in a different version).

If you aren't sure about the programming model, are you sure about the
number of clocks, resets etc that it has? Same IP in a different SoC
could be integrated differently, right?

> Since the yaml binding document will apply to all generations of the unit,
> the name of the file should be the first generation (rk3066) instead of t=
he
> px30 which is just one of the many iterations of the unit.
>=20
> It would be both confusing and irrelevant to pick px30 just because it ha=
ppens
> to be the first generation supported in the Linux driver (and described in
> the binding).

--YVNaohhmDitCSSUU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUJyQgAKCRB4tDGHoIJi
0pV9AQDsS4rK+O+lkq42s0pL/LUf5QyGJvaIOVrOuMKXzAV0rAD+MZO7nnkc94mm
0HlriAIiiWtAbTY06WCROSeGC0sFEg8=
=M5oH
-----END PGP SIGNATURE-----

--YVNaohhmDitCSSUU--

