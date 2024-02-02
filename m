Return-Path: <devicetree+bounces-37959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5ED846F6C
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 12:50:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7A678B2B221
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 11:48:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 444C013EFEA;
	Fri,  2 Feb 2024 11:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="rATq7pQd"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5AE413DBB9;
	Fri,  2 Feb 2024 11:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706874512; cv=none; b=SJ5XS4s4hF6muKvBcdEURuoHqMRxIf1aMSPtqGj4Ku4F3///oFhUAsWD8V+61oA/KFndHMMeY6EfGonoyhlRFS0Z1jkiiHisQkT7MtMUaCy+n2iFedI9dWXmgQdBTeT2Fn/u8RqerRmxAgsn51fw6+lC3Gu2c5syWlNq0jwulIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706874512; c=relaxed/simple;
	bh=+8IfsNSGhOw4A33BhNKGjP4x2/c3jdzNv193L8vx7EY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LiuX/Wtdun/hWjZj7yIYTWZSY70qOqfJ/Ktc2yIk6aDt8lrsFfdA+jOLzpn6IlNi/zgwUcRbmctIKOu8q+8JuQGvOJd958fOp9CJ6ilgvhLQZkpnkCbZtL99KQF3ZGjI8qAZh4aocqGyNTFs6bQiHt+TQx/QsOCMrW6l7QdN9Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=rATq7pQd; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706874508;
	bh=+8IfsNSGhOw4A33BhNKGjP4x2/c3jdzNv193L8vx7EY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rATq7pQd3zZr4mBCAEQabrARkdU2O/vSebl4wvmfv57fT1uTQNtVhNcciWMl5MUfl
	 Xe3F5hzp1gEfbq6IpaagWgzp2jQQQmEPoIlaeg2Wt3blZyy5uLYwqUQJlEg6NOviAv
	 nRR6Fp/XYLKQE1vXF5qPSTMF8rlLyhGEquoA8+lNxwPt+9cymOQvMoossIrg795xRV
	 k5AulmzQl4b7/kJ2II0V9mOXrFoDkfOiha0M+UY2GsVMzC5YVWnpoS4VnbBGJCryYe
	 6042TWcx8Sa8xK3mDbfwwmK0snSnP0qQ/jaYDh3R/uQ7CuHa4PizMpPCyW36sqMY52
	 KSpfj/QI0YciA==
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 05A493782098;
	Fri,  2 Feb 2024 11:48:26 +0000 (UTC)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	wenst@chromium.org,
	hsinyi@chromium.org,
	nfraprado@collabora.com,
	macpaul.lin@mediatek.com,
	sean.wang@mediatek.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	stephen@radxa.com,
	tom@radxa.com
Subject: [PATCH v2 2/2] arm64: dts: mediatek: Introduce the MT8395 Radxa NIO 12L board
Date: Fri,  2 Feb 2024 12:48:21 +0100
Message-ID: <20240202114821.79227-3-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240202114821.79227-1-angelogioacchino.delregno@collabora.com>
References: <20240202114821.79227-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a device tree for the Radxa NIO 12L SBC, powered by the MediaTek
MT8395 Genio 1200 SoC.

This board features:
 * MT6359 + MT6360 PMICs at I2C-6
   - Regulators, battery charger, TypeC Port Controller Interface
   - Audio through 3.5mm jack (2CH out, 1CH in)
 * Two MT6315 PMICs over SPMI
   - CPU-Big and GPU Core regulators
 * Network Connectivity
   - Realtek RTL8211FD MDIO PHY/Transceiver, 10/100/1000M Ethernet
   - MT7921E WiFi (PCIe1) / Bluetooth (USB 2.0) combo chip
 * Storage
   - On-board UFS storage
   - On-board eMMC on MMC0 controller
   - MicroSD card slot on MMC1 controller
 * Other connectivity
   - 1x USB Type-C Charging/Power only port
   - 1x USB 3.2 SuperSpeed Type-C OTG+DisplayPort mode
     - Muxed by ITE IT5205 Alternate Mode Passive MUX
   - 4x USB 3.0 Type-A ports on VL805 USB Hub (PCIe0)
   - 1x HDMI IN port
   - 1x HDMI OUT port
   - 1x MIPI DSI (Display) port
   - 2x MIPI CSI (Camera) ports
 * 40-pin Expansion Header
   - Two UART ports
   - I2C, SPI busses
   - I2S for external audio chips
   - ADC
   - GPIOs

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/Makefile         |   1 +
 .../dts/mediatek/mt8395-radxa-nio-12l.dts     | 825 ++++++++++++++++++
 2 files changed, 826 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 1e6f91731e92..fdd8f4a58003 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -63,4 +63,5 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8195-demo.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8195-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8365-evk.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-genio-1200-evk.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8516-pumpkin.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
