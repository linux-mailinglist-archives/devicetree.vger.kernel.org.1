Return-Path: <devicetree+bounces-2654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B4A7AC070
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 12:25:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 55A88B2091F
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 10:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFC7910A16;
	Sat, 23 Sep 2023 10:25:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAAA1DDD6;
	Sat, 23 Sep 2023 10:25:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57453C433C7;
	Sat, 23 Sep 2023 10:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695464748;
	bh=Q3Y7t0Lpv4O8LxXpOYTrQfyQd9RMu7ml1ykCJ09i0So=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D3XJIweX871CqMOIaHHipt11EREXzfg2FoIRdC2GlabW2UWDr77bvfpiQnW6VqpX2
	 IrInx2zSMQrWTcK7PCWKcTu2boVcKo3rkcerPNfLFYz5WsFb7SBQW8rqHhWDm+7pTx
	 +aLLjjXNDZWqEWv/1goXqkfRefyvbp8fqjgWggWcYpY4BwCJg8LcJTId4C9UsA6tAz
	 GU0NNqVIDt3OZduOV4HoPZlJEEDNeQqlzaupvqSU9AsQtghk6gncjir72tcevg7vJq
	 DIIyY29iZNaTX/yjd8fVC/u+KcoZfEBB/eXoK87Ip2Qr2ft1JmbdOcatZIsgniKzNS
	 qhQwxOrN/+DKA==
Date: Sat, 23 Sep 2023 11:25:42 +0100
From: Conor Dooley <conor@kernel.org>
To: Guo Ren <guoren@kernel.org>
Cc: linux-riscv@lists.infradead.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Jisheng Zhang <jszhang@kernel.org>, Fu Wei <wefu@redhat.com>,
	Chen Wang <unicorn_wang@outlook.com>, devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev, linux-renesas-soc@vger.kernel.org
Subject: Re: [RFC v2 6/6] riscv: dts: thead: convert isa detection to new
 properties
Message-ID: <20230923-snowsuit-angled-f49237d27c83@spud>
References: <20230922081351.30239-2-conor@kernel.org>
 <20230922081351.30239-8-conor@kernel.org>
 <CAJF2gTR2JmsMhzjzWp85hEwoJwRBN4T4iHz_Z-1cG-XgB=EFeA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="47AsyQWf2LP0qoEw"
Content-Disposition: inline
In-Reply-To: <CAJF2gTR2JmsMhzjzWp85hEwoJwRBN4T4iHz_Z-1cG-XgB=EFeA@mail.gmail.com>


--47AsyQWf2LP0qoEw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 23, 2023 at 03:50:36PM +0800, Guo Ren wrote:
> On Fri, Sep 22, 2023 at 4:16=E2=80=AFPM Conor Dooley <conor@kernel.org> w=
rote:
> >
> > From: Conor Dooley <conor.dooley@microchip.com>
> >
> > Convert the th1520 devicetrees to use the new properties
> > "riscv,isa-base" & "riscv,isa-extensions".
> > For compatibility with other projects, "riscv,isa" remains.
> >
> > Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> > ---
> >  arch/riscv/boot/dts/thead/th1520.dtsi | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dt=
s/thead/th1520.dtsi
> > index ce708183b6f6..723f65487246 100644
> > --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> > +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> > @@ -20,6 +20,9 @@ c910_0: cpu@0 {
> >                         compatible =3D "thead,c910", "riscv";
> >                         device_type =3D "cpu";
> >                         riscv,isa =3D "rv64imafdc";
> > +                       riscv,isa-base =3D "rv64i";

> Why not riscv,isa-base =3D "rv64"? I saw "i" in the riscv,isa-extensions.

I did it that way as a hedge against things changing in the future. I
have little trust in that part of the ISA specifications.

--47AsyQWf2LP0qoEw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQ69JQAKCRB4tDGHoIJi
0vX6AQDE7jhpSu4VP4wtSRPrVTHRRS7VcBWe2XyVZJTOd9TWXAD7BBHlwAPzKSGb
vt2Z0iGrgkRVFsQ1U/vLuYvhM1ucsgE=
=fcfM
-----END PGP SIGNATURE-----

--47AsyQWf2LP0qoEw--

