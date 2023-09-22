Return-Path: <devicetree+bounces-2555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D755B7AB4F7
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 17:43:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id D02D21C20964
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 15:43:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52A864120E;
	Fri, 22 Sep 2023 15:43:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431C41EA9A
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 15:43:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51D32C433CA;
	Fri, 22 Sep 2023 15:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695397400;
	bh=2D8Z7v2qzLl47ly62ZoxkjJCQb0vImD7WRAPF4T+c1E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OJJda26xUSaI7AbpBmjodCtUgBE+/4MgwsXQGUfMN2zwte4LsM3H3WOt0ofldycqn
	 22w2jIpnSjNrhdajZ/k0aaWR2KJJN5z6KUgIk7Gvk/sBk7IFa9gBlzBa8QB1jEO6+R
	 okohs077D4CbpubChXzv3XARmcP0H64paQszEWXI1q0ZjTDi2n93rRp41vkJyE4o9c
	 xJdAlhHzcFKWk+ypfN41s3bix/bqpED58IRSQOWdTvLr1ApfN/VMyiw3RcnQ7TE+sL
	 BhkoScCWTBCPa7MNyR/oIOWWlt39hUjG5s8oX8P5kgZZ1VbjleQm/WhdmXsg8vlEZN
	 Que3U44C/ryaA==
Date: Fri, 22 Sep 2023 16:43:15 +0100
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
Subject: Re: [PATCH v6 04/16] dt-bindings: media: mediatek: mdp3: rename to
 MT8183 RDMA
Message-ID: <20230922-dividing-trousers-58395562a80e@spud>
References: <20230922072116.11009-1-moudy.ho@mediatek.com>
 <20230922072116.11009-5-moudy.ho@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4Y4vtjwYzjnHR6mE"
Content-Disposition: inline
In-Reply-To: <20230922072116.11009-5-moudy.ho@mediatek.com>


--4Y4vtjwYzjnHR6mE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 22, 2023 at 03:21:04PM +0800, Moudy Ho wrote:
> The file was renamed to support future scalability in response to
> the changes in general properties separation.
>=20
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>

Same with this, not all too sure why this is a commit of its own.

> ---
>  .../{mediatek,mdp3-rdma.yaml =3D> mediatek,mdp3-rdma-8183.yaml}   | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>  rename Documentation/devicetree/bindings/media/{mediatek,mdp3-rdma.yaml =
=3D> mediatek,mdp3-rdma-8183.yaml} (96%)
>=20
> diff --git a/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.y=
aml b/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma-8183.yaml
> similarity index 96%
> rename from Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.ya=
ml
> rename to Documentation/devicetree/bindings/media/mediatek,mdp3-rdma-8183=
=2Eyaml
> index 0539badc9821..74a1eebf668d 100644
> --- a/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml
> +++ b/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma-8183.yaml
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
> -$id: http://devicetree.org/schemas/media/mediatek,mdp3-rdma.yaml#
> +$id: http://devicetree.org/schemas/media/mediatek,mdp3-rdma-8183.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
> =20
>  title: MediaTek MT8183 Read Direct Memory Access
> --=20
> 2.18.0
>=20

--4Y4vtjwYzjnHR6mE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQ22EgAKCRB4tDGHoIJi
0hezAP9q+TcUrIoWLs39/7VTOK8gnCa34WnmBN2JLB3/wXifJwD9FRCsU+pP21m0
v50WOhjJOqVPaEeX/UEApSfWeT7RSAY=
=LIPX
-----END PGP SIGNATURE-----

--4Y4vtjwYzjnHR6mE--

