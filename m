Return-Path: <devicetree+bounces-3439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFA37AED8F
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 15:02:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B212B281552
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 13:02:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7D34286AC;
	Tue, 26 Sep 2023 13:02:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62F82770B
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 13:02:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A13F2C433C8;
	Tue, 26 Sep 2023 13:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695733340;
	bh=1zCxJjJthRbNwkGYNCIe9bhUNO7p6H4Ty2SL0Yudtrg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rKs2YG8UwgoN2/7wtROgx5rN/qrr1Yvj6qV0sQHbOCJaF6cxAb0V+eXCNZ/r19nZb
	 ugj9AjcgyqoZRd845JdxLDEzDN1uaUmYbmtVrgHUHnB0MG87JiY4say4gboSeopFmU
	 vW4P9vwJcxnd5wZM4axOMtaxe+8PQUYSSYOd9md8xdDsfb9D+RH0GBloDbfEC3ua5a
	 tI9uX9PvqH7CP1P71b6xi8mGAAbU4wplEDgG5VBBHo51KnoYs8Tc0xC0wePb30MwzB
	 KBwmC609F24rO+u6YcueDUWrhNtQKSy4uJDxKQgbS6vG/Dnx/PWk+VuFj9+/8nmT2O
	 aYXzNHQ6jTj0w==
Date: Tue, 26 Sep 2023 14:02:14 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Lee Jones <lee@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Patrick Rudolph <patrick.rudolph@9elements.com>,
	Flora Fu <flora.fu@mediatek.com>,
	Alexandre Mergnat <amergnat@baylibre.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>, - Keerthy <j-keerthy@ti.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: mfd: Add missing unevaluatedProperties on
 child node schemas
Message-ID: <20230926-rerun-hardcover-b2a64ccc6411@spud>
References: <20230925212729.1976117-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="of7mDBoDabXptSSZ"
Content-Disposition: inline
In-Reply-To: <20230925212729.1976117-1-robh@kernel.org>


