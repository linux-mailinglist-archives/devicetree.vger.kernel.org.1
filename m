Return-Path: <devicetree+bounces-3917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3077B0803
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:19:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5D3392814EB
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A7843B282;
	Wed, 27 Sep 2023 15:19:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1E83AC33
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:19:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CEDFC433C7;
	Wed, 27 Sep 2023 15:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695827970;
	bh=KMukbBBeXV+l1cuq0Jp1Wo0ccigkbIimAikppeeUBdo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G89s4vfLyLbRHxXx784woGm8pxlfza/V2sFYJjv8+uizc/xzGdCPdbR3lMo4D1xFh
	 Zc1Mv0GuT0foHxGRV27J4PRopQVoQ2DR2QIuX4d0qQqkpYzwGzv0UVkc0lNa99D8Tp
	 /1zbmrvFTealguaZAdaE5va8auj5qpgGhXstXoz3yYxzCROEHE0nm/yPVtJs/I68pq
	 8YznlGWm8GV8bccFmcs2gCM+xWo2L1idm7fkLyN1BZW5UAo1iz8KMl0oAAIhw4ULHs
	 emrcjptFlj7UU/hf+TguuP4d2Que/MrSTMxhiLuekfgLhWcxUcqEmi/ToTHkb5n3Ln
	 tv4IaJVK+WKog==
Date: Wed, 27 Sep 2023 16:19:26 +0100
From: Conor Dooley <conor@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: ltc2991: add bindings
Message-ID: <20230927-curve-trodden-5f8f150aa738@spud>
References: <20230926140544.80934-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iuF1VGb0w26bLJMI"
Content-Disposition: inline
In-Reply-To: <20230926140544.80934-1-antoniu.miclaus@analog.com>


--iuF1VGb0w26bLJMI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Sep 26, 2023 at 05:05:29PM +0300, Antoniu Miclaus wrote:
> Add dt-bindings for ltc2991 octal i2c voltage, current and temperature
> monitor.
>=20
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
>  .../bindings/hwmon/adi,ltc2991.yaml           | 114 ++++++++++++++++++
>  1 file changed, 114 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/adi,ltc2991.y=
aml
>=20
> diff --git a/Documentation/devicetree/bindings/hwmon/adi,ltc2991.yaml b/D=
ocumentation/devicetree/bindings/hwmon/adi,ltc2991.yaml
> new file mode 100644
> index 000000000000..6174e0113ef8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/adi,ltc2991.yaml
> @@ -0,0 +1,114 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +
> +$id: http://devicetree.org/schemas/hwmon/adi,ltc2991.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices LTC2991 Octal I2C Voltage, Current and Temperature=
 Monitor
> +
> +maintainers:
> +  - Antoniu Miclaus <antoniu.miclaus@analog.com>
> +
> +description: |
> +  The LTC2991 is used to monitor system temperatures, voltages and curre=
nts.
> +  Through the I2C serial interface, the eight monitors can individually =
measure
> +  supply voltages and can be paired for differential measurements of cur=
rent
> +  sense resistors or temperature sensing transistors.
> +
> +  Datasheet:
> +    https://www.analog.com/en/products/ltc2991.html
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,ltc2991

if you aren't expecting to add other devices that can share the binding,
make this const: rather than enum:.

> +
> +  reg:
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +  vcc-supply: true
> +
> +patternProperties:
> +  "^channel@[0-3]$":
> +    type: object
> +    description: |

The |s are only needed when you have formatting to preserve.

> +      Represents the differential/temperature channels.
> +
> +    properties:
> +      reg:
> +        description: |
> +          The channel number. LTC2992 can monitor 4 currents/temperature=
s.
> +        items:
> +          minimum: 0
> +          maximum: 3
> +
> +      shunt-resistor-mili-ohms:

The standard properties here are ohms and micro-ohms. Also, "milli" has
2 ls.

> +        description:
> +          The value of curent sense resistor in miliohms. Enables differ=
ential
> +          input pair.
> +
> +      temperature-enable:

This seems like a vendor property that should have a vendor prefix?

> +        description:
> +          Enables temperature readings for a input pair.

TBH, this seems like it is used just to control software behaviour.
Why would you want to actually disable this in DT?

Cheers,
Conor.

> +
> +required:
> +  - compatible
> +  - reg
> +  - vcc-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        hwmon@48 {
> +            compatible =3D "adi,ltc2991";
> +            reg =3D <0x48>;
> +            vcc-supply =3D <&vcc>;
> +        };
> +    };
> +  - |
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        hwmon@48 {
> +            #address-cells =3D <1>;
> +            #size-cells =3D <0>;
> +
> +            compatible =3D "adi,ltc2991";
> +            reg =3D <0x48>;
> +            vcc-supply =3D <&vcc>;
> +
> +            channel@0 {
> +                    reg =3D <0x0>;
> +                    shunt-resistor-mili-ohms =3D <100>;
> +            };
> +
> +            channel@1 {
> +                    reg =3D <0x1>;
> +                    shunt-resistor-mili-ohms =3D <100>;
> +            };
> +
> +            channel@2 {
> +                    reg =3D <0x2>;
> +                    temperature-enable;
> +            };
> +
> +            channel@3 {
> +                    reg =3D <0x3>;
> +                    temperature-enable;
> +            };
> +        };
> +    };
> +...
> --=20
> 2.42.0
>=20

--iuF1VGb0w26bLJMI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRRH/QAKCRB4tDGHoIJi
0qHwAQCiWCU/Tlc8g1FHrSZV758HOtDVXDLRKZCW+A9AyAh69wEAuzrvI4A+tcmf
x7zyh1FMSN2R7D9AznlAoNIKPIT60A8=
=g7xt
-----END PGP SIGNATURE-----

--iuF1VGb0w26bLJMI--

