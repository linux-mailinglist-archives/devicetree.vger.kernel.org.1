Return-Path: <devicetree+bounces-3899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8F27B0752
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 16:52:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8E4012814AB
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 14:52:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F25FF31A98;
	Wed, 27 Sep 2023 14:52:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6A71846
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 14:52:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E010C433C7;
	Wed, 27 Sep 2023 14:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695826369;
	bh=KYsU6F1OWipGJBjQhqhwLEtZLYFO0yCsHTzUzpd2p2A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fEOIaLTaSOlMEI3zbHLgX2Rq9MOxZ1qYbwvuGcXFaqKZjXlwVan4cwG+d++ZTI0fQ
	 Robf6HffovF7TGOQUcNoyUDCaTGEc10MKc7xIa+6490fZIs9X//C+CjtJRJTssI4Ej
	 Kuc6FMUa2t2Lh8GSL2SztyGeA3f6kmn9wLKwi6jym+xediWk3qdAPNGh0m3GAdx4kg
	 MgBx5VXxwCFouYEJBKN+VaXuMx3UcYO+n4wsKFpa55CJe8irhp8yaPQDMv90JS3v99
	 mftCUrnL9SyfWQ957hKBmEaneaXlJcBraOKHYaYLLXWYCyvXkWmRCMA1zIuJcUHBR1
	 haUDsiQaqrmgw==
Date: Wed, 27 Sep 2023 15:52:44 +0100
From: Conor Dooley <conor@kernel.org>
To: Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Walker Chen <walker.chen@starfivetech.com>,
	Hal Feng <hal.feng@starfivetech.com>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [-next v1 1/2] dt-bindings: power: Update prefixes for AON power
 domain
Message-ID: <20230927-coma-flashback-07d2e7b34f96@spud>
References: <20230927130734.9921-1-changhuang.liang@starfivetech.com>
 <20230927130734.9921-2-changhuang.liang@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xGOf7ag5cN9+/+jq"
Content-Disposition: inline
In-Reply-To: <20230927130734.9921-2-changhuang.liang@starfivetech.com>


--xGOf7ag5cN9+/+jq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 27, 2023 at 06:07:33AM -0700, Changhuang Liang wrote:
> Use "JH7110_AON_PD_" prefix for AON power doamin for JH7110 SoC.
>=20
> Reviewed-by: Walker Chen <walker.chen@starfivetech.com>
> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  include/dt-bindings/power/starfive,jh7110-pmu.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/include/dt-bindings/power/starfive,jh7110-pmu.h b/include/dt=
-bindings/power/starfive,jh7110-pmu.h
> index 341e2a0676ba..7b4f24927dee 100644
> --- a/include/dt-bindings/power/starfive,jh7110-pmu.h
> +++ b/include/dt-bindings/power/starfive,jh7110-pmu.h
> @@ -14,7 +14,8 @@
>  #define JH7110_PD_ISP		5
>  #define JH7110_PD_VENC		6
> =20
> -#define JH7110_PD_DPHY_TX	0
> -#define JH7110_PD_DPHY_RX	1
> +/* AON Power Domain */
> +#define JH7110_AON_PD_DPHY_TX	0
> +#define JH7110_AON_PD_DPHY_RX	1
> =20
>  #endif
> --=20
> 2.25.1
>=20

--xGOf7ag5cN9+/+jq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRRBvAAKCRB4tDGHoIJi
0gecAQD3KIdJsVdpHOt1Z0tStNB+PSX9XCQVNaOTNXm6DboR5AEAxVgdVcUs49EP
rivtCK7ZZmaldoxIUnLYA+jEPrzFqQM=
=5LyB
-----END PGP SIGNATURE-----

--xGOf7ag5cN9+/+jq--

