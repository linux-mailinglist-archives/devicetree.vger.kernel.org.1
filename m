Return-Path: <devicetree+bounces-2459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4EE7AADF5
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 11:31:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id D90071F2258E
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 09:31:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5B091DDE7;
	Fri, 22 Sep 2023 09:31:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70401DDC6
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 09:31:27 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id DF9E91701
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 02:31:22 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 99CDCDA7;
	Fri, 22 Sep 2023 02:31:59 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F0E3C3F5A1;
	Fri, 22 Sep 2023 02:31:20 -0700 (PDT)
Date: Fri, 22 Sep 2023 10:31:18 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 mripard@kernel.org, uwu@icenowy.me, samuel@sholland.org,
 jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, Chris Morgan
 <macromorgan@hotmail.com>
Subject: Re: [PATCH V5 4/4] ARM: dts: sunxi: add support for Anbernic
 RG-Nano
Message-ID: <20230922103118.7b654d14@donnerap.manchester.arm.com>
In-Reply-To: <20230921135136.97491-5-macroalpha82@gmail.com>
References: <20230921135136.97491-1-macroalpha82@gmail.com>
	<20230921135136.97491-5-macroalpha82@gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, 21 Sep 2023 08:51:36 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

Hi,

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Anbernic RG-Nano is a small portable game device based on the
> Allwinner V3s SoC. It has GPIO buttons on the face and side for
> input, a single mono speaker, a 240x240 SPI controlled display, a USB-C
> OTG port, an SD card slot for booting, and 64MB of RAM included in the
> SoC. There does not appear to be a crystal feeding the internal RTC so
> it does not keep proper time (for me it ran 8 hours slow in a 24 hour
> period). External RTC works just fine.

