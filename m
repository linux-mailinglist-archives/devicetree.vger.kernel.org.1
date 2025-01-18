Return-Path: <devicetree+bounces-139484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 92727A15E0E
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 17:28:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6E07165EDE
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 16:28:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11A6D19CC33;
	Sat, 18 Jan 2025 16:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PdMD4SAd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7802189BAC;
	Sat, 18 Jan 2025 16:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737217701; cv=none; b=A39kguj0mHFzxHUczs4d+ETZqCOA7E5czIrNqtAVWkoMitRIWB+yrn4lUd8nb1WkeJkVHUJLkyHzfKUv9YEBiZFE1cc05PI6U7QIi3w+wETHJxr90q3TZiv0lzHOPOZQgA3k/KkjPhuLppro5azAT4tMw1CUJVCq/2mcVXIeT0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737217701; c=relaxed/simple;
	bh=WmcNgHTjbftv10a5/348uDI+9wMWuTwBHgkTpMhg6mU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Sc094l7L7SCukXWrRCVJb9CE3G6HI03i+Ahzo+yNxioOL+1VZ1ZzXAYmQa8d57Q2EHztEB5tkme2umXU3dGpWcOU9eNdo1VbqBVkKfY95+kXCnpqiJw55iH0ewmP3Jn6B1jcsqBh+GVDWy2kU8TQL82dfbitodNPDuCarhE9uEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PdMD4SAd; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5d3d143376dso4672426a12.3;
        Sat, 18 Jan 2025 08:28:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737217697; x=1737822497; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3qK9VGUQLsSV1fviCq5ZDn3IDi9DKDriUQm8bYqt+y0=;
        b=PdMD4SAdipS62Z3qD5A3y8yZ6boNVjevqIe3XOWdEA1Iz5yKE7prr1FFJpkPC0+Zl/
         jRDCnA6UKwtrdHqSuubEdIbAjetsNN5W1IkY+AQ3ix/f/Lrg/fFUQgtVJ0JR39by+39i
         LCl1XNDacPmVdZy6tGuJqKlbgh0mvWR9w5J36888uiYNAiz3lQSrj6+gv7lbB43f5gXK
         nTHbNeqsPYqkeamcgLage9C7isNZoty1wnEJbqga7GC37mZT80u7hkuZU6bTwoN/5sc2
         c7D6WHBbrjS8zpyxa4D9yV+MTdevH40PXWAbi9SP8rW/SdSL2iu1CSpguUQw4Q4BQUFD
         K3AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737217697; x=1737822497;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3qK9VGUQLsSV1fviCq5ZDn3IDi9DKDriUQm8bYqt+y0=;
        b=OyfGEUmq1GF0Dp3UABA3AWrZCALkeno772lgjoTvu2TodGksbuAjpPf/+ZOWykhDXC
         U8XJkgYg2PS5mijSLfCbD5RwnyfqeVpRe5qzzbubl8qCJZMlrc3ZOLS674frWXd2j22H
         /nuRHDMvBw0toNlTbOSsGV40GYDWZesi1Ju3ICsMdl+3jcqWfkZkbAZdwmu+zVr+8Bl9
         OmG2VF0AL/UXyo902KDv9GiYxtKVIvG8NYDA15qJduX7t4LhJw51b5rLhxGY7YnCePZD
         bm6Kg+CU9Li39O6zdgDc0DOofO/8IRYmoZxOQMXr1Yt3u/JKxCACib7eRHeQL8C21MjK
         u0zg==
X-Forwarded-Encrypted: i=1; AJvYcCUnJWtwBcWGOnPQEjZBvZeYH80OHct+IEhGlw9ZDW+Jq0l8RTdPjyo/ZHkcA7viU++VD1sW4eap7e7xwOg=@vger.kernel.org
X-Gm-Message-State: AOJu0YyzbV2Y4TlmKY/WogtqRn2JbCkMnHBQmoXvi+uv9iu4n0+Xg+QE
	dmXa+48lpF/lq40MDKpnWLPHdM8eA56EmXHwXOYvEgY1SmgOPWSi
