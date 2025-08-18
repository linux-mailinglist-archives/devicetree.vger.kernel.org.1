Return-Path: <devicetree+bounces-205894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB34B2AD5C
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 17:53:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A47133BD853
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 15:48:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A57D321448;
	Mon, 18 Aug 2025 15:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="VLjER6+l"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9CE31E119
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 15:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755532106; cv=none; b=aFn8+i6B02W+wJxMQI6bRuI09Eon6e5P1yivnJ9tvib+pTSAZ9NaKEkK+7zonaljXPYXzD709Q6jPgbY06sQ5wXSTA0aa7iHti3/OeGrpayK73AiAklGBy+Z3kKAibL+Mih+uXlG129uBiMnA2sRJaTxnuauPfHEFR5Xisq6jtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755532106; c=relaxed/simple;
	bh=Kzfr2fjgC7bzsCdzxZNe2tNT7fIFQEdKfa4EtEh/AZw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JqXsfS1lejLyG5E/uywRpigZgL5+/6/76/FFy56A9VElEJDzXTstWO+fJIC+eWOUf87FMsC9lALhYeJnelFoUofRItRm0KF8yDwqxxpsaG35ekU4nIPqBOd+dsFjkwhmyMUvd03wfNhsUjfWfmmKYrYdSD0DXM0THxkladVkr94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=VLjER6+l; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelvem-sh01.itg.ti.com ([10.180.77.71])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTP id 57IFmBCt3197041;
	Mon, 18 Aug 2025 10:48:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1755532091;
	bh=OwY9b1fbJC64snfhIQczT3frPHpoizNV5hwN0djYsHg=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=VLjER6+lKTsv/3LKgUU4hVLkXckSW6djPE9QceSn33s5X2XZZ/+GDD+SSiUn+AG26
	 ceDGqUW4c2c27BDanqBnfjimeVdvQhjktFZCwd88fUEwc7QOh/ldQsv7tMy1x6NQ0Y
	 ZRGPKi1Jx+nLfHBWxHlTruwJdPtsm+bIr2T0AQZM=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by lelvem-sh01.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 57IFmAso3914006
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Mon, 18 Aug 2025 10:48:11 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Mon, 18
 Aug 2025 10:48:10 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Mon, 18 Aug 2025 10:48:10 -0500
Received: from hkshenoy.dhcp.ti.com (hkshenoy.dhcp.ti.com [172.24.235.208])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 57IFlk8o1551018;
	Mon, 18 Aug 2025 10:48:05 -0500
From: Harikrishna Shenoy <h-shenoy@ti.com>
To: <neil.armstrong@linaro.org>, <jessica.zhang@oss.qualcomm.com>,
        <airlied@gmail.com>, <simona@ffwll.ch>,
        <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
        <tzimmermann@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <thierry.reding@gmail.com>, <sam@ravnborg.org>,
        <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <s-jain1@ti.com>, <devarsht@ti.com>, <u-kumar1@ti.com>
Subject: [RFC PATCH 3/3] arm64: dts: ti: k3-j721e-beagleboneai64: Add DSI RPi Panel
Date: Mon, 18 Aug 2025 21:17:46 +0530
Message-ID: <20250818154746.1373656-4-h-shenoy@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250818154746.1373656-1-h-shenoy@ti.com>
References: <20250818154746.1373656-1-h-shenoy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Add support for R-Pi DSI Panel for BBAI64.

The RPi DSI panel[0] uses Toshiba TC358762 for decoding the DSI video
signals back to DPI for its consumption. It has an ATTINY88-based
regulator and backlight controller, and also features an EDT-FT5406
touch controller.

Fix DSS ports node in BeagkeBone AI-64 DTS by adding explicit `port@0`
child node instead of an unlabelled port, to align with dss_ports schema
used in overlay.

[0]: https://www.raspberrypi.com/products/raspberry-pi-touch-display/

Signed-off-by: Rahul T R <r-ravikumar@ti.com>
Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
---
 arch/arm64/boot/dts/ti/Makefile               |   4 +
 ...1e-beagleboneai64-dsi-rpi-7inch-panel.dtso | 141 ++++++++++++++++++
 .../boot/dts/ti/k3-j721e-beagleboneai64.dts   |   7 +-
 3 files changed, 151 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64-dsi-rpi-7inch-panel.dtso

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index aad9177930e6..25cf12ebccce 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -114,6 +114,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-j7200-evm-pcie1-ep.dtbo
 # Boards with J721e SoC
 k3-j721e-evm-dtbs := k3-j721e-common-proc-board.dtb k3-j721e-evm-quad-port-eth-exp.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-j721e-beagleboneai64.dtb
