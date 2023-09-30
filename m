Return-Path: <devicetree+bounces-4779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA877B3FC2
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 11:45:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2D7BE281E4D
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 09:45:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7316F23AA;
	Sat, 30 Sep 2023 09:45:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61482138C
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 09:45:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A4A3C433C8;
	Sat, 30 Sep 2023 09:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696067123;
	bh=35Y4iJHA+yWQnYr6BMS/v8x2kCyZKak1olZ7h4RwhS8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u3gL4nunRXW7dTiVTMu0dEo9arEeorI4G1OLEqJ1KTOc3z6kOPDTzyjmCBlYU61+n
	 btC0IHLO/zCfRLv5/b5+i5rQyayKe0L+Lc1FkCpMMJ+YzNAR2+CWOQpZUTybP2uNFB
	 I/j/fP3f85Mzn4BxXEYRp++DT3K3PFekRnniXhjzWFQOS7/i6pk2oeuHsDXIqus7BH
	 hMGn/0ai5UFCm/hgZK4y9xRj0s9Kz1w8WskYi37Eq9WYdPsFGCrM6JN+cbftf8x/Mc
	 DPWlWqrC/zIgjkFXvg5I6LUfMGnfVa6uD2qcoVvK/+UbUfu/nkwhmno9E2oKdjYx0L
	 q40fsAVAs7XXQ==
Date: Sat, 30 Sep 2023 10:45:17 +0100
From: Conor Dooley <conor@kernel.org>
To: Dumitru Ceclan <mitrutzceclan@gmail.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, andy@kernel.org,
	linux-gpio@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Walle <michael@walle.cc>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, ChiaEn Wu <chiaen_wu@richtek.com>,
	Niklas Schnelle <schnelle@linux.ibm.com>,
	Leonard =?iso-8859-1?Q?G=F6hrs?= <l.goehrs@pengutronix.de>,
	Mike Looijmans <mike.looijmans@topic.nl>,
	Haibo Chen <haibo.chen@nxp.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Ceclan Dumitru <dumitru.ceclan@analog.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: adc: add AD7173
Message-ID: <20230930-grief-clapper-1c8f4d058969@spud>
References: <20230928125443.615006-1-mitrutzceclan@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jOZehTjmQKbhopAK"
Content-Disposition: inline
In-Reply-To: <20230928125443.615006-1-mitrutzceclan@gmail.com>


--jOZehTjmQKbhopAK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Thu, Sep 28, 2023 at 03:54:42PM +0300, Dumitru Ceclan wrote:
> The AD7173 family offer a complete integrated Sigma-Delta ADC solution
> which can be used in high precision, low noise single channel applications
> or higher speed multiplexed applications. The Sigma-Delta ADC is intended
> primarily for measurement of signals close to DC but also delivers
> outstanding performance with input bandwidths out to ~10kHz.
>=20
> Signed-off-by: Dumitru Ceclan <mitrutzceclan@gmail.com>
> ---
>  .../bindings/iio/adc/adi,ad7173.yaml          | 139 ++++++++++++++++++
>  1 file changed, 139 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7173.=
yaml
>=20
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml b/=
Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> new file mode 100644
> index 000000000000..a0f437297a23
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> @@ -0,0 +1,139 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2023 Analog Devices Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/adi,ad7173.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AD7173 ADC device driver
> +
> +maintainers:
> +  - Ceclan Dumitru <dumitru.ceclan@analog.com>
> +
> +description: |
> +  Bindings for the Analog Devices AD717X ADC's. Datasheets for supported=
 chips:
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7172-2.pdf
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7173-8.pdf
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7175-2.pdf
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7176-2.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,ad7172-2
> +      - adi,ad7173-8
> +      - adi,ad7175-2
> +      - adi,ad7176-2
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +  spi-max-frequency:
> +    maximum: 20000000
> +
> +  spi-cpol:
> +    type: boolean
> +
> +  spi-cpha:
> +    type: boolean
> +
> +  required:
> +    - compatible
> +    - reg
> +    - interrupts
> +
> +patternProperties:
> +  "^channel@[0-9a-f]$":
> +    type: object
> +    $ref: adc.yaml
> +    unevaluatedProperties: false
> +
> +    properties:
> +      reg:
> +        description: Channel number
> +        minimum: 0
> +        maximum: 15
> +
> +      diff-channels:
> +        description:
> +          Analog input pins

These descriptions are redundant AFAICT, since youre just constraining
properties defined in adc.yaml.

> +        items:
> +          minimum: 0
> +          maximum: 31
> +
> +      adi,bipolar:
> +        description: Specify if the channel should measure in bipolar mo=
de.
> +        type: boolean

You have a ref here to adc.yaml, but do not appear to be making use of
"bipolar" property:
  bipolar:
    $ref: /schemas/types.yaml#/definitions/flag
    description: If provided, the channel is to be used in bipolar mode.

> +
> +    required:
> +      - reg
> +      - diff-channels
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    spi {
> +      #address-cells =3D <1>;
> +      #size-cells =3D <0>;
> +
> +      adc@0 {
> +        compatible =3D "adi,ad7173-8";
> +        reg =3D <0>;
> +
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        interrupts =3D <25 IRQ_TYPE_EDGE_FALLING>;
> +        interrupt-parent =3D <&gpio>;
> +        spi-max-frequency =3D <5000000>;
> +
> +        channel@0 {
> +          reg =3D <0>;
> +          adi,bipolar;
> +

Why the odd newlines?

Mostly looks good to me, cheers,
Conor.

> +          diff-channels =3D <0 1>;
> +        };
> +
> +        channel@1 {
> +          reg =3D <1>;
> +
> +          diff-channels =3D <2 3>;
> +        };
> +
> +        channel@2 {
> +          reg =3D <2>;
> +          adi,bipolar;
> +
> +          diff-channels =3D <4 5>;
> +        };
> +
> +        channel@3 {
> +          reg =3D <3>;
> +          adi,bipolar;
> +
> +          diff-channels =3D <6 7>;
> +        };
> +
> +        channel@4 {
> +          reg =3D <4>;
> +
> +          diff-channels =3D <8 9>;
> +        };
> +      };
> +    };
> --=20
> 2.39.2
>=20

--jOZehTjmQKbhopAK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRfuLQAKCRB4tDGHoIJi
0r+UAP9rtIVQ87EPicIl2kqOobvXvlAxgnYsfHa4HQKS4Np1QQD/ca0SFP9n+6uN
XZsNzknuXMWToXtnh8f7OvH8rKeeUgQ=
=BSNn
-----END PGP SIGNATURE-----

--jOZehTjmQKbhopAK--

