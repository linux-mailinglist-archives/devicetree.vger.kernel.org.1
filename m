Return-Path: <devicetree+bounces-20805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BA927800EEC
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 17:04:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 579B0B20F82
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 16:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B154B4BA84;
	Fri,  1 Dec 2023 16:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNhq00bM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 943064AF81
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 16:03:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02BDEC433C9;
	Fri,  1 Dec 2023 16:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701446635;
	bh=9lz4V6T3s7FtzNYEF3vq/lL88rTOR/qPlr59bt0P74A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XNhq00bMc4W3OYvg+KnG1p0EHAme+QA1msyZ4YsLOg8LV/yL2bfZ/dJeyFKIvrPFP
	 nBp6pDpqs4AGHBt47903+iJKJUPnZbOVewn0LJF0AwDKoiZZnvLm6a412q8ZdujTaw
	 SVD0F6mV+MHbKNJwVA+JFl5CsiHNZ1f6fKAmzP8gf7JYwBHtgrCFWgyCh7Ch2JDP0l
	 X5tTTS6e7C19CYeERPpT+76ltSJZPVdeanfpwBeWC1iwAeA4LeR+kwGWbjlhs95Czy
	 8+5zY+O2ZRTrzpwBvzIEdybZ8vERgq2LijNBfNs2vyGEs8F6Jknv5IY9BZdNKP5pWZ
	 rao/idOUiPS/g==
Date: Fri, 1 Dec 2023 16:03:50 +0000
From: Conor Dooley <conor@kernel.org>
To: Tzuyi Chang <tychang@realtek.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Stanley Chang <stanley_chang@realtek.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: realtek: Add Realtek DHC RTD SoC
 PCIe PHY
Message-ID: <20231201-umbilical-unending-c8fa05cb42d2@spud>
References: <20231201105207.11786-1-tychang@realtek.com>
 <20231201105207.11786-2-tychang@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="plkfvTK++KeNoCJp"
Content-Disposition: inline
In-Reply-To: <20231201105207.11786-2-tychang@realtek.com>


--plkfvTK++KeNoCJp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 01, 2023 at 06:52:06PM +0800, Tzuyi Chang wrote:
> Add the device tree bindings for the Realtek DHC(Digital Home Center)
> RTD SoCs PCIe PHY.
>=20
> Signed-off-by: Tzuyi Chang <tychang@realtek.com>
> ---
>  .../bindings/phy/realtek,rtd-pcie-phy.yaml    | 61 +++++++++++++++++++
>  1 file changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/realtek,rtd-pci=
e-phy.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/phy/realtek,rtd-pcie-phy.y=
aml b/Documentation/devicetree/bindings/phy/realtek,rtd-pcie-phy.yaml
> new file mode 100644
> index 000000000000..44ff23f698e6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/realtek,rtd-pcie-phy.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2023 Realtek Semiconductor Corporation
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/realtek,rtd-pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek DHC PCIe PHY
> +
> +maintainers:
> +  - Tzuyi Chang <tychang@realtek.com>
> +
> +description:
> +  Realtek PCIe PHY supports the DHC(Digital Home Center) RTD series SoCs.
> +  The PCIe PHY driver is designed to support physical layer functionality
> +  of the PCIe controller.
> +
> +properties:
> +  compatible:
> +    enum:

> +      - realtek,rtd1319-pcie0-phy
> +      - realtek,rtd1319-pcie1-phy
> +      - realtek,rtd1319-pcie2-phy
> +      - realtek,rtd1619b-pcie1-phy
> +      - realtek,rtd1619b-pcie2-phy

Please explain why different PHYs on the same SoC need different
compatibles.

> +      - realtek,rtd1319d-pcie1-phy
> +      - realtek,rtd1315e-pcie1-phy

And why bother with the 1 here given there is no 0 or 2?

This looks suspiciously like abuse of the compatible - especially since
most of the ops are the same despite the differing compatibles. The case
where that does not apply, it looks like the issue is down to the
portion of the nvmem cell corresponding to the PHY, which has nothing to
do with the programming model of the PHY itself IMO.

Cheers,
Conor.

> +
> +  "#phy-cells":
> +    const: 0
> +
> +  nvmem-cells:
> +    maxItems: 1
> +    description:
> +      Phandle to nvmem cell that contains 'Tx swing trim'
> +      tuning parameter value for PCIe phy.
> +
> +  nvmem-cell-names:
> +    items:
> +      - const: tx_swing_trim
> +
> +  realtek,pcie-syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: phandle of syscon used to control PCIe MDIO register.
> +
> +required:
> +  - compatible
> +  - realtek,pcie-syscon
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pcie1_phy {
> +        compatible =3D "realtek,rtd1319d-pcie1-phy";
> +        realtek,pcie-syscon =3D <&pcie1>;
> +        #phy-cells =3D <0>;
> +        nvmem-cells =3D <&otp_pcie_tx_swing_trim>;
> +        nvmem-cell-names =3D "tx_swing_trim";
> +    };
> --=20
> 2.43.0
>

--plkfvTK++KeNoCJp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWoD5gAKCRB4tDGHoIJi
0kopAP969dS+RHyZaMFpNcKy3CvurjimEZqsYofY/GYH97aSxAEAjCob1GhCewzI
nJVKasHS5PXypGlEsGDWIUIAFn+TKwk=
=ndUt
-----END PGP SIGNATURE-----

--plkfvTK++KeNoCJp--

