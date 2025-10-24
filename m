Return-Path: <devicetree+bounces-230802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F78C061D3
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 13:55:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DC65D1AA3A34
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 11:54:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B301315D5E;
	Fri, 24 Oct 2025 11:50:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFD6C2D63F8
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 11:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761306633; cv=none; b=f7Ww0JEPTjas8YSVf5a2+vqVW7KZfX+m5+C5rPCICi+ziYkiTPgFG8QywS9ExBn8tHjuFOvBOwzUmbOBMzOvNvAb8xsboVhjtC6dX6FM3ykCS3pRocE+Fx9zREuKfgc2KZmo2H8P7eXU/OmoutcZdLR6FRDOYItz8nHwLEUce7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761306633; c=relaxed/simple;
	bh=w/Eyzmm/s8J8jMdMaFkZjDIWu5toDsE1Xuy7oZ59vrc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=N0QWJf3oHj2L8y8eYJBHmr35Li2WegU0T4N8Cd1zO0opGqokyFu0twfaZml8wpK8lRZXhWSvPes7gtIQHz41etiwdfJb2zSD+bhikJbfKso8Lpawr3rH+9hTG4jvU22VUR+U1vjyW2t/zzZIXws3cIbUqGkpxmb6OD1kYs8TS88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vCGJB-0002FG-DJ; Fri, 24 Oct 2025 13:50:13 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 24 Oct 2025 13:50:02 +0200
Subject: [PATCH v5 10/10] arm64: dts: socfpga: agilex5: initial support for
 Arrow AXE5-Eagle
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251024-v6-12-topic-socfpga-agilex5-v5-10-4c4a51159eeb@pengutronix.de>
References: <20251024-v6-12-topic-socfpga-agilex5-v5-0-4c4a51159eeb@pengutronix.de>
In-Reply-To: <20251024-v6-12-topic-socfpga-agilex5-v5-0-4c4a51159eeb@pengutronix.de>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Matthew Gerlach <matthew.gerlach@altera.com>
Cc: kernel@pengutronix.de, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The Arrow AXE5-Eagle is an Intel Agilex5 SoCFPGA based board with:

   - 1x PCIe Gen4.0 edge connector
   - 4-port USB HUB
   - 2x 1Gb Ethernet
   - microSD
   - HDMI output
   - 2x 10Gb SFP+ cages

As most devices aren't supported mainline yet, this is only the initial
support for the board: leds, gpios, gmac2, i2c, uart and qspi. Although
gmac1 is equipped on the board, it doesn't work yet as it needs
additional pinctrl settings in the bootloader to work.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/intel/Makefile                 |   1 +
 .../boot/dts/intel/socfpga_agilex5_axe5_eagle.dts  | 146 +++++++++++++++++++++
 2 files changed, 147 insertions(+)

diff --git a/arch/arm64/boot/dts/intel/Makefile b/arch/arm64/boot/dts/intel/Makefile
index 33f6d01266b1a..0a18ca306054b 100644
--- a/arch/arm64/boot/dts/intel/Makefile
+++ b/arch/arm64/boot/dts/intel/Makefile
@@ -2,6 +2,7 @@
 dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += socfpga_agilex_n6000.dtb \
 				socfpga_agilex_socdk.dtb \
 				socfpga_agilex_socdk_nand.dtb \
+				socfpga_agilex5_axe5_eagle.dtb \
 				socfpga_agilex5_socdk.dtb \
 				socfpga_agilex5_socdk_nand.dtb \
 				socfpga_n5x_socdk.dtb
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5_axe5_eagle.dts b/arch/arm64/boot/dts/intel/socfpga_agilex5_axe5_eagle.dts
new file mode 100644
index 0000000000000..a2a262f3d07c6
--- /dev/null
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5_axe5_eagle.dts
@@ -0,0 +1,146 @@
+// SPDX-License-Identifier:     GPL-2.0
+/*
+ * Copyright (C) 2024, Arrow Electronics, Inc.
+ */
+#include "socfpga_agilex5.dtsi"
+
+/ {
+	model = "SoCFPGA Agilex5 Arrow AXE5-Eagle";
+	compatible = "arrow,socfpga-agilex5-axe5-eagle", "intel,socfpga-agilex5";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			label = "hps_led0";
+			gpios = <&porta 6 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-1 {
+			label = "hps_led1";
+			gpios = <&porta 7 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		key-0 {
+			label = "hps_sw0";
+			gpios = <&porta 10 0>;
+			linux,input-type = <5>;	/* EV_SW */
+			linux,code = <0x0>;
+		};
+
+		key-1 {
+			label = "hps_sw1";
+			gpios = <&porta 1 0>;
+			linux,input-type = <5>;	/* EV_SW */
+			linux,code = <0x0>;
+		};
+
+		key-2 {
+			label = "hps_pb0";
+			gpios = <&porta 8 1>;
+			linux,code = <187>;		/* KEY_F17 */
+		};
+
+		key-3 {
+			label = "hps_pb1";
+			gpios = <&porta 9 1>;
+			linux,code = <188>;		/* KEY_F18 */
+		};
+	};
+
+	vdd: regulator-vdd {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-supply";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
+
+	vdd_3_3: regulator-vdd {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-supply";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+};
+
+&gmac2 {
+	status = "okay";
+	phy-mode = "rgmii-id";
+	phy-handle = <&emac2_phy0>;
+
+	mdio0 {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		emac2_phy0: ethernet-phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0x1>;
+		};
+	};
+};
+
+&gpio0 {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+
+	i2c-mux@70 {
+		compatible = "nxp,pca9544";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x70>;
+		status = "okay";
+	};
+};
+
+&osc1 {
+	clock-frequency = <25000000>;
+};
+
+&qspi {
+	status = "okay";
+
+	flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "micron,mt25qu02g", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <100000000>;
+
+		m25p,fast-read;
+		cdns,read-delay = <2>;
+		cdns,tshsl-ns = <50>;
+		cdns,tsd2d-ns = <50>;
+		cdns,tchsh-ns = <4>;
+		cdns,tslch-ns = <4>;
+	};
+};
+
+&smmu {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};

-- 
2.51.0


