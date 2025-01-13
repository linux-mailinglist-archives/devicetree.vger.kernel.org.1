Return-Path: <devicetree+bounces-138132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F18CA0BC59
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 16:45:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D3FF8165B41
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:44:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E61820AF63;
	Mon, 13 Jan 2025 15:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKWYjuLi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3823F1FBBFC;
	Mon, 13 Jan 2025 15:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736783074; cv=none; b=F6vhf6PgMpXZGLPpS1DuB3S1MoSIPrBbwfaphXX/e9+ZzpEKdI2VvpLyKQHzaTwmxcQXb72WI8RXNt/LS0N0ksfoPqbPhIWOCtrvSZv8RyIVamO8dRT//XQLjkUkOqsLW/ejdNmRmuQ4lT48ckM4+1+vaOG8yyFceEkyAiRSs7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736783074; c=relaxed/simple;
	bh=RJ8swjTnV3zKK6OTGxFywdGEVTxm9ACKzJyWakdOS3w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pdNZicXb5JlzcpvWF8Y5oQDXQsKXrXpR2RZc8OS3o/ARbFjAZudElDvy4pGPmfGVhcB2LDAOB1tlY6iQpZT0TLylD1IYvLWNuS/O8/EabUEEt2C1g01oivqrUj4zXWvQ82TYPbYZbg5leHXtX8IQaEToNp0Fe7/56fODGZe9D50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKWYjuLi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D072AC4CED6;
	Mon, 13 Jan 2025 15:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736783073;
	bh=RJ8swjTnV3zKK6OTGxFywdGEVTxm9ACKzJyWakdOS3w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BKWYjuLixbRnn1GsK/q6ILRVJvHdqq9eA3UJrv/Lpw0bwr3RUR0y8tP/aaHW5Az4m
	 psj55Yj+ppBeCOnQRviNgITGmkfD0HyWRybaAMb9NKnuXFyLYkJmq6tB9s53boFlCs
	 Iu0NXF475nRnkLeNSQNuqb1s/d+4ldPFXguAoI9FLmtDLKBct5/OV4Osifo2PmsjMK
	 Q7tzqMDWYMo1VyFnBz53HpXfTF83O8fAByw6o4wbais36VGgZWbqCE1fUU2liDb3hD
	 L7v4a+rzwlUfm7/Z4W25Wjko8ErO1QPOJRYEsDw14ZOzmKMINBcljbOnPlftPRFHEG
	 WPRPqvIPBoFLw==
Date: Mon, 13 Jan 2025 15:44:29 +0000
From: Mark Brown <broonie@kernel.org>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Oleksij Rempel <o.rempel@pengutronix.de>, kernel@pengutronix.de
Subject: Re: [PATCH 1/2] regulator: Add support for power budget
Message-ID: <8f5ce662-f8bc-449e-99cf-737066dabebd@sirena.org.uk>
References: <20250113-feature_regulator_pw_budget-v1-0-01e1d95c2015@bootlin.com>
 <20250113-feature_regulator_pw_budget-v1-1-01e1d95c2015@bootlin.com>
 <69eaaadf-a6b3-4a5a-af4a-5b574f9edad4@sirena.org.uk>
 <20250113154551.32e20d1c@kmaincent-XPS-13-7390>
 <b184e29e-06b0-49cf-8469-1fa0778f06e7@sirena.org.uk>
 <20250113162620.3c244302@kmaincent-XPS-13-7390>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nV2lxtOOeFV9pNzI"
Content-Disposition: inline
In-Reply-To: <20250113162620.3c244302@kmaincent-XPS-13-7390>
X-Cookie: You will outgrow your usefulness.


--nV2lxtOOeFV9pNzI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 13, 2025 at 04:26:20PM +0100, Kory Maincent wrote:
> Mark Brown <broonie@kernel.org> wrote:
> > On Mon, Jan 13, 2025 at 03:45:51PM +0100, Kory Maincent wrote:
> > > Mark Brown <broonie@kernel.org> wrote: =20

> > but the others are legit.  Still, we should be able to map between the
> > two.

> We could have something like that in regulator_request_power_budget()?

> if (rdev->desc->ops->get_voltage && rdev->desc->ops->set_current_limit) {
> 	ret =3D regulator_get_voltage(rdev);
> 	if (ret < 0)
> 		return ret;
>=20
> 	tmp_64 =3D pw_req;
> 	tmp_64 *=3D 1000000000ull;
> 	/* uA =3D mW * 1000000000 / uV */
> 	uA =3D DIV_ROUND_CLOSEST_ULL(tmp_64, uV);
> 	ret =3D regulator_set_current_limit(rdev, uA);
> 	if (ret)
> 		return ret;

Yup, indeed.  That said I am wondering if it's safer to just configure
the constraint in the hardware rather than the currently requested
limit, considering what might happen in the case where there's multiple
consumers that have only been partially updated.  If the hardware limits
or shuts down rather than warning it'll blow up badly so it might be
better to be conservative.  Unfortunately we don't distinguish in the
ops.  Possibly it should be a policy thing even but then that's better
at runtime...

--nV2lxtOOeFV9pNzI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmeFNNwACgkQJNaLcl1U
h9AQQwf+IcvhRbYMC7JpDIZFaapjIZBqyf6ZhnLJgg1FfXbMoXuFDdOyzgaCeprC
sefdN2Nt9IqaCzjasWaVmXuQd4dAqhakGeDKmW8Evf/yOV03Ws7YSuSX/mTySMy3
5qExmCi8vWA2flFqNUzvlNtoNNqyhoIteLiNurChB++jC3KYjZ3nf2ZGCKgWO6+D
GabAlm4V44Oiikk+FyyrKOZlQyMN4/C3+oFFJ5l7YrILVhH4zJOvkvMkwkRdinV4
8uYDLpD/eTqn2G4rsOteWU3T4SOs3y/8OTpnxRVJPuGhbi7Cmee/6njxa2OtNawu
n/XN4n1Dl4+qxeY5q8KooRPpOWAOJA==
=mJYA
-----END PGP SIGNATURE-----

--nV2lxtOOeFV9pNzI--

