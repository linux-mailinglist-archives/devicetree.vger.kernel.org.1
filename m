Return-Path: <devicetree+bounces-149587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA93A3FE14
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 19:02:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3204719C43A8
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 18:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 211B01EB18F;
	Fri, 21 Feb 2025 18:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="auJB/yEM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7EF1E9B23
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 18:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740160968; cv=none; b=u+tmOAILmntt3RhPEQs0izLFrUASLU1vC1zu0qq8THVs+0C1UQh0Kazbz8I2hzQUNmWZd2IeE/9f+NFj9NTeML2dCCJj62YnZjrKYorEhggBYmEZG/ONRzjxdJZoPUDG7D+7QroEcNqog8USlAQvATvyhbv8I1zhk9BCLSdxdWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740160968; c=relaxed/simple;
	bh=A/T3DktW5G8+ezfPY8r+lCkYzfMNyZ3yLbRJYboaU0Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kVgMDsK/cWOGHh/6OvnME1o0g2vdlPmTDF3mtn3g+xy6aSlQJudAABJqGAnkuv2gH5iheqdkUFSTbDs2wXSRgZ2L/IDgGdGiIvfecvO4upc8FSILDMiMjH0yvApDD73+2o3BL1bZm5MX4yqGyeuI0apmEHCZG+S4ekZJQUrvfsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=auJB/yEM; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-38f22fe889aso2071329f8f.3
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 10:02:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740160963; x=1740765763; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ky5RBBDFo7pwY6fTEoCqumUB417wE2fgV3OwJcGSh9w=;
        b=auJB/yEMdldbkNlBO/eCTbb2bUMTicR1EpMzZYQr2yi5TCgD/ghzA2rY1J4ZGHqxHT
         aDxozg4KkaaPwmvORezOvtSKRzzKyxMXhZRsbvkAoacH1COELXjMxLRENeG6HBnLcYs9
         V78sp129XW7tFRhQnmDVEge5Jz4ZFyCmOIvJ+xsqNyRvcwVHylJlFffQBKsfl0h//T0T
         qnHOv8Wm5HSirSu1QeGFN46rpTbxZHvzJ7o3ZhXQanzHoqHWWQKnBe39NLflRb7j975/
         YxvaDwPN5kKz4BW/AFKgrdlaavtICKhIRslr74Zo6+YZyn5z1gZJ3gKq7MSoH+xz0tze
         qK8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740160963; x=1740765763;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ky5RBBDFo7pwY6fTEoCqumUB417wE2fgV3OwJcGSh9w=;
        b=iFfBxCqNxVZ5APkO9B0A8VvAljP+jksVvBX4ZcNXiovIDBcoGA6BOKzAOxdEVDphqq
         M0TXzinqo76hkNYIlHtD36XUBUC9T4F/4Jepl/aKlhe2Sqq6hm+ohpC1E0/e6yKF/KQA
         VpIUpbUxTN13csTd80yzxW6HO3OSf/vp9w1BW7m0ixcTLnSsIYQNOe61ui3n0tS+1qA+
         iO5Dcq3qR0MvmQJVIcZZj7JVnSyaXoIBqu1PgP3ds476jEKW/uFsrDR5f761Ua5U+kQJ
         Es3qSMBiHbhpg/ugrUrkYr+2IrUCC3uyzavEcamtiOVUBff8TSuaKrpJoUVcXRmWM12i
         JEKg==
X-Gm-Message-State: AOJu0Yxx0iu2Oy1eAQVU7Ijl5QFDKfh9GAdkysVW+lXU0O3coEVXc13j
	M/37cI1uBMCZCT+4Jm84Dckxwe7qnjEgd08lX1Q7SOtcWN+DSlNKKrupA57ghho=
X-Gm-Gg: ASbGncsgAEf+QDkFJYUXGb6pcT4QdsBqNuLSgvYvwN+B9GVOjiTpkSwDdycuD0mezin
	9IanO7XxUNq35ap+IVGj46Q8xh1RWosIa3h89VZcM7tJ6nxcxPryjkDGFKijyAxbmiphO9S+LgA
	Dj35I4XJnRHQ52hBEXpz3vJkq1X1+6rIEpxuXjYRMClt8UZ9fPFfHs7Y2Zb+UruPaKbgH8izTLC
	myD0qKSMqT5c/gbzAMDVSTs2Z56WzT4VeI4GWQBsDZH9b9SJ4d2ebumuxKmm1KyDtOfjUHLCJ5Q
	/PU2Js552viT7WHyR8p0ML2bbLEmpmCl1hZvB29BUY7nkzRn/EV+0Dzoorq4j0UIN8VsmxtQDqS
	40Q==
X-Google-Smtp-Source: AGHT+IFgNKVxtAYFJ3mL0/vT0PfLzi2dGHGPi8cw65BEVBNksyDVfkcvC+CXso0kdLCw7Bwnk4rR4w==
X-Received: by 2002:a5d:648b:0:b0:38f:3e1c:211d with SMTP id ffacd0b85a97d-38f6e95bb57mr5545939f8f.14.1740160963035;
        Fri, 21 Feb 2025 10:02:43 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259fdb19sm24586850f8f.95.2025.02.21.10.02.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 10:02:42 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
