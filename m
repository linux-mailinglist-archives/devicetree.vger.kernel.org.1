Return-Path: <devicetree+bounces-3436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F927AED7B
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:59:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D6104281800
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3559F28DA8;
	Tue, 26 Sep 2023 12:59:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22678286A9;
	Tue, 26 Sep 2023 12:59:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E522BC433CA;
	Tue, 26 Sep 2023 12:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695733178;
	bh=TLCs3n5dqhYri+xLFFn0lVxrMbmnBABrauc91osBr80=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tDgZ1AXh5tSnQkMwmmaCnqn5Rvz2rENT+ec1NjUFuAaNbmgX+GyHvU4VA6P3/7e2e
	 mzgX3vFxRtOk+V9Zi2Bztld21I76DY2BwipbDIAGB1Y8VdRmW8hdDzoS+k/x3F8Hct
	 niNCytjBZUrooSbnoJ0hwfQ1JjdlTKNXI0QV97f+USnImIKJgPwao+LRHMEDmcRoKv
	 HzknT1JKeDkymq3M1ELizbz7/sRezbNc2Hfj75o4k9eAIlKye3dUdxRlqS5iq7kJFt
	 0cAqNbCd8sJNM46cGca8koFuN4xUdJo++gH0eqDXn8SKopMi0KBWSBBNBzWvh+qcns
	 99ms6z6ZKeeGA==
Date: Tue, 26 Sep 2023 13:59:32 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Serge Semin <fancer.lancer@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] spi: dt-bindings: Make "additionalProperties: true"
 explicit
Message-ID: <20230926-swung-duplex-b01be7f91e58@spud>
References: <20230925212614.1974243-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gCWkt9qgvYzcx0LY"
Content-Disposition: inline
In-Reply-To: <20230925212614.1974243-1-robh@kernel.org>


--gCWkt9qgvYzcx0LY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 25, 2023 at 04:26:00PM -0500, Rob Herring wrote:
> Make it explicit that child nodes have additional properties and the
> child node schema is not complete. The complete schemas are applied
> separately based the compatible strings.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  .../devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml        | 2 ++
>  .../devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml        | 2 ++
>  Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml | 1 +
>  Documentation/devicetree/bindings/spi/rockchip-sfc.yaml         | 2 ++
>  Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml      | 2 ++
>  5 files changed, 9 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-sp=
i.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
> index a6f34bdd1d3c..e1ab3f523ad6 100644
> --- a/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
> @@ -46,6 +46,8 @@ properties:
>  patternProperties:
>    "^.*@[0-9a-f]+":
>      type: object
> +    additionalProperties: true
> +
>      properties:
>        reg:
>          items:
> diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-sp=
i.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> index 28b8ace63044..3b47b68b92cb 100644
> --- a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> @@ -68,6 +68,8 @@ properties:
>  patternProperties:
>    "^.*@[0-9a-f]+":
>      type: object
> +    additionalProperties: true
> +
>      properties:
>        reg:
>          items:
> diff --git a/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.y=
aml b/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
> index 9ae1611175f2..48e97e240265 100644
> --- a/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
> +++ b/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
> @@ -50,6 +50,7 @@ properties:
>  patternProperties:
>    "@[0-9a-f]+$":
>      type: object
> +    additionalProperties: true
> =20
>      properties:
>        spi-rx-bus-width:
> diff --git a/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml b/Do=
cumentation/devicetree/bindings/spi/rockchip-sfc.yaml
> index 339fb39529f3..ac1503de0478 100644
> --- a/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
> +++ b/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
> @@ -47,6 +47,8 @@ properties:
>  patternProperties:
>    "^flash@[0-3]$":
>      type: object
> +    additionalProperties: true
> +
>      properties:
>        reg:
>          minimum: 0
> diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml b=
/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> index a47cb144b09f..6348a387a21c 100644
> --- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> +++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> @@ -160,6 +160,8 @@ properties:
>  patternProperties:
>    "^.*@[0-9a-f]+$":
>      type: object
> +    additionalProperties: true
> +
>      properties:
>        reg:
>          minimum: 0
> --=20
> 2.40.1
>=20

--gCWkt9qgvYzcx0LY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRLVtAAKCRB4tDGHoIJi
0hR8AP9Ava8cYYj5GVL2Hut1w6uRkN/b4Faq6JdqruwkatygOAEAiy5idBiTw+di
gDi3f58ACPRbv1uC/Zp+MwgXWqAZWgc=
=hqIu
-----END PGP SIGNATURE-----

--gCWkt9qgvYzcx0LY--

