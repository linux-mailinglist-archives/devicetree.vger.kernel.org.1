Return-Path: <devicetree+bounces-7801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD167C58EE
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:15:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9A6F282331
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 16:15:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 646B532C82;
	Wed, 11 Oct 2023 16:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bs0AcPB4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4338D18B04
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06ED6C433C8;
	Wed, 11 Oct 2023 16:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697040908;
	bh=wtQMMdHrnFggk0m06ilUhF5VMAOMImQU9UM40mHBiVM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bs0AcPB4HUa9JKFIg7sdXg83lTzuhi2OLLs5zi4krsrYvKkFZflYBf5izlTEFYFOP
	 YvFLiFb3wyNSQ6tsiAy8O8YdDaQto5/2ejA3/wlhLEJFh+DjPPnVsVn1yULSEB49cL
	 VinmbeTTkJmHOe7f+Mw/vGKdY2McoxJ3LxjkVJEDbYjH4UgOQXIV1IQ6n5A7VWViqY
	 2djutKm3XqC32xhSqUTRM9doqqD/yVJBsJ+r6B8RN+V0zz+D6STCXNDgzOAFWFbN9r
	 j3syNlYhPWWm/HhBeiCYETIqLjcBcDEQeSTIRAcABeASEW/tgv7tTS0ie/ooyVKydW
	 6qJwMIDqkj1tQ==
Date: Wed, 11 Oct 2023 17:15:03 +0100
From: Conor Dooley <conor@kernel.org>
To: Anshul Dalal <anshulusr@gmail.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shuah Khan <skhan@linuxfoundation.org>,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: input: bindings for Adafruit Seesaw
 Gamepad
Message-ID: <20231011-powdering-recycled-71608e794eaa@spud>
References: <20231010184827.1213507-1-anshulusr@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="timCUOp0XhI+CNqU"
Content-Disposition: inline
In-Reply-To: <20231010184827.1213507-1-anshulusr@gmail.com>


--timCUOp0XhI+CNqU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Wed, Oct 11, 2023 at 12:18:23AM +0530, Anshul Dalal wrote:
> Adds bindings for the Adafruit Seesaw Gamepad.
>=20
> The gamepad functions as an i2c device with the default address of 0x50
> and has an IRQ pin that can be enabled in the driver to allow for a rising
> edge trigger on each button press or joystick movement.
>=20
> Product page:
>   https://www.adafruit.com/product/5743
> Arduino driver:
>   https://github.com/adafruit/Adafruit_Seesaw
>=20
> Signed-off-by: Anshul Dalal <anshulusr@gmail.com>
> ---
>=20
> Changes for v4:
> - Fixed the URI for the id field
> - Added `interrupts` property
>=20
> Changes for v3:
> - Updated id field to reflect updated file name from previous version
> - Added `reg` property
>=20
> Changes for v2:
> - Renamed file to `adafruit,seesaw-gamepad.yaml`
> - Removed quotes for `$id` and `$schema`
> - Removed "Bindings for" from the description
> - Changed node name to the generic name "joystick"
> - Changed compatible to 'adafruit,seesaw-gamepad' instead of
>   'adafruit,seesaw_gamepad'
>=20
>  .../input/adafruit,seesaw-gamepad.yaml        | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/adafruit,sees=
aw-gamepad.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/input/adafruit,seesaw-game=
pad.yaml b/Documentation/devicetree/bindings/input/adafruit,seesaw-gamepad.=
yaml
> new file mode 100644
> index 000000000000..e8e676006d2f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/adafruit,seesaw-gamepad.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/input/adafruit,seesaw-gamepad.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Adafruit Mini I2C Gamepad with seesaw

Binding mostly looks good to me. My main question is what is a seesaw?

> +
> +maintainers:
> +  - Anshul Dalal <anshulusr@gmail.com>
> +
> +description: |
> +  Adafruit Mini I2C Gamepad
> +
> +    +-----------------------------+
> +    |   ___                       |
> +    |  /   \               (X)    |
> +    | |  S  |  __   __  (Y)   (A) |
> +    |  \___/  |ST| |SE|    (B)    |
> +    |                             |
> +    +-----------------------------+
> +
> +  S -> 10-bit percision bidirectional analog joystick
> +  ST -> Start
> +  SE -> Select
> +  X, A, B, Y -> Digital action buttons
> +
> +  Product page: https://www.adafruit.com/product/5743
> +  Arduino Driver: https://github.com/adafruit/Adafruit_Seesaw

I'm not really sure what the arduino driver has to do with the binding.
Why is a link to it more relevant than the freebsd driver, or the linux
driver etc? Is there info about how the pad works in the arduino driver

Otherwise, this seems good to me.

Thanks,
Conor.

> +
> +properties:
> +  compatible:
> +    const: adafruit,seesaw-gamepad
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      The gamepad's IRQ pin triggers a rising edge if interrupts are ena=
bled.
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        joystick@50 {
> +            compatible =3D "adafruit,seesaw-gamepad";
> +            reg =3D <0x50>;
> +        };
> +    };
> --=20
> 2.42.0
>=20

--timCUOp0XhI+CNqU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSbKBwAKCRB4tDGHoIJi
0uPyAP44XQzOQbflxL/UvrKTR2YMG9/YIVQXQK5aBzNTEXcMUAEA8xyeLKAOZtJx
HK4Pss8t1U8E5lZrti8sa9pDht76Bws=
=wvkn
-----END PGP SIGNATURE-----

--timCUOp0XhI+CNqU--

