Return-Path: <devicetree+bounces-19336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6FE7FA7C9
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 18:14:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BB761C20BAB
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 17:14:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA1623716A;
	Mon, 27 Nov 2023 17:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fa/wQuX9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEED0288DD
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 17:14:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05BE1C433C7;
	Mon, 27 Nov 2023 17:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701105284;
	bh=94eA5a3oVs1VTguMTV9OICnFtDjCrfp2/1bumD9OBZQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fa/wQuX929+5dckPfYpUstS/A0PYi6ycn5TAH8wdbjF3R0MA8NWtU2JDzQKolgyvt
	 LIdAMaLbIwy2Zu22qZ4AiKrl8xoGIPudfiWX3PEkYFK+QtJlKtkfzTYluMf0QWdGOV
	 rRTYnLkT4j+kxALg0gAOSgRNdV+e0XLBSwO3fFds8seHEL31R3+4wLr/nnS1QEkDFF
	 EnLkTCojnQeygYnmU1SUSfHV50HWG3zRY+jFN0sYWexHhR1217i5PnnTN5KT3Urdo4
	 Ua+TSAMOSCqB4LApFdAHQX6MJDa5+Mr46b8GfdKndENulAzNbrtsz1vXe+k9m+NNO1
	 1ybXs76rFt0fA==
Date: Mon, 27 Nov 2023 17:14:36 +0000
From: Conor Dooley <conor@kernel.org>
To: Roland Hieber <rhi@pengutronix.de>
Cc: Inki Dae <inki.dae@samsung.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: samsung-dsim: Add
 i.MX7D support
Message-ID: <20231127-sessions-publisher-d15b28966646@spud>
References: <20231127-b4-imx7-mipi-dsi-v1-0-7d22eee70c67@pengutronix.de>
 <20231127-b4-imx7-mipi-dsi-v1-1-7d22eee70c67@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="eEkdIYeTY4jIHAux"
Content-Disposition: inline
In-Reply-To: <20231127-b4-imx7-mipi-dsi-v1-1-7d22eee70c67@pengutronix.de>


--eEkdIYeTY4jIHAux
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 27, 2023 at 05:12:28PM +0100, Roland Hieber wrote:
> From: Philipp Zabel <p.zabel@pengutronix.de>
>=20
> Add support for the "fsl,imx7d-mipi-dsim" compatible used on i.MX7D.
>=20
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> ---
>  .../devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml         | =
4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mip=
i-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi=
-dsim.yaml
> index 4ed7a799ba26..e43fec560941 100644
> --- a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.=
yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.=
yaml
> @@ -27,7 +27,9 @@ properties:
>            - fsl,imx8mm-mipi-dsim
>            - fsl,imx8mp-mipi-dsim
>        - items:
> -          - const: fsl,imx8mn-mipi-dsim
> +          - enum:
> +              - fsl,imx7d-mipi-dsim
> +              - fsl,imx8mn-mipi-dsim
>            - const: fsl,imx8mm-mipi-dsim
> =20
>    reg:
>=20
> --=20
> 2.39.2
>=20

--eEkdIYeTY4jIHAux
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWTOfAAKCRB4tDGHoIJi
0gR3AQC/uU0C6yQnjFTOi3VAkiumHD8Z665Xqv9I+8g62eUrFgEAyZ2kzmH3FFHh
D1CWuyb+hcb2UhlGWyV3b4HuLNpq8QQ=
=ysHQ
-----END PGP SIGNATURE-----

--eEkdIYeTY4jIHAux--

