Return-Path: <devicetree+bounces-11349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3CD7D5506
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:15:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4D1A1B20E91
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5A8330CE1;
	Tue, 24 Oct 2023 15:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XftoKzKT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F702C84D
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:15:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34918C433C8;
	Tue, 24 Oct 2023 15:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698160522;
	bh=u5iInjVkFqq6twQIGSCee/Oz/tW7nBGer/lK20D31Xc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XftoKzKT+DVIsn5Nm/xOuJzt8/Qkfa9WmbjGoB5V/+5y1TdPa7yfNXrrrUrW5eURv
	 wQ+OhD2YnANDzgsnjDbGI/99Gw11uoXTQrMeXAQqg6ryM6YAlUYnlPSt/ouxJoUaJj
	 YtRNyNlcoQGvTmPJwFRgThCZW6vB0Pp+aQ4C2Bn1oP7Qg132F4b8Xr96dfCtW2vQQc
	 4BNAYIWJUgq8LeBqzfnjztGsvHS6fAnZnYbz81dxPiTXC6dYRf1SpcFOfqERyb/WBa
	 bXYYS0pwFfYlMbgl/mkCN34aShWq1YQvJcsRNj7Jt9a1TgwB4+Mhdp0WDrLe5KtAZR
	 xKV2kU/+G8Khw==
Date: Tue, 24 Oct 2023 16:15:16 +0100
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
Subject: Re: [PATCH 1/6] dt-bindings: arm64: dts: mediatek: Add
 mt8183-kukui-katsu
Message-ID: <20231024-reenact-wildfowl-de6575bbe6f6@spud>
References: <20231024000724.57714-1-hsinyi@chromium.org>
 <20231024000724.57714-2-hsinyi@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IXfQT/WBQHW6S1aX"
Content-Disposition: inline
In-Reply-To: <20231024000724.57714-2-hsinyi@chromium.org>


--IXfQT/WBQHW6S1aX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 05:02:24PM -0700, Hsin-Yi Wang wrote:
> Add katsu and katsu sku38 which uses different audio codec.
>=20
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Docume=
ntation/devicetree/bindings/arm/mediatek.yaml
> index a5999b3afc35..fe8c488a3207 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -235,6 +235,12 @@ properties:
>          items:
>            - const: google,kappa
>            - const: mediatek,mt8183
> +      - description: Google Katsu (ASUS Chromebook Detachable CZ1)
> +        items:
> +          - enum:
> +              - google,katsu
> +              - google,katsu-sku38

This seems a little odd - does the non sku38 not have an sku of its own?

> +          - const: mediatek,mt8183
>        - description: Google Kodama (Lenovo 10e Chromebook Tablet)
>          items:
>            - enum:
> --=20
> 2.42.0.758.gaed0368e0e-goog
>=20

--IXfQT/WBQHW6S1aX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTffhAAKCRB4tDGHoIJi
0iYxAQCeo78+GzbLQpTjP3HNRYuhl6l/m0VHJ1VoN5LPcGxlrgEAtbghA9EB30g5
XFskjU5z+WJ6EBfh7yse/wqNH8YRPgk=
=0wSh
-----END PGP SIGNATURE-----

--IXfQT/WBQHW6S1aX--

