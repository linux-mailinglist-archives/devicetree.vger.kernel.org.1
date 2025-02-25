Return-Path: <devicetree+bounces-150776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D651A438A4
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:05:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DC66219C2041
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 09:03:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 299F8268691;
	Tue, 25 Feb 2025 08:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="b5i+gDkQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C893E267F49;
	Tue, 25 Feb 2025 08:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740473871; cv=none; b=RO2ErVOGIvlO8j+k5S4P72fmNxOMIkvVvMB0WsoI5sVbUpRMNheKFNeYo+6S5F61XuzfbjghiAHJT2bA6kP80XCev8PDZjRysAcz3Fe/CaaTRz1shKroM2kTdq4hhh+ByV1XoHLxM3FEbR3EciUFUJrIYNQCzdNoPrKIf3ZcX1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740473871; c=relaxed/simple;
	bh=nwd9lE9OG4DRDhM4saDEzLfvAM2TVB7lbWTsz/JCopo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=pjQrQ7KRMYtX7qwQinFfa8XqyXf2oXHX/hWFO/qUnbNCGNfBiUOlh8+BykjLXS2Thk5Hpya6F8sGsPzwg1bVwC+NoWp6pqtR426rPRFZlh3oY+jYrOhYKlHQqx6ugi6lqqiIXEpZuRtwJnV9yWfROiG0JHYNOPVeNR+8Oz+sSW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=b5i+gDkQ; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51P7lrwk000770;
	Tue, 25 Feb 2025 09:57:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	3jy4gMwriDHOXWUwe86xdKl11bzTlPib3KRdsJ6Svww=; b=b5i+gDkQhlwmKxmX
	ED9qfeTIGGSoqrEEqFjepVa81U5Wfh0O0zoN/ugGjd7cxPDMWBd2gfKrx85Ffeyw
	FEFnxncRsvLVW/GiQlwcz5TvAsTyOHq1y+tl4abzOK3N76Ckd6ZK5uOY3SI23LtA
	dQL/9cH29aJAfdYSOoYT9iT+rcigs4JRM1ihdC4KPnbv+xE2Xb/JixReKlNC4NMy
	WEkWxcB/zWslj+H11TwSIYjixiciMVJgD96PrTRY0QL0FVRmphiibOFDNRnCJkGy
	PegY7NEWefZc+bjEpwTkrJ3EFQIqog+EiiUpQqrcepCILb4Y4fUw5uP2TPIZUr2h
	8v/qhg==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 4512sp1u65-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Feb 2025 09:57:34 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 2922740090;
	Tue, 25 Feb 2025 09:56:16 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 407E842879C;
	Tue, 25 Feb 2025 09:54:33 +0100 (CET)
Received: from localhost (10.48.87.120) by SHFDAG1NODE3.st.com (10.75.129.71)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Tue, 25 Feb
 2025 09:54:32 +0100
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
Date: Tue, 25 Feb 2025 09:54:08 +0100
Subject: [PATCH v2 05/10] arm64: dts: st: introduce stm32mp23 SoCs family
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20250225-b4-stm32mp2_new_dts-v2-5-1a628c1580c7@foss.st.com>
References: <20250225-b4-stm32mp2_new_dts-v2-0-1a628c1580c7@foss.st.com>
In-Reply-To: <20250225-b4-stm32mp2_new_dts-v2-0-1a628c1580c7@foss.st.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Christophe Roullier
	<christophe.roullier@foss.st.com>
CC: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <netdev@vger.kernel.org>,
        Amelie Delaunay <amelie.delaunay@foss.st.com>
X-Mailer: b4 0.14.2
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_03,2025-02-24_02,2024-11-22_01

From: Alexandre Torgue <alexandre.torgue@foss.st.com>

STM32MP23 family is composed of 3 SoCs defined as following:

-STM32MP231: common part composed of 1*Cortex-A35, common peripherals
like SDMMC, UART, SPI, I2C, parallel display, 1*ETH ...

-STM32MP233: STM32MP231 + 1*Cortex-A35 (dual CPU), a second ETH, CAN-FD.

-STM32MP235: STM32MP233 + GPU/AI and video encode/decode, DSI and LDVS
display.

A second diversity layer exists for security features/ A35 frequency:
-STM32MP23xY, "Y" gives information:
 -Y = A means A35@1.2GHz + no cryp IP and no secure boot.
 -Y = C means A35@1.2GHz + cryp IP and secure boot.
 -Y = D means A35@1.5GHz + no cryp IP and no secure boot.
 -Y = F means A35@1.5GHz + cryp IP and secure boot.

Signed-off-by: Alexandre Torgue <alexandre.torgue@foss.st.com>
Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
---
Changes in v2:
- Comply with DTS coding style
- interrupt-controller node moved under soc node
---
 arch/arm64/boot/dts/st/stm32mp231.dtsi  | 1214 +++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/st/stm32mp233.dtsi  |   94 +++
 arch/arm64/boot/dts/st/stm32mp235.dtsi  |   16 +
 arch/arm64/boot/dts/st/stm32mp23xc.dtsi |    8 +
 arch/arm64/boot/dts/st/stm32mp23xf.dtsi |    8 +
 5 files changed, 1340 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp231.dtsi b/arch/arm64/boot/dts/st/stm32mp231.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..8820d219a33e6e4849d31dbdc2e9102a2a7adc85
