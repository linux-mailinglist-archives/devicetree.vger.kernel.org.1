Return-Path: <devicetree+bounces-8891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8447CA74C
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 13:58:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AFB441C20A43
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 11:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9CEA266AA;
	Mon, 16 Oct 2023 11:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y31U7l5i"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92862629D
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 11:58:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C462C433C7;
	Mon, 16 Oct 2023 11:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697457509;
	bh=EESOofAGoz0NJ85srEifh5w8COAeKPVtpl6yq3ANTCE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y31U7l5iU6fQUg3L0jXo9GwzTkJDEY+e2mdZcP5NqGiN1lrL/pVj6A2L/uNPuv0UO
	 zbTU40Kt3ftbIJLn7L2xbKjOcnMj0k0p+nkZQhwnMSIWv7V2V2NK/zcO8gJt4j3daD
	 wbpxUiMFsnD/AcQD4gszG99sEeXVRlzgE609wIHz3vo16LwRx55KJhS4gS4oJ+Mi4k
	 2el9EK0gyKARui7sUQXrl60X10sfAxFR83haLmSbZOeksFMbDQVtd3Cx/q/mVmTQV7
	 7G0u95GkvqOYaeC6oUCZCy+81zFMPF7n6i5rX82N5FRLr1TiOaPjW04mqEB3XevyIE
	 JInxUqv450MXg==
Date: Mon, 16 Oct 2023 12:58:21 +0100
From: Mark Brown <broonie@kernel.org>
To: wangweidong.a@awinic.com
Cc: 13916275206@139.com, alsa-devel@alsa-project.org, arnd@arndb.de,
	ckeepax@opensource.cirrus.com, colin.i.king@gmail.com,
	conor+dt@kernel.org, dan.carpenter@linaro.org,
	devicetree@vger.kernel.org, fido_max@inbox.ru,
	herve.codina@bootlin.com, krzysztof.kozlowski+dt@linaro.org,
	lgirdwood@gmail.com, linus.walleij@linaro.org,
	linux-kernel@vger.kernel.org, liweilei@awinic.com, perex@perex.cz,
	rf@opensource.cirrus.com, robh+dt@kernel.org, ryans.lee@analog.com,
	sebastian.reichel@collabora.com, shumingf@realtek.com,
	tiwai@suse.com, trix@redhat.com, yijiangtao@awinic.com
Subject: Re: [PATCH V1 3/3] ASoC: codecs: Add aw88399 amplifier driver
Message-ID: <38cab9a5-4fdf-4b50-b4e0-6a63beacab11@sirena.org.uk>
References: <ZSlP8GvTAOe35peC@finisterre.sirena.org.uk>
 <20231016081017.46963-1-wangweidong.a@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="I2KqOEZVLNH8WqF7"
Content-Disposition: inline
In-Reply-To: <20231016081017.46963-1-wangweidong.a@awinic.com>
X-Cookie: If you're happy, you're successful.


--I2KqOEZVLNH8WqF7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 16, 2023 at 04:10:17PM +0800, wangweidong.a@awinic.com wrote:
> On Fri, Oct 13, 2023 at 03:10:56 PM +0100, broonie@kernel.org wrote:

> >> +static int aw_dev_dsp_update_container(struct aw_device *aw_dev,
> >> +			unsigned char *data, unsigned int len, unsigned short base)
> >> +{
> >> +	int i, ret;
> >> +
> >> +#ifdef AW88399_DSP_I2C_WRITES
> >> +	u32 tmp_len;

> > This looks like debug code which can hopefully be removed in favour of
> > the regmap implementation?

> Thank you very much, but this is not a debugging statement, This is designed
> to be compatible with different platforms that may not support continuous
> writing.

If this is needed for platform comaptibility then it needs to be
something selected at runtime, ideally regmap would be able to hide
whatever's going on but perhaps the register address loading complicates
things there.

--I2KqOEZVLNH8WqF7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUtJVwACgkQJNaLcl1U
h9DeUAf9GxJLIrDPtoBWNfziL7xDN8MMHR4vboUOGd/9/eMsg6et0MCSu+5QzwaZ
oTvhMCnN1w5fQjm182eLWMKbnZ/NeuwVfsgyqaGEuP8JW/2+Tct7ag8LEZadlpcz
fnPjeDA5YMMTeVeNplkojJmFfaJjLuggt7o6xwKp36/ZV6AJlhj29y+LK+snV8eL
77jQR75a+ZU2OYdy8GAUaN8HS4cv8ln6U0YcGxlNjrF+VLOqfy7d2abbdBYPRkis
arUpxgW+qXYLpR53CyZGQnbWGXMpWyEZBiIGWNXuxq+IFstrOTyIUp/K4FWJ5t2A
YBUyyUaSuiFQNQGYb2V3IaV2khuftg==
=tkTS
-----END PGP SIGNATURE-----

--I2KqOEZVLNH8WqF7--

