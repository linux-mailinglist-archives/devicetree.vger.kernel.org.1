Return-Path: <devicetree+bounces-1963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEEA7A94EA
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 15:47:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25D011C20503
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 13:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 564A5B66D;
	Thu, 21 Sep 2023 13:47:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42876B641
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 13:47:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8547CC4E687;
	Thu, 21 Sep 2023 13:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695304054;
	bh=Oo9AjLmvT40iXA2aHlcvjH+u91I2XspBDwHA99rab5U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B/nzU1poVexwNkd1uy8NYKF7nqNzSxBZguu99fbkUbbpOGB0M5SIkbkOKFB0tLFHK
	 4u4LRILb6bb/hPssO9FbQR6ITa+eINX7rERGA+6Cm+/Gj80MA+4Exh1CEGWqwfVHIw
	 TF8e19PDWWeOZsXJPl4Be7LrH+8OQstaf+zWw17Icr8pueLiaA+2Ej3awqB6c7juJ6
	 dOZmyoJP7YtQKWwVuQFnrxB4DFhB5Uk7lIMntm6OTJc+PVGtrJD0x4Bde1AVh2BU28
	 UrlntiPzMnfdfLtkDt2FL5PD5hbJIDFLdSf7nrXjg4A7Vg349CbDEHDgKKnuWPNq93
	 j0lnhWD/kOxbQ==
Date: Thu, 21 Sep 2023 14:47:30 +0100
From: Conor Dooley <conor@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	hvilleneuve@dimonoff.com, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: sc16is7xx: add vendor prefix to
 irda-mode-ports property
Message-ID: <20230921-epidermis-labrador-3e51bb0b2cb9@spud>
References: <20230920152015.1376838-1-hugo@hugovil.com>
 <20230920152015.1376838-4-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dITO17on8mP4IvAa"
Content-Disposition: inline
In-Reply-To: <20230920152015.1376838-4-hugo@hugovil.com>


--dITO17on8mP4IvAa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 20, 2023 at 11:20:14AM -0400, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
>=20
> The NXP-specific "irda-mode-ports" property lacks a proper vendor
> prefix. Add "nxp," prefix to comply with DT best practises.

Looks like you've made changes to the driver in a way both will work,
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

>=20
> Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> ---
>  .../devicetree/bindings/serial/nxp,sc16is7xx.txt          | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.txt b=
/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.txt
> index 1a7e4bff0456..d89815c5c562 100644
> --- a/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.txt
> +++ b/Documentation/devicetree/bindings/serial/nxp,sc16is7xx.txt
> @@ -21,8 +21,8 @@ Optional properties:
>    the second cell is used to specify the GPIO polarity:
>      0 =3D active high,
>      1 =3D active low.
> -- irda-mode-ports: An array that lists the indices of the port that
> -		   should operate in IrDA mode.
> +- nxp,irda-mode-ports: An array that lists the indices of the port that
> +		       should operate in IrDA mode.
>  - nxp,modem-control-line-ports: An array that lists the indices of the p=
ort that
>  				should have shared GPIO lines configured as
>  				modem control lines.
> @@ -80,8 +80,8 @@ Optional properties:
>    the second cell is used to specify the GPIO polarity:
>      0 =3D active high,
>      1 =3D active low.
> -- irda-mode-ports: An array that lists the indices of the port that
> -		   should operate in IrDA mode.
> +- nxp,irda-mode-ports: An array that lists the indices of the port that
> +		       should operate in IrDA mode.
>  - nxp,modem-control-line-ports: An array that lists the indices of the p=
ort that
>  				should have shared GPIO lines configured as
>  				modem control lines.
> --=20
> 2.30.2
>=20

--dITO17on8mP4IvAa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQxJcgAKCRB4tDGHoIJi
0i60AQDkv6NAQfFJKu9ceTROjQsUq5KvzHpILZ/l5wPEFqql6wEA16WdTQeQYNUJ
S1/xZghGAvjC+nLpApgENKAvRXOFJg4=
=eS7q
-----END PGP SIGNATURE-----

--dITO17on8mP4IvAa--

