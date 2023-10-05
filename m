Return-Path: <devicetree+bounces-6326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFD47BAF55
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 01:34:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C8DD4281FCF
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 23:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0641B43AB8;
	Thu,  5 Oct 2023 23:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ijl9CLug"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D162D41E57
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 23:34:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED4F1C433C7;
	Thu,  5 Oct 2023 23:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696548852;
	bh=XH827zbbYk1K6D5cvTdeOv5tt/6OMGuFkDJbCdQeAhY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ijl9CLug3INcIwbSVPhjoNh3qBDNOj8WJ1sW7eu2O/SC/vdH80HmuYEnU1F+L4mvu
	 7FSP4WL/AZsfeJtrC5XOBOLgvRuHFElH9qlqh+2EFjcu7r0WHRZfo4yT0el8Dsl6X3
	 5i5myfiDn3B4xR2m5iCeveoILE1tJeyDYalk4eY0qiGbbWDX5iopcOeIcWONTWzY+W
	 HMLIHhfgZoEXrJ3o/dvzsW3gJyKbLa1w5JUvH13gNc6cxuQ0O7Nd7scqv2K/rc8b1z
	 THpr8ZxpdjwtvYWFErUBjie8EGFglbutpVWPQfuMetm+kXvg6QBQL4xjyNxapTZ2EY
	 cmd41Dugc2JSA==
Date: Fri, 6 Oct 2023 00:34:05 +0100
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
Subject: Re: [PATCH v3 1/2] dt-bindings: adc: add AD7173
Message-ID: <20231006-ravioli-hangout-ef9a9bf9cd7c@spud>
References: <20231005105921.460657-1-mitrutzceclan@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="taPXRJOU8lSR+tKW"
Content-Disposition: inline
In-Reply-To: <20231005105921.460657-1-mitrutzceclan@gmail.com>


--taPXRJOU8lSR+tKW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 05, 2023 at 01:59:21PM +0300, Dumitru Ceclan wrote:
> The AD7173 family offer a complete integrated Sigma-Delta ADC solution
> which can be used in high precision, low noise single channel applications
> or higher speed multiplexed applications. The Sigma-Delta ADC is intended
> primarily for measurement of signals close to DC but also delivers
> outstanding performance with input bandwidths out to ~10kHz.
>=20
> Signed-off-by: Dumitru Ceclan <mitrutzceclan@gmail.com>

With Jonathan's two items addressed, you can add:
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
> V2 -> V3
>  - remove redundant descriptions
>  - use referenced 'bipolar' property
>  - remove newlines from example
>=20
>  .../bindings/iio/adc/adi,ad7173.yaml          | 130 ++++++++++++++++++
>  1 file changed, 130 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7173.=
yaml
>=20
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml b/=
Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> new file mode 100644
> index 000000000000..bf9e3cbf842e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> @@ -0,0 +1,130 @@
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
> +        minimum: 0
> +        maximum: 15
> +
> +      diff-channels:
> +        items:
> +          minimum: 0
> +          maximum: 31
> +
> +      bipolar:
> +        type: boolean
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
> +          bipolar;
> +          diff-channels =3D <0 1>;
> +        };
> +
> +        channel@1 {
> +          reg =3D <1>;
> +          diff-channels =3D <2 3>;
> +        };
> +
> +        channel@2 {
> +          reg =3D <2>;
> +          bipolar;
> +          diff-channels =3D <4 5>;
> +        };
> +
> +        channel@3 {
> +          reg =3D <3>;
> +          bipolar;
> +          diff-channels =3D <6 7>;
> +        };
> +
> +        channel@4 {
> +          reg =3D <4>;
> +          diff-channels =3D <8 9>;
> +        };
> +      };
> +    };
> --=20
> 2.39.2
>=20

--taPXRJOU8lSR+tKW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZR9HygAKCRB4tDGHoIJi
0l2SAQCTpojOiYhgWtcaGleXgMHQyDxcwPwEaMySBZYIH9qMPAD+K33f7oMRFfvF
P/CwGzhdh5jnNs1aEeD1Vw6OCR6pJQM=
=1JZt
-----END PGP SIGNATURE-----

--taPXRJOU8lSR+tKW--

