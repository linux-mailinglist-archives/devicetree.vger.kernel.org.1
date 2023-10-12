Return-Path: <devicetree+bounces-8076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 800867C69D8
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:41:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B08B41C20CF1
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B79DD21352;
	Thu, 12 Oct 2023 09:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6ukDJkj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9852021347
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:41:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96A3AC433C7;
	Thu, 12 Oct 2023 09:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697103710;
	bh=nAvxg4KzDTsOzbMCukymkltoz6OpLA5eAEmEqSLDeDo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J6ukDJkjIGjg/RETfSZR34lITrSLkGjMTs10FWMidORsXst2UcwuhUKktEpHVw/x4
	 KE8uL0+mYE715Q7Njw5fsFQE0Hi5RHgHZB56P+t0h4gKQp7u17NugHvRF6b0gGP2VA
	 PPE+wUXxwnHB/7tLGOVpNta73TM2Z5Z3PWVr3oUsRkmjIxwhEGJSTxy/Wn+mUBaCOS
	 tO9mT4OjYk6y0RjiJ7b+vztMPyu0oSKq0PG5jLxqzNc4go2IwKTS7dEek3Esu6hynr
	 M6ynK6gTSNbbEQoDoqVTKhbLUAeIKiP/y29XFrnrpEY/eiRoHPWgLT56PHV56koSzh
	 yGDofdIX1v2tA==
Date: Thu, 12 Oct 2023 10:41:45 +0100
From: Conor Dooley <conor@kernel.org>
To: Inochi Amaoto <inochiama@outlook.com>
Cc: Chen Wang <unicorn_wang@outlook.com>, Chao Wei <chao.wei@sophgo.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Jisheng Zhang <jszhang@kernel.org>, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/7] riscv: dts: sophgo: add initial CV1812H SoC
 device tree
Message-ID: <20231012-gratuity-siesta-b9e06b11be43@spud>
References: <MA0P287MB03321A9E3F3D8415DB9552B5FECDA@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
 <IA1PR20MB4953AD81686694CEA4F5FC6ABBCDA@IA1PR20MB4953.namprd20.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FbIlMY2V77DRQAG0"
Content-Disposition: inline
In-Reply-To: <IA1PR20MB4953AD81686694CEA4F5FC6ABBCDA@IA1PR20MB4953.namprd20.prod.outlook.com>


--FbIlMY2V77DRQAG0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 10, 2023 at 03:53:54PM +0800, Inochi Amaoto wrote:
> >On 2023/10/9 19:26, Inochi Amaoto wrote:
> >> Add initial device tree for the CV1812H RISC-V SoC by SOPHGO.
> >>
> >> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> >> ---
> >>   arch/riscv/boot/dts/sophgo/cv1812h.dtsi | 36 +++++++++++++++++++++++=
++
> >>   1 file changed, 36 insertions(+)
> >>   create mode 100644 arch/riscv/boot/dts/sophgo/cv1812h.dtsi
> >>
> >> diff --git a/arch/riscv/boot/dts/sophgo/cv1812h.dtsi b/arch/riscv/boot=
/dts/sophgo/cv1812h.dtsi
> >> new file mode 100644
> >> index 000000000000..3864d34b0100
> >> --- /dev/null
> >> +++ b/arch/riscv/boot/dts/sophgo/cv1812h.dtsi
> >> @@ -0,0 +1,36 @@
> >> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> >> +/*
> >> + * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
> >> + */
> >> +
> >> +#include <dt-bindings/interrupt-controller/irq.h>
> >This include is not required.
>=20
> Thx.

I can drop this include on application. Is the rest of the series okay
with you Chen Wang?

Thanks,
Conor.

>=20
> >> +#include "cv180x.dtsi"
> >> +
> >> +/ {
> >> +    compatible =3D "sophgo,cv1812h";
> >> +
> >> +    memory@80000000 {
> >> +        device_type =3D "memory";
> >> +        reg =3D <0x80000000 0x10000000>;
> >> +    };
> >What's this defined for , I see this is different against cv1800b.
>=20
> CV1812h have a embedded 256MB RAM. The cv1800b is 64MB, This is why the
> size is different. I write this node here because the RAM is embedded
> and fixed size, and leave it in the board DT is unnecessary.
>=20
> >> +
> >> +    soc {
> >> +        interrupt-parent =3D <&plic>;
> >> +
> >> +        plic: interrupt-controller@70000000 {
> >> +            compatible =3D "sophgo,cv1812h-plic", "thead,c900-plic";
> >> +            reg =3D <0x70000000 0x4000000>;
> >> +            interrupts-extended =3D <&cpu0_intc 11>, <&cpu0_intc 9>;
> >> +            interrupt-controller;
> >> +            #address-cells =3D <0>;
> >> +            #interrupt-cells =3D <2>;
> >> +            riscv,ndev =3D <101>;
> >> +        };
> >> +
> >> +        clint: timer@74000000 {
> >> +            compatible =3D "sophgo,cv1812h-clint", "thead,c900-clint";
> >> +            reg =3D <0x74000000 0x10000>;
> >> +            interrupts-extended =3D <&cpu0_intc 3>, <&cpu0_intc 7>;
> >> +        };
> >> +    };
> >> +};
> >> --
> >> 2.42.0
> >>
> >

--FbIlMY2V77DRQAG0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSe/WQAKCRB4tDGHoIJi
0v+pAP4ikxNXQFMmYKQCRI/ErSVgvlUuINpu2o2hajLuAX07cgEArhvqcOM2wd87
QPOM8fdmk7XQQ2hWX5EpJjl9qMH89gQ=
=JHNn
-----END PGP SIGNATURE-----

--FbIlMY2V77DRQAG0--