Subject:
 Re: [PATCH 3/3] arm64: dts: allwinner: h616: add YuzukiHD Chameleon support
Date: Fri, 21 Feb 2025 19:02:41 +0100
Message-ID: <2768158.mvXUDI8C0e@jernej-laptop>
In-Reply-To: <20250221012038.13706-4-andre.przywara@arm.com>
References:
 <20250221012038.13706-1-andre.przywara@arm.com>
 <20250221012038.13706-4-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne petek, 21. februar 2025 ob 02:20:38 Srednjeevropski standardni =C4=8Das=
 je Andre Przywara napisal(a):
> The Chameleon board is an OpenHardware devboard made by YuzukiTsuru.
> The form factor resembles the Raspberry Pi Model A boards, though it
> differs significantly in its features:
>=20
>   - Allwinner H618 SoC (4 * Arm Cortex-A53 cores, 1MB L2 cache, 1.4 GHz)
>   - between 512MiB and 2GiB DDR3 DRAM
>   - up to 128 GiB eMMC flash
>   - AXP313a PMIC
>   - 100 Mbit/s Ethernet pins on a header
>   - XR829 WIFI+Bluetooth chip
>   - 4 * USB 2.0 USB-C ports
>   - microSD card slot
>   - 3.5mm A/V port
>=20
> Add the devicetree describing the board's peripherals and their
> connections.
>=20
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../sun50i-h618-yuzukihd-chameleon.dts        | 222 ++++++++++++++++++
>  2 files changed, 223 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h618-yuzukihd-ch=
ameleon.dts
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts=
/allwinner/Makefile
> index 00bed412ee31c..448698fed5f79 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -48,6 +48,7 @@ dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h618-longanpi-3h.d=
tb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h618-orangepi-zero2w.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h618-orangepi-zero3.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h618-transpeed-8k618-t.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h618-yuzukihd-chameleon.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h700-anbernic-rg35xx-2024.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h700-anbernic-rg35xx-h.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h700-anbernic-rg35xx-plus.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h618-yuzukihd-chameleon=
=2Edts b/arch/arm64/boot/dts/allwinner/sun50i-h618-yuzukihd-chameleon.dts
> new file mode 100644
> index 0000000000000..c60d42130cf79
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h618-yuzukihd-chameleon.dts
> @@ -0,0 +1,222 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright (C) 2024 Arm Ltd.
> + */
> +
> +/dts-v1/;
> +
> +#include "sun50i-h616.dtsi"
> +#include "sun50i-h616-cpu-opp.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +	model =3D "Yuzuki Chameleon";
> +	compatible =3D "yuzukihd,chameleon", "allwinner,sun50i-h618";
> +
> +	aliases {
> +		ethernet1 =3D &sdio_wifi;
> +		serial0 =3D &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path =3D "serial0:115200n8";
> +	};
> +
> +	reg_vcc5v: vcc5v {
> +		/* board wide 5V supply directly from the USB-C socket */
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vcc-5v";
> +		regulator-min-microvolt =3D <5000000>;
> +		regulator-max-microvolt =3D <5000000>;
> +		regulator-always-on;
> +	};
> +
> +	wifi_pwrseq: pwrseq {
> +		compatible =3D "mmc-pwrseq-simple";
> +		clocks =3D <&rtc CLK_OSC32K_FANOUT>;
> +		clock-names =3D "ext_clock";
> +		pinctrl-0 =3D <&x32clk_fanout_pin>;
> +		pinctrl-names =3D "default";
> +		reset-gpios =3D <&pio 6 11 GPIO_ACTIVE_LOW>; /* PG11 */
> +	};
> +};
> +
> +&codec {
> +	allwinner,audio-routing =3D "Line Out", "LINEOUT";
> +	status =3D "okay";
> +};
> +
> +&cpu0 {
> +	cpu-supply =3D <&reg_dcdc2>;
> +};
> +
> +&ehci0 {
> +	status =3D "okay";
> +};
> +
> +&ehci1 {
> +	status =3D "okay";
> +};
> +
> +&ehci2 {
> +	status =3D "okay";
> +};
> +
> +&ehci3 {
> +	status =3D "okay";
> +};
> +
> +&mmc0 {
> +	bus-width =3D <4>;
> +	cd-gpios =3D <&pio 5 6 GPIO_ACTIVE_LOW>;	/* PF6 */
> +	disable-wp;
> +	vmmc-supply =3D <&reg_dldo1>;
> +	status =3D "okay";
> +};
> +
> +&mmc1 {
> +	bus-width =3D <4>;
> +	mmc-pwrseq =3D <&wifi_pwrseq>;
> +	non-removable;
> +	vmmc-supply =3D <&reg_dldo1>;
> +	vqmmc-supply =3D <&reg_dldo1>;
> +	status =3D "okay";
> +
> +	sdio_wifi: wifi@1 {
> +		reg =3D <1>;
> +		interrupt-parent =3D <&pio>;
> +		interrupts =3D <6 12 IRQ_TYPE_LEVEL_LOW>;  /* PG12 */
> +		interrupt-names =3D "host-wake";
> +	};
> +};
> +
> +&mmc2 {
> +	bus-width =3D <8>;
> +	cap-mmc-hw-reset;
> +	mmc-ddr-3_3v;
> +	non-removable;
> +	vmmc-supply =3D <&reg_dldo1>;
> +	vqmmc-supply =3D <&reg_dldo1>;
> +	status =3D "okay";
> +};
> +
> +&ohci0 {
> +	status =3D "okay";
> +};
> +
> +&ohci1 {
> +	status =3D "okay";
> +};
> +
> +&ohci2 {
> +	status =3D "okay";
> +};
> +
> +&ohci3 {
> +	status =3D "okay";
> +};
> +
> +&pio {
> +	vcc-pc-supply =3D <&reg_dldo1>;
> +	vcc-pf-supply =3D <&reg_dldo1>;	/* via VCC_IO */
> +	vcc-pg-supply =3D <&reg_dldo1>;
> +	vcc-ph-supply =3D <&reg_dldo1>;	/* via VCC_IO */
> +	vcc-pi-supply =3D <&reg_dldo1>;
> +};
> +
> +&r_i2c {
> +	status =3D "okay";
> +
> +	axp313: pmic@36 {
> +		compatible =3D "x-powers,axp313a";
> +		reg =3D <0x36>;
> +		#interrupt-cells =3D <1>;
> +		interrupt-controller;
> +		interrupt-parent =3D <&pio>;
> +		interrupts =3D <2 2 IRQ_TYPE_LEVEL_LOW>;	/* PC2 */
> +
> +		vin1-supply =3D <&reg_vcc5v>;
> +		vin2-supply =3D <&reg_vcc5v>;
> +		vin3-supply =3D <&reg_vcc5v>;
> +
> +		regulators {
> +			/* Supplies VCC-PLL, so needs to be always on. */
> +			reg_aldo1: aldo1 {
> +				regulator-always-on;
> +				regulator-min-microvolt =3D <1800000>;
> +				regulator-max-microvolt =3D <1800000>;
> +				regulator-name =3D "vcc1v8";
> +			};
> +
> +			/* Supplies VCC-IO, so needs to be always on. */
> +			reg_dldo1: dldo1 {
> +				regulator-always-on;
> +				regulator-min-microvolt =3D <3300000>;
> +				regulator-max-microvolt =3D <3300000>;
> +				regulator-name =3D "vcc3v3";
> +			};
> +
> +			reg_dcdc1: dcdc1 {
> +				regulator-always-on;
> +				regulator-min-microvolt =3D <810000>;
> +				regulator-max-microvolt =3D <990000>;
> +				regulator-name =3D "vdd-gpu-sys";
> +			};
> +
> +			reg_dcdc2: dcdc2 {
> +				regulator-always-on;
> +				regulator-min-microvolt =3D <810000>;
> +				regulator-max-microvolt =3D <1100000>;
> +				regulator-name =3D "vdd-cpu";
> +			};
> +
> +			reg_dcdc3: dcdc3 {
> +				regulator-always-on;
> +				regulator-min-microvolt =3D <1500000>;
> +				regulator-max-microvolt =3D <1500000>;
> +				regulator-name =3D "vdd-dram";
> +			};
> +		};
> +	};
> +};
> +
> +&uart0 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart0_ph_pins>;
> +	status =3D "okay";
> +};
> +
> +/* Connected to the Bluetooth UART pins of the XR829 Wifi/BT chip. */
> +&uart1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart1_pins>, <&uart1_rts_cts_pins>;
> +	uart-has-rtscts;
> +	status =3D "okay";
> +};
> +
> +&usbotg {
> +	/*
> +	 * PHY0 pins are connected to a USB-C socket, but a role switch
> +	 * is not implemented: both CC pins are pulled to GND.
> +	 * The VBUS pins power the device, so a fixed peripheral mode
> +	 * is the best choice.
> +	 * The board can be powered via GPIOs, in this case port0 *can*
> +	 * act as a host (with a cable/adapter ignoring CC), as VBUS is
> +	 * then provided by the GPIOs. Any user of this setup would
> +	 * need to adjust the DT accordingly: dr_mode set to "host",
> +	 * enabling OHCI0 and EHCI0.
> +	 */
> +	dr_mode =3D "otg";

OTG role contradicts text above.

The rest looks good.

Best regards,
Jernej

> +	status =3D "okay";
> +};
> +
> +&usbphy {
> +	usb0_id_det-gpios =3D <&pio 6 18 GPIO_ACTIVE_HIGH>; /* PG18 */
> +	usb0_vbus-supply =3D <&reg_vcc5v>;
> +	usb1_vbus-supply =3D <&reg_vcc5v>;
> +	usb2_vbus-supply =3D <&reg_vcc5v>;
> +	usb3_vbus-supply =3D <&reg_vcc5v>;
> +	status =3D "okay";
> +};
>=20





