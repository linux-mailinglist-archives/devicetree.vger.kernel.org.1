Return-Path: <devicetree+bounces-133638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BFC9FB2AA
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 17:21:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B047D1884ECC
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 16:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35E3C1B393A;
	Mon, 23 Dec 2024 16:20:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1DF01B3928;
	Mon, 23 Dec 2024 16:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734970843; cv=none; b=GFY8jfPZDJMPRI6wdxFzM7X0AVqsdmBWMAircqPGsOnmbdPDmMpsJBtLRkRYN8v19m2x7S7TZQ7sEEdR4/jWG8JNsraj/hYwE8dndnaXZc+/T8bdcHnYGu+duYspGtbDDsUaNBZGiTtd3LF75+Rka8vDeJK9ZlzHBQH+ewc+Do4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734970843; c=relaxed/simple;
	bh=0ALK80rhX2uiqa2tbJ5ydr0FjiJPja3DXZkhMl8PvYM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QhUPhAgHwbFWynqZCpDO3daUS04eGtQIs3rF+j+eGhI5x6l1bjJ3YlrTC/1sU8CJrHDvBK5CqR/LX0gcjhJAi9wCIPStBH7Ici/Q2/Ooia0lAlzgTpaBjjfAvcJIfdDCFfyNZ8mERLaxZJ417xThWbCbieyFfJcsnpGiTKnps1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6308B1BA8;
	Mon, 23 Dec 2024 08:21:08 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 273AE3F694;
	Mon, 23 Dec 2024 08:20:38 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Russell King <linux@armlinux.org.uk>
Subject: [PATCH v2 2/4] arm64: dts: morello: Add support for common functionalities
Date: Mon, 23 Dec 2024 16:20:27 +0000
Message-ID: <20241223162029.326997-3-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241223162029.326997-1-vincenzo.frascino@arm.com>
References: <20241223162029.326997-1-vincenzo.frascino@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Morello architecture is an experimental extension to Armv8.2-A,
which extends the AArch64 state with the principles proposed in
version 7 of the Capability Hardware Enhanced RISC Instructions
(CHERI) ISA.

The Morello Platform (soc) and the Fixed Virtual Platfom (fvp) share
some functionalities that have conveniently been included in
morello.dtsi to avoid duplication.

Introduce morello.dtsi.

Note: Morello fvp will be introduced with a future patch series.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/boot/dts/arm/morello.dtsi | 271 +++++++++++++++++++++++++++
 1 file changed, 271 insertions(+)
 create mode 100644 arch/arm64/boot/dts/arm/morello.dtsi

