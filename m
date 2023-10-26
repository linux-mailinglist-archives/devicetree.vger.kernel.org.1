Return-Path: <devicetree+bounces-12200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFF87D84E1
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:36:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B7501C20F45
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A12902EAF3;
	Thu, 26 Oct 2023 14:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6dAbNaZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843EE2EAE2
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:36:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43B05C433C7;
	Thu, 26 Oct 2023 14:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698330971;
	bh=89LzKN6Bnc17ff5e7nVLwTuE1e8rmadHQKzhHCLg/LM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r6dAbNaZSa2xQ89swGgAbwC0Fv8jdHt3WGjPFr6K/sIsY6Afd1wqRN7qOPWl/7zE/
	 ikwc2eHG8J/wB3aAM9sR1iz7W4LqSGEAKlJKvMxBtcgZHtHGxFnn2bczpTUrkLVYwC
	 y+FiWNr3jhPCGANWS2MCg0o26pwF2YblHFREKw1uy5ubSgmF4Mx92byY/3c5pig6C0
	 09hw4oPMW7fouOIXJPxXlKJQ/zZzQ2YLFhLSG3bsDDBZCmAAp+GI2RZvOY6K9mnYPA
	 g78jWAM1oJBONrMI8o8NvFL9FX9vCHCaL9dAYJOneIl83eDemXSfugXCm1PCCP6IXC
	 zfhwGFxeM6qFg==
Date: Thu, 26 Oct 2023 15:36:05 +0100
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
Subject: Re: [PATCH v3 4/7] dt-bindings: arm64: dts: mediatek: Add
 mt8183-kukui-jacuzzi-makomo
Message-ID: <20231026-probiotic-navigate-2d6701939741@spud>
References: <20231025215517.1388735-1-hsinyi@chromium.org>
 <20231025215517.1388735-5-hsinyi@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IgU6HCI/57T5ZEmJ"
Content-Disposition: inline
In-Reply-To: <20231025215517.1388735-5-hsinyi@chromium.org>


--IgU6HCI/57T5ZEmJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 25, 2023 at 02:48:46PM -0700, Hsin-Yi Wang wrote:
> Add makomo sku0 and sku1 which uses different audio codec.
>=20
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> v2->v3: remove rev since match on sku is sufficient.
> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Docume=
ntation/devicetree/bindings/arm/mediatek.yaml
> index 4fe58cfe6f1b..54141b9bb714 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -251,6 +251,13 @@ properties:
>                - google,kodama-sku32
>            - const: google,kodama
>            - const: mediatek,mt8183
> +      - description: Google Makomo (Lenovo 100e Chromebook 2nd Gen MTK 2)
> +        items:
> +          - enum:

> +              - const: google,makomo-sku0
> +              - const: google,makomo-sku1

s/const: // to fix the error reported by the bot.
With that,
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> +          - const: google,makomo
> +          - const: mediatek,mt8183
>        - description: Google Willow (Acer Chromebook 311 C722/C722T)
>          items:
>            - enum:
> --=20
> 2.42.0.758.gaed0368e0e-goog
>=20

--IgU6HCI/57T5ZEmJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTp5VQAKCRB4tDGHoIJi
0vy0AP9MouDUMj2v8vsHucyElvjB8nY6QMM7f8ytkg41iCUwlwEAnMriierZSMC5
TvFhNyExBXPu+Q+FfKi8WdlBZ5+D6QA=
=/KSD
-----END PGP SIGNATURE-----

--IgU6HCI/57T5ZEmJ--

