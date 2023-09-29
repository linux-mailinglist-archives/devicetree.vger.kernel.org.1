Return-Path: <devicetree+bounces-4616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 349B37B3434
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:06:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DB2E6281EB7
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78E77450ED;
	Fri, 29 Sep 2023 14:06:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D813C37
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 14:06:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F075C433C8;
	Fri, 29 Sep 2023 14:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695996361;
	bh=TbckdWvwK4auFOXas/a0A6Sw7++8w4iMTpEnju2FbpE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bztEm8/+W8oJ9LY0UW30TZB7TXrWO9ynk2xaHq5c9epgJ+NZWojZSUBeIwdr3Z7QC
	 WE0Dyw/FenBWk7V2OBPDCLLw70eZ8WCZk2CEfTf/xuhcRV7gK5781EYqrh7zTd6enf
	 GnXsPwoX6/CNM16nUnQWlwOz9GaFRRb6xqp7RHPyS5N9x6VM04HFmCUlcB8GY4z3oy
	 u2y5WfgmBgG95p6HdhdqGTgzLxpYfdVai9uKXahC8WbfoWcT1vd84VOIUARo1PNGTG
	 LJ+9ZB0YfbrH4M6TfD0BZcU7inktZxXMV1XikuK8JEcrXdZM/K0G2Bq5Y+RgwxCSiD
	 G9nRIhOKJpjeg==
Date: Fri, 29 Sep 2023 15:05:54 +0100
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
Subject: Re: [PATCH v2 23/28] dt-bindings: arm: renesas: document RZ/G3S
 SMARC SoM
Message-ID: <20230929-multiple-scallion-3a6e106e56ac@spud>
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
 <20230929053915.1530607-24-claudiu.beznea@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vCKR3sYe3VOcj8c0"
Content-Disposition: inline
In-Reply-To: <20230929053915.1530607-24-claudiu.beznea@bp.renesas.com>


--vCKR3sYe3VOcj8c0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 29, 2023 at 08:39:10AM +0300, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>=20
> Document Renesas RZ/G3S SMARC SoM board which is based on RZ/G3S
> (R9A08G045S33) SoC.
>=20
> Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>=20
> Changes in v2:
> - this patch is new in v2 and added as suggested by Geert
>=20
>  Documentation/devicetree/bindings/soc/renesas/renesas.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml b=
/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
> index 822faf081e84..31d0539bb168 100644
> --- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
> @@ -480,6 +480,12 @@ properties:
>                - renesas,r9a08g045s33 # PCIe support
>            - const: renesas,r9a08g045
> =20
> +      - description: RZ/G3S SMARC Module (SoM)
> +        items:
> +          - const: renesas,rzg3s-smarcm # RZ/G3S SMARC Module (SoM)
> +          - const: renesas,r9a08g045s33 # PCIe support
> +          - const: renesas,r9a08g045
> +
>  additionalProperties: true
> =20
>  ...
> --=20
> 2.39.2
>=20

--vCKR3sYe3VOcj8c0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRbZwQAKCRB4tDGHoIJi
0kJ8AP9BDPKe/hn4dFJsq9M6O7qa+VPwhPLyoiOzVm0U9KDxdwD7BsnjNtnFKjUz
LaSkObGrQi3BGDyei4YqEq6esOx24wg=
=GBJI
-----END PGP SIGNATURE-----

--vCKR3sYe3VOcj8c0--

