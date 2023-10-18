Return-Path: <devicetree+bounces-9666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 247D97CDDF8
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 15:55:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D45D9281CB7
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 13:55:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EEA836B00;
	Wed, 18 Oct 2023 13:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7/HpwWu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1048A199B3
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 13:55:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A7D4C433C8;
	Wed, 18 Oct 2023 13:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697637307;
	bh=/Sv0eOvNr/HwW00lGx+jhbfIdcv4vyyP3U54Xc2eXGc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C7/HpwWuR4SUo4Y+qVg8AU2FaI9eKet4JwUXb4Nb+u3Ia0b3nz1SZjgDpY8aQzP18
	 iOljF7cN5/etmdf/tyWNy9jqWgBotLys3J1eOQR0qBX6IiETzPXq9nK7eIZ3uJgsqq
	 N+mkSsJ8etXHEV3+tkplGEo1F2gr2bALs2UCEHTZWvNg3vRLZEn7xeVig51Q0163HJ
	 4mi0mqgqsogxasuDjsRbrNnpHQbyxTSLjJ1QOrwPftuqmYBLhqMQS2wNXK4YFkojon
	 XArbX7TJqUY1a5ZWRxgckNPhACmx3KSanpvdVuSf8Vsx9JMpJc+V+f6pyQDa/D/2rr
	 QnZGZwuURbgRA==
Date: Wed, 18 Oct 2023 14:55:02 +0100
From: Conor Dooley <conor@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	sboyd@kernel.org, abelvesa@kernel.org, kernel@pengutronix.de,
	estevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, inux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 1/2] dt-bindings: clock: support i.MX93 Anatop
Message-ID: <20231018-promenade-budding-3e228f241eb7@spud>
References: <20231018084414.1950241-1-peng.fan@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="utsPIamuwMyoE1mp"
Content-Disposition: inline
In-Reply-To: <20231018084414.1950241-1-peng.fan@oss.nxp.com>


--utsPIamuwMyoE1mp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 18, 2023 at 04:44:13PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
>=20
> Support i.MX93 Anatop which generates PLL and feeds into CCM.

What is "CCM". How do you "generate" a PLL?

> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../bindings/clock/fsl,imx93-anatop.yaml      | 41 +++++++++++++++++++
>  1 file changed, 41 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/fsl,imx93-ana=
top.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/clock/fsl,imx93-anatop.yam=
l b/Documentation/devicetree/bindings/clock/fsl,imx93-anatop.yaml
> new file mode 100644
> index 000000000000..9585c9e4ee40
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/fsl,imx93-anatop.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/fsl,imx93-anatop.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX93 Anatop Module

I see there are also "anatop regulators" on some imx SoCs, just calling
this "anatop module" does not seem sufficiently descriptive.

> +
> +maintainers:
> +  - Peng Fan <peng.fan@nxp.com>
> +
> +description: |

Drop the |, you don't need it.

> +  NXP i.MX93 anatop PLL module which generates PLL to CCM root.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: fsl,imx93-anatop
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#clock-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#clock-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    anatop: clock-controller@44480000 {

and the label is is not used, so should be dropped.

Thanks,
Conor.

> +        compatible =3D "fsl,imx93-anatop";
> +        reg =3D <0x44480000 0x2000>;
> +        #clock-cells =3D <1>;
> +    };
> +
> +...
> --=20
> 2.37.1
>=20

--utsPIamuwMyoE1mp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZS/jtQAKCRB4tDGHoIJi
0gjQAQDR/e8JMHulwKwep/g8KgC1ksjYbzITwnhCg+8FjTPRgwEAu1ipzVFf5SvR
81hSDfFx6Iok+3TePZ0lXLB3+V5KawU=
=bigl
-----END PGP SIGNATURE-----

--utsPIamuwMyoE1mp--

