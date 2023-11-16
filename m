Return-Path: <devicetree+bounces-16281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 818F47EE2F6
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 15:36:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21D17B20C28
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:36:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61870315A2;
	Thu, 16 Nov 2023 14:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mim3lN82"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46083328C9
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 14:36:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10041C433C7;
	Thu, 16 Nov 2023 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700145387;
	bh=OyITewxPkxNCTFIYqji7Ivpq0vZare/32nbCo4GuYNI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mim3lN82s00lA25X5lCbXXbeKf3sO2lQqSOE3n9TiKH1LmNKp/3BzxVZ4N/78rzZU
	 RkebEPoiPwWZBQ353Enf7j6CQaKTqaH9+gcdLgXBQXdsYikNiy7qXfQys4LjdIW45f
	 4bS34QP0FcG8tCGqKa5Kv3cPQse3rwLmvVvRD1dc9tVIE6mO3lCLYVX8U7yVfO+WBA
	 5j+MYh9OAxx3ClUsk21UvoyIXIjD5GY5SuSZJpv1PkQBqnew31I83Y0xf5CnVihb6y
	 P9tifTb+fRqGhKktucKsQ6/F9Jy3iHAPxLzZrBwbJHIYQ767SAHA9iwP/n7+5NSWWD
	 ZEAoa9xet75rw==
Date: Thu, 16 Nov 2023 14:36:24 +0000
From: Conor Dooley <conor@kernel.org>
To: Chester Lin <clin@suse.com>
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org, Chester Lin <chester62515@gmail.com>,
	NXP S32 Linux Team <s32@nxp.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: serial: fsl-linflexuart: change the
 maintainer email address
Message-ID: <20231116-flight-motivate-625a5ab39dad@squawk>
References: <20231115235732.13633-1-clin@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lTcXpuFKDHaLOpGv"
Content-Disposition: inline
In-Reply-To: <20231115235732.13633-1-clin@suse.com>


--lTcXpuFKDHaLOpGv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 16, 2023 at 07:57:32AM +0800, Chester Lin wrote:
> I am leaving SUSE so the current email address <clin@suse.com> will be
> disabled soon. <chester62515@gmail.com> will be my new address for handli=
ng
> emails, patches and pull requests from upstream and communities.
>=20
> Cc: Chester Lin <chester62515@gmail.com>
> Cc: NXP S32 Linux Team <s32@nxp.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Jiri Slaby <jirislaby@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Signed-off-by: Chester Lin <clin@suse.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> ---
>  .../devicetree/bindings/serial/fsl,s32-linflexuart.yaml         | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart=
=2Eyaml b/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.yaml
> index 920539926d7e..7a105551fa6a 100644
> --- a/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.yaml
> +++ b/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.yaml
> @@ -13,7 +13,7 @@ description: |
>    https://www.nxp.com/webapp/Download?colCode=3DS32V234RM.
> =20
>  maintainers:
> -  - Chester Lin <clin@suse.com>
> +  - Chester Lin <chester62515@gmail.com>
> =20
>  allOf:
>    - $ref: serial.yaml#
> --=20
> 2.40.0
>=20

--lTcXpuFKDHaLOpGv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVYo5QAKCRB4tDGHoIJi
0ukMAP9ct19q7TkUXkNezcsUl6fNCe1XRrZBAvDlHYVfDXv9AAD9EarhPAo3ZxTe
8ymj18fN79puxR+C1Zj+APiRZiJFMg0=
=tDSh
-----END PGP SIGNATURE-----

--lTcXpuFKDHaLOpGv--

