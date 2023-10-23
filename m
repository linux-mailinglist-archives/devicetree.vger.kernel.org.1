Return-Path: <devicetree+bounces-11016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F077A7D3CD8
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 18:50:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D28A1C20981
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:50:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BF271A722;
	Mon, 23 Oct 2023 16:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsqdITsZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A0C18E17
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 16:50:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E7D9C433C7;
	Mon, 23 Oct 2023 16:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698079846;
	bh=onD/1VpEcq0ar0HLDecxjwDy6/MzmpL5MbWQrVCDEBg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hsqdITsZGRXZSoz8Zen3g5ujFVc6y/NTwK+YshogcOC0pp31XP5VwqgzIUk9Ckl+U
	 iYFIKIAaE+e/5265zv8+3EWhWWxt9rqP8E+ThEnp54xFWyA8HatPPdng+2jO+wfwUb
	 DOPPAwkblPfZrY3e2S4BzQ+e1u9CjhfSs6O/xcYP9WEXwlgk+XMChpcAG4jrPBBKar
	 LoJ4Y27lXUuKte8bEm8IAZ0k9ayEBRndUiUZtwF7zrBW/OTzsa42d0d+jksZgvVxUV
	 47DhkS3ubihHdT9YIzPAI6JmzGetJLfL8+kArjqwsVKtWSyBSSTd7z16C8CaaCv9h0
	 6NAkymk0pHEHw==
Date: Mon, 23 Oct 2023 17:50:42 +0100
From: Conor Dooley <conor@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Mark Brown <broonie@kernel.org>,
	Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v5 5/5] dt-bindings: audio-graph-port: add ch-map-idx
 property
Message-ID: <20231023-security-tadpole-8b4fd45a96da@spud>
References: <874jihlx44.wl-kuninori.morimoto.gx@renesas.com>
 <87wmvdkiif.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ruNs9TzVbLZc0kVS"
Content-Disposition: inline
In-Reply-To: <87wmvdkiif.wl-kuninori.morimoto.gx@renesas.com>


--ruNs9TzVbLZc0kVS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yo,

On Mon, Oct 23, 2023 at 05:36:09AM +0000, Kuninori Morimoto wrote:
> This patch adds ch-maps property to enable handling CPU:Codec =3D N:M
> connection.
>=20
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../devicetree/bindings/sound/audio-graph-port.yaml        | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yam=
l b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> index 60b5e3fd1115..47f04cdd6670 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> @@ -19,7 +19,12 @@ definitions:
>      properties:
>        mclk-fs:
>          $ref: simple-card.yaml#/definitions/mclk-fs
> -

Why have you removed the blank line here?

> +      ch-map-idx:

I would rather this be spelt out as "channel-map-index" - although I
don't know if that is the best name for the property, as it seems very
tied to a single operating systems variable names.
I'll leave it to Mark as to whether there is a less linux implementation
coupled name for this property.

> +        description: It indicates index of ch_maps array for CPU / Codec=
 if number of

=46rom a bindings perspective, "ch_maps array" is meaningless, as it is
(AFAICT) a linux driver variable name, whereas the property description
needs to describe the hardware alone.

> +          CPU(N) / Codec(M) DAIs were not same in one dai-link. ch-map-i=
dx is not needed if the
> +          numbers were 1:M or N:1 or N=3DM. see soc.h::[dai_link->ch_map=
s Image sample] and

Again, relying on header files in an operating system to explain the
property is not a runner. You need to explain how to populate this
property in an operating system independent manner.

> +          ${LINUX}/sound/soc/generic/audio-graph-card2-custom-sample.dts=
i. It is good sample.

I'd much rather you added an example to this dt-binding, rather than
pointing off to another location. A proper example will also be able to
be validated by dt-binding-check.

> +        $ref: /schemas/types.yaml#/definitions/uint32-array

Blank line here please.

Cheers,
Conor.

>    endpoint-base:
>      allOf:
>        - $ref: /schemas/graph.yaml#/$defs/endpoint-base
> --=20
> 2.25.1
>=20

--ruNs9TzVbLZc0kVS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTakYgAKCRB4tDGHoIJi
0o3/AQDhRJS/mOXWB4AdVYiKnbnsld3CgR0HRZKljGI0juJ5LgEA4P9TomOoqcoB
QcFUcKrr9v4ReivCcvCrmLVUs0TCcQ0=
=q5jM
-----END PGP SIGNATURE-----

--ruNs9TzVbLZc0kVS--

