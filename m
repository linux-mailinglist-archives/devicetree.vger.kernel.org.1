Return-Path: <devicetree+bounces-6997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E45737BE77E
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 19:15:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 963F82818D7
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 17:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDB55358B4;
	Mon,  9 Oct 2023 17:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXdK1J6v"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9765934CC7
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 17:15:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A23BFC433C7;
	Mon,  9 Oct 2023 17:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696871745;
	bh=kGJT1BA4ALJmBk4tk3vC3+mdd3/pcWV2fJ+nhEIfUAU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HXdK1J6v/hJ9GVt6ExlZ55iiRmtTT0QrueHDnly79hCe480hPd7mn8qEqPoK5wNIa
	 mrBipl1RQSwz4h+ciL9G4/T9s2kezzW4k8DS5VxFSbWlFBo6GlW75JON8RFVa/N2ac
	 EKUlIQvA50dHLv954TlOQpUnTZ+UHDYjcFKqs8AfoEdobsuJeYAB34G1t/zF2lmmrV
	 fxS0WCY9qm6KQumg2kw6ke+JxSDx6gIPsOI93MxzgsUrzdD8uqs27OMn1nusxS/CgK
	 W0cP1fW5TcLDEAxSLDKBv4Yiz99SqDAoHm8yyncWtrTxVfh60UupQRXeDx5TMvSITv
	 baexcT6NRfKAw==
Date: Mon, 9 Oct 2023 18:15:40 +0100
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
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: List more IXP4xx devices
Message-ID: <20231009-broadways-ream-38ced3364874@spud>
References: <20231007-ixp4xx-usr8200-v3-0-ec46edd1ff0e@linaro.org>
 <20231007-ixp4xx-usr8200-v3-2-ec46edd1ff0e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xBgkEEQF16zYyPvw"
Content-Disposition: inline
In-Reply-To: <20231007-ixp4xx-usr8200-v3-2-ec46edd1ff0e@linaro.org>


--xBgkEEQF16zYyPvw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 07, 2023 at 02:15:12PM +0200, Linus Walleij wrote:
> The ixp4xx bindings are lacking some of the devices we have
> out there in the wild, so let's add them.
>=20
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v1->v2:
> - Skip the crazy triplet compatible. There will have to
>   be one device tree including the other if this really
>   has to be a unique compatible for gemtek,gtwx5715.
>   Linksys will clearly be the most prevalent version.

Ok.

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml | 16 +++++++++++=
+++++
>  1 file changed, 16 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml b/Do=
cumentation/devicetree/bindings/arm/intel-ixp4xx.yaml
> index 553dcbc70e35..d60792b1d995 100644
> --- a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
> +++ b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
> @@ -16,12 +16,28 @@ properties:
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
> +              - linksys,wrv54g
> +              - gemtek,gtwx5715
>            - const: intel,ixp42x
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

--xBgkEEQF16zYyPvw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSQ1PAAKCRB4tDGHoIJi
0nXYAP4lR0Tlm9PYUXc6KOhPEk9U4C20k9Jnv1vo7KHkAZ/LigD/bGdkrzciGL1y
ew5uGVz6BdbQZDOuxgNLbKUd2GMAogQ=
=qokJ
-----END PGP SIGNATURE-----

--xBgkEEQF16zYyPvw--

