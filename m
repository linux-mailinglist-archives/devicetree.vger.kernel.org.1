Return-Path: <devicetree+bounces-34608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DAA83A4E6
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:08:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ECC38B22C35
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2FBF17BC2;
	Wed, 24 Jan 2024 09:08:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E71217BBA
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 09:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706087317; cv=none; b=h5x581HvzQxHz0NzXdq/OkkZ139Jrmg0+3MuZuTjh4W0tMbO/CPU+rHj1GekhVHqJLlbrtatUw+lvwvL/FbumFfz8jQhDnxxqAUWnwv9S45fEjB7VNlQUShTI3Gxvp9LO96I0ZaHp52nVpVjlLhjmYSzbjHn7E62r0tIbg4h6B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706087317; c=relaxed/simple;
	bh=6/KlTA0J6uFnfl5c8rIDF12UeY21Z4ml6g/NHKbxJj0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=emLwc+LgSEqrjLEBdph63d29gDS7bQkW4fha71EBsaeuN9PrBtNxGH11pnAPtmN/JsKVhCVgMt3c8+R1zPp2ezmMmieTYdWKJ7xbXC2Is+94DONmnXl7wBlwnvwLNFodSzhICBnNiUePjxHzCyO4bWTzuoo3J3Q0XZCZHFsot4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rSZFF-0001ed-9Q; Wed, 24 Jan 2024 10:08:29 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rSZFE-0021Y0-I6; Wed, 24 Jan 2024 10:08:28 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rSZFE-0070pg-1U;
	Wed, 24 Jan 2024 10:08:28 +0100
Date: Wed, 24 Jan 2024 10:08:28 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Thierry Reding <thierry.reding@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org, JunYi Zhao <junyi.zhao@amlogic.com>
Subject: Re: [PATCH v4 3/6] pwm: meson: generalize 4 inputs clock on meson8
 pwm type
Message-ID: <4kcbh4dezgpic2dpgdi2swtx2puqiq74w2tungmxipf4nznpn7@u4g4f3cimps4>
References: <20231222111658.832167-1-jbrunet@baylibre.com>
 <20231222111658.832167-4-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6rb4fnput74ewssa"
Content-Disposition: inline
In-Reply-To: <20231222111658.832167-4-jbrunet@baylibre.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--6rb4fnput74ewssa
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Jerome,

On Fri, Dec 22, 2023 at 12:16:51PM +0100, Jerome Brunet wrote:
> Meson8 pwm type always has 4 input clocks. Some inputs may be grounded,
> like in the AO domain of some SoCs.
>=20
> Drop the parent number parameter and make this is constant.
> This is also done to make addition of generic meson8 compatible easier.
>=20
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
>  drivers/pwm/pwm-meson.c | 19 ++++++-------------
>  1 file changed, 6 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
> index 2971bbf3b5e7..ef50c337f444 100644
> --- a/drivers/pwm/pwm-meson.c
> +++ b/drivers/pwm/pwm-meson.c
> @@ -60,7 +60,7 @@
>  #define MISC_A_EN		BIT(0)
> =20
>  #define MESON_NUM_PWMS		2
> -#define MESON_MAX_MUX_PARENTS	4
> +#define MESON_NUM_MUX_PARENTS	4
> =20
>  static struct meson_pwm_channel_data {
>  	u8		reg_offset;
> @@ -98,7 +98,6 @@ struct meson_pwm_channel {
> =20
>  struct meson_pwm_data {
>  	const char * const *parent_names;

I suggest to make this

	const char *parent_names[MESON_NUM_MUX_PARENTS];

to make it more explicit that really four entries are needed here. This
also makes is unnecessary to add the additional NULL entries to
pwm_gxbb_ao_parent_names and the other arrays.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--6rb4fnput74ewssa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmWw04sACgkQj4D7WH0S
/k4MBwf/RJ2RnPMTRGHy4+MlxDEmIhRVYEzgGL1RRFV939kzYtusENpZpGIQ2mXu
E60HnA+QkB/q4MoAFSLk81DulYhW3fIn7AURwQ19rdCtgn3d+7zGnA+G+JiPmCXx
I0jHMlpak+0iexEcTDeahUHixs0DrxD1/kG9eTtipV17OZuBlTGyw8QDqcHAKFow
0czC72kNUxlOp/W77jS0V367u/onArkMSIOh1N4JZ+yNX0ZuOugc18RD0wU5eCo3
FASi7J+U/zZaBAFXeS2BXMrq1bLMjBmrc6dDGoNusqCD/YGfTqxQKmptwFcHWvQy
huYzkvDx8jvj6TmgK+i+/+PjgTV9ow==
=0D4C
-----END PGP SIGNATURE-----

--6rb4fnput74ewssa--

