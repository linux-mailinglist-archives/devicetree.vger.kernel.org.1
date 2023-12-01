Return-Path: <devicetree+bounces-20548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDFB800067
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 01:41:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AD86281662
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 00:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17768633;
	Fri,  1 Dec 2023 00:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euVkBSUh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF79C387
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 00:41:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0692BC433C8;
	Fri,  1 Dec 2023 00:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701391274;
	bh=xyNXG6SSw/FX+HmvZLvMHfne8MiBvBU5k2qUErywYyo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=euVkBSUhyDkac4CuPscrYU3WCYyr12e7uI7wedIrK6RwcBi0Bjh0087oE++tAsadB
	 RgWnbEBFV/sp93kZs5ULLGR7JCmaaZNSW6Ifl+nw1+VrCvC3Vl/rUiLyLOiUH+HIIi
	 djXuO+F3Rofz+qqXJDAewx/xMuSfFEtnJjzZCkbIPQfaSs79VLSSberldUhILVQkW2
	 HdzWBpkty2jZkFMb+1MiRwdz5O+LrrOEqanRQ3BYkWXa0Bw8dYb/fiI8Gn3ePkkMq+
	 7NMcZWCyHzVCypYcAxpVCQqWZed41tMOFwj0F6pdm4VeZ9Vr3h89U/sdYYl+zIpZUz
	 ZXw8HIgi+nMvA==
Date: Fri, 1 Dec 2023 00:41:08 +0000
From: Conor Dooley <conor@kernel.org>
To: Inochi Amaoto <inochiama@outlook.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Anup Patel <anup@brainfault.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	Jisheng Zhang <jszhang@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v4 0/7] Add Huashan Pi board support
Message-ID: <20231201-nullify-overhand-9fb99d0752ad@spud>
References: <20231130-radiator-cut-167bcaaa2cd6@spud>
 <IA1PR20MB4953275B5B7BB241916A937BBB82A@IA1PR20MB4953.namprd20.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Oa6rKUcHt4IMj/fE"
Content-Disposition: inline
In-Reply-To: <IA1PR20MB4953275B5B7BB241916A937BBB82A@IA1PR20MB4953.namprd20.prod.outlook.com>


--Oa6rKUcHt4IMj/fE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 01, 2023 at 07:21:29AM +0800, Inochi Amaoto wrote:
> >
> >On Thu, 19 Oct 2023 07:18:00 +0800, Inochi Amaoto wrote:
> >> Huashan Pi board is an embedded development platform based on the
> >> CV1812H chip. Add minimal device tree files for this board.
> >> Currently, it can boot to a basic shell.
> >>
> >> NOTE: this series is based on the Jisheng's Milk-V Duo patch.
> >>
> >> Link: https://en.sophgo.com/product/introduce/huashan.html
> >> Link: https://en.sophgo.com/product/introduce/cv181xH.html
> >> Link: https://lore.kernel.org/linux-riscv/20231006121449.721-1-jszhang=
@kernel.org/
> >>
> >> [...]
> >
> >Applied to riscv-dt-for-next, thanks! LMK if something looks not as
> >expected.
> >
> >[1/7] dt-bindings: interrupt-controller: Add SOPHGO CV1812H plic
> >      https://git.kernel.org/conor/c/21a34e63afcc
> >[2/7] dt-bindings: timer: Add SOPHGO CV1812H clint
> >      https://git.kernel.org/conor/c/06ea2a1968a9
> >[3/7] dt-bindings: riscv: Add SOPHGO Huashan Pi board compatibles
> >      https://git.kernel.org/conor/c/d7b92027834e
> >[4/7] riscv: dts: sophgo: Separate compatible specific for CV1800B soc
> >      https://git.kernel.org/conor/c/5b5dce3951b2
> >[5/7] riscv: dts: sophgo: cv18xx: Add gpio devices
> >      https://git.kernel.org/conor/c/dd791b45c866
> >[6/7] riscv: dts: sophgo: add initial CV1812H SoC device tree
> >      https://git.kernel.org/conor/c/681ec684a741
> >[7/7] riscv: dts: sophgo: add Huashan Pi board device tree
> >      https://git.kernel.org/conor/c/2c36b0cfb408
> >
> >Thanks,
> >Conor.
> >
>=20
> Hi Conor,
>=20
> Thanks for the confirmation. But I suggest to revert these patches.
> Several days ago, Sophgo informed me that CV1810 series will be
> renamed. And the Huashan Pi will switch to the chip with new name.
> To avoid unnecessary conflict, please drop these patch and I will
> prepare a new patch once the renamed chip is launched.

This is a board that exists, that you (and possibly others) have, right?


--Oa6rKUcHt4IMj/fE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWkrpAAKCRB4tDGHoIJi
0hX6AP9OHp3TzIaapwlMHyhqln64NTsByJQi4Ni2lrdwgE9f1wEAk8lHeZH8ux+P
5BlutmsXivBzaXVvkood0Zk8vTY2OwY=
=lcfp
-----END PGP SIGNATURE-----

--Oa6rKUcHt4IMj/fE--

