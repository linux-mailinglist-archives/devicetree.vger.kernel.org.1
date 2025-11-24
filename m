Return-Path: <devicetree+bounces-241610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 172C0C801A6
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:09:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E86034E4CF0
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9409C2FE596;
	Mon, 24 Nov 2025 11:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wi5I/apX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5936A2FBE0F;
	Mon, 24 Nov 2025 11:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763982460; cv=none; b=Ykx1Qtou9L3HKrl3UyBU0kxtE9fHpW3YE+WxpGW3dxx80OtwcmrbGAPH7ADchagCaZYqsNhORpHJMayc/Ij+erYNNuLK4Gvhq3OBDD7EvXh22d3/AU/2UwtCYhYLpoM66nSgScfgk3vz2nvrK7OO1BJiOm69Asm1hJJoUpn95c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763982460; c=relaxed/simple;
	bh=sbCml/7nmSaH6gPaF7Ndj2Z9wRXVc41vQ2zcx6IMeo0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ub4f2dNED5SEDI7NPturYcY8mzKd1d87YY/hCcQ109KRdX/b2Rb0w71lU0k2Mc5k7mnudJhj1W1Vi/R22J/FIQGxBtNF0/AlbyozioKdvXP8+oXhr1RGL3OZ5Psnx+HuheT1K5Rjk7dcqIHSKnAaVi3I47iroZfBmVUXICyvPwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wi5I/apX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 783F1C116D0;
	Mon, 24 Nov 2025 11:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763982460;
	bh=sbCml/7nmSaH6gPaF7Ndj2Z9wRXVc41vQ2zcx6IMeo0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wi5I/apXii6KdXWyWS4fZPIO+lGmfTJPUADNIqyL/Exe7vmHtZ6eRgdzx+8T/lW2g
	 +TGL+FOrsDvvrYHCPtd86tTkQpFZbETBaNo1aatenV2kg14ZEvJrsXEFMRmmt3XIJT
	 YMhPLCHOkpF2V4TldSrHDPgFXYF9MJVHBWLtMmJwGnj7jHbXYc6RSCYXZZSpt/n7My
	 LlI/EWqSOqRbrO44cmC6gXNjwxxDz4nAR6zeg5eCJ8v9YxMx7ilThBogtDdwj9wu6g
	 jggAGDxutbpoLE343DLYP5TejsIx+4xMuCP71eP5FLkCNMXn9dw25nSGmTChbzr5l5
	 +f4gFdPP0Ubig==
Date: Mon, 24 Nov 2025 11:07:35 +0000
From: Conor Dooley <conor@kernel.org>
To: E Shattow <e@freeshell.de>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, Icenowy Zheng <uwu@icenowy.me>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 2/2] riscv: dts: starfive: add Orange Pi RV
Message-ID: <20251124-blaming-duplicity-fb1311864b3f@spud>
References: <20251123225059.49665-1-e@freeshell.de>
 <20251123225059.49665-3-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AcVI3kJ2wz21qqy0"
Content-Disposition: inline
In-Reply-To: <20251123225059.49665-3-e@freeshell.de>


