Return-Path: <devicetree+bounces-59064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C26F8A41EB
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 12:45:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F3161C20B01
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 10:45:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC8882E65B;
	Sun, 14 Apr 2024 10:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FlbY1K3A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009042D7B8
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 10:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713091505; cv=none; b=juUn4zTa7/dIDxS55N6dSrF3oAk33imitw03CsxYS4q6rwfItDkHoAkHW3WrINRS7pyd5RfwixSPTjYN/UXU0UyM5RVgS4x8nYto6F9Olh4m3ehn1FYO5SDvIvbQq7gVQn/TVmqnidwcFVMGIV7ErVjnXS6fur0ikvFDjdFChoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713091505; c=relaxed/simple;
	bh=gKefZjiMLnYnDg5f1hw1XrCVXNFjprL+Y6b51gkyeJg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=J+F30aoCim5x5OmJ4zyUfZYYjSITOzgf2a9mpP36Dd6QAqdHD0s90UVPjOiLTSwDfCiIEEL8Vi28YxJuuc5WhKwFAcGqelebboXV2myU12Htbye8sEfrgs/Eb+nb8EhmAVZpv+2fvS4jGyjxv6EZKHoDcT+trmos8c7G6oKDBiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FlbY1K3A; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-56fe7dc7f58so1712502a12.2
        for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 03:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713091502; x=1713696302; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3xCwqQBsSE1kFohvW8vRYJ8QUAAEAfzm2seE0I2e3Rk=;
        b=FlbY1K3AOqIuDeRe/TUFxaODP4SHWTQ4AA/hZb4Yy0rMrxqUOpnoTLlqkUUykAyTku
         uqk0ace7yW5yQJ78ezt+eQKAhWcZUNnWhjAMAoMq0XvIHf92TcWJZiZfaJgBa/P4NdcA
         ykLFCnQd8uCYEkmLeJ85OlpicD4u8YwpZeIEoSCCL4C3axXzL9vhHDhNgGbdNXA8iuCg
         CoIMvt89FL2O9ns9n5VL2eMUkQeYVpK5yr6mX+S+xiY2DPwrv4sGUlWuC0FhjA5JwmBH
         XZkPouC6GXUb/wwTz4+ZHO7yP0AxtTPn7F2Pclkc/RRXesQ/Z6L1q80amHYCKh1Yft1Q
         QqSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713091502; x=1713696302;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3xCwqQBsSE1kFohvW8vRYJ8QUAAEAfzm2seE0I2e3Rk=;
        b=Ckc84NvQQLukrOyL5pOOBO1x04yYSfO232NlZImnMtLAK1l26HGShbBKGsH5UPeNzF
         8Y8QLNlrGbWsB+iKgYUWc4g0vDhMYxFA76YEPlcMbqhOtrDyDQp/Wnn0CvUHpkCFmC0S
         fIPSd6Sywi8bue0T8Rx+q64xJzxpofeVIUTqEcdC2fpNy0Vw6Y8zmtgLYbajn8UzFb0w
         d0osEBF+AzycQ+4JQACszhD2bNhaKb8PwQEcZOrfKAzZRzks1JQataWqdzJKhDWTnDWx
         ssJLwPIDN4mNjXQlksmfFW/eHmPstiWJ+byLP2O/8X5HL9lIUqVLH6EytanaDGAohfDn
         OX2w==
X-Gm-Message-State: AOJu0Yx4eCgJkQaYiwI5w/ojVUdZmFFnO1IKGIbqeRf8SxRnHYoZve1M
	5r9qPPG2PIb7cGZKFS809N8qE1v/B/wepShBX3TWb3n4UFgxkQ7tUeudDWHM
X-Google-Smtp-Source: AGHT+IEVRoUirRooWmBfyz2BZBw6j5wd/QGw6EfBvlmUcpDtmjnYZ4b6tAio1XgKgqrBdmiQp3X5Hg==
X-Received: by 2002:a50:d656:0:b0:56c:5ab5:5fb7 with SMTP id c22-20020a50d656000000b0056c5ab55fb7mr5440500edj.30.1713091502122;
        Sun, 14 Apr 2024 03:45:02 -0700 (PDT)
Received: from jernej-laptop.localnet (APN-123-252-50-gprs.simobil.net. [46.123.252.50])
        by smtp.gmail.com with ESMTPSA id k20-20020aa7c054000000b0056ff82e54a0sm2792173edo.31.2024.04.14.03.45.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Apr 2024 03:45:01 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Andre Przywara <andre.przywara@arm.com>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 2/2] arm64: dts: allwinner: Add Tanix TX1 support
Date: Sun, 14 Apr 2024 12:45:00 +0200
Message-ID: <3215318.5fSG56mABF@jernej-laptop>
In-Reply-To: <20240330013243.17943-3-andre.przywara@arm.com>
References:
 <20240330013243.17943-1-andre.przywara@arm.com>
 <20240330013243.17943-3-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Hi Andre,

sorry for late reply.

