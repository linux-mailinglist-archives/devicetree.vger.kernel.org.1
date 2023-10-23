Return-Path: <devicetree+bounces-11021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E96467D3D04
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:04:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 265D61C208A5
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F8CF1CA80;
	Mon, 23 Oct 2023 17:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDyPGJr3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1DB1BDCD
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:04:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92865C433C7;
	Mon, 23 Oct 2023 17:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698080643;
	bh=Z9iY3lsaZZ0k2Yw6281j4HRYsuuLhnj+PAotK0K3VDc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PDyPGJr3cK+jKb5Cq6EVOd3FAvj4jLd1F5V5I2zaSliCU4SDbKApT9Rn3rgvbcB/e
	 h96zO1DsiEGno/PSW6UhjDGACMyFRcts7xpOnFhKLV24YqpawYWsdPdFRBT571oEMZ
	 IrPmsb6HRdJTq6n+Uo836v53fH/5gKP0iIFMPA07msGpOWiK8AWIQCoUZlyWW3uKZU
	 a4I1A3mdePhDk5Lb5DHLzXBL4tTlGwxyfeeKf4eIfCyNzdv/xppPOA4Ij+9U3pc+Dt
	 +ISwR95IHhxVQJQntGzb62eA2io51O2nTyxGhxyj6gJbmUC38uTS0jCnBdxWs2kRa0
	 TizIz5NDcMF+w==
Date: Mon, 23 Oct 2023 18:03:57 +0100
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
Subject: Re: [PATCH 01/18] dt-bindings: display: mediatek: aal: add binding
 for MT8365 SoC
Message-ID: <20231023-sharpness-uplifting-634566c6b4ff@spud>
References: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
 <20231023-display-support-v1-1-5c860ed5c33b@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PbLYAkV5QGg0voCF"
Content-Disposition: inline
In-Reply-To: <20231023-display-support-v1-1-5c860ed5c33b@baylibre.com>


--PbLYAkV5QGg0voCF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 04:40:01PM +0200, Alexandre Mergnat wrote:
> Display Adaptive Ambient Light for MT8365 is compatible with another SoC.

> Then, add MT8365 binding along with MT8183 SoC.

s/binding/compatible/, here and in the subject.

Cheers,
Conor.

>=20
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>  Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml | 1=
 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
aal.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.=
yaml
> index 7fd42c8fdc32..840b48a878ca 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
> @@ -35,6 +35,7 @@ properties:
>                - mediatek,mt8188-disp-aal
>                - mediatek,mt8192-disp-aal
>                - mediatek,mt8195-disp-aal
> +              - mediatek,mt8365-disp-aal
>            - const: mediatek,mt8183-disp-aal
> =20
>    reg:
>=20
> --=20
> 2.25.1
>=20

--PbLYAkV5QGg0voCF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTanfQAKCRB4tDGHoIJi
0tPUAP9cTTvfIBq9I7y7WjmhtsRZbhjBWhdUzs8mmYekmW17xAEAnCJCpDVwVruG
ZkQOxyU76MLSecahlFO14YNh1wBwEAk=
=wX+W
-----END PGP SIGNATURE-----

--PbLYAkV5QGg0voCF--

