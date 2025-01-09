Return-Path: <devicetree+bounces-137206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C1AA0814B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 21:20:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7ADA13A7812
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 20:20:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 045621FE452;
	Thu,  9 Jan 2025 20:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="NEc9k5eB"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E4542F43;
	Thu,  9 Jan 2025 20:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736454014; cv=none; b=OchwjKlqt1sJhNmlgdvQfOzqb9F2Wy5wJEU/RLlEiPRb+AKzjg/Zuw+cNONnquEkYtvgZq7FuTM+ngEBM7CGxORhHtORZOOWDXuaCMlwN/mb7Yzcgoc7cT2VhcvZFeuCDEYkM2L5sYNVmTO8oA2UM/8D8i59FHRWBbdnZrC2IZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736454014; c=relaxed/simple;
	bh=o8rzgeZzqe/qwJuQ1ethIyAwQp78bdjdvu+UH4UNJpg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=LW8xToNjNrigeggiw4poUrBQu2o6m+dl0NatbULkiwWmc11YTN9fcOJlu6KZj8iDpvpMBqf0YxRwrb+8eYtmJi+LUTkNkRhL4Vtwi7rA7G5X0bTQ5pqZboMlXlH+j3ql4BBOj3fleHjch/6vv0rLUEQQ/MpsWIyHVICtzSz1+8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=NEc9k5eB; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 509KK3cH078656;
	Thu, 9 Jan 2025 14:20:03 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736454003;
	bh=KVujeEeY9nWzLoVLkm5kNdMimqsANtra7fG06GxwNWQ=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=NEc9k5eBOU4dG9JUrIpuSK0/q6ijl1fHIIgQnfAfAPZwvU9L142gVSzTv5WT0dS9X
	 0NfVmrHlqrYB+OwijGN8wZJ48SvUXQx5UUOJ53P8rSd4BbTNgnQ596FTsMpJE5LBeF
	 N+iPenAIy9PoAr+1JXhQBC4uhzGnebP74u5E9xgU=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 509KK3g5043799
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 9 Jan 2025 14:20:03 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 9
 Jan 2025 14:20:03 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 9 Jan 2025 14:20:03 -0600
Received: from localhost (bb.dhcp.ti.com [128.247.81.12])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 509KK3Nq051372;
	Thu, 9 Jan 2025 14:20:03 -0600
From: Bryan Brattlof <bb@ti.com>
Date: Thu, 9 Jan 2025 14:20:03 -0600
Subject: [PATCH v3 2/3] arm64: dts: ti: k3-am62l: add initial
 infrastructure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20250109-am62lx-v3-2-ef171e789527@ti.com>
References: <20250109-am62lx-v3-0-ef171e789527@ti.com>
In-Reply-To: <20250109-am62lx-v3-0-ef171e789527@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Bryan Brattlof <bb@ti.com>
X-Mailer: b4 0.13.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

From: Vignesh Raghavendra <vigneshr@ti.com>

Add the initial infrastructure needed for the AM62L. ALl of which can be
found in the Technical Reference Manual (TRM) located here:

    https://www.ti.com/lit/ug/sprujb4/sprujb4.pdf

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
Signed-off-by: Bryan Brattlof <bb@ti.com>
---
Changes in v1:
 - switched to non-direct links to TRM updates are automatic
 - fixed white space indent issues with a few nodes
 - separated out device tree bindings
---
 arch/arm64/boot/dts/ti/Makefile             |  3 +
 arch/arm64/boot/dts/ti/k3-am62l-main.dtsi   | 52 +++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi | 33 +++++++++++
 arch/arm64/boot/dts/ti/k3-am62l.dtsi        | 89 +++++++++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62l3.dtsi       | 67 ++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-pinctrl.h         |  2 +
 6 files changed, 246 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index 8a4bdf87e2d41..006fe1f174488 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -32,6 +32,9 @@ dtb-$(CONFIG_ARCH_K3) += k3-am62-lp-sk-nand.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am62a7-sk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am62a7-phyboard-lyra-rdk.dtb
 
+# Boards with AM62Lx SoCs
+dtb-$(CONFIG_ARCH_K3) += k3-am62l3-evm.dtb
+
 # Boards with AM62Px SoC
 dtb-$(CONFIG_ARCH_K3) += k3-am62p5-sk.dtb
 
