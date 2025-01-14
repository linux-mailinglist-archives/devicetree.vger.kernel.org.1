Return-Path: <devicetree+bounces-138533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E11A10F95
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 19:14:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DCA177A0315
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 18:14:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42D9B1FBEBC;
	Tue, 14 Jan 2025 18:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVlOusam"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1834A1FA838;
	Tue, 14 Jan 2025 18:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736878316; cv=none; b=sE3Ym4PY9A+WeDlOrPRUEgfwCXzNT5You7eusyxhbeDhI1G94f85fB010Fxd1fgDkJ5c9AUNjoT8z/UyYserPJ9rNIl3JqcV4HXJFdrj5+0aiOFIy8BawOhHYksQpRNaBUHNZKd8l2vWxhfa9rJ6YHJRGarV2+O7zbRktp0XbHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736878316; c=relaxed/simple;
	bh=uBXQnziVlP1k5rM6iYlEXPJKkpDHL/qERalon7FwP3Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KI47Sbr+bTHSUpEv9U2UPaRR12QA5ZIk5RFTKMG5qe6ApT29yggsR3aqNbx0bU7ECfH+kh59asw9QOm1YbHhYPDQCXDZW3GJjtmpj1xFEax1MeE5mU65pGVwzjCGc/w/mMRsE0nWhdQC1MLRBrIFUE+Z3JVgMyEJhdUs/AN9crw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVlOusam; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58D11C4CEDD;
	Tue, 14 Jan 2025 18:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736878315;
	bh=uBXQnziVlP1k5rM6iYlEXPJKkpDHL/qERalon7FwP3Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mVlOusamDxJN1SL1np1WBka1FO/6+7a1yNS+IRB612TyiciAs8hCdLgeoIbL2gaEh
	 3l7s+Tw8ErDVfzgRFi0FKSPYzb91n1f+7cbewIIElE78Mz+BzIqc7dd7zJND70b8qY
	 23pjcaDkwQeZ7mnZtIWAn8BNoZOlPmfRnBUrJtHSdqPtxjm2hljWQ5NT1xcZnqr0iW
	 C7cGMBp9tyu4Q5cbnYaRFrJfvsOtmFTsbjjfKcd5iFDY9eKNJaCLp2/KgwPP+ChPnu
	 lhytmmtFC1xKr6NVGYJCgp6aFGAGbzpyqV6qmYV9Z1hZCBKrV1/jjw2UNIi/thjV5U
	 ctsJowCM3nmOw==
Date: Tue, 14 Jan 2025 18:11:51 +0000
From: Conor Dooley <conor@kernel.org>
To: Minda Chen <minda.chen@starfivetech.com>
Cc: E Shattow <e@freeshell.de>, Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 1/2] riscv: dts: starfive: jh7110: pciephy0 USB 3.0
 configuration registers
Message-ID: <20250114-recollect-dictate-104e890d116e@spud>
References: <20250102183746.411526-1-e@freeshell.de>
 <20250102183746.411526-2-e@freeshell.de>
 <20250113-mushiness-snugness-0f55574e3956@spud>
 <SHXPR01MB0863DBF85A9874C9F93ECD25E618A@SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zkMmGR8EqwgS0H6h"
Content-Disposition: inline
In-Reply-To: <SHXPR01MB0863DBF85A9874C9F93ECD25E618A@SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn>


--zkMmGR8EqwgS0H6h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 14, 2025 at 05:42:28AM +0000, Minda Chen wrote:
>=20
>=20
> >=20
> > On Thu, Jan 02, 2025 at 10:37:36AM -0800, E Shattow wrote:
> > > StarFive JH7110 contains a Cadence USB2.0+USB3.0 controller IP block
> > > that may exclusively use pciephy0 for USB3.0 connectivity. Add the
> > > register offsets for the driver to enable/disable USB3.0 on pciephy0.
> > >
> > > Signed-off-by: E Shattow <e@freeshell.de>
> > > ---
> > >  arch/riscv/boot/dts/starfive/jh7110.dtsi | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > > diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> > > b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> > > index 0d8339357bad..75ff07303e8b 100644
> > > --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> > > +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> > > @@ -611,6 +611,8 @@ usbphy0: phy@10200000 {
> > >  		pciephy0: phy@10210000 {
> > >  			compatible =3D "starfive,jh7110-pcie-phy";
> > >  			reg =3D <0x0 0x10210000 0x0 0x10000>;
> > > +			starfive,sys-syscon =3D <&sys_syscon 0x18>;
> > > +			starfive,stg-syscon =3D <&stg_syscon 0x148 0x1f4>;
> >=20
> > Why weren't these added in the first place? Minda, do you know?
> >=20
> The driver only require to set syscon register while the PHY attach to Ca=
dence USB.(star64 board case)
> The PHY default attach to PCIe0, VF2 board do not set any setting. So I d=
on't set it.

Does this mean that the change should be made in files where it will
only affect non-VF2 boards, or is it harmless if applied to the VF2
also?

--zkMmGR8EqwgS0H6h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ4ao5wAKCRB4tDGHoIJi
0nL0AP4tkI2HO0ATW7TcIVGIb2mlhpZ8ZVcIBo227WoH3KCBCgD/dQ/WePMc2ft+
/1Nb9a/IDtAAuVL3adir9sq1W8OnBQw=
=2Tua
-----END PGP SIGNATURE-----

--zkMmGR8EqwgS0H6h--

