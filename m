Return-Path: <devicetree+bounces-34421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4370839AF9
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 22:21:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2C465B226B4
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 21:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECFC139AE5;
	Tue, 23 Jan 2024 21:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W54GWEoM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D0B2C1AE
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 21:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706044882; cv=none; b=dfcxd/vsjzMp8Zwmp3h+P4iS6vRSosUYFNZj/mTcZoAg4NrqgSins7HJVWoNIeYTbCiVnEwcq3q0rU9fuqAvFGKGApYUbfQ0pB8yS9gjpH9nLUrC8XLpV4LnswGc7GotK02Rr9akSn4RzxxiRaODeFtmYP3lZ1qnZGzD1fScDrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706044882; c=relaxed/simple;
	bh=Y1H2A+5Z9EQXjaxUM0h9jpsEThbZtsnktj3gDx+ykeE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Wzfpvaes21sHqwGgZkLlKsdcizkw5yeJx3EHFBjLmvvcFe76cNCaeW1uZqKA/1Jl05+ku0BQzHRWu39R0McFVeYUNm2XB5cZSIqb6JP7O7SpQrnxB4Dkzdtw4zujO1VZTbZhwdrh3HOOcWbhwXahlQZQF4wih6fiB+iC7hdw2Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W54GWEoM; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6de424cef01so2343037a34.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 13:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706044880; x=1706649680; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WUsZb/Hef6hbGG3VErk0RnqOC/xgv8DmG7DKbj1X9/M=;
        b=W54GWEoMhun618yszUywdKtsuAhjDxv4rs4aLV+PHHnJfJkDyW4lCamUuaMq4+HpvN
         ugI1lE8LEXU8dV9LMeKiDtcEPSQzMIAmsGORpiRtnZcfofrlaXMcBjDbfBsKyzmcl04M
         ClLGc2j5RZiLYZPLjsRLmRXWXkeS8/ebpTdSiErahNNgsldiuhQQURqapeBPQ5H2Liyx
         aq3J3B7NjerZujcR5RckcIP4iWy22kycQxJ+V3ParrNIgY5FIZETaTp2UQT8zcO00qJ0
         SbnfFVFNuWSRsKowuPBLxYIs3AoaMC8BkMX23h72jZ4crCZGgTb+xeb6eZdf3A9i8Ym7
         ztVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706044880; x=1706649680;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WUsZb/Hef6hbGG3VErk0RnqOC/xgv8DmG7DKbj1X9/M=;
        b=TO0Yr/pMWIxz5piRFDIHVsQdCYmwLMl5JfkJioVsouAFUqiHHzSxsVm+ueofgjzzRX
         dypcz6XkPHaTEy92awYkuMn5FHoELJ/c37zH7Nnh8EZZGbahY+8KXZ0iSmuz1HkFxLAo
         OEcGacA1N8VQa40IJ2ZsRFN/Y3JS7bSx3+KHuaBN0o/QtroOoiwP1bXRSBZhVUgcmjgu
         i6dfjBAnS/5j5CNLmGtGJpsFxjY+H1LXLERYSmNbO6VXXAUwe0WJz2ojbH7v4UnhYW/x
         R515FctUHrR9tFvupBSP5LK3Lf6tdDVz52Hcv6jQcBt7yIA9J6cf58thMzRvnEGjDZWj
         R2TA==
X-Gm-Message-State: AOJu0YxFO6sSx8qBPwM+oFPRD5xkbrWiQqr2OgrtbEkcFnFblpLat7xe
	+djbsv4WWoghO+gmkZy6/v+tJlglHZgIkly08nBcFG2ngjkotVma0uw3mA4v
X-Google-Smtp-Source: AGHT+IHoYQTBzj14M376es0XqjB4xp6jJSj7xoJ0LTJO8+DKXJKAOG979Nc4/JF5GA9RlC1AoCLA+A==
X-Received: by 2002:a9d:4814:0:b0:6dc:5d73:d744 with SMTP id c20-20020a9d4814000000b006dc5d73d744mr496801otf.23.1706044880112;
        Tue, 23 Jan 2024 13:21:20 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id w2-20020a9d4502000000b006dc6e40ba97sm2265770ote.72.2024.01.23.13.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 13:21:19 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: add Anbernic RG-ARC S and RG-ARC D