diff --git a/arch/arm64/boot/dts/ti/k3-am62l-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62l-main.dtsi
new file mode 100644
index 0000000000000..3fc3474df3dba
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am62l-main.dtsi
@@ -0,0 +1,52 @@
+// SPDX-License-Identifier: GPL-2.0-only or MIT
+/*
+ * Device Tree file for the AM62L main domain peripherals
+ * Copyright (C) 2024 Texas Instruments Incorporated - https://www.ti.com/
+ *
+ * Technical Reference Manual: https://www.ti.com/lit/pdf/sprujb4
+ */
+
+&cbass_main {
+	gic500: interrupt-controller@1800000 {
+		compatible = "arm,gic-v3";
+		reg = <0x00 0x01800000 0x00 0x10000>,	/* GICD */
+		      <0x00 0x01840000 0x00 0xc0000>,	/* GICR */
+		      <0x01 0x00000000 0x00 0x2000>,    /* GICC */
+		      <0x01 0x00010000 0x00 0x1000>,    /* GICH */
+		      <0x01 0x00020000 0x00 0x2000>;    /* GICV */
+		ranges;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		#interrupt-cells = <3>;
+		interrupt-controller;
+		/*
+		 * vcpumntirq:
+		 * virtual CPU interface maintenance interrupt
+		 */
+		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+
+		gic_its: msi-controller@1820000 {
+			compatible = "arm,gic-v3-its";
+			reg = <0x00 0x01820000 0x00 0x10000>;
+			socionext,synquacer-pre-its = <0x1000000 0x400000>;
+			msi-controller;
+			#msi-cells = <1>;
+		};
+	};
+
+	main_uart0: serial@2800000 {
+		compatible = "ti,am64-uart", "ti,am654-uart";
+		reg = <0x00 0x02800000 0x00 0x100>;
+		interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <48000000>;
+		status = "disabled";
+	};
+
+	oc_sram: sram@70800000 {
+		compatible = "mmio-sram";
+		reg = <0x00 0x70800000 0x00 0x10000>;
+		ranges = <0x0 0x00 0x70800000 0x10000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+};
diff --git a/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
new file mode 100644
index 0000000000000..b09b7c679d0b9
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0-only or MIT
+/*
+ * Device Tree file for the AM62L wakeup domain peripherals
+ * Copyright (C) 2024 Texas Instruments Incorporated - https://www.ti.com/
+ *
+ * Technical Reference Manual: https://www.ti.com/lit/pdf/sprujb4
+ */
+
+&cbass_wakeup {
+	pmx0: pinctrl@4084000 {
+		compatible = "pinctrl-single";
+		reg = <0x00 0x4084000 0x00 0x8000>;
+		pinctrl-single,register-width = <32>;
+		pinctrl-single,function-mask = <0xffffffff>;
+		#pinctrl-cells = <1>;
+		bootph-all;
+	};
+
+	wkup_conf: bus@43000000 {
+		compatible = "simple-bus";
+		reg = <0x00 0x43000000 0x00 0x20000>;
+		ranges = <0x0 0x00 0x43000000 0x20000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		chipid: chipid@14 {
+			compatible = "ti,am654-chipid";
+			reg = <0x14 0x4>;
+			bootph-all;
+		};
+	};
+};
+
diff --git a/arch/arm64/boot/dts/ti/k3-am62l.dtsi b/arch/arm64/boot/dts/ti/k3-am62l.dtsi
new file mode 100644
index 0000000000000..5a77f32d1eb18
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am62l.dtsi
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: GPL-2.0-only or MIT
+/*
+ * Device Tree Source for AM62L SoC Family
+ * Copyright (C) 2024 Texas Instruments Incorporated - https://www.ti.com/
+ *
+ * Technical Reference Manual: https://www.ti.com/lit/pdf/sprujb4
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+#include "k3-pinctrl.h"
+
+/ {
+	model = "Texas Instruments K3 AM62L3 SoC";
+	compatible = "ti,am62l3";
+	interrupt-parent = <&gic500>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	firmware {
+		optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
+
+	a53_timer0: timer-cl0-cpu0 {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>, /* cntpsirq */
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>, /* cntpnsirq */
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>, /* cntvirq */
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>; /* cnthpirq */
+	};
+
+	pmu: pmu {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	cbass_main: bus@f0000 {
+		compatible = "simple-bus";
+		ranges = <0x00 0x00600000 0x00 0x00600000 0x00 0x00001100>, /* GPIO */
+			 <0x00 0x00a40000 0x00 0x00a40000 0x00 0x00000800>, /* Timesync router */
+			 <0x00 0x00a80000 0x00 0x00a80000 0x00 0x00040000>, /* GTC */
+			 <0x00 0x01000000 0x00 0x01000000 0x00 0x01b28400>, /* First peripheral window */
+			 <0x00 0x08000000 0x00 0x08000000 0x00 0x00200000>, /* CPSW */
+			 <0x00 0x09000000 0x00 0x09000000 0x00 0x00400000>, /* CTRL MMRs */
+			 <0x00 0x0e000000 0x00 0x0e000000 0x00 0x0bd28000>, /* Second peripheral window */
+			 <0x00 0x30200000 0x00 0x30200000 0x00 0x00400000>, /* DSS */
+			 <0x00 0x31000000 0x00 0x31000000 0x00 0x00050000>, /* USB0 DWC3 Core window */
+			 <0x00 0x31100000 0x00 0x31100000 0x00 0x00050000>, /* USB1 DWC3 Core window */
+			 <0x00 0x3b000000 0x00 0x3b000000 0x00 0x00001000>, /* GPMC0 */
+			 <0x00 0x47000000 0x00 0x47000000 0x00 0x02000000>, /* DMSS */
+			 <0x00 0x50000000 0x00 0x50000000 0x00 0x08000000>, /* GPMC DATA */
+			 <0x00 0x60000000 0x00 0x60000000 0x00 0x08000000>, /* FSS0 DAT1 */
+			 <0x00 0x70800000 0x00 0x70800000 0x00 0x00010000>, /* OCSRAM */
+			 <0x01 0x00000000 0x01 0x00000000 0x00 0x00310000>, /* A53 PERIPHBASE */
+			 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>, /* FSS0 DAT3 */
+
+			 /* Wakeup Domain Range */
+			 <0x00 0x00b00000 0x00 0x00b00000 0x00 0x00001400>, /* VTM */
+			 <0x00 0x04080000 0x00 0x04080000 0x00 0x00008000>, /* PDCFG */
+			 <0x00 0x04201000 0x00 0x04201000 0x00 0x00008000>, /* GPIO */
+			 <0x00 0x2b100000 0x00 0x2b000000 0x00 0x00200400>, /* TIMER */
+			 <0x00 0x40800000 0x00 0x40800000 0x00 0x00014000>, /* DMA */
+			 <0x00 0x43000000 0x00 0x43000000 0x00 0x00080000>; /* CTRL MMRs */
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		cbass_wakeup:  bus@43000000 {
+			compatible = "simple-bus";
+			ranges = <0x00 0x00b00000 0x00 0x00b00000 0x00 0x00001400>, /* VTM */
+				 <0x00 0x04080000 0x00 0x04080000 0x00 0x00008000>, /* PDCFG */
+				 <0x00 0x04201000 0x00 0x04201000 0x00 0x00008000>, /* GPIO */
+				 <0x00 0x2b100000 0x00 0x2b000000 0x00 0x00200400>, /* TIMER */
+				 <0x00 0x40800000 0x00 0x40800000 0x00 0x00014000>, /* DMA */
+				 <0x00 0x43000000 0x00 0x43000000 0x00 0x00080000>; /* CTRL MMRs */
+			#address-cells = <2>;
+			#size-cells = <2>;
+			bootph-all;
+		};
+	};
+};
+
+/* Now include peripherals for each bus segment */
+#include "k3-am62l-main.dtsi"
+#include "k3-am62l-wakeup.dtsi"
diff --git a/arch/arm64/boot/dts/ti/k3-am62l3.dtsi b/arch/arm64/boot/dts/ti/k3-am62l3.dtsi
new file mode 100644
index 0000000000000..aa679e8e6a9c2
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am62l3.dtsi
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: GPL-2.0-only or MIT
+/*
+ * Device Tree file for the AM62L3 SoC family (Dual Core A53)
+ * Copyright (C) 2024 Texas Instruments Incorporated - https://www.ti.com/
+ *
+ * Technical Reference Manual: https://www.ti.com/lit/pdf/sprujb4
+ */
+
+/dts-v1/;
+
+#include "k3-am62l.dtsi"
+
+/ {
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu-map {
+			cluster0: cluster0 {
+				core0 {
+					cpu = <&cpu0>;
+				};
+
+				core1 {
+					cpu = <&cpu1>;
+				};
+			};
+		};
+
+		cpu0: cpu@0 {
+			compatible = "arm,cortex-a53";
+			reg = <0x000>;
+			device_type = "cpu";
+			enable-method = "psci";
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_0>;
+		};
+
+		cpu1: cpu@1 {
+			compatible = "arm,cortex-a53";
+			reg = <0x001>;
+			device_type = "cpu";
+			enable-method = "psci";
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_0>;
+		};
+	};
+
+	l2_0: l2-cache0 {
+		compatible = "cache";
+		cache-unified;
+		cache-level = <2>;
+		cache-size = <0x40000>;
+		cache-line-size = <64>;
+		cache-sets = <256>;
+	};
+};
diff --git a/arch/arm64/boot/dts/ti/k3-pinctrl.h b/arch/arm64/boot/dts/ti/k3-pinctrl.h
index cac7cccc11121..0121413399d63 100644
--- a/arch/arm64/boot/dts/ti/k3-pinctrl.h
+++ b/arch/arm64/boot/dts/ti/k3-pinctrl.h
@@ -66,6 +66,8 @@
 #define AM62PX_IOPAD(pa, val, muxmode)		(((pa) & 0x1fff)) ((val) | (muxmode))
 #define AM62PX_MCU_IOPAD(pa, val, muxmode)	(((pa) & 0x1fff)) ((val) | (muxmode))
 
+#define AM62LX_IOPAD(pa, val, muxmode)		(((pa) & 0x1fff)) ((val) | (muxmode))
+
 #define AM62X_IOPAD(pa, val, muxmode)		(((pa) & 0x1fff)) ((val) | (muxmode))
 #define AM62X_MCU_IOPAD(pa, val, muxmode)	(((pa) & 0x1fff)) ((val) | (muxmode))
 

-- 
2.47.1