X-Gm-Gg: ASbGncv58pEF3eBrhLhh/J/UW82PyQ4/El+swY4lVvuVEe+6mgjk+JHKjfpiBW+7Lc6
	0lSO4awPkNF1d2sQcSz0Rjwjl8kRRDyTvalqkzxDTwVlJqANP81h8Rx0xjkZqs+DxiBvae2aP0F
	HVc96Mp0LdPs1TxoQAB+5R84oz60850txf6fj348BaFu1ObZSf9nG7EDYTmkSiY1h9q7LA1xRlQ
	XtY5DJjXQCKYoD0Y1ZlNKzr6RspJmiJYBr+hHBa8PfF0bztu1LiYPLHc/1RVIMSygEzxjZE2Mh2
	B/ze7CmBLahItjs=
X-Google-Smtp-Source: AGHT+IGyjMDuSipg8uqnrp3QQWrF+JEzC7jqNIST1L3PukQeJHqMCiwtLjv7aFSuOtfiLnAgFCiaLA==
X-Received: by 2002:a17:907:6d17:b0:aab:d8e4:2062 with SMTP id a640c23a62f3a-ab38b3df931mr583281866b.56.1737217696832;
        Sat, 18 Jan 2025 08:28:16 -0800 (PST)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384f86f7bsm363583766b.149.2025.01.18.08.28.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 08:28:16 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 11/14] arm64: dts: allwinner: Add Allwinner A523 .dtsi file
Date: Sat, 18 Jan 2025 17:28:14 +0100
Message-ID: <2763298.mvXUDI8C0e@jernej-laptop>
In-Reply-To: <20241111013033.22793-12-andre.przywara@arm.com>
References:
 <20241111013033.22793-1-andre.przywara@arm.com>
 <20241111013033.22793-12-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne ponedeljek, 11. november 2024 ob 02:30:30 Srednjeevropski standardni =
