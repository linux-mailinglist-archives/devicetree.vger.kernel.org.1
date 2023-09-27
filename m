Return-Path: <devicetree+bounces-3936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EE87B09A0
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 18:09:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9B2F5282206
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 16:09:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 148AF4998F;
	Wed, 27 Sep 2023 16:09:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048AE1170F
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 16:09:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1129EC433C8;
	Wed, 27 Sep 2023 16:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695830965;
	bh=pmRruatf2M9pzkEo2JKtfbJP2YXPb720+qamJp+IFyw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jR96pQtws9uyhqhzizi6OsL9l47QXKahoiAij7YDdcoRv6vvZEO2U7dR//hIO1FMl
	 kB9tK82+EcAsuUqwSnRjbmXbKJUadzH5qFNNnMs7uyb2hTxQJaptqGVreNT6ROcmdS
	 Ap/u4J/k/sdRqi9QLBh9R6jYSpgGf72+ZnDiA8oJTOszV3bL5uJRfxOxBZ2VMwIASr
	 X6Be9rw+uejWPx7bZ4jo6oH8hkzM52B6kdliHF3DttBmbGgavC1etAu0gX+b1nvDKR
	 rwWzzxmmyBWCJQo3A/K6lab1mSd9E/BoHs3eBZD+CTKhOS0aX/gNOd3CNG14a4yjDk
	 dwgeyngHArgPQ==
Date: Wed, 27 Sep 2023 17:09:20 +0100
From: Conor Dooley <conor@kernel.org>
To: Chen Wang <unicornxw@gmail.com>
Cc: aou@eecs.berkeley.edu, chao.wei@sophgo.com, devicetree@vger.kernel.org,
	guoren@kernel.org, jszhang@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, palmer@dabbelt.com,
	paul.walmsley@sifive.com, robh+dt@kernel.org,
	xiaoguang.xing@sophgo.com, apatel@ventanamicro.com
Subject: Re: [PATCH v3 00/11] Add Milk-V Pioneer RISC-V board support
Message-ID: <20230927-ebony-duress-44ff45d3d253@spud>
References: <cover.1695804418.git.unicornxw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hWL+YiRJ6exvVByO"
Content-Disposition: inline
In-Reply-To: <cover.1695804418.git.unicornxw@gmail.com>


--hWL+YiRJ6exvVByO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Wed, Sep 27, 2023 at 04:54:38PM +0800, Chen Wang wrote:
> Milk-V Pioneer [1] is a developer motherboard based on SOPHON SG2042 [2]
> in a standard mATX form factor. Add minimal device
> tree files for the SG2042 SOC and the Milk-V Pioneer board.
>=20
> Now only support basic uart drivers to boot up into a basic console.
>=20
> Thanks,
> Chen
>=20
> ---
>=20
> Changes in v3:
>   The patch series is based on v6.6-rc1. You can simply review or test=20
>   the patches at the link [5].
>   - add new vendor specific compatible strings to identify timer/mswi for=
 sg2042 clint
>   - updated maintainers info. for sophgo devicetree
>   - remove the quirk changes for uart
>   - updated dts, such as:
>     - add "riscv,isa-base"/"riscv,isa-extensions" for cpus
>     - update l2 cache node's name
>     - remove memory and pmu nodes
>   - fixed other issues as per input from reviewers.

v3 looks better indeed. I had some comments on the bindings and dt
patches, but none were particularly major.

Thanks,
Conor.

>=20
> Changes in v2:
>   The patch series is based on v6.6-rc1. You can simply review or test=20
>   the patches at the link [4].
>   - Improve format for comment of commitments as per input from last revi=
ew.
>   - Improve format of DTS as per input from last review.
>   - Remove numa related stuff from DTS. This part is just for optimizatio=
n, may
>     add it later if really needed.=20
>=20
> Changes in v1:
>    The patch series is based on v6.6-rc1. Due to it is not sent in thread,
>    I have listed permlinks of the patchset [v1-0/12] ~ [v1-12/12] here fo=
r=20
>    quick reference. You can simply review or test the patches at the link=
 [3].