new file mode 100644
index 000000000000..e5d9b671a405
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
@@ -0,0 +1,825 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2023 Radxa Limited
+ * Copyright (C) 2024 Collabora Ltd.
+ *                    AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
+ */
+
+#include "mt8195.dtsi"
+#include "mt6359.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/pinctrl/mt8195-pinfunc.h>
+#include <dt-bindings/regulator/mediatek,mt6360-regulator.h>
+#include <dt-bindings/spmi/spmi.h>
+#include <dt-bindings/usb/pd.h>
+
+/ {
+	model = "Radxa NIO 12L";
+	chassis-type = "embedded";
+	compatible = "radxa,nio-12l", "mediatek,mt8395", "mediatek,mt8195";
+
+	aliases {
+		i2c0 = &i2c2;
+		i2c1 = &i2c3;
+		i2c2 = &i2c4;
+		i2c3 = &i2c0;
+		i2c4 = &i2c1;
+		ethernet0 = &eth;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		spi0 = &spi1;
+		spi1 = &spi2;
+	};
+
+	chosen {
+		stdout-path = "serial0:921600n8";
+	};
+
+	firmware {
+		optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0 0x40000000 0x1 0x0>;
+	};
+
+	wifi_vreg: regulator-wifi-3v3-en {
+		compatible = "regulator-fixed";
+		regulator-name = "wifi_3v3_en";
+		regulator-always-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&pio 67 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_vreg_pins>;
+		vin-supply = <&vsys>;
+	};
+
+	/* system wide switching 5.0V power rail */
+	vsys: regulator-vsys {
+		compatible = "regulator-fixed";
+		regulator-name = "vsys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_vsys>;
+	};
+
+	vsys_buck: regulator-vsys-buck {
+		compatible = "regulator-fixed";
+		regulator-name = "vsys_buck";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_vsys>;
+	};
+
+	/* Rail from power-only "TYPE C DC" port */
+	vcc5v0_vsys: regulator-vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		/*
+		 * 12 MiB reserved for OP-TEE (BL32)
+		 * +-----------------------+ 0x43e0_0000
+		 * |      SHMEM 2MiB       |
+		 * +-----------------------+ 0x43c0_0000
+		 * |        | TA_RAM  8MiB |
+		 * + TZDRAM +--------------+ 0x4340_0000
+		 * |        | TEE_RAM 2MiB |
+		 * +-----------------------+ 0x4320_0000
+		 */
+		optee_reserved: optee@43200000 {
+			reg = <0 0x43200000 0 0xc00000>;
+			no-map;
+		};
+
+		scp_mem: memory@50000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x50000000 0 0x2900000>;
+			no-map;
+		};
+
+		vpu_mem: memory@53000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x53000000 0 0x1400000>; /* 20 MB */
+		};
+
+		/* 2 MiB reserved for ARM Trusted Firmware (BL31) */
+		bl31_secmon_mem: memory@54600000 {
+			reg = <0 0x54600000 0x0 0x200000>;
+			no-map;
+		};
+
+		afe_mem: memory@60000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x60000000 0 0x1100000>;
+			no-map;
+		};
+
+		apu_mem: memory@62000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x62000000 0 0x1400000>; /* 20 MB */
+		};
+	};
+};
+
+&eth {
+	phy-mode = "rgmii-rxid";
+	phy-handle = <&rgmii_phy>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&eth_default_pins>;
+	pinctrl-1 = <&eth_sleep_pins>;
+	mediatek,tx-delay-ps = <2030>;
+	mediatek,mac-wol;
+	snps,reset-gpio = <&pio 93 GPIO_ACTIVE_HIGH>;
+	snps,reset-delays-us = <0 20000 100000>;
+	status = "okay";
+
+	mdio {
+		rgmii_phy: ethernet-phy@1 {
+			compatible = "ethernet-phy-id001c.c916";
+			reg = <0x1>;
+		};
+	};
+};
+
+&gpu {
+	mali-supply = <&mt6315_7_vbuck1>;
+	status = "okay";
+};
+
+&i2c2 {
+	clock-frequency = <400000>;
+	pinctrl-0 = <&i2c2_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	typec-mux@48 {
+		compatible = "ite,it5205";
+		reg = <0x48>;
+
+		mode-switch;
+		orientation-switch;
+
+		vcc-supply = <&mt6359_vibr_ldo_reg>;
+
+		port {
+			it5205_sbu_mux: endpoint {
+				remote-endpoint = <&typec_con_mux>;
+			};
+		};
+	};
+};
+
+&i2c4 {
+	clock-frequency = <400000>;
+	pinctrl-0 = <&i2c4_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	/* I2C4 exposed at 39-pins MIPI-LCD connector */
+};
+
+&i2c6 {
+	clock-frequency = <400000>;
+	pinctrl-0 = <&i2c6_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	mt6360: pmic@34 {
+		compatible = "mediatek,mt6360";
+		reg = <0x34>;
+		interrupts-extended = <&pio 101 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-names = "IRQB";
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		pinctrl-0 = <&mt6360_pins>;
+
+		charger {
+			compatible = "mediatek,mt6360-chg";
+			richtek,vinovp-microvolt = <14500000>;
+
+			otg_vbus_regulator: usb-otg-vbus-regulator {
+				regulator-name = "usb-otg-vbus";
+				regulator-min-microvolt = <4425000>;
+				regulator-max-microvolt = <5825000>;
+			};
+		};
+
+		regulator {
+			compatible = "mediatek,mt6360-regulator";
+			LDO_VIN1-supply = <&vsys_buck>;
+			LDO_VIN3-supply = <&mt6360_buck2>;
+
+			mt6360_buck1: buck1 {
+				regulator-name = "emi_vdd2";
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
+							   MT6360_OPMODE_LP
+							   MT6360_OPMODE_ULP>;
+				regulator-always-on;
+			};
+
+			mt6360_buck2: buck2 {
+				regulator-name = "emi_vddq";
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
+							   MT6360_OPMODE_LP
+							   MT6360_OPMODE_ULP>;
+				regulator-always-on;
+			};
+
+			mt6360_ldo1: ldo1 {
+				regulator-name = "ext_lcd_3v3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
+							   MT6360_OPMODE_LP>;
+				regulator-always-on;
+			};
+
+			mt6360_ldo2: ldo2 {
+				regulator-name = "panel1_p1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
+							   MT6360_OPMODE_LP>;
+			};
+
+			mt6360_ldo3: ldo3 {
+				regulator-name = "vmc_pmu";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
+							   MT6360_OPMODE_LP>;
+			};
+
+			mt6360_ldo5: ldo5 {
+				regulator-name = "vmch_pmu";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
+							   MT6360_OPMODE_LP>;
+				regulator-always-on;
+			};
+
+			mt6360_ldo6: ldo6 {
+				regulator-name = "mt6360_ldo6"; /* Test point */
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <2100000>;
+				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
+							   MT6360_OPMODE_LP>;
+			};
+
+			mt6360_ldo7: ldo7 {
+				regulator-name = "emi_vmddr_en";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <2100000>;
+				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
+							   MT6360_OPMODE_LP>;
+				regulator-always-on;
+			};
+		};
+
+		typec {
+			compatible = "mediatek,mt6360-tcpc";
+			interrupts-extended = <&pio 100 IRQ_TYPE_LEVEL_LOW>;
+			interrupt-names = "PD_IRQB";
+
+			connector {
+				compatible = "usb-c-connector";
+				label = "USB-C";
+				data-role = "dual";
+				op-sink-microwatt = <10000000>;
+				power-role = "dual";
+				try-power-role = "sink";
+
+				source-pdos = <PDO_FIXED(5000, 1000,
+							 PDO_FIXED_DUAL_ROLE |
+							 PDO_FIXED_DATA_SWAP)>;
+				sink-pdos = <PDO_FIXED(5000, 3000,
+						       PDO_FIXED_DUAL_ROLE |
+						       PDO_FIXED_DATA_SWAP)>;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						typec_con_hs: endpoint {
+							remote-endpoint = <&mtu3_hs0_role_sw>;
+						};
+					};
+
+					port@2 {
+						reg = <2>;
+						typec_con_mux: endpoint {
+							remote-endpoint = <&it5205_sbu_mux>;
+						};
+					};
+				};
+			};
+		};
+	};
+};
+
+/* MMC0 Controller: eMMC (HS400). Power lines are shared with UFS! */
+&mmc0 {
+	pinctrl-names = "default", "state_uhs";
+	pinctrl-0 = <&mmc0_default_pins>;
+	pinctrl-1 = <&mmc0_uhs_pins>;
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	hs400-ds-delay = <0x14c11>;
+	cap-mmc-highspeed;
+	cap-mmc-hw-reset;
+	mmc-hs200-1_8v;
+	mmc-hs400-1_8v;
+	no-sdio;
+	no-sd;
+	non-removable;
+	vmmc-supply = <&mt6359_vemc_1_ldo_reg>;
+	vqmmc-supply = <&mt6359_vufs_ldo_reg>;
+	status = "okay";
+};
+
+/* MMC1 Controller: MicroSD card slot */
+&mmc1 {
+	pinctrl-names = "default", "state_uhs";
+	pinctrl-0 = <&mmc1_default_pins>, <&mmc1_pins_detect>;
+	pinctrl-1 = <&mmc1_default_pins>;
+	bus-width = <4>;
+	max-frequency = <200000000>;
+	cap-sd-highspeed;
+	cd-gpios = <&pio 129 GPIO_ACTIVE_LOW>;
+	no-mmc;
+	no-sdio;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	vmmc-supply = <&mt6360_ldo5>;
+	vqmmc-supply = <&mt6360_ldo3>;
+	status = "okay";
+};
+
+&mt6359_vaud18_ldo_reg {
+	regulator-always-on;
+};
+
+&mt6359_vbbck_ldo_reg {
+	regulator-always-on;
+};
+
+/* For USB Hub */
+&mt6359_vcamio_ldo_reg {
+	regulator-always-on;
+};
+
+&mt6359_vcn33_2_bt_ldo_reg {
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
+};
+
+&mt6359_vcore_buck_reg {
+	regulator-always-on;
+};
+
+&mt6359_vgpu11_buck_reg {
+	regulator-always-on;
+};
+
+&mt6359_vproc1_buck_reg {
+	regulator-always-on;
+};
+
+&mt6359_vproc2_buck_reg {
+	regulator-always-on;
+};
+
+&mt6359_vpu_buck_reg {
+	regulator-always-on;
+};
+
+&mt6359_vrf12_ldo_reg {
+	regulator-always-on;
+};
+
+&mt6359_vsram_md_ldo_reg {
+	regulator-always-on;
+};
+
+/* for GPU SRAM */
+&mt6359_vsram_others_ldo_reg {
+	regulator-min-microvolt = <750000>;
+	regulator-max-microvolt = <750000>;
+};
+
+&pio {
+	eth_default_pins: eth-default-pins {
+		pins-cc {
+			pinmux = <PINMUX_GPIO85__FUNC_GBE_TXC>,
+				 <PINMUX_GPIO86__FUNC_GBE_RXC>,
+				 <PINMUX_GPIO87__FUNC_GBE_RXDV>,
+				 <PINMUX_GPIO88__FUNC_GBE_TXEN>;
+			drive-strength = <8>;
+		};
+
+		pins-mdio {
+			pinmux = <PINMUX_GPIO89__FUNC_GBE_MDC>,
+				 <PINMUX_GPIO90__FUNC_GBE_MDIO>;
+			input-enable;
+		};
+
+		pins-power {
+			pinmux = <PINMUX_GPIO91__FUNC_GPIO91>,
+				 <PINMUX_GPIO92__FUNC_GPIO92>;
+			output-high;
+		};
+
+		pins-rst {
+			pinmux = <PINMUX_GPIO93__FUNC_GPIO93>;
+		};
+
+		pins-rxd {
+			pinmux = <PINMUX_GPIO81__FUNC_GBE_RXD3>,
+				 <PINMUX_GPIO82__FUNC_GBE_RXD2>,
+				 <PINMUX_GPIO83__FUNC_GBE_RXD1>,
+				 <PINMUX_GPIO84__FUNC_GBE_RXD0>;
+		};
+
+		pins-txd {
+			pinmux = <PINMUX_GPIO77__FUNC_GBE_TXD3>,
+				 <PINMUX_GPIO78__FUNC_GBE_TXD2>,
+				 <PINMUX_GPIO79__FUNC_GBE_TXD1>,
+				 <PINMUX_GPIO80__FUNC_GBE_TXD0>;
+			drive-strength = <8>;
+		};
+	};
+
+	eth_sleep_pins: eth-sleep-pins {
+		pins-cc {
+			pinmux = <PINMUX_GPIO85__FUNC_GPIO85>,
+				 <PINMUX_GPIO86__FUNC_GPIO86>,
+				 <PINMUX_GPIO87__FUNC_GPIO87>,
+				 <PINMUX_GPIO88__FUNC_GPIO88>;
+		};
+
+		pins-mdio {
+			pinmux = <PINMUX_GPIO89__FUNC_GPIO89>,
+				 <PINMUX_GPIO90__FUNC_GPIO90>;
+			bias-disable;
+			input-disable;
+		};
+
+		pins-rxd {
+			pinmux = <PINMUX_GPIO81__FUNC_GPIO81>,
+				 <PINMUX_GPIO82__FUNC_GPIO82>,
+				 <PINMUX_GPIO83__FUNC_GPIO83>,
+				 <PINMUX_GPIO84__FUNC_GPIO84>;
+		};
+
+		pins-txd {
+			pinmux = <PINMUX_GPIO77__FUNC_GPIO77>,
+				 <PINMUX_GPIO78__FUNC_GPIO78>,
+				 <PINMUX_GPIO79__FUNC_GPIO79>,
+				 <PINMUX_GPIO80__FUNC_GPIO80>;
+		};
+	};
+
+	i2c2_pins: i2c2-pins {
+		pins-bus {
+			pinmux = <PINMUX_GPIO12__FUNC_SDA2>,
+				 <PINMUX_GPIO13__FUNC_SCL2>;
+			bias-pull-up = <MTK_PULL_SET_RSEL_111>;
+			drive-strength = <6>;
+			drive-strength-microamp = <1000>;
+		};
+	};
+
+	i2c4_pins: i2c4-pins {
+		pins-bus {
+			pinmux = <PINMUX_GPIO16__FUNC_SDA4>,
+				 <PINMUX_GPIO17__FUNC_SCL4>;
+			bias-pull-up = <MTK_PULL_SET_RSEL_111>;
+			drive-strength-microamp = <1000>;
+		};
+	};
+
+	i2c6_pins: i2c6-pins {
+		pins {
+			pinmux = <PINMUX_GPIO25__FUNC_SDA6>,
+				 <PINMUX_GPIO26__FUNC_SCL6>;
+			bias-pull-up = <MTK_PULL_SET_RSEL_111>;
+		};
+	};
+
+	mmc0_default_pins: mmc0-default-pins {
+		pins-clk {
+			pinmux = <PINMUX_GPIO122__FUNC_MSDC0_CLK>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+			drive-strength = <6>;
+		};
+
+		pins-cmd-dat {
+			pinmux = <PINMUX_GPIO126__FUNC_MSDC0_DAT0>,
+				 <PINMUX_GPIO125__FUNC_MSDC0_DAT1>,
+				 <PINMUX_GPIO124__FUNC_MSDC0_DAT2>,
+				 <PINMUX_GPIO123__FUNC_MSDC0_DAT3>,
+				 <PINMUX_GPIO119__FUNC_MSDC0_DAT4>,
+				 <PINMUX_GPIO118__FUNC_MSDC0_DAT5>,
+				 <PINMUX_GPIO117__FUNC_MSDC0_DAT6>,
+				 <PINMUX_GPIO116__FUNC_MSDC0_DAT7>,
+				 <PINMUX_GPIO121__FUNC_MSDC0_CMD>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+			drive-strength = <6>;
+			input-enable;
+		};
+
+		pins-rst {
+			pinmux = <PINMUX_GPIO120__FUNC_MSDC0_RSTB>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+			drive-strength = <6>;
+		};
+	};
+
+	mmc0_uhs_pins: mmc0-uhs-pins {
+		pins-clk {
+			pinmux = <PINMUX_GPIO122__FUNC_MSDC0_CLK>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+			drive-strength = <8>;
+		};
+
+		pins-cmd-dat {
+			pinmux = <PINMUX_GPIO126__FUNC_MSDC0_DAT0>,
+				 <PINMUX_GPIO125__FUNC_MSDC0_DAT1>,
+				 <PINMUX_GPIO124__FUNC_MSDC0_DAT2>,
+				 <PINMUX_GPIO123__FUNC_MSDC0_DAT3>,
+				 <PINMUX_GPIO119__FUNC_MSDC0_DAT4>,
+				 <PINMUX_GPIO118__FUNC_MSDC0_DAT5>,
+				 <PINMUX_GPIO117__FUNC_MSDC0_DAT6>,
+				 <PINMUX_GPIO116__FUNC_MSDC0_DAT7>,
+				 <PINMUX_GPIO121__FUNC_MSDC0_CMD>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+			drive-strength = <8>;
+			input-enable;
+		};
+
+		pins-ds {
+			pinmux = <PINMUX_GPIO127__FUNC_MSDC0_DSL>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+			drive-strength = <8>;
+		};
+
+		pins-rst {
+			pinmux = <PINMUX_GPIO120__FUNC_MSDC0_RSTB>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+			drive-strength = <8>;
+		};
+	};
+
+	mmc1_default_pins: mmc1-default-pins {
+		pins-clk {
+			pinmux = <PINMUX_GPIO111__FUNC_MSDC1_CLK>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+			drive-strength = <8>;
+		};
+
+		pins-cmd-dat {
+			pinmux = <PINMUX_GPIO110__FUNC_MSDC1_CMD>,
+				 <PINMUX_GPIO112__FUNC_MSDC1_DAT0>,
+				 <PINMUX_GPIO113__FUNC_MSDC1_DAT1>,
+				 <PINMUX_GPIO114__FUNC_MSDC1_DAT2>,
+				 <PINMUX_GPIO115__FUNC_MSDC1_DAT3>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+			drive-strength = <8>;
+			input-enable;
+		};
+	};
+
+	mmc1_pins_detect: mmc1-detect-pins {
+		pins-insert {
+			pinmux = <PINMUX_GPIO129__FUNC_GPIO129>;
+			bias-pull-up;
+		};
+	};
+
+	mt6360_pins: mt6360-pins {
+		pins-irq {
+			pinmux = <PINMUX_GPIO100__FUNC_GPIO100>,
+				 <PINMUX_GPIO101__FUNC_GPIO101>;
+			input-enable;
+			bias-pull-up;
+		};
+	};
+
+	pcie0_default_pins: pcie0-default-pins {
+		pins-bus {
+			pinmux = <PINMUX_GPIO19__FUNC_WAKEN>,
+				 <PINMUX_GPIO20__FUNC_PERSTN>,
+				 <PINMUX_GPIO21__FUNC_CLKREQN>;
+			bias-pull-up;
+		};
+	};
+
+	pcie1_default_pins: pcie1-default-pins {
+		pins-bus {
+			pinmux = <PINMUX_GPIO0__FUNC_PERSTN_1>,
+				 <PINMUX_GPIO1__FUNC_CLKREQN_1>,
+				 <PINMUX_GPIO2__FUNC_WAKEN_1>;
+			bias-disable;
+		};
+	};
+
+	spi1_pins: spi1-default-pins {
+		pins-bus {
+			pinmux = <PINMUX_GPIO136__FUNC_SPIM1_CSB>,
+				 <PINMUX_GPIO137__FUNC_SPIM1_CLK>,
+				 <PINMUX_GPIO138__FUNC_SPIM1_MO>,
+				 <PINMUX_GPIO139__FUNC_SPIM1_MI>;
+			bias-disable;
+		};
+	};
+
+	spi2_pins: spi2-default-pins {
+		pins-bus {
+			pinmux = <PINMUX_GPIO140__FUNC_SPIM2_CSB>,
+				 <PINMUX_GPIO141__FUNC_SPIM2_CLK>,
+				 <PINMUX_GPIO142__FUNC_SPIM2_MO>,
+				 <PINMUX_GPIO143__FUNC_SPIM2_MI>;
+			bias-disable;
+		};
+	};
+
+	uart0_pins: uart0-pins {
+		pins-bus {
+			pinmux = <PINMUX_GPIO98__FUNC_UTXD0>,
+				 <PINMUX_GPIO99__FUNC_URXD0>;
+		};
+	};
+
+	uart1_pins: uart1-pins {
+		pins-bus {
+			pinmux = <PINMUX_GPIO102__FUNC_UTXD1>,
+				 <PINMUX_GPIO103__FUNC_URXD1>;
+		};
+	};
+
+	wifi_vreg_pins: wifi-vreg-pins {
+		pins-wifi-pmu-en {
+			pinmux = <PINMUX_GPIO65__FUNC_GPIO65>;
+			output-high;
+		};
+
+		pins-wifi-vreg-en {
+			pinmux = <PINMUX_GPIO67__FUNC_GPIO67>;
+		};
+	};
+};
+
+&pcie0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie0_default_pins>;
+	status = "okay";
+};
+
+&pcie1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie1_default_pins>;
+	status = "okay";
+};
+
+&pmic {
+	interrupts-extended = <&pio 222 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&scp {
+	memory-region = <&scp_mem>;
+	status = "okay";
+};
+
+&spi1 {
+	/* Exposed at 40 pin connector */
+	pinctrl-0 = <&spi1_pins>;
+	pinctrl-names = "default";
+	mediatek,pad-select = <0>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+};
+
+&spi2 {
+	/* Exposed at 40 pin connector */
+	pinctrl-0 = <&spi2_pins>;
+	pinctrl-names = "default";
+	mediatek,pad-select = <0>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+};
+
+&spmi {
+	#address-cells = <2>;
+	#size-cells = <0>;
+
+	mt6315_6: pmic@6 {
+		compatible = "mediatek,mt6315-regulator";
+		reg = <0x6 SPMI_USID>;
+
+		regulators {
+			mt6315_6_vbuck1: vbuck1 {
+				regulator-compatible = "vbuck1";
+				regulator-name = "Vbcpu";
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1193750>;
+				regulator-enable-ramp-delay = <256>;
+				regulator-allowed-modes = <0 1 2>;
+				regulator-always-on;
+			};
+		};
+	};
+
+	mt6315_7: pmic@7 {
+		compatible = "mediatek,mt6315-regulator";
+		reg = <0x7 SPMI_USID>;
+
+		regulators {
+			mt6315_7_vbuck1: vbuck1 {
+				regulator-compatible = "vbuck1";
+				regulator-name = "Vgpu";
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1193750>;
+				regulator-enable-ramp-delay = <256>;
+				regulator-allowed-modes = <0 1 2>;
+			};
+		};
+	};
+};
+
+&uart0 {
+	/* Exposed at 40 pin connector */
+	pinctrl-0 = <&uart0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&uart1 {
+	/* Exposed at 40 pin connector */
+	pinctrl-0 = <&uart1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&ssusb0 {
+	role-switch-default-mode = "host";
+	usb-role-switch;
+	vusb33-supply = <&mt6359_vusb_ldo_reg>;
+	status = "okay";
+
+	port {
+		mtu3_hs0_role_sw: endpoint {
+			remote-endpoint = <&typec_con_hs>;
+		};
+	};
+};
+
+&ssusb2 {
+	vusb33-supply = <&mt6359_vusb_ldo_reg>;
+	status = "okay";
+};
+
+&xhci0 {
+	vbus-supply = <&otg_vbus_regulator>;
+	status = "okay";
+};
+
+&xhci1 {
+	/* MT7921's USB Bluetooth has issues with USB2 LPM */
+	usb2-lpm-disable;
+	vusb33-supply = <&mt6359_vusb_ldo_reg>;
+	vbus-supply = <&vsys>;
+	status = "okay";
+};
+
+&xhci2 {
+	vbus-supply = <&vsys>;
+	status = "okay";
+};
-- 
2.43.0