diff --git a/arch/arm64/boot/dts/arm/morello.dtsi b/arch/arm64/boot/dts/arm/morello.dtsi
new file mode 100644
index 000000000000..b9030007d9e6
--- /dev/null
+++ b/arch/arm64/boot/dts/arm/morello.dtsi
@@ -0,0 +1,271 @@
+// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+/*
+ * Copyright (c) 2020-2024, Arm Limited. All rights reserved.
+ */
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+/ {
+	#address-cells = <2>;
+	#size-cells = <2>;
+	interrupt-parent = <&gic>;
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		secure-firmware@ff000000 {
+			reg = <0 0xff000000 0 0x01000000>;
+			no-map;
+		};
+	};
+
+	cpus {
+		#address-cells = <2>;
+		#size-cells = <0>;
+		cpu0: cpu0@0 {
+			compatible = "arm,neoverse-n1";
+			reg = <0x0 0x0>;
+			device_type = "cpu";
+			enable-method = "psci";
+			clocks = <&scmi_dvfs 0>;
+		};
+		cpu1: cpu1@100 {
+			compatible = "arm,neoverse-n1";
+			reg = <0x0 0x100>;
+			device_type = "cpu";
+			enable-method = "psci";
+			clocks = <&scmi_dvfs 0>;
+		};
+		cpu2: cpu2@10000 {
+			compatible = "arm,neoverse-n1";
+			reg = <0x0 0x10000>;
+			device_type = "cpu";
+			enable-method = "psci";
+			clocks = <&scmi_dvfs 1>;
+		};
+		cpu3: cpu3@10100 {
+			compatible = "arm,neoverse-n1";
+			reg = <0x0 0x10100>;
+			device_type = "cpu";
+			enable-method = "psci";
+			clocks = <&scmi_dvfs 1>;
+		};
+	};
+
+	/* The first bank of memory, memory map is actually provided by UEFI. */
+	memory@80000000 {
+		device_type = "memory";
+		/* [0x80000000-0xffffffff] */
+		reg = <0x00000000 0x80000000 0x0 0x7F000000>;
+	};
+
+	memory@8080000000 {
+		device_type = "memory";
+		/* [0x8080000000-0x83f7ffffff] */
+		reg = <0x00000080 0x80000000 0x3 0x78000000>;
+	};
+
+	gic: interrupt-controller@2c010000 {
+		compatible = "arm,gic-v3";
+		#address-cells = <2>;
+		#interrupt-cells = <3>;
+		#size-cells = <2>;
+		ranges;
+		interrupt-controller;
+	};
+
+	pmu {
+		compatible = "arm,armv8-pmuv3";
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	spe-pmu {
+		compatible = "arm,statistical-profiling-extension-v1";
+		interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	psci {
+		compatible = "arm,psci-0.2";
+		method = "smc";
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	soc_refclk50mhz: clock-50000000 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <50000000>;
+		clock-output-names = "apb_pclk";
+	};
+
+	soc_refclk85mhz: clock-85000000 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <85000000>;
+		clock-output-names = "iofpga:aclk";
+	};
+
+	soc_uartclk: clock-50000000-uart {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <50000000>;
+		clock-output-names = "uartclk";
+	};
+
+	soc: soc {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		interrupt-parent = <&gic>;
+		ranges;
+
+		mailbox: mhu@45000000 {
+			compatible = "arm,mhu-doorbell", "arm,primecell";
+			reg = <0x0 0x45000000 0x0 0x1000>;
+			interrupts = <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			clocks = <&soc_refclk50mhz>;
+			clock-names = "apb_pclk";
+		};
+
+		sram: sram@45200000 {
+			compatible = "mmio-sram";
+			reg = <0x0 0x06000000 0x0 0x8000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x0 0x06000000 0x8000>;
+
+			cpu_scp_hpri0: scp-sram@0 {
+				compatible = "arm,scmi-shmem";
+				reg = <0x0 0x80>;
+			};
+
+			cpu_scp_hpri1: scp-sram@80 {
+				compatible = "arm,scmi-shmem";
+				reg = <0x80 0x80>;
+			};
+		};
+
+		uart0: serial@2a400000 {
+			compatible = "arm,pl011", "arm,primecell";
+			reg = <0x0 0x2a400000 0x0 0x1000>;
+			interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&soc_uartclk>, <&soc_refclk50mhz>;
+			clock-names = "uartclk", "apb_pclk";
+		};
+
+		smmu_pcie: iommu@4f400000 {
+			compatible = "arm,smmu-v3";
+			reg = <0 0x4f400000 0 0x40000>;
+			interrupts = <GIC_SPI 235 IRQ_TYPE_EDGE_RISING>,
+					<GIC_SPI 237 IRQ_TYPE_EDGE_RISING>,
+					<GIC_SPI 40 IRQ_TYPE_EDGE_RISING>,
+					<GIC_SPI 236 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
+			msi-parent = <&its2 0>;
+			#iommu-cells = <1>;
+			dma-coherent;
+		};
+
+		pcie_ctlr: pcie@28c0000000 {
+			compatible = "pci-host-ecam-generic";
+			device_type = "pci";
+			reg = <0x28 0xC0000000 0 0x10000000>;
+			bus-range = <0 255>;
+			linux,pci-domain = <0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			dma-coherent;
+			ranges = <0x01000000 0x00 0x00000000 0x00 0x6F000000 0x00 0x00800000>,
+				 <0x02000000 0x00 0x60000000 0x00 0x60000000 0x00 0x0F000000>,
+				 <0x42000000 0x09 0x00000000 0x09 0x00000000 0x1F 0xC0000000>;
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0 0 0 1 &gic 0 0 0 169 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &gic 0 0 0 170 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &gic 0 0 0 171 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &gic 0 0 0 172 IRQ_TYPE_LEVEL_HIGH>;
+			msi-map = <0 &its_pcie 0 0x10000>;
+			iommu-map = <0 &smmu_pcie 0 0x10000>;
+			status = "okay";
+		};
+
+		smmu_ccix: iommu@4f000000 {
+			compatible = "arm,smmu-v3";
+			reg = <0 0x4f000000 0 0x40000>;
+			interrupts = <GIC_SPI 228 IRQ_TYPE_EDGE_RISING>,
+					<GIC_SPI 230 IRQ_TYPE_EDGE_RISING>,
+					<GIC_SPI 41 IRQ_TYPE_EDGE_RISING>,
+					<GIC_SPI 229 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
+			msi-parent = <&its1 0>;
+			#iommu-cells = <1>;
+			dma-coherent;
+		};
+
+		ccix_pcie_ctlr: pcie@4fc0000000 {
+			compatible = "pci-host-ecam-generic";
+			device_type = "pci";
+			reg = <0x4F 0xC0000000 0 0x10000000>;
+			bus-range = <0 255>;
+			linux,pci-domain = <1>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			dma-coherent;
+			ranges = <0x01000000 0x00 0x00000000 0x00 0x7F000000 0x00 0x00800000>,
+				 <0x02000000 0x00 0x70000000 0x00 0x70000000 0x00 0x0F000000>,
+				 <0x42000000 0x30 0x00000000 0x30 0x00000000 0x1F 0xC0000000>;
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0 0 0 1 &gic 0 0 0 201 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &gic 0 0 0 202 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &gic 0 0 0 203 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &gic 0 0 0 204 IRQ_TYPE_LEVEL_HIGH>;
+			msi-map = <0 &its_ccix 0 0x10000>;
+			iommu-map = <0 &smmu_ccix 0 0x10000>;
+			status = "okay";
+		};
+
+		firmware {
+			#address-cells = <2>;
+			#size-cells = <2>;
+			interrupt-parent = <&gic>;
+			ranges;
+
+			scmi {
+				compatible = "arm,scmi";
+				mbox-names = "tx", "rx";
+				mboxes = <&mailbox 1 0>, <&mailbox 1 1>;
+				shmem = <&cpu_scp_hpri0>, <&cpu_scp_hpri1>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				scmi_dvfs: protocol@13 {
+					reg = <0x13>;
+					#clock-cells = <1>;
+				};
+				scmi_clk: protocol@14 {
+					reg = <0x14>;
+					#clock-cells = <1>;
+				};
+			};
+		};
+	};
+};
-- 
2.43.0