--of7mDBoDabXptSSZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 25, 2023 at 04:27:24PM -0500, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
>=20
> Add unevaluatedProperties as needed, and then add any missing properties
> flagged by the addition.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/mfd/maxim,max5970.yaml   | 5 +++++
>  Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml | 2 ++
>  Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml  | 1 +
>  Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml  | 1 +
>  Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml  | 3 ++-
>  Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml  | 1 +
>  Documentation/devicetree/bindings/mfd/ti,lp87524-q1.yaml   | 1 +
>  Documentation/devicetree/bindings/mfd/ti,lp87561-q1.yaml   | 1 +
>  Documentation/devicetree/bindings/mfd/ti,lp87565-q1.yaml   | 1 +
>  9 files changed, 15 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml b/D=
ocumentation/devicetree/bindings/mfd/maxim,max5970.yaml
> index da67742c5aa9..0da5cae3852e 100644
> --- a/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml
> +++ b/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml
> @@ -45,8 +45,13 @@ properties:
>      patternProperties:
>        "^led@[0-3]$":
>          $ref: /schemas/leds/common.yaml#
> +        unevaluatedProperties: false
>          type: object
> =20
> +        properties:
> +          reg:
> +            maximum: 3
> +
>      additionalProperties: false
> =20
>    vss1-supply:
> diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml b=
/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml
> index fc2a53148e1c..37423c2e0fdf 100644
> --- a/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml
> +++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml
> @@ -40,6 +40,7 @@ properties:
>    regulators:
>      type: object
>      $ref: /schemas/regulator/mediatek,mt6357-regulator.yaml
> +    unevaluatedProperties: false
>      description:
>        List of MT6357 BUCKs and LDOs regulators.
> =20
> @@ -59,6 +60,7 @@ properties:
>    keys:
>      type: object
>      $ref: /schemas/input/mediatek,pmic-keys.yaml
> +    unevaluatedProperties: false
>      description:
>        MT6357 power and home keys.
> =20
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml b/=
Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> index 4992f71b6fc3..af6cd1969c22 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> @@ -80,6 +80,7 @@ properties:
>        "^(DCDC_REG[1-4]|LDO_REG[1-3])$":
>          type: object
>          $ref: ../regulator/regulator.yaml#
> +        unevaluatedProperties: false
>      unevaluatedProperties: false
> =20
>  allOf:
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml b/=
Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> index f5908fa01a61..8a16d651c2a3 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> @@ -107,6 +107,7 @@ properties:
>        "^(DCDC_REG[1-4]|LDO_REG[1-8]|SWITCH_REG[1-2])$":
>          type: object
>          $ref: ../regulator/regulator.yaml#
> +        unevaluatedProperties: false
>      unevaluatedProperties: false
> =20
>  required:
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/=
Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> index 7fb849ac74a7..e922e0176ee7 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> @@ -86,7 +86,8 @@ properties:
>      patternProperties:
>        "^(LDO_REG[1-9]|DCDC_REG[1-5]|SWITCH_REG[1-2])$":
>          type: object
> -        $ref: ../regulator/regulator.yaml#
> +        $ref: /schemas/regulator/regulator.yaml#
> +        unevaluatedProperties: false
>      unevaluatedProperties: false
> =20
>  allOf:
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml b/=
Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> index b57c4b005cf4..ee5bca6e75df 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> @@ -99,6 +99,7 @@ properties:
>        "^(DCDC_REG[1-4]|DCDC_BOOST|LDO_REG[1-9]|SWITCH_REG|HDMI_SWITCH|OT=
G_SWITCH)$":
>          type: object
>          $ref: ../regulator/regulator.yaml#
> +        unevaluatedProperties: false
>      unevaluatedProperties: false
> =20
>  required:
> diff --git a/Documentation/devicetree/bindings/mfd/ti,lp87524-q1.yaml b/D=
ocumentation/devicetree/bindings/mfd/ti,lp87524-q1.yaml
> index f6cac4b1079c..ae149eb8593d 100644
> --- a/Documentation/devicetree/bindings/mfd/ti,lp87524-q1.yaml
> +++ b/Documentation/devicetree/bindings/mfd/ti,lp87524-q1.yaml
> @@ -37,6 +37,7 @@ properties:
>        "^buck[0123]$":
>          type: object
>          $ref: /schemas/regulator/regulator.yaml#
> +        unevaluatedProperties: false
> =20
>      required:
>        - buck0
> diff --git a/Documentation/devicetree/bindings/mfd/ti,lp87561-q1.yaml b/D=
ocumentation/devicetree/bindings/mfd/ti,lp87561-q1.yaml
> index dc5a29b5ef7d..5167d6eb904a 100644
> --- a/Documentation/devicetree/bindings/mfd/ti,lp87561-q1.yaml
> +++ b/Documentation/devicetree/bindings/mfd/ti,lp87561-q1.yaml
> @@ -41,6 +41,7 @@ properties:
>        buck3210:
>          type: object
>          $ref: /schemas/regulator/regulator.yaml#
> +        unevaluatedProperties: false
> =20
>      required:
>        - buck3210
> diff --git a/Documentation/devicetree/bindings/mfd/ti,lp87565-q1.yaml b/D=
ocumentation/devicetree/bindings/mfd/ti,lp87565-q1.yaml
> index 012d25111054..eca430edf608 100644
> --- a/Documentation/devicetree/bindings/mfd/ti,lp87565-q1.yaml
> +++ b/Documentation/devicetree/bindings/mfd/ti,lp87565-q1.yaml
> @@ -47,6 +47,7 @@ properties:
>        "^buck(10|23)$":
>          type: object
>          $ref: /schemas/regulator/regulator.yaml#
> +        unevaluatedProperties: false
> =20
>      required:
>        - buck10
> --=20
> 2.40.1
>=20

--of7mDBoDabXptSSZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRLWVgAKCRB4tDGHoIJi
0lMeAP9wEFGo1fp9dvminX1cSTyNxwEJiVOtmrhGBEMx/7QBnQEA14ReaHI5ItdL
tQ3gvfsJubmpf8sr6r8UU5g8IpyO9QI=
=pqXj
-----END PGP SIGNATURE-----

--of7mDBoDabXptSSZ--

