Return-Path: <devicetree+bounces-11906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0E07D6EB6
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:30:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 62661281CB4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:30:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 069262629A;
	Wed, 25 Oct 2023 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXJ+FFCH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0AB2AB2B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:30:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29B28C433C7;
	Wed, 25 Oct 2023 14:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698244233;
	bh=lr39/wvfdsgFz2ykoziXbV5ILQut0awwzo/5ooAAuH4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jXJ+FFCHnHoDyLNSf9Wrcj4qpKosI+9oZBUIFo6fG3AOO6IyTsiddHoSW/+mLGoR4
	 hNDKziEXxpVWNvQQNHjSc4iMleJ2oZn5g2WuntdQlOpmRQ8iAZTgRD6pN9D2RBVq7u
	 yVnOE08TQpNcjmGfCcsQSaoPOFnqRC5eS/WdSDEz8+TQ4yWhlsqJumswHRVJx/49fA
	 MHJBolQxrq9gw7Dk8y9JPSpRreKv5rEb8NJZMrNFbXSNAWsGw82qhF6sWpYsSBqiBj
	 Y11KCsAmjfjj/MlaO1KUp7bFBXdcDC6ELW7ODav+DXXIQAxGjzcUUIDRyCU2rCOcI6
	 BqljS79/EGixQ==
Date: Wed, 25 Oct 2023 15:30:27 +0100
From: Conor Dooley <conor@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	sboyd@kernel.org, abelvesa@kernel.org, kernel@pengutronix.de,
	festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V3 1/2] dt-bindings: clock: support i.MX93 Analog clock
 module
Message-ID: <20231025-segment-musky-82f53da16355@spud>
References: <20231025072242.1134090-1-peng.fan@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EeDSF8jDa9T4gkBI"
Content-Disposition: inline
In-Reply-To: <20231025072242.1134090-1-peng.fan@oss.nxp.com>


--EeDSF8jDa9T4gkBI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 25, 2023 at 03:22:41PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
>=20
> Support i.MX93 Analog module which produces PLL and OSC for Clock
> Controller Module
>=20
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

> ---
> V3:
>  Rename back to fsl,imx93-anatop.yaml
>=20
> V2:
>  Update subject and commit, rename file to fsl,imx93-analog.yaml
>=20
>  .../bindings/clock/fsl,imx93-anatop.yaml      | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/fsl,imx93-ana=
top.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/clock/fsl,imx93-anatop.yam=
l b/Documentation/devicetree/bindings/clock/fsl,imx93-anatop.yaml
> new file mode 100644
> index 000000000000..5d696ccc8986
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/fsl,imx93-anatop.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/fsl,imx93-anatop.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX93 Analog Clock Module
> +
> +maintainers:
> +  - Peng Fan <peng.fan@nxp.com>
> +
> +description: |
> +  NXP i.MX93 Analog module which produces PLL and OSC to Clock Controller
> +  Module.

As I mentioned before, the module contains a PLL and an oscillator, it
doesn't produce them.

Cheers,
Conor.

--EeDSF8jDa9T4gkBI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTkmgwAKCRB4tDGHoIJi
0l8cAQDirH9H3GdfDH5gGP6jQvcsOLt0yBvfiYGUwAo686T1xgD/cfR8QwOElCCU
31Xyr1OYTEXA0jDFP3TuYSIfOe1VYw0=
=4qGi
-----END PGP SIGNATURE-----

--EeDSF8jDa9T4gkBI--

