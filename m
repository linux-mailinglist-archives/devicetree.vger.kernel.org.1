Return-Path: <devicetree+bounces-257592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPTyNu/ub2m+UQAAu9opvQ
	(envelope-from <devicetree+bounces-257592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:09:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CBB4BFD3
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:09:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 376779C9D90
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9061738F921;
	Tue, 20 Jan 2026 19:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpbS4tXX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F3437E2F2;
	Tue, 20 Jan 2026 19:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768938547; cv=none; b=hQsbDUp2VxPyw42QEVKsf/j0uxx7uIWnbslOOPTO1S15fZW6f8daYK3WAP7y++l2mj8rv2HsBFPjUk35rPsn8FE5oClkHUVFB0c2NPyWxVKd69P8fmcO8MmbyM68lsLEcrwXUhh/XqkFvIPm1b73WuO/jVBDZNN1B4aTDeQK4s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768938547; c=relaxed/simple;
	bh=8lvSquqVv72ZwSkwyZYWgVziRkGCFWfIW8+Ntp972J8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=orNa3ChXr5285aAA99tI4uoDW3Rzxw7xNSHSmkjA3eFZM3SCmkqAt2CSLL6ib/sQjw9W0ANAeibx7pl46XI5MDw8OXLOemNPHM+myh6RWmyD3rUMXdAXZkWIsZ3T+ZevhiqhmR1YaiODEgIsfoOHIkHA0NKfybRGmejTGpy9nVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpbS4tXX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4091FC16AAE;
	Tue, 20 Jan 2026 19:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768938546;
	bh=8lvSquqVv72ZwSkwyZYWgVziRkGCFWfIW8+Ntp972J8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YpbS4tXXyUlKas7cPbwD3i2iZFIz3SZ12se3AIZL1hNK/NGB+vvHapfG9HiZwsHXW
	 Z4OUj7jUBmJXa31RkWElkIFhTNCiPtvaVuBA+UY7ui66nwH20I5NUDDe9+V87zVnsh
	 tfTgBzjNOwlq/4ntqF/KcTzCb4/8NSsWiRLLYTNcEf+cacXdlQ4E2LG3upM7cdRLpq
	 ZzGnSry1eLzH3yB6lgwBP3GHFKiRa0Dp7gXT42wZz20jBwM9L2l1rTSruhpAPm7nMR
	 7V9NojFsP4AY11ozxK6/zXlCQXgNe9uu46k++e0YYKn2RqXGLLSoDUWzMgARFgIlT8
	 YfS6fO5TcfQwg==
Date: Tue, 20 Jan 2026 19:49:02 +0000
From: Conor Dooley <conor@kernel.org>
To: tzeyee.ng@altera.com
Cc: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: socfpga: stratix10: Add emmc support
Message-ID: <20260120-renewal-iphone-631b72e757bb@spud>
References: <cover.1768916730.git.tzeyee.ng@altera.com>
 <bd9b9c8d7d19bc7e02140a40ac20c5ec9e6aa466.1768916730.git.tzeyee.ng@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="X712mnFRqDoUCW2B"
Content-Disposition: inline
In-Reply-To: <bd9b9c8d7d19bc7e02140a40ac20c5ec9e6aa466.1768916730.git.tzeyee.ng@altera.com>
X-Spamd-Result: default: False [-3.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[bounces-257592-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.51:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 49CBB4BFD3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--X712mnFRqDoUCW2B
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 20, 2026 at 05:54:46AM -0800, tzeyee.ng@altera.com wrote:
> From: Ng Tze Yee <tzeyee.ng@altera.com>
>=20
> The Stratix10 devkit supports a separate eMMC daughter card. The eMMC
> daughter card replaces the SDMMC slot that is on the default daughter card
> and thus requires a separate board dts file.
>=20
> Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
> ---
>  arch/arm64/boot/dts/altera/Makefile           |   1 +
>  .../altera/socfpga_stratix10_socdk_emmc.dts   | 155 ++++++++++++++++++
>  2 files changed, 156 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_em=
mc.dts
>=20
> diff --git a/arch/arm64/boot/dts/altera/Makefile b/arch/arm64/boot/dts/al=
tera/Makefile
> index 1bf0c472f6b4..540bb5ae746b 100644
> --- a/arch/arm64/boot/dts/altera/Makefile
> +++ b/arch/arm64/boot/dts/altera/Makefile
> @@ -1,4 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) +=3D socfpga_stratix10_socdk.dtb \
> +				socfpga_stratix10_socdk_emmc.dtb \
>  				socfpga_stratix10_socdk_nand.dtb \
>  				socfpga_stratix10_swvp.dtb
> diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts =
b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts
> new file mode 100644
> index 000000000000..01694920afaf
> --- /dev/null
> +++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts

90% of this new file appears to duplicate the base device, I think that
should be extracted to a common file.

> @@ -0,0 +1,155 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright Altera Corporation (C) 2026. All rights reserved.
> + */
> +
> +#include "socfpga_stratix10.dtsi"
> +
> +/ {
> +	model =3D "SoCFPGA Stratix 10 SoCDK eMMC daughter board";
> +	compatible =3D "altr,socfpga-stratix10-socdk-emmc", "altr,socfpga-strat=
ix10";
> +
> +	aliases {
> +		serial0 =3D &uart0;
> +		ethernet0 =3D &gmac0;
> +		ethernet1 =3D &gmac1;
> +		ethernet2 =3D &gmac2;
> +	};
> +
> +	chosen {
> +		stdout-path =3D "serial0:115200n8";
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +		led-hps0 {
> +			label =3D "hps_led0";
> +			gpios =3D <&portb 20 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		led-hps1 {
> +			label =3D "hps_led1";
> +			gpios =3D <&portb 19 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		led-hps2 {
> +			label =3D "hps_led2";
> +			gpios =3D <&portb 21 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	memory@80000000 {
> +		device_type =3D "memory";
> +		/* We expect the bootloader to fill in the reg */
> +		reg =3D <0 0x80000000 0 0>;
> +	};
> +
> +	ref_033v: regulator-0v33-ref {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "0.33V";
> +		regulator-min-microvolt =3D <330000>;
> +		regulator-max-microvolt =3D <330000>;
> +	};
> +
> +	soc@0 {
> +		eccmgr {

This eccmgr node already exists, you should access it by label.

> +			sdmmca-ecc@ff8c8c00 {
> +				compatible =3D "altr,socfpga-s10-sdmmc-ecc",
> +					     "altr,socfpga-sdmmc-ecc";
> +				reg =3D <0xff8c8c00 0x100>;
> +				altr,ecc-parent =3D <&mmc>;
> +				interrupts =3D <14 4>,
> +					     <15 4>;
> +			};
> +		};
> +	};
> +};
> +
> +&gpio1 {
> +	status =3D "okay";
> +};
> +
> +&gmac2 {
> +	status =3D "okay";
> +	/* PHY delays is configured via skew properties */
> +	phy-mode =3D "rgmii";
> +	phy-handle =3D <&phy0>;
> +
> +	max-frame-size =3D <9000>;
> +
> +	mdio0 {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +		compatible =3D "snps,dwmac-mdio";
> +		phy0: ethernet-phy@4 {
> +			reg =3D <4>;
> +
> +			txd0-skew-ps =3D <0>; /* -420ps */
> +			txd1-skew-ps =3D <0>; /* -420ps */
> +			txd2-skew-ps =3D <0>; /* -420ps */
> +			txd3-skew-ps =3D <0>; /* -420ps */
> +			rxd0-skew-ps =3D <420>; /* 0ps */
> +			rxd1-skew-ps =3D <420>; /* 0ps */
> +			rxd2-skew-ps =3D <420>; /* 0ps */
> +			rxd3-skew-ps =3D <420>; /* 0ps */
> +			txen-skew-ps =3D <0>; /* -420ps */
> +			txc-skew-ps =3D <900>; /* 0ps */
> +			rxdv-skew-ps =3D <420>; /* 0ps */
> +			rxc-skew-ps =3D <1680>; /* 780ps */
> +		};
> +	};
> +};
> +
> +&mmc {
> +	status =3D "okay";
> +	cap-mmc-highspeed;
> +	broken-cd;
> +	bus-width =3D <4>;
> +	clk-phase-sd-hs =3D <0>, <135>;
> +};
> +
> +&osc1 {
> +	clock-frequency =3D <25000000>;
> +};
> +
> +&uart0 {
> +	status =3D "okay";
> +};
> +
> +&usb0 {
> +	status =3D "okay";
> +	disable-over-current;
> +};
> +
> +&watchdog0 {
> +	status =3D "okay";
> +};
> +
> +&i2c2 {
> +	status =3D "okay";
> +	clock-frequency =3D <100000>;
> +	i2c-sda-falling-time-ns =3D <890>;  /* hcnt */
> +	i2c-scl-falling-time-ns =3D <890>;  /* lcnt */
> +
> +	adc@14 {
> +		compatible =3D "lltc,ltc2497";
> +		reg =3D <0x14>;
> +		vref-supply =3D <&ref_033v>;
> +	};
> +
> +	temp@4c {
> +		compatible =3D "maxim,max1619";
> +		reg =3D <0x4c>;
> +	};
> +
> +	eeprom@51 {
> +		compatible =3D "atmel,24c32";
> +		reg =3D <0x51>;
> +		pagesize =3D <32>;
> +	};
> +
> +	rtc@68 {
> +		compatible =3D "dallas,ds1339";
> +		reg =3D <0x68>;
> +	};
> +};
> --=20
> 2.25.1
>=20

--X712mnFRqDoUCW2B
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaW/cLgAKCRB4tDGHoIJi
0pyuAPwKxvu5Gp4j23NW2Gp8MHSEtPJZhYSZPXsxIgeyP+C5UQEA5lv8Oh6fZABk
cryb8DkZSicA6E5I4BErvPeHeipbNQo=
=+RD8
-----END PGP SIGNATURE-----

--X712mnFRqDoUCW2B--

