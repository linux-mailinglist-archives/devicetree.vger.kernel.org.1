Return-Path: <devicetree+bounces-9221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D677CC1BE
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 13:29:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01444B2101D
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 11:29:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E5F541AA7;
	Tue, 17 Oct 2023 11:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0Cmq2C+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C3441A93
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 11:29:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8E0DC433C7;
	Tue, 17 Oct 2023 11:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697542156;
	bh=LP4csdsL40nCe4OI51VZDntZqUrXlSQ7yWdsMFKaLak=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M0Cmq2C+o4Ccul/EWW2mklmE9X/PrY0lNRXHgKvtY3w4oCgdpp8BFoffq17cNW2q4
	 /YosBj6Mku4+8YMfTAcfVGVPyGRkEhEaZGfnFdxmyZic8NU06T8oPaOEYAs4/O3P36
	 uQol5micnCXAOrPBNDNbscb1aN1kKtHuv1AiZqddeTk/GJECc6L0zop6tMWh4pofAq
	 0ossgeXpAJ/DPcA1zWayBKkKTk6TPIW1CMr/Osx6D2oyo8q2cK+6+L/LXv00xMt+SJ
	 Tfg0AoN6ua6akDRHgjClxdF0NNTFjeo3ejUbWV4G7ewHDoKyIFEQn6WkvcmKJMZtPF
	 jTR0SUq5q/qDA==
Date: Tue, 17 Oct 2023 12:29:11 +0100
From: Mark Brown <broonie@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Beer <daniel.beer@igorinstitute.com>,
	alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: tas5805m: Disallow undefined
 properties
Message-ID: <0498f609-357b-4242-b3c1-d53967f1faa8@sirena.org.uk>
References: <20231016155547.2973853-1-robh@kernel.org>
 <20231017-blinking-barricade-9e068a5fc602@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b2wBVIPRJdO8J3Zq"
Content-Disposition: inline
In-Reply-To: <20231017-blinking-barricade-9e068a5fc602@spud>
X-Cookie: Santa Claus is watching!


--b2wBVIPRJdO8J3Zq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 17, 2023 at 11:50:42AM +0100, Conor Dooley wrote:
> On Mon, Oct 16, 2023 at 10:55:47AM -0500, Rob Herring wrote:
> > Device specific bindings should not allow undefined properties. This is
> > accomplished in json-schema with 'additionalProperties: false'.
> >=20
> > Examples should be last in the schema, so move additionalProperties up
> > while we're here.
> >=20
> > Signed-off-by: Rob Herring <robh@kernel.org>

> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Rob, I don't have the original patch for this.  It looks like whatever
email troubles you were having are persisting - if there's anything else
you've sent me I'm just unawaere of it.=20

--b2wBVIPRJdO8J3Zq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUucAYACgkQJNaLcl1U
h9A31Af/bVFGDwltLpFkDhMtgvv5mBtHMksfRt66A8yyK173lHwQv671KtfOouGV
Me5R/4H5X7taXZ5i29SzDGlKwvKEo05OoXVWCD1WXgpSBXQQO/m+5Lpw3v39mzj+
VUmhmFhXnVPZypXscP7Mf7e+J2rLNA4HcTphoqF2Ohprk3otRwQ+7GH7dUsjBB8j
h2psO+rfr0IxAK90iFfgLp/3pJyIfubRHgHiNMz/AeiPiJF4NZLPPxz2U+hpgdh+
kcQ95YVWFT3c9RPxPXUrcqolaBbXkNxCm3ErwHEWVA024Z/Ldx1YmO8jwgtmmBA3
n9W3o73nz1xspcS/4beeKkcZ7fH3jA==
=vvnq
-----END PGP SIGNATURE-----

--b2wBVIPRJdO8J3Zq--

