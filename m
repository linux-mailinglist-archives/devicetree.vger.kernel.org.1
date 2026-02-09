Return-Path: <devicetree+bounces-263830-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wF36AHeBiWkg+QQAu9opvQ
	(envelope-from <devicetree+bounces-263830-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:40:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2132A10C2D9
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 07:40:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B6E4430015A8
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 06:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31ECA2FDC52;
	Mon,  9 Feb 2026 06:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="UOpNHFtQ"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C003F224249;
	Mon,  9 Feb 2026 06:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770619249; cv=none; b=uunNIrzS5ckukcs0RJIiT0+V6bV9Hxnmnv+i53JuNPLnkJP5J20buOMJC/vm9eqVDD2Qz9PNvHQQ0M5APE4mAtCIfBLYgip1iHwZpLC6noHVex0oI7ZL8Kx6vbJ3B0VHsJGYfhcPAkA4pVi++bekHhoYg/VAFxruFPc/LlqCQj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770619249; c=relaxed/simple;
	bh=snBhoN8KwDN/1PW8xwd7RzV3iPEY6pWdvTdGWaWBEGQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=tJOtbrztwQy9kx9j98FtT/+qGQpYfxkjUbc6N2i+srdx+iqpAr2na4lQd0Q3hYdNU1MaOXE743nMbtfxDV+Et5fTeISl8nWoVwwNma/fNWrQAL0MtqUEXv9Bq4DiFoMCYv37XuaTPa4SVitgyi1lsofFoEliccP7DUHff/DzGh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=UOpNHFtQ; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1770619246;
	bh=rJj1F7xc7iojKAsN+tKnk0FAj0HRh9EWd4iIbq9DEYU=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=UOpNHFtQSNLbU+3x2Ankanyr6ReGVJEeQM2+pLavsNNS2B9dxyW4GVan5AZtb33tr
	 KjZnHvr9bPOGeQ9xMkIWOkBX3RbC6NPw7fQkRXCarD21Ulu6L6J2lkdrugOcT40N9g
	 5FBALNCnNrMJC56C+jJXlxM6w7vNt7kgLbwaCCUpUCf8dbD8TeVbf5uWKbqEXVNhEt
	 6y6wzt9b+aFvyUKhMsAfW3xXY1uWR4duVBwgknIA2lJkDAiJQ4w6yAy8Qe8lP1Jvpm
	 4gyN/psHfFtaeMLE1h0PG+YGPMfhcL/L6f9p2Rp4+ICdBIR72DiG/osOgCSqw8yCuX
	 tAZbeugNWFobA==
Received: from [192.168.68.117] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id F02CF602DE;
	Mon,  9 Feb 2026 14:40:45 +0800 (AWST)
Message-ID: <d7c03808b09b4cb3994a9de2eff156ec589ab581.camel@codeconstruct.com.au>
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: add Meta SanMiguel BMC
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Potin Lai <potin.lai.pt@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>, Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Cosmo Chou
	 <cosmo.chou@quantatw.com>, Mike Hsieh <Mike_Hsieh@quantatw.com>, Potin Lai
	 <potin.lai@quantatw.com>, Roger Kan <Roger.Kan@quantatw.com>
Date: Mon, 09 Feb 2026 17:10:45 +1030
In-Reply-To: <20260202-sanmiguel_init_dts-v1-2-c0023ae41899@gmail.com>
References: <20260202-sanmiguel_init_dts-v1-0-c0023ae41899@gmail.com>
	 <20260202-sanmiguel_init_dts-v1-2-c0023ae41899@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263830-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au,stwcx.xyz];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.4:email,0.0.0.1:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	NEURAL_HAM(-0.00)[-0.987];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:mid,codeconstruct.com.au:dkim,4.196.180.0:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.20:email,0.0.0.0:email,0.0.0.3:email,0.0.0.10:email,0.0.0.2:email]
X-Rspamd-Queue-Id: 2132A10C2D9
X-Rspamd-Action: no action

Hi Potin,

Regarding the patch subject, can you please capitalise the start of the
description after '... aspeed:'?

   ARM: dts: aspeed: Add Meta SanMiguel BMC

