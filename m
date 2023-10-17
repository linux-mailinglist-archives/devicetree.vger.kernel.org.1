Return-Path: <devicetree+bounces-9187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 144217CC023
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 12:07:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B66C2B20F48
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 10:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 771034122F;
	Tue, 17 Oct 2023 10:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4WmtQmU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C32C3FB24
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 10:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2D62C433C7;
	Tue, 17 Oct 2023 10:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697537228;
	bh=unab/tp++OH6BDxky/RYyhrmconOIGNcMkY+KpclhEY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E4WmtQmUWFJIgYknJY0NRJKhKxhjNR8lR+Ak5diE4ogCPDkdpGj3eh6qsbEOC2MII
	 LKSeNGWP/ZSeIPi0cJHTEXW8v2kgVknhw6YwSQWE9zz9MsB30eMQORkNGHgELifT3p
	 qSxJhO7MiB7bdIOGMRLcmlbbyYReKT2ZMigNd42x5G41Xe9x5xetsIdjHeWYAG3Y5O
	 Mz8bq5sAw2qFLCw/9t/xBdrbB/8BiYO+Yx3Z/bmQM/HjsB3HGRraR3N9QiPau7Qa7Y
	 wnR/riMcnV8VZEht3FXTvyAfBJ1ARmycyfls0hxzbzYyTG4DsDMGULpBhCeb/biHIX
	 Dq1rEcWrn7/pw==
Date: Tue, 17 Oct 2023 11:07:04 +0100
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
Subject: Re: [PATCH v4 4/4] dt-bindings: audio-graph-port: add ch-maps
 property
Message-ID: <20231017-mutation-perfume-cae0484e8e32@spud>
References: <87zg0jwdnz.wl-kuninori.morimoto.gx@renesas.com>
 <87ttqrwdmw.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d2oUw/7aLluqa6Wn"
Content-Disposition: inline
In-Reply-To: <87ttqrwdmw.wl-kuninori.morimoto.gx@renesas.com>


--d2oUw/7aLluqa6Wn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Mon, Oct 16, 2023 at 01:37:59AM +0000, Kuninori Morimoto wrote:
> This patch adds ch-maps property to enable handling CPU:Codec =3D N:M
> connection.

Please avoid sending new versions before the discussion on existing
patches have been resolved. I replied on the v1 again just a few moments
ago.

Cheers,
Conor.

>=20
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../devicetree/bindings/sound/audio-graph-port.yaml       | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yam=
l b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> index 60b5e3fd1115..1f7005356efb 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> @@ -19,7 +19,13 @@ definitions:
>      properties:
>        mclk-fs:
>          $ref: simple-card.yaml#/definitions/mclk-fs
> -
> +      ch-maps:
> +        description: It indicates how CPU / Codec DAIs are related if nu=
mber of CPU(N) / Codec(M)
> +          DAIs were not same in one dai-link. ch-maps is not needed if t=
he numbers were 1:M or N:1
> +          or N=3DM. If N <=3D M case, ch-maps indicates connection from =
CPU, if N > M case,ch-maps
> +          indicates connection from Codec.
> +          ${LINUX}/sound/soc/generic/audio-graph-card2-custom-sample.dts=
i is good sample.
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
>    endpoint-base:
>      allOf:
>        - $ref: /schemas/graph.yaml#/$defs/endpoint-base
> --=20
> 2.25.1
>=20

--d2oUw/7aLluqa6Wn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZS5cyAAKCRB4tDGHoIJi
0mcrAP9kKyPPw1LoXQK+C30x0UAwOmDjRTP06e8CkqKdOYtGNgEA87yUFJKcjFFq
hsjgzXdGG7rVO3pvSyfPPeqmbw2x/gY=
=N/af
-----END PGP SIGNATURE-----

--d2oUw/7aLluqa6Wn--

