Return-Path: <devicetree+bounces-138742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8F0A11F68
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 11:30:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CF11169C03
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 10:30:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 661D52416AA;
	Wed, 15 Jan 2025 10:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="EOwp0fPc"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BE241DB130;
	Wed, 15 Jan 2025 10:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736936989; cv=none; b=QqHMpxFCzMG7SvWJtnhVUuYejT5Oik31BuZ6lP0PBTg0ealW7hygj74SOA6ab+YeahnANltfEUm8KecJwd2eEJ7UJp17TDP5zDGlNNXY5slLwM/+YmIaSc9BSyIwE1Oixs9IBznxHBC56vPuu14emLYXmEDuJ66fL0CeTwR5GdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736936989; c=relaxed/simple;
	bh=vWA43wGD/MV13wvRZYScfNRbkyi1+ipddm9ITL5OxqY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=A4W25YfRo5aMRi35i8MUODhwh/oePFdk7HgwrHvo5B9hYQIIBVd2Fpnpr1ALLNIWPcufdkX4bZWOa4qX3Qbewql5s7TzDXmPFRiJxK5WLU8qH9Cufi0VXEExkl6A44HtvpZAE04tb/rOcTbOeOZJXi1g1N2oKIRxJsMC1AzfpG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=EOwp0fPc; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736936983;
	bh=vWA43wGD/MV13wvRZYScfNRbkyi1+ipddm9ITL5OxqY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=EOwp0fPcEl+QmAVDf5wdSq3ZILw1zdAogkOKs7yCHJfY/4IhuU6eZWFAhnzMHKBdS
	 2aguTvI64GVa5LsHGpW4agYjWkJoTIK92JF0Rm3lrJXwI93XLPIQ5FYiRqU692if9W
	 NivuiZlFBHhcEZWliEmXaTr6puJbXUsO+M9AzrUXXl6ztjaKFBOpdFhZMScg29ulVp
	 yWYh6K9zNpeQ2ueINVmL8M5IjWRGb+sJFyuekmj48lOUxEHLayoCAVMTtSRSX3IpjZ
	 SWB7sdyuVBsG7mX9SyU3aguy9hkB7TlNLV9ITUzWLO7lZSzjG6By2lFq0WWYl+TmKE
	 gEWnlkKMve20g==
Received: from fedora.home (lfbn-tou-1-1147-231.w90-76.abo.wanadoo.fr [90.76.208.231])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A9E6017E0E64;
	Wed, 15 Jan 2025 11:29:41 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Wed, 15 Jan 2025 11:29:04 +0100
Subject: [PATCH v2 3/4] arm64: dts: mediatek: mt8390-genio-700-evk: Move
 common parts to dtsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250115-dts_mt8370-genio-510-v2-3-fc9b01d08834@collabora.com>
References: <20250115-dts_mt8370-genio-510-v2-0-fc9b01d08834@collabora.com>
In-Reply-To: <20250115-dts_mt8370-genio-510-v2-0-fc9b01d08834@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 kernel@collabora.com, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736936976; l=51089;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=vWA43wGD/MV13wvRZYScfNRbkyi1+ipddm9ITL5OxqY=;
 b=I/E6HSjoSEgUFs7+Tt0MW9tsbkvkzHMyyhw5AiFd9OoJcK1unLwvc2e9p6pMzbW9tzT4h3WRC
 rvtayidDleMCPEVwujoMEvCPwV2IaImuRV/6rUAO52FZprADKpuaU8Q
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

In preparation for introducing the Genio 510 EVK board support, this
commit splits mt8390-genio-700-evk.dts file in two to create
mt8390-genio-common.dtsi file, containing common definitions for
both boards.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 .../boot/dts/mediatek/mt8390-genio-700-evk.dts     | 1033 +------------------
 .../boot/dts/mediatek/mt8390-genio-common.dtsi     | 1040 ++++++++++++++++++++
 2 files changed, 1041 insertions(+), 1032 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8390-genio-700-evk.dts b/arch/arm64/boot/dts/mediatek/mt8390-genio-700-evk.dts
index 04e4a2f73799d04d50476eb1664b1afdbc66c124..612336713a64ee0681f6ebead04ba4ea293d1a53 100644
--- a/arch/arm64/boot/dts/mediatek/mt8390-genio-700-evk.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8390-genio-700-evk.dts
@@ -8,1047 +8,16 @@
 /dts-v1/;
 
 #include "mt8188.dtsi"
