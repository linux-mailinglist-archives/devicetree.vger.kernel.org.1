Return-Path: <devicetree+bounces-37575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3C68456D8
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 13:05:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 141E3B23D23
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 12:05:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74A87161B62;
	Thu,  1 Feb 2024 12:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5oszq/V"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF2D161B4F;
	Thu,  1 Feb 2024 12:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706789031; cv=none; b=fZtQ4qel4OGflG/dOvkxlQpYumyYKrx+c70KRnti5azSfXuwguPiK5dgVXLJgzxHVK8HqYhvLNZ01MBQxouhXSZNh/4z14DfdD3zSBGOzyaY9w6RKOL1imWJAPl9im6s0AC4PLsZp66YENQpwr9qPpgykq6vQmbtfFRYQXIrWMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706789031; c=relaxed/simple;
	bh=I4vLqsDfXG9pW/rrRlc221L7/vFRIUuAf5F/pe2wE+w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=j8Kl/gbMNVsIKvHr+DxpfVv0QgiSAFnCdla7o4J8TFY+8ePkmmzpDLeNQ2qGhymzmee155T37B9+ljDjaEfusWssUunBusKHmbPpK8PwMkL5FvGoij0G1+I9WOD6d/mZm0Wt/QjzDqapQP3xWDLTimAadXKhxTbEi2vROz8YcSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5oszq/V; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFC48C4167E;
	Thu,  1 Feb 2024 12:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706789031;
	bh=I4vLqsDfXG9pW/rrRlc221L7/vFRIUuAf5F/pe2wE+w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=k5oszq/Vj1/v/angyQVmOvmusYIudzTsp0qI3wbSoQLTQh5XbQQdnA+5RT/H/9pom
	 h4lQ4ayG30ZK42F5olRUZAdzFPc9ClMMrm9x0IGLNoKKTGeoxHkENeHDVS8WnMNN2s
	 iK3ZBJmk/EK4pgza6UC8hi6hWag9FCz1utgfpBwPedHuU6H0pFallH+vblxkzvL9YM
	 d2oCx9XP7dPdiY48DLdrWW+CJeidtGa9rz7j90SGA3Wm/+TqaJlSlBFpkuXp8rQaBx
	 VF5e9AjY3QTSJI+dGIpApOjvMfA7mlMC8ukU2pG3i/KAu1S4u4xr049Hcs2N9qbCsO
	 sNpnsbxGpMEJg==
From: Roger Quadros <rogerq@kernel.org>
To: nm@ti.com,
	vigneshr@ti.com
Cc: afd@ti.com,
	kristo@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	srk@ti.com,
	r-gunasekaran@ti.com,
	b-liu@ti.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Roger Quadros <rogerq@kernel.org>
Subject: [PATCH v3 3/5] arm64: dts: ti: k3-am62p: add the USB sub-system
Date: Thu,  1 Feb 2024 14:03:30 +0200
Message-Id: <20240201120332.4811-4-rogerq@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240201120332.4811-1-rogerq@kernel.org>
References: <20240201120332.4811-1-rogerq@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are two USB instances available on the am62p5 starter kit. Include
and enable them for use on the board.

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
Signed-off-by: Roger Quadros <rogerq@kernel.org>
---

Notes:
    Changelog:
    
    v3 - no change
    
    v2:
    - added USB PHY CTRL node changes here
    - changed USB wrapper node names to usb@
    - changed Type-C chip node name to usb-power-control@

 arch/arm64/boot/dts/ti/k3-am62p-main.dtsi   | 46 ++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi | 10 +++
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts     | 67 +++++++++++++++++++++
 3 files changed, 123 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
index 4c51bae06b57..17d28390d587 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
@@ -560,6 +560,52 @@ sdhci2: mmc@fa20000 {
 		status = "disabled";
 	};
 
