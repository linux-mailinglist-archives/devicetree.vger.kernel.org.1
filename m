Return-Path: <devicetree+bounces-3350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6A87AE7F5
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 10:24:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id A217FB20A34
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 08:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45B57125C6;
	Tue, 26 Sep 2023 08:24:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CBE6FAB
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 08:24:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 812D4C433C7;
	Tue, 26 Sep 2023 08:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695716641;
	bh=N+htFXw/hCzIbw77S71T5S5Ge7dnttaQL6oIDatJBEY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qiiM36hO7sqMBFIoLRJVCrh4riS2y5yLMs7+/4JYwHWPD0tjbSEUBP/t3E494YivH
	 Yyn/U7kJ7ueVsY73QCDoeEXtwYDZLFH+Qqv1RMW5t8NTxReKufGOMyqC1tpMz65eWf
	 2nAgYANNe1/W9x9EptGlqdWki4gOxoB6Dg3SoRMXQlOGhTw1R6BPq+vhQeDGio83mw
	 JW/tvn1ZQmWENch2I2WL7LVl1V0njn6sNQKyNOO+unNVg6ZMTct4v5j+QI8oZxOmXe
	 UmFtkg0Aumr46aunI0yKSKBJrFcq3LKFw0gWASqH8SwjFx4ZJFuNmTRYA17c5NeXxi
	 q4pWdoPTqhEPQ==
Date: Tue, 26 Sep 2023 09:23:57 +0100
From: Conor Dooley <conor@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Peter Denison <openwrt@marshadder.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Krzysztof Halasa <khalasa@piap.pl>, Imre Kaloz <kaloz@openwrt.org>,
	Ted Hess <thess@kitschensync.net>, Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: Add vendor prefixes
Message-ID: <20230926-ignore-negligee-7868c3e07424@spud>
References: <20230925-ixp4xx-usr8200-v2-0-433261c13a28@linaro.org>
 <20230925-ixp4xx-usr8200-v2-1-433261c13a28@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="S2SscZ/1PQix+1QU"
Content-Disposition: inline
In-Reply-To: <20230925-ixp4xx-usr8200-v2-1-433261c13a28@linaro.org>


--S2SscZ/1PQix+1QU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 25, 2023 at 11:03:38AM +0200, Linus Walleij wrote:
> These vendor prefixes are used by some routers supported
> by e.g. OpenWrt.
>=20
> - ADI Engineering is a US telecom equipment company.
>=20
> - Arcom Controllers is a US manufacturer of repeaters.
>=20
> - Freecom Gmbh is a german telecom equipment company.
>=20
> - Gemtek Technology is a Taiwan telecom company.
>=20
> - Gateway Communications was a telecommunication company,
>   now acquired by HKT Limited/PCCW.
>=20
> - Goramo Gorecki is a privately owned Polish telecom
>   company.
>=20
> - U.S. Robotics Corporation, known through their brand name
>   USRobotics is generally referred to as "USR" so use this
>   prefix for the company's device tree bindings.
>=20
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 14 ++++++++++++=
++
>  1 file changed, 14 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index 573578db9509..edeb870c84cd 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -59,6 +59,8 @@ patternProperties:
>      description: AD Holdings Plc.
>    "^adi,.*":
>      description: Analog Devices, Inc.
> +  "^adieng,.*":
> +    description: ADI Engineering, Inc.
>    "^advantech,.*":
>      description: Advantech Corporation
>    "^aeroflexgaisler,.*":
> @@ -127,6 +129,8 @@ patternProperties:
>      description: Arasan Chip Systems
>    "^archermind,.*":
>      description: ArcherMind Technology (Nanjing) Co., Ltd.
> +  "^arcom,.*":
> +    description: Arcom Controllers
>    "^arctic,.*":
>      description: Arctic Sand
>    "^arcx,.*":
> @@ -484,6 +488,8 @@ patternProperties:
>      description: FocalTech Systems Co.,Ltd
>    "^forlinx,.*":
>      description: Baoding Forlinx Embedded Technology Co., Ltd.
> +  "^freecom,.*":
> +    description: Freecom Gmbh
>    "^frida,.*":
>      description: Shenzhen Frida LCD Co., Ltd.
>    "^friendlyarm,.*":
> @@ -496,6 +502,8 @@ patternProperties:
>      description: FX Technology Ltd.
>    "^gardena,.*":
>      description: GARDENA GmbH
> +  "^gateway,.*":
> +    description: Gateway Communications
>    "^gateworks,.*":
>      description: Gateworks Corporation
>    "^gcw,.*":
> @@ -510,6 +518,8 @@ patternProperties:
>      description: GE Fanuc Intelligent Platforms Embedded Systems, Inc.
>    "^gemei,.*":
>      description: Gemei Digital Technology Co., Ltd.
> +  "^gemtek,.*":
> +    description: Gemtek Technology Co., Ltd.
>    "^genesys,.*":
>      description: Genesys Logic, Inc.
>    "^geniatech,.*":
> @@ -530,6 +540,8 @@ patternProperties:
>      description: Shenzhen Huiding Technology Co., Ltd.
>    "^google,.*":
>      description: Google, Inc.
> +  "^goramo,.*":
> +    description: Goramo Gorecki
>    "^gplus,.*":
>      description: GPLUS
>    "^grinn,.*":
> @@ -1444,6 +1456,8 @@ patternProperties:
>      description: United Radiant Technology Corporation
>    "^usi,.*":
>      description: Universal Scientific Industrial Co., Ltd.
> +  "^usr,.*":
> +    description: U.S. Robotics Corporation
>    "^utoo,.*":
>      description: Aigo Digital Technology Co., Ltd.
>    "^v3,.*":
>=20
> --=20
> 2.41.0
>=20

--S2SscZ/1PQix+1QU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRKVHQAKCRB4tDGHoIJi
0oAvAQCwdFd1Nj2FHcrysvHH0ELYFaKqQQZ65TmDUm4fMN8FJwEAnikTc8xS1osi
HSJBeBYFc9mBsipR2Sw7Rz/toikGUQY=
=Nlz4
-----END PGP SIGNATURE-----

--S2SscZ/1PQix+1QU--