--- /dev/null
+++ b/arch/arm64/boot/dts/st/stm32mp231.dtsi
@@ -0,0 +1,1214 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-3-Clause)
+/*
+ * Copyright (C) STMicroelectronics 2025 - All Rights Reserved
+ * Author: Alexandre Torgue <alexandre.torgue@foss.st.com> for STMicroelectronics.
+ */
+#include <dt-bindings/clock/st,stm32mp25-rcc.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/regulator/st,stm32mp25-regulator.h>
+#include <dt-bindings/reset/st,stm32mp25-rcc.h>
+
+/ {
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			compatible = "arm,cortex-a35";
+			reg = <0>;
+			device_type = "cpu";
+			enable-method = "psci";
+			power-domains = <&cpu0_pd>;
+			power-domain-names = "psci";
+		};
+	};
+
+	arm-pmu {
+		compatible = "arm,cortex-a35-pmu";
+		interrupts = <GIC_SPI 368 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>;
+		interrupt-parent = <&intc>;
+	};
+
+	arm_wdt: watchdog {
+		compatible = "arm,smc-wdt";
+		arm,smc-id = <0xb200005a>;
+		status = "disabled";
+	};
+
+	clk_dsi_txbyte: clock-0 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+	};
+
+	clk_rcbsec: clk-64000000 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <64000000>;
+	};
+
+	firmware {
+		optee: optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+			interrupt-parent = <&intc>;
+			interrupts = <GIC_PPI 15 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>;
+		};
+
+		scmi {
+			compatible = "linaro,scmi-optee";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			linaro,optee-channel-id = <0>;
+
+			scmi_clk: protocol@14 {
+				reg = <0x14>;
+				#clock-cells = <1>;
+			};
+
+			scmi_reset: protocol@16 {
+				reg = <0x16>;
+				#reset-cells = <1>;
+			};
+
+			scmi_voltd: protocol@17 {
+				reg = <0x17>;
+
+				scmi_regu: regulators {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					scmi_vddio1: regulator@0 {
+						reg = <VOLTD_SCMI_VDDIO1>;
+						regulator-name = "vddio1";
+					};
+					scmi_vddio2: regulator@1 {
+						reg = <VOLTD_SCMI_VDDIO2>;
+						regulator-name = "vddio2";
+					};
+					scmi_vddio3: regulator@2 {
+						reg = <VOLTD_SCMI_VDDIO3>;
+						regulator-name = "vddio3";
+					};
+					scmi_vddio4: regulator@3 {
+						reg = <VOLTD_SCMI_VDDIO4>;
+						regulator-name = "vddio4";
+					};
+					scmi_vdd33ucpd: regulator@5 {
+						reg = <VOLTD_SCMI_UCPD>;
+						regulator-name = "vdd33ucpd";
+					};
+					scmi_vdda18adc: regulator@7 {
+						reg = <VOLTD_SCMI_ADC>;
+						regulator-name = "vdda18adc";
+					};
+				};
+			};
+		};
+	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+
+		cpu0_pd: power-domain-cpu0 {
+			#power-domain-cells = <0>;
+			power-domains = <&cluster_pd>;
+		};
+
+		cluster_pd: power-domain-cluster {
+			#power-domain-cells = <0>;
+			power-domains = <&ret_pd>;
+		};
+
+		ret_pd: power-domain-retention {
+			#power-domain-cells = <0>;
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>;
+		always-on;
+	};
+
+	soc@0 {
+		compatible = "simple-bus";
+		ranges = <0x0 0x0 0x0 0x80000000>;
+		interrupt-parent = <&intc>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		hpdma: dma-controller@40400000 {
+			compatible = "st,stm32mp25-dma3";
+			reg = <0x40400000 0x1000>;
+			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&scmi_clk CK_SCMI_HPDMA1>;
+			#dma-cells = <3>;
+		};
+
+		hpdma2: dma-controller@40410000 {
+			compatible = "st,stm32mp25-dma3";
+			reg = <0x40410000 0x1000>;
+			interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&scmi_clk CK_SCMI_HPDMA2>;
+			#dma-cells = <3>;
+		};
+
+		hpdma3: dma-controller@40420000 {
+			compatible = "st,stm32mp25-dma3";
+			reg = <0x40420000 0x1000>;
+			interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&scmi_clk CK_SCMI_HPDMA3>;
+			#dma-cells = <3>;
+		};
+
+		rifsc: bus@42080000 {
+			compatible = "st,stm32mp25-rifsc", "simple-bus";
+			reg = <0x42080000 0x1000>;
+			ranges;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			#access-controller-cells = <1>;
+
+			i2s2: audio-controller@400b0000 {
+				compatible = "st,stm32mp25-i2s";
+				reg = <0x400b0000 0x400>;
+				#sound-dai-cells = <0>;
+				interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_BUS_SPI2>, <&rcc CK_KER_SPI2>;
+				clock-names = "pclk", "i2sclk";
+				resets = <&rcc SPI2_R>;
+				dmas = <&hpdma 51 0x43 0x12>,
+				       <&hpdma 52 0x43 0x21>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 23>;
+				status = "disabled";
+			};
+
+			spi2: spi@400b0000 {
+				compatible = "st,stm32mp25-spi";
+				reg = <0x400b0000 0x400>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_SPI2>;
+				resets = <&rcc SPI2_R>;
+				dmas = <&hpdma 51 0x20 0x3012>,
+				       <&hpdma 52 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 23>;
+				status = "disabled";
+			};
+
+			i2s3: audio-controller@400c0000 {
+				compatible = "st,stm32mp25-i2s";
+				reg = <0x400c0000 0x400>;
+				#sound-dai-cells = <0>;
+				interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_BUS_SPI3>, <&rcc CK_KER_SPI3>;
+				clock-names = "pclk", "i2sclk";
+				resets = <&rcc SPI3_R>;
+				dmas = <&hpdma 53 0x43 0x12>,
+				       <&hpdma 54 0x43 0x21>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 24>;
+				status = "disabled";
+			};
+
+			spi3: spi@400c0000 {
+				compatible = "st,stm32mp25-spi";
+				reg = <0x400c0000 0x400>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_SPI3>;
+				resets = <&rcc SPI3_R>;
+				dmas = <&hpdma 53 0x20 0x3012>,
+				       <&hpdma 54 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 24>;
+				status = "disabled";
+			};
+
+			spdifrx: audio-controller@400d0000 {
+				compatible = "st,stm32h7-spdifrx";
+				reg = <0x400d0000 0x400>;
+				#sound-dai-cells = <0>;
+				clocks = <&rcc CK_KER_SPDIFRX>;
+				clock-names = "kclk";
+				interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
+				dmas = <&hpdma 71 0x43 0x212>,
+				       <&hpdma 72 0x43 0x212>;
+				dma-names = "rx", "rx-ctrl";
+				access-controllers = <&rifsc 30>;
+				status = "disabled";
+			};
+
+			usart2: serial@400e0000 {
+				compatible = "st,stm32h7-uart";
+				reg = <0x400e0000 0x400>;
+				interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_USART2>;
+				dmas = <&hpdma 11 0x20 0x10012>,
+				       <&hpdma 12 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 32>;
+				status = "disabled";
+			};
+
+			usart3: serial@400f0000 {
+				compatible = "st,stm32h7-uart";
+				reg = <0x400f0000 0x400>;
+				interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_USART3>;
+				dmas = <&hpdma 13 0x20 0x10012>,
+				       <&hpdma 14 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 33>;
+				status = "disabled";
+			};
+
+			uart4: serial@40100000 {
+				compatible = "st,stm32h7-uart";
+				reg = <0x40100000 0x400>;
+				interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_UART4>;
+				dmas = <&hpdma 15 0x20 0x10012>,
+				       <&hpdma 16 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 34>;
+				status = "disabled";
+			};
+
+			uart5: serial@40110000 {
+				compatible = "st,stm32h7-uart";
+				reg = <0x40110000 0x400>;
+				interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_UART5>;
+				dmas = <&hpdma 17 0x20 0x10012>,
+				       <&hpdma 18 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 35>;
+				status = "disabled";
+			};
+
+			i2c1: i2c@40120000 {
+				compatible = "st,stm32mp25-i2c";
+				reg = <0x40120000 0x400>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupt-names = "event";
+				interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_I2C1>;
+				resets = <&rcc I2C1_R>;
+				dmas = <&hpdma 27 0x20 0x3012>,
+				       <&hpdma 28 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 41>;
+				status = "disabled";
+			};
+
+			i2c2: i2c@40130000 {
+				compatible = "st,stm32mp25-i2c";
+				reg = <0x40130000 0x400>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupt-names = "event";
+				interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_I2C2>;
+				resets = <&rcc I2C2_R>;
+				dmas = <&hpdma 30 0x20 0x3012>,
+				       <&hpdma 31 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 42>;
+				status = "disabled";
+			};
+
+			i2c7: i2c@40180000 {
+				compatible = "st,stm32mp25-i2c";
+				reg = <0x40180000 0x400>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupt-names = "event";
+				interrupts = <GIC_SPI 210 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_I2C7>;
+				resets = <&rcc I2C7_R>;
+				dmas = <&hpdma 45 0x20 0x3012>,
+				       <&hpdma 46 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 47>;
+				status = "disabled";
+			};
+
+			usart6: serial@40220000 {
+				compatible = "st,stm32h7-uart";
+				reg = <0x40220000 0x400>;
+				interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_USART6>;
+				dmas = <&hpdma 19 0x20 0x10012>,
+				       <&hpdma 20 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 36>;
+				status = "disabled";
+			};
+
+			i2s1: audio-controller@40230000 {
+				compatible = "st,stm32mp25-i2s";
+				reg = <0x40230000 0x400>;
+				#sound-dai-cells = <0>;
+				interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_BUS_SPI1>, <&rcc CK_KER_SPI1>;
+				clock-names = "pclk", "i2sclk";
+				resets = <&rcc SPI1_R>;
+				dmas = <&hpdma 49 0x43 0x12>,
+				       <&hpdma 50 0x43 0x21>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 22>;
+				status = "disabled";
+			};
+
+			spi1: spi@40230000 {
+				compatible = "st,stm32mp25-spi";
+				reg = <0x40230000 0x400>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_SPI1>;
+				resets = <&rcc SPI1_R>;
+				dmas = <&hpdma 49 0x20 0x3012>,
+				       <&hpdma 50 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 22>;
+				status = "disabled";
+			};
+
+			spi4: spi@40240000 {
+				compatible = "st,stm32mp25-spi";
+				reg = <0x40240000 0x400>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupts = <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_SPI4>;
+				resets = <&rcc SPI4_R>;
+				dmas = <&hpdma 55 0x20 0x3012>,
+				       <&hpdma 56 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 25>;
+				status = "disabled";
+			};
+
+			spi5: spi@40280000 {
+				compatible = "st,stm32mp25-spi";
+				reg = <0x40280000 0x400>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupts = <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_SPI5>;
+				resets = <&rcc SPI5_R>;
+				dmas = <&hpdma 57 0x20 0x3012>,
+				       <&hpdma 58 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 26>;
+				status = "disabled";
+			};
+
+			sai1: sai@40290000 {
+				compatible = "st,stm32mp25-sai";
+				reg = <0x40290000 0x4>, <0x4029a3f0 0x10>;
+				ranges = <0 0x40290000 0x400>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				clocks = <&rcc CK_BUS_SAI1>;
+				clock-names = "pclk";
+				interrupts = <GIC_SPI 157 IRQ_TYPE_LEVEL_HIGH>;
+				resets = <&rcc SAI1_R>;
+				access-controllers = <&rifsc 49>;
+				status = "disabled";
+
+				sai1a: audio-controller@40290004 {
+					compatible = "st,stm32-sai-sub-a";
+					reg = <0x4 0x20>;
+					#sound-dai-cells = <0>;
+					clocks = <&rcc CK_KER_SAI1>;
+					clock-names = "sai_ck";
+					dmas = <&hpdma 73 0x43 0x21>;
+					status = "disabled";
+				};
+
+				sai1b: audio-controller@40290024 {
+					compatible = "st,stm32-sai-sub-b";
+					reg = <0x24 0x20>;
+					#sound-dai-cells = <0>;
+					clocks = <&rcc CK_KER_SAI1>;
+					clock-names = "sai_ck";
+					dmas = <&hpdma 74 0x43 0x12>;
+					status = "disabled";
+				};
+			};
+
+			sai2: sai@402a0000 {
+				compatible = "st,stm32mp25-sai";
+				reg = <0x402a0000 0x4>, <0x402aa3f0 0x10>;
+				ranges = <0 0x402a0000 0x400>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				clocks = <&rcc CK_BUS_SAI2>;
+				clock-names = "pclk";
+				interrupts = <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>;
+				resets = <&rcc SAI2_R>;
+				access-controllers = <&rifsc 50>;
+				status = "disabled";
+
+				sai2a: audio-controller@402a0004 {
+					compatible = "st,stm32-sai-sub-a";
+					reg = <0x4 0x20>;
+					#sound-dai-cells = <0>;
+					clocks = <&rcc CK_KER_SAI2>;
+					clock-names = "sai_ck";
+					dmas = <&hpdma 75 0x43 0x21>;
+					status = "disabled";
+				};
+
+				sai2b: audio-controller@402a0024 {
+					compatible = "st,stm32-sai-sub-b";
+					reg = <0x24 0x20>;
+					#sound-dai-cells = <0>;
+					clocks = <&rcc CK_KER_SAI2>;
+					clock-names = "sai_ck";
+					dmas = <&hpdma 76 0x43 0x12>;
+					status = "disabled";
+				};
+			};
+
+			sai3: sai@402b0000 {
+				compatible = "st,stm32mp25-sai";
+				reg = <0x402b0000 0x4>, <0x402ba3f0 0x10>;
+				ranges = <0 0x402b0000 0x400>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				clocks = <&rcc CK_BUS_SAI3>;
+				clock-names = "pclk";
+				interrupts = <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>;
+				resets = <&rcc SAI3_R>;
+				access-controllers = <&rifsc 51>;
+				status = "disabled";
+
+				sai3a: audio-controller@402b0004 {
+					compatible = "st,stm32-sai-sub-a";
+					reg = <0x4 0x20>;
+					#sound-dai-cells = <0>;
+					clocks = <&rcc CK_KER_SAI3>;
+					clock-names = "sai_ck";
+					dmas = <&hpdma 77 0x43 0x21>;
+					status = "disabled";
+				};
+
+				sai3b: audio-controller@502b0024 {
+					compatible = "st,stm32-sai-sub-b";
+					reg = <0x24 0x20>;
+					#sound-dai-cells = <0>;
+					clocks = <&rcc CK_KER_SAI3>;
+					clock-names = "sai_ck";
+					dmas = <&hpdma 78 0x43 0x12>;
+					status = "disabled";
+				};
+			};
+
+			usart1: serial@40330000 {
+				compatible = "st,stm32h7-uart";
+				reg = <0x40330000 0x400>;
+				interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_USART1>;
+				dmas = <&hpdma 9 0x20 0x10012>,
+				       <&hpdma 10 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 31>;
+				status = "disabled";
+			};
+
+			sai4: sai@40340000 {
+				compatible = "st,stm32mp25-sai";
+				reg = <0x40340000 0x4>, <0x4034a3f0 0x10>;
+				ranges = <0 0x40340000 0x400>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				clocks = <&rcc CK_BUS_SAI4>;
+				clock-names = "pclk";
+				interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
+				resets = <&rcc SAI4_R>;
+				access-controllers = <&rifsc 52>;
+				status = "disabled";
+
+				sai4a: audio-controller@40340004 {
+					compatible = "st,stm32-sai-sub-a";
+					reg = <0x4 0x20>;
+					#sound-dai-cells = <0>;
+					clocks = <&rcc CK_KER_SAI4>;
+					clock-names = "sai_ck";
+					dmas = <&hpdma 79 0x63 0x21>;
+					status = "disabled";
+				};
+
+				sai4b: audio-controller@40340024 {
+					compatible = "st,stm32-sai-sub-b";
+					reg = <0x24 0x20>;
+					#sound-dai-cells = <0>;
+					clocks = <&rcc CK_KER_SAI4>;
+					clock-names = "sai_ck";
+					dmas = <&hpdma 80 0x43 0x12>;
+					status = "disabled";
+				};
+			};
+
+			uart7: serial@40370000 {
+				compatible = "st,stm32h7-uart";
+				reg = <0x40370000 0x400>;
+				interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_UART7>;
+				dmas = <&hpdma 21 0x20 0x10012>,
+				       <&hpdma 22 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 37>;
+				status = "disabled";
+			};
+
+			rng: rng@42020000 {
+				compatible = "st,stm32mp25-rng";
+				reg = <0x42020000 0x400>;
+				clocks = <&clk_rcbsec>, <&rcc CK_BUS_RNG>;
+				clock-names = "core", "bus";
+				resets = <&rcc RNG_R>;
+				access-controllers = <&rifsc 92>;
+				status = "disabled";
+			};
+
+			spi8: spi@46020000 {
+				compatible = "st,stm32mp25-spi";
+				reg = <0x46020000 0x400>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_SPI8>;
+				resets = <&rcc SPI8_R>;
+				dmas = <&hpdma 171 0x20 0x3012>,
+				       <&hpdma 172 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 29>;
+				status = "disabled";
+			};
+
+			i2c8: i2c@46040000 {
+				compatible = "st,stm32mp25-i2c";
+				reg = <0x46040000 0x400>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupt-names = "event";
+				interrupts = <GIC_SPI 212 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_I2C8>;
+				resets = <&rcc I2C8_R>;
+				dmas = <&hpdma 168 0x20 0x3012>,
+				       <&hpdma 169 0x20 0x3021>;
+				dma-names = "rx", "tx";
+				access-controllers = <&rifsc 48>;
+				status = "disabled";
+			};
+
+			csi: csi@48020000 {
+				compatible = "st,stm32mp25-csi";
+				reg = <0x48020000 0x2000>;
+				interrupts = <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>;
+				resets = <&rcc CSI_R>;
+				clocks = <&rcc CK_KER_CSI>, <&rcc CK_KER_CSITXESC>,
+					 <&rcc CK_KER_CSIPHY>;
+				clock-names = "pclk", "txesc", "csi2phy";
+				access-controllers = <&rifsc 86>;
+				status = "disabled";
+			};
+
+			dcmipp: dcmipp@48030000 {
+				compatible = "st,stm32mp25-dcmipp";
+				reg = <0x48030000 0x1000>;
+				interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_HIGH>;
+				resets = <&rcc DCMIPP_R>;
+				clocks = <&rcc CK_BUS_DCMIPP>, <&rcc CK_KER_CSI>;
+				clock-names = "kclk", "mclk";
+				access-controllers = <&rifsc 87>;
+				status = "disabled";
+			};
+
+			sdmmc1: mmc@48220000 {
+				compatible = "st,stm32mp25-sdmmc2", "arm,pl18x", "arm,primecell";
+				reg = <0x48220000 0x400>, <0x44230400 0x8>;
+				arm,primecell-periphid = <0x00353180>;
+				interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&rcc CK_KER_SDMMC1 >;
+				clock-names = "apb_pclk";
+				resets = <&rcc SDMMC1_R>;
+				cap-sd-highspeed;
+				cap-mmc-highspeed;
+				max-frequency = <120000000>;
+				access-controllers = <&rifsc 76>;
+				status = "disabled";
+			};
+
+			ethernet1: ethernet@482c0000 {
+				compatible = "st,stm32mp25-dwmac", "snps,dwmac-5.20";
+				reg = <0x482c0000 0x4000>;
+				reg-names = "stmmaceth";
+				interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "macirq";
+				clock-names = "stmmaceth",
+					      "mac-clk-tx",
+					      "mac-clk-rx",
+					      "ptp_ref",
+					      "ethstp",
+					      "eth-ck";
+				clocks = <&rcc CK_ETH1_MAC>,
+					 <&rcc CK_ETH1_TX>,
+					 <&rcc CK_ETH1_RX>,
+					 <&rcc CK_KER_ETH1PTP>,
+					 <&rcc CK_ETH1_STP>,
+					 <&rcc CK_KER_ETH1>;
+				snps,axi-config = <&stmmac_axi_config_1>;
+				snps,mixed-burst;
+				snps,mtl-rx-config = <&mtl_rx_setup_1>;
+				snps,mtl-tx-config = <&mtl_tx_setup_1>;
+				snps,pbl = <2>;
+				snps,tso;
+				st,syscon = <&syscfg 0x3000>;
+				access-controllers = <&rifsc 60>;
+				status = "disabled";
+
+				mtl_rx_setup_1: rx-queues-config {
+					snps,rx-queues-to-use = <2>;
+					queue0 {};
+					queue1 {};
+				};
+
+				mtl_tx_setup_1: tx-queues-config {
+					snps,tx-queues-to-use = <4>;
+					queue0 {};
+					queue1 {};
+					queue2 {};
+					queue3 {};
+				};
+
+				stmmac_axi_config_1: stmmac-axi-config {
+					snps,blen = <0 0 0 0 16 8 4>;
+					snps,rd_osr_lmt = <0x7>;
+					snps,wr_osr_lmt = <0x7>;
+				};
+			};
+		};
+
+		bsec: efuse@44000000 {
+			compatible = "st,stm32mp25-bsec";
+			reg = <0x44000000 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			part_number_otp@24 {
+				reg = <0x24 0x4>;
+			};
+
+			package_otp@1e8 {
+				reg = <0x1e8 0x1>;
+				bits = <0 3>;
+			};
+		};
+
+		rcc: clock-controller@44200000 {
+			compatible = "st,stm32mp25-rcc";
+			reg = <0x44200000 0x10000>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			clocks = <&scmi_clk CK_SCMI_HSE>,
+				<&scmi_clk CK_SCMI_HSI>,
+				<&scmi_clk CK_SCMI_MSI>,
+				<&scmi_clk CK_SCMI_LSE>,
+				<&scmi_clk CK_SCMI_LSI>,
+				<&scmi_clk CK_SCMI_HSE_DIV2>,
+				<&scmi_clk CK_SCMI_ICN_HS_MCU>,
+				<&scmi_clk CK_SCMI_ICN_LS_MCU>,
+				<&scmi_clk CK_SCMI_ICN_SDMMC>,
+				<&scmi_clk CK_SCMI_ICN_DDR>,
+				<&scmi_clk CK_SCMI_ICN_DISPLAY>,
+				<&scmi_clk CK_SCMI_ICN_HSL>,
+				<&scmi_clk CK_SCMI_ICN_NIC>,
+				<&scmi_clk CK_SCMI_ICN_VID>,
+				<&scmi_clk CK_SCMI_FLEXGEN_07>,
+				<&scmi_clk CK_SCMI_FLEXGEN_08>,
+				<&scmi_clk CK_SCMI_FLEXGEN_09>,
+				<&scmi_clk CK_SCMI_FLEXGEN_10>,
+				<&scmi_clk CK_SCMI_FLEXGEN_11>,
+				<&scmi_clk CK_SCMI_FLEXGEN_12>,
+				<&scmi_clk CK_SCMI_FLEXGEN_13>,
+				<&scmi_clk CK_SCMI_FLEXGEN_14>,
+				<&scmi_clk CK_SCMI_FLEXGEN_15>,
+				<&scmi_clk CK_SCMI_FLEXGEN_16>,
+				<&scmi_clk CK_SCMI_FLEXGEN_17>,
+				<&scmi_clk CK_SCMI_FLEXGEN_18>,
+				<&scmi_clk CK_SCMI_FLEXGEN_19>,
+				<&scmi_clk CK_SCMI_FLEXGEN_20>,
+				<&scmi_clk CK_SCMI_FLEXGEN_21>,
+				<&scmi_clk CK_SCMI_FLEXGEN_22>,
+				<&scmi_clk CK_SCMI_FLEXGEN_23>,
+				<&scmi_clk CK_SCMI_FLEXGEN_24>,
+				<&scmi_clk CK_SCMI_FLEXGEN_25>,
+				<&scmi_clk CK_SCMI_FLEXGEN_26>,
+				<&scmi_clk CK_SCMI_FLEXGEN_27>,
+				<&scmi_clk CK_SCMI_FLEXGEN_28>,
+				<&scmi_clk CK_SCMI_FLEXGEN_29>,
+				<&scmi_clk CK_SCMI_FLEXGEN_30>,
+				<&scmi_clk CK_SCMI_FLEXGEN_31>,
+				<&scmi_clk CK_SCMI_FLEXGEN_32>,
+				<&scmi_clk CK_SCMI_FLEXGEN_33>,
+				<&scmi_clk CK_SCMI_FLEXGEN_34>,
+				<&scmi_clk CK_SCMI_FLEXGEN_35>,
+				<&scmi_clk CK_SCMI_FLEXGEN_36>,
+				<&scmi_clk CK_SCMI_FLEXGEN_37>,
+				<&scmi_clk CK_SCMI_FLEXGEN_38>,
+				<&scmi_clk CK_SCMI_FLEXGEN_39>,
+				<&scmi_clk CK_SCMI_FLEXGEN_40>,
+				<&scmi_clk CK_SCMI_FLEXGEN_41>,
+				<&scmi_clk CK_SCMI_FLEXGEN_42>,
+				<&scmi_clk CK_SCMI_FLEXGEN_43>,
+				<&scmi_clk CK_SCMI_FLEXGEN_44>,
+				<&scmi_clk CK_SCMI_FLEXGEN_45>,
+				<&scmi_clk CK_SCMI_FLEXGEN_46>,
+				<&scmi_clk CK_SCMI_FLEXGEN_47>,
+				<&scmi_clk CK_SCMI_FLEXGEN_48>,
+				<&scmi_clk CK_SCMI_FLEXGEN_49>,
+				<&scmi_clk CK_SCMI_FLEXGEN_50>,
+				<&scmi_clk CK_SCMI_FLEXGEN_51>,
+				<&scmi_clk CK_SCMI_FLEXGEN_52>,
+				<&scmi_clk CK_SCMI_FLEXGEN_53>,
+				<&scmi_clk CK_SCMI_FLEXGEN_54>,
+				<&scmi_clk CK_SCMI_FLEXGEN_55>,
+				<&scmi_clk CK_SCMI_FLEXGEN_56>,
+				<&scmi_clk CK_SCMI_FLEXGEN_57>,
+				<&scmi_clk CK_SCMI_FLEXGEN_58>,
+				<&scmi_clk CK_SCMI_FLEXGEN_59>,
+				<&scmi_clk CK_SCMI_FLEXGEN_60>,
+				<&scmi_clk CK_SCMI_FLEXGEN_61>,
+				<&scmi_clk CK_SCMI_FLEXGEN_62>,
+				<&scmi_clk CK_SCMI_FLEXGEN_63>,
+				<&scmi_clk CK_SCMI_ICN_APB1>,
+				<&scmi_clk CK_SCMI_ICN_APB2>,
+				<&scmi_clk CK_SCMI_ICN_APB3>,
+				<&scmi_clk CK_SCMI_ICN_APB4>,
+				<&scmi_clk CK_SCMI_ICN_APBDBG>,
+				<&scmi_clk CK_SCMI_TIMG1>,
+				<&scmi_clk CK_SCMI_TIMG2>,
+				<&scmi_clk CK_SCMI_PLL3>,
+				<&clk_dsi_txbyte>;
+				access-controllers = <&rifsc 156>;
+		};
+
+		exti1: interrupt-controller@44220000 {
+			compatible = "st,stm32mp1-exti", "syscon";
+			reg = <0x44220000 0x400>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			interrupts-extended =
+				<&intc GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>,	/* EXTI_0 */
+				<&intc GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 270 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 271 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 273 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 274 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 275 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 276 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 277 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 278 IRQ_TYPE_LEVEL_HIGH>,	/* EXTI_10 */
+				<&intc GIC_SPI 279 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 280 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 282 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 0   IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 1   IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>,
+				<0>,						/* EXTI_20 */
+				<&intc GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,	/* EXTI_30 */
+				<&intc GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH>,
+				<0>,
+				<&intc GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>,	/* EXTI_40 */
+				<&intc GIC_SPI 154 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 215 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 210 IRQ_TYPE_LEVEL_HIGH>,	/* EXTI_50 */
+				<0>,
+				<0>,
+				<0>,
+				<0>,
+				<0>,
+				<0>,
+				<0>,
+				<0>,
+				<&intc GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>,
+				<0>,						/* EXTI_60 */
+				<&intc GIC_SPI 173 IRQ_TYPE_LEVEL_HIGH>,
+				<0>,
+				<0>,
+				<&intc GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>,
+				<0>,
+				<0>,
+				<&intc GIC_SPI 10  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
+				<0>,
+				<&intc GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>,	/* EXTI_70 */
+				<0>,
+				<&intc GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 202 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 253 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>,
+				<0>,						/* EXTI_80 */
+				<0>,
+				<0>,
+				<&intc GIC_SPI 257 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 258 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		syscfg: syscon@44230000 {
+			compatible = "st,stm32mp23-syscfg", "syscon";
+			reg = <0x44230000 0x10000>;
+		};
+
+		pinctrl: pinctrl@44240000 {
+			compatible = "st,stm32mp257-pinctrl";
+			ranges = <0 0x44240000 0xa0400>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			interrupt-parent = <&exti1>;
+			st,syscfg = <&exti1 0x60 0xff>;
+			pins-are-numbered;
+
+			gpioa: gpio@44240000 {
+				reg = <0x0 0x400>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				clocks = <&scmi_clk CK_SCMI_GPIOA>;
+				st,bank-name = "GPIOA";
+				status = "disabled";
+			};
+
+			gpiob: gpio@44250000 {
+				reg = <0x10000 0x400>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				clocks = <&scmi_clk CK_SCMI_GPIOB>;
+				st,bank-name = "GPIOB";
+				status = "disabled";
+			};
+
+			gpioc: gpio@44260000 {
+				reg = <0x20000 0x400>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				clocks = <&scmi_clk CK_SCMI_GPIOC>;
+				st,bank-name = "GPIOC";
+				status = "disabled";
+			};
+
+			gpiod: gpio@44270000 {
+				reg = <0x30000 0x400>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				clocks = <&scmi_clk CK_SCMI_GPIOD>;
+				st,bank-name = "GPIOD";
+				status = "disabled";
+			};
+
+			gpioe: gpio@44280000 {
+				reg = <0x40000 0x400>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				clocks = <&scmi_clk CK_SCMI_GPIOE>;
+				st,bank-name = "GPIOE";
+				status = "disabled";
+			};
+
+			gpiof: gpio@44290000 {
+				reg = <0x50000 0x400>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				clocks = <&scmi_clk CK_SCMI_GPIOF>;
+				st,bank-name = "GPIOF";
+				status = "disabled";
+			};
+
+			gpiog: gpio@442a0000 {
+				reg = <0x60000 0x400>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				clocks = <&scmi_clk CK_SCMI_GPIOG>;
+				st,bank-name = "GPIOG";
+				status = "disabled";
+			};
+
+			gpioh: gpio@442b0000 {
+				reg = <0x70000 0x400>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				clocks = <&scmi_clk CK_SCMI_GPIOH>;
+				st,bank-name = "GPIOH";
+				status = "disabled";
+			};
+
+			gpioi: gpio@442c0000 {
+				reg = <0x80000 0x400>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				clocks = <&scmi_clk CK_SCMI_GPIOI>;
+				st,bank-name = "GPIOI";
+				status = "disabled";
+			};
+
+			gpioj: gpio@442d0000 {
+				reg = <0x90000 0x400>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				clocks = <&scmi_clk CK_SCMI_GPIOJ>;
+				st,bank-name = "GPIOJ";
+				status = "disabled";
+			};
+
+			gpiok: gpio@442e0000 {
+				reg = <0xa0000 0x400>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				clocks = <&scmi_clk CK_SCMI_GPIOK>;
+				st,bank-name = "GPIOK";
+				status = "disabled";
+			};
+		};
+
+		rtc: rtc@46000000 {
+			compatible = "st,stm32mp25-rtc";
+			reg = <0x46000000 0x400>;
+			clocks = <&scmi_clk CK_SCMI_RTC>,
+				 <&scmi_clk CK_SCMI_RTCCK>;
+			clock-names = "pclk", "rtc_ck";
+			interrupts-extended = <&exti2 17 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		pinctrl_z: pinctrl@46200000 {
+			compatible = "st,stm32mp257-z-pinctrl";
+			ranges = <0 0x46200000 0x400>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			interrupt-parent = <&exti1>;
+			st,syscfg = <&exti1 0x60 0xff>;
+			pins-are-numbered;
+
+			gpioz: gpio@46200000 {
+				reg = <0 0x400>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				clocks = <&scmi_clk CK_SCMI_GPIOZ>;
+				st,bank-name = "GPIOZ";
+				st,bank-ioport = <11>;
+				status = "disabled";
+			};
+
+		};
+
+		exti2: interrupt-controller@46230000 {
+			compatible = "st,stm32mp1-exti", "syscon";
+			reg = <0x46230000 0x400>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			interrupts-extended =
+				<&intc GIC_SPI 17  IRQ_TYPE_LEVEL_HIGH>,	/* EXTI_0 */
+				<&intc GIC_SPI 18  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 19  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 20  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 21  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 22  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 23  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 24  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 25  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 26  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 27  IRQ_TYPE_LEVEL_HIGH>,	/* EXTI_10 */
+				<&intc GIC_SPI 28  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 29  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 30  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 31  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 32  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 12  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 13  IRQ_TYPE_LEVEL_HIGH>,
+				<0>,
+				<0>,
+				<0>,						/* EXTI_20 */
+				<&intc GIC_SPI 14  IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 15  IRQ_TYPE_LEVEL_HIGH>,
+				<0>,
+				<0>,
+				<&intc GIC_SPI 212 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 151 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH>,
+				<0>,
+				<&intc GIC_SPI 216 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 217 IRQ_TYPE_LEVEL_HIGH>,	/* EXTI_30 */
+				<&intc GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>,
+				<0>,
+				<&intc GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 175 IRQ_TYPE_LEVEL_HIGH>,
+				<0>,
+				<0>,
+				<&intc GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH>,
+				<0>,
+				<0>,
+				<&intc GIC_SPI 199 IRQ_TYPE_LEVEL_HIGH>,	/* EXTI_40 */
+				<0>,
+				<0>,
+				<&intc GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>,
+				<0>,
+				<0>,
+				<&intc GIC_SPI 11  IRQ_TYPE_LEVEL_HIGH>,
+				<0>,
+				<&intc GIC_SPI 5   IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 4   IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 6   IRQ_TYPE_LEVEL_HIGH>,	/* EXTI_50 */
+				<&intc GIC_SPI 7   IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 2   IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 3   IRQ_TYPE_LEVEL_HIGH>,
+				<0>,
+				<0>,
+				<0>,
+				<0>,
+				<0>,
+				<0>,
+				<0>,						/* EXTI_60 */
+				<&intc GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH>,
+				<0>,
+				<&intc GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>,
+				<&intc GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
+				<0>,
+				<0>,
+				<&intc GIC_SPI 213 IRQ_TYPE_LEVEL_HIGH>;	/* EXTI_70 */
+		};
+
+		intc: interrupt-controller@4ac10000 {
+			compatible = "arm,cortex-a7-gic";
+			reg = <0x4ac10000 0x1000>,
+			      <0x4ac20000 0x2000>,
+			      <0x4ac40000 0x2000>,
+			      <0x4ac60000 0x2000>;
+			#interrupt-cells = <3>;
+			#address-cells = <1>;
+			interrupt-controller;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/st/stm32mp233.dtsi b/arch/arm64/boot/dts/st/stm32mp233.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..78f4059fca5db6b2625ddc8046656bb6ceaa25cf
--- /dev/null
+++ b/arch/arm64/boot/dts/st/stm32mp233.dtsi
@@ -0,0 +1,94 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-3-Clause)
+/*
+ * Copyright (C) STMicroelectronics 2025 - All Rights Reserved
+ * Author: Alexandre Torgue <alexandre.torgue@foss.st.com> for STMicroelectronics.
+ */
+#include "stm32mp231.dtsi"
+
+/ {
+	cpus {
+		cpu1: cpu@1 {
+			compatible = "arm,cortex-a35";
+			reg = <1>;
+			device_type = "cpu";
+			enable-method = "psci";
+			power-domains = <&cpu1_pd>;
+			power-domain-names = "psci";
+		};
+	};
+
+	arm-pmu {
+		interrupts = <GIC_SPI 368 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 369 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>;
+	};
+
+	psci {
+		cpu1_pd: power-domain-cpu1 {
+			#power-domain-cells = <0>;
+			power-domains = <&cluster_pd>;
+		};
+	};
+
+	timer {
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>;
+	};
+};
+
+&optee {
+	interrupts = <GIC_PPI 15 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>;
+};
+
+&rifsc {
+	ethernet2: ethernet@482d0000 {
+		compatible = "st,stm32mp25-dwmac", "snps,dwmac-5.20";
+		reg = <0x482d0000 0x4000>;
+		reg-names = "stmmaceth";
+		interrupts-extended = <&intc GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "macirq";
+		clock-names = "stmmaceth",
+			      "mac-clk-tx",
+			      "mac-clk-rx",
+			      "ptp_ref",
+			      "ethstp",
+			      "eth-ck";
+		clocks = <&rcc CK_ETH2_MAC>,
+			 <&rcc CK_ETH2_TX>,
+			 <&rcc CK_ETH2_RX>,
+			 <&rcc CK_KER_ETH2PTP>,
+			 <&rcc CK_ETH2_STP>,
+			 <&rcc CK_KER_ETH2>;
+		snps,axi-config = <&stmmac_axi_config_2>;
+		snps,mixed-burst;
+		snps,mtl-rx-config = <&mtl_rx_setup_2>;
+		snps,mtl-tx-config = <&mtl_tx_setup_2>;
+		snps,pbl = <2>;
+		snps,tso;
+		st,syscon = <&syscfg 0x3400>;
+		access-controllers = <&rifsc 61>;
+		status = "disabled";
+
+		mtl_rx_setup_2: rx-queues-config {
+			snps,rx-queues-to-use = <2>;
+			queue0 {};
+			queue1 {};
+		};
+
+		mtl_tx_setup_2: tx-queues-config {
+			snps,tx-queues-to-use = <4>;
+			queue0 {};
+			queue1 {};
+			queue2 {};
+			queue3 {};
+		};
+
+		stmmac_axi_config_2: stmmac-axi-config {
+			snps,blen = <0 0 0 0 16 8 4>;
+			snps,rd_osr_lmt = <0x7>;
+			snps,wr_osr_lmt = <0x7>;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/st/stm32mp235.dtsi b/arch/arm64/boot/dts/st/stm32mp235.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..2719c088dd594ba90f683d8809b54fecf471ba40
--- /dev/null
+++ b/arch/arm64/boot/dts/st/stm32mp235.dtsi
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-3-Clause)
+/*
+ * Copyright (C) STMicroelectronics 2025 - All Rights Reserved
+ * Author: Alexandre Torgue <alexandre.torgue@foss.st.com> for STMicroelectronics.
+ */
+#include "stm32mp233.dtsi"
+
+&rifsc {
+	vdec: vdec@480d0000 {
+		compatible = "st,stm32mp25-vdec";
+		reg = <0x480d0000 0x3c8>;
+		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&rcc CK_BUS_VDEC>;
+		access-controllers = <&rifsc 89>;
+	};
+};
diff --git a/arch/arm64/boot/dts/st/stm32mp23xc.dtsi b/arch/arm64/boot/dts/st/stm32mp23xc.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..e33b00b424e1207dc6212e75235785f8c61e5055
--- /dev/null
+++ b/arch/arm64/boot/dts/st/stm32mp23xc.dtsi
@@ -0,0 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-3-Clause)
+/*
+ * Copyright (C) STMicroelectronics 2025 - All Rights Reserved
+ * Author: Alexandre Torgue <alexandre.torgue@foss.st.com> for STMicroelectronics.
+ */
+
+/ {
+};
diff --git a/arch/arm64/boot/dts/st/stm32mp23xf.dtsi b/arch/arm64/boot/dts/st/stm32mp23xf.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..e33b00b424e1207dc6212e75235785f8c61e5055
--- /dev/null
+++ b/arch/arm64/boot/dts/st/stm32mp23xf.dtsi
@@ -0,0 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-3-Clause)
+/*
+ * Copyright (C) STMicroelectronics 2025 - All Rights Reserved
+ * Author: Alexandre Torgue <alexandre.torgue@foss.st.com> for STMicroelectronics.
+ */
+
+/ {
+};

-- 
2.25.1


