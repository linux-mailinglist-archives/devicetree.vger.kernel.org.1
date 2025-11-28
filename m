Return-Path: <devicetree+bounces-243041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 063DCC92F9B
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 19:55:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C9AB34E3416
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 18:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B84FC32F74A;
	Fri, 28 Nov 2025 18:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JX55c0T5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DCBB32ED3D;
	Fri, 28 Nov 2025 18:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764355999; cv=none; b=Fx60ZofvgnerZdDHo25e3oNNh5/sabetg8SbMIRWT+d6Gj+0FPqBvNClEXaeKMvBBL/BwNGab4aSd1Fl+3EDEyO6WVfykuoIssHEMRA9VP2qs+9iUdEvvfvcu8C/h98iT9nwCo5gGJW0D5N0ajTMrhJWdfEpwJkzasle+ikWl8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764355999; c=relaxed/simple;
	bh=7bZ1EBA5WKef53nvg8PukmKyNC1CgMK/oDKy7Wic0tU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nSOalLB7yao0tgK/+vF1yiJlRd1aU0D0kf31p9LZWKp3mhUXDvW9XdoZu7yGUVAdPo19SrLb5wK0Jj1dAGERULFzb+z7NCq4NAoRnGI+Haz8/6wnaGJ9zEtQ7yk6+pMUgsH4R4/Jxt/taK9Uv8mVVVjvY7uztu5TndCIDmkso8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JX55c0T5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE0D5C4CEF1;
	Fri, 28 Nov 2025 18:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764355999;
	bh=7bZ1EBA5WKef53nvg8PukmKyNC1CgMK/oDKy7Wic0tU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JX55c0T5ZU03ShwuRj+rV5WdMVxI4V+dirr7WuDwpr3iay3+ZDoHCIdrjVgydLndk
	 puP1pVRn7HJD//m2AC5U/PjZ7I8WiA+hdZB6HLatubwEBxAxpdNyIO/YVRQLUKPWa6
	 coKqsb3IDJ58ep/pypCGeaaiIb4MAhPT0mwvNinQ+Y+mNsUIVKLZ6hXvJrvHf1J2KI
	 4tdU0DRYC39Ly265ewLQqZIKN3+FaAywTAplgEB0UGpFCyt3jaG6QO44ssT0wbEZHA
	 emn+2G0g57I38n4jySYgytHfcdEOXwwcB6mGGDdMJaWk9n/aj3/2pTj/+SyFbvWCv8
	 1UZuZKMWV38Vg==
Date: Fri, 28 Nov 2025 18:53:15 +0000
From: Conor Dooley <conor@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] dt-bindings: switch: adg1712: add ADG1712 SPST
 switch binding
Message-ID: <20251128-heftiness-viability-4208bceffb89@spud>
References: <20251128144627.24910-1-antoniu.miclaus@analog.com>
 <20251128144627.24910-2-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="95XNqKbKwqJS7HFu"
Content-Disposition: inline
In-Reply-To: <20251128144627.24910-2-antoniu.miclaus@analog.com>


--95XNqKbKwqJS7HFu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 28, 2025 at 04:46:13PM +0200, Antoniu Miclaus wrote:
> Add devicetree bindings for the ADG1712 quad SPST switch.
>=20
> The ADG1712 contains four independent single-pole, single-throw (SPST)
> switches, each controlled by a dedicated GPIO pin. While the device
> uses the existing gpio-mux driver infrastructure (as each switch can be
> modeled as a simple 2-state mux), a dedicated binding document is needed
> to provide clear documentation on how to properly represent the ADG1712
> in devicetree, following the pattern of one mux-controller node per
> independent switch.
>=20
> The binding references the gpio-mux schema and demonstrates how each of
> the four independent switches should be instantiated as separate
> mux-controller nodes in the devicetree.
>=20
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
>  .../bindings/switch/adi,adg1712.yaml          | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/switch/adi,adg1712.=
yaml
>=20
> diff --git a/Documentation/devicetree/bindings/switch/adi,adg1712.yaml b/=
Documentation/devicetree/bindings/switch/adi,adg1712.yaml
> new file mode 100644
> index 000000000000..7de9ec1b7447
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/switch/adi,adg1712.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/switch/adi,adg1712.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices ADG1712 quad SPST switch
> +
> +maintainers:
> +  - Antoniu Miclaus <antoniu.miclaus@analog.com>
> +
> +description: |
> +  The ADG1712 contains four independent single-pole, single-throw (SPST)
> +  switches controlled by GPIO pins. The device operates with a low-volta=
ge
> +  single supply range from +1.08V to +5.5V or a low-voltage dual supply
> +  range from =B11.08V to =B12.75V.
> +
> +  Datasheet: https://www.analog.com/en/products/adg1712.html
> +
> +select: false

I think this pretty clearly demonstrates that the binding is not
correct.
If these are independent switches as part of one device, they should
probably be represented as child nodes of a node with an adg1712
compatible, similar to how adc channels etc are done.

pw-bot: changes-requested

> +
> +allOf:
> +  - $ref: /schemas/mux/gpio-mux.yaml#
> +
> +properties:
> +  compatible:
> +    const: gpio-mux
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    /* ADG1712 with four independent switches, each as a 2-state mux */
> +    adg1712_sw1: mux-controller-0 {
> +        compatible =3D "gpio-mux";
> +        #mux-control-cells =3D <0>;
> +        mux-gpios =3D <&gpio 10 GPIO_ACTIVE_HIGH>;
> +        idle-state =3D <0>;  /* Switch open */
> +    };
> +
> +    adg1712_sw2: mux-controller-1 {
> +        compatible =3D "gpio-mux";
> +        #mux-control-cells =3D <0>;
> +        mux-gpios =3D <&gpio 11 GPIO_ACTIVE_HIGH>;
> +        idle-state =3D <0>;  /* Switch open */
> +    };
> +
> +    adg1712_sw3: mux-controller-2 {
> +        compatible =3D "gpio-mux";
> +        #mux-control-cells =3D <0>;
> +        mux-gpios =3D <&gpio 12 GPIO_ACTIVE_HIGH>;
> +        idle-state =3D <1>;  /* Switch closed */
> +    };
> +
> +    adg1712_sw4: mux-controller-3 {
> +        compatible =3D "gpio-mux";
> +        #mux-control-cells =3D <0>;
> +        mux-gpios =3D <&gpio 13 GPIO_ACTIVE_HIGH>;
> +        idle-state =3D <0>;  /* Switch open */
> +    };
> +...
> --=20
> 2.43.0
>=20

--95XNqKbKwqJS7HFu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaSnvmwAKCRB4tDGHoIJi
0qU/AP9UfmkC2T1IQVErmcquNjhgXDY864+rc1HSNMy/mNoobwD9Gu3ou1dV1HFu
wzUWl7AHkyC2oarwtRaaJM4FyZvhJAc=
=S8G4
-----END PGP SIGNATURE-----

--95XNqKbKwqJS7HFu--

