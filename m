Return-Path: <devicetree+bounces-14540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DF47E55DA
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 12:59:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F66DB20CA9
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 11:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D18D15AC2;
	Wed,  8 Nov 2023 11:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qN5lN1xK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3331F9F3
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 11:59:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB844C433C7;
	Wed,  8 Nov 2023 11:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699444770;
	bh=Jzja2Mof+0lWXfDb3XZKXq4BgHFCEL/naHNS+9btNP4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qN5lN1xKgL4IpT2EWusIzs8ZoTg1UcYPMiF+sRcSwvPSaqyeaUbC82Km/Ivo+Ns6B
	 SxNhhVj0mQCznMaxhqw2P8E8iDBqLNE1+kJcKww9ZhEPrTYUGmOwLleaczTAAyRS8d
	 26uVaoBaCu7Of66Il5I9EUsJgiDk0JTzCfiUdMjpgezJqBoz/UWyHq432xYzZaNmNv
	 kItVqnUd+iZMv9f1tK1y1c8295/Ej0IugQK4s7WI0Cu6hU2Oz+VGMXvDi5txNNpQWh
	 M7MtuY2fDW6dhOeWtmXXevTzpldTIsJEBmnaPPhww88aYNnTfJmJzxowRFFONAJ4vC
	 tFIm2O0NRGZSA==
Date: Wed, 8 Nov 2023 11:59:25 +0000
From: Conor Dooley <conor@kernel.org>
To: Rui Zhou <zhourui@huaqin.corp-partner.google.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	angelogioacchino.delregno@collabora.com, perex@perex.cz,
	allen-kh.cheng@mediatek.com, kuninori.morimoto.gx@renesas.com,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v3 1/3] ASoC: dt-bindings: mt8188-mt6359: add es8326
 support
Message-ID: <20231108-handmade-cadmium-97ff07964b02@spud>
References: <20231108063804.592982-1-zhourui@huaqin.corp-partner.google.com>
 <20231108063804.592982-2-zhourui@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ejeS/PQkh0Imy/GQ"
Content-Disposition: inline
In-Reply-To: <20231108063804.592982-2-zhourui@huaqin.corp-partner.google.com>


--ejeS/PQkh0Imy/GQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 08, 2023 at 02:38:02PM +0800, Rui Zhou wrote:
> Add compatible string "mediatek,mt8188-es8326" to support new board
> with es8326 codec.
>=20
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Rui Zhou <zhourui@huaqin.corp-partner.google.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  .../devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml        | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt63=
59.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.ya=
ml
> index 4c8c95057ef7..f94ad0715e32 100644
> --- a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
> +++ b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
> @@ -15,6 +15,7 @@ allOf:
>  properties:
>    compatible:
>      enum:
> +      - mediatek,mt8188-es8326
>        - mediatek,mt8188-mt6359-evb
>        - mediatek,mt8188-nau8825
>        - mediatek,mt8188-rt5682s
> --=20
> 2.25.1
>=20

--ejeS/PQkh0Imy/GQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUt4HQAKCRB4tDGHoIJi
0tMzAPsHYjHmomKvHzqtYD1sWEE03FkRfLcrqfov3QX91OzexgEA3EVHfj94YdjM
3HOe9QqxmDEmXT0StDd11t60U+8yXQM=
=IDsU
-----END PGP SIGNATURE-----

--ejeS/PQkh0Imy/GQ--

