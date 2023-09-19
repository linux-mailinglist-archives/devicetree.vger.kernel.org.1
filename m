Return-Path: <devicetree+bounces-1415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 440967A61EF
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:01:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56E7A1C20C16
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DADDC30F8A;
	Tue, 19 Sep 2023 12:01:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41B44684
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 12:01:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9699C433C8;
	Tue, 19 Sep 2023 12:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695124863;
	bh=OpELln9bev7YvFyQlfCT6PlWHWOFke53iFI6V2uit4Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NILdUKDq95qBwAzFcvCQo/LlDkLX7WP8wjcRk5Vjp2ZunhQz5YD8xtbAWekSFOXpF
	 oxvo8q4MNu6jEOYdFyaKNJIEIlFYuyQgGcZVtlqPm0GOO/DpxSo7ybjQ4tiLBaF1un
	 RZmaVWq1oVx66YZyHsQWPHJprLaRRBWVvFKrzm8q/8IRF3X6dHtKjcitQYnNbytTjR
	 z91ws9fOrl6UDtJiISUVjTHipAgdb5mhbAHo5IlMtCGlNYp9uUb9NVb+rSvXQAyLX5
	 aUx8wfE46uvzIpeggRvNOE2tdnxFJ0SWE0s6xd/DVY7/5n8ToeKLf9XicUtBUsAgQd
	 gPdb3hNdEGhFQ==
Date: Tue, 19 Sep 2023 13:00:57 +0100
From: Mark Brown <broonie@kernel.org>
To: cy_huang@richtek.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, Allen Lin <allen_lin@richtek.com>,
	alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] ASoC: codecs: Add Richtek rtq9128audio amplifier
 support
Message-ID: <87fbcb86-66a2-48e7-91e1-a4d9a6a46114@sirena.org.uk>
References: <1695086301-10376-1-git-send-email-cy_huang@richtek.com>
 <1695086301-10376-3-git-send-email-cy_huang@richtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7Npoeoz3JwMGZ6EV"
Content-Disposition: inline
In-Reply-To: <1695086301-10376-3-git-send-email-cy_huang@richtek.com>
X-Cookie: You buttered your bread, now lie in it.


--7Npoeoz3JwMGZ6EV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 19, 2023 at 09:18:21AM +0800, cy_huang@richtek.com wrote:

> From: ChiYuan Huang <cy_huang@richtek.com>
>=20
> Add Richtek rtq9128 automotive audio amplifier.

Looks mostly good, a few minor points below:

> --- /dev/null
> +++ b/sound/soc/codecs/rtq9128.c
> @@ -0,0 +1,742 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2023 Richtek Technology Corp.

Please make the entire block a C++ comment so things look more
intentional.

> +static const struct regmap_config rtq9128_regmap_config =3D {
> +	.name =3D "rtq9128",
> +	.reg_bits =3D 8,
> +	.val_bits =3D 32,
> +	.val_format_endian =3D REGMAP_ENDIAN_BIG,
> +	.cache_type =3D REGCACHE_RBTREE,

_MAPLE is a better choice for most devices these days.

> +	SOC_ENUM("CH1 SI Select", rtq9128_select_enum[0]),
> +	SOC_ENUM("CH2 SI Select", rtq9128_select_enum[1]),
> +	SOC_ENUM("CH3 SI Select", rtq9128_select_enum[2]),
> +	SOC_ENUM("CH4 SI Select", rtq9128_select_enum[3]),
> +	SOC_ENUM("PWM FREQ Select", rtq9128_select_enum[4]),
> +	SOC_ENUM("OUT2 Phase Select", rtq9128_select_enum[5]),
> +	SOC_ENUM("OUT3 Phase Select", rtq9128_select_enum[6]),
> +	SOC_ENUM("OUT4 Phase Select", rtq9128_select_enum[7]),

Don't use an array of enums with magic numbers like this, it's hard to
read and maintain.  Use individually named variables instead.

> +	/* Turn channel state to Normal or HiZ */
> +	ret =3D snd_soc_component_write_field(comp, RTQ9128_REG_STATE_CTRL, mas=
k,
> +					    event =3D=3D SND_SOC_DAPM_POST_PMU ? 0 : 1);

The ternery operator could just be !=3D here.

--7Npoeoz3JwMGZ6EV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUJjXgACgkQJNaLcl1U
h9Cuugf/eZq0WTD3pnVLm57qMfUiKuc1Ub+ozSYQ1knH23sEnHvjGq663aFhXJVn
DzCojWZ6j9pmMWgT5wTwes5NQD9BoAki95SNcspfNDdFBkPJSCJhxeqkUZyqktio
BrybUk6DnIiMj+NOeMG4tsOw95H2ZKPgoAaRqJ4mNIgR2T6t1uXjw02AObwbBGue
S8pZFoQbVRB3wiM9GAnVE+9gynNc5tyQLaEIuziVmSnS8roIoKdDnoc8G9pAcEfS
sstV2wn2x9pndsxnLPnqeVwShzn2EZyIlSTsKJ4irxZtk1gkPi1iFE/Zu+lR6cAM
V5Axm6nOKlmfOsQ8Bnguf4BanYsP+A==
=C2S8
-----END PGP SIGNATURE-----

--7Npoeoz3JwMGZ6EV--

