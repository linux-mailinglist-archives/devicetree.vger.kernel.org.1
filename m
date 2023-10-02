Return-Path: <devicetree+bounces-5085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7D57B52BE
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:10:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7BECE283E2E
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:10:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86D8715EB7;
	Mon,  2 Oct 2023 12:10:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7811915EA6
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 12:10:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89C4CC433C8;
	Mon,  2 Oct 2023 12:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696248633;
	bh=/LiX+txB3BRVZ32LePlO17W8hckAYNHaz2iEFDZjuJM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WAweR1RS3PeKDXyktGjd2NkmON/1Kn3Nrb5nYRpUPGrQSb9IwMWKAqQmwzzpAJB/U
	 hD8OOJ2YodtGDarNe5b3Qld83DSkJExcN95cczDJYwKXoo09zJ6lUyCVUfptsd3wOe
	 4eYVtPEHcTOvjMzzKoSWb1f5/+ERRpbMl+7atb3+qQZNsjGtKGV0AVtkIuXJkFHkKx
	 in5wo28KrQq5ERGacqK+eTnX8cDiqv2bqi7aPrROE725I5uQPVaH9ZFbS+LC1XZMgB
	 G3v2Rf2RycbO0Fjg1XtI1/+ZWk3z8b/C2imDTmHXb71kep0PI/yHM+SmnENUlkEagK
	 rDNZal4d4rnyg==
Date: Mon, 2 Oct 2023 13:10:27 +0100
From: Conor Dooley <conor@kernel.org>
To: Chen Wang <unicorn_wang@outlook.com>
Cc: Jisheng Zhang <jszhang@kernel.org>,
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
Subject: Re: [PATCH 0/5] Add Milk-V Duo board support
Message-ID: <20231002-traps-prize-d5b5c0f2152d@spud>
References: <20230930123937.1551-1-jszhang@kernel.org>
 <MA0P287MB0332292A882CC400750788A8FEC7A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KFvRWj/kJia4o6i6"
Content-Disposition: inline
In-Reply-To: <MA0P287MB0332292A882CC400750788A8FEC7A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>


--KFvRWj/kJia4o6i6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 30, 2023 at 10:18:23PM +0800, Chen Wang wrote:
>=20
> =E5=9C=A8 2023/9/30 20:39, Jisheng Zhang =E5=86=99=E9=81=93:
> > Milk-V Duo[1] board is an embedded development platform based on the
> > CV1800B[2] chip. Add minimal device tree files for the development boar=
d.
> > Currently, now it's supported to boot to a basic shell.
> >=20
> > NOTE: this series is based on the SG2042 upstream series for the vendor
> > prefix and ARCH_SOPHGO option.
> Missing reference to [3].

Should be fine without it :)

> >=20
> > Link: https://milkv.io/duo [1]
> > Link: https://en.sophgo.com/product/introduce/cv180xB.html [2]
> > Link: https://lore.kernel.org/linux-riscv/cover.1695804418.git.unicornx=
w@gmail.com/ [3]
> >=20
> > Jisheng Zhang (5):
> >    dt-bindings: interrupt-controller: Add SOPHGO CV1800B plic
> >    dt-bindings: timer: Add SOPHGO CV1800B clint
> >    dt-bindings: riscv: Add Milk-V Duo board compatibles
> >    riscv: dts: sophgo: add initial CV1800B SoC device tree
> >    riscv: dts: sophgo: add Milk-V Duo board device tree
> >=20
> >   .../sifive,plic-1.0.0.yaml                    |   1 +
> >   .../devicetree/bindings/riscv/sophgo.yaml     |   4 +
> >   .../bindings/timer/sifive,clint.yaml          |   1 +
> >   arch/riscv/boot/dts/sophgo/Makefile           |   2 +-
> >   .../boot/dts/sophgo/cv1800b-milkv-duo.dts     |  38 ++++++
> >   arch/riscv/boot/dts/sophgo/cv1800b.dtsi       | 117 ++++++++++++++++++
> >   6 files changed, 162 insertions(+), 1 deletion(-)
> >   create mode 100644 arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
> >   create mode 100644 arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> >=20

--KFvRWj/kJia4o6i6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRqzMwAKCRB4tDGHoIJi
0hc/AQCrKLVIiXVABYoKX34nKht5Ha7F+ubUYXyuiEDISviTYAEAlU1seAj6AN3c
L36nj/svH9vlWR5tzkoocIkUeQ3BgAo=
=7CjF
-----END PGP SIGNATURE-----

--KFvRWj/kJia4o6i6--

