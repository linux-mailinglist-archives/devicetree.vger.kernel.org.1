Return-Path: <devicetree+bounces-4617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D31D7B3440
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:07:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 25B4B1C208B5
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:07:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A923C450FA;
	Fri, 29 Sep 2023 14:07:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99C643C37
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 14:07:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55E0EC433C7;
	Fri, 29 Sep 2023 14:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695996435;
	bh=olOL9wN8cgjXunpWPWp+h6aP5nihELtHTMYME3fBmJU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B+pbsLbZ3SHEk65ZNDzAKFIOu5sAkQjQw7Uiwpgs4JWPbN8scLx/vuphfrKrFZUvy
	 JnN6tkDHlyNdkCKSBZ1pLjBqoj8ljiJ8Rz67K3EMNk40FmaJMbPt7SBsXtX2BvG2wD
	 +2rRbsYYDdxZfF5HdJC5TbvN85xPI6yLqF6+NuIZGKbwboMDlkfdL/Lzb1jqeN8eGV
	 wfX4jiWy+QQDqB4ri0CpiRWZT4n/WZ3JnWbp8K81ez/dEjHfpouiNFZOz6j7pMGory
	 DUZaM9gBp3qEdOMwQ2JqVaMJQk7sEGUW6ErzD7cbi2aJoeaO8m/jZ44CQ43KvetUt+
	 fUqysr6IoNQWQ==
Date: Fri, 29 Sep 2023 15:07:08 +0100
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
Subject: Re: [PATCH v2 20/28] dt-bindings: pinctrl: renesas: document RZ/G3S
 SoC
Message-ID: <20230929-dyslexic-deity-d0ff0d579ff7@spud>
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
 <20230929053915.1530607-21-claudiu.beznea@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0Gc/+fe1ZkVHCyX4"
Content-Disposition: inline
In-Reply-To: <20230929053915.1530607-21-claudiu.beznea@bp.renesas.com>


--0Gc/+fe1ZkVHCyX4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 29, 2023 at 08:39:07AM +0300, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>=20
> Add documentation for pin controller found on RZ/G3S (R9A08G045) SoC.
> Compared with RZ/G2{L,UL} RZ/G3S has 82 general-purpose IOs, no slew
> rate and output impedance support and more values for drive strength
> which needs to be expressed in microamp.
>=20
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>=20
> Changes in v2:
> - defined drive-strength-microamp as general and make if/then schema to
>   not allow specific properties depending on compatible
>=20
>  .../pinctrl/renesas,rzg2l-pinctrl.yaml        | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinc=
trl.yaml b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.=
yaml
> index eb726770f571..86228ba69aab 100644
> --- a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
> @@ -25,6 +25,7 @@ properties:
>            - enum:
>                - renesas,r9a07g043-pinctrl # RZ/G2UL{Type-1,Type-2} and R=
Z/Five
>                - renesas,r9a07g044-pinctrl # RZ/G2{L,LC}
> +              - renesas,r9a08g045-pinctrl # RZ/G3S
> =20
>        - items:
>            - enum:
> @@ -78,6 +79,21 @@ additionalProperties:
>          - $ref: pincfg-node.yaml#
>          - $ref: pinmux-node.yaml#
> =20
> +        - if:
> +            properties:
> +              compatible:
> +                contains:
> +                  enum:
> +                    - renesas,r9a08g045-pinctrl
> +          then:
> +            properties:
> +              drive-strength: false
> +              output-impedance-ohms: false
> +              slew-rate: false
> +          else:
> +            properties:
> +              drive-strength-microamp: false
> +
>        description:
>          Pin controller client devices use pin configuration subnodes (ch=
ildren
>          and grandchildren) for desired pin configuration.
> @@ -92,6 +108,10 @@ additionalProperties:
>          pins: true
>          drive-strength:
>            enum: [ 2, 4, 8, 12 ]
> +        drive-strength-microamp:
> +          enum: [ 1900, 2200, 4000, 4400, 4500, 4700, 5200, 5300, 5700,
> +                  5800, 6000, 6050, 6100, 6550, 6800, 7000, 8000, 9000,
> +                  10000 ]
>          output-impedance-ohms:
>            enum: [ 33, 50, 66, 100 ]
>          power-source:
> --=20
> 2.39.2
>=20

--0Gc/+fe1ZkVHCyX4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRbaDAAKCRB4tDGHoIJi
0t1kAQDAMTVYgZd+b31A4SXzfKOCQ/Bprjo8BTMgoAzCaMx7CgEAs5JDFJFu96Di
RHElBGwzn3VH/wmjxR6VkbjzWsONjgM=
=2BHK
-----END PGP SIGNATURE-----

--0Gc/+fe1ZkVHCyX4--

