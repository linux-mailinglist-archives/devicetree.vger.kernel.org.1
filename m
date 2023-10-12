Return-Path: <devicetree+bounces-8128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1FC7C6BFE
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 13:14:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3DD31C20C94
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE9F822F17;
	Thu, 12 Oct 2023 11:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mi+IKRHU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99E3ADF71
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 11:14:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 435CAC433C8;
	Thu, 12 Oct 2023 11:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697109243;
	bh=sIXVGxC92IW43eCqb+Te4zLMtmp1Zaw6/BPv7tZn5dQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mi+IKRHUxEP41a8bN16IMH2f7Xabr6BsAfA1Cg4FfDHWKam87nQOHUbzsrH7Zm0HJ
	 U9ARbb1Zn3ndMt8dGap4C5tu4+gYMwTGnSF3YaiWAEg80qYrzIEbvZAacRp2NUm7kZ
	 CoDjj+a/WRwUYxe2+FscRQ6GzgUHAy1gf5P9eKHOik0RqYQog3tBoE9FdYbiY/5xoS
	 01bsBrVNwF3m2tjrxvlqqNu/Cy7pU4ttBA6ghyfUqQB+MXt658T3aCXHaRya+5tIHT
	 t5cTl8s0MIo7KBydn5cP87PCWXtg7M6K9390Xkhb63MdP5OT8HTX8VyrPRgD6M83Fm
	 vhx2Vd8hF4HtA==
Date: Thu, 12 Oct 2023 12:13:57 +0100
From: Mark Brown <broonie@kernel.org>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Naresh Solanki <naresh.solanki@9elements.com>,
	zev@bewilderbeest.net, Sebastian Reichel <sre@kernel.org>,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v1 3/3] regulator: fixed: forward under-voltage events
Message-ID: <77de152a-c637-40a2-846f-e79f52ddbee1@sirena.org.uk>
References: <20231010085906.3440452-1-o.rempel@pengutronix.de>
 <20231010085906.3440452-3-o.rempel@pengutronix.de>
 <5e51792a-cc93-4364-a51b-c2b116d89369@sirena.org.uk>
 <20231010125531.GA3268051@pengutronix.de>
 <c2ee404d-d07f-42c6-b5ba-41659773e8eb@sirena.org.uk>
 <20231011075931.GA3305420@pengutronix.de>
 <2d14fd22-c37b-4c15-a2ea-a2fd2c201adb@sirena.org.uk>
 <ZSebeJKa0sEzNzP4@dc78bmyyyyyyyyyyyyydt-3.rev.dnainternet.fi>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yPgIy+98SeAibYLd"
Content-Disposition: inline
In-Reply-To: <ZSebeJKa0sEzNzP4@dc78bmyyyyyyyyyyyyydt-3.rev.dnainternet.fi>
X-Cookie: I just had a NOSE JOB!!


--yPgIy+98SeAibYLd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 12, 2023 at 10:08:40AM +0300, Matti Vaittinen wrote:

> In my eyes the device-tree is correct place for this information
> because whether an "anomaly" in regulator output compromises the system
> is a property of hardware.

Yes, it's mainly the handling that has a policy element.

--yPgIy+98SeAibYLd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUn1PQACgkQJNaLcl1U
h9CZowf/fAd9uF9zNJtl9V+wuJJIrq5Qh/d0B1IVIv+A5dDA1BCZop8AeeMb9yWM
bahyii/LZyHKqo8x9mY57z4l7+Ucjx9KBDppvIg0E2ZwD8NpiXJ24OCC35GScUZ9
ymQCZp7SuCzui/+6O5E9Om3PeZ54yZ/tZ1RiGIKUkWk/HVAKNn5UD2mR7qeI77cF
ulE72VpQeg1SIhKkNEM1ZbElyuv2nCp/hCnYPbN0X4HDv8C/mO/+IGoLln0Trg8A
qq3nX5IeUKa9cg0zrw0SlQXIKydsO6cqW48YM1Q9THc2xqnXceA0u2rQes6fz4fh
yMP2qT0khgiWyqXr8Pl7W8LFW4w84w==
=9kBd
-----END PGP SIGNATURE-----

--yPgIy+98SeAibYLd--

