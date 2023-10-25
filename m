Return-Path: <devicetree+bounces-11869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA637D6DDA
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:00:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB0D41F21DBD
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AD3728DDB;
	Wed, 25 Oct 2023 14:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ob42NPr3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6751172D
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:00:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB370C433C8;
	Wed, 25 Oct 2023 14:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698242406;
	bh=qc+ov5LIKiozFMXukORRE9nDxHa73MG+JepRkO8LbM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ob42NPr3nRpkQzqR67FWvlhiE8STmmnJgumoM4rT/MisrlsTxUAd/GAlcmN4Y1TKY
	 2+vEvjd8gr7bvzjQGGOijUj4K6Gma1DNJKEL6G31fCXWlE0qeigb8v7xhQazaWwHV2
	 GUH0libugDsrQNtXk6ii+aZySXKaX61WHfGIGLV5Tb0NaUSSbiM52P5gdT5EOEJYuX
	 XL74b8uM/r8dsLCFRhqTNWB8HIzXuwmSTiFWSrGVmrtz6poMtUAn4tQE7ZcDG+uO08
	 ftUc0SIFtTK6ATlq5RC9hMli98aNgYYgtxvVD62TP9D84E0ajcNZp4T4RtHr2CY+vy
	 bzlrUl3haTjkQ==
Date: Wed, 25 Oct 2023 15:00:01 +0100
From: Conor Dooley <conor@kernel.org>
To: Richard Leitner <richard.leitner@linux.dev>
Cc: Guenter Roeck <linux@roeck-us.net>, Jean Delvare <jdelvare@suse.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: hwmon: add ti,ina238
Message-ID: <20231025-hut-omnivore-f4b44a7b928d@spud>
References: <20231025-ina237-v1-0-a0196119720c@linux.dev>
 <20231025-ina237-v1-2-a0196119720c@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XaYXm4eAH/Q3nOpF"
Content-Disposition: inline
In-Reply-To: <20231025-ina237-v1-2-a0196119720c@linux.dev>


--XaYXm4eAH/Q3nOpF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 25, 2023 at 10:34:12AM +0000, Richard Leitner wrote:
> The ina238 driver is available since 2021 but lacks a dt-bindings file.
> Therefore add the missing file now.

Seemingly it is documented in Documentation/devicetree/bindings/hwmon/ti,in=
a2xx.yaml

Cheers,
Conor.

>=20
> Mention Jean Delvare and Guenter Roeck as maintainers as reported by the
> get_maintainer.pl script.
>=20
> Signed-off-by: Richard Leitner <richard.leitner@linux.dev>
> ---
>  .../devicetree/bindings/hwmon/ti,ina238.yaml       | 46 ++++++++++++++++=
++++++
>  MAINTAINERS                                        |  1 +
>  2 files changed, 47 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/hwmon/ti,ina238.yaml b/Doc=
umentation/devicetree/bindings/hwmon/ti,ina238.yaml
> new file mode 100644
> index 000000000000..aba89e5f34b3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/ti,ina238.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +
> +$id: http://devicetree.org/schemas/hwmon/ti,ina238.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments INA238 power/voltage monitors
> +
> +maintainers:
> +  - Jean Delvare <jdelvare@suse.com>
> +  - Guenter Roeck <linux@roeck-us.net>
> +
> +description: |
> +  The INA238 is an ultra-precise digital power monitor with a
> +  16-bit delta-sigma ADC specifically designed for current-sensing
> +  applications.
> +
> +  Datasheets:
> +    https://www.ti.com/lit/ds/symlink/ina238.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,ina238
> +
> +  reg:
> +    maxItems: 1
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
> +        power-sensor@40 {
> +            compatible =3D "ti,ina238";
> +            reg =3D <0x40>;
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 28f91c8a2e1c..13858bd6a3d4 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10271,6 +10271,7 @@ INA238 HARDWARE MONITOR DRIVER
>  M:	Guenter Roeck <linux@roeck-us.net>
>  L:	linux-hwmon@vger.kernel.org
>  S:	Maintained
> +F:	Documentation/devicetree/bindings/hwmon/ti,ina238.yaml
>  F:	drivers/hwmon/ina238.c
> =20
>  INDEX OF FURTHER KERNEL DOCUMENTATION
>=20
> --=20
> 2.40.1
>=20

--XaYXm4eAH/Q3nOpF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTkfYQAKCRB4tDGHoIJi
0ij5AP41Xbf/AKBA0f15LztKkzCyqgf5yYkdNMp577jLE0Pw0wD8DnKGgXfXFTKQ
XEU/DYq7TMdXOb1pMA9qCvfttAhNTQE=
=uvAL
-----END PGP SIGNATURE-----

--XaYXm4eAH/Q3nOpF--

