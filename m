Return-Path: <devicetree+bounces-11048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 341E77D3DDD
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:35:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D8D21C20939
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:35:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3617C210EA;
	Mon, 23 Oct 2023 17:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdQC8FTf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197AF11720
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:35:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 968CBC433C8;
	Mon, 23 Oct 2023 17:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698082525;
	bh=BPsE2TYkM2613e3ORqfh9B9Y3/8Ij1mb26ewDxwWDzI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TdQC8FTfR0s1jwG1/q5nVOQFCWzWe9Atplf8qpSMQZxZVWLeV1XzpLOsKzwbxb1Gl
	 ZKSiSTpcUdU1cUOBeWKa7HEuE0osGLTKai3sxwHpQCIn9Jkrj72mpZCmGibX/1buPX
	 ftxAOwWqbOb7WCnICbONephB/gX1F9xxrd9DfN/VUKeWYFcfex1utcHsZRpXINPr/q
	 aWmFOTD+4w/ae2LmYNOof7fLzppHYjFIvr3g3/4iRri7GBvkVOkSFWfnTlhPjyLKlw
	 lEME9aGhAeCxFVyyIjixvS6z2Ya1dlzYt1epCdts9EM30NiS2Y7T53zosjjQQsuTvj
	 5a37zQa5EzrJw==
Date: Mon, 23 Oct 2023 18:35:19 +0100
From: Conor Dooley <conor@kernel.org>
To: Alexandre Mergnat <amergnat@baylibre.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Xinlei Lee <xinlei.lee@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-pwm@vger.kernel.org
Subject: Re: [PATCH 12/18] dt-bindings: pwm: add binding for mt8365 SoC
Message-ID: <20231023-punch-gurgle-80608ba40e7d@spud>
References: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
 <20231023-display-support-v1-12-5c860ed5c33b@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9wFKPiotZ+nS4D8K"
Content-Disposition: inline
In-Reply-To: <20231023-display-support-v1-12-5c860ed5c33b@baylibre.com>


--9wFKPiotZ+nS4D8K
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 04:40:12PM +0200, Alexandre Mergnat wrote:
> Display PWM for MT8365 is compatible with MT8183. Then, add MT8365 binding
> along with MT8183 SoC.


Additionally here, for the subject,
"dt-bindings: pwm: mediatek,pwm-disp: add compatible for mt8365 SoC"

Cheers
Conor.

>=20
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>  Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml=
 b/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
> index efe0cacf55b7..e4069bcbf8d5 100644
> --- a/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
> +++ b/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
> @@ -32,6 +32,7 @@ properties:
>                - mediatek,mt8188-disp-pwm
>                - mediatek,mt8192-disp-pwm
>                - mediatek,mt8195-disp-pwm
> +              - mediatek,mt8365-disp-pwm
>            - const: mediatek,mt8183-disp-pwm
> =20
>    reg:
>=20
> --=20
> 2.25.1
>=20

--9wFKPiotZ+nS4D8K
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTau1wAKCRB4tDGHoIJi
0n6KAP401YOndtWBYtrAA9j00NQ1rbaxsQ12/nOOlOHoIE47sgD/dyHbi8nYdivw
3A9/hktb+hRamMtGYKFeqUMDkK7ByAY=
=vkEz
-----END PGP SIGNATURE-----

--9wFKPiotZ+nS4D8K--

