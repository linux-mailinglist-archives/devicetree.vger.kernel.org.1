Return-Path: <devicetree+bounces-3450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B5B7AEDFD
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 15:32:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 5E4BC1C20938
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 13:32:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2203229404;
	Tue, 26 Sep 2023 13:32:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132C929401
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 13:32:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8423BC433C7;
	Tue, 26 Sep 2023 13:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695735136;
	bh=UhBWE1Hzoh3LnzyM68s+fzN+7fsUlZ16T4JMNTg7gFY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hLFB6r+Otpn2MZYGQB6alKD3znEtWyTbAnLzUWlpAxBGVxiOvQs5jlTIqvv7mDlXi
	 bEvBUtRpPv47L37Th847/iuu4pJYb+vOCpRdSepXavowzAOsOGreH9GigBP7z80q2y
	 OlKSyoNBah7NMGAnNMfplj6IY4qRwf+Z8ijqmX6y6GAwrfrHYemaNAWfsvioN9ExXk
	 /0g7G1I8TdDfD0nb6R7ZGCoL4JG9KIwxCj+1eMJYbNrmhM96Fp4unod9r03LtZgOIo
	 b11RsoSuCOqz/4p8A6UAlW1GNklsOO1Kh/ps7gw6qBPFTbVAGl3VhULIlSlUue2ov3
	 EVdvr1i4hEfPg==
Date: Tue, 26 Sep 2023 14:32:12 +0100
From: Conor Dooley <conor@kernel.org>
To: Alain Volmat <alain.volmat@foss.st.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrey Skvortsov <andrej.skvortzov@gmail.com>,
	Rob Herring <robh@kernel.org>, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: media: i2c: add galaxycore,gc2145
 dt-bindings
Message-ID: <20230926-skyline-absolute-a563a42b1220@spud>
References: <20230926092825.819229-1-alain.volmat@foss.st.com>
 <20230926092825.819229-2-alain.volmat@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Q2CIXPIQPxlIZzB0"
Content-Disposition: inline
In-Reply-To: <20230926092825.819229-2-alain.volmat@foss.st.com>


--Q2CIXPIQPxlIZzB0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Alain,

On Tue, Sep 26, 2023 at 11:28:19AM +0200, Alain Volmat wrote:
> Introduction of the Galaxy Core GC2145 XVGA CMOS camera sensor.
>=20
> Signed-off-by: Alain Volmat <alain.volmat@foss.st.com>
> ---
>  .../bindings/media/i2c/galaxycore,gc2145.yaml | 108 ++++++++++++++++++
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +

AFAIU, changes to the vendor-prefixes file are done as standalone
patches.

>  2 files changed, 110 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/galaxycor=
e,gc2145.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/media/i2c/galaxycore,gc214=
5.yaml b/Documentation/devicetree/bindings/media/i2c/galaxycore,gc2145.yaml
> new file mode 100644
> index 000000000000..e80b581498fc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/galaxycore,gc2145.yaml
> @@ -0,0 +1,108 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/galaxycore,gc2145.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Galaxy Core 1/5'' UXGA CMOS Image Sensor
> +
> +maintainers:
> +  - Alain Volmat <alain.volmat@foss.st.com>
> +
> +description: |

This | seems unneeded as you have no formatting to preserve.

> +  The Galaxy Core GC2145 is a high quality 2 Mega CMOS image sensor, for=
 mobile
> +  phone camera applications and digital camera products. GC2145 incorpor=
ates a
> +  1616V x 1232H active pixel array, on-chip 10-bit ADC, and image signal
> +  processor. It is programmable through an I2C interface. Image data is =
sent
> +  either through a parallel interface or through MIPI CSI-2.
> +
> +allOf:
> +  - $ref: ../video-interface-devices.yaml#
> +
> +properties:
> +  compatible:
> +    const: galaxycore,gc2145
> +
> +  reg:
> +    enum:
> +      - 0x3c

If this is the only permitted address, this should be a const, rather
than an enum, no? Are you expecting the list to grow?

> +
> +  clocks:
> +    description: Reference to the xclk clock.
> +    maxItems: 1
> +
> +  powerdown-gpios:
> +    description: GPIO descriptor for the powerdown pin.
> +    maxItems: 1
> +
> +  reset-gpios:
> +    description: GPIO descriptor for the reset pin.
> +    maxItems: 1

Where you only have a single entry, a lot of these descriptions are
superfluous.

Generally, this looks pretty good to me.

Thanks,
Conor.

> +
> +  IOVDD-supply:
> +    description: Power Supply for I/O circuits (1.7 - 3V).
> +
> +  AVDD-supply:
> +    description: Power for analog circuit/sensor array (2.7 - 3V).
> +
> +  DVDD-supply:
> +    description: Power for digital core (1.7 - 1.9V).
> +
> +  orientation: true
> +
> +  rotation: true
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/$defs/port-base
> +
> +    properties:
> +      endpoint:
> +        $ref: /schemas/media/video-interfaces.yaml#
> +        unevaluatedProperties: false
> +
> +    required:
> +      - endpoint
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - powerdown-gpios
> +  - reset-gpios
> +  - IOVDD-supply
> +  - AVDD-supply
> +  - DVDD-supply
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c5 {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        gc2145@3c {
> +            compatible =3D "galaxycore,gc2145";
> +            reg =3D <0x3c>;
> +            clocks =3D <&clk_ext_camera>;
> +            IOVDD-supply =3D <&scmi_v3v3_sw>;
> +            AVDD-supply =3D <&scmi_v3v3_sw>;
> +            DVDD-supply =3D <&scmi_v3v3_sw>;
> +            powerdown-gpios =3D <&mcp23017 3 (GPIO_ACTIVE_LOW | GPIO_PUS=
H_PULL)>;
> +            reset-gpios =3D <&mcp23017 4 (GPIO_ACTIVE_LOW | GPIO_PUSH_PU=
LL)>;
> +
> +            port {
> +                endpoint {
> +                    remote-endpoint =3D <&mipid02_0>;
> +                    data-lanes =3D <1 2>;
> +                };
> +            };
> +        };
> +    };
> +
> +...
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index 573578db9509..d9df03bba5bb 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -494,6 +494,8 @@ patternProperties:
>      description: Fujitsu Ltd.
>    "^fxtec,.*":
>      description: FX Technology Ltd.
> +  "^galaxycore,.*":
> +    description: Galaxy Core Inc.
>    "^gardena,.*":
>      description: GARDENA GmbH
>    "^gateworks,.*":
> --=20
> 2.25.1
>=20

--Q2CIXPIQPxlIZzB0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRLdXAAKCRB4tDGHoIJi
0kqMAP0QWoaRdvEPv30Qv/ugA/+Zl/2iLS3E4Wrn0OV0tPD43wD+J7Df5bEQ4Edn
OTpv59DRPn0rPZ8eAn6hhwdPULmHYgo=
=p/G0
-----END PGP SIGNATURE-----

--Q2CIXPIQPxlIZzB0--