-#include "mt6359.dtsi"
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
-#include <dt-bindings/interrupt-controller/irq.h>
-#include <dt-bindings/pinctrl/mediatek,mt8188-pinfunc.h>
-#include <dt-bindings/regulator/mediatek,mt6360-regulator.h>
-#include <dt-bindings/spmi/spmi.h>
-#include <dt-bindings/usb/pd.h>
+#include "mt8390-genio-common.dtsi"
 
 / {
 	model = "MediaTek Genio-700 EVK";
 	compatible = "mediatek,mt8390-evk", "mediatek,mt8390",
 		     "mediatek,mt8188";
 
-	aliases {
-		ethernet0 = &eth;
-		i2c0 = &i2c0;
-		i2c1 = &i2c1;
-		i2c2 = &i2c2;
-		i2c3 = &i2c3;
-		i2c4 = &i2c4;
-		i2c5 = &i2c5;
-		i2c6 = &i2c6;
-		mmc0 = &mmc0;
-		mmc1 = &mmc1;
-		serial0 = &uart0;
-	};
-
-	chosen {
-		stdout-path = "serial0:921600n8";
-	};
-
-	firmware {
-		optee {
-			compatible = "linaro,optee-tz";
-			method = "smc";
-		};
-	};
-
 	memory@40000000 {
 		device_type = "memory";
 		reg = <0 0x40000000 0x2 0x00000000>;
 	};
-
-	reserved-memory {
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
-
-		/*
-		 * 12 MiB reserved for OP-TEE (BL32)
-		 * +-----------------------+ 0x43e0_0000
-		 * |      SHMEM 2MiB       |
-		 * +-----------------------+ 0x43c0_0000
-		 * |        | TA_RAM  8MiB |
-		 * + TZDRAM +--------------+ 0x4340_0000
-		 * |        | TEE_RAM 2MiB |
-		 * +-----------------------+ 0x4320_0000
-		 */
-		optee_reserved: optee@43200000 {
-			no-map;
-			reg = <0 0x43200000 0 0x00c00000>;
-		};
-
-		scp_mem: memory@50000000 {
-			compatible = "shared-dma-pool";
-			reg = <0 0x50000000 0 0x2900000>;
-			no-map;
-		};
-
-		/* 2 MiB reserved for ARM Trusted Firmware (BL31) */
-		bl31_secmon_reserved: memory@54600000 {
-			no-map;
-			reg = <0 0x54600000 0x0 0x200000>;
-		};
-
-		apu_mem: memory@55000000 {
-			compatible = "shared-dma-pool";
-			reg = <0 0x55000000 0 0x1400000>; /* 20 MB */
-		};
-
-		vpu_mem: memory@57000000 {
-			compatible = "shared-dma-pool";
-			reg = <0 0x57000000 0 0x1400000>; /* 20 MB */
-		};
-
-		adsp_mem: memory@60000000 {
-			compatible = "shared-dma-pool";
-			reg = <0 0x60000000 0 0xf00000>;
-			no-map;
-		};
-
-		afe_dma_mem: memory@60f00000 {
-			compatible = "shared-dma-pool";
-			reg = <0 0x60f00000 0 0x100000>;
-			no-map;
-		};
-
-		adsp_dma_mem: memory@61000000 {
-			compatible = "shared-dma-pool";
-			reg = <0 0x61000000 0 0x100000>;
-			no-map;
-		};
-	};
-
-	common_fixed_5v: regulator-0 {
-		compatible = "regulator-fixed";
-		regulator-name = "vdd_5v";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		gpio = <&pio 10 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-		regulator-always-on;
-		vin-supply = <&reg_vsys>;
-	};
-
-	edp_panel_fixed_3v3: regulator-1 {
-		compatible = "regulator-fixed";
-		regulator-name = "vedp_3v3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		enable-active-high;
-		gpio = <&pio 15 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&edp_panel_3v3_en_pins>;
-		vin-supply = <&reg_vsys>;
-	};
-
-	gpio_fixed_3v3: regulator-2 {
-		compatible = "regulator-fixed";
-		regulator-name = "ext_3v3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		gpio = <&pio 9 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-		regulator-always-on;
-		vin-supply = <&reg_vsys>;
-	};
-
-	/* system wide 4.2V power rail from charger */
-	reg_vsys: regulator-vsys {
-		compatible = "regulator-fixed";
-		regulator-name = "vsys";
-		regulator-always-on;
-		regulator-boot-on;
-	};
-
-	/* used by mmc2 */
-	sdio_fixed_1v8: regulator-3 {
-		compatible = "regulator-fixed";
-		regulator-name = "vio18_conn";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		enable-active-high;
-		regulator-always-on;
-	};
-
-	/* used by mmc2 */
-	sdio_fixed_3v3: regulator-4 {
-		compatible = "regulator-fixed";
-		regulator-name = "wifi_3v3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		gpio = <&pio 74 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-		regulator-always-on;
-		vin-supply = <&reg_vsys>;
-	};
-
-	touch0_fixed_3v3: regulator-5 {
-		compatible = "regulator-fixed";
-		regulator-name = "vio33_tp1";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		gpio = <&pio 119 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-		vin-supply = <&reg_vsys>;
-	};
-
-	usb_hub_fixed_3v3: regulator-6 {
-		compatible = "regulator-fixed";
-		regulator-name = "vhub_3v3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		gpio = <&pio 112 GPIO_ACTIVE_HIGH>; /* HUB_3V3_EN */
-		startup-delay-us = <10000>;
-		enable-active-high;
-		vin-supply = <&reg_vsys>;
-	};
-
-	usb_p0_vbus: regulator-7 {
-		compatible = "regulator-fixed";
-		regulator-name = "vbus_p0";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		gpio = <&pio 84 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-		vin-supply = <&reg_vsys>;
-	};
-
-	usb_p1_vbus: regulator-8 {
-		compatible = "regulator-fixed";
-		regulator-name = "vbus_p1";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		gpio = <&pio 87 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-		vin-supply = <&reg_vsys>;
-	};
-
-	/* used by ssusb2 */
-	usb_p2_vbus: regulator-9 {
-		compatible = "regulator-fixed";
-		regulator-name = "wifi_3v3";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		enable-active-high;
-	};
-};
-
-&adsp {
-	memory-region = <&adsp_dma_mem>, <&adsp_mem>;
-	status = "okay";
-};
-
-&afe {
-	memory-region = <&afe_dma_mem>;
-	status = "okay";
-};
-
-&gpu {
-	mali-supply = <&mt6359_vproc2_buck_reg>;
-	status = "okay";
-};
-
-&i2c0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c0_pins>;
-	clock-frequency = <400000>;
-	status = "okay";
-
-	touchscreen@5d {
-		compatible = "goodix,gt9271";
-		reg = <0x5d>;
-		interrupt-parent = <&pio>;
-		interrupts-extended = <&pio 6 IRQ_TYPE_EDGE_RISING>;
-		irq-gpios = <&pio 6 GPIO_ACTIVE_HIGH>;
-		reset-gpios = <&pio 5 GPIO_ACTIVE_HIGH>;
-		AVDD28-supply = <&touch0_fixed_3v3>;
-		VDDIO-supply = <&mt6359_vio18_ldo_reg>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&touch_pins>;
-	};
-};
-
-&i2c1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c1_pins>;
-	clock-frequency = <400000>;
-	status = "okay";
-};
-
-&i2c2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c2_pins>;
-	clock-frequency = <400000>;
-	status = "okay";
-};
-
-&i2c3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c3_pins>;
-	clock-frequency = <400000>;
-	status = "okay";
-};
-
-&i2c4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c4_pins>;
-	clock-frequency = <1000000>;
-	status = "okay";
-};
-
-&i2c5 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c5_pins>;
-	clock-frequency = <400000>;
-	status = "okay";
-};
-
-&i2c6 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c6_pins>;
-	clock-frequency = <400000>;
-	status = "okay";
-};
-
-&mfg0 {
-	domain-supply = <&mt6359_vproc2_buck_reg>;
-};
-
-&mfg1 {
-	domain-supply = <&mt6359_vsram_others_ldo_reg>;
-};
-
-&mmc0 {
-	status = "okay";
-	pinctrl-names = "default", "state_uhs";
-	pinctrl-0 = <&mmc0_default_pins>;
-	pinctrl-1 = <&mmc0_uhs_pins>;
-	bus-width = <8>;
-	max-frequency = <200000000>;
-	cap-mmc-highspeed;
-	mmc-hs200-1_8v;
-	mmc-hs400-1_8v;
-	supports-cqe;
-	cap-mmc-hw-reset;
-	no-sdio;
-	no-sd;
-	hs400-ds-delay = <0x1481b>;
-	vmmc-supply = <&mt6359_vemc_1_ldo_reg>;
-	vqmmc-supply = <&mt6359_vufs_ldo_reg>;
-	non-removable;
-};
-
-&mmc1 {
-	status = "okay";
-	pinctrl-names = "default", "state_uhs";
-	pinctrl-0 = <&mmc1_default_pins>;
-	pinctrl-1 = <&mmc1_uhs_pins>;
-	bus-width = <4>;
-	max-frequency = <200000000>;
-	cap-sd-highspeed;
-	sd-uhs-sdr50;
-	sd-uhs-sdr104;
-	no-mmc;
-	no-sdio;
-	cd-gpios = <&pio 2 GPIO_ACTIVE_LOW>;
-	vmmc-supply = <&mt6359_vpa_buck_reg>;
-	vqmmc-supply = <&mt6359_vsim1_ldo_reg>;
-};
-
-&mt6359_vbbck_ldo_reg {
-	regulator-always-on;
-};
-
-&mt6359_vcn18_ldo_reg {
-	regulator-name = "vcn18_pmu";
-	regulator-always-on;
-};
-
-&mt6359_vcn33_2_bt_ldo_reg {
-	regulator-name = "vcn33_2_pmu";
-	regulator-always-on;
-};
-
-&mt6359_vcore_buck_reg {
-	regulator-name = "dvdd_proc_l";
-	regulator-always-on;
-};
-
-&mt6359_vgpu11_buck_reg {
-	regulator-name = "dvdd_core";
-	regulator-always-on;
-};
-
-&mt6359_vpa_buck_reg {
-	regulator-name = "vpa_pmu";
-	regulator-max-microvolt = <3100000>;
-};
-
-&mt6359_vproc2_buck_reg {
-	/* The name "vgpu" is required by mtk-regulator-coupler */
-	regulator-name = "vgpu";
-	regulator-min-microvolt = <550000>;
-	regulator-max-microvolt = <800000>;
-	regulator-coupled-with = <&mt6359_vsram_others_ldo_reg>;
-	regulator-coupled-max-spread = <6250>;
-};
-
-&mt6359_vpu_buck_reg {
-	regulator-name = "dvdd_adsp";
-	regulator-always-on;
-};
-
-&mt6359_vrf12_ldo_reg {
-	regulator-name = "va12_abb2_pmu";
-	regulator-always-on;
-};
-
-&mt6359_vsim1_ldo_reg {
-	regulator-name = "vsim1_pmu";
-	regulator-enable-ramp-delay = <480>;
-};
-
-&mt6359_vsram_others_ldo_reg {
-	/* The name "vsram_gpu" is required by mtk-regulator-coupler */
-	regulator-name = "vsram_gpu";
-	regulator-min-microvolt = <750000>;
-	regulator-max-microvolt = <800000>;
-	regulator-coupled-with = <&mt6359_vproc2_buck_reg>;
-	regulator-coupled-max-spread = <6250>;
-};
-
-&mt6359_vufs_ldo_reg {
-	regulator-name = "vufs18_pmu";
-	regulator-always-on;
-};
-
-&mt6359codec {
-	mediatek,mic-type-0 = <1>; /* ACC */
-	mediatek,mic-type-1 = <3>; /* DCC */
-};
-
-&pcie {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pcie_pins_default>;
-	status = "okay";
-};
-
-&pciephy {
-	status = "okay";
-};
-
-&pio {
-	audio_default_pins: audio-default-pins {
-		pins-cmd-dat {
-			pinmux = <PINMUX_GPIO101__FUNC_O_AUD_CLK_MOSI>,
-				 <PINMUX_GPIO102__FUNC_O_AUD_SYNC_MOSI>,
-				 <PINMUX_GPIO103__FUNC_O_AUD_DAT_MOSI0>,
-				 <PINMUX_GPIO104__FUNC_O_AUD_DAT_MOSI1>,
-				 <PINMUX_GPIO105__FUNC_I0_AUD_DAT_MISO0>,
-				 <PINMUX_GPIO106__FUNC_I0_AUD_DAT_MISO1>,
-				 <PINMUX_GPIO107__FUNC_B0_I2SIN_MCK>,
-				 <PINMUX_GPIO108__FUNC_B0_I2SIN_BCK>,
-				 <PINMUX_GPIO109__FUNC_B0_I2SIN_WS>,
-				 <PINMUX_GPIO110__FUNC_I0_I2SIN_D0>,
-				 <PINMUX_GPIO114__FUNC_O_I2SO2_MCK>,
-				 <PINMUX_GPIO115__FUNC_B0_I2SO2_BCK>,
-				 <PINMUX_GPIO116__FUNC_B0_I2SO2_WS>,
-				 <PINMUX_GPIO117__FUNC_O_I2SO2_D0>,
-				 <PINMUX_GPIO118__FUNC_O_I2SO2_D1>,
-				 <PINMUX_GPIO121__FUNC_B0_PCM_CLK>,
-				 <PINMUX_GPIO122__FUNC_B0_PCM_SYNC>,
-				 <PINMUX_GPIO124__FUNC_I0_PCM_DI>,
-				 <PINMUX_GPIO125__FUNC_O_DMIC1_CLK>,
-				 <PINMUX_GPIO126__FUNC_I0_DMIC1_DAT>,
-				 <PINMUX_GPIO128__FUNC_O_DMIC2_CLK>,
-				 <PINMUX_GPIO129__FUNC_I0_DMIC2_DAT>;
-		};
-	};
-
-	dptx_pins: dptx-pins {
-		pins-cmd-dat {
-			pinmux = <PINMUX_GPIO46__FUNC_I0_DP_TX_HPD>;
-			bias-pull-up;
-		};
-	};
-
-	edp_panel_3v3_en_pins: edp-panel-3v3-en-pins {
-		pins1 {
-			pinmux = <PINMUX_GPIO15__FUNC_B_GPIO15>;
-			output-high;
-		};
-	};
-
-	eth_default_pins: eth-default-pins {
-		pins-cc {
-			pinmux = <PINMUX_GPIO139__FUNC_B0_GBE_TXC>,
-				 <PINMUX_GPIO140__FUNC_I0_GBE_RXC>,
-				 <PINMUX_GPIO141__FUNC_I0_GBE_RXDV>,
-				 <PINMUX_GPIO142__FUNC_O_GBE_TXEN>;
-			drive-strength = <8>;
-		};
-
-		pins-mdio {
-			pinmux = <PINMUX_GPIO143__FUNC_O_GBE_MDC>,
-				 <PINMUX_GPIO144__FUNC_B1_GBE_MDIO>;
-			drive-strength = <8>;
-			input-enable;
-		};
-
-		pins-power {
-			pinmux = <PINMUX_GPIO145__FUNC_B_GPIO145>,
-				 <PINMUX_GPIO146__FUNC_B_GPIO146>;
-			output-high;
-		};
-
-		pins-rxd {
-			pinmux = <PINMUX_GPIO135__FUNC_I0_GBE_RXD3>,
-				 <PINMUX_GPIO136__FUNC_I0_GBE_RXD2>,
-				 <PINMUX_GPIO137__FUNC_I0_GBE_RXD1>,
-				 <PINMUX_GPIO138__FUNC_I0_GBE_RXD0>;
-			drive-strength = <8>;
-		};
-
-		pins-txd {
-			pinmux = <PINMUX_GPIO131__FUNC_O_GBE_TXD3>,
-				 <PINMUX_GPIO132__FUNC_O_GBE_TXD2>,
-				 <PINMUX_GPIO133__FUNC_O_GBE_TXD1>,
-				 <PINMUX_GPIO134__FUNC_O_GBE_TXD0>;
-			drive-strength = <8>;
-		};
-	};
-
-	eth_sleep_pins: eth-sleep-pins {
-		pins-cc {
-			pinmux = <PINMUX_GPIO139__FUNC_B_GPIO139>,
-				 <PINMUX_GPIO140__FUNC_B_GPIO140>,
-				 <PINMUX_GPIO141__FUNC_B_GPIO141>,
-				 <PINMUX_GPIO142__FUNC_B_GPIO142>;
-		};
-
-		pins-mdio {
-			pinmux = <PINMUX_GPIO143__FUNC_B_GPIO143>,
-				 <PINMUX_GPIO144__FUNC_B_GPIO144>;
-			input-disable;
-			bias-disable;
-		};
-
-		pins-rxd {
-			pinmux = <PINMUX_GPIO135__FUNC_B_GPIO135>,
-				 <PINMUX_GPIO136__FUNC_B_GPIO136>,
-				 <PINMUX_GPIO137__FUNC_B_GPIO137>,
-				 <PINMUX_GPIO138__FUNC_B_GPIO138>;
-		};
-
-		pins-txd {
-			pinmux = <PINMUX_GPIO131__FUNC_B_GPIO131>,
-				 <PINMUX_GPIO132__FUNC_B_GPIO132>,
-				 <PINMUX_GPIO133__FUNC_B_GPIO133>,
-				 <PINMUX_GPIO134__FUNC_B_GPIO134>;
-		};
-	};
-
-	i2c0_pins: i2c0-pins {
-		pins {
-			pinmux = <PINMUX_GPIO56__FUNC_B1_SDA0>,
-				 <PINMUX_GPIO55__FUNC_B1_SCL0>;
-			bias-pull-up = <MTK_PULL_SET_RSEL_011>;
-			drive-strength-microamp = <1000>;
-		};
-	};
-
-	i2c1_pins: i2c1-pins {
-		pins {
-			pinmux = <PINMUX_GPIO58__FUNC_B1_SDA1>,
-				 <PINMUX_GPIO57__FUNC_B1_SCL1>;
-			bias-pull-up = <MTK_PULL_SET_RSEL_011>;
-			drive-strength-microamp = <1000>;
-		};
-	};
-
-	i2c2_pins: i2c2-pins {
-		pins {
-			pinmux = <PINMUX_GPIO60__FUNC_B1_SDA2>,
-				 <PINMUX_GPIO59__FUNC_B1_SCL2>;
-			bias-pull-up = <MTK_PULL_SET_RSEL_011>;
-			drive-strength-microamp = <1000>;
-		};
-	};
-
-	i2c3_pins: i2c3-pins {
-		pins {
-			pinmux = <PINMUX_GPIO62__FUNC_B1_SDA3>,
-				 <PINMUX_GPIO61__FUNC_B1_SCL3>;
-			bias-pull-up = <MTK_PULL_SET_RSEL_011>;
-			drive-strength-microamp = <1000>;
-		};
-	};
-
-	i2c4_pins: i2c4-pins {
-		pins {
-			pinmux = <PINMUX_GPIO64__FUNC_B1_SDA4>,
-				 <PINMUX_GPIO63__FUNC_B1_SCL4>;
-			bias-pull-up = <MTK_PULL_SET_RSEL_011>;
-			drive-strength-microamp = <1000>;
-		};
-	};
-
-	i2c5_pins: i2c5-pins {
-		pins {
-			pinmux = <PINMUX_GPIO66__FUNC_B1_SDA5>,
-				 <PINMUX_GPIO65__FUNC_B1_SCL5>;
-			bias-pull-up = <MTK_PULL_SET_RSEL_011>;
-			drive-strength-microamp = <1000>;
-		};
-	};
-
-	i2c6_pins: i2c6-pins {
-		pins {
-			pinmux = <PINMUX_GPIO68__FUNC_B1_SDA6>,
-				 <PINMUX_GPIO67__FUNC_B1_SCL6>;
-			bias-pull-up = <MTK_PULL_SET_RSEL_011>;
-			drive-strength-microamp = <1000>;
-		};
-	};
-
-	gpio_key_pins: gpio-key-pins {
-		pins {
-			pinmux = <PINMUX_GPIO42__FUNC_B1_KPCOL0>,
-				 <PINMUX_GPIO43__FUNC_B1_KPCOL1>,
-				 <PINMUX_GPIO44__FUNC_B1_KPROW0>;
-		};
-	};
-
-	mmc0_default_pins: mmc0-default-pins {
-		pins-clk {
-			pinmux = <PINMUX_GPIO157__FUNC_B1_MSDC0_CLK>;
-			drive-strength = <6>;
-			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
-		};
-
-		pins-cmd-dat {
-			pinmux = <PINMUX_GPIO161__FUNC_B1_MSDC0_DAT0>,
-				 <PINMUX_GPIO160__FUNC_B1_MSDC0_DAT1>,
-				 <PINMUX_GPIO159__FUNC_B1_MSDC0_DAT2>,
-				 <PINMUX_GPIO158__FUNC_B1_MSDC0_DAT3>,
-				 <PINMUX_GPIO154__FUNC_B1_MSDC0_DAT4>,
-				 <PINMUX_GPIO153__FUNC_B1_MSDC0_DAT5>,
-				 <PINMUX_GPIO152__FUNC_B1_MSDC0_DAT6>,
-				 <PINMUX_GPIO151__FUNC_B1_MSDC0_DAT7>,
-				 <PINMUX_GPIO156__FUNC_B1_MSDC0_CMD>;
-			input-enable;
-			drive-strength = <6>;
-			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
-		};
-
-		pins-rst {
-			pinmux = <PINMUX_GPIO155__FUNC_O_MSDC0_RSTB>;
-			drive-strength = <6>;
-			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
-		};
-	};
-
-	mmc0_uhs_pins: mmc0-uhs-pins {
-		pins-clk {
-			pinmux = <PINMUX_GPIO157__FUNC_B1_MSDC0_CLK>;
-			drive-strength = <8>;
-			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
-		};
-
-		pins-cmd-dat {
-			pinmux = <PINMUX_GPIO161__FUNC_B1_MSDC0_DAT0>,
-				 <PINMUX_GPIO160__FUNC_B1_MSDC0_DAT1>,
-				 <PINMUX_GPIO159__FUNC_B1_MSDC0_DAT2>,
-				 <PINMUX_GPIO158__FUNC_B1_MSDC0_DAT3>,
-				 <PINMUX_GPIO154__FUNC_B1_MSDC0_DAT4>,
-				 <PINMUX_GPIO153__FUNC_B1_MSDC0_DAT5>,
-				 <PINMUX_GPIO152__FUNC_B1_MSDC0_DAT6>,
-				 <PINMUX_GPIO151__FUNC_B1_MSDC0_DAT7>,
-				 <PINMUX_GPIO156__FUNC_B1_MSDC0_CMD>;
-			input-enable;
-			drive-strength = <8>;
-			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
-		};
-
-		pins-ds {
-			pinmux = <PINMUX_GPIO162__FUNC_B0_MSDC0_DSL>;
-			drive-strength = <8>;
-			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
-		};
-
-		pins-rst {
-			pinmux = <PINMUX_GPIO155__FUNC_O_MSDC0_RSTB>;
-			drive-strength = <8>;
-			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
-		};
-	};
-
-	mmc1_default_pins: mmc1-default-pins {
-		pins-clk {
-			pinmux = <PINMUX_GPIO164__FUNC_B1_MSDC1_CLK>;
-			drive-strength = <6>;
-			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
-		};
-
-		pins-cmd-dat {
-			pinmux = <PINMUX_GPIO163__FUNC_B1_MSDC1_CMD>,
-				 <PINMUX_GPIO165__FUNC_B1_MSDC1_DAT0>,
-				 <PINMUX_GPIO166__FUNC_B1_MSDC1_DAT1>,
-				 <PINMUX_GPIO167__FUNC_B1_MSDC1_DAT2>,
-				 <PINMUX_GPIO168__FUNC_B1_MSDC1_DAT3>;
-			input-enable;
-			drive-strength = <6>;
-			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
-		};
-
-		pins-insert {
-			pinmux = <PINMUX_GPIO2__FUNC_B_GPIO2>;
-			bias-pull-up;
-		};
-	};
-
-	mmc1_uhs_pins: mmc1-uhs-pins {
-		pins-clk {
-			pinmux = <PINMUX_GPIO164__FUNC_B1_MSDC1_CLK>;
-			drive-strength = <6>;
-			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
-		};
-
-		pins-cmd-dat {
-			pinmux = <PINMUX_GPIO163__FUNC_B1_MSDC1_CMD>,
-				 <PINMUX_GPIO165__FUNC_B1_MSDC1_DAT0>,
-				 <PINMUX_GPIO166__FUNC_B1_MSDC1_DAT1>,
-				 <PINMUX_GPIO167__FUNC_B1_MSDC1_DAT2>,
-				 <PINMUX_GPIO168__FUNC_B1_MSDC1_DAT3>;
-			input-enable;
-			drive-strength = <6>;
-			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
-		};
-	};
-
-	mmc2_default_pins: mmc2-default-pins {
-		pins-clk {
-			pinmux = <PINMUX_GPIO170__FUNC_B1_MSDC2_CLK>;
-			drive-strength = <4>;
-			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
-		};
-
-		pins-cmd-dat {
-			pinmux = <PINMUX_GPIO169__FUNC_B1_MSDC2_CMD>,
-				 <PINMUX_GPIO171__FUNC_B1_MSDC2_DAT0>,
-				 <PINMUX_GPIO172__FUNC_B1_MSDC2_DAT1>,
-				 <PINMUX_GPIO173__FUNC_B1_MSDC2_DAT2>,
-				 <PINMUX_GPIO174__FUNC_B1_MSDC2_DAT3>;
-			input-enable;
-			drive-strength = <6>;
-			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
-		};
-
-		pins-pcm {
-			pinmux = <PINMUX_GPIO123__FUNC_O_PCM_DO>;
-		};
-	};
-
-	mmc2_uhs_pins: mmc2-uhs-pins {
-		pins-clk {
-			pinmux = <PINMUX_GPIO170__FUNC_B1_MSDC2_CLK>;
-			drive-strength = <4>;
-			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
-		};
-
-		pins-cmd-dat {
-			pinmux = <PINMUX_GPIO169__FUNC_B1_MSDC2_CMD>,
-				 <PINMUX_GPIO171__FUNC_B1_MSDC2_DAT0>,
-				 <PINMUX_GPIO172__FUNC_B1_MSDC2_DAT1>,
-				 <PINMUX_GPIO173__FUNC_B1_MSDC2_DAT2>,
-				 <PINMUX_GPIO174__FUNC_B1_MSDC2_DAT3>;
-			input-enable;
-			drive-strength = <6>;
-			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
-		};
-	};
-
-	mmc2_eint_pins: mmc2-eint-pins {
-		pins-dat1 {
-			pinmux = <PINMUX_GPIO172__FUNC_B_GPIO172>;
-			input-enable;
-			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
-		};
-	};
-
-	mmc2_dat1_pins: mmc2-dat1-pins {
-		pins-dat1 {
-			pinmux = <PINMUX_GPIO172__FUNC_B1_MSDC2_DAT1>;
-			input-enable;
-			drive-strength = <6>;
-			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
-		};
-	};
-
-	panel_default_pins: panel-default-pins {
-		pins-dcdc {
-			pinmux = <PINMUX_GPIO45__FUNC_B_GPIO45>;
-			output-low;
-		};
-
-		pins-en {
-			pinmux = <PINMUX_GPIO111__FUNC_B_GPIO111>;
-			output-low;
-		};
-
-		pins-rst {
-			pinmux = <PINMUX_GPIO25__FUNC_B_GPIO25>;
-			output-high;
-		};
-	};
-
-	pcie_pins_default: pcie-default {
-		mux {
-			pinmux = <PINMUX_GPIO47__FUNC_I1_WAKEN>,
-				 <PINMUX_GPIO48__FUNC_O_PERSTN>,
-				 <PINMUX_GPIO49__FUNC_B1_CLKREQN>;
-			bias-pull-up;
-		};
-	};
-
-	rt1715_int_pins: rt1715-int-pins {
-		pins_cmd0_dat {
-			pinmux = <PINMUX_GPIO12__FUNC_B_GPIO12>;
-			bias-pull-up;
-			input-enable;
-		};
-	};
-
-	spi0_pins: spi0-pins {
-		pins-spi {
-			pinmux = <PINMUX_GPIO69__FUNC_O_SPIM0_CSB>,
-				<PINMUX_GPIO70__FUNC_O_SPIM0_CLK>,
-				<PINMUX_GPIO71__FUNC_B0_SPIM0_MOSI>,
-				<PINMUX_GPIO72__FUNC_B0_SPIM0_MISO>;
-			bias-disable;
-		};
-	};
-
-	spi1_pins: spi1-pins {
-		pins-spi {
-			pinmux = <PINMUX_GPIO75__FUNC_O_SPIM1_CSB>,
-				<PINMUX_GPIO76__FUNC_O_SPIM1_CLK>,
-				<PINMUX_GPIO77__FUNC_B0_SPIM1_MOSI>,
-				<PINMUX_GPIO78__FUNC_B0_SPIM1_MISO>;
-			bias-disable;
-		};
-	};
-
-	spi2_pins: spi2-pins {
-		pins-spi {
-			pinmux = <PINMUX_GPIO79__FUNC_O_SPIM2_CSB>,
-				<PINMUX_GPIO80__FUNC_O_SPIM2_CLK>,
-				<PINMUX_GPIO81__FUNC_B0_SPIM2_MOSI>,
-				<PINMUX_GPIO82__FUNC_B0_SPIM2_MISO>;
-			bias-disable;
-		};
-	};
-
-	touch_pins: touch-pins {
-		pins-irq {
-			pinmux = <PINMUX_GPIO6__FUNC_B_GPIO6>;
-			input-enable;
-			bias-disable;
-		};
-
-		pins-reset {
-			pinmux = <PINMUX_GPIO5__FUNC_B_GPIO5>;
-			output-high;
-		};
-	};
-
-	uart0_pins: uart0-pins {
-		pins {
-			pinmux = <PINMUX_GPIO31__FUNC_O_UTXD0>,
-				 <PINMUX_GPIO32__FUNC_I1_URXD0>;
-			bias-pull-up;
-		};
-	};
-
-	uart1_pins: uart1-pins {
-		pins {
-			pinmux = <PINMUX_GPIO33__FUNC_O_UTXD1>,
-				 <PINMUX_GPIO34__FUNC_I1_URXD1>;
-			bias-pull-up;
-		};
-	};
-
-	uart2_pins: uart2-pins {
-		pins {
-			pinmux = <PINMUX_GPIO35__FUNC_O_UTXD2>,
-				 <PINMUX_GPIO36__FUNC_I1_URXD2>;
-			bias-pull-up;
-		};
-	};
-
-	usb_default_pins: usb-default-pins {
-		pins-iddig {
-			pinmux = <PINMUX_GPIO83__FUNC_B_GPIO83>;
-			input-enable;
-			bias-pull-up;
-		};
-
-		pins-valid {
-			pinmux = <PINMUX_GPIO85__FUNC_I0_VBUSVALID>;
-			input-enable;
-		};
-
-		pins-vbus {
-			pinmux = <PINMUX_GPIO84__FUNC_O_USB_DRVVBUS>;
-			output-high;
-		};
-
-	};
-
-	usb1_default_pins: usb1-default-pins {
-		pins-valid {
-			pinmux = <PINMUX_GPIO88__FUNC_I0_VBUSVALID_1P>;
-			input-enable;
-		};
-
-		pins-usb-hub-3v3-en {
-			pinmux = <PINMUX_GPIO112__FUNC_B_GPIO112>;
-			output-high;
-		};
-	};
-
-	wifi_pwrseq_pins: wifi-pwrseq-pins {
-		pins-wifi-enable {
-			pinmux = <PINMUX_GPIO127__FUNC_B_GPIO127>;
-			output-low;
-		};
-	};
-};
-
-&eth {
-	phy-mode ="rgmii-id";
-	phy-handle = <&ethernet_phy0>;
-	pinctrl-names = "default", "sleep";
-	pinctrl-0 = <&eth_default_pins>;
-	pinctrl-1 = <&eth_sleep_pins>;
-	mediatek,mac-wol;
-	snps,reset-gpio = <&pio 147 GPIO_ACTIVE_HIGH>;
-	snps,reset-delays-us = <0 10000 10000>;
-	status = "okay";
-};
-
-&eth_mdio {
-	ethernet_phy0: ethernet-phy@1 {
-		compatible = "ethernet-phy-id001c.c916";
-		reg = <0x1>;
-	};
-};
-
-&pmic {
-	interrupt-parent = <&pio>;
-	interrupts = <222 IRQ_TYPE_LEVEL_HIGH>;
-
-	mt6359keys: keys {
-		compatible = "mediatek,mt6359-keys";
-		mediatek,long-press-mode = <1>;
-		power-off-time-sec = <0>;
-
-		power-key {
-			linux,keycodes = <KEY_POWER>;
-			wakeup-source;
-		};
-	};
-};
-
-&scp {
-	memory-region = <&scp_mem>;
-	status = "okay";
-};
-
-&sound {
-	compatible = "mediatek,mt8390-mt6359-evk", "mediatek,mt8188-mt6359-evb";
-	model = "mt8390-evk";
-	pinctrl-names = "default";
-	pinctrl-0 = <&audio_default_pins>;
-	audio-routing =
-		"Headphone", "Headphone L",
-		"Headphone", "Headphone R";
-	mediatek,adsp = <&adsp>;
-	status = "okay";
-
-	dai-link-0 {
-		link-name = "DL_SRC_BE";
-
-		codec {
-			sound-dai = <&pmic 0>;
-		};
-	};
-};
-
-&spi2 {
-	pinctrl-0 = <&spi2_pins>;
-	pinctrl-names = "default";
-	mediatek,pad-select = <0>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-	status = "okay";
 };
 
