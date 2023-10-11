Return-Path: <devicetree+bounces-7767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 990F57C55FC
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 15:58:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BDE591C20BAB
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94505200BD;
	Wed, 11 Oct 2023 13:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4d2nGXU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F1A1F94E
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 13:58:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3F7CC433C8;
	Wed, 11 Oct 2023 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697032698;
	bh=Sp/PMheWiBZvxLj/0wIt/cPGBYRP1fOe19OaWdOuP7o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U4d2nGXUeMqJkoePmQd/prAIA6PkiKZgJWdcv4G4rpsAtAAdLBXxqiVhgXNZpfdbn
	 fLEAqrpw2CzBWkII/486PtevTzRMR9Hdy45sMgToCVeco1fFmZVDH4Yh04wP0p5sqv
	 L3EIJ20S8X0FOhWUii3tqTVRVEdAFItfmuJy44Qk15Bgr4FA/RpkOChVxAtD2i2M+S
	 +tCy1NawSjUGnkSRBwljfQg06axD9ZIX0e9XM+v0EBGwaKn9VwEhSVDtzJyaKHL8L+
	 uBDN7V6NU5P9T262lg+dZgsdSXtNpGjlsG0jB7GKFQvPRTlOMWQngP5/SiuSlEPZCS
	 Q9oXvTTzRYLCg==
Date: Wed, 11 Oct 2023 14:58:14 +0100
From: Conor Dooley <conor@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Mark Brown <broonie@kernel.org>,
	Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 4/4] dt-bindings: audio-graph-port: ch_maps property
Message-ID: <20231011-crazily-mangy-2302e41eb743@spud>
References: <87mswp1ytu.wl-kuninori.morimoto.gx@renesas.com>
 <87h6mx1yrp.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wtIfDz3Ei+OZ6nrI"
Content-Disposition: inline
In-Reply-To: <87h6mx1yrp.wl-kuninori.morimoto.gx@renesas.com>


--wtIfDz3Ei+OZ6nrI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,


On Wed, Oct 11, 2023 at 06:03:38AM +0000, Kuninori Morimoto wrote:
> This patch adds ch_maps property to enable handling CPU:Codec =3D N:M
> connection.

I only got this one patch, so I have no context at all for this change.
Given that, and since I know almost nothing about sound stuff...
>=20
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  Documentation/devicetree/bindings/sound/audio-graph-port.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yam=
l b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> index 60b5e3fd1115..dc663af784fd 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> @@ -19,6 +19,8 @@ definitions:
>      properties:
>        mclk-fs:
>          $ref: simple-card.yaml#/definitions/mclk-fs
> +      ch_maps:

=2E..I have absolutely no idea how I would populate "ch_maps" correctly.
Please describe (in the binding) what this property actually does
& how to use it. Also, properties use -s not _s.

Thanks,
Conor.

> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> =20
>    endpoint-base:
>      allOf:
> --=20
> 2.25.1
>=20

--wtIfDz3Ei+OZ6nrI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSap9gAKCRB4tDGHoIJi
0kgCAQDPR3AY6kld6KmEfsA9NpzoveO/c0PurdLJafcM+roPBwEAuteJVaW9IFsr
mIb36oyEvwfSzfOs0ebjaPisw0JKZQ8=
=mmUS
-----END PGP SIGNATURE-----

--wtIfDz3Ei+OZ6nrI--

