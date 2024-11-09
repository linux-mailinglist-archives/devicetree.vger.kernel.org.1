Return-Path: <devicetree+bounces-120498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7A49C2F0F
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2024 19:24:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 98B5CB21793
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2024 18:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8952E19DF75;
	Sat,  9 Nov 2024 18:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="eN72TLBD"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA92155726
	for <devicetree@vger.kernel.org>; Sat,  9 Nov 2024 18:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731176639; cv=none; b=lBTHa536lh6qMxcvM5M8g/VhogDgMwrDP1xhs9sSC47P/a1OInNGLL/mx61WZe8cvUxoqTD+RkCsHz9kkeQmV3jvQU1MkOUz2MMWXNoqVpgPxvhzyppGfqulaUHfNEyy14MEdv94j9OuTBqexXcfJmgHxGzU/5NUn943WD+VBf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731176639; c=relaxed/simple;
	bh=kq0HgFgMu68fbhfk5wbA8RXjzuNO2opVm2h7sGJm1UM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OahBPe4Ffq1z7YmNi30AaNCNqT6sbAEA4wEyaX8OrasMdENZdSNOCDYQjh/at0sUgxKDPYpfg6nFOFLP9VLqCSfILI6uBa6B5EHyvHnn7Ycey6SEKBYT9rHiSCs3DeBNlEvdK3XUwf6M5tmtdpVKQfh0VXTT3Qyj8EexlSj8k9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=eN72TLBD; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vvB5H31tgUpM4qG4v/0WcfNheT0JvDREJderLKJjrc4=; b=eN72TLBDCHOtblxBReVKBpU1df
	LD5vtrb00VQtoi3tv/EemDP0CCvYvqCeTwW9+KGZbyyPJR0sAfNytjKr6o06y07xpPD9+64BgUp9K
	lEQ3Uc+olS0xmYx0RhxK/T4yMSEdsjF3B2l2qiYexLeb80WUhIm6GOxxXx8/ap1tKHULRoMV9YhZT
	0KIAF2lkqCDU9u0GVBLy7Fh4RlO6ubKGP5lFj/EOLBgIsrgya0V9ZhFb9SnXq8A+4h8BW27Hsr3pI
	A0RhC295gEio6HVwed+1fiQo7h29z8Vbm54aLK7mXSmUVkzEDTsAYMuNpYIGf8be3VRgT6IHkT1Jc
	z18jf8kg==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t9q7f-0007Jz-54; Sat, 09 Nov 2024 19:23:47 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ondrej Jirman <megi@xff.cz>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jimmy Hon <honyuenkwun@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Orange Pi 5 Max board
Date: Sat, 09 Nov 2024 19:23:46 +0100
Message-ID: <23718124.6Emhk5qWAg@diego>
In-Reply-To: <20241031031528.23428-4-honyuenkwun@gmail.com>
References:
 <20241031031528.23428-2-honyuenkwun@gmail.com>
 <20241031031528.23428-4-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jimmy,

Am Donnerstag, 31. Oktober 2024, 04:14:51 CET schrieb Jimmy Hon:
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
> new file mode 100644
> index 000000000000..d31b13f99fdc
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
> @@ -0,0 +1,887 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include "rk3588.dtsi"

can you check how similar the rk3588-orangepi--5-max is to the
already existing orangepi-5-plus please?

For rk3588s-orangepi-5 and orangepi-5b we already have this nicely
shared dtsi for commit things, and somehow I assume this might be
similar for 5-plus vs 5-max.

> +
> +/ {
> +	model = "Xunlong Orange Pi 5 Max";
> +	compatible = "xunlong,orangepi-5-max", "rockchip,rk3588";
> +

[...]

> +	/* PMIC_EXT_EN */
> +	vcc_1v1_nldo_s3: vcc-1v1-ndlo-s3-regulator {

vcc_1v1_nldo_s3: regulator-vcc-1v1-ndlo-s3 {

preferred pattern for fixed-regulator nodenames is regulator-......

Same for the othe fixed regulators below.

> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_1v1_nldo_s3";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1100000>;
> +		regulator-max-microvolt = <1100000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	/* pcie eth. not a real regulator. 33VAUX */
> +	vcc_3v3_aux: vcc-3v3-aux-regulator {
> +		compatible = "regulator-fixed";
> +		/* Ethernet_power_en */
> +		gpios = <&gpio0 RK_PD3 GPIO_ACTIVE_LOW>;
> +		regulator-name = "33vaux";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		startup-delay-us = <50000>;
> +		vin-supply = <&vcc_3v3_s3>;
> +	};
> +
> +	vcc3v3_pcie30: vcc3v3-pcie30-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		/* PCIE_PWREN_H */
> +		gpios = <&gpio2 RK_PB6 GPIO_ACTIVE_HIGH>;
> +		regulator-name = "vcc3v3_pcie30";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		startup-delay-us = <5000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	/* Regulator is enabled whenever vcc_1v8_s0 is on */
> +	vcc_3v3_s0: vcc-3v3-s0-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_3v3_s0";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_3v3_s3>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vcc5v0_sys: vcc5v0-sys-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	/* Represents the vcc5v0_usb20 in the schematic */
> +	/* Also represents the vcc5v0_usb30 in the schematic,
> +	   both regulators share the same enable gpio */

please make that one comment block and use appropriate formatting

/*
 * Represents the vcc5v0_usb20 and vcc5v0_usb30 in the schematic,
 * both regulators share the same enable gpio
 */


> +	vcc5v0_host: vcc5v0-host-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		/* USB_HOST_PWREN */
> +		gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usb_host_pwren>;
> +		regulator-name = "vcc5v0_host";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc5v0_usb30_otg: vcc5v0-usb30-otg-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		/* USB_OTG_PWREN */
> +		gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usb_otg_pwren>;
> +		regulator-name = "vcc5v0_usb30_otg";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +};


> +	hym8563: rtc@51 {
> +		compatible = "haoyu,hym8563";
> +		reg = <0x51>;
> +		/* RTC_INT_L */

what does this comment try to explain? If that is the name of the pin,
just name the pinctrl below accordingly (instead of hym8563_int
if applicable) .

> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PC4 IRQ_TYPE_LEVEL_LOW>;
> +		#clock-cells = <0>;
> +		clock-output-names = "hym8563";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hym8563_int>;
> +		wakeup-source;
> +	};
> +};
> +
> +&pwm9 {
> +	pinctrl-names = "active";

this needs to be "default" to actually work

> +	pinctrl-0 = <&pwm9m2_pins>;
> +	status = "okay";
> +};


Thanks
Heiko



