Return-Path: <devicetree+bounces-15450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BB47EA411
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 20:55:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF64AB209DD
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 19:55:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DD762377C;
	Mon, 13 Nov 2023 19:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o64/BByK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A7E322E;
	Mon, 13 Nov 2023 19:55:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CF17C433C7;
	Mon, 13 Nov 2023 19:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699905323;
	bh=/mEJdQDRVlRmngKN4pcB57AB2oYs9rJ17A7xnclfg1o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o64/BByKZgPfIGfQW4wy+lPsOWQm71BOGjheBDc9qq2R8Ld+UGFgybrQj5voEuFSn
	 s+SVrD7zOA6bfvAFxAPayW8w65w55UVnjZuhRMC6iIhJ8YiOzVpYXom81813cyTwsP
	 R+AiAo8wsYShIzEIiVs034eX0T0zmbEMH1vJbzkfWNlmEcMEHJfakKsgqxBpYB7Sz0
	 1/5H4CH0ITSFPV7FE/bLQDnxkIA2Rf/dC36nTFSeS4H40idU8BGEcM0r5p/oxDpneL
	 YgYm0jx46s8L3LAKk47C9gzkpeK2yfxHmQv6qm8olyxyczgRN4ZxYPuoKKh4+1AY3R
	 Zo6LOK9n1GeRw==
Date: Mon, 13 Nov 2023 19:55:20 +0000
From: Conor Dooley <conor@kernel.org>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Piyush Mehta <piyush.mehta@amd.com>,
	Michal Simek <michal.simek@amd.com>,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: usb: microchip,usb5744: Add second
 supply
Message-ID: <20231113-jargon-manliness-584f34a5cf85@squawk>
References: <20231113145921.30104-1-francesco@dolcini.it>
 <20231113145921.30104-2-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NUfLqWiKxrUMzPHz"
Content-Disposition: inline
In-Reply-To: <20231113145921.30104-2-francesco@dolcini.it>


--NUfLqWiKxrUMzPHz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 13, 2023 at 03:59:20PM +0100, Francesco Dolcini wrote:
> From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
>=20
> The USB5744 has two power supplies one for 3V3 and one for 1V2. Add the
> second supply to the USB5744 DT binding.
>=20
> Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> ---
>  .../devicetree/bindings/usb/microchip,usb5744.yaml         | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/usb/microchip,usb5744.yaml=
 b/Documentation/devicetree/bindings/usb/microchip,usb5744.yaml
> index ff3a1707ef57..6d4cfd943f58 100644
> --- a/Documentation/devicetree/bindings/usb/microchip,usb5744.yaml
> +++ b/Documentation/devicetree/bindings/usb/microchip,usb5744.yaml
> @@ -36,7 +36,11 @@ properties:
> =20
>    vdd-supply:
>      description:
> -      VDD power supply to the hub
> +      3V3 power supply to the hub
> +
> +  vdd2-supply:
> +    description:
> +      1V2 power supply to the hub

How about v1p2-supply?

> =20
>    peer-hub:
>      $ref: /schemas/types.yaml#/definitions/phandle
> @@ -62,6 +66,7 @@ allOf:
>        properties:
>          reset-gpios: false
>          vdd-supply: false
> +        vdd2-supply: false
>          peer-hub: false
>          i2c-bus: false
>      else:
> --=20
> 2.25.1
>=20

--NUfLqWiKxrUMzPHz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVJ/JQAKCRB4tDGHoIJi
0k2PAPwOdQhywJwuAZjnU/iQNYA05yDhebyiC8ww3khoUNC67gD8C2q6nnIt6zV5
/kUBsKSWL0ps2nlfYL8Hrl0SqGaYEwU=
=yZbA
-----END PGP SIGNATURE-----

--NUfLqWiKxrUMzPHz--

