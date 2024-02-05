Return-Path: <devicetree+bounces-38796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC45C84A1FE
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 19:19:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 743B528347F
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 18:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7C7047F67;
	Mon,  5 Feb 2024 18:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NtBj14sy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC996482C7
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 18:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707157171; cv=none; b=FfC43Oax07qk8smPhps6coUeYnbhyv7doWdQt5c6CI3oCiZDfIjwIe+0wawT+PI2q7oen1IvkCw6aSPH5HSLiwl3NbzhtBSbn1c8WI2ZglXe60Aa1aUKi74kakMXBVzDxfn7OgkQ3VFK/ZXMnQEsUzDFvcicGHZ4Yc4p1cLVVQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707157171; c=relaxed/simple;
	bh=+P+qPlYuTeLCtW+mmcby2FaMme9ZUNZW7IRET4gjDAo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ebtqe3xKXg9a4wuuLrG0ZqHb+Cr3OjxaYurO2P1k3iUG+v1fNS01qvw7V/bdu8TXt6RxBuDDA4TOZeZVniXif4B8yVzkUghZMPtakEgcvPHAgnGXWaaLlMlCm9J1d2Y/dPBpg7e/eXTfzM5RBYr8QgBQeq0lye9e2PHQdGS9Ky0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NtBj14sy; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-40fe07fd104so681875e9.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 10:19:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707157168; x=1707761968; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tl2UzEjkzo1QPJOGDvjG5TFdzH6mpQsNz0R5bRctIRI=;
        b=NtBj14syMzdOi44Cnbvfpsi4b9f/MDIlpGKpsiiD7PEMe+lKF4LuDTNu4pVZL4XyAV
         yIOJ6IJmWSfTE2/GIZMGJPfOFMF/hkMUAFFLqpLgjMQfVu9rNCqwSMPdWuOTkdJr0nyq
         Nr7UYoPBcMFUVEKTIe7VyuIhGQFVqv9KU4EIPikV2Qcaw+tzumS4iGZ4NxEy6QLNcy26
         jGST7umChdNGzxKYVK0VBJ42m/Ymz44RzSOarxUxv76oka19ud5GM8AFWHkuevh+ncwn
         oIaXtSMPJcZWNsw2NcJCo/HUWatGi6+VyX7Z9qyx6GQqBpu/cFTrFPuUezZnaT+20Wp1
         SVoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707157168; x=1707761968;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tl2UzEjkzo1QPJOGDvjG5TFdzH6mpQsNz0R5bRctIRI=;
        b=VrbIEhJIMJtyPrw3Njkk95QsBWxV8/VG36YoNqk+fyFLiQaEsNYZYOaU5z8G/Tnz41
         89N+RiQV3IZTNgUfbwwfb/ADKbTbgzp68aZ/8uK/1m965LZi0xtn+Ti6xb09bnVHi6T9
         KcBYCXtVttzBrcza04q1Eqx799yz0g17eN68x5pbqu75GkeN0hDI4Jr1p+D2SuUo1Pzt
         7rHjYwGitZkGMYwxLgV2LywC4pQ5wGlDYj8OBTtzzFj0A5jfq/JvAgN5iqii0S9o6P2n
         53FCKFsQcAOz02rWaLjIX+DGzc0RhlvbJ27j/S4iweMLo4cI3srZea+6L1lm3DIAh6Ui
         GcRQ==
X-Gm-Message-State: AOJu0YzgiXAHfWdDvtOiBSnRcw/fUAo0qboKsMi/gh5jkmuE8RTUZ2L7
	IEmb+v6omvvoCYZ+5J/4aU/9a5+hinpvSJlyKG1H9iMEc3brwJxS
X-Google-Smtp-Source: AGHT+IFCvu6Zud4FBiv/6Bz9MbuE7b7OKn09apu5NqSBui15GolYDQzrvFb4IIwGfmS/JTJ9TSjgsg==
X-Received: by 2002:a05:600c:6b01:b0:40e:85fe:af82 with SMTP id jn1-20020a05600c6b0100b0040e85feaf82mr463300wmb.24.1707157168023;
        Mon, 05 Feb 2024 10:19:28 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXX4+PeySSQ2Ij6oxfS9MbJmrj4dSGwblsHwGh/qQuPpXvpsv69j2429k4V69bqDoJH7xsz5VF66j5MOXqzrw4cV6f0L44HB4YIJW2M4ktSTlO/fWe761AVd84ioDhm1MdDCeBdxFcjRCvvPWESf1hNqaP+EnjYBDPa4h+xmeWiAOA6Mcjq4yHIpIzWsCipoNxGn5M3mbHxy8dn6N+YJJWdkwCVYjANZAu4yg2/Dtlv/yLh3msEOJ8lM720tvWE/ru0sNwqtTPABuWi6haocWmcHOUcejjhRwJG+8FEKdGmwoPjXP3xMvSEu5lU4Wx0hIue35BL9tO0nbk=
