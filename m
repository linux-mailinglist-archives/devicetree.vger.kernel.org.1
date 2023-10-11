Return-Path: <devicetree+bounces-7899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1447C6059
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 00:33:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DAB5928240C
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 22:32:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67FB439C;
	Wed, 11 Oct 2023 22:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgwE80uZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CFA249F2
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 22:32:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A44AC433C8;
	Wed, 11 Oct 2023 22:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697063577;
	bh=rpGzTzUpWKI2zCDFka+c0ioQo+a/DBJfsLAIdNdjuUI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RgwE80uZx2VHum1n+jjrNufkljdEkPAzsOYFFi+djv3OMoGLKpDxSBPfAW8Iz+66t
	 JgNRtiZkstmB9no/WSGc+A8UwwXixljCo/LJWVK8NCebMQNO6+wGE7g3yb/Zidwa1y
	 1IjkVODjChMSlJ4msCiB6+durrgMsOIa+9mTc38l1pwWR76cHiCf5v+6CAwdBgMDmW
	 n6KhjJdiVlC1/lf9YGqNK6/7h7s81gnwjggY6twtMfKzs/74qa/uZH1MSHvo1duNk6
	 SAp+6mMP4irqnVrUeG5i0ClRLctYrcBOTpGT4xd7MPub4/O8hGlHPVA2gH/dCxNRON
	 F5c0It7UtqBCA==
Date: Wed, 11 Oct 2023 23:32:52 +0100
From: Conor Dooley <conor@kernel.org>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Nam Cao <namcao@linuxtronix.de>, kernel@esmil.dk, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	william.qiu@starfivetech.com, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] riscv: dts: starfive: visionfive 2: correct spi's ss pin
Message-ID: <20231011-bush-much-2b2b47a96c30@spud>
References: <20231011161414.L6wXZVDb@linutronix.de>
 <CAJM55Z-YoJnZi4CrwD66v1TaJoYz1jbX+QOFXUDjhm5C9tST0w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="+sLEwCn/NiZhi8Lq"
Content-Disposition: inline
In-Reply-To: <CAJM55Z-YoJnZi4CrwD66v1TaJoYz1jbX+QOFXUDjhm5C9tST0w@mail.gmail.com>


--+sLEwCn/NiZhi8Lq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Wed, Oct 11, 2023 at 12:29:44PM -0700, Emil Renner Berthing wrote:
> Nam Cao wrote:
> > The ss pin of spi0 is the same as sck pin. According to the
> > visionfive 2 documentation, it should be pin 49 instead of 48.
>=20
> Thanks! As far as I can tell this should make the 40pin header match the
> Raspberry Pi layout, so
>=20
> Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

The lists (linux-riscv at least) never got this patch & I cannot find it
in my inbox either. Can you send it "properly" please?

Thanks,
Conor.

>=20
> >
> > Fixes: 74fb20c8f05d ("riscv: dts: starfive: Add spi node and pins confi=
guration")
> > Signed-off-by: Nam Cao <namcao@linuxtronix.de>
> > ---
> >  arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.=
dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> > index 12ebe9792356..2c02358abd71 100644
> > --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> > +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> > @@ -431,7 +431,7 @@ GPOEN_ENABLE,
> >  		};
> >
> >  		ss-pins {
> > -			pinmux =3D <GPIOMUX(48, GPOUT_SYS_SPI0_FSS,
> > +			pinmux =3D <GPIOMUX(49, GPOUT_SYS_SPI0_FSS,
> >  					      GPOEN_ENABLE,
> >  					      GPI_SYS_SPI0_FSS)>;
> >  			bias-disable;
> > --
> > 2.39.2
> >
>=20

--+sLEwCn/NiZhi8Lq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZScilAAKCRB4tDGHoIJi
0sywAP9Nrr1MHNLliPKjgEMuuMbqOMxreV5oWYOWnFVGNv2mygD/ZJYhrrFSnILM
0G4VObLptqfC2y/vAVmYzmxrdDK7+wc=
=zhxe
-----END PGP SIGNATURE-----

--+sLEwCn/NiZhi8Lq--