>=20
> [1]: https://milkv.io/pioneer
> [2]: https://en.sophgo.com/product/introduce/sg2042.html
> [3]: https://github.com/unicornx/linux-riscv/commits/milkv-pioneer-minimal
> [4]: https://github.com/unicornx/linux-riscv/commits/milkv-pioneer-minima=
l-v2
> [5]: https://github.com/unicornx/linux-riscv/commits/milkv-pioneer-minima=
l-v3
> [v1-0/12]:https://lore.kernel.org/linux-riscv/20230915070856.117514-1-wan=
gchen20@iscas.ac.cn/
> [v1-1/12]:https://lore.kernel.org/linux-riscv/20230915071005.117575-1-wan=
gchen20@iscas.ac.cn/
> [v1-2/12]:https://lore.kernel.org/linux-riscv/20230915071409.117692-1-wan=
gchen20@iscas.ac.cn/
> [v1-3/12]:https://lore.kernel.org/linux-riscv/20230915072242.117935-1-wan=
gchen20@iscas.ac.cn/
> [v1-4/12]:https://lore.kernel.org/linux-riscv/20230915072333.117991-1-wan=
gchen20@iscas.ac.cn/
> [v1-5/12]:https://lore.kernel.org/linux-riscv/20230915072358.118045-1-wan=
gchen20@iscas.ac.cn/
> [v1-6/12]:https://lore.kernel.org/linux-riscv/20230915072415.118100-1-wan=
gchen20@iscas.ac.cn/
> [v1-7/12]:https://lore.kernel.org/linux-riscv/20230915072431.118154-1-wan=
gchen20@iscas.ac.cn/
> [v1-8/12]:https://lore.kernel.org/linux-riscv/20230915072451.118209-1-wan=
gchen20@iscas.ac.cn/
> [v1-9/12]:https://lore.kernel.org/linux-riscv/20230915072517.118266-1-wan=
gchen20@iscas.ac.cn/
> [v1-10/12]:https://lore.kernel.org/linux-riscv/20230915072558.118325-1-wa=
ngchen20@iscas.ac.cn/
> [v1-11/12]:https://lore.kernel.org/linux-riscv/20230915072624.118388-1-wa=
ngchen20@iscas.ac.cn/
> [v1-12/12]:https://lore.kernel.org/linux-riscv/20230915072653.118448-1-wa=
ngchen20@iscas.ac.cn/
>=20
> ---
>=20
> Chen Wang (9):
>   riscv: Add SOPHGO SOC family Kconfig support
>   dt-bindings: vendor-prefixes: add milkv/sophgo
>   dt-bindings: riscv: add sophgo sg2042 bindings
>   dt-bindings: riscv: Add T-HEAD C920 compatibles
>   dt-bindings: interrupt-controller: Add Sophgo SG2042 PLIC
>   MAINTAINERS: add two files to sophgo devicetrees entry
>   riscv: dts: add initial Sophgo SG2042 SoC device tree
>   riscv: dts: sophgo: add Milk-V Pioneer board device tree
>   riscv: defconfig: enable SOPHGO SoC
>=20
> Inochi Amaoto (2):
>   dt-bindings: timer: Add Sophgo sg2042 CLINT timer
>   dt-bindings: interrupt-controller: Add Sophgo sg2042 CLINT mswi
>=20
>  .../sifive,plic-1.0.0.yaml                    |    1 +
>  .../sophgo,sg2042-clint-mswi.yaml             |   42 +
>  .../devicetree/bindings/riscv/cpus.yaml       |    1 +
>  .../devicetree/bindings/riscv/sophgo.yaml     |   28 +
>  .../timer/sophgo,sg2042-clint-mtimer.yaml     |   42 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |    4 +
>  MAINTAINERS                                   |    9 +
>  arch/riscv/Kconfig.socs                       |    5 +
>  arch/riscv/boot/dts/Makefile                  |    1 +
>  arch/riscv/boot/dts/sophgo/Makefile           |    3 +
>  arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi   | 1880 +++++++++++++++++
>  .../boot/dts/sophgo/sg2042-milkv-pioneer.dts  |   19 +
>  arch/riscv/boot/dts/sophgo/sg2042.dtsi        |  325 +++
>  arch/riscv/configs/defconfig                  |    1 +
>  14 files changed, 2361 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controlle=
r/sophgo,sg2042-clint-mswi.yaml
>  create mode 100644 Documentation/devicetree/bindings/riscv/sophgo.yaml
>  create mode 100644 Documentation/devicetree/bindings/timer/sophgo,sg2042=
-clint-mtimer.yaml
>  create mode 100644 arch/riscv/boot/dts/sophgo/Makefile
>  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
>  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
>  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042.dtsi
>=20
>=20
> base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d
> --=20
> 2.25.1
>=20

--hWL+YiRJ6exvVByO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRRTsAAKCRB4tDGHoIJi
0g2VAP94H8Rvt71Dyd1ixHqaF/1R9iWXaooJa0Ox8fcBHEmoPwEA8ZKSS56p54kM
xq1y2pntP9lgfuaqPB5L9vQ68YmtCAQ=
=efvp
-----END PGP SIGNATURE-----

--hWL+YiRJ6exvVByO--

