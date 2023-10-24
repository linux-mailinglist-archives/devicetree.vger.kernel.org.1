Return-Path: <devicetree+bounces-11313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1A97D51BF
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:26:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EBCA31C20B92
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 13:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBA4429411;
	Tue, 24 Oct 2023 13:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOT/LD03"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFBBF125DE
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:26:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60007C433C8;
	Tue, 24 Oct 2023 13:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698153989;
	bh=017iYigc54wK1AgkfF311wOfS8sHvclf3x7swW1vb8g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QOT/LD03H8E9/zD2wPkCLr4kRtmpkWEiOFzJyccnWaTUKi36w6Xr+JmXUIx5wYlRk
	 oenBdo3tCgTNO6WxpESGDrSmOIAKlfpL1P7zEdrP+xq2Z494umqDGXa8RteCF/kv2n
	 z41w/QIjd8B/MzqTainPyO3IC00mVPRkSN8HobHr1/90WGey1LhXXVSWKioN1zC/iI
	 JBDBt8qtbS31HW3qokkg7+buZJ21jne1Y0Slo0ReuCqt1pB3y4lCpwQGBkNFpNzWme
	 qfIRh5xv872/GLGR5CiOKrjKQ5Ogn+k7dWOg3bkSEpSPXSc8y1+88SC0NEugJkgOTW
	 2kNfyKAxg/+gA==
Date: Tue, 24 Oct 2023 14:26:24 +0100
From: Mark Brown <broonie@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] regulator: fixed: add support for under-voltage
 IRQ
Message-ID: <471281bf-4126-496b-93ef-0807f4910ce7@sirena.org.uk>
References: <20231024130842.2483208-1-o.rempel@pengutronix.de>
 <20231024130842.2483208-3-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uF8HXoNA/AGKb/YU"
Content-Disposition: inline
In-Reply-To: <20231024130842.2483208-3-o.rempel@pengutronix.de>
X-Cookie: 1 bulls, 3 cows.


--uF8HXoNA/AGKb/YU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 03:08:42PM +0200, Oleksij Rempel wrote:

> Add interrupt support for under-voltage notification. This functionality
> can be used on systems capable to detect under-voltage state and having
> enough capacity to let the SoC do some emergency preparation.
>=20
> This change enforce default policy to shutdown system as soon as
> interrupt is triggered.

=2E..

> +static irqreturn_t reg_fixed_under_voltage_irq_handler(int irq, void *da=
ta)
> +{
> +	hw_protection_shutdown("Critical voltage drop reached",
> +			       FV_DEF_EMERG_SHUTDWN_TMO);
> +
> +	return IRQ_HANDLED;
> +}

We need a bit more policy here - the regulator could be critical to
system function but it could also be well isolated and just affecting
whatever device it's directly supplying in a way that the system can
tolerate and might even want to (eg, for something like a SD card or USB
port where end users are plugging in external hardware).

--uF8HXoNA/AGKb/YU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmU3xf8ACgkQJNaLcl1U
h9DtuAf+MSSbDFj6UK22EAUJGxqPboAwLoDDRg3zGxLEvO2ohr9XMV5N/KqVlsJI
FOq474QBednEQeLQKZEvlgP6b/xy+hSbJSl0KNwDm+ViHqiKZSJsIkktGbEqdXfS
hTalmmsiXjAF4ur04dgSRhd3i7bvIjktWH7RviF8zpYuBQvAhWcd9oO8H7L7y5Fw
v2XKE3AYSJRqE0tM2WhufObe6coA5c0ihRmHv69iyncrM6UqsEasb0vpI+hrir8x
ofqKsU8SUb5KvBfYMaqEXbp+mItuLZ25tUkQObZnAy+CLzONB4fPKroVccLpNc08
YvLpMrUBpXoCv6Oax7PPak5qYXdipw==
=TupP
-----END PGP SIGNATURE-----

--uF8HXoNA/AGKb/YU--