Date: Tue, 23 Jan 2024 15:21:11 -0600
Message-Id: <20240123212111.202146-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240123212111.202146-1-macroalpha82@gmail.com>
References: <20240123212111.202146-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG-ARC S and RG-ARC D devices. These
devices feature the following:
 - Rockchip RK3566 SoC
 - 4 inch 480x640 display (rotated)
 - Goodix multi-touch (ARC D only, untested as I lack the device)
 - 1GB (ARC S) or 2GB (ARC D) of RAM
 - 2 SDMMC slots
 - eMMC (ARC D only)
 - Realtek 8821CS WiFi/Bluetooth
 - External stereo speakers
 - 6 face buttons (A, B, C, X, Y, Z) along with a D-Pad and start and
   select buttons.
 - A PWM vibrator.

Note that the Goodix touchscreen on I2C2 is not defined, as I lack
the necessary hardware to confirm it works correctly with the mainline
driver.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-anbernic-rg-arc-d.dts |  42 ++++
 .../dts/rockchip/rk3566-anbernic-rg-arc-s.dts |  19 ++
 .../dts/rockchip/rk3566-anbernic-rg-arc.dtsi  | 237 ++++++++++++++++++
 4 files changed, 300 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index a7b30e11beaf..647be86ea8a6 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -71,6 +71,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg-arc-d.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg-arc-s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353p.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353ps.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353v.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
