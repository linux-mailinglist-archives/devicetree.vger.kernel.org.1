Return-Path: <devicetree+bounces-135582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4BEA01659
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 19:33:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A9913A373A
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 18:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE5851C5F25;
	Sat,  4 Jan 2025 18:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dS9jhJE3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91A6E146A9B;
	Sat,  4 Jan 2025 18:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736015619; cv=none; b=A97bBBlxvep1jE/G5aTNnrMHZYCgOlUdMs4PZSSXXBG2UtN6xMVHCDLOTQeVLBwe/PXVTTHo38wHWYajCY7ewEu769xZrQ17Oxzb8QWUd246+gqxq7DBefDUAmUsmdE5MCASGejYIl2sU7/0ZXD3e6PF7D7xdCT1otfJyZLAwco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736015619; c=relaxed/simple;
	bh=bbGVCiebfDC2v8ZrjzXFysT9S4V23mFCJgUmWbhnAB8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BuN3Gdk5xlZocjmo029ZyVE0XH31uTISywcfhP83M7QgCi5vHe7HPakAgIiHagIFy50xPMPqAW4o1ZgbZqj9blbpH1zcpd8XVsm6O+VlSpQxzVngVRzCIzoFTEuYvdVL8ue7Lx3PPM19CqkkIwKulQF6VHW3GLIzqLgORQmJCE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dS9jhJE3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C32CC4CED1;
	Sat,  4 Jan 2025 18:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736015619;
	bh=bbGVCiebfDC2v8ZrjzXFysT9S4V23mFCJgUmWbhnAB8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dS9jhJE3fxzDyDlfMtIS55DjSwucd1le+RtfivhNsJpsOEGZuPxOeDj4OO5ZzgfMj
	 ekuzhAPdQQNZ34lYJhHt4Y2Fd2A8/K4N080hN3NIMNq1ftxSyHtV+I7srKxt8I4y6f
	 Zm/U7tRP7Rg/toi9hSt55TxLOxHPQDiavQBJmsBHB64GnA54MMjbh3PNUbF4hniH5W
	 IW91QCc1jaHBCm/LNXWbu0qq8fVjGkOl+pM/xBz5ui0hjq0abCvx1PWIWIFX1Obzda
	 WKbAur3l7pv4LaQYc8uKOzAInrs0K0q6sMV95T3Cr89EEMhffoMAAQRsFg8ak2wEp+
	 H5lwD84y0HVWw==
Date: Sat, 4 Jan 2025 18:33:34 +0000
From: Conor Dooley <conor@kernel.org>
To: E Shattow <e@freeshell.de>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1 1/5] riscv: dts: starfive: jh7110-common: replace
 syscrg clock assignments
Message-ID: <20250104-mutilated-unpaved-008eebdb200a@spud>
References: <20250102194530.418127-1-e@freeshell.de>
 <20250102194530.418127-2-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="X/IiaMylgfGE4uV1"
Content-Disposition: inline
In-Reply-To: <20250102194530.418127-2-e@freeshell.de>


--X/IiaMylgfGE4uV1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 02, 2025 at 11:45:07AM -0800, E Shattow wrote:
> Replace syscrg assignments of clocks, clock parents, and rates, for
> compatibility with downstream boot loader SPL secondary program
> loader.
>=20
> Signed-off-by: E Shattow <e@freeshell.de>
> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>=20
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv=
/boot/dts/starfive/jh7110-common.dtsi
> index 48fb5091b817..55c6743100a7 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -359,9 +359,15 @@ spi_dev0: spi@0 {
>  };
> =20
>  &syscrg {
> -	assigned-clocks =3D <&syscrg JH7110_SYSCLK_CPU_CORE>,
> -			  <&pllclk JH7110_PLLCLK_PLL0_OUT>;
> -	assigned-clock-rates =3D <500000000>, <1500000000>;
> +	assigned-clocks =3D <&syscrg JH7110_SYSCLK_CPU_ROOT>,
> +			  <&syscrg JH7110_SYSCLK_BUS_ROOT>,
> +			  <&syscrg JH7110_SYSCLK_PERH_ROOT>,
> +			  <&syscrg JH7110_SYSCLK_QSPI_REF>;
> +	assigned-clock-parents =3D <&pllclk JH7110_PLLCLK_PLL0_OUT>,
> +				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
> +				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
> +				 <&syscrg JH7110_SYSCLK_QSPI_REF_SRC>;
> +	assigned-clock-rates =3D <0>, <0>, <0>, <0>;

Why is assigned rates here 0s, rather than the property just removed?

>  };
> =20
>  &sysgpio {
> --=20
> 2.45.2
>=20

--X/IiaMylgfGE4uV1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ3l+/gAKCRB4tDGHoIJi
0tJ3AP4y1JgKxVuFtAfj2/e072mhmKgwjpCJdSfFu0f8h9kxNgEA/OuSW1oF+y2v
pCRVRiOegBMIH80dCitQajbHkophhQA=
=Z2jI
-----END PGP SIGNATURE-----

--X/IiaMylgfGE4uV1--

