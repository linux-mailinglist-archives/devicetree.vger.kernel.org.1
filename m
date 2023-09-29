Return-Path: <devicetree+bounces-4618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8077B3446
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:09:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 6B2561C208CE
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6C3347C9F;
	Fri, 29 Sep 2023 14:09:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C753C37
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 14:09:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78C2CC433C8;
	Fri, 29 Sep 2023 14:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695996562;
	bh=ECIuZgxCEmIlmR41y89eDdyCkMIakxVpMzDPuDy5MOA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PvNMHhpqSzuReyTiC4l3M5RQMMGyhdSk3jvXO/U5VICKHL+e2+92J8t7avhcY2umw
	 iw3yNR6yleB93+2nj9H5grnfMPhiBG3ECreR6EMjtIHXedm0bZxS9odtsGgN9Yen2c
	 3srldQcMsSAGO8krC7yF8aZirgrpA5VXUIRMsy6ZOAsJBraH7S3z5v8JwCJob+Ed6l
	 +ifWMJyXJ90Rwa0jjN1KzfhPLDxYYfgcbfpbDqJXEFIcOeTqGuBRdewV15Vf/+MOXE
	 lSAM2CTyP8eIaoX3wjaYMl9scZBwd9mNueYN0+KAx/4+repoWvr1m6KhoiyTJWhaD0
	 6QpeTM55Y48Sg==
Date: Fri, 29 Sep 2023 15:09:15 +0100
From: Conor Dooley <conor@kernel.org>
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: geert+renesas@glider.be, mturquette@baylibre.com, sboyd@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linus.walleij@linaro.org,
	gregkh@linuxfoundation.org, jirislaby@kernel.org,
	magnus.damm@gmail.com, catalin.marinas@arm.com, will@kernel.org,
	quic_bjorande@quicinc.com, konrad.dybcio@linaro.org, arnd@arndb.de,
	neil.armstrong@linaro.org, prabhakar.mahadev-lad.rj@bp.renesas.com,
	biju.das.jz@bp.renesas.com, linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 19/28] dt-bindings: pinctrl: renesas: set
 additionalProperties: false
Message-ID: <20230929-garlic-outboard-815482929d9f@spud>
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
 <20230929053915.1530607-20-claudiu.beznea@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="my2HgJawl2/1ExGF"
Content-Disposition: inline
In-Reply-To: <20230929053915.1530607-20-claudiu.beznea@bp.renesas.com>


--my2HgJawl2/1ExGF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 29, 2023 at 08:39:06AM +0300, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>=20
> Set additionalProperties: false.
>=20
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>=20
> Changes in v2:
> - this patch is new in v2 and added as suggested by Rob
>=20
>  .../devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml     | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinc=
trl.yaml b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.=
yaml
> index 4782f96feb7e..eb726770f571 100644
> --- a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
> @@ -106,8 +106,7 @@ additionalProperties:
>          line-name: true
> =20
>      - type: object
> -      additionalProperties:
> -        $ref: "#/additionalProperties/anyOf/0"

I have no clue what this original version was doing, I figure it
resolves to an empty list or something, and therefore acts just like
false?

New version looks a lot more normal..

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> +      additionalProperties: false
> =20
>  allOf:
>    - $ref: pinctrl.yaml#
> --=20
> 2.39.2
>=20

--my2HgJawl2/1ExGF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRbaiwAKCRB4tDGHoIJi
0qh+APwL6eo2jECb7XDIacBCE/sq/P8EV9UzIhGMLfok9E+kzAEAmaehwb9i3mFu
xGy7Ze7QT7QWKu0jwHWu07oEbpptGwg=
=HoNT
-----END PGP SIGNATURE-----

--my2HgJawl2/1ExGF--

