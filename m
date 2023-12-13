Return-Path: <devicetree+bounces-25012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F2129811EC4
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 20:23:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CED7FB211F2
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B827D68273;
	Wed, 13 Dec 2023 19:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hjKWE/fN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EB6FB0
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 11:22:59 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-336417c565eso679599f8f.3
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 11:22:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702495378; x=1703100178; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=89i1OHXQJgIekZUdzaoOl/WPzNUPAmh4Shyy9X7oUY4=;
        b=hjKWE/fNUOwI37rS3+UQQzklDf7zExLBA+79jFAm0JndNvHRGl2M8NekYp9hySzJu1
         V4FYctQDTFhetCCuJTj1ZuOiGay+SFjGHRRhfbmmzA2d/pBZ0yd4k2E1RYgB6bthjK6V
         nBMe3D0vQrIZl5fv2UolPreng93kPP+C+482HyjeembeqMeLMhLGUwKxm7Krzy310X0X
         W7pSJNxwWcky4Hx9pbVUtm9iIH5AbS/RvN4kl9WalS6Kw0eEq/wYeqUIwRAVNcqSitRF
         zH9FzOwmy8ktL7g1LFXYoChiVHrSOCwuBQOzCrw+K1AaJ9FKOe5rP4BAQJK+aPYv2866
         JZmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702495378; x=1703100178;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=89i1OHXQJgIekZUdzaoOl/WPzNUPAmh4Shyy9X7oUY4=;
        b=kqds/oYgUHaktyIKq+FMbe2bjS48Y2bbsFC3MJp35DETO1sXhKbUO+jeyV03Vp3v1f
         Ymu95nuhjfVf+DTqDZ677c4VQenNHdt92IJJ4bq5CQZa+suduI1hDvwqlmfXgmvZr0yJ
         WniuUMvdADpppJ3cmy4VVL9oSYb4aUKj+fWindc2QcG0IdRKdzxFMHbNJMdO1HWfkRz4
         sVoTcoAjGSFassGF/NfHEtxui/MKUpx5YO+6q8WkGSHt4Fmv/MMxjTINWEjqRKZkLs85
         NiGAbAX8SYmpi0irKg+xC1MZDnKJw3Q+Ry/fZ5B4y9aby7e374mwF6JRIOOoCdF9rgYY
         ySiw==
X-Gm-Message-State: AOJu0YxZCtGyty3/mFgYhncCzLM/+RN+pV3sUo+Ozf/QyHvx+tlWs2/R
	aWEPHsSXArWWmXYZ5LQ5RJY=
X-Google-Smtp-Source: AGHT+IFcZKcfAVcsQKDAtqomxNhsXvBOqj2C0qfAQJcS/u+Cqm3nCQMDR0fiNd6YdrV8nk7TJFFkig==
X-Received: by 2002:adf:e64d:0:b0:336:38ef:f4ec with SMTP id b13-20020adfe64d000000b0033638eff4ecmr541429wrn.28.1702495377445;
        Wed, 13 Dec 2023 11:22:57 -0800 (PST)
Received: from archlinux.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id c11-20020a5d414b000000b0033342f72bf8sm14153283wrq.9.2023.12.13.11.22.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 11:22:56 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>
Cc: Icenowy Zheng <uwu@icenowy.me>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject:
 Re: [PATCH 3/3] arm64: dts: allwinner: h618: add Transpeed 8K618-T TV box
Date: Wed, 13 Dec 2023 20:22:55 +0100
Message-ID: <4533903.LvFx2qVVIh@archlinux>
In-Reply-To: <20231212010859.11571-4-andre.przywara@arm.com>
References:
 <20231212010859.11571-1-andre.przywara@arm.com>
 <20231212010859.11571-4-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andre!

