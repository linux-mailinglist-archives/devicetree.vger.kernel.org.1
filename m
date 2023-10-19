Return-Path: <devicetree+bounces-10130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AE37CFC10
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:07:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2A011C20AD9
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B63929CFD;
	Thu, 19 Oct 2023 14:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9KWOarV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB7427477
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:07:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CA4EC433C8;
	Thu, 19 Oct 2023 14:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697724451;
	bh=NQnMTo4gBloKEhDr5l90XulgIfvK7m0vwuYrC+Nvl1Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q9KWOarV2VoknsUXWkEgd+i6FlARz8FGvhdRBObmNgR6f76TB4RbhtWoN1F6nZGkZ
	 864CKmYnJhl7PKV3a/xe8fpBhr55nxtliALOQSvsbJCG63enwySG1otQYoUH2jO7HO
	 FvTacIEi0q9ppSklhF5Vq+nH2cfFnVfyZkwZNYUhmVp8WAhjUN0yPNgh+6Zv2UFW2M
	 NZ1OIF+Ug5EFpp5Lcm+AQWTbL3xVE/o2d0Nj2vpW9/rLUh+P1HVKsTB0pjlTEN1CyI
	 wuNdCPxQg2rv1+eOraih+5eM8+2FCFYs9KdChUZCWwwciMnsyBXYFoX1qwD1dgrvsp
	 3JoNMTfJeaX/g==
Date: Thu, 19 Oct 2023 15:07:26 +0100
From: Conor Dooley <conor@kernel.org>
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: lee@kernel.org, pavel@ucw.cz, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	andy.shevchenko@gmail.com, kernel@sberdevices.ru,
	rockosov@gmail.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
	George Stark <gnstark@salutedevices.com>
Subject: Re: [PATCH v2 10/11] dt-bindings: leds: awinic,aw200xx: add AW20108
 device
Message-ID: <20231019-marbles-resample-1619cef50e07@spud>
References: <20231018182943.18700-1-ddrokosov@salutedevices.com>
 <20231018182943.18700-11-ddrokosov@salutedevices.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="83e25rSk0iUnOhmA"
Content-Disposition: inline
In-Reply-To: <20231018182943.18700-11-ddrokosov@salutedevices.com>


--83e25rSk0iUnOhmA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 18, 2023 at 09:29:42PM +0300, Dmitry Rokosov wrote:
> From: George Stark <gnstark@salutedevices.com>
>=20
> Add aw20108 compatible for Awinic AW20108 led controller.
>=20
> Signed-off-by: George Stark <gnstark@salutedevices.com>
> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> ---
>  .../devicetree/bindings/leds/awinic,aw200xx.yaml          | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml b=
/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> index ee849ef3236a..efb18ddce383 100644
> --- a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> +++ b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> @@ -10,15 +10,16 @@ maintainers:
>    - Martin Kurbanov <mmkurbanov@sberdevices.ru>
> =20
>  description: |
> -  This controller is present on AW20036/AW20054/AW20072.
> -  It is a 3x12/6x9/6x12 matrix LED programmed via
> -  an I2C interface, up to 36/54/72 LEDs or 12/18/24 RGBs,
> +  This controller is present on AW20036/AW20054/AW20072/AW20108.
> +  It is a 3x12/6x9/6x12/9x12 matrix LED programmed via
> +  an I2C interface, up to 36/54/72/108 LEDs or 12/18/24/36 RGBs,
>    3 pattern controllers for auto breathing or group dimming control.
> =20
>    For more product information please see the link below:
>    aw20036 - https://www.awinic.com/en/productDetail/AW20036QNR#tech-docs
>    aw20054 - https://www.awinic.com/en/productDetail/AW20054QNR#tech-docs
>    aw20072 - https://www.awinic.com/en/productDetail/AW20072QNR#tech-docs
> +  aw20108 - https://www.awinic.com/en/productDetail/AW20108QNR#tech-docs
> =20
>  properties:
>    compatible:
> @@ -26,6 +27,7 @@ properties:
>        - awinic,aw20036
>        - awinic,aw20054
>        - awinic,aw20072
> +      - awinic,aw20108
> =20
>    reg:
>      maxItems: 1
> --=20
> 2.36.0
>=20
>=20

--83e25rSk0iUnOhmA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTE4HgAKCRB4tDGHoIJi
0rVoAPwKZ5Haug7t186n1PU3KYbLww6y1HXyfwQM7rgDp2p2NAEAtZyp5p7E2gIA
QHDRHMUeU9+1OU+DOIoSghTAgoSNEgw=
=enfi
-----END PGP SIGNATURE-----

--83e25rSk0iUnOhmA--

