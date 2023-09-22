Return-Path: <devicetree+bounces-2558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A676D7AB518
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 17:49:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 581A428201F
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 15:49:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E95441225;
	Fri, 22 Sep 2023 15:49:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E41E41222
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 15:49:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD083C433C8;
	Fri, 22 Sep 2023 15:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695397760;
	bh=jMjHcug31WE0Bf+Ku26R9S8JCXFscQZH4Akv3KWK0Zw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X/SOWMfNE20zbjcBK/8c3F6O6Fc1na8/hodzZZ6DGFRpmsfAkqnWg/2PfBkUGQDfN
	 t7R+uTAEmxHPA2Ja2+bmUkE0GCtFWPpzaUb/QFDmD2Hde2nKeh/m/QBgzg8B3iYy+Q
	 rYaChEdl1p3tKO3m/aLHWbQ3ifkqxXV2GTIaCy9R9okYWTGdqIsTS6VQYnNPe+fG7D
	 ja508rv2ZxCUTLw7YSs6jk5zGXCPfQxbpE0+CEhxu5i14SfbWDQ/R08ZlVn/MEVmzm
	 4hR1WIFYYlXXRO6OIMq2snh4Nwv9dmlipjE/Ef3qTFtjCkjidtgtihq8ytBApJvYuM
	 Tn1S6OnoXQAJA==
Date: Fri, 22 Sep 2023 16:49:14 +0100
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
Subject: Re: [PATCH v6 12/16] dt-bindings: display: mediatek: color: add
 compatible for MT8195
Message-ID: <20230922-zebra-modify-87ff23c70bb3@spud>
References: <20230922072116.11009-1-moudy.ho@mediatek.com>
 <20230922072116.11009-13-moudy.ho@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4AbnyxYTFcvfDnp5"
Content-Disposition: inline
In-Reply-To: <20230922072116.11009-13-moudy.ho@mediatek.com>


--4AbnyxYTFcvfDnp5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 22, 2023 at 03:21:12PM +0800, Moudy Ho wrote:
> Add a compatible string for the COLOR block in MediaTek MT8195 that
> is controlled by MDP3.
>=20
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,color.yaml     | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
color.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,co=
lor.yaml
> index f21e44092043..b886ca0d89ea 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.y=
aml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.y=
aml
> @@ -26,6 +26,7 @@ properties:
>            - mediatek,mt2701-disp-color
>            - mediatek,mt8167-disp-color
>            - mediatek,mt8173-disp-color
> +          - mediatek,mt8195-mdp3-color

How come this one is a "mdp3" not a "disp"?

>        - items:
>            - enum:
>                - mediatek,mt7623-disp-color
> --=20
> 2.18.0
>=20

--4AbnyxYTFcvfDnp5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQ23egAKCRB4tDGHoIJi
0jeNAQDbS49YRGx3evrS4YI09M9KqM0J+UXzPHF9KB+js6e3qQD+Ivrgl0SwBLae
2UKQyhQwRkwkANvuDlc0Y+I85WBfego=
=zbsi
-----END PGP SIGNATURE-----

--4AbnyxYTFcvfDnp5--

