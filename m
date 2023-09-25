Return-Path: <devicetree+bounces-3228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF7D7ADC92
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 18:00:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B04AD281A58
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43C9521A02;
	Mon, 25 Sep 2023 16:00:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4AA219FA;
	Mon, 25 Sep 2023 16:00:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52843C433C8;
	Mon, 25 Sep 2023 15:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695657600;
	bh=a8rjNCYGi+ryMmuRSonoTJhU/Re5Es/qrYootNBn2KQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uw6x/w2ITyByP8yJa+h5heRKZvU4seYe51MRuekHi5Uuitrhn9WsvEE4052B5fJvk
	 wyC6o/X5rtmlHd8HjeVlWV0FGt7UWSYRIYZzGplscH72BYXLRBQt93zm4rmR8kTirr
	 m5IAT+ZYtc8BNZQTrMrpKuu8bBhqP4lcY3xy6isGMfM/mVrAlgvTRHE5LlMsIyvDzE
	 abi6edmHnwxG3UDWIFIOfnWGo2hH5o5Hj3ydAteqwV5cISEaKpRouKzg/QRKdL/mi3
	 Ofu9PJefDbC2t/cMvyy3Q0PBDdf6Mk7w0HXG+jNRMd3Fbr0yicDvkNGV8JVtonq+H1
	 EmlbAOwFRGZyA==
Date: Mon, 25 Sep 2023 16:59:54 +0100
From: Conor Dooley <conor@kernel.org>
To: Icenowy Zheng <uwu@icenowy.me>
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
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Chen Wang <unicorn_wang@outlook.com>,
	devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [RFC v2 6/6] riscv: dts: thead: convert isa detection to new
 properties
Message-ID: <20230925-semantic-euphemism-f0c7e85ac317@spud>
References: <20230922081351.30239-2-conor@kernel.org>
 <20230922081351.30239-8-conor@kernel.org>
 <f3b8d0823150797bde975a09b1faf6d3826d1ea8.camel@icenowy.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wRuYzBByuunf9c21"
Content-Disposition: inline
In-Reply-To: <f3b8d0823150797bde975a09b1faf6d3826d1ea8.camel@icenowy.me>


--wRuYzBByuunf9c21
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 24, 2023 at 07:22:30AM +0800, Icenowy Zheng wrote:
> =E5=9C=A8 2023-09-22=E6=98=9F=E6=9C=9F=E4=BA=94=E7=9A=84 09:13 +0100=EF=
=BC=8CConor Dooley=E5=86=99=E9=81=93=EF=BC=9A
> > From: Conor Dooley <conor.dooley@microchip.com>
> >=20
> > Convert the th1520 devicetrees to use the new properties
> > "riscv,isa-base" & "riscv,isa-extensions".
> > For compatibility with other projects, "riscv,isa" remains.
> >=20
> > Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> > ---
> > =C2=A0arch/riscv/boot/dts/thead/th1520.dtsi | 12 ++++++++++++
> > =C2=A01 file changed, 12 insertions(+)
> >=20
> > diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi
> > b/arch/riscv/boot/dts/thead/th1520.dtsi
> > index ce708183b6f6..723f65487246 100644
> > --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> > +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> > @@ -20,6 +20,9 @@ c910_0: cpu@0 {
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
compatible =3D "thead,c910", "riscv";
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
device_type =3D "cpu";
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
riscv,isa =3D "rv64imafdc";
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0riscv,=
isa-base =3D "rv64i";
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0riscv,=
isa-extensions =3D "i", "m", "a", "f",
> > "d", "c", "zicntr", "zicsr",
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "zifencei", "zihpm";
>=20
> Zfh is supported by T-Head C9xx with float too.

You say xx, so just to be sure: Is it always supported, or only with
some config for the IP (I wanna know if I need to look out for it while
reviewing other SoCs etc)?
Also, do you have a link to the documentation for it? English is the
only relevant language I speak, so if the doc is in Chinese, I'll need
some help!

> In addition, should X extensions get listed here?

Yes, but someone who cares about documenting these extensions should do
it ;)

Thanks,
Conor.

--wRuYzBByuunf9c21
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRGueQAKCRB4tDGHoIJi
0ieKAQC95Fhwv5mEqrEE8m9KwlXBDy2G7MWOZ/2Kb1wUhqbYxgEA3VMp+d4uCHtg
ZWL3dh1sB96XktcBGAqBSGoznsp8HQE=
=O8FG
-----END PGP SIGNATURE-----

--wRuYzBByuunf9c21--

