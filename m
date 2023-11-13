Return-Path: <devicetree+bounces-15354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4D17E9CCE
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:14:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 18D2CB20855
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:14:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECDD51DDF4;
	Mon, 13 Nov 2023 13:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nS7ZNMw0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D421DFD6
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 13:14:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2109CC433C8;
	Mon, 13 Nov 2023 13:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699881278;
	bh=EtMfTCKsUg7ufBalhxFNF8jrs+peRdy0cY2hZzRhWmE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nS7ZNMw0hmdXGtW9w0SMYVBq4p59yvF5bYxvk/T84uxjzZf4zpFYR2Ozd7OH2gTCz
	 u2AqN6RpKU4MZp/AkMYYpbeRp3zMOpry8A4u+d/t4zz47VuOUn+TtpUhPVsdG81X0E
	 L0m7EAeVjdkCdzGXaXqPsWSNOGYOb51/E8G/YyTHFtEz7ujWpSSqWXjL0ZUqyq+ecN
	 a9H9EGuWSJw+5DItCmAI5N7bJP5e9hRB0euEJfdiw6PM7LPeGUrL/FVrJc0Ls1U8m9
	 CaqJQhoCyQIo5oI++GMPhggi9LWuB0tP0YzouBFu1To6wLb+VtEj89fAX48qkQdQAT
	 uCMFAS8aTnMyw==
Date: Mon, 13 Nov 2023 13:14:34 +0000
From: Conor Dooley <conor@kernel.org>
To: Inochi Amaoto <inochiama@outlook.com>
Cc: Chao Wei <chao.wei@sophgo.com>, Chen Wang <unicorn_wang@outlook.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Jisheng Zhang <jszhang@kernel.org>, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] riscv: dts: sophgo: remove address-cells from CV1800B
 intc node
Message-ID: <20231113-portable-garnet-8a04dbb71b51@squawk>
References: <IA1PR20MB49532613F5B4BD9753A1BB4DBBB3A@IA1PR20MB4953.namprd20.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HnJ3G1ILUKIB0LMn"
Content-Disposition: inline
In-Reply-To: <IA1PR20MB49532613F5B4BD9753A1BB4DBBB3A@IA1PR20MB4953.namprd20.prod.outlook.com>


--HnJ3G1ILUKIB0LMn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 13, 2023 at 05:26:15PM +0800, Inochi Amaoto wrote:
> A recent submission from Rob has added additionalProperties: false
> to the interrupt-controller child node of RISC-V cpus. But CV1800B does
> not follow this change and still uses #address-cells in its interrupt
> controller. As it has no child nodes, #address-cells is not needed and
> can be removed.
>=20
> Fixes: c3dffa879cca ("riscv: dts: sophgo: add initial CV1800B SoC device =
tree")
> Link: https://patchwork.kernel.org/project/linux-riscv/patch/202309152019=
46.4184468-1-robh@kernel.org/

This is a dupe of a patch I already applied, but have not yet sent a PR
for:
https://git.kernel.org/pub/scm/linux/kernel/git/conor/linux.git/commit/?h=
=3Driscv-dt-for-next&id=3Db99df62818919b84e970eea5aec60b0dbc57da18

Cheers,
Conor.

>=20
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> ---
>  arch/riscv/boot/dts/sophgo/cv1800b.dtsi | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dt=
s/sophgo/cv1800b.dtsi
> index df40e87ee063..aec6401a467b 100644
> --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> @@ -34,7 +34,6 @@ cpu0: cpu@0 {
>  			cpu0_intc: interrupt-controller {
>  				compatible =3D "riscv,cpu-intc";
>  				interrupt-controller;
> -				#address-cells =3D <0>;
>  				#interrupt-cells =3D <1>;
>  			};
>  		};
> --
> 2.42.1
>=20

--HnJ3G1ILUKIB0LMn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVIhNwAKCRB4tDGHoIJi
0rkAAQCDRGINzffMT6MvCnhOlveVMvDNHnDgSN+m8Wjdp5iJ6gD/Zh+u83XnVzPH
evBzqZTo5OoPvBJr4cZdAXjyS7KMPgY=
=Kphh
-----END PGP SIGNATURE-----

--HnJ3G1ILUKIB0LMn--

