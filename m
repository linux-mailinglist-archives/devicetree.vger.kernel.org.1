Return-Path: <devicetree+bounces-1311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E577A5D6D
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 11:08:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 010202826CD
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 09:08:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 933FA3D3AD;
	Tue, 19 Sep 2023 09:08:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A8CB5399
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 09:08:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21AB4C433C8;
	Tue, 19 Sep 2023 09:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695114513;
	bh=OQZef8z+kIgFiCbCVHJQY0MMB8Z8QFuCUTXdKb6EscM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SL1NMV3vZsxrHBHLSVYwxJtpXlWaoQdoui7krjpv3vNzI9QEyJG4pAmPMdoHnex2B
	 t1rk/9v7YODfNvs8fG/FBfTuWdj8PVR3P7odwfKIyVH/zvo8gN+diPi6QEEK8g1iMO
	 GbA3GPg7h1YiiJYB8hxenrEZU3fwP1Cf2t4nu5HGrpjrJMbe0b53ht7pINf3RJuI6K
	 Mc7xtG69hbaeVhO5ZSyPBvvt8QprnA38elBqJ6sOy5FO5uqyQr087czP+yyBCzXrGC
	 V8cXZQ0dMJGXaq/VX5Pk5E4vk8fHUAEh/qWxfpVD3stY7NDc0yiibDGm5bFKmvqfRA
	 XvNWW9PY40QZg==
Date: Tue, 19 Sep 2023 10:08:28 +0100
From: Conor Dooley <conor@kernel.org>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: stm32: document MYD-YA151C-T
 development board
Message-ID: <20230919-98b276afdbc85d62815da0b9@fedora>
References: <20230919083553.35981-1-eagle.alexander923@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nWA3m4scrPtkTyCU"
Content-Disposition: inline
In-Reply-To: <20230919083553.35981-1-eagle.alexander923@gmail.com>


--nWA3m4scrPtkTyCU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 19, 2023 at 11:35:52AM +0300, Alexander Shiyan wrote:
> Add new entry for MYD-YA151C-T development board.
>=20
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Doc=
umentation/devicetree/bindings/arm/stm32/stm32.yaml
> index 4bf28e717a56..5252b9108ddc 100644
> --- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> @@ -140,6 +140,11 @@ properties:
>            - const: engicam,microgea-stm32mp1
>            - const: st,stm32mp157
> =20
> +      - description: MyirTech MYD-YA15XC-T SoM based Boards
> +        items:
> +          - const: myir,myd-ya151c-t   # MYIR MYD-YA151C-T STM32MP151C
> +          - const: st,stm32mp151

It appears that this file is sorted by soc part number, which would put
this entry now in the wrong location.
With that changed,
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> +
>        - description: Octavo OSD32MP15x System-in-Package based boards
>          items:
>            - enum:
> --=20
> 2.39.1
>=20

--nWA3m4scrPtkTyCU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQllCAAKCRB4tDGHoIJi
0lKfAP4mCqN9Rg3GdJJO6EcWaj0UJipSMm6zPywqG4RSRGA03wD/Xe7TPPf1heeq
yYRzHGy1IdpHmtwwIlwfTGRSvXYROQk=
=Oi1g
-----END PGP SIGNATURE-----

--nWA3m4scrPtkTyCU--

