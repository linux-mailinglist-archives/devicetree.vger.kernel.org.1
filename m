Return-Path: <devicetree+bounces-4662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F9A7B35F5
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:45:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 0693A1C20A0A
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC0F451232;
	Fri, 29 Sep 2023 14:45:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3EEC4122F
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 14:45:02 +0000 (UTC)
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46693F9
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:45:01 -0700 (PDT)
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-57b706f604aso6919449eaf.0
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695998700; x=1696603500; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6dth1JHhElh+8t5WXlvtargLlLYdWjM3EKg036z9hnE=;
        b=DatbZN30LzcQsLQfUqDO1v1HrBoOfknBdv3pIxLp/2U2PO4me9J2igSnFl3e4uBJAm
         jrhmfkno+e8KcOfbRQoBODKWXiCjdCq8QqNFagAIkpJ1ozFgmm2D0PqzfZ4NOPNWHUXl
         L70XUmXf38jBfdiqLDqJZV/cedYnU/C5j30td/Mi1ChsqqYNMEApUxxsyUq5R3hOIN0a
         XiA1EnU6VLZmGAG9cCHuxoP8agMl5Y9aGHAjH6va+DYLOZ4dd7onBY8D82kg2UCa0hdb
         iyj6DAriwsT5w6RQR9V3bIOnKCHf5vWp7FUDfSoNPtFHtkxPFdqwMEE8aWc0j0dem3g/
         JFCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695998700; x=1696603500;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6dth1JHhElh+8t5WXlvtargLlLYdWjM3EKg036z9hnE=;
        b=Dx+LkclKcDLCBMnkVH2T2MINIkyC+lqz7yPV4LkxP3i6I8ohSZvECgDtJYdXQcxMhP
         bpaTEa5f9pOp5NCd1wCI3PEItn9083KG/FVy3tSsFIEJBuheSNWxhfOhxhH3VBFNnRzW
         0+v1A3MHE5U4F58fCbNX2fP/AIdM5BGIy4qdf5ivZ4LtAP3vvcc/+OokK+5PqIp7m8rq
         JJthib/Kuw33SmRElCna3aCqLC7/HwzK55+YZj05NwWoHILaQ74dVg2JwT+mTyFlQ1t9
         0FtSRTN21aoxTIfaqqxLr2nf/AiMGznOq6WFpmrgraGWtYacPK92r4d6rvhOdgDoEbHs
         CzbQ==
X-Gm-Message-State: AOJu0YwnY6rt7TUjaiVgzgFlL5iLUg+PyKKPOT/WUtbH8AwMrc5l8W+J
	T6SZHvVBs7ghPdgabvfL8dw=
X-Google-Smtp-Source: AGHT+IFesedV9Uyf66BwThGnCqZcOy4QEwu2bb6772+xNUMNQ1acLKbKh/T7qQ1QxDIBV+Nt9dA5rA==
X-Received: by 2002:a4a:92dd:0:b0:57b:92f2:1f64 with SMTP id j29-20020a4a92dd000000b0057b92f21f64mr4280649ooh.8.1695998700504;
        Fri, 29 Sep 2023 07:45:00 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id q19-20020a9d6653000000b006b753685cc5sm3012619otm.79.2023.09.29.07.44.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 07:44:59 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	uwu@icenowy.me,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	andre.przywara@arm.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V6 4/4] ARM: dts: sunxi: add support for Anbernic RG-Nano
Date: Fri, 29 Sep 2023 09:44:41 -0500
Message-Id: <20230929144441.3409-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230929144441.3409-1-macroalpha82@gmail.com>
References: <20230929144441.3409-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Chris Morgan <macromorgan@hotmail.com>

The Anbernic RG-Nano is a small portable game device based on the
Allwinner V3s SoC. It has GPIO buttons on the face and side for
input, a single mono speaker, a 240x240 SPI controlled display, a USB-C
OTG port, an SD card slot for booting, and 64MB of RAM included in the
SoC. There does not appear to be a crystal feeding the internal RTC so
it does not keep proper time (for me it ran 8 hours slow in a 24 hour
period). External RTC works just fine.

