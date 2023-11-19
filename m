Return-Path: <devicetree+bounces-16922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CF07F068A
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 14:43:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1923B1F2208C
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 13:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 415AA11CA1;
	Sun, 19 Nov 2023 13:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBgH0TYw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EC210A22
	for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 13:43:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21239C433C8;
	Sun, 19 Nov 2023 13:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700401415;
	bh=Ykhh83S0xts5mnucfZ61RXaL6imVnzM3vTSGFUWTsa4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mBgH0TYwUMqPo6tZdkH+jYPvQ2mIcW8dvziUL8qxKahJ6syPgFV+fv+Rglv6l7Lcg
	 S8WhxfhryWuSjM7vAWlGDZIai0LdYjdYO5g6o4q9PHSRVJmTwEL7znjOA6Vv8HVIXw
	 3Tw7/Xa9DN4R7sjcGnFM79xx9QDeJsL6W256xcQ6PNXw1wt+8aSpfzf1guZ3xj3qiL
	 wkxT9IGAsXD99aYfaterIoN5gZQAOMMK+pFXJOslpMCqhp6keXI3VbwXOYwqHvh0eZ
	 oU94WN/djsPa8DX+Lg+/i/BAU4vfYM2tuG4MCjbuJH9/a++T95txhRmYUyxoMWjN/O
	 RnipX/RgBAvqA==
Date: Sun, 19 Nov 2023 13:43:29 +0000
From: Conor Dooley <conor@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?iso-8859-1?Q?N=EDcolas_F_=2E_R_=2E_A_=2E?= Prado <nfraprado@collabora.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Bernhard =?iso-8859-1?Q?Rosenkr=E4nzer?= <bero@baylibre.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 2/3] dt-bindings: arm64: dts: mediatek: Add Acelink
 EW-7886CAX access point
Message-ID: <20231119-jazz-wobble-6ff4985b1bf0@spud>
References: <20231117104315.9718-2-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="A6mvgtPE8mST9StS"
Content-Disposition: inline
In-Reply-To: <20231117104315.9718-2-zajec5@gmail.com>


--A6mvgtPE8mST9StS
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 17, 2023 at 11:43:14AM +0100, Rafa=C5=82 Mi=C5=82ecki wrote:
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>=20
> Acelink EW-7886CAX is an MT7986A (AKA Filogic 830) based access point.
>=20
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Docume=
ntation/devicetree/bindings/arm/mediatek.yaml
> index a5999b3afc35..cfdd3317edda 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -84,6 +84,7 @@ properties:
>            - const: mediatek,mt7629
>        - items:
>            - enum:
> +              - acelink,ew-7886cax
>                - bananapi,bpi-r3
>                - mediatek,mt7986a-rfb
>            - const: mediatek,mt7986a
> --=20
> 2.35.3
>=20

--A6mvgtPE8mST9StS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVoRAQAKCRB4tDGHoIJi
0qibAP4nkr3gB60ji3RyS1MslpWLnKXqtCKvKSqNZX/SAsFg+gD/fl+6b2xL4ByG
u6k6OrAceh9G/2CLup3rwZX0wSf+5g4=
=rrzj
-----END PGP SIGNATURE-----

--A6mvgtPE8mST9StS--

