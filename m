Return-Path: <devicetree+bounces-241665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D84C80B4F
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 14:21:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DFFF434481E
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D0DA43ABC;
	Mon, 24 Nov 2025 13:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrLnpJPh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A211A275;
	Mon, 24 Nov 2025 13:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763990509; cv=none; b=XmWjydI3TZ4czwfyJmAgBtm4oQDvPpm1JE1+UjGiRRoNzOGu4FM1XPmTa6WwHj8vhd3MQtwXqv0OaSkdojgUeObCtGh1VjHtuqo/fJP9JIAI/HUMdNXogujGp2NhO5CUqCE1HH0T9y2hcY1xhfbmhU3ZM8CCcqknTXugNEnh/1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763990509; c=relaxed/simple;
	bh=W6l8Kje8i5zEPsAYHczwdnoSnWf3b9Gi5NNtIeW2Goc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q8oAFr5qXND7nHAX+VpodmGMNhY8QW24HWG915QWlkin+EBErtwgYSx+H/7I6gQJQEVAeTYruIZd+PbpaHuL/aHeEw8EqIQmxw3vqX9xF579J/0ugrToCh5E+o68rO3tIBHm6TsoNSuvi24xFO9ynINDQoKaWpwkLrM6FwHrEaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrLnpJPh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D60AC4CEF1;
	Mon, 24 Nov 2025 13:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763990506;
	bh=W6l8Kje8i5zEPsAYHczwdnoSnWf3b9Gi5NNtIeW2Goc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UrLnpJPhASQSKFOzKEYvjKXQ7286vNMvNeNOJqkUY1htn3gmMtfAUSd9+ekx+K6hJ
	 VlwSNf5YryrRtYHjK3n0EujL07ejtlDnhUMB7yNP+surHYIrzoYWb+A1SLNsOoQsS3
	 0hIFNiZld6ReERxtauQtzpSLy5yhNHddOEsMo2eufeo2HFKY1AWFGLnZxD88iRTBek
	 4Gj5FYjMe/dn3ftXXJ0MMejOp1EvR5fZ00txN/9qk/H6ZzqAdjd4j019PWdUtQQFku
	 5TAObJvYcyp+WuBxX6JsDc+IW+CykJKPLR4qFt9PW0RX/1cpVV9fJGezH5kgLYgnGL
	 sgHM6SsSifCKg==
Date: Mon, 24 Nov 2025 13:21:42 +0000
From: Conor Dooley <conor@kernel.org>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: E Shattow <e@freeshell.de>, Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 2/2] riscv: dts: starfive: add Orange Pi RV
Message-ID: <20251124-emit-monument-380beaa6c394@spud>
References: <20251123225059.49665-1-e@freeshell.de>
 <20251123225059.49665-3-e@freeshell.de>
 <20251124-blaming-duplicity-fb1311864b3f@spud>
 <1f0885a31e8fd9f4cd667c05fef818c8a38203e7.camel@icenowy.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="INXoaJd+izpLhJBa"
Content-Disposition: inline
In-Reply-To: <1f0885a31e8fd9f4cd667c05fef818c8a38203e7.camel@icenowy.me>


