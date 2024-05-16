Return-Path: <devicetree+bounces-67285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D43108C752A
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 13:24:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 632D81F22391
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 11:24:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F0E81459FC;
	Thu, 16 May 2024 11:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="RbYBJuuk";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="HBrVN2oE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211BA145A16;
	Thu, 16 May 2024 11:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715858647; cv=none; b=TuIsFCLQYC4jxlFXxQZKqW7RFGWsv2JIYVPL7uEz3clILMZdDKLjUGcfzbzF4n4USxhot8w+80HLhlNr5zEnDlvk7iiar8xqbiEYK0iret4ygduOVC/rB7PCTG5X1Cb7NZzvrpXu+iqlZDYcttX+zoFgNfw9V+SrXh/GKJJTohA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715858647; c=relaxed/simple;
	bh=x2Oa7yWUrbXY3MUDblDTGeomOoVj6T6x8beTeTCmPu0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iIAai8xy0nWuafv/iZ5UetsitPrAQVWY2+SuCaaYcIllSkpviAM9OiutYSBhXSOc3dUE3Ewepz2Flew8md7iSoWuJrmBTX18gd0mV2iFdMX0VrvOjSydh2tcZxW4L/fTdpcjWfibKdrrshLtc3EOIhTbz1acd/E3HeJsXTDvFHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=RbYBJuuk; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=HBrVN2oE reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1715858644; x=1747394644;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=OQF9heJ1sDwLDO1tD3tII714pnEqqfjgTfrBSqZZgqY=;
  b=RbYBJuukFm6MoXUJiztHjS01jxUIp7qjBA8+yAWuAZ6rmlLrkrgbDIQU
   9Gm4o8Wug1ERCDAshGiR6QEUwIQCCXMHVBxwE5vOgDB928BSSxxFJjsue
   driD6hSoOqV2+LGeTCOrq7/zSN29XF7BALfsMNsIOmOhvzvHFzp4hpoJH
   vWHBCPUFIlhHxVSo7wghXBiF9u7s815TWMJQlNDX5nx8XlxKRKi/NxTr9
   NGNCeNCdkf9kb3wGGL0EiEe8FbvUun4CaVZwz8fwISEUCcuhPHGyiNZZY
   POQL8GIUb7iicus2mICgT2RGkw4kdK7k0Ryk6IM2iKzvFAv1y6PGtgjZ6
   g==;
X-CSE-ConnectionGUID: /DrffBY5Q2aBuOXIRorV0Q==
X-CSE-MsgGUID: luQEYvU5QHG8e8q4a443XQ==
X-IronPort-AV: E=Sophos;i="6.08,164,1712613600"; 
   d="scan'208";a="36936033"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 16 May 2024 13:24:03 +0200
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E2D3A172C19;
	Thu, 16 May 2024 13:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1715858639; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=OQF9heJ1sDwLDO1tD3tII714pnEqqfjgTfrBSqZZgqY=;
	b=HBrVN2oEy/hBDFhAS6qKrQCgWt+c0Du2LZKMWjUuPA/2bq94YLTmFtjL4Cyr/zm7/lYcwu
	H+lnxACOpPEQ5X4kZv5eWsI3fFt9/ttcqgzC1K/vA11Z77uZzdnMl9ycCK59J2LAS3aRxr
	pGWyWrAUSCUxh9glRgAnCwjtgY3vmp2/Rirww1ZeNV2sauUiFMPjshW85Q9jIOoulmpZ3B
	pXDM9fvekg5IN06/aZUJGSysFijb4HbWjX0nUf9L+K3D6ae0OJnKPfSDFfx8Dv4YBBx+XO
	zxzxy88N2578J+prpFpq8U9ZCjVIpSCKMfus9D/AOdV3pepjzwA0ErZ0g+4naA==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Martin Schmiedel <Martin.Schmiedel@tq-group.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com
Subject: [PATCH 2/2] arm64: dts: freescale: add TQMa8MPQL on MBa8MP-RAS314
Date: Thu, 16 May 2024 13:23:55 +0200
Message-Id: <20240516112355.200265-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240516112355.200265-1-alexander.stein@ew.tq-group.com>
References: <20240516112355.200265-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

From: Martin Schmiedel <Martin.Schmiedel@tq-group.com>