Dne sobota, 30. marec 2024 ob 02:32:43 CEST je Andre Przywara napisal(a):
> The Tanix TX1 is a tiny TV box with the Allwinner H313 SoC. The box
> features no Ethernet or an SD card slot, which makes booting from it
> somewhat interesting: Pressing the hidden FEL button and using a USB-A
> to USB-A cable to upload code from a host PC is one way to run mainline.
> The box features:
> 	- Allwinner H313 SoC (4 * Arm Cortex-A53 cores)
> 	- 1 or 2 GB DRAM
> 	- 8 or 16 GB eMMC flash
> 	- SCI S9082H WiFi chip
> 	- HDMI port
> 	- one USB 2.0 port
> 	- 3.5mm AV port
> 	- barrel plug 5V DC input via barrel plug
> 
> The devicetree covers most peripherals.
> The eMMC did not work properly in HS200 speed mode, so this mode property
> is omitted. HS-DDR seems to work fine.
> The blue LED is connected to the same GPIO pin as the red LED, just
> using the opposite polarity. Apparently there is no way of describing
> this in DT, so the red LED is omitted.
> Next to the FEL button is a hidden button, that can be pushed by using
> something like a paperclip, through the ventilation vents of the case.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../dts/allwinner/sun50i-h313-tanix-tx1.dts   | 184 ++++++++++++++++++
>  2 files changed, 185 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h313-tanix-tx1.dts
> 
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> index 294921f12b738..c8ac2823677f2 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -39,6 +39,7 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64-model-b.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-tanix-tx6.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-tanix-tx6-mini.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h313-tanix-tx1.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-bigtreetech-cb1-manta.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-bigtreetech-pi.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-orangepi-zero2.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h313-tanix-tx1.dts b/arch/arm64/boot/dts/allwinner/sun50i-h313-tanix-tx1.dts
> new file mode 100644
> index 0000000000000..622f4290057a8
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h313-tanix-tx1.dts
> @@ -0,0 +1,184 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2024 Arm Ltd.
> + */
> +
> +/dts-v1/;
> +
> +#include "sun50i-h616.dtsi"
> +#include "sun50i-h616-cpu-opp.dtsi"

Above include doesn't exist yet. Once removed:

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/leds/common.h>
> +
> +/ {
> +	model = "Tanix TX1";
> +	compatible = "oranth,tanix-tx1", "allwinner,sun50i-h616";
> +
> +	aliases {
> +		serial0 = &uart0;
> +		ethernet0 = &sdio_wifi;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		key {
> +			label = "hidden";
> +			linux,code = <BTN_0>;
> +			gpios = <&pio 7 9 GPIO_ACTIVE_LOW>; /* PH9 */
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-0 {
> +			function = LED_FUNCTION_POWER;
> +			color = <LED_COLOR_ID_BLUE>;
> +			gpios = <&pio 7 6 GPIO_ACTIVE_HIGH>; /* PH6 */
> +			default-state = "on";
> +		};
> +	};
> +
> +	wifi_pwrseq: pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rtc CLK_OSC32K_FANOUT>;
> +		clock-names = "ext_clock";
> +		pinctrl-0 = <&x32clk_fanout_pin>;
> +		pinctrl-names = "default";
> +		reset-gpios = <&pio 6 18 GPIO_ACTIVE_LOW>; /* PG18 */
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
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&reg_dcdc2>;
> +};
> +
> +&ehci0 {
> +	status = "okay";
> +};
> +
> +&ir {
> +	status = "okay";
> +};
> +
> +&mmc1 {
> +	vmmc-supply = <&reg_dldo1>;
> +	vqmmc-supply = <&reg_aldo1>;
> +	mmc-pwrseq = <&wifi_pwrseq>;
> +	bus-width = <4>;
> +	non-removable;
> +	status = "okay";
> +
> +	sdio_wifi: wifi@1 {
> +		reg = <1>;
> +	};
> +};
> +
> +&mmc2 {
> +	vmmc-supply = <&reg_dldo1>;
> +	vqmmc-supply = <&reg_aldo1>;
> +	bus-width = <8>;
> +	non-removable;
> +	max-frequency = <100000000>;
> +	cap-mmc-hw-reset;
> +	mmc-ddr-1_8v;
> +	status = "okay";
> +};
> +
> +&ohci0 {
> +	status = "okay";
> +};
> +
> +&pio {
> +	vcc-pc-supply = <&reg_aldo1>;
> +	vcc-pf-supply = <&reg_dldo1>;
> +	vcc-pg-supply = <&reg_aldo1>;
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
> +
> +		vin1-supply = <&reg_vcc5v>;
> +		vin2-supply = <&reg_vcc5v>;
> +		vin3-supply = <&reg_vcc5v>;
> +
> +		regulators {
> +			/* Supplies VCC-PLL, so needs to be always on. */
> +			reg_aldo1: aldo1 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc1v8";
> +			};
> +
> +			/* Supplies VCC-IO, so needs to be always on. */
> +			reg_dldo1: dldo1 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vcc3v3";
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
> +				regulator-max-microvolt = <1120000>;
> +				regulator-name = "vdd-cpu";
> +			};
> +
> +			reg_dcdc3: dcdc3 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1200000>;
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
> +	dr_mode = "host";       /* USB A type receptable */
> +	status = "okay";
> +};
> +
> +&usbphy {
> +	status = "okay";
> +};
> 





