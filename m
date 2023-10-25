Return-Path: <devicetree+bounces-11868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F857D6DD2
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:58:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34F6B1C20CE9
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:58:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B79228DD8;
	Wed, 25 Oct 2023 13:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gESLI8s/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706861172D
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:58:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68816C433C8;
	Wed, 25 Oct 2023 13:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698242329;
	bh=UlTZEI3okYwEXOfqTgk+bCPT0BOZMTu5VbgUq9Mk0hM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gESLI8s/yysIu3Do5iEPzsQY1bHaGM5GwL/ilzz2jiuw8Ib3qR/2Tp+kj7zV6XWUP
	 wRgW1ZPNuhRjAJux9fc4IV56ezNfgMAQA8xW9Q/Fic2WvO9b+2XfWrGVXMtlp+L7QA
	 DdWghilDA8bvvmshc+0rLvXIYGp5VufLYpjhbv/Txo1k8YotgvxprDQss49FrwuyrW
	 a3Y+29MwjuUUiAzAIzaxORwMtq06jC5KlZeYnE6olvpLtC2XFkWAhGpML7ZC3vIvPI
	 3kaNYGI3B1jxfdYtN1nHACAk2nG/0Sg86FKHQUEPTVnkXAzZs7pa2S/wlb3g3Cffji
	 yd8xYIhECv5gw==
Date: Wed, 25 Oct 2023 14:58:44 +0100
From: Conor Dooley <conor@kernel.org>
To: Richard Leitner <richard.leitner@linux.dev>
Cc: Guenter Roeck <linux@roeck-us.net>, Jean Delvare <jdelvare@suse.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 4/4] dt-bindings: hwmon: ti,ina238: add ti,ina237
Message-ID: <20231025-unclip-ion-826a58681a12@spud>
References: <20231025-ina237-v1-0-a0196119720c@linux.dev>
 <20231025-ina237-v1-4-a0196119720c@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pE6BoEu0EbdyHUId"
Content-Disposition: inline
In-Reply-To: <20231025-ina237-v1-4-a0196119720c@linux.dev>


--pE6BoEu0EbdyHUId
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 25, 2023 at 10:34:14AM +0000, Richard Leitner wrote:
> Add ti,ina237 binding to ti,ina238 as they share the same driver.
>=20
> Signed-off-by: Richard Leitner <richard.leitner@linux.dev>
> ---
>  Documentation/devicetree/bindings/hwmon/ti,ina238.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/hwmon/ti,ina238.yaml b/Doc=
umentation/devicetree/bindings/hwmon/ti,ina238.yaml
> index aba89e5f34b3..17408076696c 100644
> --- a/Documentation/devicetree/bindings/hwmon/ti,ina238.yaml
> +++ b/Documentation/devicetree/bindings/hwmon/ti,ina238.yaml
> @@ -22,6 +22,7 @@ description: |
>  properties:
>    compatible:
>      enum:
> +      - ti,ina237

The driver patch you have done implies no difference between the
programming model for both of these devices. It'd seem to make more sense
for the ina237 to fall back to the ina238, thereby requiring no change in
the driver to support it.

Cheers,
Conor.

>        - ti,ina238
> =20
>    reg:
>=20
> --=20
> 2.40.1
>=20

--pE6BoEu0EbdyHUId
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTkfEwAKCRB4tDGHoIJi
0pu2AQCAxnniBjz6rcPwfkiVyxIlV2tWkTei9kpP4WDrtKDCdwD+OebGU9904K9V
R2HVKdB53Bhw0pxQXt5EW4gUi6BysQI=
=tFzz
-----END PGP SIGNATURE-----

--pE6BoEu0EbdyHUId--

