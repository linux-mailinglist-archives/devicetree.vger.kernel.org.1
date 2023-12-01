Return-Path: <devicetree+bounces-20802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54618800EC3
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 16:46:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B203FB20E27
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 15:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C97734AF8F;
	Fri,  1 Dec 2023 15:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpkGqEah"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABB6920B27
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 15:46:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 212B9C433C9;
	Fri,  1 Dec 2023 15:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701445584;
	bh=0a5xvA+EE/HD2de4oTACqSgMGZmPpL1HYg7E91OIbjo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kpkGqEahS7E0OW2nucL/ztL6qJKWQx0MxMxLmZAdDDfZ89ofp2IjPwIA5I6aGAPjV
	 CjesnHpkG/h8E6KJ9BsmnDCk2q+sxtS6cbKYUor+MIJ59zFh7Clb/cotQ+EjuNsZ2s
	 PocD6TcHSUChgpIJa4Cu9/P1bvYm44vaRaRGMKkTvBTAABQ7NxL4RtxitFOhs5Shta
	 6+eSxDgts1UMKBkdy1Rxrgxo0yeqUqt353LJPLcvck4fzM6UjHiYqm2LZlZcmXztxB
	 mWLmQ6vfKy4eRBPu60CDjcIZn33jvcfmHFToypG8qpcBqEQjqxY1rH04mudpa/UWDE
	 L6ITLblOSO8ZA==
Date: Fri, 1 Dec 2023 15:46:17 +0000
From: Conor Dooley <conor@kernel.org>
To: Sia Jee Heng <jeeheng.sia@starfivetech.com>
Cc: kernel@esmil.dk, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	krzk@kernel.org, conor+dt@kernel.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	daniel.lezcano@linaro.org, tglx@linutronix.de, anup@brainfault.org,
	gregkh@linuxfoundation.org, jirislaby@kernel.org,
	michal.simek@amd.com, michael.zhu@starfivetech.com,
	drew@beagleboard.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	leyfoon.tan@starfivetech.com
Subject: Re: [PATCH v3 5/6] dt-bindings: serial: cdns: Add new compatible
 string for StarFive JH8100 UART
Message-ID: <20231201-retrace-unruffled-b755da60912e@spud>
References: <20231201121410.95298-1-jeeheng.sia@starfivetech.com>
 <20231201121410.95298-6-jeeheng.sia@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="b6G910+EpcX16ELw"
Content-Disposition: inline
In-Reply-To: <20231201121410.95298-6-jeeheng.sia@starfivetech.com>


--b6G910+EpcX16ELw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 01, 2023 at 08:14:09PM +0800, Sia Jee Heng wrote:
> Add new compatible string for UART in the StarFive JH8100 SoC.
>=20
> Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> ---
>  Documentation/devicetree/bindings/serial/cdns,uart.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/serial/cdns,uart.yaml b/Do=
cumentation/devicetree/bindings/serial/cdns,uart.yaml
> index e35ad1109efc..07732ae60007 100644
> --- a/Documentation/devicetree/bindings/serial/cdns,uart.yaml
> +++ b/Documentation/devicetree/bindings/serial/cdns,uart.yaml
> @@ -12,6 +12,9 @@ maintainers:
>  properties:
>    compatible:
>      oneOf:
> +      - items:
> +          - const: starfive,jh8100-uart
> +          - const: cdns,uart-r1p8
>        - description: UART controller for Zynq-7xxx SoC
>          items:
>            - const: xlnx,xuartps
> --=20
> 2.34.1
>=20

--b6G910+EpcX16ELw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWn/yQAKCRB4tDGHoIJi
0k/0AQDtPnPwSdRJ029ZXgtTtqL+qNU1ejsQjcuMF0cVd85EHAEAxwLKjgVy43m6
Uy3JksLeRxTyyf4uxKhbKdlCsPTjTQw=
=8FHo
-----END PGP SIGNATURE-----

--b6G910+EpcX16ELw--

