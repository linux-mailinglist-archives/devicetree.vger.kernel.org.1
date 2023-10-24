Return-Path: <devicetree+bounces-11350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F60D7D553C
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:17:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C834F281B5E
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D17A321A8;
	Tue, 24 Oct 2023 15:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byMvMN9h"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E2E32C69
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:17:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F636C433B7;
	Tue, 24 Oct 2023 15:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698160641;
	bh=iUIoeX8BN34NwWD9hBWLO7g5NpDyH+v6HeWwgzPOy1E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=byMvMN9h5ae0wl3zjeJQma1pcFbfadVQvDGAkqoUOPfHHvmG4EL3v8oWEFwTPrtu6
	 +AiSAPhNwqFVuxcudaq65lC5m+kBTLfhYVVRMFT1EgjKkpI27KImRl9dvHcaMQ72TI
	 fiUN6V3RuxvVnpGFkL90fIYO+qplqiQPcNDi5U5r/04EmKypC/Z+pyYOYmqBJiRq4r
	 t4DWTSmLBVZOUB/uG4PVfT7kgLUu49q/khKuE9nJHLd7xxvDOKyce1WCcQoGjMrFa/
	 E3LYkFbzSbg+lol0f252T8LQACPfLnR12gkuy9Dyk1LuN3K1yWe+RA9/W/koStD9cN
	 9gjdGoMXQANcw==
Date: Tue, 24 Oct 2023 16:17:16 +0100
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
Subject: Re: [PATCH 3/6] dt-bindings: arm64: dts: mediatek: Add
 mt8183-kukui-jacuzzi-makomo
Message-ID: <20231024-bobbed-although-06f341259ebb@spud>
References: <20231024000724.57714-1-hsinyi@chromium.org>
 <20231024000724.57714-4-hsinyi@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kghOtZTw0vsKrKkb"
Content-Disposition: inline
In-Reply-To: <20231024000724.57714-4-hsinyi@chromium.org>


--kghOtZTw0vsKrKkb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 05:02:26PM -0700, Hsin-Yi Wang wrote:
> Add makomo sku0 and sku1 which uses different audio codec.
>=20
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Docume=
ntation/devicetree/bindings/arm/mediatek.yaml
> index fe8c488a3207..b131e0bdbf01 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -250,6 +250,18 @@ properties:
>                - google,kodama-sku32
>            - const: google,kodama
>            - const: mediatek,mt8183
> +      - description: Google Makomo (Lenovo 100e Chromebook 2nd Gen MTK 2)
> +        items:
> +          - const: google,makomo-rev4-sku0
> +          - const: google,makomo-rev5-sku0

With these bindings, how does one describe a makomo-rev5-sku0?
What you have here is only suitable for describing the makomo-rev4-sku0.

Cheers,
Conor.

> +          - const: google,makomo
> +          - const: mediatek,mt8183
> +      - description: Google Makomo (Lenovo 100e Chromebook 2nd Gen MTK 2)
> +        items:
> +          - const: google,makomo-rev4-sku1
> +          - const: google,makomo-rev5-sku1
> +          - const: google,makomo
> +          - const: mediatek,mt8183
>        - description: Google Willow (Acer Chromebook 311 C722/C722T)
>          items:
>            - enum:
> --=20
> 2.42.0.758.gaed0368e0e-goog
>=20

--kghOtZTw0vsKrKkb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTff/AAKCRB4tDGHoIJi
0vryAP0SoSHM6UtxRF69U0/a77j0hR/fdNme03q3wM+4GTwriQEAq+HB9Lceez7W
imKIWRG7GVNAo27CEJYOSyZEkYP9egQ=
=fwLS
-----END PGP SIGNATURE-----

--kghOtZTw0vsKrKkb--