+dtb-$(CONFIG_ARCH_K3) += k3-j721e-beagleboneai64-dsi-rpi-7inch-panel.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-j721e-common-proc-board-infotainment.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-j721e-evm.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-j721e-evm-gesi-exp-board.dtbo
@@ -220,6 +221,8 @@ k3-am69-sk-pcie0-ep-dtbs := k3-am69-sk.dtb \
 	k3-am69-sk-pcie0-ep.dtbo
 k3-j7200-evm-pcie1-ep-dtbs := k3-j7200-common-proc-board.dtb \
 	k3-j7200-evm-pcie1-ep.dtbo
+k3-j721e-beagleboneai64-dsi-rpi-7inch-panel-dtbs := k3-j721e-beagleboneai64.dtb \
+	k3-j721e-beagleboneai64-dsi-rpi-7inch-panel.dtbo
 k3-j721e-common-proc-board-infotainment-dtbs := k3-j721e-common-proc-board.dtb \
 	k3-j721e-common-proc-board-infotainment.dtbo
 k3-j721e-evm-pcie0-ep-dtbs := k3-j721e-common-proc-board.dtb \
@@ -267,6 +270,7 @@ dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
 	k3-am69-sk-csi2-dual-imx219.dtb \
 	k3-am69-sk-pcie0-ep.dtb \
 	k3-j7200-evm-pcie1-ep.dtb \
+	k3-j721e-beagleboneai64-dsi-rpi-7inch-panel.dtb \
 	k3-j721e-common-proc-board-infotainment.dtb \
 	k3-j721e-evm-pcie0-ep.dtb \
 	k3-j721e-evm-pcie1-ep.dtb \
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64-dsi-rpi-7inch-panel.dtso b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64-dsi-rpi-7inch-panel.dtso
new file mode 100644
index 000000000000..c3506ccf60a4
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64-dsi-rpi-7inch-panel.dtso
@@ -0,0 +1,141 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/**
+ * DT Overlay for RPi 7inch touchscreen panel interfaced with DSI on
+ * J721E based BeagleBone AI-64 (BBAI-64) platform.
+ *
+ * BBAI-64: https://www.beagleboard.org/boards/beaglebone-ai-64
+ * RPi DSI Panel: https://www.raspberrypi.com/products/raspberry-pi-touch-display/
+ *
+ * Copyright (C) 2024 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+
+#include "k3-pinctrl.h"
+
+&{/} {
+	bridge_reg: bridge-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "bridge-reg";
+		vin-supply = <&display_reg>;
+		enable-active-high;
+	};
+
+	panel0 {
+		compatible = "rpi,7inch-dsi";
+		power-supply = <&display_reg>;
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&panel_bridge_out>;
+			};
+		};
+	};
+};
+
+&main_pmx0 {
+	dsi_main_i2c4_pins: dsi-main-i2c4-pins {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0xa8, PIN_INPUT_PULLUP, 2) /* (AD19) PRG1_MDIO0_MDIO.I2C4_SCL */
+			J721E_IOPAD(0xac, PIN_INPUT_PULLUP, 2) /* (AD18) PRG1_MDIO0_MDC.I2C4_SDA */
+		>;
+	};
+};
+
+&main_i2c4 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&dsi_main_i2c4_pins>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	display_reg: regulator@45 {
+		compatible = "raspberrypi,7inch-touchscreen-panel-regulator";
+		reg = <0x45>;
+	};
+
+	touch-controller@38 {
+		compatible = "edt,edt-ft5406";
+		reg = <0x38>;
+
+		touchscreen-size-x = < 800 >;
+		touchscreen-size-y = < 480 >;
+
+		vcc-supply = <&display_reg>;
+		interrupts-extended = <&main_gpio0 0 IRQ_TYPE_NONE>;
+
+		touchscreen-inverted-x;
+		touchscreen-inverted-y;
+	};
+};
+
+&dss_ports {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	port@2 {
+		reg = <2>;
+
+		dpi2_out: endpoint {
+			remote-endpoint = <&dsi0_in>;
+		};
+	};
+};
+
+&dphy2 {
+	status = "okay";
+};
+
+&dsi0 {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+			dsi0_out: endpoint {
+				remote-endpoint = <&panel_bridge_in>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+			dsi0_in: endpoint {
+				remote-endpoint = <&dpi2_out>;
+			};
+		};
+	};
+
+	bridge@0 {
+		compatible = "toshiba,tc358762";
+		reg = <0>;
+		vddc-supply = <&bridge_reg>;
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				panel_bridge_in: endpoint {
+					remote-endpoint = <&dsi0_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				panel_bridge_out: endpoint {
+					remote-endpoint = <&panel_in>;
+				};
+			};
+		};
+	};
+};
+
+
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
index fb899c99753e..c85317cbff7d 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
@@ -804,7 +804,12 @@ &dss {
 };
 
 &dss_ports {
-	port {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	port@0 {
+		reg= <0>;
+
 		dpi0_out: endpoint {
 			remote-endpoint = <&dp0_in>;
 		};
-- 
2.34.1