On Mon, 2026-02-02 at 14:03 +0800, Potin Lai wrote:
> Add linux device tree entry for Meta (Facebook) SanMiguel compute-tray
> BMC using AT2620 SoC.
>=20
> Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
> ---
> =C2=A0arch/arm/boot/dts/aspeed/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=
=A0=C2=A0=C2=A0 1 +
> =C2=A0.../dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts=C2=A0=C2=A0 | 1163=
 ++++++++++++++++++++
> =C2=A02 files changed, 1164 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspeed=
/Makefile
> index 9adf9278dc94..ab2effc29f6f 100644
> --- a/arch/arm/boot/dts/aspeed/Makefile
> +++ b/arch/arm/boot/dts/aspeed/Makefile
> @@ -30,6 +30,7 @@ dtb-$(CONFIG_ARCH_ASPEED) +=3D \
> =C2=A0	aspeed-bmc-facebook-harma.dtb \
> =C2=A0	aspeed-bmc-facebook-minerva.dtb \
> =C2=A0	aspeed-bmc-facebook-minipack.dtb \
> +	aspeed-bmc-facebook-sanmiguel.dtb \
> =C2=A0	aspeed-bmc-facebook-santabarbara.dtb \
> =C2=A0	aspeed-bmc-facebook-tiogapass.dtb \
> =C2=A0	aspeed-bmc-facebook-wedge40.dtb \
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts b=
/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts
> new file mode 100644
> index 000000000000..bcf857835b23
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-sanmiguel.dts
> @@ -0,0 +1,1163 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +// Copyright (c) 2025 Facebook Inc.
> +
> +/dts-v1/;
> +#include "aspeed-g6.dtsi"
> +#include <dt-bindings/gpio/aspeed-gpio.h>
> +#include <dt-bindings/usb/pd.h>
> +#include <dt-bindings/leds/leds-pca955x.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/i2c/i2c.h>
> +#include <dt-bindings/leds/common.h>
> +
> +/ {
> +	model =3D "AST2600 VR NVL144 BMC";
> +	compatible =3D "aspeed,ast2600";

This is missing the platform compatible string defined in the previous
patch.

> +
> +	aliases {
> +		serial0 =3D &uart1;
> +		serial1 =3D &uart2;
> +		serial2 =3D &uart3;
> +		serial3 =3D &uart4;
> +		serial4 =3D &uart5;
> +		i2c16	=3D &imux16;
> +		i2c17	=3D &imux17;
> +		i2c18	=3D &imux18;
> +		i2c19	=3D &imux19;
> +		i2c20=C2=A0=C2=A0 =3D &i2c20;
> +		i2c21=C2=A0=C2=A0 =3D &i2c21;
> +	};
> +
> +	chosen {
> +		stdout-path =3D "serial4:57600n8";
> +	};
> +
> +	memory@80000000 {
> +		device_type =3D "memory";
> +		reg =3D <0x80000000 0x80000000>;
> +	};
> +
> +	iio-hwmon {
> +		compatible =3D "iio-hwmon";
> +		io-channels =3D <&adc0 0>, <&adc0 1>, <&adc0 2>, <&adc0 3>,
> +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <&adc0 4>, <&adc0 5>, <&adc0 6>;
> +	};
> +
> +	spi2_gpio: spi {
> +		compatible =3D "spi-gpio";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		sck-gpios =3D <&gpio0 ASPEED_GPIO(X, 3) GPIO_ACTIVE_HIGH>;
> +		mosi-gpios =3D <&gpio0 ASPEED_GPIO(X, 4) GPIO_ACTIVE_HIGH>;
> +		miso-gpios =3D <&gpio0 ASPEED_GPIO(X, 5) GPIO_ACTIVE_HIGH>;
> +		cs-gpios =3D <&gpio0 ASPEED_GPIO(X, 2) GPIO_ACTIVE_LOW>;
> +		num-chipselects =3D <1>;
> +
> +		tpm@0 {
> +			compatible =3D "infineon,slb9670", "tcg,tpm_tis-spi";
> +			spi-max-frequency =3D <33000000>;
> +			reg =3D <0>;
> +		};
> +	};
> +
> +	standby_power_regulator: standby-power-regulator {
> +		status =3D "okay";
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "standby_power";
> +		gpio =3D <&gpio0 ASPEED_GPIO(M, 3) GPIO_ACTIVE_HIGH>;
> +		regulator-min-microvolt =3D <1800000>;
> +		regulator-max-microvolt =3D <1800000>;
> +		enable-active-high;
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	scm-leds {
> +		compatible =3D "gpio-leds";
> +		led-0 {
> +			label =3D "bmc_heartbeat_amber";
> +			gpios =3D <&gpio0 ASPEED_GPIO(P, 7) GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "heartbeat";
> +		};
> +	};
> +
> +	fio-leds {
> +		compatible =3D "gpio-leds";
> +		led-0 {
> +			label =3D "power_blue";
> +			gpios =3D <&fio_ioexp 4 GPIO_ACTIVE_HIGH>;
> +		};
> +		led-1 {
> +			label =3D "power_amber";
> +			gpios =3D <&fio_ioexp 5 GPIO_ACTIVE_LOW>;
> +		};
> +		led-2 {
> +			label =3D "id_blue";
> +			gpios =3D <&fio_ioexp 6 GPIO_ACTIVE_HIGH>;
> +		};
> +		led-3 {
> +			label =3D "id_amber";
> +			gpios =3D <&fio_ioexp 7 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +};
> +
> +&fmc {
> +	status =3D "okay";
> +	flash@0 {
> +		status =3D "okay";
> +		m25p,fast-read;
> +		label =3D "bmc";
> +		spi-max-frequency =3D <50000000>;
> +#include "openbmc-flash-layout-128.dtsi"
> +	};
> +	flash@1 {
> +		status =3D "okay";
> +		m25p,fast-read;
> +		label =3D "alt-bmc";

Perhaps include the alt layout for 128M as well (which I recently
applied).

> +		spi-max-frequency =3D <50000000>;
> +	};
> +};
> +
> +&uart1 {
> +	status =3D "okay";
> +};
> +
> +&uart3 {
> +	status =3D "okay";
> +};
> +
> +&uart5 {
> +	status =3D "okay";
> +};
> +
> +&uart_routing {
> +	status =3D "okay";
> +};
> +
> +&mdio0 {

The DTS coding style allows label references to be ordered
alphabetically, which is my preference. Can you please fix this
throughout?

> +	status =3D "okay";
> +	ethphy0: ethernet-phy@0 {
> +		compatible =3D "ethernet-phy-ieee802.3-c22";
> +		reg =3D <0>;
> +	};
> +};
> +
> +&mac0 {
> +	status =3D "okay";
> +	pinctrl-names =3D "default";
> +	phy-mode =3D "rgmii-rxid";
> +	max-speed =3D <1000>;
> +	phy-handle =3D <&ethphy0>;
> +	pinctrl-0 =3D <&pinctrl_rgmii1_default>;
> +};
> +
> +&ehci1 {
> +	status =3D "okay";
> +	hub@1 {
> +		reg =3D <1>;
> +		hub@2 {
> +			reg =3D <2>;
> +			hub@1 {
> +				reg =3D <1>;
> +				device@1 {
> +					reg =3D <1>;
> +					cp2112a: interface@1 {
> +						reg =3D <1 1>;
> +
> +						gpio-controller;
> +						interrupt-controller;
> +						#gpio-cells =3D <2>;
> +						#interrupt-cells =3D <2>;
> +
> +						i2c20: i2c {
> +							#address-cells =3D <1>;
> +							#size-cells =3D <0>;
> +						};
> +					};
> +				};
> +				hub@3 {
> +					reg =3D <3>;
> +					cp2112c: device@2 {
> +						reg =3D <2>;
> +						gpio-controller;
> +						#gpio-cells =3D <2>;
> +						interrupt-controller;
> +						#interrupt-cells =3D <2>;
> +
> +						gpio-line-names =3D
> +							"IOB0_MCP_P0_2-B",
> +							"IOB0_MCU_RST_L-O",
> +							"IOB0_MCU_RECOVERY_L-O",
> +							"IOB0_GLOBAL_WP-O",
> +							"IOB0_GLOBAL_ADDR_L_R-O",
> +							"IOB0_GLOBAL_ADDR_U_D-O",
> +							"IOB0_PWR_EN-O",
> +							"IOB0_MCU_READY_STATUS-I";
> +					};
> +				};
> +				hub@4 {
> +					reg =3D <4>;
> +					cp2112d: device@2 {
> +						reg =3D <2>;
> +						gpio-controller;
> +						#gpio-cells =3D <2>;
> +						interrupt-controller;
> +						#interrupt-cells =3D <2>;
> +
> +						gpio-line-names =3D
> +							"IOB1_MCP_P0_2-B",
> +							"IOB1_MCU_RST_L-O",
> +							"IOB1_MCU_RECOVERY_L-O",
> +							"IOB1_GLOBAL_WP-O",
> +							"IOB1_GLOBAL_ADDR_L_R-O",
> +							"IOB1_GLOBAL_ADDR_U_D-O",
> +							"IOB1_PWR_EN-O",
> +							"IOB1_MCU_READY_STATUS-I";
> +					};
> +				};
> +			};
> +			hub@2 {
> +				reg =3D <2>;
> +				device@1 {
> +					reg =3D <1>;
> +					cp2112b: interface@1 {
> +						reg =3D <1 1>;
> +
> +						gpio-controller;
> +						interrupt-controller;
> +						#gpio-cells =3D <2>;
> +						#interrupt-cells =3D <2>;
> +
> +						i2c21: i2c {
> +							#address-cells =3D <1>;
> +							#size-cells =3D <0>;
> +						};
> +					};
> +				};
> +				hub@3 {
> +					reg =3D <3>;
> +					cp2112e: device@2 {
> +						reg =3D <2>;
> +						gpio-controller;
> +						#gpio-cells =3D <2>;
> +						interrupt-controller;
> +						#interrupt-cells =3D <2>;
> +
> +						gpio-line-names =3D
> +							"IOB2_MCP_P0_2-B",
> +							"IOB2_MCU_RST_L-O",
> +							"IOB2_MCU_RECOVERY_L-O",
> +							"IOB2_GLOBAL_WP-O",
> +							"IOB2_GLOBAL_ADDR_L_R-O",
> +							"IOB2_GLOBAL_ADDR_U_D-O",
> +							"IOB2_PWR_EN-O",
> +							"IOB2_MCU_READY_STATUS-I";
> +					};
> +				};
> +				hub@4 {
> +					reg =3D <4>;
> +					cp2112f: device@2 {
> +						reg =3D <2>;
> +						gpio-controller;
> +						#gpio-cells =3D <2>;
> +						interrupt-controller;
> +						#interrupt-cells =3D <2>;
> +
> +						gpio-line-names =3D
> +							"IOB3_MCP_P0_2-B",
> +							"IOB3_MCU_RST_L-O",
> +							"IOB3_MCU_RECOVERY_L-O",
> +							"IOB3_GLOBAL_WP-O",
> +							"IOB3_GLOBAL_ADDR_L_R-O",
> +							"IOB3_GLOBAL_ADDR_U_D-O",
> +							"IOB3_PWR_EN-O",
> +							"IOB3_MCU_READY_STATUS-I";
> +					};
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&adc0 {
> +	aspeed,int-vref-microvolt =3D <2500000>;
> +	status =3D "okay";
> +
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_adc0_default &pinctrl_adc1_default
> +		&pinctrl_adc2_default &pinctrl_adc3_default
> +		&pinctrl_adc4_default &pinctrl_adc5_default
> +		&pinctrl_adc6_default>;
> +};
> +
> +&wdt1 {
> +	status =3D "okay";
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_wdtrst1_default>;
> +	aspeed,reset-type =3D "soc";
> +	aspeed,external-signal;
> +	aspeed,ext-push-pull;
> +	aspeed,ext-active-high;
> +	aspeed,ext-pulse-duration =3D <256>;
> +};
> +
> +&i2c0 {
> +	status =3D "okay";
> +	aspeed,enable-byte;
>=20

... Have you run `make dtbs_check`? A quick grep suggests this isn't a
valid property.

> +
> +	ssif-bmc@10 {
> +		compatible =3D "ssif-bmc";
> +		reg =3D <0x10>;
> +		alert-gpios =3D <&gpio1 ASPEED_GPIO(D, 7) GPIO_ACTIVE_LOW>;
> +		timeout-ms =3D <5000>;
> +	};
> +};
> +
> +&i2c1 {
> +	status =3D "okay";
> +};
> +
> +&i2c2 {
> +	status =3D "okay";
> +
> +	hpm0_ioexp_20: gpio@20 {
> +		compatible =3D "nxp,pca9555";

Is this a true nxp,pca9555, or a CPLD-based reimplementation? Same
query for other instances...

Andrew