This adds support for TQMa8MPQL module on MBa8MP-RAS314 board.

Signed-off-by: Martin Schmiedel <Martin.Schmiedel@tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../imx8mp-tqma8mpql-mba8mp-ras314.dts        | 888 ++++++++++++++++++
 2 files changed, 889 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index bd443c2bc5a48..4bc9941c30aed 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -177,6 +177,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revb-hdmi.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revb-lt6.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revb-mi1010ait-1cp1.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-tqma8mpql-mba8mpxl.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-tqma8mpql-mba8mp-ras314.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-venice-gw71xx-2x.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-venice-gw72xx-2x.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-venice-gw73xx-2x.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
new file mode 100644
index 0000000000000..20a5454111a08
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
@@ -0,0 +1,888 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) 2023-2024 TQ-Systems GmbH <linux@ew.tq-group.com>,
+ * D-82229 Seefeld, Germany.
+ * Author: Martin Schmiedel
+ * Author: Alexander Stein
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/net/ti-dp83867.h>
+#include <dt-bindings/phy/phy-imx8-pcie.h>
+#include <dt-bindings/pwm/pwm.h>
+#include "imx8mp-tqma8mpql.dtsi"
+
+/ {
+	model = "TQ-Systems i.MX8MPlus TQMa8MPxL on MBa8MP-RAS314";
+	compatible = "tq,imx8mp-tqma8mpql-mba8mp-ras314", "tq,imx8mp-tqma8mpql", "fsl,imx8mp";
+	chassis-type = "embedded";
+
+	chosen {
+		stdout-path = &uart4;
+	};
+
+	aliases {
+		mmc0 = &usdhc3;
+		mmc1 = &usdhc2;
+		mmc2 = &usdhc1;
+		rtc0 = &pcf85063;
+		rtc1 = &snvs_rtc;
+	};
+
+	/* X8 */
+	backlight_lvds: backlight {
+		compatible = "pwm-backlight";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_backlight>;
+		pwms = <&pwm2 0 5000000 0>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <7>;
+		power-supply = <&reg_vcc_12v0>;
+		enable-gpios = <&gpio1 3 GPIO_ACTIVE_HIGH>;
+		status = "disabled";
+	};
+
+	/* X7 + X8 */
+	display: display {
+		/*
+		 * Display is not fixed, so compatible has to be added from
+		 * DT overlay
+		 */
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_lvdsdisplay>;
+		power-supply = <&reg_vcc_3v3>;
+		enable-gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
+		backlight = <&backlight_lvds>;
+		status = "disabled";
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpioled>;
+
+		led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <0>;
+			gpios = <&gpio4 18 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-2 {
+			color = <LED_COLOR_ID_YELLOW>;
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <1>;
+			gpios = <&gpio4 19 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		label = "X9";
+		type = "a";
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&hdmi_tx_out>;
+			};
+		};
+	};
+
+	reg_usdhc2_vmmc: regulator-usdhc2 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
+		regulator-name = "VSD_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		startup-delay-us = <100>;
+		off-on-delay-us = <12000>;
+	};
+
+	reg_vcc_3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "V_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	reg_vcc_5v0: regulator-5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "V_5V0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	reg_vcc_12v0: regulator-12v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "V_12V";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		/* global autoconfigured region for contiguous allocations */
+		linux,cma {
+			compatible = "shared-dma-pool";
+			reusable;
+			size = <0 0x38000000>;
+			alloc-ranges = <0 0x40000000 0 0xB0000000>;
+			linux,cma-default;
+		};
+	};
+
+	rfkill {
+		compatible = "rfkill-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_rfkill>;
+		label = "rfkill-pcie-wlan";
+		radio-type = "wlan";
+		shutdown-gpios = <&gpio5 2 GPIO_ACTIVE_HIGH>;
+	};
+
+	sound {
+		compatible = "fsl,imx-audio-tlv320aic32x4";
+		model = "tq-tlv320aic32x";
+		audio-cpu = <&sai5>;
+		audio-codec = <&tlv320aic3x04>;
+		audio-routing =
+			"IN3_L", "Mic Jack",
+			"Mic Jack", "Mic Bias",
+			"Line Out Jack", "LOL",
+			"Line Out Jack", "LOR",
+			"Headphone Jack", "HPL",
+			"Headphone Jack", "HPR";
+	};
+};
+
+&ecspi3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi3>;
+	cs-gpios = <&gpio5 25 GPIO_ACTIVE_LOW>, <&gpio1 6 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&eqos {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_eqos>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy3>;
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy3: ethernet-phy@3 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <3>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_eqos_phy>;
+			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+			ti,dp83867-rxctrl-strap-quirk;
+			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
+			reset-gpios = <&gpio4 2 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <500000>;
+			reset-deassert-us = <50000>;
+			enet-phy-lane-no-swap;
+			interrupt-parent = <&gpio4>;
+			interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
+		};
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	fsl,magic-packet;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_fec_phy>;
+			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+			ti,dp83867-rxctrl-strap-quirk;
+			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
+			reset-gpios = <&gpio4 0 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <500000>;
+			reset-deassert-us = <50000>;
+			enet-phy-lane-no-swap;
+			interrupt-parent = <&gpio4>;
+			interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
+		};
+	};
+};
+
+&gpio1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio1>;
+
+	gpio-line-names = "WIFI_PMIC_EN", "LVDS_RESET#", "", "",
+			  "", "", "GPIO8", "",
+			  "", "", "", "",
+			  "", "", "GPIO12", "GPIO13",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "";
+};
+
+&gpio2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio2>;
+
+	gpio-line-names = "GPIO22", "GPIO23", "GPIO24", "GPIO25",
+			  "GPIO26", "GPIO27", "CAM_GPIO1", "CAM_GPIO2",
+			  "", "", "GPIO1", "GPIO0",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "";
+};
+
+&gpio3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio3>;
+
+	gpio-line-names = "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "TEMP_EVENT#", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "";
+};
+
+&gpio4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio4>;
+
+	gpio-line-names = "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "HDMI_OC#", "GPIO14", "GPIO15", "GPIO16",
+			  "GPIO17", "PCI_WAKE#", "GPIO19", "GPIO20",
+			  "PCIE_PERST#", "", "", "";
+};
+
+&gpio5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio5>, <&pinctrl_gpt1_gpio>,
+		    <&pinctrl_gpt2_gpio>, <&pinctrl_gpt3_gpio>;
+
+	gpio-line-names = "", "GPIO18", "", "GPIO3",
+			  "GPIO2", "GPIO21", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "GPIO5", "GPIO6",
+			  "", "", "GPIO11", "GPIO10",
+			  "GPIO9", "GPIO7", "", "GPIO4",
+			  "", "", "", "";
+};
+
+&gpt1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpt1>;
+	status = "disabled";
+};
+
+&gpt2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpt2>;
+	status = "disabled";
+};
+
+&gpt3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpt3>;
+	status = "disabled";
+};
+
+&hdmi_pvi {
+	status = "okay";
+};
+
+&hdmi_tx {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hdmi>;
+	status = "okay";
+
+	ports {
+		port@1 {
+			hdmi_tx_out: endpoint {
+				remote-endpoint = <&hdmi_connector_in>;
+			};
+		};
+	};
+};
+
+&hdmi_tx_phy {
+	status = "okay";
+};
+
+/* X5 + X6 Camera & Display interface */
+&i2c2 {
+	clock-frequency = <384000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	pinctrl-1 = <&pinctrl_i2c2_gpio>;
+	scl-gpios = <&gpio5 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+};
+
+/* X1 ID_I2C */
+&i2c3 {
+	clock-frequency = <384000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	pinctrl-1 = <&pinctrl_i2c3_gpio>;
+	scl-gpios = <&gpio2 10 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio2 11 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+};
+
+&i2c4 {
+	clock-frequency = <384000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	pinctrl-1 = <&pinctrl_i2c4_gpio>;
+	scl-gpios = <&gpio5 12 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 13 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+
+	tlv320aic3x04: audio-codec@18 {
+		compatible = "ti,tlv320aic32x4";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_tlv320aic3x04>;
+		reg = <0x18>;
+		clock-names = "mclk";
+		clocks = <&audio_blk_ctrl IMX8MP_CLK_AUDIOMIX_SAI5_MCLK1>;
+		reset-gpios = <&gpio5 11 GPIO_ACTIVE_LOW>;
+		iov-supply = <&reg_vcc_3v3>;
+		ldoin-supply = <&reg_vcc_3v3>;
+	};
+};
+
+/* X1 I2C */
+&i2c5 {
+	clock-frequency = <384000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c5>;
+	pinctrl-1 = <&pinctrl_i2c5_gpio>;
+	scl-gpios = <&gpio5 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+};
+
+/* X1 I2C on GPIO24/GPIO25 */
+&i2c6 {
+	clock-frequency = <384000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c6>;
+	pinctrl-1 = <&pinctrl_i2c6_gpio>;
+	scl-gpios = <&gpio2 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio2 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "disabled";
+};
+
+&lcdif3 {
+	status = "okay";
+};
+
+&pcf85063 {
+	/* RTC_EVENT# is connected on MBa8MP-RAS314 */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcf85063>;
+	interrupt-parent = <&gpio3>;
+	interrupts = <19 IRQ_TYPE_EDGE_FALLING>;
+};
+
+&pcie_phy {
+	clocks = <&hsio_blk_ctrl>;
+	clock-names = "ref";
+	fsl,clkreq-unsupported;
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_OUTPUT>;
+	status = "okay";
+};
+
+&pcie {
+	status = "okay";
+};
+
+&pwm2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm2>;
+	status = "disabled";
+};
+
+&pwm3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm3>;
+	status = "okay";
+};
+
+&pwm4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm4>;
+	status = "okay";
+};
+
+&sai5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai5>;
+	assigned-clocks = <&clk IMX8MP_CLK_SAI5>;
+	assigned-clock-parents = <&clk IMX8MP_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <12288000>;
+	fsl,sai-mclk-direction-output;
+	status = "okay";
+};
+
+&snvs_pwrkey {
+	status = "okay";
+};
+
+/* X1 UART1 */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	uart-has-rtscts;
+	assigned-clocks = <&clk IMX8MP_CLK_UART1>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_80M>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	uart-has-rtscts;
+	assigned-clocks = <&clk IMX8MP_CLK_UART2>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_80M>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "nxp,88w8987-bt";
+		fw-init-baudrate = <3000000>;
+	};
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	assigned-clocks = <&clk IMX8MP_CLK_UART3>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_80M>;
+	status = "okay";
+};
+
+&uart4 {
+	/* console */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
+&usb3_0 {
+	fsl,disable-port-power-control;
+	status = "okay";
+};
+
+&usb3_1 {
+	fsl,disable-port-power-control;
+	fsl,permanently-attached;
+	status = "okay";
+};
+
+&usb3_phy0 {
+	vbus-supply = <&reg_vcc_5v0>;
+	status = "okay";
+};
+
+&usb3_phy1 {
+	vbus-supply = <&reg_vcc_5v0>;
+	status = "okay";
+};
+
+&usb_dwc3_0 {
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&usb_dwc3_1 {
+	dr_mode = "host";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbhub>;
+	status = "okay";
+
+	hub_2_0: hub@1 {
+		compatible = "usb451,8142";
+		reg = <1>;
+		peer-hub = <&hub_3_0>;
+		reset-gpios = <&gpio5 26 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&reg_vcc_3v3>;
+	};
+
+	hub_3_0: hub@2 {
+		compatible = "usb451,8140";
+		reg = <2>;
+		peer-hub = <&hub_2_0>;
+		reset-gpios = <&gpio5 26 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&reg_vcc_3v3>;
+	};
+};
+
+/* X1 SD card on GPIO22-GPIO27 */
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	disable-wp;
+	bus-width = <4>;
+	status = "disabled";
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	no-mmc;
+	no-sdio;
+	disable-wp;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_backlight: backlightgrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03		0x14>;
+	};
+
+	pinctrl_ecspi3: ecspi3grp {
+		fsl,pins = <MX8MP_IOMUXC_UART1_RXD__ECSPI3_SCLK		0x140>,
+			   <MX8MP_IOMUXC_UART1_TXD__ECSPI3_MOSI		0x140>,
+			   <MX8MP_IOMUXC_UART2_RXD__ECSPI3_MISO		0x1c0>,
+			   <MX8MP_IOMUXC_UART2_TXD__GPIO5_IO25		0x140>,
+			   <MX8MP_IOMUXC_GPIO1_IO06__GPIO1_IO06		0x140>;
+	};
+
+	pinctrl_ecspi3_gpio: ecspi3gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_UART1_RXD__GPIO5_IO22		0x80>,
+			   <MX8MP_IOMUXC_UART1_TXD__GPIO5_IO23		0x80>,
+			   <MX8MP_IOMUXC_UART2_RXD__GPIO5_IO24		0x80>,
+			   <MX8MP_IOMUXC_UART2_TXD__GPIO5_IO25		0x80>,
+			   <MX8MP_IOMUXC_GPIO1_IO06__GPIO1_IO06		0x80>;
+	};
+
+	pinctrl_eqos: eqosgrp {
+		fsl,pins = <MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC				0x40000044>,
+			   <MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO			0x40000044>,
+			   <MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0			0x90>,
+			   <MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1			0x90>,
+			   <MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2			0x90>,
+			   <MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3			0x90>,
+			   <MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK	0x90>,
+			   <MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL		0x90>,
+			   <MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0			0x12>,
+			   <MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1			0x12>,
+			   <MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2			0x12>,
+			   <MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3			0x12>,
+			   <MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL		0x12>,
+			   <MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x14>;
+	};
+
+	pinctrl_eqos_phy: eqosphygrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_RXD0__GPIO4_IO02				0x100>,
+			   <MX8MP_IOMUXC_SAI1_RXD1__GPIO4_IO03				0x1c0>;
+	};
+
+	pinctrl_fec: fecgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_RXD2__ENET1_MDC		0x40000044>,
+			   <MX8MP_IOMUXC_SAI1_RXD3__ENET1_MDIO		0x40000044>,
+			   <MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0	0x90>,
+			   <MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1	0x90>,
+			   <MX8MP_IOMUXC_SAI1_RXD6__ENET1_RGMII_RD2	0x90>,
+			   <MX8MP_IOMUXC_SAI1_RXD7__ENET1_RGMII_RD3	0x90>,
+			   <MX8MP_IOMUXC_SAI1_TXC__ENET1_RGMII_RXC	0x90>,
+			   <MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL	0x90>,
+			   <MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0	0x12>,
+			   <MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1	0x12>,
+			   <MX8MP_IOMUXC_SAI1_TXD2__ENET1_RGMII_TD2	0x12>,
+			   <MX8MP_IOMUXC_SAI1_TXD3__ENET1_RGMII_TD3	0x12>,
+			   <MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL	0x12>,
+			   <MX8MP_IOMUXC_SAI1_TXD5__ENET1_RGMII_TXC	0x14>;
+	};
+
+	pinctrl_fec_phy: fecphygrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_RXFS__GPIO4_IO00		0x100>,
+			   <MX8MP_IOMUXC_SAI1_RXC__GPIO4_IO01		0x1c0>;
+	};
+
+	pinctrl_gpioled: gpioledgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_TXD6__GPIO4_IO18		0x14>,
+			   <MX8MP_IOMUXC_SAI1_TXD7__GPIO4_IO19		0x14>;
+	};
+
+	pinctrl_gpio1: gpio1grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO00__GPIO1_IO00		0x14>,
+			   <MX8MP_IOMUXC_GPIO1_IO01__GPIO1_IO01		0x14>;
+	};
+
+	pinctrl_gpio2: gpio2grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_CLK__GPIO2_IO00		0x94>,
+			   <MX8MP_IOMUXC_SD1_CMD__GPIO2_IO01		0x94>,
+			   <MX8MP_IOMUXC_SD1_DATA0__GPIO2_IO02		0x94>,
+			   <MX8MP_IOMUXC_SD1_DATA1__GPIO2_IO03		0x94>,
+			   <MX8MP_IOMUXC_SD1_DATA2__GPIO2_IO04		0x94>,
+			   <MX8MP_IOMUXC_SD1_DATA3__GPIO2_IO05		0x94>,
+			   <MX8MP_IOMUXC_SD1_DATA4__GPIO2_IO06		0x94>,
+			   <MX8MP_IOMUXC_SD1_DATA5__GPIO2_IO07		0x94>;
+	};
+
+	pinctrl_gpio3: gpio3grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI5_RXC__GPIO3_IO20		0x180>;
+	};
+
+	pinctrl_gpio4: gpio4grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_MCLK__GPIO4_IO20		0x80>,
+			   <MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25		0x80>,
+			   <MX8MP_IOMUXC_SAI2_TXD0__GPIO4_IO26		0x94>,
+			   <MX8MP_IOMUXC_SAI2_MCLK__GPIO4_IO27		0x94>,
+			   <MX8MP_IOMUXC_SAI3_RXFS__GPIO4_IO28		0x94>;
+	};
+
+	pinctrl_gpio5: gpio5grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI3_TXD__GPIO5_IO01		0x80>,
+			   <MX8MP_IOMUXC_SPDIF_EXT_CLK__GPIO5_IO05	0x80>;
+	};
+
+	pinctrl_hdmi: hdmigrp {
+		fsl,pins = <MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL	0x400001c2>,
+			   <MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA	0x400001c2>,
+			   <MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD	0x40000010>,
+			   <MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC	0x40000154>;
+	};
+
+	pinctrl_gpt1: gpt1grp {
+		fsl,pins = <MX8MP_IOMUXC_UART3_TXD__GPT1_CLK		0x14>;
+	};
+
+	pinctrl_gpt1_gpio: gpt1gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_UART3_TXD__GPIO5_IO27		0x80>;
+	};
+
+	pinctrl_gpt2: gpt2grp {
+		fsl,pins = <MX8MP_IOMUXC_I2C3_SCL__GPT2_CLK		0x14>;
+	};
+
+	pinctrl_gpt2_gpio: gpt2gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_I2C3_SCL__GPIO5_IO18		0x80>;
+	};
+
+	pinctrl_gpt3: gpt3grp {
+		fsl,pins = <MX8MP_IOMUXC_I2C3_SDA__GPT3_CLK		0x14>;
+	};
+
+	pinctrl_gpt3_gpio: gpt3gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_I2C3_SDA__GPIO5_IO19		0x80>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL		0x400001e2>,
+			   <MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA		0x400001e2>;
+	};
+
+	pinctrl_i2c2_gpio: i2c2-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_I2C2_SCL__GPIO5_IO16		0x400001e2>,
+			   <MX8MP_IOMUXC_I2C2_SDA__GPIO5_IO17		0x400001e2>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_RESET_B__I2C3_SCL		0x400001e2>,
+			   <MX8MP_IOMUXC_SD1_STROBE__I2C3_SDA		0x400001e2>;
+	};
+
+	pinctrl_i2c3_gpio: i2c3-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_RESET_B__GPIO2_IO10	0x400001e2>,
+			   <MX8MP_IOMUXC_SD1_STROBE__GPIO2_IO11		0x400001e2>;
+	};
+
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <MX8MP_IOMUXC_ECSPI2_MISO__I2C4_SCL		0x400001e2>,
+			   <MX8MP_IOMUXC_ECSPI2_SS0__I2C4_SDA		0x400001e2>;
+	};
+
+	pinctrl_i2c4_gpio: i2c4-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_ECSPI2_MISO__GPIO5_IO12	0x400001e2>,
+			   <MX8MP_IOMUXC_ECSPI2_SS0__GPIO5_IO13		0x400001e2>;
+	};
+
+	pinctrl_i2c5: i2c5grp {
+		fsl,pins = <MX8MP_IOMUXC_SPDIF_TX__I2C5_SCL		0x400001e2>,
+			   <MX8MP_IOMUXC_SPDIF_RX__I2C5_SDA		0x400001e2>;
+	};
+
+	pinctrl_i2c5_gpio: i2c5-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_SPDIF_TX__GPIO5_IO03		0x400001e2>,
+			   <MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04		0x400001e2>;
+	};
+
+	pinctrl_i2c6: i2c6grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_DATA0__I2C6_SCL		0x400001e2>,
+			   <MX8MP_IOMUXC_SD1_DATA1__I2C6_SDA		0x400001e2>;
+	};
+
+	pinctrl_i2c6_gpio: i2c6-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_DATA0__GPIO2_IO02		0x400001e2>,
+			   <MX8MP_IOMUXC_SD1_DATA1__GPIO2_IO03		0x400001e2>;
+	};
+
+	pinctrl_pcf85063: pcf85063grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI5_RXFS__GPIO3_IO19		0x80>;
+	};
+
+	pinctrl_lvdsdisplay: lvdsdisplaygrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO07__GPIO1_IO07		0x10>;
+	};
+
+	pinctrl_pwm2: pwm2grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO09__PWM2_OUT		0x14>;
+	};
+
+	pinctrl_pwm3: pwm3grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO14__PWM3_OUT		0x14>;
+	};
+
+	pinctrl_pwm3_gpio: pwm3grpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO14__GPIO1_IO14		0x80>;
+	};
+
+	pinctrl_pwm4: pwm4grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO15__PWM4_OUT		0x14>;
+	};
+
+	pinctrl_pwm4_gpio: pwm4grpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO15__GPIO1_IO15		0x80>;
+	};
+
+	pinctrl_rfkill: rfkillgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI3_MCLK__GPIO5_IO02		0x14>;
+	};
+
+	pinctrl_sai5: sai5grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI5_MCLK__AUDIOMIX_SAI5_MCLK		0x94>,
+			   <MX8MP_IOMUXC_SAI5_RXD0__AUDIOMIX_SAI5_RX_DATA00	0x94>,
+			   <MX8MP_IOMUXC_SAI5_RXD3__AUDIOMIX_SAI5_TX_DATA00	0x94>,
+			   <MX8MP_IOMUXC_SAI5_RXD1__AUDIOMIX_SAI5_TX_SYNC	0x94>,
+			   <MX8MP_IOMUXC_SAI5_RXD2__AUDIOMIX_SAI5_TX_BCLK	0x94>;
+	};
+
+	pinctrl_tlv320aic3x04: tlv320aic3x04grp {
+		fsl,pins = <MX8MP_IOMUXC_ECSPI2_MOSI__GPIO5_IO11		0x180>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI2_RXFS__UART1_DCE_TX	0x14>,
+			   <MX8MP_IOMUXC_SAI2_RXC__UART1_DCE_RX		0x14>,
+			   <MX8MP_IOMUXC_SAI2_RXD0__UART1_DTE_CTS	0x14>,
+			   <MX8MP_IOMUXC_SAI2_TXFS__UART1_DTE_RTS	0x14>;
+	};
+
+	pinctrl_uart1_gpio: uart1gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI2_RXFS__GPIO4_IO21		0x80>,
+			   <MX8MP_IOMUXC_SAI2_RXC__GPIO4_IO22		0x80>,
+			   <MX8MP_IOMUXC_SAI2_RXD0__GPIO4_IO23		0x80>,
+			   <MX8MP_IOMUXC_SAI2_TXFS__GPIO4_IO24		0x80>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI3_TXC__UART2_DCE_TX		0x14>,
+			   <MX8MP_IOMUXC_SAI3_TXFS__UART2_DCE_RX	0x14>,
+			   <MX8MP_IOMUXC_SAI3_RXD__UART2_DTE_CTS	0x14>,
+			   <MX8MP_IOMUXC_SAI3_RXC__UART2_DTE_RTS	0x14>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_DATA6__UART3_DCE_TX	0x140>,
+			   <MX8MP_IOMUXC_SD1_DATA7__UART3_DCE_RX	0x140>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX	0x140>,
+			   <MX8MP_IOMUXC_UART4_RXD__UART4_DCE_RX	0x140>;
+	};
+
+	pinctrl_usbhub: usbhubgrp {
+		fsl,pins = <MX8MP_IOMUXC_UART3_RXD__GPIO5_IO26		0x10>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK		0x192>,
+			   <MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD		0x1d2>,
+			   <MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0	0x1d2>,
+			   <MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1	0x1d2>,
+			   <MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2	0x1d2>,
+			   <MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3	0x1d2>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x192>,
+			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d2>,
+			   <MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d2>,
+			   <MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d2>,
+			   <MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d2>,
+			   <MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d2>,
+			   <MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc0>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x194>,
+			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d4>,
+			   <MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc0>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x194>,
+			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d4>,
+			   <MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d4>,
+			   <MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc0>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2-gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12		0x1c0>;
+	};
+};
-- 
2.34.1