new file mode 100644
index 000000000000..795fbedc3c1b
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566-anbernic-rg-arc.dtsi"
+
+/ {
+	model = "Anbernic RG ARC-D";
+	compatible = "anbernic,rg-arc-d", "rockchip,rk3566";
+
+	aliases {
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc0;
+		mmc2 = &sdmmc1;
+		mmc3 = &sdmmc2;
+	};
+};
+
+/*
+ * Unknown Goodix touchscreen at i2c2 0x14. Needs testing before it's
+ * enabled.
+ */
+&i2c2 {
+	pinctrl-0 = <&i2c2m1_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	mmc-hs200-1_8v;
+	non-removable;
+	pinctrl-0 = <&emmc_bus8>, <&emmc_clk>, <&emmc_cmd>,
+		    <&emmc_datastrobe>, <&emmc_rstnout>;
+	pinctrl-names = "default";
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
new file mode 100644
index 000000000000..6264a8c78d0b
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566-anbernic-rg-arc.dtsi"
+
+/ {
+	model = "Anbernic RG ARC-S";
+	compatible = "anbernic,rg-arc-s", "rockchip,rk3566";
+
+	aliases {
+		mmc1 = &sdmmc0;
+		mmc2 = &sdmmc1;
+		mmc3 = &sdmmc2;
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc.dtsi
new file mode 100644
index 000000000000..a4a60e4a53d4
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc.dtsi
@@ -0,0 +1,237 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566-anbernic-rgxx3.dtsi"
+
+/ {
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		power-supply = <&vcc_sys>;
+		pwms = <&pwm4 0 25000 0>;
+	};
+
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3472000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <117000>;
+		voltage-max-design-microvolt = <4172000>;
+		voltage-min-design-microvolt = <3400000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =	<4172000 100>, <4054000 95>, <3984000 90>, <3926000 85>,
+					<3874000 80>, <3826000 75>, <3783000 70>, <3746000 65>,
+					<3714000 60>, <3683000 55>, <3650000 50>, <3628000 45>,
+					<3612000 40>, <3600000 35>, <3587000 30>, <3571000 25>,
+					<3552000 20>, <3525000 15>, <3492000 10>, <3446000 5>,
+					<3400000 0>;
+	};
+
+	/* Channels reversed for both headphones and speakers. */
+	sound {
+		compatible = "simple-audio-card";
+		pinctrl-0 = <&hp_det>;
+		pinctrl-names = "default";
+		simple-audio-card,name = "rk817_ext";
+		simple-audio-card,aux-devs = <&spk_amp>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,hp-det-gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,widgets =
+			"Microphone", "Mic Jack",
+			"Headphone", "Headphones",
+			"Speaker", "Internal Speakers";
+		simple-audio-card,routing =
+			"MICL", "Mic Jack",
+			"Headphones", "HPOL",
+			"Headphones", "HPOR",
+			"Internal Speakers", "Speaker Amp OUTL",
+			"Internal Speakers", "Speaker Amp OUTR",
+			"Speaker Amp INL", "HPOL",
+			"Speaker Amp INR", "HPOR";
+		simple-audio-card,pin-switches = "Internal Speakers";
+
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+	};
+
+	spk_amp: audio-amplifier {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&spk_amp_enable_h>;
+		pinctrl-names = "default";
+		sound-name-prefix = "Speaker Amp";
+	};
+};
+
+&cru {
+	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
+			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <32768>, <1200000000>,
+			       <200000000>, <128000000>;
+};
+
+&dsi_dphy0 {
+	status = "okay";
+};
+
+&dsi0 {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	ports {
+		dsi0_in: port@0 {
+			reg = <0>;
+			dsi0_in_vp1: endpoint {
+				remote-endpoint = <&vp1_out_dsi0>;
+			};
+		};
+
+		dsi0_out: port@1 {
+			reg = <1>;
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+
+	panel: panel@0 {
+		compatible = "anbernic,rg-arc-panel", "sitronix,st7701";
+		reg = <0>;
+		backlight = <&backlight>;
+		IOVCC-supply = <&vcc3v3_lcd0_n>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_rst>;
+		reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_HIGH>;
+		rotation = <90>;
+		VCC-supply = <&vcc3v3_lcd0_n>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
+/*
+ * Device uses a non-standard six button layout for a gamepad with X,
+ * Y, and Z on the top row of buttons and A, B, and C under the bottom
+ * row.
+ */
+&gpio_keys_control {
+	button-a {
+		gpios = <&gpio3 RK_PC3 GPIO_ACTIVE_LOW>;
+		label = "A";
+		linux,code = <BTN_A>;
+	};
+
+	button-b {
+		gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
+		label = "B";
+		linux,code = <BTN_B>;
+	};
+
+	button-c {
+		gpios = <&gpio3 RK_PA2 GPIO_ACTIVE_LOW>;
+		label = "C";
+		linux,code = <BTN_C>;
+	};
+
+	button-left {
+		gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
+		label = "DPAD-LEFT";
+		linux,code = <BTN_DPAD_LEFT>;
+	};
+
+	button-r1 {
+		gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
+		label = "TR";
+		linux,code = <BTN_TR>;
+	};
+
+	button-r2 {
+		gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
+		label = "TR2";
+		linux,code = <BTN_TR2>;
+	};
+
+	button-right {
+		gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
+		label = "DPAD-RIGHT";
+		linux,code = <BTN_DPAD_RIGHT>;
+	};
+
+	button-x {
+		gpios = <&gpio3 RK_PC0 GPIO_ACTIVE_LOW>;
+		label = "X";
+		linux,code = <BTN_X>;
+	};
+
+	button-y {
+		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
+		label = "Y";
+		linux,code = <BTN_Y>;
+	};
+
+	button-z {
+		gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_LOW>;
+		label = "Z";
+		linux,code = <BTN_Z>;
+	};
+};
+
+&pinctrl {
+	audio-amplifier {
+		spk_amp_enable_h: spk-amp-enable-h {
+			rockchip,pins =
+				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	gpio-lcd {
+		lcd_rst: lcd-rst {
+			rockchip,pins =
+				<4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	headphone {
+		hp_det: hp-det {
+			rockchip,pins =
+				<4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm4 {
+	status = "okay";
+};
+
+&rk817 {
+	rk817_charger: charger {
+		monitored-battery = <&battery>;
+		rockchip,resistor-sense-micro-ohms = <10000>;
+		rockchip,sleep-enter-current-microamp = <300000>;
+		rockchip,sleep-filter-current-microamp = <100000>;
+	};
+};
+
+&vp1 {
+	vp1_out_dsi0: endpoint@ROCKCHIP_VOP2_EP_MIPI0 {
+		reg = <ROCKCHIP_VOP2_EP_MIPI0>;
+		remote-endpoint = <&dsi0_in_vp1>;
+	};
+};
-- 
2.34.1