Received: from jernej-laptop.localnet (82-149-13-182.dynamic.telemach.net. [82.149.13.182])
        by smtp.gmail.com with ESMTPSA id o13-20020a05600c4fcd00b0040fccf7e8easm9123188wmq.36.2024.02.05.10.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 10:19:27 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andre Przywara <andre.przywara@arm.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <uwu@icenowy.me>
Subject:
 Re: [PATCH v2 2/2] arm64: dts: allwinner: h618: add BananaPi M4 Berry board
Date: Mon, 05 Feb 2024 19:19:26 +0100
Message-ID: <22174359.EfDdHjke4D@jernej-laptop>
In-Reply-To: <20240204101054.152012-3-andre.przywara@arm.com>
References:
 <20240204101054.152012-1-andre.przywara@arm.com>
 <20240204101054.152012-3-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Dne nedelja, 04. februar 2024 ob 11:10:54 CET je Andre Przywara napisal(a):
> The BananaPi M4 Berry is a development board using the Allwinner H618
> SoC. It comes with the following specs:
> 	- Allwinner H618 SoC (4 * Arm Cortex-A53 cores, 1MB L2 cache)
> 	- 2 GiB LPDDR4 DRAM
> 	- 8 GiB eMMC flash
> 	- AXP313a PMIC
> 	- Gigabit Ethernet, using RTL8211 PHY
> 	- RTL8821CU USB WiFi chip
> 	- HDMI port
> 	- 4 * USB 2.0 ports, via an on-board hub chip
> 	- microSD card slot
> 	- 3.5mm A/V port
> 	- power supply and USB-OTG via USB-C connector
> 
> Add a devicetree file describing the components that we already have
> bindings for, that excludes audio and video at the moment.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../sun50i-h618-bananapi-m4-berry.dts         | 223 ++++++++++++++++++
>  2 files changed, 224 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h618-bananapi-m4-berry.dts
> 
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> index 2db3b15ad09f..1c5c204a109b 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -43,5 +43,6 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-bigtreetech-cb1-manta.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-bigtreetech-pi.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-orangepi-zero2.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-x96-mate.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-bananapi-m4-berry.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero3.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-transpeed-8k618-t.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h618-bananapi-m4-berry.dts b/arch/arm64/boot/dts/allwinner/sun50i-h618-bananapi-m4-berry.dts
> new file mode 100644
> index 000000000000..a3f8ff75db42
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h618-bananapi-m4-berry.dts
> @@ -0,0 +1,223 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2023 Arm Ltd.
> + */
> +
> +/dts-v1/;
> +
> +#include "sun50i-h616.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/leds/common.h>
> +
> +/ {
> +	model = "BananaPi M4 Berry";
> +	compatible = "sinovoip,bananapi-m4-berry", "allwinner,sun50i-h618";
> +
> +	aliases {
> +		ethernet0 = &emac0;
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-0 {
> +			function = LED_FUNCTION_STATUS;
> +			color = <LED_COLOR_ID_GREEN>;
> +			gpios = <&pio 2 12 GPIO_ACTIVE_LOW>; /* PC12 */
> +		};
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		key-sw3 {
> +			label = "sw3";
> +			linux,code = <BTN_0>;
> +			gpios = <&pio 2 7 GPIO_ACTIVE_LOW>;	/* PC7 */
> +		};
> +	};
> +
> +	reg_vcc5v: regulator-5v {
> +		/* board wide 5V supply directly from the USB-C socket */
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc-5v";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_usb_vbus: regulator-usb-vbus {
> +		/* separate discrete regulator for the USB ports */
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb-vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&reg_vcc5v>;
> +	};
> +
> +	reg_3v3: regulator-3v3 {
> +		/* separate discrete regulator for WiFi and Ethernet PHY */
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc-3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&reg_vcc5v>;
> +	};
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&reg_dcdc2>;
> +};
> +
> +/* Connected to an on-board RTL8821CU USB WiFi chip. */
> +&ehci1 {
> +	status = "okay";
> +};
> +
> +/* EHCI2 is on unpopulated pins */
> +
> +/* Connected to an on-board FE1.1s USB hub chip, supplying 4 USB-A ports. */
> +&ehci3 {
> +	status = "okay";
> +};
> +
> +&emac0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&ext_rgmii_pins>;
> +	phy-mode = "rgmii";
> +	phy-handle = <&ext_rgmii_phy>;
> +	phy-supply = <&reg_3v3>;
> +	allwinner,rx-delay-ps = <3100>;
> +	allwinner,tx-delay-ps = <700>;
> +	status = "okay";
> +};
> +
> +&ir {
> +	status = "okay";
> +};
> +
> +&mdio0 {
> +	ext_rgmii_phy: ethernet-phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <1>;
> +		reset-gpios = <&pio 8 16 GPIO_ACTIVE_LOW>;	/* PI16 */
> +	};
> +};
> +
> +&mmc0 {
> +	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>;	/* PF6 */
> +	vmmc-supply = <&reg_dldo1>;
> +	bus-width = <4>;
> +	status = "okay";
> +};
> +
> +&mmc2 {
> +	vmmc-supply = <&reg_dldo1>;
> +	vqmmc-supply = <&reg_aldo1>;
> +	bus-width = <8>;
> +	non-removable;
> +	cap-mmc-hw-reset;
> +	mmc-ddr-1_8v;

This one should be dropped.

Best regards,
Jernej

> +	mmc-hs200-1_8v;
> +	status = "okay";
> +};
> +
> +/* USB ports 1 and 3 connect to onboard devices that are high-speed only. */
> +
> +/* OHCI2 is on unpopulated pins */
> +
> +&pio {
> +	vcc-pc-supply = <&reg_aldo1>;
> +	vcc-pf-supply = <&reg_dldo1>;
> +	vcc-pg-supply = <&reg_dldo1>;
> +	vcc-ph-supply = <&reg_dldo1>;
> +	vcc-pi-supply = <&reg_dldo1>;
> +};
> +
> +&r_i2c {
> +	status = "okay";
> +
> +	axp313: pmic@36 {
> +		compatible = "x-powers,axp313a";
> +		reg = <0x36>;
> +		#interrupt-cells = <1>;
> +		interrupt-controller;
> +		interrupt-parent = <&pio>;
> +
> +		vin1-supply = <&reg_vcc5v>;
> +		vin2-supply = <&reg_vcc5v>;
> +		vin3-supply = <&reg_vcc5v>;
> +
> +		regulators {
> +			reg_aldo1: aldo1 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc-1v8-pll";
> +			};
> +
> +			reg_dldo1: dldo1 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vcc-3v3-io";
> +			};
> +
> +			reg_dcdc1: dcdc1 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <810000>;
> +				regulator-max-microvolt = <990000>;
> +				regulator-name = "vdd-gpu-sys";
> +			};
> +
> +			reg_dcdc2: dcdc2 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <810000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-name = "vdd-cpu";
> +			};
> +
> +			reg_dcdc3: dcdc3 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <1100000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-name = "vdd-dram";
> +			};
> +		};
> +	};
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_ph_pins>;
> +	status = "okay";
> +};
> +
> +&usbotg {
> +	/*
> +	 * PHY0 pins are connected to a USB-C socket, but a role switch is not
> +	 * implemented: both CC pins are pulled to GND via a 5.1K resistor.
> +	 * The VBUS pins power the device, so a fixed peripheral mode
> +	 * is the best choice.
> +	 * The board can be powered via GPIOs, in this case port0 *can*
> +	 * act as a host (with a cable/adapter ignoring CC), as VBUS is
> +	 * then provided by the GPIOs. Any user of this setup would
> +	 * need to adjust the DT accordingly: dr_mode set to "host",
> +	 * enabling OHCI0 and EHCI0.
> +	 */
> +	dr_mode = "peripheral";
> +	status = "okay";
> +};
> +
> +&usbphy {
> +	usb3_vbus-supply = <&reg_usb_vbus>;
> +	status = "okay";
> +};
> 





