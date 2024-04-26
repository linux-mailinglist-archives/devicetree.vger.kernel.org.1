Return-Path: <devicetree+bounces-63109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF1D8B3C34
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 18:01:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3ED46B2257C
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 16:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16D0514F125;
	Fri, 26 Apr 2024 16:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kkB4iOtC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FE714D2A5
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 16:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714147248; cv=none; b=CPHIdzP8/W9GS4TuSUBdbPGJ34H+qlcnqshW2Mf1YVjH42Nq7puVsKQ23ldGpklEzgFlJATGVv6nmMVWsVOvkAyHgcMFugv/xIGm2vJDZVfMagjd/k0GZdLqVUeizQR/zdOznqYg4hotMB3rkcnkYGF01HAN10WFOuMjy7RZep0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714147248; c=relaxed/simple;
	bh=pxFWYzuScExToe/5sz8/JsPsDR/OMzXy9nFBpgSKQBU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cGfPyF06OtUDWZhefA8l18a/23GQsXs7N+fS5Szqiwqdfee5nkWcxJYB9ppS3wTEICTlpeBXg1sOmNZFUxik81WBmHeI/fKTFifhRboAo5ioh3IY3Hkdn9/P84uSXpCjTTU/TRoMuwP022TiEkogeMOY8jLyxkpV7P09vs0FPNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kkB4iOtC; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-34b3374ae22so2464130f8f.0
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 09:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714147245; x=1714752045; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N2i6IDHJ6BXdTUMAefYr9K5o9rastdFOrRcDyTPE3s0=;
        b=kkB4iOtCYajI5TjCOUypA14iv1hDQt8/zyzsH4qESvNDr3NsfGUwNWw3ybs26Ws5kM
         W04LnUgkYXxwTE5j5IGw++IGACrcyFPoqS0ksqqu4prpn84Zh5Fye5NC1SXwJvOQHd8D
         2XAu3CAZktL/Ze48fZQZ0kdMlhbL4xzT39afwJXzbHlzO564+h9FLjLqcxYwsJgp5aWQ
         QohfiOfEfOl4AvXLj7RgVMupZCg7Lis9zaBfqnflq84YsvNv8JUbXvAEuKYMOqvtc8ft
         b4sMXyNZLqbSLAkALzwzHFUkpOntQ2h2L3q3qsp2xC6KTbg4m8vOy3e8VTGSeoP+3KeT
         qwgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714147245; x=1714752045;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N2i6IDHJ6BXdTUMAefYr9K5o9rastdFOrRcDyTPE3s0=;
        b=BSWmBY70jLYXGaPva6IxjlR4e6hHt1RME3sZbC7BZUItD9y2sFDUgDuXFBBOF71QC0
         L8M00bsjs+whQNJaEnsELjNd7bxouopWq4OE2hVA9HiqDfwZA3aEmo3fFnsupfXaCO4B
         nXg6EVrIYRWtJ/NuJBtlw8KtOPrg/9qekKAsAps5tI3ErycNWH9SFSwxhHLxwe8OmTG5
         1fE4OB6jawNmhp8o2IJ15KHKIuLIvRty12wtBgOceqSKHCBEBzO8XfyXPNnqe71ok4Rk
         mVRjAabvr0RSx9fokK+K1QigefCxxvIOQP3EE4EdhATk09KhAb76plZg7ybvn5nNDBUn
         kQAw==
X-Gm-Message-State: AOJu0YyT5RiHklEENta4VjHpUEydqlu6/6Q1TV044P6uypgaAYdYUa7O
	qVllh2NtsNXFLMPG+beCmOfTk2gnaCp3wI/ZPHAAOVOJ6Ku26288
X-Google-Smtp-Source: AGHT+IETKfB1bBcbf9JdvPjFfWZRURzpxDlWSSci1yxqzkB6tko+WsU1aUT0W8/PmlrylYvlnd8Wdw==
X-Received: by 2002:a5d:6682:0:b0:34b:58a2:dead with SMTP id l2-20020a5d6682000000b0034b58a2deadmr2581635wru.33.1714147244329;
        Fri, 26 Apr 2024 09:00:44 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id b7-20020adff907000000b0034b3394f0e1sm12219703wrr.10.2024.04.26.09.00.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 09:00:43 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Andre Przywara <andre.przywara@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Chris Morgan <macromorgan@hotmail.com>, Ryan Walklin <ryan@testtoast.com>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 Ryan Walklin <ryan@testtoast.com>
