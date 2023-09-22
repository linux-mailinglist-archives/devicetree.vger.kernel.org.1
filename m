Return-Path: <devicetree+bounces-2557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B81AE7AB516
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 17:48:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 0E098B209C7
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 15:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D63C41222;
	Fri, 22 Sep 2023 15:48:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13072E65E
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 15:48:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 015D2C433C7;
	Fri, 22 Sep 2023 15:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695397699;
	bh=8w9Ujvja964fuDGqWLgM5V4eKnCcfYA0NVGZFXl15sQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p5HBOrsKFey9p3dAJ7MRKC4083LY/P8a1poYb+aB+21SUWlseDbNpfcTHVARIsvzP
	 bvAHEgggwV3hJIjwvIKjTZcqqlfuXL2McNpwAQNu0CMy6lEcv9fk5RdJ506CrBpyzN
	 eC9qTCgvxVSLfBwR6cU+X3FK88hzghXxWn9CAA4uuu9GjBNURsbcbsGCiZycJsoQ3U
	 XZzBV1p7lDlrtSDkaqjt3ddSfG0Bfnju60iQas+EBypsB+Wtfb0vKfCaze/24k3lcz
	 7tw6xUPNREoIda8qU4Goa2vQfK4LfgcE2trgVMVwoedmM2pt/kVUaCvg/BA45mEJZR
	 T1AKzKqMHNzNA==
Date: Fri, 22 Sep 2023 16:48:13 +0100
From: Conor Dooley <conor@kernel.org>
To: Moudy Ho <moudy.ho@mediatek.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 11/16] dt-bindings: display: mediatek: aal: add
 compatible for MT8195
Message-ID: <20230922-copilot-blinks-9792fbb03f98@spud>
References: <20230922072116.11009-1-moudy.ho@mediatek.com>
 <20230922072116.11009-12-moudy.ho@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jaBhXNzcCjVRYW/j"
Content-Disposition: inline
In-Reply-To: <20230922072116.11009-12-moudy.ho@mediatek.com>


--jaBhXNzcCjVRYW/j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 22, 2023 at 03:21:11PM +0800, Moudy Ho wrote:
> Add a compatible string for the AAL block in MediaTek MT8195 that
> is controlled by MDP3.
>=20
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  .../devicetree/bindings/display/mediatek/mediatek,aal.yaml       | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
aal.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.=
yaml
> index 7fd42c8fdc32..b4c28e96dd55 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
> @@ -24,6 +24,7 @@ properties:
>        - enum:
>            - mediatek,mt8173-disp-aal
>            - mediatek,mt8183-disp-aal
> +          - mediatek,mt8195-mdp3-aal
>        - items:
>            - enum:
>                - mediatek,mt2712-disp-aal
> --=20
> 2.18.0
>=20

--jaBhXNzcCjVRYW/j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQ23PQAKCRB4tDGHoIJi
0j37AQC9UwbCC8s2QULJCGVr5HCywVwaJT5fLfW7JjIum7PnRwD9FhdX5hZHQxDX
q3jxn4X/g9f90EQyLRTLqwpHbwF3eA4=
=kIb2
-----END PGP SIGNATURE-----

--jaBhXNzcCjVRYW/j--

