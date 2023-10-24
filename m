Return-Path: <devicetree+bounces-11348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5BA7D54FE
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:13:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DCB3F281A63
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:13:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18B6D2FE0D;
	Tue, 24 Oct 2023 15:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgQwQxCp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1522C84D
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:13:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A970C433C7;
	Tue, 24 Oct 2023 15:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698160425;
	bh=kz+EcQENOMM9JFxNzp/7U0xgoKM7XMrQN9wRluSh3nI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fgQwQxCpxGgu/+NEqBmzfVjiFRkfueXgyxvkR2B+iJe7BZ5X2cBCVjS6FL4ZY+eQH
	 4xXflAg4lZWHjtq2e3w3E5EK+lqlGD/NtU2+HU8CC0Lb6wmW6DwwdMgxEfyMxqu7gB
	 RICHchKMs5I2qyPPqp/H930fnNaknkhAQ0q2jTdckm/tFQRkjcLrR1/SC97LuUIwAa
	 4OYG4ZW0SVXhsuo1A6LB7wo6zG/ZkWivtobA5e9SC7TXWDMP8HbGSTK8lwsJo5zqCj
	 vCaRdWsSEhHc4xZSdMGAc7RNUmC90ti+IzB5NBAFsuUlIXhfdg920uZuObs6ZNvY2v
	 uMT7xk6rpU9Fg==
Date: Tue, 24 Oct 2023 16:13:40 +0100
From: Conor Dooley <conor@kernel.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?iso-8859-1?Q?N=EDcolas_F_=2E_R_=2E_A_=2E?= Prado <nfraprado@collabora.com>,
	Bernhard =?iso-8859-1?Q?Rosenkr=E4nzer?= <bero@baylibre.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 5/6] dt-bindings: arm64: dts: mediatek: Add
 mt8183-kukui-jacuzzi-pico
Message-ID: <20231024-relearn-engraver-59da32127a9f@spud>
References: <20231024000724.57714-1-hsinyi@chromium.org>
 <20231024000724.57714-6-hsinyi@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6erb5bK3QgxEzTmd"
Content-Disposition: inline
In-Reply-To: <20231024000724.57714-6-hsinyi@chromium.org>


--6erb5bK3QgxEzTmd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 05:02:28PM -0700, Hsin-Yi Wang wrote:
> Add pico (sku1) and pico6 (sku2).
>=20
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Docume=
ntation/devicetree/bindings/arm/mediatek.yaml
> index b131e0bdbf01..6bb1d80dd4eb 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -262,6 +262,13 @@ properties:
>            - const: google,makomo-rev5-sku1
>            - const: google,makomo
>            - const: mediatek,mt8183
> +      - description: Google Pico (Acer Chromebook Spin 311)
> +        items:
> +          - enum:
> +              - google,pico-sku1
> +              - google,pico-sku2
> +          - const: google,pico
> +          - const: mediatek,mt8183
>        - description: Google Willow (Acer Chromebook 311 C722/C722T)
>          items:
>            - enum:
> --=20
> 2.42.0.758.gaed0368e0e-goog
>=20
>=20

--6erb5bK3QgxEzTmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTffJAAKCRB4tDGHoIJi
0ptJAP938TCZbnBe2uIS4gmeLyq8QdFXbFTndMGiYpUQWmmqwAD+MkL42LN819op
G2JkDkUW5pEkttfORsYdu/+hHyZktA4=
=Heqq
-----END PGP SIGNATURE-----

--6erb5bK3QgxEzTmd--