Subject: Re: [PATCH v4 2/4] arm64: dts: allwinner: h700: Add RG35XX 2024 DTS
Date: Fri, 26 Apr 2024 18:00:42 +0200
Message-ID: <1886997.CQOukoFCf9@jernej-laptop>
In-Reply-To: <20240426095141.13602-4-ryan@testtoast.com>
References:
 <20240426095141.13602-2-ryan@testtoast.com>
 <20240426095141.13602-4-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Dne petek, 26. april 2024 ob 11:51:40 GMT +2 je Ryan Walklin napisal(a):
> The base model RG35XX (2024) is a handheld gaming device based on an Allwinner H700 chip.
> 
> The H700 is a H616 variant (4x ARM Cortex-A53 cores @ 1.5Ghz with Mali G31 GPU) which exposes RGB LCD and NMI pins.
> 
> Device features:
> - Allwinner H700 @ 1.5GHz
> - 1GB LPDDR4 DRAM
> - X-Powers AXP717 PMIC
> - 3.5" 640x480 RGB LCD
> - Two microSD slots
> - Mini-HDMI out
> - GPIO keypad
> - 3.5mm headphone jack
> - USB-C charging port
> 
> Enabled in this DTS:
> - AXP717 PMIC with RSB serial interface, regulators and NMI interrupt controller
> - Power LED (charge LED on device controlled directly by PMIC)
> - Serial UART (accessible from headers on the board)
> - MMC slots
> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
> Changelog v1..v2:
> - Update copyright
> - Spaces -> Tabs
> - Add cpufreq support
> - Remove MMC aliases
> - Fix GPIO button and regulator node names
> - Note unused AXP717 regulators
> - Update regulators for SD slots
> - Remove unused I2C3 device
> - Update NMI interrupt controller for AXP717, requires H616 support patch in dt-next [1]
> - Add chassis-type
> - Address USB EHCI/OHCI0 correctly and add usb vbus supply
> - Add PIO vcc-pg-supply
> - Correct boost regulator voltage and name
> 
> Changelog v2..v3:
> - Remove cpufreq support (patch still pending for 6.10, will followup with enablement patch once opp table merged)
> - Add dtb to Makefile
> - Remove unnecessary duplicated PLL regulator
> - Remove unimplemented/not-present drive-vbus feature from AXP717
> - Rename CLDO3 to "vcc-io", inferring function from board testing by Chris Morgan
> - Correct MMC1 vmmc-supply to CLDO3 and MMC2 to CLDO4
> - Reduce DCDC1 "vdd-cpu" supply voltage range to 0.9v-1.1v to match lowest OPP voltage
> - Identify DCDC2 as GPU supply - rename to "vdd-gpu-sys", remove always-on and use fixed 0.94v voltage
> - Fix indentation
> - Correct boot/always-on states and voltages for various regulators from vendor BSP
> - Change USB-OTG mode to "peripheral" and correct comment
> - Correct and add remaining PIO supplies
> - Move volume key GPIOs to separate block to allow key repeat
> - Alphabetically orrder gamepad GPIOs
> - Move changelog and links below fold-line
> - Remove USB 3.3v VCC-USB and VCC-SD2 regulators pending further hardware investigation (to be submitted as subsequent patch)
> - Constrain boost regulator voltage to 5.0v to 5.2v to capture default voltage of 5.126v
> 
> Changelog v3..v4:
> - Cluster USB nodes
> - Do not define voltage range for currently unused CLDO1 (connected to audio codec according to vendor BSP - driver not yet implemented) and ALDO3 (1.8v).
> - Note voltages set for currently unused regulators from vendor BSP in comments to aid identification
> - Remove regulator-boot-on from several regulators where it was not required
> - Fix indentation
> - Add "disable-wp" for SD2 as for SD1 (doesn't make sense for micro-SD)
> - Restore fixed 3.3v regulator for SD2 (vcc_3v3_sd2), which is required for SD2 to function. CLDO4 appears to be the 1.8v supply required for low-voltage UHS-I signalling, however a GPIO pin to switch between the supplies is not yet confirmed (likely PE4) and will be implemented in a subsequent patch.
> 
> [1]: https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=dt/next&id=d47bca77bf3ab475c33b3929c33c80aeb49df35c
> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../sun50i-h700-anbernic-rg35xx-2024.dts      | 347 ++++++++++++++++++
>  2 files changed, 348 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
> 
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> index 21149b346a60..6f997157968e 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -47,3 +47,4 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-longanpi-3h.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero2w.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero3.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-transpeed-8k618-t.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-2024.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
> new file mode 100644
> index 000000000000..112605561e92
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts

<snip>

> +
> +&r_rsb {
> +	status = "okay";
> +
> +	axp717: pmic@3a3 {
> +		compatible = "x-powers,axp717";
> +		reg = <0x3a3>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		interrupt-parent = <&nmi_intc>;
> +		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
> +
> +		vin1-supply = <&reg_vcc5v>;
> +		vin2-supply = <&reg_vcc5v>;
> +		vin3-supply = <&reg_vcc5v>;
> +		vin4-supply = <&reg_vcc5v>;
> +
> +		regulators {
> +			reg_dcdc1: dcdc1 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-name = "vdd-cpu";
> +			};
> +
> +			reg_dcdc2: dcdc2 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <940000>;
> +				regulator-max-microvolt = <940000>;
> +				regulator-name = "vdd-gpu-sys";
> +			};
> +
> +			reg_dcdc3: dcdc3 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <1100000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-name = "vdd-dram";
> +			};
> +
> +			reg_aldo1: aldo1 { /* SDC2 */
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc-sd2";
> +			};
> +
> +			reg_aldo2: aldo2 {
> +				/* 1.8v - unused */
> +			};
> +
> +			reg_aldo3: aldo3 {
> +				/* 1.8v - unused */
> +			};
> +
> +			reg_aldo4: aldo4 { /* 5096000.codec */

Above comment doesn't make any sense. Remove it.

Best regards,
Jernej

> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc-pg";
> +			};
> +
> +			reg_bldo1: bldo1 {
> +				/* 1.8v - unused */
> +			};
> +
> +			reg_bldo2: bldo2 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc-pll";
> +			};
> +
> +			reg_bldo3: bldo3 {
> +				/* 2.8v - unused */
> +			};
> +
> +			reg_bldo4: bldo4 {
> +				/* 1.2v - unused */
> +			};
> +
> +			reg_cldo1: cldo1 {
> +				/* 3.3v - audio codec - not yet implemented */
> +			};
> +
> +			reg_cldo2: cldo2 {
> +				/* 3.3v - unused */
> +			};
> +
> +			reg_cldo3: cldo3 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vcc-io";
> +			};
> +
> +			reg_cldo4: cldo4 {
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vcc-wifi";
> +			};
> +
> +			reg_boost: boost {
> +				regulator-min-microvolt = <5000000>;
> +				regulator-max-microvolt = <5200000>;
> +				regulator-name = "boost";
> +			};
> +
> +			reg_cpusldo: cpusldo {
> +				/* unused */
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
> +&pio {
> +	vcc-pa-supply = <&reg_cldo3>;
> +	vcc-pc-supply = <&reg_cldo3>;
> +	vcc-pe-supply = <&reg_cldo3>;
> +	vcc-pf-supply = <&reg_cldo3>;
> +	vcc-pg-supply = <&reg_aldo4>;
> +	vcc-ph-supply = <&reg_cldo3>;
> +	vcc-pi-supply = <&reg_cldo3>;
> +};
> +
> +&ohci0 {
> +	status = "okay";
> +};
> +
> +&ehci0 {
> +	status = "okay";
> +};
> +
> +/* the AXP717 has USB type-C role switch functionality, not yet described by the binding */
> +&usbotg {
> +	dr_mode = "peripheral";   /* USB type-C receptable */
> +	status = "okay";
> +};
> +
> +&usbphy {
> +	status = "okay";
> +};
> 





