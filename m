Return-Path: <devicetree+bounces-5265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3737B5BA8
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:56:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8BB54281646
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51039200B5;
	Mon,  2 Oct 2023 19:56:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A181F95E
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:56:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB3C8C433C7;
	Mon,  2 Oct 2023 19:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696276572;
	bh=ph7h5sAEb9ypE4i6uCa380vh5k+WO2IDb6ilcGeeXL0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CLu04a56diys/JmudLhCzoBs+DRZaXslCht8wJQM0ZdJavmMXvRt1xGMwET2BZUth
	 xWMBloMwrHyzBlsLy2/z/1QdZrDZxcAwpZ4aoBaKFsvFOYkCYldzhU/jbBxq2Ub6+A
	 fZB1ZGYiqmVqntAYmxas6Ie5xlay4RP5t5wgOtSQIQOB9lru487BMDnKrf1EqVZTNB
	 vU96ibJRZJuoRrqIlcB0UzoyX94Yl/nd0AzS0eyEaHHIb5E4kiyC/NYBR5NguNFq4I
	 JnxLUznlkW1nIaBFrtufR2gkJoMpl3HczwhQhmZDa4n8wJpFpmX3nDBkV5JGqFSnqG
	 4XeLHFo2UxohA==
Date: Mon, 2 Oct 2023 20:56:07 +0100
From: Conor Dooley <conor@kernel.org>
To: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	"linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: hwmon: ltc2991: add bindings
Message-ID: <20231002-gradient-crop-cfd75342c475@spud>
References: <20231002101835.39624-1-antoniu.miclaus@analog.com>
 <20231002-babbling-justice-73d3601a71aa@spud>
 <CY4PR03MB33990FB22E1BB8686AC0CF509BC5A@CY4PR03MB3399.namprd03.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zPbks5im7L45xBIh"
Content-Disposition: inline
In-Reply-To: <CY4PR03MB33990FB22E1BB8686AC0CF509BC5A@CY4PR03MB3399.namprd03.prod.outlook.com>


--zPbks5im7L45xBIh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 02, 2023 at 01:46:53PM +0000, Miclaus, Antoniu wrote:
>=20
>=20
> --
> Antoniu Micl=C4=83u=C5=9F
>=20
> > -----Original Message-----
> > From: Conor Dooley <conor@kernel.org>
> > Sent: Monday, October 2, 2023 4:01 PM
> > To: Miclaus, Antoniu <Antoniu.Miclaus@analog.com>
> > Cc: Jean Delvare <jdelvare@suse.com>; Guenter Roeck <linux@roeck-
> > us.net>; Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski
> > <krzysztof.kozlowski+dt@linaro.org>; Conor Dooley
> > <conor+dt@kernel.org>; Jonathan Corbet <corbet@lwn.net>; linux-
> > hwmon@vger.kernel.org; devicetree@vger.kernel.org; linux-
> > kernel@vger.kernel.org; linux-doc@vger.kernel.org
> > Subject: Re: [PATCH v2 1/2] dt-bindings: hwmon: ltc2991: add bindings
> >=20
> > [External]
> >=20
> > Hey,
> >=20
> > On Mon, Oct 02, 2023 at 01:18:14PM +0300, Antoniu Miclaus wrote:
> > > Add dt-bindings for ltc2991 octal i2c voltage, current and temperature
> > > monitor.
> > >
> > > Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> > > ---
> > > changes in v2:
> > >  - make compatible const type
> > >  - remove `|` where not necessary
> > >  - switch to micro-ohms for the shunt resistor property
> > >  - add vendor prefix for temperature-enable
> >=20
> > Thanks for the updates...
> >=20
> > >  .../bindings/hwmon/adi,ltc2991.yaml           | 114 ++++++++++++++++=
++
> > >  1 file changed, 114 insertions(+)
> > >  create mode 100644
> > Documentation/devicetree/bindings/hwmon/adi,ltc2991.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/hwmon/adi,ltc2991.yaml
> > b/Documentation/devicetree/bindings/hwmon/adi,ltc2991.yaml
> > > new file mode 100644
> > > index 000000000000..3811ea07a04f
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/hwmon/adi,ltc2991.yaml
> > > @@ -0,0 +1,114 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +
> > > +$id: http://devicetree.org/schemas/hwmon/adi,ltc2991.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Analog Devices LTC2991 Octal I2C Voltage, Current and Tempera=
ture
> > Monitor
> > > +
> > > +maintainers:
> > > +  - Antoniu Miclaus <antoniu.miclaus@analog.com>
> > > +
> > > +description: |
> > > +  The LTC2991 is used to monitor system temperatures, voltages and
> > currents.
> > > +  Through the I2C serial interface, the eight monitors can individua=
lly
> > measure
> > > +  supply voltages and can be paired for differential measurements of
> > current
> > > +  sense resistors or temperature sensing transistors.
> > > +
> > > +  Datasheet:
> > > +    https://www.analog.com/en/products/ltc2991.html
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: adi,ltc2991
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  '#address-cells':
> > > +    const: 1
> > > +
> > > +  '#size-cells':
> > > +    const: 0
> > > +
> > > +  vcc-supply: true
> > > +
> > > +patternProperties:
> > > +  "^channel@[0-3]$":
> > > +    type: object
> > > +    description:
> > > +      Represents the differential/temperature channels.

