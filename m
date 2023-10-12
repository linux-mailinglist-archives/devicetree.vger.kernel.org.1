Return-Path: <devicetree+bounces-8007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFF97C66AB
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:53:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18E3C1C209DC
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:53:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 412CC1170A;
	Thu, 12 Oct 2023 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7mpTQpV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250CE101C1
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:53:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84F5CC433C8;
	Thu, 12 Oct 2023 07:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697097231;
	bh=n3VSQiFq6Q28AHURyKUO5YxPBRJMKLHPwmkblx/NFUo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S7mpTQpV5tZexzkiL4KFqQZTLpKcgmhiU2rTNTl1Xpyh3lOFTMYLxjgjC+UtssTHx
	 c9OZ7joHTieHBjxE6lannJFafW7W67ka+BV1w4lIAEh9zx1HGUSfUzNKginVHgTrX/
	 njsJcCs4AAtm+v7X0W/AZJf+tj7zQcAQskT4SQYQll+3WTMEWOWwAMgFlC0FVTPZJa
	 2fZm1axV6SOAz8EF+xVuIpSBe2FBsLYQXtjzT9D7Adb5eC0hsXa2XItzYr58bTqrxB
	 61xxUZwuUJ+Xgqmhxo+stiQZMq6l/JVRWW8W9n77ngZ87QmJS1+kqmFDy7+TBmJvl0
	 mRl+ho5etvyvg==
Date: Thu, 12 Oct 2023 08:53:47 +0100
From: Conor Dooley <conor@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Mark Brown <broonie@kernel.org>,
	Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/4] dt-bindings: audio-graph-port: add ch-maps
 property
Message-ID: <20231012-storage-directory-548905001d10@spud>
References: <877cnsy6bl.wl-kuninori.morimoto.gx@renesas.com>
 <871qe0y6aq.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9egIwhgDDkTdU46k"
Content-Disposition: inline
In-Reply-To: <871qe0y6aq.wl-kuninori.morimoto.gx@renesas.com>


--9egIwhgDDkTdU46k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Thu, Oct 12, 2023 at 01:32:13AM +0000, Kuninori Morimoto wrote:
> This patch adds ch-maps property to enable handling CPU:Codec =3D N:M
> connection.
>=20
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  Documentation/devicetree/bindings/sound/audio-graph-port.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yam=
l b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> index 60b5e3fd1115..3c4b331e8498 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> @@ -19,6 +19,8 @@ definitions:
>      properties:
>        mclk-fs:
>          $ref: simple-card.yaml#/definitions/mclk-fs
> +      ch-maps:
> +        $ref: /schemas/types.yaml#/definitions/uint32-array

Most of what I said on the last version applies here too. Only the
s/_/-/ was done. Is there a reason you ignored those comments?

Thanks,
Conor.

> =20
>    endpoint-base:
>      allOf:
> --=20
> 2.25.1
>

--9egIwhgDDkTdU46k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSemCwAKCRB4tDGHoIJi
0lemAQCcSizIzimECsychf+NhlIoiAvbXqoY2FcFd3aIDzFM9QD+PU/TLsXytIo0
ricXxSdVEd+6plSq1c3d529uEXYLuAA=
=W9mk
-----END PGP SIGNATURE-----

--9egIwhgDDkTdU46k--

