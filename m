Return-Path: <devicetree+bounces-10135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BA47CFC26
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:11:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 219911C20DEC
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:11:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1E4D29D04;
	Thu, 19 Oct 2023 14:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oem3h5yI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5F662744F
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:11:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4400C433C8;
	Thu, 19 Oct 2023 14:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697724671;
	bh=Af47nTwfZd2bDGsJz4b/vMDbS1rOoweEYjo4Y5vxWM8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Oem3h5yIua/fbgYH7Sp2vg5+IJJx4NKUhYcSMY+peTOSA+UTBY1eNtE/X1KipSsWu
	 qGGms8b+3La4hOgxZnDUxdE7UNUfu8zdsfsVMx/oZm9oGGQK7Lh0JR0hKnY+olFqQH
	 avAg+0t76a7kiQ8EuX0RtuhkmRTG9SWy+D7i4GttBYLalv404XNtNCj8qHxDeGudcU
	 kLtRBiAHpamRqkzAubSpJUk+tH+Emz7cOsEBQX+i6pJD/1kVEzC46hJwjYeoWcOt6r
	 XtLwKOyCWSgTY5f3ugliQX7nSyEOfnWqqVmnxAJagnlV3IJTC7nQaqmZpeyql9unJB
	 DDZxnmN8wTtDw==
Date: Thu, 19 Oct 2023 15:11:06 +0100
From: Conor Dooley <conor@kernel.org>
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: lee@kernel.org, pavel@ucw.cz, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	andy.shevchenko@gmail.com, kernel@sberdevices.ru,
	rockosov@gmail.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v2 03/11] dt-bindings: leds: aw200xx: introduce optional
 hwen-gpios property
Message-ID: <20231019-affection-mountain-7bd5b7eb0ca2@spud>
References: <20231018182943.18700-1-ddrokosov@salutedevices.com>
 <20231018182943.18700-4-ddrokosov@salutedevices.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RTnMTg2ozgWALe2C"
Content-Disposition: inline
In-Reply-To: <20231018182943.18700-4-ddrokosov@salutedevices.com>


--RTnMTg2ozgWALe2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 18, 2023 at 09:29:35PM +0300, Dmitry Rokosov wrote:
> Property 'hwen-gpios' is optional, it can be used by the board
> developer to connect AW200XX LED controller with appropriate poweron
> GPIO pad.

If the pad is called "poweron", why is the property called "hwen"?

>=20
> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
> ---
>  Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml b=
/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> index feb5febaf361..255eb0563737 100644
> --- a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> +++ b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> @@ -41,6 +41,9 @@ properties:
>      description:
>        Leds matrix size
> =20
> +  hwen-gpios:
> +    maxItems: 1
> +
>  patternProperties:
>    "^led@[0-9a-f]$":
>      type: object
> @@ -90,6 +93,7 @@ additionalProperties: false
> =20
>  examples:
>    - |
> +    #include <dt-bindings/gpio/gpio.h>
>      #include <dt-bindings/leds/common.h>
> =20
>      i2c {
> @@ -102,6 +106,7 @@ examples:
>              #address-cells =3D <1>;
>              #size-cells =3D <0>;
>              awinic,display-rows =3D <3>;
> +            hwen-gpios =3D <&gpio 3 GPIO_ACTIVE_HIGH>;
> =20
>              led@0 {
>                  reg =3D <0x0>;
> --=20
> 2.36.0
>=20

--RTnMTg2ozgWALe2C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTE4+gAKCRB4tDGHoIJi
0pQTAP9Chq5x5fWNiAxRiksgdtEXDq4ttwPLAmWmpFXaAj/gGwD/VcSVwsKPd5di
SS96SOBfT8Bg47Vpg0rlle9gWq59mQ0=
=TpKR
-----END PGP SIGNATURE-----

--RTnMTg2ozgWALe2C--

