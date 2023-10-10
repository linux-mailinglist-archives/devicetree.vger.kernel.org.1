Return-Path: <devicetree+bounces-7211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B9B7BFB22
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:20:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 979DF1C20B29
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FF4B199A3;
	Tue, 10 Oct 2023 12:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nL/xb1cn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD3719464
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:20:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E0E4C433C7;
	Tue, 10 Oct 2023 12:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696940449;
	bh=ZavnWzZOQAQ7EGflKYoEc/3BIUKgSkHsq0I49wQevOI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nL/xb1cnrv5quevPKrptkBenC3UNP7zpxz5EnnQXcGbSj0DgOGC87yf7vMywGRWSh
	 RwcIJvYjHkuk+MAiMOkyCNLEhcKZ2f2fUybzfYKCXsX1DdNlOj1qih5LWmT50OvN5A
	 nyzPwJeNKGx0TnSpWFASKgJVgBPBg3cyZ9mDMoayotCtNlRPYTweHUTR6R7l5LzGI3
	 1GqiHMGGTVjonjDmleHMaO93eEWEdCkhTyY9VPtxbhmW7kEe3pyAY7oQbV3uGw+WCz
	 ZS5fUTNAkGsGTrzJF5xgVK/Smr5fZcHc9fDUjcIdX5y7R7qe0b0y+wzD5marBPso/p
	 I1fJ/TDkI+LBw==
Date: Tue, 10 Oct 2023 13:20:45 +0100
From: Mark Brown <broonie@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1 1/3] regulator: dt-bindings: fixed-regulator: Add
 under-voltage interrupt support
Message-ID: <0024647c-cd4e-4b9f-b2bf-02143d27a852@sirena.org.uk>
References: <20231010085906.3440452-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2qKDuD5Uo7Ayf5Bi"
Content-Disposition: inline
In-Reply-To: <20231010085906.3440452-1-o.rempel@pengutronix.de>
X-Cookie: I feel partially hydrogenated!


--2qKDuD5Uo7Ayf5Bi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 10, 2023 at 10:59:04AM +0200, Oleksij Rempel wrote:
> Add under-voltage interrupt support. This can be used with simple
> regulators having no other way to communicate an under-voltage event
> except as by toggling some GPIO line.

This doesn't apply against current code, please check and resend.

--2qKDuD5Uo7Ayf5Bi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUlQZwACgkQJNaLcl1U
h9B+OAf9HVf3aL2pQBjTFArNyffVDE6INNQufQW6NAbtgLDbBJnTzqsAkKR+P49v
81rBkDM/nopWQ/w6SSFgj239wsD1Wn8EUxjbfui4fD3zBgy/CBcl8F8FgJKmwkaR
eFpSadEIA8oKGhNkAX5qDcw6eHNVmp28gtMB9UXhXxAzHyzVaV4/yMAR04wieOXn
hF3cuW8xSAc0n7n41zAHBVyRAAfQhFVHizmY/QA9MVdvKGWfFtnn9XRjx+NNIZRY
+4MCDz/KVBbvza7a+tDyox+4t0V2zDVuWNBhHGYB3usuNl6Kumn3BEZZSZfFKRwc
2lSVNeNn9oObEYzCu6kGh1fYrYaJjw==
=7uwH
-----END PGP SIGNATURE-----

--2qKDuD5Uo7Ayf5Bi--