On Tuesday, December 12, 2023 2:08:59 AM CET Andre Przywara wrote:
> This is a Chinese TV box, probably very similar if not identical to
> various other cheap TV boxes with the same specs:
>       - Allwinner H618 SoC (4 * Arm Cortex-A53 cores, 1MB L2 cache)
>       - 2 or 4GiB DDR3L DRAM
>       - 32, 64, or 128 GiB eMMC flash
>       - AXP313a PMIC
>       - 100 Mbit/s Ethernet (using yet unsupported internal PHY)
>       - HDMI port
>       - 2 * USB 2.0 ports
>       - microSD card slot
>       - 3.5mm A/V port
>       - 7-segment display
>       - 5V barrel plug power supply
> 
> The PCB provides holes for soldering a UART header or cable, this is
> connected to the debug UART0. UART1 is used for the Bluetooth chip,
> although this isn't working yet.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../sun50i-h618-transpeed-8k618-t.dts         | 164 ++++++++++++++++++
>  2 files changed, 165 insertions(+)
>  create mode 100644
> arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
> 
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile
> b/arch/arm64/boot/dts/allwinner/Makefile index 3aca6787a1679..91d505b385de5
> 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -43,3 +43,4 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-bigtreetech-pi.dtb
> dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-orangepi-zero2.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-x96-mate.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero3.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-transpeed-8k618-t.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
> b/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts new file
> mode 100644
> index 0000000000000..fd7ea7bcde2c1
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
> @@ -0,0 +1,164 @@
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
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +	model = "Transpeed 8K618-T";
> +	compatible = "transpeed,8k618-t", "allwinner,sun50i-h618";
> +
> +	aliases {
> +		serial0 = &uart0;
> +		serial1 = &uart1;

Any particular reason for above alias?

> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	reg_vcc5v: vcc5v {
> +		/* board wide 5V supply directly from the DC input */
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc-5v";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_vcc3v3: vcc3v3 {
> +		/* discrete 3.3V regulator */
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc-3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +	};
> +};
> +
> +&ehci0 {
> +	status = "okay";
> +};
> +
> +&ehci1 {
> +	status = "okay";
> +};
> +
> +&ir {
> +	status = "okay";
> +};
> +
> +&mmc0 {
> +	vmmc-supply = <&reg_dldo1>;
> +	cd-gpios = <&pio 8 16 GPIO_ACTIVE_LOW>;	/* PI16 */
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
> +	mmc-hs200-1_8v;
> +	status = "okay";
> +};
> +
> +&ohci0 {
> +	status = "okay";
> +};
> +
> +&ohci1 {
> +	status = "okay";
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
> +
> +		vin1-supply = <&reg_vcc5v>;
> +		vin2-supply = <&reg_vcc5v>;
> +		vin3-supply = <&reg_vcc5v>;
> +
> +		regulators {
> +			/* Supplies VCC-PLL, so needs to be always 
on. */
> +			reg_aldo1: aldo1 {
> +				regulator-always-on;
> +				regulator-min-microvolt = 
<1800000>;
> +				regulator-max-microvolt = 
<1800000>;
> +				regulator-name = "vcc1v8";

It would be great to expand all PMIC regulator names with (known) areas they 
power, so something like "vcc1v8-pll-pc". With that, I think you can remove 
comments.

Best regards,
Jernej

> +			};
> +
> +			/* Supplies VCC-IO, so needs to be always on. 
*/
> +			reg_dldo1: dldo1 {
> +				regulator-always-on;
> +				regulator-min-microvolt = 
<3300000>;
> +				regulator-max-microvolt = 
<3300000>;
> +				regulator-name = "vcc3v3";
> +			};
> +
> +			reg_dcdc1: dcdc1 {
> +				regulator-always-on;
> +				regulator-min-microvolt = 
<810000>;
> +				regulator-max-microvolt = 
<990000>;
> +				regulator-name = "vdd-gpu-sys";
> +			};
> +
> +			reg_dcdc2: dcdc2 {
> +				regulator-always-on;
> +				regulator-min-microvolt = 
<810000>;
> +				regulator-max-microvolt = 
<1100000>;
> +				regulator-name = "vdd-cpu";
> +			};
> +
> +			reg_dcdc3: dcdc3 {
> +				regulator-always-on;
> +				regulator-min-microvolt = 
<1360000>;
> +				regulator-max-microvolt = 
<1360000>;
> +				regulator-name = "vdd-dram";
> +			};
> +		};
> +	};
> +};
> +
> +&pio {
> +	vcc-pc-supply = <&reg_aldo1>;
> +	vcc-pg-supply = <&reg_dldo1>;
> +	vcc-ph-supply = <&reg_dldo1>;
> +	vcc-pi-supply = <&reg_dldo1>;
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_ph_pins>;
> +	status = "okay";
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
> +	uart-has-rtscts;
> +	status = "okay";
> +};
> +
> +&usbotg {
> +	dr_mode = "host";	/* USB A type receptable */
> +	status = "okay";
> +};
> +
> +&usbphy {
> +	status = "okay";
> +};





