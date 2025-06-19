Return-Path: <devicetree+bounces-187634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E98AE0AC6
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 17:43:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C39853BE74E
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 15:43:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1B07263F38;
	Thu, 19 Jun 2025 15:43:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGSuu7NX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD31224339D
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 15:43:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750347830; cv=none; b=OBhbiiqd/BebIQAWSRetvSW/IoRgLI2oR0snpGHPpY31bP6jZ2umeaEgP9vOtW4hd3HC2yHIvNW26WG6oE7G7qjTUeS1rjz2Puoplb4ww6YPLTNHd7CICaD10knkf1ChdDvd25GggOpv4etBDWFCXrmxqWyX7+aMI2YvhL0CApY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750347830; c=relaxed/simple;
	bh=UbDHYv4/Cb5WoHKg1VJxoa9UngLpiaMmnTd19/PwptM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WO8xAnHcI+XUo/xHeXLB/sDCT41N43S6kWaC4T0Y+YN4FzWi42YIFn/tj0fdv0VL/Hm2+KLaCMUlT28SMzm8IT4TbB4j9C75a1yI5hWsmyRxkzcakHwPSfkPh+G3ao4JF4s1ev+7KZGSsG9Cmp95zmR00yuE6knVZ6d5Qd5wGOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGSuu7NX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94A54C4CEEA;
	Thu, 19 Jun 2025 15:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750347830;
	bh=UbDHYv4/Cb5WoHKg1VJxoa9UngLpiaMmnTd19/PwptM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uGSuu7NXaEtJvu48wGI1d0RQhNxurzk/4YoD2OwkgxoNo7+eXq3sFq1lcq0pPZzCc
	 Ux2R6Qm6TPLx/zZAy5ntXvk1dSGgxkQ1EVlaGxMO4KoSfaSLYqBPTj8Qp2qMV8Lbnx
	 +HlO1TboQyfZq3S5NFKiNBAXUEhkNfYLVl0U7/0nE7k44eVr40AGzWjiQumHYNflkG
	 vTQenG5QyoVpqYTtbRETpae3Yv55h3T2fxQ8idikidr4cOadgwrVts7XNwBJU2qh9B
	 4JBuSe8D4SygK6fAkjivtqrt9a+SP6lanBIgLPpkiJkQFnL4+X5MgBgCaLL5FdF27I
	 MJ33Bt9Feucfg==
Date: Thu, 19 Jun 2025 16:43:46 +0100
From: Conor Dooley <conor@kernel.org>
To: LiangCheng Wang <zaq14760@gmail.com>
Cc: cip-dev@lists.cip-project.org, drm@lists.freedesktop.org,
	devicetree@vger.kernel.org, noralf@tronnes.org, robh+dt@kernel.org,
	krzk@kernel.org, onlywig@gmail.com
Subject: Re: [PATCH 3/3] dt-bindings: display: Add MAYQUEEN PIXPAPER e-ink
 panel
Message-ID: <20250619-earlobe-skiing-25605816a861@spud>
References: <20250618033731.171812-1-zaq14760@gmail.com>
 <20250618033731.171812-4-zaq14760@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QN4uNdCU9WfwuFc9"
Content-Disposition: inline
In-Reply-To: <20250618033731.171812-4-zaq14760@gmail.com>


--QN4uNdCU9WfwuFc9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 18, 2025 at 11:37:31AM +0800, LiangCheng Wang wrote:
> The binding is for the MAYQUEEN PIXPAPER e-ink display panel,
> controlled via an SPI interface.
>=20
> Signed-off-by: LiangCheng Wang <zaq14760@gmail.com>
> ---
>  .../bindings/display/mayqueen,pixpaper.yaml   | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mayqueen,pi=
xpaper.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/display/mayqueen,pixpaper.=
yaml b/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
> new file mode 100644
> index 000000000..f7c33957e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/mayqueen,pixpaper.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MAYQUEEN PIXPAPER e-ink display panel
> +
> +maintainers:
> +  - LC Wang <zaq14760@gmail.com>
> +
> +description: |
> +  The PIXPAPER is an e-ink display panel controlled via an SPI interface.
> +  The panel has a resolution of 122x250 pixels and requires GPIO pins for
> +  reset, busy, and data/command control.
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +properties:
> +  compatible:
> +    const: mayqueen,pixpaper
> +
> +  reg:
> +    maxItems: 1
> +    description: SPI chip select number for the device.
> +
> +  spi-max-frequency:
> +    default: 1000000
> +    description: Maximum SPI clock frequency in Hz.

Does this actually not have a max?
The display surely has a maximum supported frequency, which might be
lowered based on the board it is connected to.

> +
> +  reset-gpios:
> +    maxItems: 1
> +    description: GPIO for the panel reset pin.
> +
> +  busy-gpios:
> +    maxItems: 1
> +    description: GPIO for the panel busy pin.
> +
> +  dc-gpios:
> +    maxItems: 1
> +    description: GPIO for the data/command pin.
> +
> +required:
> +  - compatible
> +  - reg
> +  - reset-gpios
> +  - busy-gpios
> +  - dc-gpios
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    spi {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +        display@0 {
> +            compatible =3D "mayqueen,pixpaper";
> +            reg =3D <0>;
> +            spi-max-frequency =3D <1000000>;
> +            reset-gpios =3D <&gpio1 17 GPIO_ACTIVE_HIGH>;
> +            busy-gpios =3D <&gpio1 18 GPIO_ACTIVE_HIGH>;
> +            dc-gpios =3D <&gpio1 19 GPIO_ACTIVE_HIGH>;
> +        };
> +    };
> --=20
> 2.34.1
>=20
>=20

--QN4uNdCU9WfwuFc9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaFQwMgAKCRB4tDGHoIJi
0nzdAQDQF27g4xVuG40BdEuZhLCUiWhBPHYBn8EQEm95V/OXPgEA2EOdbu3YDyPo
pV7ouU6xHIaC8fClsUQI5hIMcom12AI=
=D9VV
-----END PGP SIGNATURE-----

--QN4uNdCU9WfwuFc9--