-&uart0 {
-	pinctrl-0 = <&uart0_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-&uart1 {
-	pinctrl-0 = <&uart1_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-&uart2 {
-	pinctrl-0 = <&uart2_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-&u3phy0 {
-	status = "okay";
-};
-
-&u3phy1 {
-	status = "okay";
-};
-
-&u3phy2 {
-	status = "okay";
-};
-
-&xhci0 {
-	status = "okay";
-	vusb33-supply = <&mt6359_vusb_ldo_reg>;
-};
-
-&xhci1 {
-	status = "okay";
-	vusb33-supply = <&mt6359_vusb_ldo_reg>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	hub_2_0: hub@1 {
-		compatible = "usb451,8025";
-		reg = <1>;
-		peer-hub = <&hub_3_0>;
-		reset-gpios = <&pio 7 GPIO_ACTIVE_HIGH>;
-		vdd-supply = <&usb_hub_fixed_3v3>;
-	};
-
-	hub_3_0: hub@2 {
-		compatible = "usb451,8027";
-		reg = <2>;
-		peer-hub = <&hub_2_0>;
-		reset-gpios = <&pio 7 GPIO_ACTIVE_HIGH>;
-		vdd-supply = <&usb_hub_fixed_3v3>;
-	};
-};
-
-&xhci2 {
-	status = "okay";
-	vusb33-supply = <&mt6359_vusb_ldo_reg>;
-	vbus-supply = <&sdio_fixed_3v3>; /* wifi_3v3 */
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi b/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..f559e5fe547120c793a7707ed5879a0576a20610
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi
@@ -0,0 +1,1040 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (c) 2025 Collabora Ltd.
+ * Author: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
+ */
+
+#include "mt6359.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/pinctrl/mediatek,mt8188-pinfunc.h>
+#include <dt-bindings/regulator/mediatek,mt6360-regulator.h>
+#include <dt-bindings/spmi/spmi.h>
+#include <dt-bindings/usb/pd.h>
+
+/ {
+	aliases {
+		ethernet0 = &eth;
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
+		i2c4 = &i2c4;
+		i2c5 = &i2c5;
+		i2c6 = &i2c6;
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+		serial0 = &uart0;
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
+			no-map;
+			reg = <0 0x43200000 0 0x00c00000>;
+		};
+
+		scp_mem: memory@50000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x50000000 0 0x2900000>;
+			no-map;
+		};
+
+		/* 2 MiB reserved for ARM Trusted Firmware (BL31) */
+		bl31_secmon_reserved: memory@54600000 {
+			no-map;
+			reg = <0 0x54600000 0x0 0x200000>;
+		};
+
+		apu_mem: memory@55000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x55000000 0 0x1400000>; /* 20 MB */
+		};
+
+		vpu_mem: memory@57000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x57000000 0 0x1400000>; /* 20 MB */
+		};
+
+		adsp_mem: memory@60000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x60000000 0 0xf00000>;
+			no-map;
+		};
+
+		afe_dma_mem: memory@60f00000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x60f00000 0 0x100000>;
+			no-map;
+		};
+
+		adsp_dma_mem: memory@61000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x61000000 0 0x100000>;
+			no-map;
+		};
+	};
+
+	common_fixed_5v: regulator-0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_5v";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&pio 10 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+		vin-supply = <&reg_vsys>;
+	};
+
+	edp_panel_fixed_3v3: regulator-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vedp_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&pio 15 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&edp_panel_3v3_en_pins>;
+		vin-supply = <&reg_vsys>;
+	};
+
+	gpio_fixed_3v3: regulator-2 {
+		compatible = "regulator-fixed";
+		regulator-name = "ext_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&pio 9 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+		vin-supply = <&reg_vsys>;
+	};
+
+	/* system wide 4.2V power rail from charger */
+	reg_vsys: regulator-vsys {
+		compatible = "regulator-fixed";
+		regulator-name = "vsys";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	/* used by mmc2 */
+	sdio_fixed_1v8: regulator-3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vio18_conn";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	/* used by mmc2 */
+	sdio_fixed_3v3: regulator-4 {
+		compatible = "regulator-fixed";
+		regulator-name = "wifi_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&pio 74 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+		vin-supply = <&reg_vsys>;
+	};
+
+	touch0_fixed_3v3: regulator-5 {
+		compatible = "regulator-fixed";
+		regulator-name = "vio33_tp1";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&pio 119 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&reg_vsys>;
+	};
+
+	usb_hub_fixed_3v3: regulator-6 {
+		compatible = "regulator-fixed";
+		regulator-name = "vhub_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&pio 112 GPIO_ACTIVE_HIGH>; /* HUB_3V3_EN */
+		startup-delay-us = <10000>;
+		enable-active-high;
+		vin-supply = <&reg_vsys>;
+	};
+
+	usb_p0_vbus: regulator-7 {
+		compatible = "regulator-fixed";
+		regulator-name = "vbus_p0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&pio 84 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&reg_vsys>;
+	};
+
+	usb_p1_vbus: regulator-8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vbus_p1";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&pio 87 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&reg_vsys>;
+	};
+
+	/* used by ssusb2 */
+	usb_p2_vbus: regulator-9 {
+		compatible = "regulator-fixed";
+		regulator-name = "wifi_3v3";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+	};
+};
+
+&adsp {
+	memory-region = <&adsp_dma_mem>, <&adsp_mem>;
+	status = "okay";
+};
+
+&afe {
+	memory-region = <&afe_dma_mem>;
+	status = "okay";
+};
+
+&gpu {
+	mali-supply = <&mt6359_vproc2_buck_reg>;
+	status = "okay";
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0_pins>;
+	clock-frequency = <400000>;
+	status = "okay";
+
+	touchscreen@5d {
+		compatible = "goodix,gt9271";
+		reg = <0x5d>;
+		interrupt-parent = <&pio>;
+		interrupts-extended = <&pio 6 IRQ_TYPE_EDGE_RISING>;
+		irq-gpios = <&pio 6 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&pio 5 GPIO_ACTIVE_HIGH>;
+		AVDD28-supply = <&touch0_fixed_3v3>;
+		VDDIO-supply = <&mt6359_vio18_ldo_reg>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&touch_pins>;
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c1_pins>;
+	clock-frequency = <400000>;
+	status = "okay";
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c2_pins>;
+	clock-frequency = <400000>;
+	status = "okay";
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c3_pins>;
+	clock-frequency = <400000>;
+	status = "okay";
+};
+
+&i2c4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c4_pins>;
+	clock-frequency = <1000000>;
+	status = "okay";
+};
+
+&i2c5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c5_pins>;
+	clock-frequency = <400000>;
+	status = "okay";
+};
+
+&i2c6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c6_pins>;
+	clock-frequency = <400000>;
+	status = "okay";
+};
+
+&mfg0 {
+	domain-supply = <&mt6359_vproc2_buck_reg>;
+};
+
+&mfg1 {
+	domain-supply = <&mt6359_vsram_others_ldo_reg>;
+};
+
+&mmc0 {
+	status = "okay";
+	pinctrl-names = "default", "state_uhs";
+	pinctrl-0 = <&mmc0_default_pins>;
+	pinctrl-1 = <&mmc0_uhs_pins>;
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	mmc-hs400-1_8v;
+	supports-cqe;
+	cap-mmc-hw-reset;
+	no-sdio;
+	no-sd;
+	hs400-ds-delay = <0x1481b>;
+	vmmc-supply = <&mt6359_vemc_1_ldo_reg>;
+	vqmmc-supply = <&mt6359_vufs_ldo_reg>;
+	non-removable;
+};
+
+&mmc1 {
+	status = "okay";
+	pinctrl-names = "default", "state_uhs";
+	pinctrl-0 = <&mmc1_default_pins>;
+	pinctrl-1 = <&mmc1_uhs_pins>;
+	bus-width = <4>;
+	max-frequency = <200000000>;
+	cap-sd-highspeed;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	no-mmc;
+	no-sdio;
+	cd-gpios = <&pio 2 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&mt6359_vpa_buck_reg>;
+	vqmmc-supply = <&mt6359_vsim1_ldo_reg>;
+};
+
+&mt6359_vbbck_ldo_reg {
+	regulator-always-on;
+};
+
+&mt6359_vcn18_ldo_reg {
+	regulator-name = "vcn18_pmu";
+	regulator-always-on;
+};
+
+&mt6359_vcn33_2_bt_ldo_reg {
+	regulator-name = "vcn33_2_pmu";
+	regulator-always-on;
+};
+
+&mt6359_vcore_buck_reg {
+	regulator-name = "dvdd_proc_l";
+	regulator-always-on;
+};
+
+&mt6359_vgpu11_buck_reg {
+	regulator-name = "dvdd_core";
+	regulator-always-on;
+};
+
+&mt6359_vpa_buck_reg {
+	regulator-name = "vpa_pmu";
+	regulator-max-microvolt = <3100000>;
+};
+
+&mt6359_vproc2_buck_reg {
+	/* The name "vgpu" is required by mtk-regulator-coupler */
+	regulator-name = "vgpu";
+	regulator-min-microvolt = <550000>;
+	regulator-max-microvolt = <800000>;
+	regulator-coupled-with = <&mt6359_vsram_others_ldo_reg>;
+	regulator-coupled-max-spread = <6250>;
+};
+
+&mt6359_vpu_buck_reg {
+	regulator-name = "dvdd_adsp";
+	regulator-always-on;
+};
+
+&mt6359_vrf12_ldo_reg {
+	regulator-name = "va12_abb2_pmu";
+	regulator-always-on;
+};
+
+&mt6359_vsim1_ldo_reg {
+	regulator-name = "vsim1_pmu";
+	regulator-enable-ramp-delay = <480>;
+};
+
+&mt6359_vsram_others_ldo_reg {
+	/* The name "vsram_gpu" is required by mtk-regulator-coupler */
+	regulator-name = "vsram_gpu";
+	regulator-min-microvolt = <750000>;
+	regulator-max-microvolt = <800000>;
+	regulator-coupled-with = <&mt6359_vproc2_buck_reg>;
+	regulator-coupled-max-spread = <6250>;
+};
+
+&mt6359_vufs_ldo_reg {
+	regulator-name = "vufs18_pmu";
+	regulator-always-on;
+};
+
+&mt6359codec {
+	mediatek,mic-type-0 = <1>; /* ACC */
+	mediatek,mic-type-1 = <3>; /* DCC */
+};
+
+&pcie {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_pins_default>;
+	status = "okay";
+};
+
+&pciephy {
+	status = "okay";
+};
+
+&pio {
+	audio_default_pins: audio-default-pins {
+		pins-cmd-dat {
+			pinmux = <PINMUX_GPIO101__FUNC_O_AUD_CLK_MOSI>,
+				 <PINMUX_GPIO102__FUNC_O_AUD_SYNC_MOSI>,
+				 <PINMUX_GPIO103__FUNC_O_AUD_DAT_MOSI0>,
+				 <PINMUX_GPIO104__FUNC_O_AUD_DAT_MOSI1>,
+				 <PINMUX_GPIO105__FUNC_I0_AUD_DAT_MISO0>,
+				 <PINMUX_GPIO106__FUNC_I0_AUD_DAT_MISO1>,
+				 <PINMUX_GPIO107__FUNC_B0_I2SIN_MCK>,
+				 <PINMUX_GPIO108__FUNC_B0_I2SIN_BCK>,
+				 <PINMUX_GPIO109__FUNC_B0_I2SIN_WS>,
+				 <PINMUX_GPIO110__FUNC_I0_I2SIN_D0>,
+				 <PINMUX_GPIO114__FUNC_O_I2SO2_MCK>,
+				 <PINMUX_GPIO115__FUNC_B0_I2SO2_BCK>,
+				 <PINMUX_GPIO116__FUNC_B0_I2SO2_WS>,
+				 <PINMUX_GPIO117__FUNC_O_I2SO2_D0>,
+				 <PINMUX_GPIO118__FUNC_O_I2SO2_D1>,
+				 <PINMUX_GPIO121__FUNC_B0_PCM_CLK>,
+				 <PINMUX_GPIO122__FUNC_B0_PCM_SYNC>,
+				 <PINMUX_GPIO124__FUNC_I0_PCM_DI>,
+				 <PINMUX_GPIO125__FUNC_O_DMIC1_CLK>,
+				 <PINMUX_GPIO126__FUNC_I0_DMIC1_DAT>,
+				 <PINMUX_GPIO128__FUNC_O_DMIC2_CLK>,
+				 <PINMUX_GPIO129__FUNC_I0_DMIC2_DAT>;
+		};
+	};
+
+	dptx_pins: dptx-pins {
+		pins-cmd-dat {
+			pinmux = <PINMUX_GPIO46__FUNC_I0_DP_TX_HPD>;
+			bias-pull-up;
+		};
+	};
+
+	edp_panel_3v3_en_pins: edp-panel-3v3-en-pins {
+		pins1 {
+			pinmux = <PINMUX_GPIO15__FUNC_B_GPIO15>;
+			output-high;
+		};
+	};
+
+	eth_default_pins: eth-default-pins {
+		pins-cc {
+			pinmux = <PINMUX_GPIO139__FUNC_B0_GBE_TXC>,
+				 <PINMUX_GPIO140__FUNC_I0_GBE_RXC>,
+				 <PINMUX_GPIO141__FUNC_I0_GBE_RXDV>,
+				 <PINMUX_GPIO142__FUNC_O_GBE_TXEN>;
+			drive-strength = <8>;
+		};
+
+		pins-mdio {
+			pinmux = <PINMUX_GPIO143__FUNC_O_GBE_MDC>,
+				 <PINMUX_GPIO144__FUNC_B1_GBE_MDIO>;
+			drive-strength = <8>;
+			input-enable;
+		};
+
+		pins-power {
+			pinmux = <PINMUX_GPIO145__FUNC_B_GPIO145>,
+				 <PINMUX_GPIO146__FUNC_B_GPIO146>;
+			output-high;
+		};
+
+		pins-rxd {
+			pinmux = <PINMUX_GPIO135__FUNC_I0_GBE_RXD3>,
+				 <PINMUX_GPIO136__FUNC_I0_GBE_RXD2>,
+				 <PINMUX_GPIO137__FUNC_I0_GBE_RXD1>,
+				 <PINMUX_GPIO138__FUNC_I0_GBE_RXD0>;
+			drive-strength = <8>;
+		};
+
+		pins-txd {
+			pinmux = <PINMUX_GPIO131__FUNC_O_GBE_TXD3>,
+				 <PINMUX_GPIO132__FUNC_O_GBE_TXD2>,
+				 <PINMUX_GPIO133__FUNC_O_GBE_TXD1>,
+				 <PINMUX_GPIO134__FUNC_O_GBE_TXD0>;
+			drive-strength = <8>;
+		};
+	};
+
+	eth_sleep_pins: eth-sleep-pins {
+		pins-cc {
+			pinmux = <PINMUX_GPIO139__FUNC_B_GPIO139>,
+				 <PINMUX_GPIO140__FUNC_B_GPIO140>,
+				 <PINMUX_GPIO141__FUNC_B_GPIO141>,
+				 <PINMUX_GPIO142__FUNC_B_GPIO142>;
+		};
+
+		pins-mdio {
+			pinmux = <PINMUX_GPIO143__FUNC_B_GPIO143>,
+				 <PINMUX_GPIO144__FUNC_B_GPIO144>;
+			input-disable;
+			bias-disable;
+		};
+
+		pins-rxd {
+			pinmux = <PINMUX_GPIO135__FUNC_B_GPIO135>,
+				 <PINMUX_GPIO136__FUNC_B_GPIO136>,
+				 <PINMUX_GPIO137__FUNC_B_GPIO137>,
+				 <PINMUX_GPIO138__FUNC_B_GPIO138>;
+		};
+
+		pins-txd {
+			pinmux = <PINMUX_GPIO131__FUNC_B_GPIO131>,
+				 <PINMUX_GPIO132__FUNC_B_GPIO132>,
+				 <PINMUX_GPIO133__FUNC_B_GPIO133>,
+				 <PINMUX_GPIO134__FUNC_B_GPIO134>;
+		};
+	};
+
+	i2c0_pins: i2c0-pins {
+		pins {
+			pinmux = <PINMUX_GPIO56__FUNC_B1_SDA0>,
+				 <PINMUX_GPIO55__FUNC_B1_SCL0>;
+			bias-pull-up = <MTK_PULL_SET_RSEL_011>;
+			drive-strength-microamp = <1000>;
+		};
+	};
+
+	i2c1_pins: i2c1-pins {
+		pins {
+			pinmux = <PINMUX_GPIO58__FUNC_B1_SDA1>,
+				 <PINMUX_GPIO57__FUNC_B1_SCL1>;
+			bias-pull-up = <MTK_PULL_SET_RSEL_011>;
+			drive-strength-microamp = <1000>;
+		};
+	};
+
+	i2c2_pins: i2c2-pins {
+		pins {
+			pinmux = <PINMUX_GPIO60__FUNC_B1_SDA2>,
+				 <PINMUX_GPIO59__FUNC_B1_SCL2>;
+			bias-pull-up = <MTK_PULL_SET_RSEL_011>;
+			drive-strength-microamp = <1000>;
+		};
+	};
+
+	i2c3_pins: i2c3-pins {
+		pins {
+			pinmux = <PINMUX_GPIO62__FUNC_B1_SDA3>,
+				 <PINMUX_GPIO61__FUNC_B1_SCL3>;
+			bias-pull-up = <MTK_PULL_SET_RSEL_011>;
+			drive-strength-microamp = <1000>;
+		};
+	};
+
+	i2c4_pins: i2c4-pins {
+		pins {
+			pinmux = <PINMUX_GPIO64__FUNC_B1_SDA4>,
+				 <PINMUX_GPIO63__FUNC_B1_SCL4>;
+			bias-pull-up = <MTK_PULL_SET_RSEL_011>;
+			drive-strength-microamp = <1000>;
+		};
+	};
+
+	i2c5_pins: i2c5-pins {
+		pins {
+			pinmux = <PINMUX_GPIO66__FUNC_B1_SDA5>,
+				 <PINMUX_GPIO65__FUNC_B1_SCL5>;
+			bias-pull-up = <MTK_PULL_SET_RSEL_011>;
+			drive-strength-microamp = <1000>;
+		};
+	};
+
+	i2c6_pins: i2c6-pins {
+		pins {
+			pinmux = <PINMUX_GPIO68__FUNC_B1_SDA6>,
+				 <PINMUX_GPIO67__FUNC_B1_SCL6>;
+			bias-pull-up = <MTK_PULL_SET_RSEL_011>;
+			drive-strength-microamp = <1000>;
+		};
+	};
+
+	gpio_key_pins: gpio-key-pins {
+		pins {
+			pinmux = <PINMUX_GPIO42__FUNC_B1_KPCOL0>,
+				 <PINMUX_GPIO43__FUNC_B1_KPCOL1>,
+				 <PINMUX_GPIO44__FUNC_B1_KPROW0>;
+		};
+	};
+
+	mmc0_default_pins: mmc0-default-pins {
+		pins-clk {
+			pinmux = <PINMUX_GPIO157__FUNC_B1_MSDC0_CLK>;
+			drive-strength = <6>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+		};
+
+		pins-cmd-dat {
+			pinmux = <PINMUX_GPIO161__FUNC_B1_MSDC0_DAT0>,
+				 <PINMUX_GPIO160__FUNC_B1_MSDC0_DAT1>,
+				 <PINMUX_GPIO159__FUNC_B1_MSDC0_DAT2>,
+				 <PINMUX_GPIO158__FUNC_B1_MSDC0_DAT3>,
+				 <PINMUX_GPIO154__FUNC_B1_MSDC0_DAT4>,
+				 <PINMUX_GPIO153__FUNC_B1_MSDC0_DAT5>,
+				 <PINMUX_GPIO152__FUNC_B1_MSDC0_DAT6>,
+				 <PINMUX_GPIO151__FUNC_B1_MSDC0_DAT7>,
+				 <PINMUX_GPIO156__FUNC_B1_MSDC0_CMD>;
+			input-enable;
+			drive-strength = <6>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+		};
+
+		pins-rst {
+			pinmux = <PINMUX_GPIO155__FUNC_O_MSDC0_RSTB>;
+			drive-strength = <6>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+		};
+	};
+
+	mmc0_uhs_pins: mmc0-uhs-pins {
+		pins-clk {
+			pinmux = <PINMUX_GPIO157__FUNC_B1_MSDC0_CLK>;
+			drive-strength = <8>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+		};
+
+		pins-cmd-dat {
+			pinmux = <PINMUX_GPIO161__FUNC_B1_MSDC0_DAT0>,
+				 <PINMUX_GPIO160__FUNC_B1_MSDC0_DAT1>,
+				 <PINMUX_GPIO159__FUNC_B1_MSDC0_DAT2>,
+				 <PINMUX_GPIO158__FUNC_B1_MSDC0_DAT3>,
+				 <PINMUX_GPIO154__FUNC_B1_MSDC0_DAT4>,
+				 <PINMUX_GPIO153__FUNC_B1_MSDC0_DAT5>,
+				 <PINMUX_GPIO152__FUNC_B1_MSDC0_DAT6>,
+				 <PINMUX_GPIO151__FUNC_B1_MSDC0_DAT7>,
+				 <PINMUX_GPIO156__FUNC_B1_MSDC0_CMD>;
+			input-enable;
+			drive-strength = <8>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+		};
+
+		pins-ds {
+			pinmux = <PINMUX_GPIO162__FUNC_B0_MSDC0_DSL>;
+			drive-strength = <8>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+		};
+
+		pins-rst {
+			pinmux = <PINMUX_GPIO155__FUNC_O_MSDC0_RSTB>;
+			drive-strength = <8>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+		};
+	};
+
+	mmc1_default_pins: mmc1-default-pins {
+		pins-clk {
+			pinmux = <PINMUX_GPIO164__FUNC_B1_MSDC1_CLK>;
+			drive-strength = <6>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+		};
+
+		pins-cmd-dat {
+			pinmux = <PINMUX_GPIO163__FUNC_B1_MSDC1_CMD>,
+				 <PINMUX_GPIO165__FUNC_B1_MSDC1_DAT0>,
+				 <PINMUX_GPIO166__FUNC_B1_MSDC1_DAT1>,
+				 <PINMUX_GPIO167__FUNC_B1_MSDC1_DAT2>,
+				 <PINMUX_GPIO168__FUNC_B1_MSDC1_DAT3>;
+			input-enable;
+			drive-strength = <6>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+		};
+
+		pins-insert {
+			pinmux = <PINMUX_GPIO2__FUNC_B_GPIO2>;
+			bias-pull-up;
+		};
+	};
+
+	mmc1_uhs_pins: mmc1-uhs-pins {
+		pins-clk {
+			pinmux = <PINMUX_GPIO164__FUNC_B1_MSDC1_CLK>;
+			drive-strength = <6>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+		};
+
+		pins-cmd-dat {
+			pinmux = <PINMUX_GPIO163__FUNC_B1_MSDC1_CMD>,
+				 <PINMUX_GPIO165__FUNC_B1_MSDC1_DAT0>,
+				 <PINMUX_GPIO166__FUNC_B1_MSDC1_DAT1>,
+				 <PINMUX_GPIO167__FUNC_B1_MSDC1_DAT2>,
+				 <PINMUX_GPIO168__FUNC_B1_MSDC1_DAT3>;
+			input-enable;
+			drive-strength = <6>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+		};
+	};
+
+	mmc2_default_pins: mmc2-default-pins {
+		pins-clk {
+			pinmux = <PINMUX_GPIO170__FUNC_B1_MSDC2_CLK>;
+			drive-strength = <4>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+		};
+
+		pins-cmd-dat {
+			pinmux = <PINMUX_GPIO169__FUNC_B1_MSDC2_CMD>,
+				 <PINMUX_GPIO171__FUNC_B1_MSDC2_DAT0>,
+				 <PINMUX_GPIO172__FUNC_B1_MSDC2_DAT1>,
+				 <PINMUX_GPIO173__FUNC_B1_MSDC2_DAT2>,
+				 <PINMUX_GPIO174__FUNC_B1_MSDC2_DAT3>;
+			input-enable;
+			drive-strength = <6>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+		};
+
+		pins-pcm {
+			pinmux = <PINMUX_GPIO123__FUNC_O_PCM_DO>;
+		};
+	};
+
+	mmc2_uhs_pins: mmc2-uhs-pins {
+		pins-clk {
+			pinmux = <PINMUX_GPIO170__FUNC_B1_MSDC2_CLK>;
+			drive-strength = <4>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+		};
+
+		pins-cmd-dat {
+			pinmux = <PINMUX_GPIO169__FUNC_B1_MSDC2_CMD>,
+				 <PINMUX_GPIO171__FUNC_B1_MSDC2_DAT0>,
+				 <PINMUX_GPIO172__FUNC_B1_MSDC2_DAT1>,
+				 <PINMUX_GPIO173__FUNC_B1_MSDC2_DAT2>,
+				 <PINMUX_GPIO174__FUNC_B1_MSDC2_DAT3>;
+			input-enable;
+			drive-strength = <6>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+		};
+	};
+
+	mmc2_eint_pins: mmc2-eint-pins {
+		pins-dat1 {
+			pinmux = <PINMUX_GPIO172__FUNC_B_GPIO172>;
+			input-enable;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+		};
+	};
+
+	mmc2_dat1_pins: mmc2-dat1-pins {
+		pins-dat1 {
+			pinmux = <PINMUX_GPIO172__FUNC_B1_MSDC2_DAT1>;
+			input-enable;
+			drive-strength = <6>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
+		};
+	};
+
+	panel_default_pins: panel-default-pins {
+		pins-dcdc {
+			pinmux = <PINMUX_GPIO45__FUNC_B_GPIO45>;
+			output-low;
+		};
+
+		pins-en {
+			pinmux = <PINMUX_GPIO111__FUNC_B_GPIO111>;
+			output-low;
+		};
+
+		pins-rst {
+			pinmux = <PINMUX_GPIO25__FUNC_B_GPIO25>;
+			output-high;
+		};
+	};
+
+	pcie_pins_default: pcie-default {
+		mux {
+			pinmux = <PINMUX_GPIO47__FUNC_I1_WAKEN>,
+				 <PINMUX_GPIO48__FUNC_O_PERSTN>,
+				 <PINMUX_GPIO49__FUNC_B1_CLKREQN>;
+			bias-pull-up;
+		};
+	};
+
+	rt1715_int_pins: rt1715-int-pins {
+		pins_cmd0_dat {
+			pinmux = <PINMUX_GPIO12__FUNC_B_GPIO12>;
+			bias-pull-up;
+			input-enable;
+		};
+	};
+
+	spi0_pins: spi0-pins {
+		pins-spi {
+			pinmux = <PINMUX_GPIO69__FUNC_O_SPIM0_CSB>,
+				<PINMUX_GPIO70__FUNC_O_SPIM0_CLK>,
+				<PINMUX_GPIO71__FUNC_B0_SPIM0_MOSI>,
+				<PINMUX_GPIO72__FUNC_B0_SPIM0_MISO>;
+			bias-disable;
+		};
+	};
+
+	spi1_pins: spi1-pins {
+		pins-spi {
+			pinmux = <PINMUX_GPIO75__FUNC_O_SPIM1_CSB>,
+				<PINMUX_GPIO76__FUNC_O_SPIM1_CLK>,
+				<PINMUX_GPIO77__FUNC_B0_SPIM1_MOSI>,
+				<PINMUX_GPIO78__FUNC_B0_SPIM1_MISO>;
+			bias-disable;
+		};
+	};
+
+	spi2_pins: spi2-pins {
+		pins-spi {
+			pinmux = <PINMUX_GPIO79__FUNC_O_SPIM2_CSB>,
+				<PINMUX_GPIO80__FUNC_O_SPIM2_CLK>,
+				<PINMUX_GPIO81__FUNC_B0_SPIM2_MOSI>,
+				<PINMUX_GPIO82__FUNC_B0_SPIM2_MISO>;
+			bias-disable;
+		};
+	};
+
+	touch_pins: touch-pins {
+		pins-irq {
+			pinmux = <PINMUX_GPIO6__FUNC_B_GPIO6>;
+			input-enable;
+			bias-disable;
+		};
+
+		pins-reset {
+			pinmux = <PINMUX_GPIO5__FUNC_B_GPIO5>;
+			output-high;
+		};
+	};
+
+	uart0_pins: uart0-pins {
+		pins {
+			pinmux = <PINMUX_GPIO31__FUNC_O_UTXD0>,
+				 <PINMUX_GPIO32__FUNC_I1_URXD0>;
+			bias-pull-up;
+		};
+	};
+
+	uart1_pins: uart1-pins {
+		pins {
+			pinmux = <PINMUX_GPIO33__FUNC_O_UTXD1>,
+				 <PINMUX_GPIO34__FUNC_I1_URXD1>;
+			bias-pull-up;
+		};
+	};
+
+	uart2_pins: uart2-pins {
+		pins {
+			pinmux = <PINMUX_GPIO35__FUNC_O_UTXD2>,
+				 <PINMUX_GPIO36__FUNC_I1_URXD2>;
+			bias-pull-up;
+		};
+	};
+
+	usb_default_pins: usb-default-pins {
+		pins-iddig {
+			pinmux = <PINMUX_GPIO83__FUNC_B_GPIO83>;
+			input-enable;
+			bias-pull-up;
+		};
+
+		pins-valid {
+			pinmux = <PINMUX_GPIO85__FUNC_I0_VBUSVALID>;
+			input-enable;
+		};
+
+		pins-vbus {
+			pinmux = <PINMUX_GPIO84__FUNC_O_USB_DRVVBUS>;
+			output-high;
+		};
+
+	};
+
+	usb1_default_pins: usb1-default-pins {
+		pins-valid {
+			pinmux = <PINMUX_GPIO88__FUNC_I0_VBUSVALID_1P>;
+			input-enable;
+		};
+
+		pins-usb-hub-3v3-en {
+			pinmux = <PINMUX_GPIO112__FUNC_B_GPIO112>;
+			output-high;
+		};
+	};
+
+	wifi_pwrseq_pins: wifi-pwrseq-pins {
+		pins-wifi-enable {
+			pinmux = <PINMUX_GPIO127__FUNC_B_GPIO127>;
+			output-low;
+		};
+	};
+};
+
+&eth {
+	phy-mode ="rgmii-id";
+	phy-handle = <&ethernet_phy0>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&eth_default_pins>;
+	pinctrl-1 = <&eth_sleep_pins>;
+	mediatek,mac-wol;
+	snps,reset-gpio = <&pio 147 GPIO_ACTIVE_HIGH>;
+	snps,reset-delays-us = <0 10000 10000>;
+	status = "okay";
+};
+
+&eth_mdio {
+	ethernet_phy0: ethernet-phy@1 {
+		compatible = "ethernet-phy-id001c.c916";
+		reg = <0x1>;
+	};
+};
+
+&pmic {
+	interrupt-parent = <&pio>;
+	interrupts = <222 IRQ_TYPE_LEVEL_HIGH>;
+
+	mt6359keys: keys {
+		compatible = "mediatek,mt6359-keys";
+		mediatek,long-press-mode = <1>;
+		power-off-time-sec = <0>;
+
+		power-key {
+			linux,keycodes = <KEY_POWER>;
+			wakeup-source;
+		};
+	};
+};
+
+&scp {
+	memory-region = <&scp_mem>;
+	status = "okay";
+};
+
+&sound {
+	compatible = "mediatek,mt8390-mt6359-evk", "mediatek,mt8188-mt6359-evb";
+	model = "mt8390-evk";
+	pinctrl-names = "default";
+	pinctrl-0 = <&audio_default_pins>;
+	audio-routing =
+		"Headphone", "Headphone L",
+		"Headphone", "Headphone R";
+	mediatek,adsp = <&adsp>;
+	status = "okay";
+
+	dai-link-0 {
+		link-name = "DL_SRC_BE";
+
+		codec {
+			sound-dai = <&pmic 0>;
+		};
+	};
+};
+
+&spi2 {
+	pinctrl-0 = <&spi2_pins>;
+	pinctrl-names = "default";
+	mediatek,pad-select = <0>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-0 = <&uart0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-0 = <&uart1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&u3phy0 {
+	status = "okay";
+};
+
+&u3phy1 {
+	status = "okay";
+};
+
+&u3phy2 {
+	status = "okay";
+};
+
+&xhci0 {
+	status = "okay";
+	vusb33-supply = <&mt6359_vusb_ldo_reg>;
+};
+
+&xhci1 {
+	status = "okay";
+	vusb33-supply = <&mt6359_vusb_ldo_reg>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	hub_2_0: hub@1 {
+		compatible = "usb451,8025";
+		reg = <1>;
+		peer-hub = <&hub_3_0>;
+		reset-gpios = <&pio 7 GPIO_ACTIVE_HIGH>;
+		vdd-supply = <&usb_hub_fixed_3v3>;
+	};
+
+	hub_3_0: hub@2 {
+		compatible = "usb451,8027";
+		reg = <2>;
+		peer-hub = <&hub_2_0>;
+		reset-gpios = <&pio 7 GPIO_ACTIVE_HIGH>;
+		vdd-supply = <&usb_hub_fixed_3v3>;
+	};
+};
+
+&xhci2 {
+	status = "okay";
+	vusb33-supply = <&mt6359_vusb_ldo_reg>;
+	vbus-supply = <&sdio_fixed_3v3>; /* wifi_3v3 */
+};

-- 
2.48.0