Missing "additionalProperties: false". Once added, it finds that you
didn't update the child nodes to account for the addition of the vendor
prefix.

> > > +
> > > +    properties:
> > > +      reg:
> > > +        description:
> > > +          The channel number. LTC2991 can monitor 4 currents/tempera=
tures.
> > > +        items:
> > > +          minimum: 0
> > > +          maximum: 3

Should reg not be required here?

> > > +
> > > +      shunt-resistor-micro-ohms:
> > > +        description:
> > > +          The value of curent sense resistor in miliohms. Enables di=
fferential
> > > +          input pair.
> > > +
> > > +      adi,temperature-enable:
> > > +        description:
> > > +          Enables temperature readings for a input pair.
> > > +        type: boolean
> >=20
> > ...but I did not see an answer to my question on v1:
> > 	TBH, this seems like it is used just to control software behaviour.
> > 	Why would you want to actually disable this in DT?
> > In other words, is there something in that hardware that precludes
> > measuring temperature for channels that do not contain this property?
> >=20
> > Thanks,
> > Conor.
> >=20
> Sorry for missing that. I took in consideration this approach based on th=
e pin functions
> described in the datasheet (page 8 of 32). For example the V1 pin of the =
part can support
> 3 different configurations: "V1 (Pin 1): First Monitor Input. This pin ca=
n be configured
> as a single-ended input (0V to 4.9V) or the positive inputfor a different=
ial or remote diode
> temperature measurement (in combination with V2)."
> Moreover, looking at the multiple typical applications examples at the en=
d of the datasheet
> there is a specific adjacent hardware circuit connected to this part for =
the temperature
> measurements configurations.

Okay. That seems fair to me, thanks for the explanation. From your
description here it sounds like the pins between which differential
measurements are made are fixed in hardware. Is that correct?

One final question - from your description here it sounds like
shunt-resistor-micro-ohms & adi,temperature-enable are mutually
exclusive? If they are indeed mutually exclusive, you can fold in
something like the below.
diff --git a/Documentation/devicetree/bindings/hwmon/adi,ltc2991.yaml b/Doc=
umentation/devicetree/bindings/hwmon/adi,ltc2991.yaml
index 3811ea07a04f..8b1bbbfe7948 100644
--- a/Documentation/devicetree/bindings/hwmon/adi,ltc2991.yaml
+++ b/Documentation/devicetree/bindings/hwmon/adi,ltc2991.yaml
@@ -39,6 +39,7 @@ patternProperties:
     type: object
     description:
       Represents the differential/temperature channels.
+    additionalProperties: false
=20
     properties:
       reg:
@@ -58,6 +59,17 @@ patternProperties:
           Enables temperature readings for a input pair.
         type: boolean
=20
+    required:
+      - reg
+
+    allOf:
+      - if:
+          required:
+            - shunt-resistor-micro-ohms
+        then:
+          properties:
+            adi,temperature-enable: false
+
 required:
   - compatible
   - reg

Cheers,
Conor.

>=20
> Thank you,
> Antoniu
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - vcc-supply
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    i2c {
> > > +        #address-cells =3D <1>;
> > > +        #size-cells =3D <0>;
> > > +
> > > +        hwmon@48 {
> > > +            compatible =3D "adi,ltc2991";
> > > +            reg =3D <0x48>;
> > > +            vcc-supply =3D <&vcc>;
> > > +        };
> > > +    };
> > > +  - |
> > > +    i2c {
> > > +        #address-cells =3D <1>;
> > > +        #size-cells =3D <0>;
> > > +
> > > +        hwmon@48 {
> > > +            #address-cells =3D <1>;
> > > +            #size-cells =3D <0>;
> > > +
> > > +            compatible =3D "adi,ltc2991";
> > > +            reg =3D <0x48>;
> > > +            vcc-supply =3D <&vcc>;
> > > +
> > > +            channel@0 {
> > > +                    reg =3D <0x0>;
> > > +                    shunt-resistor-micro-ohms =3D <100000>;
> > > +            };
> > > +
> > > +            channel@1 {
> > > +                    reg =3D <0x1>;
> > > +                    shunt-resistor-micro-ohms =3D <100000>;
> > > +            };
> > > +
> > > +            channel@2 {
> > > +                    reg =3D <0x2>;
> > > +                    temperature-enable;
> > > +            };
> > > +
> > > +            channel@3 {
> > > +                    reg =3D <0x3>;
> > > +                    temperature-enable;
> > > +            };
> > > +        };
> > > +    };
> > > +...
> > > --
> > > 2.42.0
> > >

--zPbks5im7L45xBIh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRsgVwAKCRB4tDGHoIJi
0vOZAQCv9kZP0jt/EoZ1B3kYj0wcoOI26AeHAnG21QEvcDYmlwEAgMyhB+ExhReG
WmMXYIFmiCGRqV+AKgiRUmorSB1EUgY=
=3dB+
-----END PGP SIGNATURE-----

--zPbks5im7L45xBIh--

