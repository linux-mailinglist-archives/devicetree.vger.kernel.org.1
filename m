Return-Path: <devicetree+bounces-177264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B284AB6DE2
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 16:15:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E6091B68173
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 14:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE8331A2396;
	Wed, 14 May 2025 14:15:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B86A19AD89
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 14:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747232105; cv=none; b=XnM/GmWrn+Raazt+rJufkLugJL4iNoP2WQ9xcW+q8eqqP2SBsjWAeU4RmyOQcYhdvpNZklXcURMxQc3a6tm3/Wbl5OV1xYvCrg8B5tm+NyauISkUwr2IZRlPIb6sAaaxbEp57qjPDE9Bzz5reYKgY6VW7Vaj78ThmtUcehrSf3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747232105; c=relaxed/simple;
	bh=EbyCQ5AHPeCih6N7y2V6YS2flWMU/9MNAC+enpw901w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EO6o0btFYAWrND0LXH49OMKl3XnCLADlxHFR9aflUDpLADYhKHm/IdJgDDrrTK1yXJsMeyQjdgvL2PofXxTI31+y+xeGzbzRzu/kr8AyN6NHUKLrQjX+jYgdfdkpCsaNxjsMf5C9zuoDUPMqr+UOFK6UfdU0yPvj9DaRdEUkbVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-54b1095625dso8239667e87.0
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 07:15:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747232099; x=1747836899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MHI9+PzW39sul+i6E/EGeNmor59j/M/+OWEp6c+V/+U=;
        b=AkYRCOeE1bhpnWhEKqsX28EHFiEDJz8rwk7AmlAEJo4JiacRq0912BzoMBRbjJDuXh
         pxpzTC9+4ZvFZIeXfQMe+isZD8fXaa/XyvLvR/eQaf8fq+8LYnKPXaXjCc4DL5EP8IFM
         OzF/VqNYBHkJaRHkvtsHzCF3wJIoL1lQDh0lgHxSdE8OWC2243Yk27It0pRzMACa1jmi
         /WsMmjpwWNXA0IXalSDk/LbinIFh0IxAuY+QDz+xpecFqVTqUxC9rK1jhsjVLGR2VbOU
         YlONPILoBkxStE6YWHytbhQJosmB2dIAycHemRkeLEZapYxBbMtSNyi/jVQ7t0YlV4oA
         HBwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXX3Ik4EJT+IaeuEfT0nVMS78eZK4HCi/T9yFwdKccemV/73uqWQOxbM4AQnfozw6RDiy6Blk8/Oo7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3cnv5++R1rKmm8qfcZRp6GxON4wiOwoYPdajEprWiSZOQXslg
	Rjwb9j8TvmBUVGdP8CA1kOm7g2HcQ66RNkWawJT+VjID1wDR54QdMwKIck6T
X-Gm-Gg: ASbGncv4tqHzfUz8K0a/SCS3KuvNL1c+Yf779PIaMGw+ZlIMuFqP6MjxZLLY6BA7sdz
	/kQkQCPoYlq+mRKdvYV+/r+GKBVWRk9EAh+1vzC61hE0x+SwhG+I3v6MP9D1t7JVkC76nlnSpkR
	EfpWKUDTOZnuA9FogmB+3i0aqHc7BW6mkeL479xePUVxWcn4achxR4mNe9YNRiCPqbAlfq0jyMx
	pksnEE2DAE5Q7K9kUqlQKUTg6gJmYbDb1i/A94I/k0hq1UvLCy9WQoK4aBKfcPFzl7Burk0MU3t
	Woz3Sd1YyXT3Yu1t+CMXF1y7vXXCbpQ3HqJUDyMLuS4RXcHjDhHLsp0UQdP8wRfUSseqEU3sak+
	aHhEEnqP8
X-Google-Smtp-Source: AGHT+IHhJW5p8+C5J+PvA3IgMHiaGpHQJdDAs0R0AvVV0j/0l3WaRzqPw2ZFHitoucnkBS5qYvqkkQ==
X-Received: by 2002:a05:6512:3c8d:b0:549:74a7:12da with SMTP id 2adb3069b0e04-550d5fe3f39mr1645578e87.51.1747232099034;
        Wed, 14 May 2025 07:14:59 -0700 (PDT)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com. [209.85.208.171])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64bf250sm2273801e87.174.2025.05.14.07.14.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 07:14:58 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-326ca53a7f1so53572871fa.2
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 07:14:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVfsL2z62DDwkvskl1XoGGs6+5lbl3Q3dMihIbKXuzziLm7mgh1N94LSZFl+asyIR/ubVG8BU6xMUla@vger.kernel.org
X-Received: by 2002:a05:651c:144b:b0:326:db50:fa71 with SMTP id
 38308e7fff4ca-327ed11ecccmr16248041fa.23.1747232097790; Wed, 14 May 2025
 07:14:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250505164729.18175-1-andre.przywara@arm.com> <20250505164729.18175-4-andre.przywara@arm.com>
