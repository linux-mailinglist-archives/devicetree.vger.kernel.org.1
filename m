Return-Path: <devicetree+bounces-8534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DFED57C885D
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 17:12:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B11E28121F
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 15:12:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 432AE18E38;
	Fri, 13 Oct 2023 15:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEw1/nod"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2551F37A
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 15:12:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A706CC433C8;
	Fri, 13 Oct 2023 15:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697209941;
	bh=4E09wJEx+hUjRW7ZMgCIOg2Gy6RCgWzCpZcW8uW0hV8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cEw1/nod0VWsOUN96f/HB/xl14XHvv7bs8HaaT9VgRUOIoCZr4Oa8kO+poHc9DIv1
	 /jto6hgFaVnMLq5MlmrXPgdoL9rahdni23v4TZElMiKN+RkaJaVtqclD0v9SfILjM+
	 bMlJtFdwtTOBZrUxWNkPsbSt64bj1Sv/8AuCsCX1wEI0AYD66b23bisvUxoJ2uP6S1
	 OOB5KT1DZ7koGouBAB8r0hvq0IOAawxcFxE1raczRRrel472KVzLjuw90HdRGA3eXr
	 eF1flLrayL6Mrw9vHsyw7N/Lp3KGwM3zOjSGZ4oXGoReV7SzCuZT5QOpgbHBvISlv5
	 hvpIyTL8eqDSA==
Date: Fri, 13 Oct 2023 16:12:17 +0100
From: Conor Dooley <conor@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/9] dt-bindings: arm: mediatek: Add MT8186 Steelix
 Chromebook
Message-ID: <20231013-playoff-unsmooth-2d3c8b30790e@spud>
References: <20231012230237.2676469-1-wenst@chromium.org>
 <20231012230237.2676469-4-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HPmS7nFTK45JskTw"
Content-Disposition: inline
In-Reply-To: <20231012230237.2676469-4-wenst@chromium.org>


--HPmS7nFTK45JskTw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 13, 2023 at 07:02:29AM +0800, Chen-Yu Tsai wrote:
> Add an entry for the MT8186 based Steelix Chromebook, also known as the
> Lenovo 300e Yoga Chromebook Gen 4.
>=20
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Docume=
ntation/devicetree/bindings/arm/mediatek.yaml
> index aa7e6734b336..fafd5e18f640 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -206,6 +206,13 @@ properties:
>            - enum:
>                - mediatek,mt8183-pumpkin
>            - const: mediatek,mt8183
> +      - description: Google Steelix (Lenovo 300e Yoga Chromebook Gen 4)
> +        items:
> +          - enum:
> +              - google,steelix-sku131072
> +              - google,steelix-sku131073

This one makes sense though, because both of the SKUs are in an enum.

> +          - const: google,steelix
> +          - const: mediatek,mt8186
>        - description: Google Tentacruel (ASUS Chromebook CM14 Flip CM1402=
F)
>          items:
>            - const: google,tentacruel-sku262144
> --=20
> 2.42.0.655.g421f12c284-goog
>=20

--HPmS7nFTK45JskTw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSleUQAKCRB4tDGHoIJi
0v6CAQCmJE4kCmgE2JDh5U5bt3i9neQPQ4ZHWoVy6VSjohWS5AD/QfDDtg1Oc4Ft
FZpadGnpde7ftxx7TPCKzl7RQjgdOQw=
=ZIPt
-----END PGP SIGNATURE-----

--HPmS7nFTK45JskTw--