Working/Tested:
- SDMMC
- UART (for debugging)
- Buttons
- Charging/battery/PMIC
- Speaker
- RTC (external RTC)
- USB
- Display

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Reviewed-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm/boot/dts/allwinner/Makefile          |   1 +
 .../allwinner/sun8i-v3s-anbernic-rg-nano.dts  | 276 ++++++++++++++++++
 2 files changed, 277 insertions(+)
 create mode 100644 arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts

diff --git a/arch/arm/boot/dts/allwinner/Makefile b/arch/arm/boot/dts/allwinner/Makefile
index eebb5a0c873a..2d26c3397f14 100644
--- a/arch/arm/boot/dts/allwinner/Makefile
+++ b/arch/arm/boot/dts/allwinner/Makefile
@@ -256,6 +256,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
 	sun8i-t113s-mangopi-mq-r-t113.dtb \
 	sun8i-t3-cqa3t-bv3.dtb \
 	sun8i-v3-sl631-imx179.dtb \
+	sun8i-v3s-anbernic-rg-nano.dtb \
 	sun8i-v3s-licheepi-zero.dtb \
 	sun8i-v3s-licheepi-zero-dock.dtb \
 	sun8i-v40-bananapi-m2-berry.dtb
diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts b/arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts
new file mode 100644
index 000000000000..f34dfdf1566d
--- /dev/null
+++ b/arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts
@@ -0,0 +1,276 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+#include <dt-bindings/input/linux-event-codes.h>
+#include "sun8i-v3s.dtsi"
+#include "sunxi-common-regulators.dtsi"
+
+/ {
+	model = "Anbernic RG Nano";
+	compatible = "anbernic,rg-nano", "allwinner,sun8i-v3s";
+
+	aliases {
+		rtc0 = &pcf8563;
+		rtc1 = &rtc;
+		serial0 = &uart0;
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		brightness-levels = <0 1 2 3 8 14 21 32 46 60 80 100>;
+		default-brightness-level = <11>;
+		power-supply = <&reg_vcc5v0>;
+		pwms = <&pwm 0 40000 1>;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	gpio_keys: gpio-keys {
+		compatible = "gpio-keys";
+
+		button-a {
+			gpios = <&gpio_expander 12 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "BTN-A";
+			linux,code = <BTN_EAST>;
+		};
+
+		button-b {
+			gpios = <&gpio_expander 14 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "BTN-B";
+			linux,code = <BTN_SOUTH>;
+		};
+
+		button-down {
+			gpios = <&gpio_expander 1 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "DPAD-DOWN";
+			linux,code = <BTN_DPAD_DOWN>;
+		};
+
+		button-left {
+			gpios = <&gpio_expander 4 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "DPAD-LEFT";
+			linux,code = <BTN_DPAD_LEFT>;
+		};
+
+		button-right {
+			gpios = <&gpio_expander 0 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "DPAD-RIGHT";
+			linux,code = <BTN_DPAD_RIGHT>;
+		};
+
+		button-se {
+			gpios = <&gpio_expander 7 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "BTN-SELECT";
+			linux,code = <BTN_SELECT>;
+		};
+
+		button-st {
+			gpios = <&gpio_expander 6 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "BTN-START";
+			linux,code = <BTN_START>;
+		};
+
+		button-tl {
+			gpios = <&gpio_expander 2 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "BTN-L";
+			linux,code = <BTN_TL>;
+		};
+
+		button-tr {
+			gpios = <&gpio_expander 15 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "BTN-R";
+			linux,code = <BTN_TR>;
+		};
+
+		button-up {
+			gpios = <&gpio_expander 3 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "DPAD-UP";
+			linux,code = <BTN_DPAD_UP>;
+		};
+
+		button-x {
+			gpios = <&gpio_expander 11 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "BTN-X";
+			linux,code = <BTN_NORTH>;
+		};
+
+		button-y {
+			gpios = <&gpio_expander 13 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+			label = "BTN-Y";
+			linux,code = <BTN_WEST>;
+		};
+	};
+};
+
+&codec {
+	allwinner,audio-routing = "Speaker", "HP",
+				  "MIC1", "Mic",
+				  "Mic", "HBIAS";
+	allwinner,pa-gpios = <&pio 5 6 (GPIO_ACTIVE_HIGH | GPIO_PULL_UP)>; /* PF6 */
+	status = "okay";
+};
+
+&ehci {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	gpio_expander: gpio@20 {
+		compatible = "nxp,pcal6416";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupt-parent = <&pio>;
+		interrupts = <1 3 IRQ_TYPE_EDGE_BOTH>; /* PB3/EINT3 */
+		vcc-supply = <&reg_vcc3v3>;
+	};
+
+	axp209: pmic@34 {
+		reg = <0x34>;
+		interrupt-parent = <&pio>;
+		interrupts = <1 5 IRQ_TYPE_EDGE_FALLING>; /* PB5/EINT5 */
+	};
+
+	pcf8563: rtc@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+};
+
+#include "axp209.dtsi"
+
+&battery_power_supply {
+	status = "okay";
+};
+
+&mmc0 {
+	broken-cd;
+	bus-width = <4>;
+	disable-wp;
+	vmmc-supply = <&reg_vcc3v3>;
+	vqmmc-supply = <&reg_vcc3v3>;
+	status = "okay";
+};
+
+&ohci {
+	status = "okay";
+};
+
+&pio {
+	vcc-pb-supply = <&reg_vcc3v3>;
+	vcc-pc-supply = <&reg_vcc3v3>;
+	vcc-pf-supply = <&reg_vcc3v3>;
+	vcc-pg-supply = <&reg_vcc3v3>;
+
+	spi0_no_miso_pins: spi0-no-miso-pins {
+		pins = "PC1", "PC2", "PC3";
+		function = "spi0";
+	};
+};
+
+&pwm {
+	pinctrl-0 = <&pwm0_pin>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+/* DCDC2 wired into vdd-cpu, vdd-sys, and vdd-ephy. */
+&reg_dcdc2 {
+	regulator-always-on;
+	regulator-max-microvolt = <1250000>;
+	regulator-min-microvolt = <1250000>;
+	regulator-name = "vdd-cpu";
+};
+
+/* DCDC3 wired into every 3.3v input that isn't the RTC. */
+&reg_dcdc3 {
+	regulator-always-on;
+	regulator-max-microvolt = <3300000>;
+	regulator-min-microvolt = <3300000>;
+	regulator-name = "vcc-io";
+};
+
+/* LDO1 wired into RTC, voltage is hard-wired at 3.3v. */
+&reg_ldo1 {
+	regulator-always-on;
+	regulator-name = "vcc-rtc";
+};
+
+/* LDO2 wired into VCC-PLL and audio codec. */
+&reg_ldo2 {
+	regulator-always-on;
+	regulator-max-microvolt = <3000000>;
+	regulator-min-microvolt = <3000000>;
+	regulator-name = "vcc-pll";
+};
+
+/* LDO3, LDO4, and LDO5 unused. */
+&reg_ldo3 {
+	status = "disabled";
+};
+
+&reg_ldo4 {
+	status = "disabled";
+};
+
+/* RTC uses internal oscillator */
+&rtc {
+	/delete-property/ clocks;
+};
+
+&spi0 {
+	pinctrl-0 = <&spi0_no_miso_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	display@0 {
+		compatible = "saef,sftc154b", "panel-mipi-dbi-spi";
+		reg = <0>;
+		backlight = <&backlight>;
+		dc-gpios = <&pio 2 0 GPIO_ACTIVE_HIGH>; /* PC0 */
+		reset-gpios = <&pio 1 2 GPIO_ACTIVE_HIGH>; /* PB2 */
+		spi-max-frequency = <100000000>;
+
+		height-mm = <39>;
+		width-mm = <39>;
+
+		/* Set hb-porch to compensate for non-visible area */
+		panel-timing {
+			hactive = <240>;
+			vactive = <240>;
+			hback-porch = <80>;
+			vback-porch = <0>;
+			clock-frequency = <0>;
+			hfront-porch = <0>;
+			hsync-len = <0>;
+			vfront-porch = <0>;
+			vsync-len = <0>;
+		};
+	};
+};
+
+&uart0 {
+	pinctrl-0 = <&uart0_pb_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&usb_otg {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&usb_power_supply {
+	status = "okay";
+};
+
+&usbphy {
+	usb0_id_det-gpios = <&pio 6 5 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>; /* PG5 */
+	status = "okay";
+};
-- 
2.34.1