That whole situation is still a bit odd: why is there an external RTC to
begin with? And did they really save on the 32KHz oscillator, in favour of
attaching a whole I2C RTC chip? Maybe something is off with the V3 RTC in
general, and just nobody noticed or cared so far?
Anyways, I think the DT is fine now, I see all the comments addressed, and
dtc and dt-validate are happy:

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> Working/Tested:
> - SDMMC
> - UART (for debugging)
> - Buttons
> - Charging/battery/PMIC
> - Speaker
> - RTC (external RTC)
> - USB
> - Display
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm/boot/dts/allwinner/Makefile          |   1 +
>  .../allwinner/sun8i-v3s-anbernic-rg-nano.dts  | 284 ++++++++++++++++++
>  2 files changed, 285 insertions(+)
>  create mode 100644 arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts
> 
> diff --git a/arch/arm/boot/dts/allwinner/Makefile b/arch/arm/boot/dts/allwinner/Makefile
> index eebb5a0c873a..2d26c3397f14 100644
> --- a/arch/arm/boot/dts/allwinner/Makefile
> +++ b/arch/arm/boot/dts/allwinner/Makefile
> @@ -256,6 +256,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
>  	sun8i-t113s-mangopi-mq-r-t113.dtb \
>  	sun8i-t3-cqa3t-bv3.dtb \
>  	sun8i-v3-sl631-imx179.dtb \
> +	sun8i-v3s-anbernic-rg-nano.dtb \
>  	sun8i-v3s-licheepi-zero.dtb \
>  	sun8i-v3s-licheepi-zero-dock.dtb \
>  	sun8i-v40-bananapi-m2-berry.dtb
> diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts b/arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts
> new file mode 100644
> index 000000000000..1a4429dc57b1
> --- /dev/null
> +++ b/arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts
> @@ -0,0 +1,284 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include "sun8i-v3s.dtsi"
> +#include "sunxi-common-regulators.dtsi"
> +
> +/ {
> +	model = "Anbernic RG Nano";
> +	compatible = "anbernic,rg-nano", "allwinner,sun8i-v3s";
> +
> +	aliases {
> +		rtc0 = &pcf8563;
> +		rtc1 = &rtc;
> +		serial0 = &uart0;
> +	};
> +
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		brightness-levels = <0 1 2 3 8 14 21 32 46 60 80 100>;
> +		default-brightness-level = <11>;
> +		power-supply = <&reg_vcc5v0>;
> +		pwms = <&pwm 0 40000 1>;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	gpio_keys: gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		button-a {
> +			gpios = <&gpio_expander 12 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +			label = "BTN-A";
> +			linux,code = <BTN_EAST>;
> +		};
> +
> +		button-b {
> +			gpios = <&gpio_expander 14 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +			label = "BTN-B";
> +			linux,code = <BTN_SOUTH>;
> +		};
> +
> +		button-down {
> +			gpios = <&gpio_expander 1 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +			label = "DPAD-DOWN";
> +			linux,code = <BTN_DPAD_DOWN>;
> +		};
> +
> +		button-left {
> +			gpios = <&gpio_expander 4 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +			label = "DPAD-LEFT";
> +			linux,code = <BTN_DPAD_LEFT>;
> +		};
> +
> +		button-right {
> +			gpios = <&gpio_expander 0 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +			label = "DPAD-RIGHT";
> +			linux,code = <BTN_DPAD_RIGHT>;
> +		};
> +
> +		button-se {
> +			gpios = <&gpio_expander 7 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +			label = "BTN-SELECT";
> +			linux,code = <BTN_SELECT>;
> +		};
> +
> +		button-st {
> +			gpios = <&gpio_expander 6 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +			label = "BTN-START";
> +			linux,code = <BTN_START>;
> +		};
> +
> +		button-tl {
> +			gpios = <&gpio_expander 2 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +			label = "BTN-L";
> +			linux,code = <BTN_TL>;
> +		};
> +
> +		button-tr {
> +			gpios = <&gpio_expander 15 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +			label = "BTN-R";
> +			linux,code = <BTN_TR>;
> +		};
> +
> +		button-up {
> +			gpios = <&gpio_expander 3 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +			label = "DPAD-UP";
> +			linux,code = <BTN_DPAD_UP>;
> +		};
> +
> +		button-x {
> +			gpios = <&gpio_expander 11 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +			label = "BTN-X";
> +			linux,code = <BTN_NORTH>;
> +		};
> +
> +		button-y {
> +			gpios = <&gpio_expander 13 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +			label = "BTN-Y";
> +			linux,code = <BTN_WEST>;
> +		};
> +	};
> +};
> +
> +&codec {
> +	allwinner,audio-routing = "Speaker", "HP",
> +				  "MIC1", "Mic",
> +				  "Mic", "HBIAS";
> +	allwinner,pa-gpios = <&pio 5 6 (GPIO_ACTIVE_HIGH | GPIO_PULL_UP)>; /* PF6 */
> +	status = "okay";
> +};
> +
> +&ehci {
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	gpio_expander: gpio@20 {
> +		compatible = "nxp,pcal6416";
> +		reg = <0x20>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		#interrupt-cells = <2>;
> +		interrupt-controller;
> +		interrupt-parent = <&pio>;
> +		interrupts = <1 3 IRQ_TYPE_EDGE_BOTH>; /* PB3/EINT3 */
> +		vcc-supply = <&reg_vcc3v3>;
> +	};
> +
> +	axp209: pmic@34 {
> +		reg = <0x34>;
> +		interrupt-parent = <&pio>;
> +		interrupts = <1 5 IRQ_TYPE_EDGE_FALLING>; /* PB5/EINT5 */
> +	};
> +
> +	pcf8563: rtc@51 {
> +		compatible = "nxp,pcf8563";
> +		reg = <0x51>;
> +	};
> +};
> +
> +#include "axp209.dtsi"
> +
> +&battery_power_supply {
> +	status = "okay";
> +};
> +
> +&mmc0 {
> +	broken-cd;
> +	bus-width = <4>;
> +	disable-wp;
> +	vmmc-supply = <&reg_vcc3v3>;
> +	vqmmc-supply = <&reg_vcc3v3>;
> +	status = "okay";
> +};
> +
> +&ohci {
> +	status = "okay";
> +};
> +
> +&pio {
> +	vcc-pb-supply = <&reg_vcc3v3>;
> +	vcc-pc-supply = <&reg_vcc3v3>;
> +	vcc-pf-supply = <&reg_vcc3v3>;
> +	vcc-pg-supply = <&reg_vcc3v3>;
> +
> +	spi0_no_miso_pins: spi0-no-miso-pins {
> +		pins = "PC1", "PC2", "PC3";
> +		function = "spi0";
> +	};
> +};
> +
> +&pwm {
> +	pinctrl-0 = <&pwm0_pin>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
> +
> +/* DCDC2 wired into vdd-cpu, vdd-sys, and vdd-ephy. */
> +&reg_dcdc2 {
> +	regulator-always-on;
> +	regulator-max-microvolt = <1250000>;
> +	regulator-min-microvolt = <1250000>;
> +	regulator-name = "vdd-cpu";
> +};
> +
> +/* DCDC3 wired into every 3.3v input that isn't the RTC. */
> +&reg_dcdc3 {
> +	regulator-always-on;
> +	regulator-max-microvolt = <3300000>;
> +	regulator-min-microvolt = <3300000>;
> +	regulator-name = "vcc-io";
> +};
> +
> +/*
> + * LDO1 wired into RTC, voltage is hard-wired at 3.3v and cannot be
> + * software modified. Note that setting voltage here to 3.3v for accuracy
> + * sake causes an issue with the driver that causes it to fail to probe
> + * because of a voltage constraint in the driver.
> + */
> +&reg_ldo1 {
> +	regulator-always-on;
> +	regulator-name = "vcc-rtc";
> +};
> +
> +/* LDO2 wired into VCC-PLL and audio codec. */
> +&reg_ldo2 {
> +	regulator-always-on;
> +	regulator-max-microvolt = <3000000>;
> +	regulator-min-microvolt = <3000000>;
> +	regulator-name = "vcc-pll";
> +};
> +
> +/* LDO3, LDO4, and LDO5 unused. */
> +&reg_ldo3 {
> +	status = "disabled";
> +};
> +
> +&reg_ldo4 {
> +	status = "disabled";
> +};
> +
> +/*
> + * Force the driver to use internal oscillator by removing clocks
> + * property.
> + */
> +&rtc {
> +	/delete-property/ clocks;
> +};
> +
> +&spi0 {
> +	pinctrl-0 = <&spi0_no_miso_pins>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +
> +	display@0 {
> +		compatible = "saef,sftc154b", "panel-mipi-dbi-spi";
> +		reg = <0>;
> +		backlight = <&backlight>;
> +		dc-gpios = <&pio 2 0 GPIO_ACTIVE_HIGH>; /* PC0 */
> +		reset-gpios = <&pio 1 2 GPIO_ACTIVE_HIGH>; /* PB2 */
> +		spi-max-frequency = <100000000>;
> +
> +		height-mm = <39>;
> +		width-mm = <39>;
> +
> +		/* Set hb-porch to compensate for non-visible area */
> +		panel-timing {
> +			hactive = <240>;
> +			vactive = <240>;
> +			hback-porch = <80>;
> +			vback-porch = <0>;
> +			clock-frequency = <0>;
> +			hfront-porch = <0>;
> +			hsync-len = <0>;
> +			vfront-porch = <0>;
> +			vsync-len = <0>;
> +		};
> +	};
> +};
> +
> +&uart0 {
> +	pinctrl-0 = <&uart0_pb_pins>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
> +
> +&usb_otg {
> +	dr_mode = "otg";
> +	status = "okay";
> +};
> +
> +&usb_power_supply {
> +	status = "okay";
> +};
> +
> +&usbphy {
> +	usb0_id_det-gpios = <&pio 6 5 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>; /* PG5 */
> +	status = "okay";
> +};


