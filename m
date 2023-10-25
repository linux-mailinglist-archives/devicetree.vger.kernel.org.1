Return-Path: <devicetree+bounces-11882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DC57D6E7C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:12:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E288281812
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:12:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F390928E26;
	Wed, 25 Oct 2023 14:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fa2CjzMm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F292773D
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:12:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B295C433C7;
	Wed, 25 Oct 2023 14:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698243146;
	bh=q8F2mFd6CImLzNK99x7rHDG+F1bVa1gJCgNVAIBLG/4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fa2CjzMmnPB1Vv5v/Pj+OQfsAWkGvN3dFH2tb5BEpfxZMBT11FWppbZPhXnuKKCAo
	 rEwTYJmjaj7cwFStsB0PBCQZq+Z0hV25Kz4qfJ9reXiVVSsJ0QapbtZ5PqK+1KzlT6
	 VkPg0YH1xriRN7GlydwW2Gv9QeuFIRKS7MM8cbWfz8z79Z9M05A+AyiFLt2SF6Wy94
	 ccqqFHYWiDwlX4OKAccp5W/zFZ3NKn1xh7BCXkrfw1KE8E3i64YortLQocPE0s6kPI
	 8bE8GX0n+FJuim5VtjYXs25em/+oaM4oL2gAsQYsaPtanJ5Qk0sB1pjQD0JWas6ru7
	 gLwz9f17C1NVA==
Date: Wed, 25 Oct 2023 15:12:20 +0100
From: Conor Dooley <conor@kernel.org>
To: shravan chippa <shravan.chippa@microchip.com>
Cc: green.wan@sifive.com, vkoul@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com,
	paul.walmsley@sifive.com, conor+dt@kernel.org,
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	nagasuresh.relli@microchip.com, praveen.kumar@microchip.com
Subject: Re: [PATCH v3 4/4] riscv: dts: microchip: add specific compatible
 for mpfs' pdma
Message-ID: <20231025-pang-unstuffed-4d8bf48baf21@spud>
References: <20231025102251.3369472-1-shravan.chippa@microchip.com>
 <20231025102251.3369472-5-shravan.chippa@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qwZ+jMYzinWm1SqJ"
Content-Disposition: inline
In-Reply-To: <20231025102251.3369472-5-shravan.chippa@microchip.com>


--qwZ+jMYzinWm1SqJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 25, 2023 at 03:52:51PM +0530, shravan chippa wrote:
> From: Shravan Chippa <shravan.chippa@microchip.com>
>=20
> Add specific compatible for PolarFire SoC for The SiFive PDMA driver
>=20

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> Signed-off-by: Shravan Chippa <shravan.chippa@microchip.com>
> ---
>  arch/riscv/boot/dts/microchip/mpfs.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/riscv/boot/dts/microchip/mpfs.dtsi b/arch/riscv/boot/dt=
s/microchip/mpfs.dtsi
> index 104504352e99..f43486e9a090 100644
> --- a/arch/riscv/boot/dts/microchip/mpfs.dtsi
> +++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
> @@ -221,7 +221,7 @@ plic: interrupt-controller@c000000 {
>  		};
> =20
>  		pdma: dma-controller@3000000 {
> -			compatible =3D "sifive,fu540-c000-pdma", "sifive,pdma0";
> +			compatible =3D "microchip,mpfs-pdma", "sifive,pdma0";
>  			reg =3D <0x0 0x3000000 0x0 0x8000>;
>  			interrupt-parent =3D <&plic>;
>  			interrupts =3D <5 6>, <7 8>, <9 10>, <11 12>;
> --=20
> 2.34.1
>=20

--qwZ+jMYzinWm1SqJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTkiRAAKCRB4tDGHoIJi
0sEJAQCHzvvzlWORtnYlb+uw/EMYHDQckws0ffM81OhwMCFujAD/bvpu5fSldrSt
ZlX/mfkXv0hoIFwpIi4+lGF8Y7p/Jgw=
=ip81
-----END PGP SIGNATURE-----

--qwZ+jMYzinWm1SqJ--

