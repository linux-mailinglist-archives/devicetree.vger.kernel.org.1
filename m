Return-Path: <devicetree+bounces-241619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A23C80225
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:12:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AA7EC348022
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83E8D2FC881;
	Mon, 24 Nov 2025 11:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="nPZy+YZv"
X-Original-To: devicetree@vger.kernel.org
Received: from sender3-op-o12.zoho.com (sender3-op-o12.zoho.com [136.143.184.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8859F2749FE;
	Mon, 24 Nov 2025 11:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.184.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763982566; cv=pass; b=o3MV+gihkiuMSbAk0sn1e0Fk2ByZNBdJJePy5trjSVmm0iqTdv2cHCk5C+h6eEtP/xhu0lbn2o8zWIQoCAQJjWNmSrDSZ6Loxq0jXtPxn7oP/NsE9LupAKwNYfbKUd7HWTZs4uZQIAGk+ka/qeGO4jJg6Ql9FO5Rruwn31HEHYE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763982566; c=relaxed/simple;
	bh=YDFfcBn0c5x3mM0XZdA1SdYtIMqprY2W/a/3aBZk8eg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Zbqh3CzkOhujpfuNJE/HIwTS4o+fFUWNVnY3aiVCRpKasHdH6YpJpy26Vl6q9cXgo/2sS7kPS4839kqsjYAA+RAqVCvTpyqHcKXSU4+KjkOi+eIS7zKVkb7uujXRAGjAu4iPdrX7//QmzE52DjCdvoaVeU0MqfwZN3R6JXtEIK0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me; spf=pass smtp.mailfrom=icenowy.me; dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b=nPZy+YZv; arc=pass smtp.client-ip=136.143.184.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=icenowy.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icenowy.me
ARC-Seal: i=1; a=rsa-sha256; t=1763982543; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=fHbRXG5zcPi5U3auT3myCfCfZXNeSkv3n4bnbaf+eOjT2X+1+G+7st0tKRfcLBPrIaAiu2KVHPRauFbtOlo2x3hHcBFsMFxHjKW1t08t2xnIApylZzFNWCKVnNpxzdNDIsraEi/dYXty83B9lemwIMPkPzOYuqsNg9kzkwmYqII=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1763982543; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=YDFfcBn0c5x3mM0XZdA1SdYtIMqprY2W/a/3aBZk8eg=; 
	b=OJE+FPDFP+NWe7tR+xtxFeAXVNTm19SlFZXR8DaZgQEKkc0Yfi5r4ERWuB/rFbwMeU4kUnAy0qlQNUzBKecUeVdg7r8emQEFkp436JcN8lpVuTlTKDiRJbnD42kol4Lh4AwD8FChPD+xJM9nx8gTfnLVv+ztUVHiIkOmYTgv/Ic=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1763982543;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=YDFfcBn0c5x3mM0XZdA1SdYtIMqprY2W/a/3aBZk8eg=;
	b=nPZy+YZv09KvfuBaoRJtwgaWZn1QGMcqg/PqQmimGXwagT1tALFQOmcMx2D3G+h5
	4MEkZE81SbnR8cUQvxgYuD13rEJrx0/NXOpFQk2mwr9nnSR2wXbs/ggYT2iSeGTQSI7
	ScThndxBlOcLhPcO2rfOAvheE2z/htwlAo5aKjDDruqgrfnS+VgxEioDOGMtzzv3OIJ
	hvByjHNi79SUFCeemQHvbC0U2Yju/k3K82/QPLdhvNv/+bWK3HhVzNHBwnlXSfFACL3
	RQrxQnnl0NKE/AcB12Fih5gx7jHeLrrg+QteNpAYDu7IyOr6HXbN0KeXkptEcQI0/BX
	QljCT3VPYQ==
Received: by mx.zohomail.com with SMTPS id 1763982541277419.2649646713086;
	Mon, 24 Nov 2025 03:09:01 -0800 (PST)
Message-ID: <1f0885a31e8fd9f4cd667c05fef818c8a38203e7.camel@icenowy.me>
Subject: Re: [PATCH v3 2/2] riscv: dts: starfive: add Orange Pi RV
From: Icenowy Zheng <uwu@icenowy.me>
To: Conor Dooley <conor@kernel.org>, E Shattow <e@freeshell.de>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org,  devicetree@vger.kernel.org, Conor Dooley
 <conor+dt@kernel.org>
Date: Mon, 24 Nov 2025 19:08:55 +0800
In-Reply-To: <20251124-blaming-duplicity-fb1311864b3f@spud>
References: <20251123225059.49665-1-e@freeshell.de>
	 <20251123225059.49665-3-e@freeshell.de>
	 <20251124-blaming-duplicity-fb1311864b3f@spud>
Organization: Anthon Open-Source Community
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ZohoMailClient: External

=E5=9C=A8 2025-11-24=E6=98=9F=E6=9C=9F=E4=B8=80=E7=9A=84 11:07 +0000=EF=BC=
=8CConor Dooley=E5=86=99=E9=81=93=EF=BC=9A
> On Sun, Nov 23, 2025 at 02:50:45PM -0800, E Shattow wrote:
> > From: Icenowy Zheng <uwu@icenowy.me>
> >=20
> > Orange Pi RV is a SBC based on the StarFive VisionFive 2 board.
> >=20
> > Orange Pi RV features:
> >=20
> > - StarFive JH7110 SoC
> > - GbE port connected to JH7110 GMAC0 via YT8531 PHY
> > - 4x USB ports via VL805 PCIe USB controller connected to JH7110
> > pcie0
> > - M.2 M-key slot connected to JH7110 pcie1
> > - HDMI video output
> > - 3.5mm audio output
> > - Ampak AP6256 SDIO Wi-Fi/Bluetooth module on mmc0
> > - microSD slot on mmc1
> > - SPI NOR flash memory
> > - 24c02 EEPROM (read only by default)
> >=20
> > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > Signed-off-by: E Shattow <e@freeshell.de>
> > ---
> > =C2=A0arch/riscv/boot/dts/starfive/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
> > =C2=A0.../boot/dts/starfive/jh7110-orangepi-rv.dts=C2=A0 | 76
> > +++++++++++++++++++
> > =C2=A02 files changed, 77 insertions(+)
> > =C2=A0create mode 100644 arch/riscv/boot/dts/starfive/jh7110-orangepi-
> > rv.dts
> >=20
> > diff --git a/arch/riscv/boot/dts/starfive/Makefile
> > b/arch/riscv/boot/dts/starfive/Makefile
> > index 62b659f89ba7..d34c8c79bc10 100644
> > --- a/arch/riscv/boot/dts/starfive/Makefile
> > +++ b/arch/riscv/boot/dts/starfive/Makefile
> > @@ -12,6 +12,7 @@ dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-
> > deepcomputing-fml13v01.dtb
> > =C2=A0dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-milkv-mars.dtb
> > =C2=A0dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-milkv-marscm-emmc.dtb
> > =C2=A0dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-milkv-marscm-lite.dtb
> > +dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-orangepi-rv.dtb
> > =C2=A0dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-pine64-star64.dtb
> > =C2=A0dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-starfive-visionfive-2-
> > v1.2a.dtb
> > =C2=A0dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-starfive-visionfive-2-
> > v1.3b.dtb
> > diff --git a/arch/riscv/boot/dts/starfive/jh7110-orangepi-rv.dts
> > b/arch/riscv/boot/dts/starfive/jh7110-orangepi-rv.dts
> > new file mode 100644
> > index 000000000000..16ec2767134e
> > --- /dev/null
> > +++ b/arch/riscv/boot/dts/starfive/jh7110-orangepi-rv.dts
> > @@ -0,0 +1,76 @@
> > +// SPDX-License-Identifier: GPL-2.0 OR MIT
> > +/*
> > + * Copyright (C) 2025 Icenowy Zheng <uwu@icenowy.me>
> > + */
> > +
> > +/dts-v1/;
> > +#include "jh7110-common.dtsi"
> > +
> > +/ {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0model =3D "Xunlong Orange Pi=
 RV";
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0compatible =3D "xunlong,oran=
gepi-rv", "starfive,jh7110";
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* This regulator is always =
on by hardware */
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0reg_vcc3v3_pcie: regulator-v=
cc3v3-pcie {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0compatible =3D "regulator-fixed";
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0regulator-name =3D "vcc3v3-pcie";
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0regulator-min-microvolt =3D <3300000>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0regulator-max-microvolt =3D <3300000>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0regulator-always-on;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0wifi_pwrseq: wifi-pwrseq {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0compatible =3D "mmc-pwrseq-simple";
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0reset-gpios =3D <&sysgpio 62 GPIO_ACTIVE_LOW>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
> > +};
> > +
> > +&gmac0 {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0assigned-clocks =3D <&aoncrg=
 JH7110_AONCLK_GMAC0_TX>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0assigned-clock-parents =3D <=
&aoncrg
> > JH7110_AONCLK_GMAC0_RMII_RTX>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0starfive,tx-use-rgmii-clk;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D "okay";
> > +};
> > +
> > +&mmc0 {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0#address-cells =3D <1>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0#size-cells =3D <0>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0cap-sd-highspeed;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mmc-pwrseq =3D <&wifi_pwrseq=
>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0vmmc-supply =3D <&reg_vcc3v3=
_pcie>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0vqmmc-supply =3D <&vcc_3v3>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D "okay";
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ap6256: wifi@1 {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0compatible =3D "brcm,bcm43456-fmac", "brcm,bcm4329-
> > fmac";
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0reg =3D <1>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0/* TODO: out-of-band IRQ on GPIO21 */
>=20
> What's up with this TODO? Why's the gpio not here? Missing binding
> support, missing driver support?

Missing driver support in the pinctrl driver.

>=20
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
> > +};
> > +
> > +&mmc1 {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0cd-gpios =3D <&sysgpio 41 GP=
IO_ACTIVE_HIGH>;
> > +};
> > +
> > +&pcie0 {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D "okay";
> > +};
> > +
> > +&pcie1 {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D "okay";
> > +};
> > +
> > +&phy0 {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rx-internal-delay-ps =3D <15=
00>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0tx-internal-delay-ps =3D <15=
00>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0motorcomm,rx-clk-drv-microam=
p =3D <3970>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0motorcomm,rx-data-drv-microa=
mp =3D <2910>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0motorcomm,tx-clk-adj-enabled=
;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0motorcomm,tx-clk-10-inverted=
;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0motorcomm,tx-clk-100-inverte=
d;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0motorcomm,tx-clk-1000-invert=
ed;
> > +};
> > +
> > +&pwmdac {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D "okay";
> > +};
> > --=20
> > 2.50.0
> >=20