In-Reply-To: <20250505164729.18175-4-andre.przywara@arm.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 14 May 2025 22:14:42 +0800
X-Gmail-Original-Message-ID: <CAGb2v67JGbTgsNcqn4TZ74s_U1+9xGj_a7kYkmfGVxeygQ_Ydw@mail.gmail.com>
X-Gm-Features: AX0GCFuDYucYLLpLUlhwE2czLbkwqRJZoUBu4cwQtabqLqc0JUaJT_1nWb9P4eE
Message-ID: <CAGb2v67JGbTgsNcqn4TZ74s_U1+9xGj_a7kYkmfGVxeygQ_Ydw@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: allwinner: a100: add Liontron H-A133L
 board support
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Cody Eksal <masterr3c0rd@epochal.quest>, 
	Philippe Simons <simons.philippe@gmail.com>, devicetree@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 6, 2025 at 12:48=E2=80=AFAM Andre Przywara <andre.przywara@arm.=
com> wrote:
>
> The H-A133L board is an industrial development board made by Liontron.
> It contains a number of dedicated JST connectors, to connect external
> peripherals. It features:
>
> - Allwinner A133 SoC (4 * Arm Cortex-A53 cores at up to 1.6 GHz)
> - 1 GiB, 2 GiB or 4 GiB of LPDDR4 DRAM
> - between 16 and 128 GiB eMMC flash
> - AXP707 PMIC (compatible to AXP803)
> - 100 Mbit/s RJ45 Ethernet socket, using an JLSemi JL1101 PHY
> - XR829 WIFI+Bluetooth chip
> - 2 * USB 2.0 USB-A ports, plus three sets of USB pins on connectors
>   (connected via a USB hub connected to USB1 on the SoC)
> - microSD card slot
> - 3.5mm A/V port
> - 12V power supply
> - connectors for an LVDS or MIPI-DSI panel
>
> Add the devicetree describing the board's peripherals and their
> connections.
>
> Despite being a devboard, the manufacturer does not publish a schematic
> (I asked), so the PMIC rail assignments were bases on BSP dumps,
> educated guesses and some experimentation. Dropping the always-on
> property from any of the rails carrying it will make the board hang as
> soon as the kernel turns off unused regulators.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../sun50i-a133-liontron-h-a133l.dts          | 214 ++++++++++++++++++
>  2 files changed, 215 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a133-liontron-h-=
a133l.dts
>
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts=
/allwinner/Makefile
> index 790aad3a91e86..773cc02a13d04 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -18,6 +18,7 @@ dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-a64-sopine-baseboa=
rd.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-a64-teres-i.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h64-remix-mini-pc.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-a100-allwinner-perf1.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-a133-liontron-h-a133l.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h5-bananapi-m2-plus.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h5-bananapi-m2-plus-v1.2.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h5-emlid-neutis-n5-devboard.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a133-liontron-h-a133l.d=
ts b/arch/arm64/boot/dts/allwinner/sun50i-a133-liontron-h-a133l.dts
> new file mode 100644
> index 0000000000000..682ed15d84854
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a133-liontron-h-a133l.dts
> @@ -0,0 +1,211 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2025 Arm Ltd.
> + */
> +
> +/dts-v1/;
> +
> +#include "sun50i-a100.dtsi"
> +#include "sun50i-a100-cpu-opp.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +
> +/{
> +       model =3D "Liontron H-A133L";
> +       compatible =3D "liontron,h-a133l", "allwinner,sun50i-a100";
> +
> +       aliases {
> +               serial0 =3D &uart0;
> +       };
> +
> +       chosen {
> +               stdout-path =3D "serial0:115200n8";
> +       };
> +
> +       leds {
> +               compatible =3D "gpio-leds";
> +
> +               led {
> +                       function =3D LED_FUNCTION_POWER;
> +                       color =3D <LED_COLOR_ID_BLUE>;
> +                       gpios =3D <&pio 7 16 GPIO_ACTIVE_LOW>; /* PH16 */
> +               };
> +       };
> +
> +       reg_vcc5v: vcc5v {
> +               /* board wide 5V supply from a 12V->5V regulator */
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "vcc-5v";
> +               regulator-min-microvolt =3D <5000000>;
> +               regulator-max-microvolt =3D <5000000>;
> +               regulator-always-on;
> +       };
> +
> +       reg_usb1_vbus: regulator-usb1-vbus {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "usb1-vbus";
> +               regulator-min-microvolt =3D <5000000>;
> +               regulator-max-microvolt =3D <5000000>;
> +               vin-supply =3D <&reg_vcc5v>;
> +               enable-active-high;
> +               gpio =3D <&r_pio 0 8 GPIO_ACTIVE_HIGH>; /* PL8 */
> +       };
> +};
> +
> +&cpu0 {
> +       cpu-supply =3D <&reg_dcdc2>;
> +};
> +
> +&ehci0 {
> +       status =3D "okay";
> +};
> +
> +&ehci1 {
> +       status =3D "okay";
> +};
> +
> +&mmc0 {
> +       vmmc-supply =3D <&reg_dcdc1>;
> +       cd-gpios =3D <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */
> +       bus-width =3D <4>;
> +       status =3D "okay";
> +};
> +
> +&mmc2 {
> +       vmmc-supply =3D <&reg_dcdc1>;
> +       vqmmc-supply =3D <&reg_eldo1>;
> +       cap-mmc-hw-reset;
> +       non-removable;
> +       bus-width =3D <8>;
> +       mmc-ddr-1_8v;
> +       mmc-hs200-1_8v;
> +       status =3D "okay";
> +};
> +
> +&ohci0 {
> +       status =3D "okay";
> +};
> +
> +&ohci1 {
> +       status =3D "okay";
> +};
> +
> +&pio {
> +       vcc-pb-supply =3D <&reg_dcdc1>;
> +       vcc-pc-supply =3D <&reg_eldo1>;
> +       vcc-pf-supply =3D <&reg_dcdc1>;
> +       vcc-ph-supply =3D <&reg_dcdc1>;
> +};
> +
> +&r_i2c0 {
> +       status =3D "okay";
> +
> +       axp803: pmic@34 {
> +               compatible =3D "x-powers,axp803";
> +               reg =3D <0x34>;
> +               interrupt-parent =3D <&r_intc>;
> +               interrupts =3D <0 IRQ_TYPE_LEVEL_LOW>;
> +       };
> +};
> +
> +#include "axp803.dtsi"
> +
> +&ac_power_supply {
> +       status =3D "okay";
> +};
> +
> +&reg_aldo1 {
> +       regulator-always-on;
> +       regulator-min-microvolt =3D <1800000>;
> +       regulator-max-microvolt =3D <1800000>;
> +       regulator-name =3D "vcc-codec-avcc";
> +};
> +
> +&reg_aldo2 {
> +       regulator-always-on;
> +       regulator-min-microvolt =3D <1800000>;
> +       regulator-max-microvolt =3D <1800000>;
> +       regulator-name =3D "vcc-dram-1";
> +};
> +
> +&reg_aldo3 {
> +       regulator-always-on;
> +       regulator-min-microvolt =3D <3300000>;
> +       regulator-max-microvolt =3D <3300000>;
> +       regulator-name =3D "vcc-usb-pl";
> +};
> +
> +&reg_dcdc1 {
> +       regulator-always-on;
> +       regulator-min-microvolt =3D <3300000>;
> +       regulator-max-microvolt =3D <3300000>;
> +       regulator-name =3D "vcc-io-usb-pd-emmc";
> +};
> +
> +&reg_dcdc2 {
> +       regulator-always-on;
> +       regulator-min-microvolt =3D <810000>;
> +       regulator-max-microvolt =3D <1200000>;
> +       regulator-name =3D "vdd-cpux";
> +};
> +
> +&reg_dcdc3 {
> +       regulator-always-on;
> +       regulator-min-microvolt =3D <900000>;
> +       regulator-max-microvolt =3D <900000>;
> +       regulator-name =3D "vdd-usb-cpus";
> +};
> +
> +&reg_dcdc4 {
> +       regulator-always-on;
> +       regulator-min-microvolt =3D <950000>;
> +       regulator-max-microvolt =3D <950000>;
> +       regulator-name =3D "vdd-sys";
> +};
> +
> +&reg_dcdc5 {
> +       regulator-always-on;
> +       regulator-min-microvolt =3D <1100000>;
> +       regulator-max-microvolt =3D <1100000>;
> +       regulator-name =3D "vcc-dram";
> +};
> +
> +/* DCDC6 unused */
> +/* DLDO3 unused */
> +/* DLDO4 unused */
> +
> +&reg_eldo1 {
> +       regulator-min-microvolt =3D <1800000>;
> +       regulator-max-microvolt =3D <1800000>;
> +       regulator-name =3D "vcc-pc-emmc";
> +};
> +
> +/* ELDO2 unused */
> +/* ELDO3 unused */
> +
> +&reg_fldo1 {
> +       regulator-always-on;
> +       regulator-min-microvolt =3D <900000>;
> +       regulator-max-microvolt =3D <900000>;
> +       regulator-name =3D "vdd-cpus-usb";
> +};
> +
> +/* reg_drivevbus unused */
> +/* dc1sw unused */
> +
> +&uart0 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&uart0_pb_pins>;
> +       status =3D "okay";
> +};
> +
> +&usb_otg {
> +       dr_mode =3D "host";       /* USB A type receptacle, always powere=
d */

                                                noticed a typo here.

> +       status =3D "okay";
> +};
> +
> +&usbphy {
> +       status =3D "okay";
> +       usb1_vbus-supply =3D <&reg_usb1_vbus>;

Just noticed that these two were out of order, so I fixed both of
them and re-pushed.

ChenYu

> +};
> --
> 2.46.3
>

