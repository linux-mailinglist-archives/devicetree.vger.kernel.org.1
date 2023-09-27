Return-Path: <devicetree+bounces-3935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9181D7B099A
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 18:07:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 42216282330
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 16:07:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C32F849987;
	Wed, 27 Sep 2023 16:07:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B440B1170F
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 16:07:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27CADC433C8;
	Wed, 27 Sep 2023 16:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695830847;
	bh=vREQr+TR53h6caEkfQ4IrnqEtO45twz+uZ9hCc2obu0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YLiMB/CF/b7ES5Ch2rtb1yTyMNVz4fc6XLByrXzpRVoo3XAVJ/3Dp276EU2D+aXjW
	 cBTYq16kabwv0jrrygFKoBIdQ2vLK+XShJ1LjYEmVXRU3y/M9MSwmD6YWM8PQ2yRZJ
	 KCQOyk7kwcBLWNjaKBqrqd/fc6AnqZdntyN86zqCOgknH9HgKJTIBhX2eMwEp7V8gH
	 aeUXHWoKgGh4TpBOYrSiuA7dWIoVN6LzvdpxIwGALhl16LteDgrnhofQNZmCuvwBjC
	 wF8JwC3B4uWk/1Y4aR/mj+gNC1RjeTF1QVduJA25Rs4sYAHmxuSw04TSAnkfV8VAta
	 pMvchpJ7Fdjwg==
Date: Wed, 27 Sep 2023 17:07:21 +0100
From: Conor Dooley <conor@kernel.org>
To: Chen Wang <unicornxw@gmail.com>
Cc: aou@eecs.berkeley.edu, chao.wei@sophgo.com, devicetree@vger.kernel.org,
	guoren@kernel.org, jszhang@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, palmer@dabbelt.com,
	paul.walmsley@sifive.com, robh+dt@kernel.org,
	xiaoguang.xing@sophgo.com, apatel@ventanamicro.com,
	Inochi Amaoto <inochiama@outlook.com>,
	Chen Wang <wangchen20@iscas.ac.cn>
Subject: Re: [PATCH v3 09/11] riscv: dts: add initial Sophgo SG2042 SoC
 device tree
Message-ID: <20230927-alone-unknown-ae3f2f79378e@spud>
References: <cover.1695804418.git.unicornxw@gmail.com>
 <e71955fb3a7bb9ed9b6cab0cc81fd60d05d3310a.1695804418.git.unicornxw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="U5cY2nKFUhtXEW0P"
Content-Disposition: inline
In-Reply-To: <e71955fb3a7bb9ed9b6cab0cc81fd60d05d3310a.1695804418.git.unicornxw@gmail.com>


--U5cY2nKFUhtXEW0P
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Wed, Sep 27, 2023 at 05:02:26PM +0800, Chen Wang wrote:
> Milk-V Pioneer motherboard is powered by SG2042.
>=20
> SG2042 is server grade chip with high performance, low power
> consumption and high data throughput.
> Key features:
> - 64 RISC-V cpu cores
> - 4 cores per cluster, 16 clusters on chip
> - More info is available at [1].
>=20
> Link: https://en.sophgo.com/product/introduce/sg2042.html [1]

Link: tags go into the signoff/trailers block below.

> Currently only support booting into console with only uart,
> other features will be added soon later.
>=20
> Reviewed-by: Guo Ren <guoren@kernel.org>
> Acked-by: Chao Wei <chao.wei@sophgo.com>
> Co-developed-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> Signed-off-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> Co-developed-by: Inochi Amaoto <inochiama@outlook.com>
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
> Signed-off-by: Chen Wang <unicornxw@gmail.com>
> ---
>  MAINTAINERS                                 |    1 +
>  arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi | 1880 +++++++++++++++++++
>  arch/riscv/boot/dts/sophgo/sg2042.dtsi      |  325 ++++
>  3 files changed, 2206 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
>  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042.dtsi
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 3fed8e3d273f..08f8fabb54b1 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20067,6 +20067,7 @@ SOPHGO DEVICETREES
>  M:	Chao Wei <chao.wei@sophgo.com>
>  M:	Chen Wang <unicornxw@gmail.com>
>  S:	Maintained
> +F:	arch/riscv/boot/dts/sophgo/
>  F:	Documentation/devicetree/bindings/interrupt-controller/sophgo,sg2042-=
clint-mswi.yaml
>  F:	Documentation/devicetree/bindings/riscv/sophgo.yaml
>  F:	Documentation/devicetree/bindings/timer/sophgo,sg2042-clint-mtimer.ya=
ml
> diff --git a/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi b/arch/riscv/boo=
t/dts/sophgo/sg2042-cpus.dtsi
> new file mode 100644
> index 000000000000..d2348acea527
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
> @@ -0,0 +1,1880 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright (C) 2022 Sophgo Technology Inc. All rights reserved.
> + */
> +
> +/*
> + * c920 declares "rv64gcv", but the version of it's v-ext
> + * is 0.7.1. It's not supported by kernel so we remove "v".
> + */

This is incorrect, v needs to be removed because the version of vector
does not match that in the ratified standard, as defined by the
dt-binding. Even if the comment was correct, it'd be a statement of
the obvious and should be removed.

> +#define ISA_BASE	"rv64i"
> +#define ISA_EXTENSIONS	\
> +	"i", "m", "a", "f", "d", "c", "zicntr", "zicsr", "zifencei", "zihpm"

Why do these as macros but leave the riscv,isa property not as one? TBH,
I'd rather these were not macros to make my life easier while grepping
through stuff etc.

Cheers,
Conor.

> +		cpu0: cpu@0 {
> +			compatible =3D "thead,c920", "riscv";
> +			device_type =3D "cpu";
> +			riscv,isa =3D "rv64imafdc";
> +			riscv,isa-base =3D ISA_BASE;
> +			riscv,isa-extensions =3D ISA_EXTENSIONS;
> +			reg =3D <0>;
> +			i-cache-block-size =3D <64>;
> +			i-cache-size =3D <65536>;
> +			i-cache-sets =3D <512>;
> +			d-cache-block-size =3D <64>;
> +			d-cache-size =3D <65536>;
> +			d-cache-sets =3D <512>;
> +			next-level-cache =3D <&l2_cache0>;
> +			mmu-type =3D "riscv,sv39";
> +
> +			cpu0_intc: interrupt-controller {
> +				compatible =3D "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells =3D <1>;
> +			};
> +		};

--U5cY2nKFUhtXEW0P
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRRTOQAKCRB4tDGHoIJi
0tuuAQDLkuOIMgSTkDqdEzlhV9cUgxCWJjvRW7p6NMKaLb+4lQD+POy4IPtSAsle
sg4/VmVfMhRWEOlHvRoHAU1jS+TgNwQ=
=xdKV
-----END PGP SIGNATURE-----

--U5cY2nKFUhtXEW0P--

