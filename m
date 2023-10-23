Return-Path: <devicetree+bounces-11007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FB27D3C2B
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 18:19:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 592FEB20CAC
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 191C71CFA7;
	Mon, 23 Oct 2023 16:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocyl6RJl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24231CA96
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 16:19:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD0B4C433C9;
	Mon, 23 Oct 2023 16:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698077971;
	bh=2yoJUFciYjOGBPAKWjjWU0kAwyU1Itk6s1tGuUXNy9A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ocyl6RJle/R2/8cViurxiFrtIssXCSYTIV2gwxm9RYSl/AqO4DKoG4L9vgATnJNep
	 uhjw7AfIAwNGMtAkbKWdqI3z/jYgaL8PcwYjKPe/RTwz3rYmiBBOdVxVgqJkj+FWOK
	 m/kfldvRoSgyBKmas8FxBTX+Xhjy061f+bZI5TA5tlxMCeq3iNAl8+AraL2KHetvSW
	 J0PWb5huCqtK1f72NZc3wHnX4/ebjSosi6RfTsu1Wcd3iCA/l+gp6MpNEZNlW0JbFE
	 SuYiAQz4sSIHBKEUkkLjqBIWhAL8xARYmCOp1KVpghzvHqWUtKKsRCnVdC8uJ0BI01
	 E4P7V+vNfwzrg==
Date: Mon, 23 Oct 2023 17:19:26 +0100
From: Conor Dooley <conor@kernel.org>
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: tglx@linutronix.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	mturquette@baylibre.com, sboyd@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH 1/7] dt-bindings: interrupt-controller:
 renesas,rzg2l-irqc: document RZ/G3S
Message-ID: <20231023-snuff-dish-3b9df076a82c@spud>
References: <20231023102223.1309614-1-claudiu.beznea.uj@bp.renesas.com>
 <20231023102223.1309614-2-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xG0STj7p0zR8eqpn"
Content-Disposition: inline
In-Reply-To: <20231023102223.1309614-2-claudiu.beznea.uj@bp.renesas.com>


--xG0STj7p0zR8eqpn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 01:22:17PM +0300, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>=20
> Document RZ/G3S (R9108G045) interrupt controller. This has few extra
> functionalities compared with RZ/G2UL but the already existing driver
> could still be used.
>=20
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  .../bindings/interrupt-controller/renesas,rzg2l-irqc.yaml    | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/renes=
as,rzg2l-irqc.yaml b/Documentation/devicetree/bindings/interrupt-controller=
/renesas,rzg2l-irqc.yaml
> index 2ef3081eaaf3..d3b5aec0a3f7 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2=
l-irqc.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2=
l-irqc.yaml
> @@ -26,6 +26,7 @@ properties:
>            - renesas,r9a07g043u-irqc   # RZ/G2UL
>            - renesas,r9a07g044-irqc    # RZ/G2{L,LC}
>            - renesas,r9a07g054-irqc    # RZ/V2L
> +          - renesas,r9a08g045-irqc    # RZ/G3S
>        - const: renesas,rzg2l-irqc
> =20
>    '#interrupt-cells':
> @@ -167,7 +168,9 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: renesas,r9a07g043u-irqc
> +            enum:
> +              - renesas,r9a07g043u-irqc
> +              - renesas,r9a08g045-irqc
>      then:
>        properties:
>          interrupts:
> --=20
> 2.39.2
>=20

--xG0STj7p0zR8eqpn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTadDgAKCRB4tDGHoIJi
0nhyAP9SX2WimXDhWIXmlpXodQDFM9Ac9Cx28m1XUil6xBpgaAEA7i4+bh6j8a7g
pi+v0G2iUHncBtDHx7yE/n+l7wP1MAA=
=vzkc
-----END PGP SIGNATURE-----

--xG0STj7p0zR8eqpn--