+	usbss0: usb@f900000 {
+		compatible = "ti,am62-usb";
+		reg = <0x00 0x0f900000 0x00 0x800>;
+		clocks = <&k3_clks 161 3>;
+		clock-names = "ref";
+		ti,syscon-phy-pll-refclk = <&usb0_phy_ctrl 0x0>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		power-domains = <&k3_pds 178 TI_SCI_PD_EXCLUSIVE>;
+		ranges;
+		status = "disabled";
+
+		usb0: usb@31000000 {
+			compatible = "snps,dwc3";
+			reg = <0x00 0x31000000 0x00 0x50000>;
+			interrupts = <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>, /* irq.0 */
+			<GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>; /* irq.0 */
+			interrupt-names = "host", "peripheral";
+			maximum-speed = "high-speed";
+			dr_mode = "otg";
+		};
+	};
+
+	usbss1: usb@f910000 {
+		compatible = "ti,am62-usb";
+		reg = <0x00 0x0f910000 0x00 0x800>;
+		clocks = <&k3_clks 162 3>;
+		clock-names = "ref";
+		ti,syscon-phy-pll-refclk = <&usb1_phy_ctrl 0x0>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		power-domains = <&k3_pds 179 TI_SCI_PD_EXCLUSIVE>;
+		ranges;
+		status = "disabled";
+
+		usb1: usb@31100000 {
+			compatible = "snps,dwc3";
+			reg = <0x00 0x31100000 0x00 0x50000>;
+			interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>, /* irq.0 */
+			<GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>; /* irq.0 */
+			interrupt-names = "host", "peripheral";
+			maximum-speed = "high-speed";
+			dr_mode = "otg";
+		};
+	};
+
 	fss: bus@fc00000 {
 		compatible = "simple-bus";
 		reg = <0x00 0x0fc00000 0x00 0x70000>;
diff --git a/arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi
index 19f42b39394e..00dd38b02a52 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p-wakeup.dtsi
@@ -18,6 +18,16 @@ chipid: chipid@14 {
 			reg = <0x14 0x4>;
 			bootph-all;
 		};
+
+		usb0_phy_ctrl: syscon@4008 {
+			compatible = "ti,am62-usb-phy-ctrl", "syscon";
+			reg = <0x4008 0x4>;
+		};
+
+		usb1_phy_ctrl: syscon@4018 {
+			compatible = "ti,am62-usb-phy-ctrl", "syscon";
+			reg = <0x4018 0x4>;
+		};
 	};
 
 	wkup_uart0: serial@2b300000 {
diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
index 1773c05f752c..80be56c0a4e0 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
@@ -27,6 +27,8 @@ aliases {
 		spi0 = &ospi0;
 		ethernet0 = &cpsw_port1;
 		ethernet1 = &cpsw_port2;
+		usb0 = &usb0;
+		usb1 = &usb1;
 	};
 
 	chosen {
@@ -297,6 +299,12 @@ AM62PX_IOPAD(0x01b0, PIN_OUTPUT, 2) /* (G20) MCASP0_ACLKR.UART1_TXD */
 		bootph-all;
 	};
 
+	main_usb1_pins_default: main-usb1-default-pins {
+		pinctrl-single,pins = <
+			AM62PX_IOPAD(0x0258, PIN_INPUT, 0) /* (G21) USB1_DRVVBUS */
+		>;
+	};
+
 	main_wlirq_pins_default: main-wlirq-default-pins {
 		pinctrl-single,pins = <
 			AM62PX_IOPAD(0x0128, PIN_INPUT, 7) /* (K25) MMC2_SDWP.GPIO0_72 */
@@ -340,6 +348,36 @@ AM62PX_IOPAD(0x0124, PIN_INPUT, 7) /* (J25) MMC2_SDCD.GPIO0_71 */
 	};
 };
 
+&main_i2c0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_i2c0_pins_default>;
+	clock-frequency = <400000>;
+
+	typec_pd0: usb-power-controller@3f {
+		compatible = "ti,tps6598x";
+		reg = <0x3f>;
+
+		connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			self-powered;
+			data-role = "dual";
+			power-role = "sink";
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				port@0 {
+					reg = <0>;
+					usb_con_hs: endpoint {
+						remote-endpoint = <&usb0_hs_ep>;
+					};
+				};
+			};
+		};
+	};
+};
+
 &main_i2c1 {
 	status = "okay";
 	pinctrl-names = "default";
@@ -460,6 +498,35 @@ cpsw3g_phy1: ethernet-phy@1 {
 	};
 };
 
+&usbss0 {
+	status = "okay";
+	ti,vbus-divider;
+};
+
+&usbss1 {
+	status = "okay";
+	ti,vbus-divider;
+};
+
+&usb0 {
+	usb-role-switch;
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	port@0 {
+		reg = <0>;
+		usb0_hs_ep: endpoint {
+			remote-endpoint = <&usb_con_hs>;
+		};
+	};
+};
+
+&usb1 {
+	dr_mode = "host";
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_usb1_pins_default>;
+};
+
 &mcasp1 {
 	status = "okay";
 	#sound-dai-cells = <0>;
-- 
2.34.1


