Return-Path: <devicetree+bounces-11917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7077D7065
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:08:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED98F281CEA
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:08:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DE4229D05;
	Wed, 25 Oct 2023 15:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxIJusxg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEF515AE5
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 15:08:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6307C433C8;
	Wed, 25 Oct 2023 15:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698246502;
	bh=EmGG2bIEHpNFNsbXGuXDFwFfImfIAEmvCH+yu4IiAQs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hxIJusxgziIeOjGZnH5vgUQdMAVFCU3Tj4YiMTQSqfHAJ/M591Z2FHQ6b5mJZp88o
	 CnaiV0kgufr/AUpXcdCPqIEIvWnVX+74FLa9KHS5G1PXI8BKgSWmZrOu+19pK02b1J
	 jVPLK1oFfw07klVxvto4kapMw+x8AzJYvv2FXMbp//ArEiY9ORXpAZBMSXn7pk1WGR
	 VtKa6awKAp+SsGoNfs/k/7KOrtdUw8xagMC0p4hmpIiWyEc5usyT1O98xG7qA8bv6e
	 I5eE8IOSi1iS2MmbZ8/i1sCYgaLtV5gcAuf5agw9TOGfngPO0EK9VKKp16D7wTL61U
	 WdQi57npZBnbA==
Date: Wed, 25 Oct 2023 16:08:18 +0100
From: Conor Dooley <conor@kernel.org>
To: marius.cristea@microchip.com
Cc: jic23@kernel.org, lars@metafoo.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: adding dt-bindings for
 PAC193X
Message-ID: <20231025-cheddar-tucking-b2ea777ed4f9@spud>
References: <20231025134404.131485-1-marius.cristea@microchip.com>
 <20231025134404.131485-2-marius.cristea@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ActSxKFGitGW1WzK"
Content-Disposition: inline
In-Reply-To: <20231025134404.131485-2-marius.cristea@microchip.com>


--ActSxKFGitGW1WzK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Marius,

On Wed, Oct 25, 2023 at 04:44:03PM +0300, marius.cristea@microchip.com wrot=
e:
> From: Marius Cristea <marius.cristea@microchip.com>
>=20
> This is the device tree schema for iio driver for
> Microchip PAC193X series of Power Monitors with Accumulator.
>=20
> Signed-off-by: Marius Cristea <marius.cristea@microchip.com>
> ---
>  .../bindings/iio/adc/microchip,pac1934.yaml   | 146 ++++++++++++++++++
>  1 file changed, 146 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/microchip,p=
ac1934.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/iio/adc/microchip,pac1934.=
yaml b/Documentation/devicetree/bindings/iio/adc/microchip,pac1934.yaml
> new file mode 100644
> index 000000000000..837053ed8a71
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/microchip,pac1934.yaml
> @@ -0,0 +1,146 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/microchip,pac1934.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip PAC1934 Power Monitors with Accumulator
> +
> +maintainers:
> +  - Marius Cristea <marius.cristea@microchip.com>
> +
> +description: |
> +  Bindings for the Microchip family of Power Monitors with Accumulator.
> +  The datasheet for PAC1931, PAC1932, PAC1933 and PAC1934 can be found h=
ere:
> +    https://ww1.microchip.com/downloads/aemDocuments/documents/OTH/Produ=
ctDocuments/DataSheets/PAC1931-Family-Data-Sheet-DS20005850E.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - microchip,pac1931
> +      - microchip,pac1932
> +      - microchip,pac1933
> +      - microchip,pac1934
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  interrupts:
> +    description: IRQ line of the ADC
> +    maxItems: 1
> +
> +  drive-open-drain:
> +    description: The IRQ signal is configured as open-drain.
> +    type: boolean
> +    maxItems: 1
> +
> +  microchip,slow-io:
> +    type: boolean
> +    description: |
> +      A GPIO used to trigger a change is sampling rate (lowering the chi=
p power consumption).
> +      In default mode, if this pin is forced high, sampling rate is forc=
ed to eight
> +      samples/second. When it is forced low, the sampling rate is 1024 s=
amples/second unless
> +      a different sample rate has been programmed.

This description doesn't really make sense to me - if a GPIO is used to
drive the pin low or high, why do we need a property? A DT property
implies that this is a static configuration depending on the board, but
reading the description this seems to be something that can be toggled
at runtime.
I do note though, that this GPIO is not documented in the binding, so I
suppose what really needs to happen here is document the gpio so that
the driver can determine at runtime what state this pin is in?

Also, you say "In default mode", but don't mention what the non-default
mode is. What happens in the other mode?

Cheers,
Conor.

--ActSxKFGitGW1WzK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTkvYgAKCRB4tDGHoIJi
0p/jAQC8aTY9tapI5zJAbel/AlSiuunOhpwryaeBOFSHulfBtwD/Qm+HEKQnOX21
IT9MfeRfd0f0YwK+jzSSPQpdWjDaiw0=
=Kxul
-----END PGP SIGNATURE-----

--ActSxKFGitGW1WzK--