=C4=8Das je Andre Przywara napisal(a):
> The Allwinner A523, and its siblings A527 and T527, which share the same
> die, are a new family of SoCs introduced in 2023. They features eight
> Arm Cortex-A55 cores, and, among the other usual peripherals, a PCIe and
> USB 3.0 controller.
>=20
> Add the basic SoC devicetree .dtsi for the chip, describing the
> fundamental peripherals: the cores, GIC, timer, RTC, CCU and pinctrl.
> Also some other peripherals are fully compatible with previous IP, so
> add the USB and MMC nodes as well.
> The other peripherals will be added in the future, once we understand
> their compatibility and DT requirements.
>=20
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../arm64/boot/dts/allwinner/sun55i-a523.dtsi | 386 ++++++++++++++++++
>  1 file changed, 386 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi b/arch/arm64/=
boot/dts/allwinner/sun55i-a523.dtsi
> new file mode 100644
> index 0000000000000..96072cea10da4
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
> @@ -0,0 +1,386 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
> +// Copyright (C) 2023-2024 Arm Ltd.
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/clock/sun6i-rtc.h>
> +#include <dt-bindings/clock/sun55i-a523-ccu.h>
> +#include <dt-bindings/clock/sun55i-a523-r-ccu.h>
> +#include <dt-bindings/reset/sun55i-a523-ccu.h>
> +#include <dt-bindings/reset/sun55i-a523-r-ccu.h>
> +
> +/ {
> +	interrupt-parent =3D <&gic>;
> +	#address-cells =3D <2>;
> +	#size-cells =3D <2>;
> +
> +	cpus {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		cpu0: cpu@0 {
> +			compatible =3D "arm,cortex-a55";
> +			device_type =3D "cpu";
> +			reg =3D <0x000>;
> +		};
> +	};
> +
> +	ext_osc32k: ext-osc32k-clk {
> +		#clock-cells =3D <0>;
> +		compatible =3D "fixed-clock";
> +		clock-frequency =3D <32768>;
> +		clock-output-names =3D "ext_osc32k";
> +	};

osc32k should be part of the board DT. It's not mandatory, and some boards,
at least with older generations of SoCs, don't have it.

Best regards,
Jernej

> +
> +	osc24M: osc24M-clk {
> +		#clock-cells =3D <0>;
> +		compatible =3D "fixed-clock";
> +		clock-frequency =3D <24000000>;
> +		clock-output-names =3D "osc24M";
> +	};
> +
> +	pmu {
> +		compatible =3D "arm,cortex-a55-pmu";
> +		interrupts =3D <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	timer {
> +		compatible =3D "arm,armv8-timer";
> +		arm,no-tick-in-suspend;
> +		interrupts =3D <GIC_PPI 13 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	soc {
> +		compatible =3D "simple-bus";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		ranges =3D <0x0 0x0 0x0 0x40000000>;
> +
> +		pio: pinctrl@2000000 {
> +			compatible =3D "allwinner,sun55i-a523-pinctrl";
> +			reg =3D <0x2000000 0x800>;
> +			interrupts =3D <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&ccu CLK_APB1>, <&osc24M>, <&rtc CLK_OSC32K>;
> +			clock-names =3D "apb", "hosc", "losc";
> +			gpio-controller;
> +			#gpio-cells =3D <3>;
> +			interrupt-controller;
> +			#interrupt-cells =3D <3>;
> +
> +			mmc0_pins: mmc0-pins {
> +				pins =3D "PF0" ,"PF1", "PF2", "PF3", "PF4", "PF5";
> +				allwinner,pinmux =3D <2>;
> +				function =3D "mmc0";
> +				drive-strength =3D <30>;
> +				bias-pull-up;
> +			};
> +
> +			/omit-if-no-ref/
> +			mmc1_pins: mmc1-pins {
> +				pins =3D "PG0" ,"PG1", "PG2", "PG3", "PG4", "PG5";
> +				allwinner,pinmux =3D <2>;
> +				function =3D "mmc1";
> +				drive-strength =3D <30>;
> +				bias-pull-up;
> +			};
> +
> +			mmc2_pins: mmc2-pins {
> +				pins =3D "PC1" ,"PC5", "PC6", "PC8", "PC9",
> +				       "PC10", "PC11", "PC13", "PC14", "PC15",
> +				       "PC16";
> +				allwinner,pinmux =3D <3>;
> +				function =3D "mmc2";
> +				drive-strength =3D <30>;
> +				bias-pull-up;
> +			};
> +
> +			uart0_pb_pins: uart0-pb-pins {
> +				pins =3D "PB9", "PB10";
> +				allwinner,pinmux =3D <2>;
> +				function =3D "uart0";
> +			};
> +		};
> +
> +		ccu: clock@2001000 {
> +			compatible =3D "allwinner,sun55i-a523-ccu";
> +			reg =3D <0x02001000 0x1000>;
> +			clocks =3D <&osc24M>, <&rtc CLK_OSC32K>, <&rtc CLK_IOSC>;
> +			clock-names =3D "hosc", "losc", "iosc";
> +			#clock-cells =3D <1>;
> +			#reset-cells =3D <1>;
> +		};
> +
> +		mmc0: mmc@4020000 {
> +			compatible =3D "allwinner,sun55i-a523-mmc",
> +				     "allwinner,sun20i-d1-mmc";
> +			reg =3D <0x04020000 0x1000>;
> +			clocks =3D <&ccu CLK_BUS_MMC0>, <&ccu CLK_MMC0>;
> +			clock-names =3D "ahb", "mmc";
> +			resets =3D <&ccu RST_BUS_MMC0>;
> +			reset-names =3D "ahb";
> +			interrupts =3D <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> +			pinctrl-names =3D "default";
> +			pinctrl-0 =3D <&mmc0_pins>;
> +			status =3D "disabled";
> +
> +			max-frequency =3D <150000000>;
> +			cap-sd-highspeed;
> +			cap-mmc-highspeed;
> +			cap-sdio-irq;
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +		};
> +
> +		mmc2: mmc@4022000 {
> +			compatible =3D "allwinner,sun55i-a523-mmc",
> +				     "allwinner,sun20i-d1-mmc";
> +			reg =3D <0x04022000 0x1000>;
> +			clocks =3D <&ccu CLK_BUS_MMC2>, <&ccu CLK_MMC2>;
> +			clock-names =3D "ahb", "mmc";
> +			resets =3D <&ccu RST_BUS_MMC2>;
> +			reset-names =3D "ahb";
> +			interrupts =3D <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> +			pinctrl-names =3D "default";
> +			pinctrl-0 =3D <&mmc2_pins>;
> +			status =3D "disabled";
> +
> +			max-frequency =3D <150000000>;
> +			cap-sd-highspeed;
> +			cap-mmc-highspeed;
> +			cap-sdio-irq;
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +		};
> +
> +		wdt: watchdog@2050000 {
> +			compatible =3D "allwinner,sun55i-a523-wdt";
> +			reg =3D <0x2050000 0x20>;
> +			interrupts =3D <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&osc24M>, <&rtc CLK_OSC32K>;
> +			clock-names =3D "hosc", "losc";
> +			status =3D "okay";
> +		};
> +
> +		uart0: serial@2500000 {
> +			compatible =3D "snps,dw-apb-uart";
> +			reg =3D <0x02500000 0x400>;
> +			interrupts =3D <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
> +			reg-shift =3D <2>;
> +			reg-io-width =3D <4>;
> +			clocks =3D <&ccu CLK_BUS_UART0>;
> +			resets =3D <&ccu RST_BUS_UART0>;
> +			status =3D "disabled";
> +		};
> +
> +		i2c0: i2c@2502000 {
> +			compatible =3D "allwinner,sun55i-a523-i2c",
> +				     "allwinner,sun8i-v536-i2c",
> +				     "allwinner,sun6i-a31-i2c";
> +			reg =3D <0x2502000 0x400>;
> +			interrupts =3D <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&ccu CLK_BUS_I2C0>;
> +			resets =3D <&ccu RST_BUS_I2C0>;
> +			status =3D "disabled";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +		};
> +
> +		gic: interrupt-controller@3400000 {
> +			compatible =3D "arm,gic-v3";
> +			#address-cells =3D <1>;
> +			#interrupt-cells =3D <3>;
> +			#size-cells =3D <1>;
> +			ranges;
> +			interrupt-controller;
> +			reg =3D <0x3400000 0x10000>,
> +			      <0x3460000 0x100000>;
> +			interrupts =3D <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +			dma-noncoherent;
> +
> +			its: msi-controller@3440000 {
> +				compatible =3D "arm,gic-v3-its";
> +				reg =3D <0x3440000 0x20000>;
> +				msi-controller;
> +				#msi-cells =3D <1>;
> +				dma-noncoherent;
> +			};
> +		};
> +
> +		usb_otg: usb@4100000 {
> +			compatible =3D "allwinner,sun55i-a523-musb",
> +				     "allwinner,sun8i-a33-musb";
> +			reg =3D <0x4100000 0x400>;
> +			interrupts =3D <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names =3D "mc";
> +			clocks =3D <&ccu CLK_BUS_OTG>;
> +			resets =3D <&ccu RST_BUS_OTG>;
> +			extcon =3D <&usbphy 0>;
> +			phys =3D <&usbphy 0>;
> +			phy-names =3D "usb";
> +			status =3D "disabled";
> +		};
> +
> +		usbphy: phy@4100400 {
> +			compatible =3D "allwinner,sun55i-a523-usb-phy",
> +				     "allwinner,sun20i-d1-usb-phy";
> +			reg =3D <0x4100400 0x100>,
> +			      <0x4101800 0x100>,
> +			      <0x4200800 0x100>;
> +			reg-names =3D "phy_ctrl",
> +				    "pmu0",
> +				    "pmu1";
> +			clocks =3D <&osc24M>,
> +				 <&osc24M>;
> +			clock-names =3D "usb0_phy",
> +				      "usb1_phy";
> +			resets =3D <&ccu RST_USB_PHY0>,
> +				 <&ccu RST_USB_PHY1>;
> +			reset-names =3D "usb0_reset",
> +				      "usb1_reset";
> +			status =3D "disabled";
> +			#phy-cells =3D <1>;
> +		};
> +
> +		ehci0: usb@4101000 {
> +			compatible =3D "allwinner,sun55i-a523-ehci",
> +				     "generic-ehci";
> +			reg =3D <0x4101000 0x100>;
> +			interrupts =3D <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&ccu CLK_BUS_OHCI0>,
> +				 <&ccu CLK_BUS_EHCI0>,
> +				 <&ccu CLK_USB_OHCI0>;
> +			resets =3D <&ccu RST_BUS_OHCI0>,
> +				 <&ccu RST_BUS_EHCI0>;
> +			phys =3D <&usbphy 0>;
> +			phy-names =3D "usb";
> +			status =3D "disabled";
> +		};
> +
> +		ohci0: usb@4101400 {
> +			compatible =3D "allwinner,sun55i-a523-ohci",
> +				     "generic-ohci";
> +			reg =3D <0x4101400 0x100>;
> +			interrupts =3D <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&ccu CLK_BUS_OHCI0>,
> +				 <&ccu CLK_USB_OHCI0>;
> +			resets =3D <&ccu RST_BUS_OHCI0>;
> +			phys =3D <&usbphy 0>;
> +			phy-names =3D "usb";
> +			status =3D "disabled";
> +		};
> +
> +		ehci1: usb@4200000 {
> +			compatible =3D "allwinner,sun55i-a523-ehci",
> +				     "generic-ehci";
> +			reg =3D <0x4200000 0x100>;
> +			interrupts =3D <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&ccu CLK_BUS_OHCI1>,
> +				 <&ccu CLK_BUS_EHCI1>,
> +				 <&ccu CLK_USB_OHCI1>;
> +			resets =3D <&ccu RST_BUS_OHCI1>,
> +				 <&ccu RST_BUS_EHCI1>;
> +			phys =3D <&usbphy 1>;
> +			phy-names =3D "usb";
> +			status =3D "disabled";
> +		};
> +
> +		ohci1: usb@4200400 {
> +			compatible =3D "allwinner,sun55i-a523-ohci",
> +				     "generic-ohci";
> +			reg =3D <0x4200400 0x100>;
> +			interrupts =3D <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&ccu CLK_BUS_OHCI1>,
> +				 <&ccu CLK_USB_OHCI1>;
> +			resets =3D <&ccu RST_BUS_OHCI1>;
> +			phys =3D <&usbphy 1>;
> +			phy-names =3D "usb";
> +			status =3D "disabled";
> +		};
> +
> +		r_ccu: clock-controller@7010000 {
> +			compatible =3D "allwinner,sun55i-a523-r-ccu";
> +			reg =3D <0x7010000 0x250>;
> +			clocks =3D <&osc24M>,
> +				 <&rtc CLK_OSC32K>,
> +				 <&rtc CLK_IOSC>,
> +				 <&ccu CLK_PLL_PERIPH0_200M>,
> +				 <&ccu CLK_PLL_AUDIO0_4X>;
> +			clock-names =3D "hosc",
> +				      "losc",
> +				      "iosc",
> +				      "pll-periph",
> +				      "pll-audio";
> +			#clock-cells =3D <1>;
> +			#reset-cells =3D <1>;
> +		};
> +
> +		nmi_intc: interrupt-controller@7010320 {
> +			compatible =3D "allwinner,sun55i-a523-nmi",
> +				     "allwinner,sun9i-a80-nmi";
> +			reg =3D <0x07010320 0xc>;
> +			interrupt-controller;
> +			#interrupt-cells =3D <2>;
> +			interrupts =3D <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +
> +		r_pio: pinctrl@7022000 {
> +			compatible =3D "allwinner,sun55i-a523-r-pinctrl";
> +			reg =3D <0x7022000 0x800>;
> +			interrupts =3D <GIC_SPI 159 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&r_ccu CLK_R_APB0>,
> +				 <&osc24M>,
> +				 <&rtc CLK_OSC32K>;
> +			clock-names =3D "apb", "hosc", "losc";
> +			gpio-controller;
> +			#gpio-cells =3D <3>;
> +			interrupt-controller;
> +			#interrupt-cells =3D <3>;
> +
> +			r_i2c_pins: r-i2c-pins {
> +				pins =3D "PL0" ,"PL1";
> +				allwinner,pinmux =3D <2>;
> +				function =3D "r_i2c0";
> +			};
> +		};
> +
> +		r_i2c0: i2c@7081400 {
> +			compatible =3D "allwinner,sun55i-a523-i2c",
> +				     "allwinner,sun8i-v536-i2c",
> +				     "allwinner,sun6i-a31-i2c";
> +			reg =3D <0x07081400 0x400>;
> +			interrupts =3D <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&r_ccu CLK_BUS_R_I2C0>;
> +			resets =3D <&r_ccu RST_BUS_R_I2C0>;
> +			pinctrl-names =3D "default";
> +			pinctrl-0 =3D <&r_i2c_pins>;
> +			status =3D "disabled";
> +
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +		};
> +
> +		rtc: rtc@7090000 {
> +			compatible =3D "allwinner,sun55i-a523-rtc",
> +				     "allwinner,sun50i-r329-rtc";
> +			reg =3D <0x7090000 0x400>;
> +			interrupts =3D <GIC_SPI 157 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&r_ccu CLK_BUS_R_RTC>,
> +				 <&osc24M>,
> +				 <&r_ccu CLK_R_AHB>;
> +			clock-names =3D "bus", "hosc", "ahb";
> +			#clock-cells =3D <1>;
> +		};
> +	};
> +};
>=20





