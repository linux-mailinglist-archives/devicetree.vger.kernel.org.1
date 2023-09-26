Return-Path: <devicetree+bounces-3351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C687AE7F7
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 10:26:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 00ADA281308
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 08:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91DEE125CF;
	Tue, 26 Sep 2023 08:26:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 827BD6FAB
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 08:26:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFF53C433C7;
	Tue, 26 Sep 2023 08:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695716763;
	bh=FuCy5VA/8fbYT8cI4YGq6xcsx61gH9ovFfxV+TckrYw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AStEcg0uKRGF5Ay23VNYBkMEr+0VJ0N60/EcI/CuXp1MLOwfdOEi3nJZXdFbSX7Cf
	 U1b7J2UcITkAgadRo9L5dBnteDhnLD4VgccwY6/uqjPiRg7NUj/VK7INkrWMWyyLgP
	 ZFbG4mN0ZIA1lS88FknH8jjNxk8/herfsKvTIr1tXrRIXkoAy5ZCOf7v1/Csytzu/V
	 Izf6576qD42wmG4f7c6sUcUBNXk71NOh7b3QD2SFsMetEPh975QR3X1NTaOVLiAjhm
	 jzKse5QGh2aV3RWT6gPbPyTSaltDm4XEJ96wZN9XsTFkJWO0uLpYVt+72a8oKxPMaX
	 icSPxsnfH+5BA==
Date: Tue, 26 Sep 2023 09:25:58 +0100
From: Conor Dooley <conor@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Peter Denison <openwrt@marshadder.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Krzysztof Halasa <khalasa@piap.pl>, Imre Kaloz <kaloz@openwrt.org>,
	Ted Hess <thess@kitschensync.net>, Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: List more IXP4xx devices
Message-ID: <20230926-chef-steerable-94e1f0bdcc24@spud>
References: <20230925-ixp4xx-usr8200-v2-0-433261c13a28@linaro.org>
 <20230925-ixp4xx-usr8200-v2-2-433261c13a28@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mVcj+xAQdlYPKMGQ"
Content-Disposition: inline
In-Reply-To: <20230925-ixp4xx-usr8200-v2-2-433261c13a28@linaro.org>


--mVcj+xAQdlYPKMGQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 25, 2023 at 11:03:39AM +0200, Linus Walleij wrote:
> The ixp4xx bindings are lacking some of the devices we have
> out there in the wild, so let's add them.
>=20
> The "linksys,wrv54g", "gemtek,gtwx5715", "intel,ixp42x"
> triplet is a pretty special case where the Gemtek device is
> licensed as OEM product by Linksys (now Belkin) hence the
> special entry for this one.
>=20
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../devicetree/bindings/arm/intel-ixp4xx.yaml          | 18 ++++++++++++=
++++++
>  1 file changed, 18 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml b/Do=
cumentation/devicetree/bindings/arm/intel-ixp4xx.yaml
> index 553dcbc70e35..1fecd4692a62 100644
> --- a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
> +++ b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
> @@ -16,12 +16,30 @@ properties:
>      oneOf:
>        - items:
>            - enum:
> +              - adieng,coyote
> +              - arcom,vulcan
> +              - dlink,dsm-g600-a
> +              - freecom,fsg-3
> +              - gateway,7001
> +              - gateworks,gw2348
> +              - goramo,multilink-router
> +              - intel,ixdp425
> +              - intel,ixdpg425
> +              - iom,nas-100d
>                - linksys,nslu2
> +              - netgear,wg302v1
> +              - netgear,wg302v2
> +              - usr,8200
>                - welltech,epbx100
>            - const: intel,ixp42x
> +      - items:
> +          - const: linksys,wrv54g
> +          - const: gemtek,gtwx5715
> +          - const: intel,ixp42x

One question, not so much about this particular case, but is there no
"standalone" version of the gtwx5715 sold by gemtek? Asking as I don't
see it in the enum above. The description sounds like it is both a
product in its own right & sold rebadged.

Thanks,
Conor.

>        - items:
>            - enum:
>                - gateworks,gw2358
> +              - intel,kixrp435
>            - const: intel,ixp43x
> =20
>  additionalProperties: true
>=20
> --=20
> 2.41.0
>=20

--mVcj+xAQdlYPKMGQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRKVlgAKCRB4tDGHoIJi
0nW+AQC8AxeAroONjWOHevrxZvaVtHlrQN+R870SLjm+/K0FhAEAwDsrPwg6BMJO
OgbGdX9u5+Z5o2Xp5bzAPJxoDBR60AM=
=zYJe
-----END PGP SIGNATURE-----

--mVcj+xAQdlYPKMGQ--

