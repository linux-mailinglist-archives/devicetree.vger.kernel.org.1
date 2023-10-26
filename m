Return-Path: <devicetree+bounces-12195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BBD7D84C9
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:32:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 914DC1C20EF6
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:32:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6ABD2DF9F;
	Thu, 26 Oct 2023 14:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EY04TEBY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B871A2EAF7
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:32:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 639AAC433C8;
	Thu, 26 Oct 2023 14:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698330762;
	bh=la2sdiSTispFY+4HPux+4oDSduULbv+AF7/FuOI7xbo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EY04TEBYA8PRSw4Eamm0phM3Jxw8mDC1ZlanMbqJlsEkV0Q6w2aVv0cXbs9/km+4Z
	 +HGo9KaK9Mbv0sIERcukmDadDda8I1lMxycQgRXDzpkRGJJjOCC/8XJc0MJQpycpHD
	 xLL80r0pLeqmQu89w/ScIsaVF6jVZifmEAyHxnqCVY9HvVpJBle4P8MotkRZkh7YnN
	 Fv9JNdA6MLWveMS6xOpCO/KCaj8FGIsNLDgDev13j4hHaL7ThPkYuuJ3lgJ4LtWbD5
	 rV2p/+fnmlxdniJ1dEgKjSubCqcHUMPZpGGBicODDn6f5A8epRV3W2rCnxVR0HBWLx
	 oitHzxRd0JX/g==
Date: Thu, 26 Oct 2023 15:32:37 +0100
From: Conor Dooley <conor@kernel.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?iso-8859-1?Q?N=EDcolas_F_=2E_R_=2E_A_=2E?= Prado <nfraprado@collabora.com>,
	Bernhard =?iso-8859-1?Q?Rosenkr=E4nzer?= <bero@baylibre.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v3 2/7] dt-bindings: arm64: dts: mediatek: Add
 mt8183-kukui-katsu
Message-ID: <20231026-afford-suitor-18b4f0eea371@spud>
References: <20231025215517.1388735-1-hsinyi@chromium.org>
 <20231025215517.1388735-3-hsinyi@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xhWZzE7Zdu2mfZah"
Content-Disposition: inline
In-Reply-To: <20231025215517.1388735-3-hsinyi@chromium.org>


--xhWZzE7Zdu2mfZah
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yo,

For your subject, drop the "dts: ", that as this is a patch for a
dt-binding, not a devicetree source file.

On Wed, Oct 25, 2023 at 02:48:44PM -0700, Hsin-Yi Wang wrote:
> Add katsu sku32 and sku38 which uses different audio codec.
>=20
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Docume=
ntation/devicetree/bindings/arm/mediatek.yaml
> index a5999b3afc35..4fe58cfe6f1b 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -235,6 +235,13 @@ properties:
>          items:
>            - const: google,kappa
>            - const: mediatek,mt8183
> +      - description: Google Katsu (ASUS Chromebook Detachable CZ1)
> +        items:
> +          - enum:
> +              - google,katsu-sku32
> +              - google,katsu-sku38
> +          - const: google,katsu
> +          - const: mediatek,mt8183

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

>        - description: Google Kodama (Lenovo 10e Chromebook Tablet)
>          items:
>            - enum:
> --=20
> 2.42.0.758.gaed0368e0e-goog
>=20

--xhWZzE7Zdu2mfZah
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTp4hAAKCRB4tDGHoIJi
0gCAAQDE1tc7reAgagQx6S0aLYjNsM/zxnvnjgoqFHY1D/3mVwD+NU8+R7xn8F0V
7bAmx7CUZpdLqiUJ8RpMAUiU5+uPswE=
=tke3
-----END PGP SIGNATURE-----

--xhWZzE7Zdu2mfZah--

