Return-Path: <devicetree+bounces-139854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 58293A172A3
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 19:21:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 532717A20A0
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 18:21:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C32801EE019;
	Mon, 20 Jan 2025 18:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I42zZSyn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A595192B75;
	Mon, 20 Jan 2025 18:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737397261; cv=none; b=kK52Kpdpwibwz5nu9INDAbsKokWtvkj6GJaaGLff05CK1AVSckhh0Drt2+kb37WUYcnjPhL8rUeNkzur5TdSORdnGyYRGX4YUe135MAQZC0MV1q68qayPjeY7El4lW8RAUcqJQFwSuAQnxBpFB/CDyBoawGAUhSKukiYyvMfN6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737397261; c=relaxed/simple;
	bh=tSR0bjPajNz5uk01AJ7C15FQp5lTvDoxEJKT3Af8bIE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S5NfElbBM1ZsEFRLgIpb+MaDq76cIRJUMsZlDQjSyzgf70hnz1KPHEReNXPT/GvT5XzqcAQAmNnHbNoPwuXoMRGV1BLSa1jEL8A95lyu1+67c78h1jjpDCoPNGHTMPm2oaLSn/UrVxLtO+j+kO2S6AZjHp/TzBYbWafKs4+AeRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I42zZSyn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE847C4CEDD;
	Mon, 20 Jan 2025 18:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737397261;
	bh=tSR0bjPajNz5uk01AJ7C15FQp5lTvDoxEJKT3Af8bIE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I42zZSynzOQ5mZYn2EFwG2g9PwioHSd5uTIzAMTFKvJS7zmblxtL3DypI758wNUUj
	 aMhSI2lfXD+MU5flo9mVFIEIw1MbA4QO3OzPqCOfGK3gd0MYgypgL9GrbS2etZnWqQ
	 u8q/ENS/8smQH1X2mJdF2bIPcqCQCLCX2HEpfrI8xfbgp8TQ9p5tg4znMiFHKLA51Y
	 1a5xUo3+e/PcmPrVKQQW7LXxHLXHL4pb+FhGabCbztN7QF7P5eA7Du/s6pF/DZWjMB
	 ASmBkdlG5cT6I10FgHnAxqLbOVrrHaCeYlCmBQ2wa+rHBmzNv6O6SHFZNWTjJznBQ4
	 kOOVCFkJCFXvQ==
Date: Mon, 20 Jan 2025 18:20:56 +0000
From: Conor Dooley <conor@kernel.org>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Oleksij Rempel <o.rempel@pengutronix.de>, kernel@pengutronix.de
Subject: Re: [PATCH v2 2/2] regulator: dt-bindings: Add
 regulator-power-budget-milliwatt property
Message-ID: <20250120-gents-partner-0fc6c66ac9fd@spud>
References: <20250115-feature_regulator_pw_budget-v2-0-0a44b949e6bc@bootlin.com>
 <20250115-feature_regulator_pw_budget-v2-2-0a44b949e6bc@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PPgVnGEKZgaBk2qc"
Content-Disposition: inline
In-Reply-To: <20250115-feature_regulator_pw_budget-v2-2-0a44b949e6bc@bootlin.com>


--PPgVnGEKZgaBk2qc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 15, 2025 at 03:41:58PM +0100, Kory Maincent wrote:
> Introduce a new property to describe the power budget of the regulator.
> This property will allow power management support for regulator consumers
> like PSE controllers, enabling them to make decisions based on the
> available power capacity.
>=20
> Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--PPgVnGEKZgaBk2qc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ46UCAAKCRB4tDGHoIJi
0pXxAQDWS2UPtHU0jv5wt5yqIfcCLZ+mOnAHS7Ulzo7DOEq1/AEAsCNhtlWy3GY4
4dKcD2g3kt0u5xvhqFjUKAlO2mEthA8=
=I3Sd
-----END PGP SIGNATURE-----

--PPgVnGEKZgaBk2qc--

