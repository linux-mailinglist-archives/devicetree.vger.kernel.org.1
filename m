Return-Path: <devicetree+bounces-12193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 025537D84B9
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:29:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 32A2A1C20E7F
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1FF22EAF3;
	Thu, 26 Oct 2023 14:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cx8czMtr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADFDA2EAED
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:29:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48792C433C7;
	Thu, 26 Oct 2023 14:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698330594;
	bh=vv7qkD0QJgzQ4FzS0v5pjyrB4lFZ3kZFpqUdYHIgMWU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Cx8czMtr5PWdUmPj1oRqxqB4FpzttWpHoZ1l/+7zDDjVxba8R+BUWpuBE+rmFO06v
	 KQMD0al+Sx4pnf1xlux4rx5cwI0dkKbgTqTrCRvVxuYGteZv1L330Rm1xgG+26HXgt
	 E/nsJ7E+4miaEK9ESLgYu7NFgr5TzZEQKOAl5/AihdKONUAxBwbHOdDrEBRT3IbALP
	 mvha/hTKMBMkqSIHNafrfOTVsHiDjXiUOzomRsRfpLjIcnAzvo02I1CTv9VHF9JUT3
	 Y7jsLmPWnyj12Hpl7CSR9ildgTe+9/FFZrSY5VlnO+W2IHICR+MwCB2AXmLh+AFs6Q
	 q2HluKGNrcgbA==
Date: Thu, 26 Oct 2023 15:29:50 +0100
From: Conor Dooley <conor@kernel.org>
To: Richard Leitner <richard.leitner@linux.dev>
Cc: Guenter Roeck <linux@roeck-us.net>, Jean Delvare <jdelvare@suse.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] dt-bindings: hwmon: ti,ina2xx: add ti,ina237
Message-ID: <20231026-astrology-map-9d85a2df0177@spud>
References: <20231026-ina237-v2-0-dec44811a3c9@linux.dev>
 <20231026-ina237-v2-2-dec44811a3c9@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cgKijTrTyz901EHF"
Content-Disposition: inline
In-Reply-To: <20231026-ina237-v2-2-dec44811a3c9@linux.dev>


--cgKijTrTyz901EHF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 26, 2023 at 09:08:50AM +0200, Richard Leitner wrote:
> Add ti,ina237 binding to ti,ina2xx as they are very similar and may
> share the same properties.
>=20
> Signed-off-by: Richard Leitner <richard.leitner@linux.dev>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml b/Doc=
umentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
> index 8648877d2d01..378d1f6aeeb3 100644
> --- a/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
> +++ b/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
> @@ -26,6 +26,7 @@ properties:
>        - ti,ina226
>        - ti,ina230
>        - ti,ina231
> +      - ti,ina237
>        - ti,ina238
> =20
>    reg:
>=20
> --=20
> 2.40.1
>=20

--cgKijTrTyz901EHF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTp33QAKCRB4tDGHoIJi
0nlIAP0Y62c1H1P0GZ4EpgrIIwA28NyyBMd65NgP2dqdiDEy2gEA55Xie9K+kT7f
bJwPQpo31+5RqRNsYYLxs9dUXrbR+gE=
=JjDE
-----END PGP SIGNATURE-----

--cgKijTrTyz901EHF--