--AcVI3kJ2wz21qqy0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 23, 2025 at 02:50:45PM -0800, E Shattow wrote:
> From: Icenowy Zheng <uwu@icenowy.me>
>=20
> Orange Pi RV is a SBC based on the StarFive VisionFive 2 board.
>=20
> Orange Pi RV features:
>=20
> - StarFive JH7110 SoC
> - GbE port connected to JH7110 GMAC0 via YT8531 PHY
> - 4x USB ports via VL805 PCIe USB controller connected to JH7110 pcie0
> - M.2 M-key slot connected to JH7110 pcie1
> - HDMI video output
> - 3.5mm audio output
> - Ampak AP6256 SDIO Wi-Fi/Bluetooth module on mmc0
> - microSD slot on mmc1
> - SPI NOR flash memory
> - 24c02 EEPROM (read only by default)
>=20
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: E Shattow <e@freeshell.de>
> ---
>  arch/riscv/boot/dts/starfive/Makefile         |  1 +
>  .../boot/dts/starfive/jh7110-orangepi-rv.dts  | 76 +++++++++++++++++++
>  2 files changed, 77 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/starfive/jh7110-orangepi-rv.dts
>=20
> diff --git a/arch/riscv/boot/dts/starfive/Makefile b/arch/riscv/boot/dts/=
starfive/Makefile
> index 62b659f89ba7..d34c8c79bc10 100644
> --- a/arch/riscv/boot/dts/starfive/Makefile
> +++ b/arch/riscv/boot/dts/starfive/Makefile
> @@ -12,6 +12,7 @@ dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-deepcomputing-f=
ml13v01.dtb
>  dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-milkv-mars.dtb
>  dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-milkv-marscm-emmc.dtb
>  dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-milkv-marscm-lite.dtb
> +dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-orangepi-rv.dtb
>  dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-pine64-star64.dtb
>  dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-starfive-visionfive-2-v1.2a.dtb
>  dtb-$(CONFIG_ARCH_STARFIVE) +=3D jh7110-starfive-visionfive-2-v1.3b.dtb
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-orangepi-rv.dts b/arch/r=
iscv/boot/dts/starfive/jh7110-orangepi-rv.dts
> new file mode 100644
> index 000000000000..16ec2767134e
> --- /dev/null
> +++ b/arch/riscv/boot/dts/starfive/jh7110-orangepi-rv.dts
> @@ -0,0 +1,76 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
> +/*
> + * Copyright (C) 2025 Icenowy Zheng <uwu@icenowy.me>
> + */
> +
> +/dts-v1/;
> +#include "jh7110-common.dtsi"
> +
> +/ {
> +	model =3D "Xunlong Orange Pi RV";
> +	compatible =3D "xunlong,orangepi-rv", "starfive,jh7110";
> +
> +	/* This regulator is always on by hardware */
> +	reg_vcc3v3_pcie: regulator-vcc3v3-pcie {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vcc3v3-pcie";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		regulator-always-on;
> +	};
> +
> +	wifi_pwrseq: wifi-pwrseq {
> +		compatible =3D "mmc-pwrseq-simple";
> +		reset-gpios =3D <&sysgpio 62 GPIO_ACTIVE_LOW>;
> +	};
> +};
> +
> +&gmac0 {
> +	assigned-clocks =3D <&aoncrg JH7110_AONCLK_GMAC0_TX>;
> +	assigned-clock-parents =3D <&aoncrg JH7110_AONCLK_GMAC0_RMII_RTX>;
> +	starfive,tx-use-rgmii-clk;
> +	status =3D "okay";
> +};
> +
> +&mmc0 {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;
> +	cap-sd-highspeed;
> +	mmc-pwrseq =3D <&wifi_pwrseq>;
> +	vmmc-supply =3D <&reg_vcc3v3_pcie>;
> +	vqmmc-supply =3D <&vcc_3v3>;
> +	status =3D "okay";
> +
> +	ap6256: wifi@1 {
> +		compatible =3D "brcm,bcm43456-fmac", "brcm,bcm4329-fmac";
> +		reg =3D <1>;
> +		/* TODO: out-of-band IRQ on GPIO21 */

What's up with this TODO? Why's the gpio not here? Missing binding
support, missing driver support?

> +	};
> +};
> +
> +&mmc1 {
> +	cd-gpios =3D <&sysgpio 41 GPIO_ACTIVE_HIGH>;
> +};
> +
> +&pcie0 {
> +	status =3D "okay";
> +};
> +
> +&pcie1 {
> +	status =3D "okay";
> +};
> +
> +&phy0 {
> +	rx-internal-delay-ps =3D <1500>;
> +	tx-internal-delay-ps =3D <1500>;
> +	motorcomm,rx-clk-drv-microamp =3D <3970>;
> +	motorcomm,rx-data-drv-microamp =3D <2910>;
> +	motorcomm,tx-clk-adj-enabled;
> +	motorcomm,tx-clk-10-inverted;
> +	motorcomm,tx-clk-100-inverted;
> +	motorcomm,tx-clk-1000-inverted;
> +};
> +
> +&pwmdac {
> +	status =3D "okay";
> +};
> --=20
> 2.50.0
>=20

--AcVI3kJ2wz21qqy0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaSQ8dwAKCRB4tDGHoIJi
0gKUAQCHaNEzOZ4qPXve3F2aeeKYpr5+2ZMIrhOuqdqsunZydQD9HJ0x2Rvd/w8u
spF+ZiVUHgtIjbLiGLjxeUxS6sSKFAE=
=I8Fj
-----END PGP SIGNATURE-----

--AcVI3kJ2wz21qqy0--

