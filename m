Return-Path: <devicetree+bounces-5740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBEA7B7B7E
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 11:14:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E4A6028151C
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 09:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EB2F1096A;
	Wed,  4 Oct 2023 09:14:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EABC10960
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 09:14:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72259C433C8;
	Wed,  4 Oct 2023 09:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696410842;
	bh=I3rYMvIf1yUhwIUhj4haJHoCCJeIHZ/4+nUAtJSqCwY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qblW5PF6iKaPu4EmaMW7svIY6XFDdJYCqwKfbHgKUn6UeeVOJT9SzYlGpnuTA/7+Q
	 GEAPVTYd/Cg/tzlT47L8wzc4rRN2VnKBRyiLDzjxHjd96FSwPfxUf+AnJAwSaRmQ5h
	 g6sQ4+9maMPGxan8QG278OiX8OaIz6jOU4tw5iauwZGa6PUa9cpR6PJX5Th83l9BKU
	 QQ7sr1a8pnq/8KrO/fv5dHHcFgu/3K+zyUb5Bfju5brp2z6fF85FCsBLRTTIZuVV9A
	 2OWthjUMhBK2TXOg1H0eSupPxtJe7NR1TbetpxpHCkUdRoiMuxKrxQro9N/i5MPJT5
	 blEaBOfgQBtVA==
Date: Wed, 4 Oct 2023 10:13:56 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Chen Wang <unicorn_wang@outlook.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Inochi Amaoto <inochiama@outlook.com>, chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com
Subject: Re: [PATCH 4/5] riscv: dts: sophgo: add initial CV1800B SoC device
 tree
Message-ID: <20231004-caregiver-deserve-71849c94dcfb@spud>
References: <20230930123937.1551-1-jszhang@kernel.org>
 <20230930123937.1551-5-jszhang@kernel.org>
 <MA0P287MB033277186E21A09127407452FECBA@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
 <37021ef8-55e2-4116-8201-2ab7df9e0fc1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="66OQDBUK+rriTk/K"
Content-Disposition: inline
In-Reply-To: <37021ef8-55e2-4116-8201-2ab7df9e0fc1@linaro.org>


--66OQDBUK+rriTk/K
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 04, 2023 at 09:57:33AM +0200, Krzysztof Kozlowski wrote:
> On 04/10/2023 09:23, Chen Wang wrote:
> >=20
> > =E5=9C=A8 2023/9/30 20:39, Jisheng Zhang =E5=86=99=E9=81=93:
> >> Add initial device tree for the CV1800B RISC-V SoC by SOPHGO.
> >>
> >> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> >> ---
> >>   arch/riscv/boot/dts/sophgo/cv1800b.dtsi | 117 ++++++++++++++++++++++=
++
> >>   1 file changed, 117 insertions(+)
> >>   create mode 100644 arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> >=20
> > Hi, Jisheng, as far as I know, sg2042 and cv180x are now tracked by=20
> > different people and even in sophgo, they are two independent=20
> > projects(sg2042 is target for HPC and cv180x is target for embeded=20
> > device). To facilitate future management and review, I recommend=20
> > registering the maintainer information in two entries in MAINTAINERS.=
=20
> > The example is as follows:
> >=20
> > ```
> >=20
> > SOPHGO CV180X DEVICETREES
> > M:=C2=A0 Jisheng Zhang <jszhang@kernel.org>
> > F:=C2=A0 arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
> > F:=C2=A0 arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> >=20
> > SOPHGO SG2042 DEVICETREES
> > M:=C2=A0 Chao Wei <chao.wei@sophgo.com>
> > M:=C2=A0 Chen Wang <unicornxw@gmail.com>
> > S:=C2=A0 Maintained
> > F:=C2=A0 arch/riscv/boot/dts/sophgo/Makefile
> > F:=C2=A0 arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
> > F:=C2=A0 arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
> > F:=C2=A0 arch/riscv/boot/dts/sophgo/sg2042.dtsi
> > F:=C2=A0 Documentation/devicetree/bindings/riscv/sophgo.yaml
> > ```
> >=20
> > For Makefile and sophgo.yaml such common files, just keep in sg2042=20
> > entry should be fine.
> >=20
> > @Conor, what do you think?
>=20
> We do no have usually per-board maintainer entries (with few
> exceptions). I strongly prefer this one instead:
>=20
> https://lore.kernel.org/all/829b122da52482707b783dc3d93d3ff0179cb0ca.came=
l@perches.com/

I don't like the suggestion here for a different reason! While I'm fine
with having some per-board SoC maintainers, esp. since the cv1800 stuff
is very different to the sg2042, I want to see someone step up to apply
the patches for the whole arch/riscv/boot/dts/sophgo/ directory once more
comfortable with the process, not reduce the entry to cover just the 64
core SoC.

Thanks,
Conor.

--66OQDBUK+rriTk/K
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZR0s1AAKCRB4tDGHoIJi
0pFWAQC2S8NStFU1aqWXOgFsaLD+fuUqSrLo19BriwGjhzQBLwEA4yklbNzUEuka
cPQh/dVGLRADBdz0AYcCDK/AuYgTWgc=
=Xy+m
-----END PGP SIGNATURE-----

--66OQDBUK+rriTk/K--

