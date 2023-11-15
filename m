Return-Path: <devicetree+bounces-16080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFF47ED660
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 22:55:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 844821F25588
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 21:55:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 961523DB95;
	Wed, 15 Nov 2023 21:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Of3bAt7/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B0B43C491
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 21:55:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C601CC433C8;
	Wed, 15 Nov 2023 21:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700085349;
	bh=rxsJVAoAJu2unPfsigseF5/Irjtoe5C4h3hDvuDI2LE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Of3bAt7/iGINyWvNQZ6aO11NPVyWkqaWSqUcTnN5DgrdWJnjBf5vMSlapIoXqI13q
	 3+uq1fC1RxdSXHZLxYN7EHtSH2KXGoqZFcFBCwkYW/K1Sn335g3wKqbMwi1/V8pQSZ
	 WKYByUY+at5vVcJUeA3sTzlv79gU8+qiu8aQQPKexioCYgnIEoL4WDw8bJ8t4A1S8t
	 z414dDBb4r9jrmmsBi54/igZIpHd2lckkdzysZ8+K0vOGnH7S9mSkEPR832DYw21N6
	 EhHsGVPh094xw2EiTP48X9221BgQSNE7bQ6Fe3OxRQIObraXE1qM8x/85zC5XeUaox
	 7j70BoC8SslLQ==
Date: Wed, 15 Nov 2023 21:55:44 +0000
From: Conor Dooley <conor@kernel.org>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document
 RZ/Five SoC
Message-ID: <20231115-quartered-laborer-5b85a793b22c@squawk>
References: <20231115211829.32542-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gr/AzMSS6UTSjHeT"
Content-Disposition: inline
In-Reply-To: <20231115211829.32542-1-prabhakar.mahadev-lad.rj@bp.renesas.com>


--gr/AzMSS6UTSjHeT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 15, 2023 at 09:18:29PM +0000, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>=20
> The USBPHY Control Device on the RZ/Five SoC is identical to one found on
> the RZ/G2UL SoC. "renesas,r9a07g043-usbphy-ctrl" compatible string will be
> used on the RZ/Five SoC so to make this clear and to keep this file
> consistent, update the comment to include RZ/Five SoC.
>=20
> No driver changes are required as generic compatible string
> "renesas,rzg2l-usbphy-ctrl" will be used as a fallback on RZ/Five SoC.
>=20
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheerrs,
Conor,

> ---
>  .../devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml    | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy=
-ctrl.yaml b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-c=
trl.yaml
> index 731b8ce01525..03c18611e42d 100644
> --- a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.y=
aml
> +++ b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.y=
aml
> @@ -17,7 +17,7 @@ properties:
>    compatible:
>      items:
>        - enum:
> -          - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL
> +          - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
>            - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
>            - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
>        - const: renesas,rzg2l-usbphy-ctrl
> --=20
> 2.34.1
>=20

--gr/AzMSS6UTSjHeT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVU+XQAKCRB4tDGHoIJi
0nfeAQDnpo8a0Uhwi2jyXQ/OXTuiym77GMgcTLswBWauxu/ElQD8D33bXpByurRp
ZfcEgGa0qPIB/8TCaeqeigs56yeQUgs=
=+i2M
-----END PGP SIGNATURE-----

--gr/AzMSS6UTSjHeT--

