Return-Path: <devicetree+bounces-241484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCB4C7EF56
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 05:45:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F100C346195
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 04:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC2C83A291;
	Mon, 24 Nov 2025 04:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="hLEZV6MS"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300994A3E;
	Mon, 24 Nov 2025 04:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763959531; cv=none; b=UJG+az4UFdPv/Cm41eLAw0e3vbA5HK6MDOeppqSoBG/AI89ixpnzKa75yRG4Gn5yniaFljEh1G/Rj3TENKnd5f/VIfr0q2CnEq6S68UGml7zl8ZSaBucV4K46xQrlyvACPBl5f8fS/TaIkO6f46km3C0+hOhDLzsxsI8F09hfqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763959531; c=relaxed/simple;
	bh=5qigren/FI/FTvylx8vBWZ9DMSjtCIKGekCxHcGrp1Y=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=JkJumlDwsrYwARSWg5gEZI5cPmDOLG4HxYk9krXRXKwhPkhZiklPVyWD3g2LrE1YqUyCd9LMSP4y7TOxlM/rU+lDLKhAMVStly+uors4KzVShAwanVM9RNzREV7yyjAn0DQAwpNoYX2WXlpdBNTN3Y38VNDEm/zHHMUzlRWWf5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=hLEZV6MS; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1763959020;
	bh=hAUDklng+BZKqI8KusNe8mWtzFQ70FVKUEy2GEFuPik=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=hLEZV6MSqW4qgVqLjIdJTLJBeZMw2XDp88xQXAHJOVtBBvmKT8dd9bNtgY/yYQ4yU
	 b0KAynblrFCdrVvos9RXuzvRPvqxWpFiPCIke8xLJdNqFntEi0qmJGytgd0ZsvFzpK
	 Myh1HT3MU8A6IVvivAy4gqwwRdb1jqrfIUr2uMEe5N0Ke6kdKQ28l6q/JXCS0RKBO3
	 y1gCweF3qsJCwk3oBdTZPfQAHQFZDn02nAYKHMCfcFBUps/gWJ8b8S5rGcZF2OXJb2
	 dIY7Uo1lrNsPsEOHqsHXvKj+M5Rz8AYo0Mz1d1baUG32sMhaXxdyNdxnQwRguRk8gH
	 E8Tu2eBdVge6A==
Received: from [192.168.68.115] (unknown [180.150.112.38])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 30E4464DF5;
	Mon, 24 Nov 2025 12:36:57 +0800 (AWST)
Message-ID: <b610d86a2f71bf8289deeaa1c361005146985d2a.camel@codeconstruct.com.au>
Subject: Re: [PATCH v3 2/2] dts: aspeed: Add a dts for the nvidia msx4 hpm
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Marc Olberding <molberding@nvidia.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, 	linux-kernel@vger.kernel.org
Date: Mon, 24 Nov 2025 15:06:56 +1030
In-Reply-To: <aRbLqH8pLWCQryhu@molberding.nvidia.com>
References: <20251108-msx1_devicetree-v3-0-c7cb477ade27@nvidia.com>
	 <20251108-msx1_devicetree-v3-2-c7cb477ade27@nvidia.com>
	 <a030d7a2e2d36064bd86fe2af1ec6e4baabd9946.camel@codeconstruct.com.au>
	 <aRbLqH8pLWCQryhu@molberding.nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-11-13 at 22:26 -0800, Marc Olberding wrote:
> On Fri, Nov 14, 2025 at 02:46:19PM +1030, Andrew Jeffery wrote:
> > > +	model =3D "AST2600 MSX4 Kernel";
> >=20
> > I find this to be a curious model name :)
> >=20
> > Are there no other reasonable names?
> >=20
> For better or worse, this is the most accurate name, and matches the hpm =
hardware itself.

hpm?

> We may need multi-hpm support for the resulting firmware at some point, s=
o matching
> the hpm to the device tree seemed like the simplest thing to do. If this =
doesn't
> match the way the kernel deals with this sort of thing, please let me kno=
w the best path forward.

I guess to clarify my concern: what does "Kernel" refer to here?

The devicetree describes the hardware, so references to things such as
"driver" and "kernel" tend to be a little suspicious.

For reference, here's a sample of other model names that have been
used:

   > git grep model arch/arm/boot/dts/aspeed/ | shuf | head
   arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts: model =3D "Faceb=
ook Harma";
   arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-e3c256d4i.dts:       model =
=3D "ASRock E3C256D4I BMC";
   arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minipack.dts:      model =
=3D "Facebook Minipack 100 BMC";
   arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts:  model =
=3D "Facebook Santabarbara BMC";
   arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-elbert.dts:        model =
=3D "Facebook Elbert BMC";
   arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts:    model =
=3D "Facebook Greatlakes BMC";
   arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-fuji.dts:       model =3D "Fuji"=
;
   arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-cmm.dts:   model =3D "Faceb=
ook Backpack CMM BMC";
   arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dts:   model =3D "Balco=
nes";
   arch/arm/boot/dts/aspeed/aspeed-bmc-vegman-rx20.dts:    model =3D "YADRO=
 VEGMAN Rx20 BMC";

These don't tend to reference either the SoC or the kernel, rather the
platform that the SoC sits in. "MSX4" might be enough?

>=20
> > > +	compatible =3D "nvidia,msx4-bmc", "aspeed,ast2600";
> > > +
> > > +	aliases {
> > > +		serial0 =3D &uart1;
> > > +		serial1 =3D &uart2;
> > > +		serial2 =3D &uart3;
> > > +		serial3 =3D &uart4;
> > > +		serial4 =3D &uart5;
> >=20
> > Just checking whether you're actually using all of these? I guess the
> > uart nodes further down suggest so?
> >=20
>=20
> These UARTs are wired up on this platform. Userspace may not use them tod=
ay,
> but we want to enable doing so without needing further device tree update=
s, in
> case they are needed for debug where a BMC firmware flash would be unpala=
table.
>=20
> >=20
> > Seems curious to enable all of these I2C controllers yet have no
> > devices under them? Can you elaborate?
> >=20
> > Andrew
>=20
> Unfortunately, the devices that we need over i2c are not
> guaranteed to be available at BMC boot, and are probed in userspace throu=
gh
> the new_device sysfs node from the i2c subsystem. The BMC doesn't
> have direct control over when these devices are accessible,
> they are available after the host has completed POST.
>=20
> As far as I can tell, there isn't a great way to defer probe for devices
> that the BMC doesn't have immediate control over whether its accessible.
> Regulators seem like a match, but it seems to assume that you can directl=
y
> turn on the power domain that the device is tied to, which isn't the case=
 here
> for various reasons.
>=20
> Please let me know if I'm ignorant of a way to deal with this issue.

No dramas, however, I'd appreciate a comment in the devicetree along
these lines.

Andrew