--INXoaJd+izpLhJBa
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 24, 2025 at 07:08:55PM +0800, Icenowy Zheng wrote:
> =E5=9C=A8 2025-11-24=E6=98=9F=E6=9C=9F=E4=B8=80=E7=9A=84 11:07 +0000=EF=
=BC=8CConor Dooley=E5=86=99=E9=81=93=EF=BC=9A
> > On Sun, Nov 23, 2025 at 02:50:45PM -0800, E Shattow wrote:
> > > From: Icenowy Zheng <uwu@icenowy.me>
> > >=20
> > > Orange Pi RV is a SBC based on the StarFive VisionFive 2 board.
> > >=20
> > > Orange Pi RV features:
> > >=20
> > > - StarFive JH7110 SoC
> > > - GbE port connected to JH7110 GMAC0 via YT8531 PHY
> > > - 4x USB ports via VL805 PCIe USB controller connected to JH7110
> > > pcie0
> > > - M.2 M-key slot connected to JH7110 pcie1
> > > - HDMI video output
> > > - 3.5mm audio output
> > > - Ampak AP6256 SDIO Wi-Fi/Bluetooth module on mmc0
> > > - microSD slot on mmc1
> > > - SPI NOR flash memory
> > > - 24c02 EEPROM (read only by default)
> > >=20
> > > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > > Signed-off-by: E Shattow <e@freeshell.de>
> > > ---
> > > =C2=A0arch/riscv/boot/dts/starfive/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
> > > =C2=A0.../boot/dts/starfive/jh7110-orangepi-rv.dts=C2=A0 | 76
> > > +++++++++++++++++++
> > > =C2=A02 files changed, 77 insertions(+)
> > > =C2=A0create mode 100644 arch/riscv/boot/dts/starfive/jh7110-orangepi-
> > > rv.dts
> > >=20
> > > diff --git a/arch/riscv/boot/dts/starfive/Makefile
> > > b/arch/riscv/boot/dts/starfive/Makefile
> > > index 62b659f89ba7..d34c8c79bc10 100644
> > > --- a/arch/riscv/boot/dts/starfive/Makefile
> > > +++ b/arch/riscv/boot/dts/starfive/Makefile
> > > @@ -12,6 +12,7 @@ dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-
> > > deepcomputing-fml13v01.dtb
> > > =C2=A0dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-milkv-mars.dtb
> > > =C2=A0dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-milkv-marscm-emmc.dtb
> > > =C2=A0dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-milkv-marscm-lite.dtb
> > > +dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-orangepi-rv.dtb
> > > =C2=A0dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-pine64-star64.dtb
> > > =C2=A0dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-starfive-visionfive-2-
> > > v1.2a.dtb
> > > =C2=A0dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-starfive-visionfive-2-
> > > v1.3b.dtb
> > > diff --git a/arch/riscv/boot/dts/starfive/jh7110-orangepi-rv.dts
> > > b/arch/riscv/boot/dts/starfive/jh7110-orangepi-rv.dts
> > > new file mode 100644
> > > index 000000000000..16ec2767134e
> > > --- /dev/null
> > > +++ b/arch/riscv/boot/dts/starfive/jh7110-orangepi-rv.dts
> > > @@ -0,0 +1,76 @@
> > > +// SPDX-License-Identifier: GPL-2.0 OR MIT
> > > +/*
> > > + * Copyright (C) 2025 Icenowy Zheng <uwu@icenowy.me>
> > > + */
> > > +
> > > +/dts-v1/;
> > > +#include "jh7110-common.dtsi"
> > > +
> > > +/ {
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0model =3D "Xunlong Orange =
Pi RV";
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0compatible =3D "xunlong,or=
angepi-rv", "starfive,jh7110";
> > > +
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* This regulator is alway=
s on by hardware */
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0reg_vcc3v3_pcie: regulator=
-vcc3v3-pcie {
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0compatible =3D "regulator-fixed";
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0regulator-name =3D "vcc3v3-pcie";
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0regulator-min-microvolt =3D <3300000>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0regulator-max-microvolt =3D <3300000>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0regulator-always-on;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
> > > +
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0wifi_pwrseq: wifi-pwrseq {
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0compatible =3D "mmc-pwrseq-simple";
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0reset-gpios =3D <&sysgpio 62 GPIO_ACTIVE_LOW>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
> > > +};
> > > +
> > > +&gmac0 {
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0assigned-clocks =3D <&aonc=
rg JH7110_AONCLK_GMAC0_TX>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0assigned-clock-parents =3D=
 <&aoncrg
> > > JH7110_AONCLK_GMAC0_RMII_RTX>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0starfive,tx-use-rgmii-clk;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D "okay";
> > > +};
> > > +
> > > +&mmc0 {
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0#address-cells =3D <1>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0#size-cells =3D <0>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0cap-sd-highspeed;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mmc-pwrseq =3D <&wifi_pwrs=
eq>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0vmmc-supply =3D <&reg_vcc3=
v3_pcie>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0vqmmc-supply =3D <&vcc_3v3=
>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D "okay";
> > > +
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ap6256: wifi@1 {
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0compatible =3D "brcm,bcm43456-fmac", "brcm,bcm4329-
> > > fmac";
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0reg =3D <1>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0/* TODO: out-of-band IRQ on GPIO21 */
> >=20
> > What's up with this TODO? Why's the gpio not here? Missing binding
> > support, missing driver support?
>=20
> Missing driver support in the pinctrl driver.

Provided Emil is okay with the patchset, I'll probably modify the
comment to mention what the todo depends on then.

>=20
> >=20
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
> > > +};
> > > +
> > > +&mmc1 {
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0cd-gpios =3D <&sysgpio 41 =
GPIO_ACTIVE_HIGH>;
> > > +};
> > > +
> > > +&pcie0 {
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D "okay";
> > > +};
> > > +
> > > +&pcie1 {
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D "okay";
> > > +};
> > > +
> > > +&phy0 {
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rx-internal-delay-ps =3D <=
1500>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0tx-internal-delay-ps =3D <=
1500>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0motorcomm,rx-clk-drv-micro=
amp =3D <3970>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0motorcomm,rx-data-drv-micr=
oamp =3D <2910>;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0motorcomm,tx-clk-adj-enabl=
ed;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0motorcomm,tx-clk-10-invert=
ed;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0motorcomm,tx-clk-100-inver=
ted;
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0motorcomm,tx-clk-1000-inve=
rted;
> > > +};
> > > +
> > > +&pwmdac {
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D "okay";
> > > +};
> > > --=20
> > > 2.50.0
> > >=20
>=20

--INXoaJd+izpLhJBa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaSRb5gAKCRB4tDGHoIJi
0jGRAQChGlMWCguWeh8rzdjVrsKVjHDF2GBfijzf5r5GqagRhQEArYNDjwZlt6P0
XD6DbIbjl6HHnz4lFdbBkMrdhst9NwY=
=hyAG
-----END PGP SIGNATURE-----

--INXoaJd+izpLhJBa--

