Return-Path: <devicetree+bounces-15981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7288F7EC60C
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:43:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B1D228155D
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 14:43:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 712C32C1BD;
	Wed, 15 Nov 2023 14:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfnklic2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC443EA8D
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 14:42:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46C35C433C9;
	Wed, 15 Nov 2023 14:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700059335;
	bh=/VnhW6XNAlYbmraAXUOBLMr1ny5iRNfsObxNKJlK2PM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cfnklic2zj6BLXDMDv5AHq11ZtFjt6/Y4W3IXz3fhfAyvXj/Cyr6LQ7XKQ6BqhV42
	 QnbLjD4Fo+QNU3qurTgV/2JhzKISXC/eaUZb3ZameW1sC+VgCweeXblVr4KZO9WzPq
	 nh8z2U5b6W2a8zCYCMVK3iYdqV813Du8dgC35b/AoPtLxFuAzUAA2fxER3Q/VDg0o4
	 C3IBNvhYj3JZwnsEtuU8jVF+MaJzw3a+CRi+VhcaT2jBYKl/emWQZNtjm9ncFR8wb1
	 bCCfDXmQK0vZFd6BW3YFXoU9oZgLvwK6Yo6Fbx+OH1FGAM/VxskLK93lpZAlQ8rdrF
	 7Rp6YLtlk7pfQ==
Date: Wed, 15 Nov 2023 14:42:11 +0000
From: Conor Dooley <conor@kernel.org>
To: Rui Zhou <zhourui@huaqin.corp-partner.google.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	angelogioacchino.delregno@collabora.com, perex@perex.cz,
	allen-kh.cheng@mediatek.com, kuninori.morimoto.gx@renesas.com,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v5 1/3] ASoC: dt-bindings: mt8188-mt6359: add es8326
 support
Message-ID: <20231115-amount-unashamed-ba70aa85b6a9@squawk>
References: <20231115090903.578438-1-zhourui@huaqin.corp-partner.google.com>
 <20231115090903.578438-2-zhourui@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q1LKci4Ma36W9hfw"
Content-Disposition: inline
In-Reply-To: <20231115090903.578438-2-zhourui@huaqin.corp-partner.google.com>


--q1LKci4Ma36W9hfw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 15, 2023 at 05:09:01PM +0800, Rui Zhou wrote:
> Add compatible string "mediatek,mt8188-es8326" to support new board
> with es8326 codec.
>=20
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Rui Zhou <zhourui@huaqin.corp-partner.google.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Please pick up =E3=81=B1cks from previous submissions:
https://lore.kernel.org/all/20231108-handmade-cadmium-97ff07964b02@spud/

Cheers,
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

--q1LKci4Ma36W9hfw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVTYvwAKCRB4tDGHoIJi
0utUAP9yU8NM6xdQfcRRp17w+Sf3IPjMeqQeliXk2oT/VoqF9gD8CrphaoCuTs39
/rOAA0Rl1hqA1krQauB6VANmeuAEgQo=
=FyXQ
-----END PGP SIGNATURE-----

--q1LKci4Ma36W9hfw--

