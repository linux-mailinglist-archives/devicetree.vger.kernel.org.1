Return-Path: <devicetree+bounces-11825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FDB7D6C26
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:41:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5260C281AEB
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B05381CA94;
	Wed, 25 Oct 2023 12:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tw7jDvWz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95EB32D604
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:41:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EC46C433C8;
	Wed, 25 Oct 2023 12:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698237710;
	bh=5+h7ezmQDA0zbyiqtBxqtLVD/G6sYN3hQR1nL+mJvYo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tw7jDvWzStRa9vIMes2r/55HPXDJXg/3P5xPf3CoTCO1SkbRZt7yp/XbIBacaacSp
	 ZpGyfgR12LjeIXhsOC2SkhSrbXdDrRN8uP3CtFu/Mw57WXiqFdgrM37IY6m8aX1eSc
	 ionkcn2TG758Fu2PP7sMY0wXM5odDKFOEwL09sSf7eAh5jqJinIGSR9geJerWYyCml
	 0fTC7m+gSpvUReiLGGTVxDOsaswjuddzy1EEia4qeIsl5JJReEYf3mzBwW0QS7N3VS
	 nIXz5HgR6+SgYZwPHeHOvjAswR24Wjku13u0dxu4J3c+eldLJyRrgK6nHnk/OvuSUj
	 EtYcEpTfSyQ0A==
Date: Wed, 25 Oct 2023 13:41:45 +0100
From: Mark Brown <broonie@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/7] regulator: dt-bindings: whitelist
 system-critical-regulator property for fixed-regulator
Message-ID: <e2ae68a5-b6fc-4b0f-b198-e635435c33ce@sirena.org.uk>
References: <20231025084614.3092295-1-o.rempel@pengutronix.de>
 <20231025084614.3092295-5-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="snUpAOfYIdGu4zP7"
Content-Disposition: inline
In-Reply-To: <20231025084614.3092295-5-o.rempel@pengutronix.de>
X-Cookie: There's no time like the pleasant.


--snUpAOfYIdGu4zP7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 25, 2023 at 10:46:11AM +0200, Oleksij Rempel wrote:
> Allow fixed-regulator to be marked as system-critical by whitelisting
> the 'system-critical-regulator' property.
>=20
> This property indicating that the fixed-regulator is critical to system
> stability or functionality, aligning with the recent changes in the
> regulator core handling of under-voltage events for system-critical
> regulators.

Why would this need to be something we explicitly enable for a given
regulator?  Surely this is a property of the creativity of hardware
engineers rather than the regulator itself.

Also please avoid the use of the outdated terms whitelist and blacklist,
pass and block lists are often a good alternative.

--snUpAOfYIdGu4zP7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmU5DQgACgkQJNaLcl1U
h9AdYggAhZQKEysbWfpHAlugx8AivAUbYgLyylR9UaQWeuqprdjhZheLHYMK8zsB
OY6KCpgqc4CETsiBQNtJxKDKrckLqPNJPtEbz12ntgjpTRZEMO92A31iYsfR2xAe
W7R0VmxFeUOJnzQ0fXMgnvSkS9aRF8HfuRIEH+hh8nYr5+Z9+LHPRNlm7qMk8KH0
GuW1jn3o9dQ1TgZy2RHDSSTrUZoGiDrmGyyqjWeburUFG63NHFAhm/p69WpNWf4N
VjbQilSJYiDeNq9k+7bBy+/Bk63oBZAowt7vAsJGoPxqw+G2vJhP1GneqAQD1zVh
34arlTX8Bt081igWxEk0mKg6b2bacw==
=zJKI
-----END PGP SIGNATURE-----

--snUpAOfYIdGu4zP7--

