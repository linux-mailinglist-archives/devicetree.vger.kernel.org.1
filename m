Return-Path: <devicetree+bounces-8528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB3B7C8838
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 17:03:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49B7B282CD4
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 15:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FEA817740;
	Fri, 13 Oct 2023 15:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkLvd9zG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6089429A9
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 15:03:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C152CC433C8;
	Fri, 13 Oct 2023 15:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697209383;
	bh=6DmWN740bZEDU0dI3GA4xdxUBA8MIf6dFn8OKFggBBw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AkLvd9zGybsSqGZ4a+JjVN5Ez1JZvTl9Ybu72oyxMbqqN/iwrFqctRY7uROegLQyC
	 yTT2mGIL/wCN1QWEbLppvBItKaypUZ9nDkJYdwIiNwWJyfjI0MQVCpDSAInsKQmQX7
	 94v3QQbt/h7E68ijEklFHofsB1SQk+XxOrBeIqKM86zD1uRQemQZd8pRhWDWe2kL2k
	 wx82VKIbMcTII9OImMv3ZVvY4k6NUaRHPWC2Ny3HGn7pDIRpNI5E1Mc8MlvmZT10wL
	 CznqD7Qp3QUrSzG+rnazQvsR2sNR+rgdGGTXjDPiAHIft8yLouCEdskg/hN/EnC5oV
	 od4395Hx6J8SQ==
Date: Fri, 13 Oct 2023 16:02:59 +0100
From: Conor Dooley <conor@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	Marek Vasut <marex@denx.de>
Subject: Re: [PATCH 1/2] dt-bindings: at24: add ST M24C64-D Additional Write
 lockable page
Message-ID: <20231013-frayed-strongly-c8664be51ca4@spud>
References: <20231013063008.2879314-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uh8o1iaaFSBoYyMk"
Content-Disposition: inline
In-Reply-To: <20231013063008.2879314-1-alexander.stein@ew.tq-group.com>


--uh8o1iaaFSBoYyMk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 13, 2023 at 08:30:07AM +0200, Alexander Stein wrote:
> The ST M24C64-D behaves as a regular M24C64, except for the -D variant
> which uses up another I2C address for Additional Write lockable page.
> This page is 32 Bytes long and can contain additional data. Document
> compatible string for it, so users can describe that page in DT. Note
> that users still have to describe the main M24C64 area separately as
> that is on separate I2C address from this page.
>=20
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
> This is a copy & paste of [1] for ST M24C64-D. I reused the same pattern =
and
> also used Marek's commit message.
>=20
> [1] https://lore.kernel.org/all/20231010190926.57674-1-marex@denx.de/#t
>=20
>  Documentation/devicetree/bindings/eeprom/at24.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documen=
tation/devicetree/bindings/eeprom/at24.yaml
> index 7be127e9b2507..6385b05a1e62f 100644
> --- a/Documentation/devicetree/bindings/eeprom/at24.yaml
> +++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
> @@ -73,6 +73,8 @@ properties:
>                    pattern: cs32$
>                - items:
>                    pattern: c64$
> +              - items:
> +                  pattern: c64d-wl$
>                - items:
>                    pattern: cs64$
>                - items:
> --=20
> 2.34.1
>=20

--uh8o1iaaFSBoYyMk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSlcIwAKCRB4tDGHoIJi
0r1XAQD7ocUFAReBCicUxUSeeiREAa2IZ5Ws7QJ5ZHN5tqL8gwD+OsqzE1FQtTZE
kry38l35nZ2SpRa4L4JG+w5rVgaluA8=
=HtlU
-----END PGP SIGNATURE-----

--uh8o1iaaFSBoYyMk--

