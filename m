Return-Path: <devicetree+bounces-6428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BC07BB55B
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:35:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AA0331C209E8
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 10:35:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0F4E125B7;
	Fri,  6 Oct 2023 10:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="gHEoT7Zh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BBA615AE3
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 10:35:14 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4A61D6
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 03:35:08 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40666aa674fso17785325e9.0
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 03:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696588507; x=1697193307; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=On741AyZ3AKo8NQuV3fMiGYE0rRhzhS6sjOJ83S5SHA=;
        b=gHEoT7ZhBL/tepytlSiWUoBFKt1EaUBF0AK7Ln5I5YYsfQSqe8JATA0/tLyyJXLbNK
         lKUyGfv8IC/AXk9t+iOy0VCgbbl/tpWqdfWCYrFjLs+SkA4g/YAdZBETQZlukRS+FVgo
         9KLszaBj3Bn27WkDIT3mFIgcdaht7DyOBRIXyZYb2RRrI5LYvcPshWKzr1isFMuWtmRK
         ztdRr0xdxeqbS3eeSntOxOEJgiIi0Jw0gyCM17TeIST5nojE96tCOcc/J9gX5D5MDPME
         chG8CId6vvec32weRPxhIUywW+CBXJ2KrPvfOhOIhzjF+Ity/Us7CB+4O2lmzs+YdRhe
         qiAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696588507; x=1697193307;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=On741AyZ3AKo8NQuV3fMiGYE0rRhzhS6sjOJ83S5SHA=;
        b=KORPdEnRjFz9CDIhWHdFyUsnJ9ienpk2OwMqoFgpClqdXVwtsa9OAvwbYXrayiIt1B
         B8ltlWIzvyMTTY4tcbrwmyDN+EHVketY5+jbfv+Si17PgXF9rGlx2g/DJvN5sCqIM77+
         6iZBXzjQ3BWh+q482E5f4JC4v87wD7GibC0xyV/Q2zpFjeDKeeTJrZcMnCFygwxbWStx
         30QP8PUqVHhyB0zRAjpAGY6PEG7hhrh9YllIo4TOYGMgLW1QxchNpn6bQ3gc1oMwkSYr
         hR8RczT47VG8UpGTaJmvK3SplcdImpgcBXTSWH1sJsYImNKcxxAzK4mW+Qbvt+W0ZMmW
         xIng==
X-Gm-Message-State: AOJu0Yyf6EftXycmINmmZeKxsDUIJV4eRiQrfjN9E6hQOJfqXg8wIYBQ
	tP8v3jFv1HUrb014s2M5RPho8g==
X-Google-Smtp-Source: AGHT+IGIm+e4NLR4VvBVpaywY77NbZT5zN8n7sOpe30EySRXGi7zN4SVkPlud8DKvYDc9bf3o2ZMBg==
X-Received: by 2002:a1c:f710:0:b0:400:ce4f:f184 with SMTP id v16-20020a1cf710000000b00400ce4ff184mr7319582wmh.41.1696588507105;
        Fri, 06 Oct 2023 03:35:07 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:8f44:72b3:5bcb:6c6b])
        by smtp.googlemail.com with ESMTPSA id l9-20020a1c7909000000b00401b242e2e6sm5664963wme.47.2023.10.06.03.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 03:35:06 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Da Xue <da.xue@libretech.co>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org
Subject: [PATCH v2 2/2] arm64: dts: amlogic: add libretech cottonwood support
Date: Fri,  6 Oct 2023 12:35:00 +0200
Message-Id: <20231006103500.2015183-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231006103500.2015183-1-jbrunet@baylibre.com>
References: <20231006103500.2015183-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add support for the Libretech cottonwood board family.
These 2 boards are based on the same PCB, with an RPi B form factor.

The "Alta" board uses an a311d while the "Solitude" variant uses an s905d3.

Co-developed-by: Da Xue <da.xue@libretech.co>
Signed-off-by: Da Xue <da.xue@libretech.co>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/Makefile          |   2 +
 .../amlogic/meson-g12b-a311d-libretech-cc.dts | 121 ++++
 .../amlogic/meson-libretech-cottonwood.dtsi   | 614 ++++++++++++++++++
 .../amlogic/meson-sm1-s905d3-libretech-cc.dts |  89 +++
 4 files changed, 826 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-s905d3-libretech-cc.dts

diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
index 4ce401d17b63..cc8b34bd583d 100644
--- a/arch/arm64/boot/dts/amlogic/Makefile
+++ b/arch/arm64/boot/dts/amlogic/Makefile
@@ -18,6 +18,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-g12b-bananapi-cm4-cm4io.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-gsking-x.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-gtking-pro.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-gtking.dtb
+dtb-$(CONFIG_ARCH_MESON) += meson-g12b-a311d-libretech-cc.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-go-ultra.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2-plus.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
@@ -73,6 +74,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-sm1-bananapi-m2-pro.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-sm1-bananapi-m5.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-sm1-h96-max.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-sm1-khadas-vim3l.dtb
+dtb-$(CONFIG_ARCH_MESON) += meson-sm1-s905d3-libretech-cc.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-sm1-odroid-c4.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-sm1-odroid-hc4.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-sm1-sei610.dtb
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts
new file mode 100644
index 000000000000..65b963d794cd
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts
@@ -0,0 +1,121 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 BayLibre, SAS.
+ * Author: Jerome Brunet <jbrunet@baylibre.com>
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/clock/g12a-clkc.h>
+#include "meson-g12b-a311d.dtsi"
+#include "meson-libretech-cottonwood.dtsi"
+
+/ {
+	compatible = "libretech,aml-a311d-cc", "amlogic,a311d", "amlogic,g12b";
+	model = "Libre Computer AML-A311D-CC Alta";
+
+	vddcpu_a: regulator-vddcpu-a {
+		compatible = "pwm-regulator";
+		regulator-name = "VDDCPU_A";
+		regulator-min-microvolt = <730000>;
+		regulator-max-microvolt = <1011000>;
+		regulator-boot-on;
+		regulator-always-on;
+		pwm-supply = <&dc_in>;
+		pwms = <&pwm_ab 0 1250 0>;
+		pwm-dutycycle-range = <100 0>;
+	};
+
+	sound {
+		model = "LC-ALTA";
+		audio-routing = "TDMOUT_A IN 0", "FRDDR_A OUT 0",
+				"TDMOUT_A IN 1", "FRDDR_B OUT 0",
+				"TDMOUT_A IN 2", "FRDDR_C OUT 0",
+				"TDM_A Playback", "TDMOUT_A OUT",
+				"TDMOUT_B IN 0", "FRDDR_A OUT 1",
+				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
+				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
+				"TDM_B Playback", "TDMOUT_B OUT",
+				"TDMOUT_C IN 0", "FRDDR_A OUT 2",
+				"TDMOUT_C IN 1", "FRDDR_B OUT 2",
+				"TDMOUT_C IN 2", "FRDDR_C OUT 2",
+				"TDM_C Playback", "TDMOUT_C OUT",
+				"TDMIN_A IN 0", "TDM_A Capture",
+				"TDMIN_B IN 0", "TDM_A Capture",
+				"TDMIN_C IN 0", "TDM_A Capture",
+				"TDMIN_A IN 3", "TDM_A Loopback",
+				"TDMIN_B IN 3", "TDM_A Loopback",
+				"TDMIN_C IN 3", "TDM_A Loopback",
+				"TDMIN_A IN 1", "TDM_B Capture",
+				"TDMIN_B IN 1", "TDM_B Capture",
+				"TDMIN_C IN 1", "TDM_B Capture",
+				"TDMIN_A IN 4", "TDM_B Loopback",
+				"TDMIN_B IN 4", "TDM_B Loopback",
+				"TDMIN_C IN 4", "TDM_B Loopback",
+				"TDMIN_A IN 2", "TDM_C Capture",
+				"TDMIN_B IN 2", "TDM_C Capture",
+				"TDMIN_C IN 2", "TDM_C Capture",
+				"TDMIN_A IN 5", "TDM_C Loopback",
+				"TDMIN_B IN 5", "TDM_C Loopback",
+				"TDMIN_C IN 5", "TDM_C Loopback",
+				"TODDR_A IN 0", "TDMIN_A OUT",
+				"TODDR_B IN 0", "TDMIN_A OUT",
+				"TODDR_C IN 0", "TDMIN_A OUT",
+				"TODDR_A IN 1", "TDMIN_B OUT",
+				"TODDR_B IN 1", "TDMIN_B OUT",
+				"TODDR_C IN 1", "TDMIN_B OUT",
+				"TODDR_A IN 2", "TDMIN_C OUT",
+				"TODDR_B IN 2", "TDMIN_C OUT",
+				"TODDR_C IN 2", "TDMIN_C OUT",
+				"Lineout", "ACODEC LOLP",
+				"Lineout", "ACODEC LORP";
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vddcpu_b>;
+	operating-points-v2 = <&cpu_opp_table_0>;
+	clocks = <&clkc CLKID_CPU_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu1 {
+	cpu-supply = <&vddcpu_b>;
+	operating-points-v2 = <&cpu_opp_table_0>;
+	clocks = <&clkc CLKID_CPU_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu100 {
+	cpu-supply = <&vddcpu_a>;
+	operating-points-v2 = <&cpub_opp_table_1>;
+	clocks = <&clkc CLKID_CPUB_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu101 {
+	cpu-supply = <&vddcpu_a>;
+	operating-points-v2 = <&cpub_opp_table_1>;
+	clocks = <&clkc CLKID_CPUB_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu102 {
+	cpu-supply = <&vddcpu_a>;
+	operating-points-v2 = <&cpub_opp_table_1>;
+	clocks = <&clkc CLKID_CPUB_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu103 {
+	cpu-supply = <&vddcpu_a>;
+	operating-points-v2 = <&cpub_opp_table_1>;
+	clocks = <&clkc CLKID_CPUB_CLK>;
+	clock-latency = <50000>;
+};
+
+&pwm_ab {
+	pinctrl-0 = <&pwm_a_e_pins>, <&pwm_b_x7_pins>;
+	clocks = <&xtal>, <&xtal>;
+	clock-names = "clkin0", "clkin1";
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi b/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
new file mode 100644
index 000000000000..ed826f673349
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
@@ -0,0 +1,614 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 BayLibre, SAS.
+ * Author: Jerome Brunet <jbrunet@baylibre.com>
+ */
+
+#include <dt-bindings/clock/g12a-clkc.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/gpio/meson-g12a-gpio.h>
+#include <dt-bindings/sound/meson-g12a-toacodec.h>
+#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
+
+/ {
+	aliases {
+		serial0 = &uart_AO;
+		ethernet0 = &ethmac;
+		spi0 = &spifc;
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x0 0x0 0x80000000>;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	dioo2133: audio-amplifier-0 {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&gpio GPIOX_0 GPIO_ACTIVE_HIGH>;
+		VCC-supply = <&vcc_5v>;
+		sound-name-prefix = "10U2";
+	};
+
+	/* TOFIX: handle CVBS_DET on SARADC channel 0 */
+	cvbs-connector {
+		compatible = "composite-video-connector";
+
+		port {
+			cvbs_connector_in: endpoint {
+				remote-endpoint = <&cvbs_vdac_out>;
+			};
+		};
+	};
+
+	emmc_pwrseq: emmc-pwrseq {
+		compatible = "mmc-pwrseq-emmc";
+		reset-gpios = <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
+	};
+
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&hdmi_tx_tmds_out>;
+			};
+		};
+	};
+
+	led-blue {
+		compatible = "pwm-leds";
+
+		led {
+			color = <LED_COLOR_ID_BLUE>;
+			function = LED_FUNCTION_ACTIVITY;
+			linux,default-trigger = "heartbeat";
+			max-brightness = <255>;
+			pwms = <&pwm_cd 1 1250 0>;
+			active-low;
+		};
+	};
+
+	led-green {
+		compatible = "pwm-leds";
+
+		led {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_STATUS;
+			linux,default-trigger = "default-on";
+			max-brightness = <255>;
+			pwms = <&pwm_ab 1 1250 0>;
+			active-low;
+		};
+	};
+
+	led-orange {
+		compatible = "gpio-leds";
+
+		led {
+			color = <LED_COLOR_ID_AMBER>;
+			function = LED_FUNCTION_STANDBY;
+			gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
+			panic-indicator;
+		};
+	};
+
+	dc_in: regulator-dc-in {
+		compatible = "regulator-fixed";
+		regulator-name = "5V_IN";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	flash_1v8: regulator-flash-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "FLASH_1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		vin-supply = <&vcc_3v3>;
+	};
+
+	vcc_card: regulator-vcc-card {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_CARD";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vddao_3v3>;
+		gpio = <&gpio GPIOX_2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		enable-active-high;
+		gpio-open-drain;
+	};
+
+	vcc_3v3: regulator-vcc-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		vin-supply = <&vddao_3v3>;
+
+		/* FIXME: controlled by TEST_N */
+	};
+
+	vcc_5v: regulator-vcc-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_5V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		vin-supply = <&dc_in>;
+		gpio = <&gpio GPIOH_8 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		enable-active-high;
+		gpio-open-drain;
+	};
+
+	vddao_3v3: regulator-vddao_3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDAO_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		vin-supply = <&dc_in>;
+	};
+
+	vddcpu_b: regulator-vddcpu-b {
+		compatible = "pwm-regulator";
+		regulator-name = "VDDCPU_B";
+		regulator-min-microvolt = <730000>;
+		regulator-max-microvolt = <1011000>;
+		regulator-boot-on;
+		regulator-always-on;
+		pwm-supply = <&dc_in>;
+		pwms = <&pwm_AO_cd 1 1250 0>;
+		pwm-dutycycle-range = <100 0>;
+	};
+
+	vddio_ao18: regulator-vddio_ao18 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDIO_AO18";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		vin-supply = <&vddao_3v3>;
+	};
+
+	vddio_c: regulator-vddio_c {
+		compatible = "regulator-gpio";
+		regulator-name = "VDDIO_C";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-settling-time-up-us = <200>;
+		regulator-settling-time-down-us = <50000>;
+		vin-supply = <&vddao_3v3>;
+		gpios = <&gpio GPIOX_4 GPIO_ACTIVE_HIGH>;
+		states = <3300000 0>,
+			 <1800000 1>;
+	};
+
+	sound {
+		compatible = "amlogic,axg-sound-card";
+		audio-widgets = "Line", "Lineout";
+		audio-aux-devs = <&tdmout_a>, <&tdmout_b>, <&tdmout_c>,
+				 <&tdmin_a>, <&tdmin_b>, <&tdmin_c>,
+				 <&dioo2133>;
+
+		assigned-clocks = <&clkc CLKID_MPLL2>,
+				  <&clkc CLKID_MPLL0>,
+				  <&clkc CLKID_MPLL1>;
+		assigned-clock-parents = <0>, <0>, <0>;
+		assigned-clock-rates = <294912000>,
+				       <270950400>,
+				       <393216000>;
+
+		dai-link-0 {
+			sound-dai = <&frddr_a>;
+		};
+
+		dai-link-1 {
+			sound-dai = <&frddr_b>;
+		};
+
+		dai-link-2 {
+			sound-dai = <&frddr_c>;
+		};
+
+		dai-link-3 {
+			sound-dai = <&toddr_a>;
+		};
+
+		dai-link-4 {
+			sound-dai = <&toddr_b>;
+		};
+
+		dai-link-5 {
+			sound-dai = <&toddr_c>;
+		};
+
+		/*
+		 * Audio setup: The 40 pins header provides access to 2 TDMs,
+		 * SPDIF In/Out and PDM inputs.
+		 * - TDM A: 2 lanes
+		 *    D0:    40/X9
+		 *    D1:    38/X8
+		 *    BCLK:  12/X11
+		 *    FS:    35/X10
+		 * - TDM B: 4 lanes
+		 *    D0:    37/A3
+		 *    D1:    16/A4
+		 *    D2:    18/A5 or 7/AO6
+		 *    D3:    22/A6 or 21/H5
+		 *    BCLK:  29/A1 or 8/AO8
+		 *    FS:    31/A2 or 11/AO7
+		 * - 2 Master Clocks:
+		 *    MCLK0: 15/A0 or 10/AO9
+		 *    MCLK1: 33/X15
+		 * - SPDIF:
+		 *    OUT:   32/A11
+		 *    IN:    21/H5
+		 * - PDM Input:
+		 *    DO:    13/A8
+		 *    D1:    26/A9
+		 *    D2:    22/A6
+		 *    D3:    18/A5
+		 *    DCLK:  36/A7
+		 *
+		 * TDM C is not usable on the 40 pins connector so it is
+		 * setup for the HDMI 4 lanes i2s.
+		 *
+		 * No pinctrl is enabled by default to preserve the
+		 * genericity of the 40 pins header. Many configurations are
+		 * possible based on the desired use case. Please adjust TDM
+		 * masks, clock setups and pinctrl accordingly.
+		 */
+
+		dai-link-6 {
+			sound-dai = <&tdmif_a>;
+			dai-format = "dsp_a";
+			dai-tdm-slot-tx-mask-0 = <1 1>;
+			mclk-fs = <256>;
+
+			codec-0 {
+				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_A>;
+			};
+
+			codec-1 {
+				sound-dai = <&toacodec TOACODEC_IN_A>;
+			};
+		};
+
+		dai-link-7 {
+			sound-dai = <&tdmif_b>;
+			dai-format = "i2s";
+			dai-tdm-slot-tx-mask-0 = <1 1>;
+			dai-tdm-slot-rx-mask-1 = <1 1>;
+			mclk-fs = <256>;
+
+			codec-0 {
+				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_B>;
+			};
+
+			codec-1 {
+				sound-dai = <&toacodec TOACODEC_IN_B>;
+			};
+		};
+
+		dai-link-8 {
+			sound-dai = <&tdmif_c>;
+			dai-format = "i2s";
+			dai-tdm-slot-tx-mask-0 = <1 1>;
+			dai-tdm-slot-tx-mask-1 = <1 1>;
+			dai-tdm-slot-tx-mask-2 = <1 1>;
+			dai-tdm-slot-tx-mask-3 = <1 1>;
+			mclk-fs = <256>;
+
+			codec-0 {
+				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_C>;
+			};
+
+			codec-1 {
+				sound-dai = <&toacodec TOACODEC_IN_C>;
+			};
+		};
+
+		dai-link-9 {
+			sound-dai = <&tohdmitx TOHDMITX_I2S_OUT>;
+
+			codec {
+				sound-dai = <&hdmi_tx>;
+			};
+		};
+
+		dai-link-10 {
+			sound-dai = <&toacodec TOACODEC_OUT>;
+
+			codec {
+				sound-dai = <&acodec>;
+			};
+		};
+	};
+};
+
+&acodec {
+	status = "okay";
+	AVDD-supply = <&vddio_ao18>;
+};
+
+&arb {
+	status = "okay";
+};
+
+&cecb_AO {
+	status = "okay";
+	pinctrl-0 = <&cec_ao_b_h_pins>;
+	pinctrl-names = "default";
+	hdmi-phandle = <&hdmi_tx>;
+};
+
+&clkc_audio {
+	status = "okay";
+};
+
+&cvbs_vdac_port {
+	cvbs_vdac_out: endpoint {
+		remote-endpoint = <&cvbs_connector_in>;
+	};
+};
+
+&dwc3 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	hub: hub@1 {
+		compatible = "usb5e3,626";
+		reg = <1>;
+		reset-gpios = <&gpio GPIOC_7 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+		vdd-supply = <&vcc_5v>;
+	};
+};
+
+&ethmac {
+	pinctrl-0 = <&eth_pins>, <&eth_rgmii_pins>, <&eth_phy_irq_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+	phy-mode = "rgmii";
+	phy-handle = <&external_phy>;
+	amlogic,tx-delay-ns = <2>;
+};
+
+&ext_mdio {
+	external_phy: ethernet-phy@0 {
+		/* Realtek RTL8211F (0x001cc916) */
+		reg = <0>;
+		max-speed = <1000>;
+
+		reset-assert-us = <100000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio GPIOZ_15 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
+
+		interrupt-parent = <&gpio_intc>;
+		/* MAC_INTR on GPIOZ_14 */
+		interrupts = <26 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+
+&frddr_a {
+	status = "okay";
+};
+
+&frddr_b {
+	status = "okay";
+};
+
+&frddr_c {
+	status = "okay";
+};
+
+&hdmi_tx {
+	status = "okay";
+	pinctrl-0 = <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
+	pinctrl-names = "default";
+	hdmi-supply = <&vcc_5v>;
+};
+
+&hdmi_tx_tmds_port {
+	hdmi_tx_tmds_out: endpoint {
+		remote-endpoint = <&hdmi_connector_in>;
+	};
+};
+
+&ir {
+	status = "okay";
+	pinctrl-0 = <&remote_input_ao_pins>;
+	pinctrl-names = "default";
+};
+
+&periphs_pinctrl {
+	spi_cs_disable_pins: spi-cs-disable {
+		mux {
+			groups = "BOOT_14";
+			function = "gpio_periphs";
+			bias-disable;
+			output-high;
+		};
+	};
+
+	eth_phy_irq_pins: eth-phy-irq {
+		mux {
+			groups = "GPIOZ_14";
+			function = "gpio_periphs";
+			bias-pull-up;
+			output-disable;
+		};
+	};
+};
+
+&pwm_AO_cd {
+	status = "okay";
+	pinctrl-0 = <&pwm_ao_d_e_pins>;
+	pinctrl-names = "default";
+	clocks = <&xtal>;
+	clock-names = "clkin1";
+};
+
+&pwm_ab {
+	status = "okay";
+	pinctrl-0 = <&pwm_b_x7_pins>;
+	pinctrl-names = "default";
+	clocks = <&xtal>;
+	clock-names = "clkin1";
+};
+
+&pwm_cd {
+	status = "okay";
+	pinctrl-0 = <&pwm_d_x3_pins>;
+	pinctrl-names = "default";
+	clocks = <&xtal>;
+	clock-names = "clkin1";
+};
+
+&saradc {
+	status = "okay";
+	vref-supply = <&vddio_ao18>;
+};
+
+/* SD card */
+&sd_emmc_b {
+	status = "okay";
+	pinctrl-0 = <&sdcard_c_pins>;
+	pinctrl-1 = <&sdcard_clk_gate_c_pins>;
+	pinctrl-names = "default", "clk-gate";
+
+	bus-width = <4>;
+	cap-sd-highspeed;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	max-frequency = <200000000>;
+	disable-wp;
+
+	cd-gpios = <&gpio GPIOC_6 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&vcc_card>;
+	vqmmc-supply = <&vddio_c>;
+};
+
+/*
+ * EMMC_D4, EMMC_D5, EMMC_D6 and EMMC_D7 pins are shared between SPI NOR CS
+ * and eMMC Data 4 to 7 pins.
+ * Replace emmc_data_8b_pins to emmc_data_4b_pins from sd_emmc_c pinctrl-0,
+ * and change bus-width to 4 then spifc can be enabled.
+ */
+&sd_emmc_c {
+	status = "okay";
+	pinctrl-0 = <&emmc_ctrl_pins>, <&emmc_data_8b_pins>, <&emmc_ds_pins>,
+		    <&spi_cs_disable_pins>;
+	pinctrl-1 = <&emmc_clk_gate_pins>;
+	pinctrl-names = "default", "clk-gate";
+
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	max-frequency = <200000000>;
+	disable-wp;
+
+	mmc-pwrseq = <&emmc_pwrseq>;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&flash_1v8>;
+};
+
+&spifc {
+	status = "disabled";
+	pinctrl-0 = <&nor_pins>;
+	pinctrl-names = "default";
+	cs-gpios = <&gpio BOOT_14 GPIO_ACTIVE_LOW>;
+
+	w25lq128d: flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-max-frequency = <80000000>;
+	};
+};
+
+&tdmif_a {
+	status = "okay";
+};
+
+&tdmif_b {
+	status = "okay";
+};
+
+&tdmif_c {
+	status = "okay";
+};
+
+&tdmin_a {
+	status = "okay";
+};
+
+&tdmin_b {
+	status = "okay";
+};
+
+&tdmin_c {
+	status = "okay";
+};
+
+&tdmout_a {
+	status = "okay";
+};
+
+&tdmout_b {
+	status = "okay";
+};
+
+&tdmout_c {
+	status = "okay";
+};
+
+&toacodec {
+	status = "okay";
+};
+
+&toddr_a {
+	status = "okay";
+};
+
+&toddr_b {
+	status = "okay";
+};
+
+&toddr_c {
+	status = "okay";
+};
+
+&tohdmitx {
+	status = "okay";
+};
+
+&uart_AO {
+	status = "okay";
+	pinctrl-0 = <&uart_ao_a_pins>;
+	pinctrl-names = "default";
+};
+
+&usb2_phy1 {
+	phy-supply = <&dc_in>;
+};
+
+&usb3_pcie_phy {
+	phy-supply = <&vcc_5v>;
+};
+
+&usb {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-s905d3-libretech-cc.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-s905d3-libretech-cc.dts
new file mode 100644
index 000000000000..537370db360f
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-s905d3-libretech-cc.dts
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 BayLibre, SAS.
+ * Author: Jerome Brunet <jbrunet@baylibre.com>
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/clock/g12a-clkc.h>
+#include "meson-sm1.dtsi"
+#include "meson-libretech-cottonwood.dtsi"
+
+/ {
+	compatible = "libretech,aml-s905d3-cc", "amlogic,sm1";
+	model = "Libre Computer AML-S905D3-CC Solitude";
+
+	sound {
+		model = "LC-SOLITUDE";
+		audio-routing = "TDMOUT_A IN 0", "FRDDR_A OUT 0",
+				"TDMOUT_A IN 1", "FRDDR_B OUT 0",
+				"TDMOUT_A IN 2", "FRDDR_C OUT 0",
+				"TDM_A Playback", "TDMOUT_A OUT",
+				"TDMOUT_B IN 0", "FRDDR_A OUT 1",
+				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
+				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
+				"TDM_B Playback", "TDMOUT_B OUT",
+				"TDMOUT_C IN 0", "FRDDR_A OUT 2",
+				"TDMOUT_C IN 1", "FRDDR_B OUT 2",
+				"TDMOUT_C IN 2", "FRDDR_C OUT 2",
+				"TDM_C Playback", "TDMOUT_C OUT",
+				"TDMIN_A IN 0", "TDM_A Capture",
+				"TDMIN_B IN 0", "TDM_A Capture",
+				"TDMIN_C IN 0", "TDM_A Capture",
+				"TDMIN_A IN 13", "TDM_A Loopback",
+				"TDMIN_B IN 13", "TDM_A Loopback",
+				"TDMIN_C IN 13", "TDM_A Loopback",
+				"TDMIN_A IN 1", "TDM_B Capture",
+				"TDMIN_B IN 1", "TDM_B Capture",
+				"TDMIN_C IN 1", "TDM_B Capture",
+				"TDMIN_A IN 14", "TDM_B Loopback",
+				"TDMIN_B IN 14", "TDM_B Loopback",
+				"TDMIN_C IN 14", "TDM_B Loopback",
+				"TDMIN_A IN 2", "TDM_C Capture",
+				"TDMIN_B IN 2", "TDM_C Capture",
+				"TDMIN_C IN 2", "TDM_C Capture",
+				"TDMIN_A IN 15", "TDM_C Loopback",
+				"TDMIN_B IN 15", "TDM_C Loopback",
+				"TDMIN_C IN 15", "TDM_C Loopback",
+				"TODDR_A IN 0", "TDMIN_A OUT",
+				"TODDR_B IN 0", "TDMIN_A OUT",
+				"TODDR_C IN 0", "TDMIN_A OUT",
+				"TODDR_A IN 1", "TDMIN_B OUT",
+				"TODDR_B IN 1", "TDMIN_B OUT",
+				"TODDR_C IN 1", "TDMIN_B OUT",
+				"TODDR_A IN 2", "TDMIN_C OUT",
+				"TODDR_B IN 2", "TDMIN_C OUT",
+				"TODDR_C IN 2", "TDMIN_C OUT",
+				"Lineout", "ACODEC LOLP",
+				"Lineout", "ACODEC LORP";
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vddcpu_b>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu1 {
+	cpu-supply = <&vddcpu_b>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU1_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu2 {
+	cpu-supply = <&vddcpu_b>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU2_CLK>;
+	clock-latency = <50000>;
+};
+
+&cpu3 {
+	cpu-supply = <&vddcpu_b>;
+	operating-points-v2 = <&cpu_opp_table>;
+	clocks = <&clkc CLKID_CPU3_CLK>;
+	clock-latency = <50000>;
+};
-- 
2.40.1


