Return-Path: <devicetree+bounces-139371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCA0A155EA
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 18:45:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5052A3A8FC0
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 17:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82835188A18;
	Fri, 17 Jan 2025 17:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHH+oAAa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB6946434;
	Fri, 17 Jan 2025 17:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737135943; cv=none; b=JZZtQ/3pvdUExmcXzjSQUTzPjF86cQhKAz21fKSFjR5QbY1PgWQXNl/MycrvIfBuV43vYao25nBXw7+TrVrbyKnf1hGmpJfBeqtmxLNrHqUCrsOP+EFcrl1Rc0yhzasNCuLo2JeaMNClk8Lv+/qF0cwCNEMROQKmmaaB17+lgog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737135943; c=relaxed/simple;
	bh=Mz5NCKx70+uO6/QkNUUZWJUoT4Xs/ZpF384Fs+9kMc4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SBuEqCqawFAcppgKuAtuN6785dsPLeZN/BYNA5ap35XBAD0rodZjwpdBUzXJKvu8AZEOILCwRRdGI47jaORj4QlXLKIhJ8MbTUr/TjEUdfq+niocvpwJEheA2nIDDTgub+I51sVCjxImXoF80MGVti9Bpt9WgzNe8RYA48oCTZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHH+oAAa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C845EC4CEE0;
	Fri, 17 Jan 2025 17:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737135942;
	bh=Mz5NCKx70+uO6/QkNUUZWJUoT4Xs/ZpF384Fs+9kMc4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CHH+oAAaTF/Diy9dsMYQdLKx/ZTGfWvGyE/W/OBJO18kmpAPjpMwFYP98B8kwPR7H
	 jnSNm+JgTk/Bll5mHA1C3uQ2hrND4Sq52l1jdTWh9OvXiXvHRiXClLxM56y0PbO/+q
	 cT4I0UPLcOJL5W9wI3qz8OX2RNODzSW/AtdbFVrbMyZVvkIrDnSMj7kN3AY6+FceoC
	 CJYRnv1Iyia8mx3Wy2Z5LLL0Tep0fUanyoI5jKWDzlb4ekQUiY7N4wjy3IcPJMoS1/
	 dJ9VZgt3p5xOGvdWb2pc2TieH5dWt37XeeX/uGvUvXlDDeKjFnvblbWKPQixCdKsge
	 iJa1erdF8uv8g==
Date: Fri, 17 Jan 2025 17:45:38 +0000
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
Message-ID: <20250117-crabmeat-bondless-dfafc3947ad5@spud>
References: <20250102183746.411526-1-e@freeshell.de>
 <20250102183746.411526-2-e@freeshell.de>
 <20250113-mushiness-snugness-0f55574e3956@spud>
 <SHXPR01MB0863DBF85A9874C9F93ECD25E618A@SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn>
 <20250114-recollect-dictate-104e890d116e@spud>
 <SHXPR01MB08631714C914911D343372ACE619A@SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nZO9jY1X/rK0Hnfa"
Content-Disposition: inline
In-Reply-To: <SHXPR01MB08631714C914911D343372ACE619A@SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn>


--nZO9jY1X/rK0Hnfa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 15, 2025 at 10:58:39AM +0000, Minda Chen wrote:
>=20
>=20
> >=20
> > On Tue, Jan 14, 2025 at 05:42:28AM +0000, Minda Chen wrote:
> > >
> > >
> > > >
> > > > On Thu, Jan 02, 2025 at 10:37:36AM -0800, E Shattow wrote:
> > > > > StarFive JH7110 contains a Cadence USB2.0+USB3.0 controller IP
> > > > > block that may exclusively use pciephy0 for USB3.0 connectivity.
> > > > > Add the register offsets for the driver to enable/disable USB3.0 =
on
> > pciephy0.
> > > > >
> > > > > Signed-off-by: E Shattow <e@freeshell.de>
> > > > > ---
> > > > >  arch/riscv/boot/dts/starfive/jh7110.dtsi | 2 ++
> > > > >  1 file changed, 2 insertions(+)
> > > > >
> > > > > diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> > > > > b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> > > > > index 0d8339357bad..75ff07303e8b 100644
> > > > > --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> > > > > +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> > > > > @@ -611,6 +611,8 @@ usbphy0: phy@10200000 {
> > > > >  		pciephy0: phy@10210000 {
> > > > >  			compatible =3D "starfive,jh7110-pcie-phy";
> > > > >  			reg =3D <0x0 0x10210000 0x0 0x10000>;
> > > > > +			starfive,sys-syscon =3D <&sys_syscon 0x18>;
> > > > > +			starfive,stg-syscon =3D <&stg_syscon 0x148 0x1f4>;
> > > >
> > > > Why weren't these added in the first place? Minda, do you know?
> > > >
> > > The driver only require to set syscon register while the PHY attach to
> > > Cadence USB.(star64 board case) The PHY default attach to PCIe0, VF2 =
board
> > do not set any setting. So I don't set it.
> >=20
> > Does this mean that the change should be made in files where it will on=
ly affect
> > non-VF2 boards, or is it harmless if applied to the VF2 also?
> Harmless. The PCIe PHY driver still set the PCIe mode syscon setting.

Okay, I'll pick this up after the merge window, pending an Ack from
Emil.

--nZO9jY1X/rK0Hnfa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ4qXQgAKCRB4tDGHoIJi
0p1QAQDOc97ffM1e/1fJGMOaVC6IUDODv/yYpVo8VpnvC6oErgD/bXYe8nGxPBSh
OIyx9QhyHlbMqS85fozWlzYbKuBm4wM=
=QiEe
-----END PGP SIGNATURE-----

--nZO9jY1X/rK0Hnfa--

