Return-Path: <devicetree+bounces-11051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 482117D3DED
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:38:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DBE36B20D26
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:38:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11B3E210F3;
	Mon, 23 Oct 2023 17:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZcoCvRU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E912B20B3E
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:38:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A5BDC433C7;
	Mon, 23 Oct 2023 17:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698082716;
	bh=eZlZ0RSR8neaBBF+HvzJKthBOQ2i00NRtc83TDbgb/M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GZcoCvRUwfcmv7oI3ZoKRQE+hLDNpdANz8/BDEmtdrSB2ioRBIq6ZoJEeGHZTPrQ6
	 gnxXS1y2gCKIIOUH86xYNxb6Cw1d0qkGZ6JYlMefFOdOgsiepFUfajPb+0UdftD+ao
	 e7EK2ytUx3z+ij79CECne+/7u91MfFH+FZORhv7ytIhrgJPcSFQ8MwD+wAyWV5nbOP
	 FqKH0wpAQmjLNmJr84u1AgLEWBQFaKtk+m+dL+bvfW7mCQjhSpwgNHTXV80gLlneKT
	 1nhCgO0oxC5wcJMmyCa1r/z2anONnpe0U+eedfEA7GRxCX1i7O3rvm7G66ryiZ3gCP
	 B4q/ik75qZn6A==
Date: Mon, 23 Oct 2023 18:38:30 +0100
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
Subject: Re: [PATCH 11/18] dt-bindings: pwm: add power-domains property
Message-ID: <20231023-oppose-tamper-36d526ece102@spud>
References: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
 <20231023-display-support-v1-11-5c860ed5c33b@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cS4xr49HXM/FpVea"
Content-Disposition: inline
In-Reply-To: <20231023-display-support-v1-11-5c860ed5c33b@baylibre.com>


--cS4xr49HXM/FpVea
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yo,

On Mon, Oct 23, 2023 at 04:40:11PM +0200, Alexandre Mergnat wrote:
> According to the Mediatek datasheet, the display PWM block has a power
> domain.

Datasheet for which soc? The mt8173? Is it valid for all devices in this
binding?

Cheers,
Conor.

>=20
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>  Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml=
 b/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
> index 153e146df7d4..efe0cacf55b7 100644
> --- a/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
> +++ b/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
> @@ -53,6 +53,12 @@ properties:
>        - const: main
>        - const: mm
> =20
> +  power-domains:
> +    maxItems: 1
> +    description: A phandle and PM domain specifier as defined by binding=
s of
> +      the power controller specified by phandle. See
> +      Documentation/devicetree/bindings/power/power-domain.yaml for deta=
ils.
> +
>  required:
>    - compatible
>    - reg
> @@ -67,6 +73,7 @@ examples:
>      #include <dt-bindings/interrupt-controller/arm-gic.h>
>      #include <dt-bindings/clock/mt8173-clk.h>
>      #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/power/mt8173-power.h>
> =20
>      pwm0: pwm@1401e000 {
>          compatible =3D "mediatek,mt8173-disp-pwm";
> @@ -75,4 +82,5 @@ examples:
>          clocks =3D <&mmsys CLK_MM_DISP_PWM026M>,
>                   <&mmsys CLK_MM_DISP_PWM0MM>;
>          clock-names =3D "main", "mm";
> +        power-domains =3D <&spm MT8173_POWER_DOMAIN_MM>;
>      };
>=20
> --=20
> 2.25.1
>=20

--cS4xr49HXM/FpVea
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTavlQAKCRB4tDGHoIJi
0v6MAP9Wb3x+52wloDaXjDqYEnoDpprt4+MalmIoclgMkfOMIQEAhpm3TcXRGiJp
BzZXQcz8bAvgaFDyy5KvWovrZlrFSgE=
=4JSZ
-----END PGP SIGNATURE-----

--cS4xr49HXM/FpVea--

