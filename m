Return-Path: <devicetree+bounces-97487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4139625BD
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 13:16:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CF92CB222DD
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 11:16:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABB761741FD;
	Wed, 28 Aug 2024 11:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="e1WQbnUz"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3FD616D4DD;
	Wed, 28 Aug 2024 11:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.142
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724843747; cv=none; b=FyOTQYYH9b40sP3CGmVnGt79UClqt2ndNWzjnzgeBOstspXWPzSD05L1UTQLWFtVJeJtN4W8QvbNraCqYx8sBMC0CKNIY174jiHEInrAN/ff+JXbUWcWm/T+WI9GAoLpFFkiYNtEz0VGvWC7sjQEXOXxk0vTtzrMjdpbf+SUkbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724843747; c=relaxed/simple;
	bh=ykhEO4MEiOr4yfna3LUmQxP7shmJ9LI5ST3TjdTI3Xk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=I7MFlJ5QYM01rpTYyrpTDcMllwiga5ycMbwHBexygMTm5XTgevFy3FX5UBw3ytNgCwsgIVErSy9pjvPlvACTUO5ApMrcF6dtFdUmgw+u69wh7JvU6NwTyunqDI8v6W/77GKxdPkTAG4vgDSqJbZWI31tyAtKKBZeZq+1nfe0qIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=e1WQbnUz; arc=none smtp.client-ip=198.47.19.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 47SBFAw4104362;
	Wed, 28 Aug 2024 06:15:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1724843710;
	bh=JFpvNi73fG055TDvXLvJGdUcn2hfe8gtakggs0cINY8=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=e1WQbnUzZo/rpVA+gr7/u/QJIRvQvrLBFLw8T8rRxSpwpkvaYrTj0zv+ULcL1NO75
	 +F4+LMFAimb2Nj7sYfEfwRiZLrliPoUYwEyNf7DbN+0cgri1Gcx5o3vGq6Ob4LOYMQ
	 2ae93uYg7dYSRz+CKH816UCDekX9PxBVvL4Y+1CQ=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 47SBFAAX057314
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 28 Aug 2024 06:15:10 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 28
 Aug 2024 06:15:10 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 28 Aug 2024 06:15:09 -0500
Received: from [127.0.1.1] (uda0497581.dhcp.ti.com [10.24.68.185])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 47SBF108122618;
	Wed, 28 Aug 2024 06:15:06 -0500
From: Manorit Chawdhry <m-chawdhry@ti.com>
Date: Wed, 28 Aug 2024 16:44:59 +0530
Subject: [PATCH v5 1/5] arm64: dts: ti: Refactor J784s4 SoC files to a
 common file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20240828-b4-upstream-j742s2-v5-1-9aaa02a0faee@ti.com>
References: <20240828-b4-upstream-j742s2-v5-0-9aaa02a0faee@ti.com>
In-Reply-To: <20240828-b4-upstream-j742s2-v5-0-9aaa02a0faee@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Udit Kumar <u-kumar1@ti.com>,
        Neha Malcom
 Francis <n-francis@ti.com>,
        Aniket Limaye <a-limaye@ti.com>, Beleswar Padhi
	<b-padhi@ti.com>,
        Manorit Chawdhry <m-chawdhry@ti.com>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1724843701; l=187197;
 i=m-chawdhry@ti.com; s=20231127; h=from:subject:message-id;
 bh=ykhEO4MEiOr4yfna3LUmQxP7shmJ9LI5ST3TjdTI3Xk=;
 b=nxElEsoRyFDLM6Cbl5q1yL8DXoxn6nZmL4LIruRRAD+ZHYOSHesDJe7Ll8qohfbrMWN1eiuQa
 KsZwJJu3gxRCfVzrLZNcUgX9zpPSrMpLEKUiGCPcEGVyXMwppXrRv6N
X-Developer-Key: i=m-chawdhry@ti.com; a=ed25519;
 pk=fsr6Tm39TvsTgfyfFQLk+nnqIz2sBA1PthfqqfiiYSs=
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Refactor J784s4 SoC files to a common file which uses the
superset device to allow reuse in j742s2-evm which uses the subset part.

Signed-off-by: Manorit Chawdhry <m-chawdhry@ti.com>
Reviewed-by: Beleswar Padhi <b-padhi@ti.com>
---
 .../arm64/boot/dts/ti/k3-j784s4-j742s2-common.dtsi |  150 ++
 .../boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi  | 2667 ++++++++++++++++++
 ...tsi => k3-j784s4-j742s2-mcu-wakeup-common.dtsi} |    2 +-
 ...l.dtsi => k3-j784s4-j742s2-thermal-common.dtsi} |    0
 arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi         | 2847 +-------------------
 arch/arm64/boot/dts/ti/k3-j784s4.dtsi              |  135 +-
 6 files changed, 2914 insertions(+), 2887 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-common.dtsi
new file mode 100644
index 000000000000..43fee57f0926
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-common.dtsi
@@ -0,0 +1,150 @@
+// SPDX-License-Identifier: GPL-2.0-only OR MIT
+/*
+ * Device Tree Source for J784S4 and J742S2 SoC Family
+ *
+ * TRM (j784s4) (SPRUJ43 JULY 2022): https://www.ti.com/lit/zip/spruj52
+ * TRM (j742s2): https://www.ti.com/lit/pdf/spruje3
+ *
+ * Copyright (C) 2022-2024 Texas Instruments Incorporated - https://www.ti.com/
+ *
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/soc/ti,sci_pm_domain.h>
+
+#include "k3-pinctrl.h"
+
+/ {
+	interrupt-parent = <&gic500>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	L2_0: l2-cache0 {
+		compatible = "cache";
+		cache-level = <2>;
+		cache-unified;
+		cache-size = <0x200000>;
+		cache-line-size = <64>;
+		cache-sets = <1024>;
+		next-level-cache = <&msmc_l3>;
+	};
+
+	L2_1: l2-cache1 {
+		compatible = "cache";
+		cache-level = <2>;
+		cache-unified;
+		cache-size = <0x200000>;
+		cache-line-size = <64>;
+		cache-sets = <1024>;
+		next-level-cache = <&msmc_l3>;
+	};
+
+	msmc_l3: l3-cache0 {
+		compatible = "cache";
+		cache-level = <3>;
+		cache-unified;
+	};
+
+	firmware {
+		optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+
+		psci: psci {
+			compatible = "arm,psci-1.0";
+			method = "smc";
+		};
+	};
+
+	a72_timer0: timer-cl0-cpu0 {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>, /* cntpsirq */
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>, /* cntpnsirq */
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>, /* cntvirq */
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>; /* cnthpirq */
+	};
+
+	pmu: pmu {
+		compatible = "arm,cortex-a72-pmu";
+		/* Recommendation from GIC500 TRM Table A.3 */
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	cbass_main: bus@100000 {
+		bootph-all;
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges = <0x00 0x00100000 0x00 0x00100000 0x00 0x00020000>, /* ctrl mmr */
+			 <0x00 0x00600000 0x00 0x00600000 0x00 0x00031100>, /* GPIO */
+			 <0x00 0x00700000 0x00 0x00700000 0x00 0x00001000>, /* ESM */
+			 <0x00 0x01000000 0x00 0x01000000 0x00 0x0d000000>, /* Most peripherals */
+			 <0x00 0x04210000 0x00 0x04210000 0x00 0x00010000>, /* VPU0 */
+			 <0x00 0x04220000 0x00 0x04220000 0x00 0x00010000>, /* VPU1 */
+			 <0x00 0x0d000000 0x00 0x0d000000 0x00 0x00800000>, /* PCIe0 Core*/
+			 <0x00 0x0d800000 0x00 0x0d800000 0x00 0x00800000>, /* PCIe1 Core*/
+			 <0x00 0x0e000000 0x00 0x0e000000 0x00 0x00800000>, /* PCIe2 Core*/
+			 <0x00 0x0e800000 0x00 0x0e800000 0x00 0x00800000>, /* PCIe3 Core*/
+			 <0x00 0x10000000 0x00 0x10000000 0x00 0x08000000>, /* PCIe0 DAT0 */
+			 <0x00 0x18000000 0x00 0x18000000 0x00 0x08000000>, /* PCIe1 DAT0 */
+			 <0x00 0x64800000 0x00 0x64800000 0x00 0x0070c000>, /* C71_1 */
+			 <0x00 0x65800000 0x00 0x65800000 0x00 0x0070c000>, /* C71_2 */
+			 <0x00 0x66800000 0x00 0x66800000 0x00 0x0070c000>, /* C71_3 */
+			 <0x00 0x67800000 0x00 0x67800000 0x00 0x0070c000>, /* C71_4 */
+			 <0x00 0x6f000000 0x00 0x6f000000 0x00 0x00310000>, /* A72 PERIPHBASE */
+			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00400000>, /* MSMC RAM */
+			 <0x00 0x30000000 0x00 0x30000000 0x00 0x0c400000>, /* MAIN NAVSS */
+			 <0x40 0x00000000 0x40 0x00000000 0x01 0x00000000>, /* PCIe0 DAT1 */
+			 <0x41 0x00000000 0x41 0x00000000 0x01 0x00000000>, /* PCIe1 DAT1 */
+			 <0x42 0x00000000 0x42 0x00000000 0x01 0x00000000>, /* PCIe2 DAT1 */
+			 <0x43 0x00000000 0x43 0x00000000 0x01 0x00000000>, /* PCIe3 DAT1 */
+			 <0x44 0x00000000 0x44 0x00000000 0x00 0x08000000>, /* PCIe2 DAT0 */
+			 <0x44 0x10000000 0x44 0x10000000 0x00 0x08000000>, /* PCIe3 DAT0 */
+			 <0x4e 0x20000000 0x4e 0x20000000 0x00 0x00080000>, /* GPU */
+
+			 /* MCUSS_WKUP Range */
+			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
+			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>,
+			 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>,
+			 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>,
+			 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>,
+			 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>,
+			 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>,
+			 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>,
+			 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>,
+			 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>,
+			 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>,
+			 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>,
+			 <0x07 0x00000000 0x07 0x00000000 0x01 0x00000000>;
+
+		cbass_mcu_wakeup: bus@28380000 {
+			bootph-all;
+			compatible = "simple-bus";
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges = <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>, /* MCU NAVSS*/
+				 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>, /* First peripheral window */
+				 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>, /* CTRL_MMR0 */
+				 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>, /* MCU R5F Core0 */
+				 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>, /* MCU R5F Core1 */
+				 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>, /* MCU SRAM */
+				 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>, /* WKUP peripheral window */
+				 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>, /* MMRs, remaining NAVSS */
+				 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>, /* CPSW */
+				 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>, /* OSPI register space */
+				 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>, /* FSS OSPI0/1 data region 0 */
+				 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>, /* FSS OSPI0 data region 3 */
+				 <0x07 0x00000000 0x07 0x00000000 0x01 0x00000000>; /* FSS OSPI1 data region 3*/
+		};
+	};
+
+	thermal_zones: thermal-zones {
+		#include "k3-j784s4-j742s2-thermal-common.dtsi"
+	};
+};
+
+/* Now include peripherals from each bus segment */
+#include "k3-j784s4-j742s2-main-common.dtsi"
+#include "k3-j784s4-j742s2-mcu-wakeup-common.dtsi"
diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
new file mode 100644
index 000000000000..04d77c42442d
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
@@ -0,0 +1,2667 @@
+// SPDX-License-Identifier: GPL-2.0-only OR MIT
+/*
+ * Device Tree Source for J784S4 and J742S2 SoC Family Main Domain peripherals
+ *
+ * Copyright (C) 2022-2024 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+#include <dt-bindings/mux/mux.h>
+#include <dt-bindings/phy/phy.h>
+#include <dt-bindings/phy/phy-ti.h>
+
+#include "k3-serdes.h"
+
+/ {
+	serdes_refclk: clock-serdes {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		/* To be enabled when serdes_wiz* is functional */
+		status = "disabled";
+	};
+};
+
+&cbass_main {
+	msmc_ram: sram@70000000 {
+		compatible = "mmio-sram";
+		reg = <0x00 0x70000000 0x00 0x800000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x00 0x00 0x70000000 0x800000>;
+
+		atf-sram@0 {
+			reg = <0x00 0x20000>;
+		};
+
+		tifs-sram@1f0000 {
+			reg = <0x1f0000 0x10000>;
+		};
+
+		l3cache-sram@200000 {
+			reg = <0x200000 0x200000>;
+		};
+	};
+
+	scm_conf: bus@100000 {
+		compatible = "simple-bus";
+		reg = <0x00 0x00100000 0x00 0x1c000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x00 0x00 0x00100000 0x1c000>;
+
+		cpsw1_phy_gmii_sel: phy@4034 {
+			compatible = "ti,am654-phy-gmii-sel";
+			reg = <0x4034 0x4>;
+			#phy-cells = <1>;
+		};
+
+		cpsw0_phy_gmii_sel: phy@4044 {
+			compatible = "ti,j784s4-cpsw9g-phy-gmii-sel";
+			reg = <0x4044 0x20>;
+			#phy-cells = <1>;
+			ti,qsgmii-main-ports = <7>, <7>;
+		};
+
+		pcie0_ctrl: pcie0-ctrl@4070 {
+			compatible = "ti,j784s4-pcie-ctrl", "syscon";
+			reg = <0x4070 0x4>;
+		};
+
+		pcie1_ctrl: pcie1-ctrl@4074 {
+			compatible = "ti,j784s4-pcie-ctrl", "syscon";
+			reg = <0x4074 0x4>;
+		};
+
+		serdes_ln_ctrl: mux-controller@4080 {
+			compatible = "reg-mux";
+			reg = <0x00004080 0x30>;
+			#mux-control-cells = <1>;
+			mux-reg-masks = <0x0 0x3>, <0x4 0x3>, /* SERDES0 lane0/1 select */
+					<0x8 0x3>, <0xc 0x3>, /* SERDES0 lane2/3 select */
+					<0x10 0x3>, <0x14 0x3>, /* SERDES1 lane0/1 select */
+					<0x18 0x3>, <0x1c 0x3>, /* SERDES1 lane2/3 select */
+					<0x20 0x3>, <0x24 0x3>, /* SERDES2 lane0/1 select */
+					<0x28 0x3>, <0x2c 0x3>; /* SERDES2 lane2/3 select */
+			idle-states = <J784S4_SERDES0_LANE0_PCIE1_LANE0>,
+				      <J784S4_SERDES0_LANE1_PCIE1_LANE1>,
+				      <J784S4_SERDES0_LANE2_IP3_UNUSED>,
+				      <J784S4_SERDES0_LANE3_USB>,
+				      <J784S4_SERDES1_LANE0_PCIE0_LANE0>,
+				      <J784S4_SERDES1_LANE1_PCIE0_LANE1>,
+				      <J784S4_SERDES1_LANE2_PCIE0_LANE2>,
+				      <J784S4_SERDES1_LANE3_PCIE0_LANE3>,
+				      <J784S4_SERDES2_LANE0_IP2_UNUSED>,
+				      <J784S4_SERDES2_LANE1_IP2_UNUSED>,
+				      <J784S4_SERDES2_LANE2_QSGMII_LANE1>,
+				      <J784S4_SERDES2_LANE3_QSGMII_LANE2>,
+				      <J784S4_SERDES4_LANE0_EDP_LANE0>,
+				      <J784S4_SERDES4_LANE1_EDP_LANE1>,
+				      <J784S4_SERDES4_LANE2_EDP_LANE2>,
+				      <J784S4_SERDES4_LANE3_EDP_LANE3>;
+		};
+
+		usb_serdes_mux: mux-controller@4000 {
+			compatible = "reg-mux";
+			reg = <0x4000 0x4>;
+			#mux-control-cells = <1>;
+			mux-reg-masks = <0x0 0x8000000>; /* USB0 to SERDES0 lane 3 mux */
+		};
+
+		ehrpwm_tbclk: clock-controller@4140 {
+			compatible = "ti,am654-ehrpwm-tbclk";
+			reg = <0x4140 0x18>;
+			#clock-cells = <1>;
+		};
+
+		audio_refclk1: clock@82e4 {
+			compatible = "ti,am62-audio-refclk";
+			reg = <0x82e4 0x4>;
+			clocks = <&k3_clks 157 34>;
+			assigned-clocks = <&k3_clks 157 34>;
+			assigned-clock-parents = <&k3_clks 157 63>;
+			#clock-cells = <0>;
+		};
+	};
+
+	main_ehrpwm0: pwm@3000000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		reg = <0x00 0x3000000 0x00 0x100>;
+		clocks = <&ehrpwm_tbclk 0>, <&k3_clks 219 0>;
+		clock-names = "tbclk", "fck";
+		power-domains = <&k3_pds 219 TI_SCI_PD_EXCLUSIVE>;
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	main_ehrpwm1: pwm@3010000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		reg = <0x00 0x3010000 0x00 0x100>;
+		clocks = <&ehrpwm_tbclk 1>, <&k3_clks 220 0>;
+		clock-names = "tbclk", "fck";
+		power-domains = <&k3_pds 220 TI_SCI_PD_EXCLUSIVE>;
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	main_ehrpwm2: pwm@3020000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		reg = <0x00 0x3020000 0x00 0x100>;
+		clocks = <&ehrpwm_tbclk 2>, <&k3_clks 221 0>;
+		clock-names = "tbclk", "fck";
+		power-domains = <&k3_pds 221 TI_SCI_PD_EXCLUSIVE>;
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	main_ehrpwm3: pwm@3030000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		reg = <0x00 0x3030000 0x00 0x100>;
+		clocks = <&ehrpwm_tbclk 3>, <&k3_clks 222 0>;
+		clock-names = "tbclk", "fck";
+		power-domains = <&k3_pds 222 TI_SCI_PD_EXCLUSIVE>;
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	main_ehrpwm4: pwm@3040000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		reg = <0x00 0x3040000 0x00 0x100>;
+		clocks = <&ehrpwm_tbclk 4>, <&k3_clks 223 0>;
+		clock-names = "tbclk", "fck";
+		power-domains = <&k3_pds 223 TI_SCI_PD_EXCLUSIVE>;
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	main_ehrpwm5: pwm@3050000 {
+		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
+		reg = <0x00 0x3050000 0x00 0x100>;
+		clocks = <&ehrpwm_tbclk 5>, <&k3_clks 224 0>;
+		clock-names = "tbclk", "fck";
+		power-domains = <&k3_pds 224 TI_SCI_PD_EXCLUSIVE>;
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
+	gic500: interrupt-controller@1800000 {
+		compatible = "arm,gic-v3";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		#interrupt-cells = <3>;
+		interrupt-controller;
+		reg = <0x00 0x01800000 0x00 0x200000>, /* GICD */
+		      <0x00 0x01900000 0x00 0x100000>, /* GICR */
+		      <0x00 0x6f000000 0x00 0x2000>,   /* GICC */
+		      <0x00 0x6f010000 0x00 0x1000>,   /* GICH */
+		      <0x00 0x6f020000 0x00 0x2000>;   /* GICV */
+
+		/* vcpumntirq: virtual CPU interface maintenance interrupt */
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
+	main_gpio_intr: interrupt-controller@a00000 {
+		compatible = "ti,sci-intr";
+		reg = <0x00 0x00a00000 0x00 0x800>;
+		ti,intr-trigger-type = <1>;
+		interrupt-controller;
+		interrupt-parent = <&gic500>;
+		#interrupt-cells = <1>;
+		ti,sci = <&sms>;
+		ti,sci-dev-id = <10>;
+		ti,interrupt-ranges = <8 392 56>;
+	};
+
+	main_pmx0: pinctrl@11c000 {
+		compatible = "pinctrl-single";
+		/* Proxy 0 addressing */
+		reg = <0x00 0x11c000 0x00 0x120>;
+		#pinctrl-cells = <1>;
+		pinctrl-single,register-width = <32>;
+		pinctrl-single,function-mask = <0xffffffff>;
+	};
+
+	/* TIMERIO pad input CTRLMMR_TIMER*_CTRL registers */
+	main_timerio_input: pinctrl@104200 {
+		compatible = "pinctrl-single";
+		reg = <0x00 0x104200 0x00 0x50>;
+		#pinctrl-cells = <1>;
+		pinctrl-single,register-width = <32>;
+		pinctrl-single,function-mask = <0x00000007>;
+	};
+
+	/* TIMERIO pad output CTCTRLMMR_TIMERIO*_CTRL registers */
+	main_timerio_output: pinctrl@104280 {
+		compatible = "pinctrl-single";
+		reg = <0x00 0x104280 0x00 0x20>;
+		#pinctrl-cells = <1>;
+		pinctrl-single,register-width = <32>;
+		pinctrl-single,function-mask = <0x0000001f>;
+	};
+
+	main_crypto: crypto@4e00000 {
+		compatible = "ti,j721e-sa2ul";
+		reg = <0x00 0x4e00000 0x00 0x1200>;
+		power-domains = <&k3_pds 369 TI_SCI_PD_EXCLUSIVE>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges = <0x00 0x04e00000 0x00 0x04e00000 0x00 0x30000>;
+
+		dmas = <&main_udmap 0xca40>, <&main_udmap 0x4a40>,
+				<&main_udmap 0x4a41>;
+		dma-names = "tx", "rx1", "rx2";
+
+		rng: rng@4e10000 {
+			compatible = "inside-secure,safexcel-eip76";
+			reg = <0x00 0x4e10000 0x00 0x7d>;
+			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+		};
+	};
+
+	main_timer0: timer@2400000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2400000 0x00 0x400>;
+		interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 97 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 97 2>;
+		assigned-clock-parents = <&k3_clks 97 3>;
+		power-domains = <&k3_pds 97 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer1: timer@2410000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2410000 0x00 0x400>;
+		interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 98 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 98 2>;
+		assigned-clock-parents = <&k3_clks 98 3>;
+		power-domains = <&k3_pds 98 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer2: timer@2420000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2420000 0x00 0x400>;
+		interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 99 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 99 2>;
+		assigned-clock-parents = <&k3_clks 99 3>;
+		power-domains = <&k3_pds 99 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer3: timer@2430000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2430000 0x00 0x400>;
+		interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 100 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 100 2>;
+		assigned-clock-parents = <&k3_clks 100 3>;
+		power-domains = <&k3_pds 100 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer4: timer@2440000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2440000 0x00 0x400>;
+		interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 101 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 101 2>;
+		assigned-clock-parents = <&k3_clks 101 3>;
+		power-domains = <&k3_pds 101 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer5: timer@2450000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2450000 0x00 0x400>;
+		interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 102 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 102 2>;
+		assigned-clock-parents = <&k3_clks 102 3>;
+		power-domains = <&k3_pds 102 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer6: timer@2460000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2460000 0x00 0x400>;
+		interrupts = <GIC_SPI 230 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 103 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 103 2>;
+		assigned-clock-parents = <&k3_clks 103 3>;
+		power-domains = <&k3_pds 103 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer7: timer@2470000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2470000 0x00 0x400>;
+		interrupts = <GIC_SPI 231 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 104 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 104 2>;
+		assigned-clock-parents = <&k3_clks 104 3>;
+		power-domains = <&k3_pds 104 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer8: timer@2480000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2480000 0x00 0x400>;
+		interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 105 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 105 2>;
+		assigned-clock-parents = <&k3_clks 105 3>;
+		power-domains = <&k3_pds 105 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer9: timer@2490000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2490000 0x00 0x400>;
+		interrupts = <GIC_SPI 233 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 106 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 106 2>;
+		assigned-clock-parents = <&k3_clks 106 3>;
+		power-domains = <&k3_pds 106 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer10: timer@24a0000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x24a0000 0x00 0x400>;
+		interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 107 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 107 2>;
+		assigned-clock-parents = <&k3_clks 107 3>;
+		power-domains = <&k3_pds 107 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer11: timer@24b0000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x24b0000 0x00 0x400>;
+		interrupts = <GIC_SPI 235 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 108 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 108 2>;
+		assigned-clock-parents = <&k3_clks 108 3>;
+		power-domains = <&k3_pds 108 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer12: timer@24c0000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x24c0000 0x00 0x400>;
+		interrupts = <GIC_SPI 236 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 109 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 109 2>;
+		assigned-clock-parents = <&k3_clks 109 3>;
+		power-domains = <&k3_pds 109 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer13: timer@24d0000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x24d0000 0x00 0x400>;
+		interrupts = <GIC_SPI 237 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 110 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 110 2>;
+		assigned-clock-parents = <&k3_clks 110 3>;
+		power-domains = <&k3_pds 110 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer14: timer@24e0000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x24e0000 0x00 0x400>;
+		interrupts = <GIC_SPI 238 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 111 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 111 2>;
+		assigned-clock-parents = <&k3_clks 111 3>;
+		power-domains = <&k3_pds 111 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer15: timer@24f0000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x24f0000 0x00 0x400>;
+		interrupts = <GIC_SPI 239 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 112 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 112 2>;
+		assigned-clock-parents = <&k3_clks 112 3>;
+		power-domains = <&k3_pds 112 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer16: timer@2500000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2500000 0x00 0x400>;
+		interrupts = <GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 113 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 113 2>;
+		assigned-clock-parents = <&k3_clks 113 3>;
+		power-domains = <&k3_pds 113 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer17: timer@2510000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2510000 0x00 0x400>;
+		interrupts = <GIC_SPI 241 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 114 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 114 2>;
+		assigned-clock-parents = <&k3_clks 114 3>;
+		power-domains = <&k3_pds 114 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer18: timer@2520000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2520000 0x00 0x400>;
+		interrupts = <GIC_SPI 242 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 115 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 115 2>;
+		assigned-clock-parents = <&k3_clks 115 3>;
+		power-domains = <&k3_pds 115 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer19: timer@2530000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2530000 0x00 0x400>;
+		interrupts = <GIC_SPI 243 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 116 2>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 116 2>;
+		assigned-clock-parents = <&k3_clks 116 3>;
+		power-domains = <&k3_pds 116 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_uart0: serial@2800000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02800000 0x00 0x200>;
+		interrupts = <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 146 0>;
+		clock-names = "fclk";
+		power-domains = <&k3_pds 146 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	main_uart1: serial@2810000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02810000 0x00 0x200>;
+		interrupts = <GIC_SPI 193 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 388 0>;
+		clock-names = "fclk";
+		power-domains = <&k3_pds 388 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	main_uart2: serial@2820000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02820000 0x00 0x200>;
+		interrupts = <GIC_SPI 194 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 389 0>;
+		clock-names = "fclk";
+		power-domains = <&k3_pds 389 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	main_uart3: serial@2830000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02830000 0x00 0x200>;
+		interrupts = <GIC_SPI 195 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 390 0>;
+		clock-names = "fclk";
+		power-domains = <&k3_pds 390 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	main_uart4: serial@2840000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02840000 0x00 0x200>;
+		interrupts = <GIC_SPI 196 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 391 0>;
+		clock-names = "fclk";
+		power-domains = <&k3_pds 391 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	main_uart5: serial@2850000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02850000 0x00 0x200>;
+		interrupts = <GIC_SPI 197 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 392 0>;
+		clock-names = "fclk";
+		power-domains = <&k3_pds 392 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	main_uart6: serial@2860000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02860000 0x00 0x200>;
+		interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 393 0>;
+		clock-names = "fclk";
+		power-domains = <&k3_pds 393 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	main_uart7: serial@2870000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02870000 0x00 0x200>;
+		interrupts = <GIC_SPI 199 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 394 0>;
+		clock-names = "fclk";
+		power-domains = <&k3_pds 394 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	main_uart8: serial@2880000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02880000 0x00 0x200>;
+		interrupts = <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 395 0>;
+		clock-names = "fclk";
+		power-domains = <&k3_pds 395 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	main_uart9: serial@2890000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02890000 0x00 0x200>;
+		interrupts = <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 396 0>;
+		clock-names = "fclk";
+		power-domains = <&k3_pds 396 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	main_gpio0: gpio@600000 {
+		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
+		reg = <0x00 0x00600000 0x00 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&main_gpio_intr>;
+		interrupts = <145>, <146>, <147>, <148>, <149>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		ti,ngpio = <66>;
+		ti,davinci-gpio-unbanked = <0>;
+		power-domains = <&k3_pds 163 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 163 0>;
+		clock-names = "gpio";
+		status = "disabled";
+	};
+
+	main_gpio2: gpio@610000 {
+		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
+		reg = <0x00 0x00610000 0x00 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&main_gpio_intr>;
+		interrupts = <154>, <155>, <156>, <157>, <158>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		ti,ngpio = <66>;
+		ti,davinci-gpio-unbanked = <0>;
+		power-domains = <&k3_pds 164 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 164 0>;
+		clock-names = "gpio";
+		status = "disabled";
+	};
+
+	main_gpio4: gpio@620000 {
+		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
+		reg = <0x00 0x00620000 0x00 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&main_gpio_intr>;
+		interrupts = <163>, <164>, <165>, <166>, <167>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		ti,ngpio = <66>;
+		ti,davinci-gpio-unbanked = <0>;
+		power-domains = <&k3_pds 165 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 165 0>;
+		clock-names = "gpio";
+		status = "disabled";
+	};
+
+	main_gpio6: gpio@630000 {
+		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
+		reg = <0x00 0x00630000 0x00 0x100>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&main_gpio_intr>;
+		interrupts = <172>, <173>, <174>, <175>, <176>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		ti,ngpio = <66>;
+		ti,davinci-gpio-unbanked = <0>;
+		power-domains = <&k3_pds 166 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 166 0>;
+		clock-names = "gpio";
+		status = "disabled";
+	};
+
+	usbss0: usb@4104000 {
+		bootph-all;
+		compatible = "ti,j721e-usb";
+		reg = <0x00 0x4104000 0x00 0x100>;
+		dma-coherent;
+		power-domains = <&k3_pds 398 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 398 21>, <&k3_clks 398 2>;
+		clock-names = "ref", "lpm";
+		assigned-clocks = <&k3_clks 398 21>;    /* USB2_REFCLK */
+		assigned-clock-parents = <&k3_clks 398 22>; /* HFOSC0 */
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		status = "disabled"; /* Needs lane config */
+
+		usb0: usb@6000000 {
+			bootph-all;
+			compatible = "cdns,usb3";
+			reg = <0x00 0x6000000 0x00 0x10000>,
+			      <0x00 0x6010000 0x00 0x10000>,
+			      <0x00 0x6020000 0x00 0x10000>;
+			reg-names = "otg", "xhci", "dev";
+			interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>,  /* irq.0 */
+				     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>, /* irq.6 */
+				     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>; /* otgirq.0 */
+			interrupt-names = "host",
+					  "peripheral",
+					  "otg";
+		};
+	};
+
+	main_i2c0: i2c@2000000 {
+		compatible = "ti,j721e-i2c", "ti,omap4-i2c";
+		reg = <0x00 0x02000000 0x00 0x100>;
+		interrupts = <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&k3_clks 270 2>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 270 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	main_i2c1: i2c@2010000 {
+		compatible = "ti,j721e-i2c", "ti,omap4-i2c";
+		reg = <0x00 0x02010000 0x00 0x100>;
+		interrupts = <GIC_SPI 201 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&k3_clks 271 2>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 271 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	main_i2c2: i2c@2020000 {
+		compatible = "ti,j721e-i2c", "ti,omap4-i2c";
+		reg = <0x00 0x02020000 0x00 0x100>;
+		interrupts = <GIC_SPI 202 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&k3_clks 272 2>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 272 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	main_i2c3: i2c@2030000 {
+		compatible = "ti,j721e-i2c", "ti,omap4-i2c";
+		reg = <0x00 0x02030000 0x00 0x100>;
+		interrupts = <GIC_SPI 203 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&k3_clks 273 2>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 273 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	main_i2c4: i2c@2040000 {
+		compatible = "ti,j721e-i2c", "ti,omap4-i2c";
+		reg = <0x00 0x02040000 0x00 0x100>;
+		interrupts = <GIC_SPI 204 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&k3_clks 274 2>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 274 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	main_i2c5: i2c@2050000 {
+		compatible = "ti,j721e-i2c", "ti,omap4-i2c";
+		reg = <0x00 0x02050000 0x00 0x100>;
+		interrupts = <GIC_SPI 205 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&k3_clks 275 2>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 275 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	main_i2c6: i2c@2060000 {
+		compatible = "ti,j721e-i2c", "ti,omap4-i2c";
+		reg = <0x00 0x02060000 0x00 0x100>;
+		interrupts = <GIC_SPI 206 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&k3_clks 276 2>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 276 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	ti_csi2rx0: ticsi2rx@4500000 {
+		compatible = "ti,j721e-csi2rx-shim";
+		reg = <0x00 0x04500000 0x00 0x00001000>;
+		ranges;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		dmas = <&main_bcdma_csi 0 0x4940 0>;
+		dma-names = "rx0";
+		power-domains = <&k3_pds 72 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+
+		cdns_csi2rx0: csi-bridge@4504000 {
+			compatible = "ti,j721e-csi2rx", "cdns,csi2rx";
+			reg = <0x00 0x04504000 0x00 0x00001000>;
+			clocks = <&k3_clks 72 2>, <&k3_clks 72 0>, <&k3_clks 72 2>,
+				<&k3_clks 72 2>, <&k3_clks 72 3>, <&k3_clks 72 3>;
+			clock-names = "sys_clk", "p_clk", "pixel_if0_clk",
+				"pixel_if1_clk", "pixel_if2_clk", "pixel_if3_clk";
+			phys = <&dphy0>;
+			phy-names = "dphy";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csi0_port0: port@0 {
+					reg = <0>;
+					status = "disabled";
+				};
+
+				csi0_port1: port@1 {
+					reg = <1>;
+					status = "disabled";
+				};
+
+				csi0_port2: port@2 {
+					reg = <2>;
+					status = "disabled";
+				};
+
+				csi0_port3: port@3 {
+					reg = <3>;
+					status = "disabled";
+				};
+
+				csi0_port4: port@4 {
+					reg = <4>;
+					status = "disabled";
+				};
+			};
+		};
+	};
+
+	ti_csi2rx1: ticsi2rx@4510000 {
+		compatible = "ti,j721e-csi2rx-shim";
+		reg = <0x00 0x04510000 0x00 0x1000>;
+		ranges;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		dmas = <&main_bcdma_csi 0 0x4960 0>;
+		dma-names = "rx0";
+		power-domains = <&k3_pds 73 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+
+		cdns_csi2rx1: csi-bridge@4514000 {
+			compatible = "ti,j721e-csi2rx", "cdns,csi2rx";
+			reg = <0x00 0x04514000 0x00 0x00001000>;
+			clocks = <&k3_clks 73 2>, <&k3_clks 73 0>, <&k3_clks 73 2>,
+				<&k3_clks 73 2>, <&k3_clks 73 3>, <&k3_clks 73 3>;
+			clock-names = "sys_clk", "p_clk", "pixel_if0_clk",
+				"pixel_if1_clk", "pixel_if2_clk", "pixel_if3_clk";
+			phys = <&dphy1>;
+			phy-names = "dphy";
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csi1_port0: port@0 {
+					reg = <0>;
+					status = "disabled";
+				};
+
+				csi1_port1: port@1 {
+					reg = <1>;
+					status = "disabled";
+				};
+
+				csi1_port2: port@2 {
+					reg = <2>;
+					status = "disabled";
+				};
+
+				csi1_port3: port@3 {
+					reg = <3>;
+					status = "disabled";
+				};
+
+				csi1_port4: port@4 {
+					reg = <4>;
+					status = "disabled";
+				};
+			};
+		};
+	};
+
+	ti_csi2rx2: ticsi2rx@4520000 {
+		compatible = "ti,j721e-csi2rx-shim";
+		reg = <0x00 0x04520000 0x00 0x00001000>;
+		ranges;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		dmas = <&main_bcdma_csi 0 0x4980 0>;
+		dma-names = "rx0";
+		power-domains = <&k3_pds 74 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+
+		cdns_csi2rx2: csi-bridge@4524000 {
+			compatible = "ti,j721e-csi2rx", "cdns,csi2rx";
+			reg = <0x00 0x04524000 0x00 0x00001000>;
+			clocks = <&k3_clks 74 2>, <&k3_clks 74 0>, <&k3_clks 74 2>,
+				<&k3_clks 74 2>, <&k3_clks 74 3>, <&k3_clks 74 3>;
+			clock-names = "sys_clk", "p_clk", "pixel_if0_clk",
+				"pixel_if1_clk", "pixel_if2_clk", "pixel_if3_clk";
+			phys = <&dphy2>;
+			phy-names = "dphy";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csi2_port0: port@0 {
+					reg = <0>;
+					status = "disabled";
+				};
+
+				csi2_port1: port@1 {
+					reg = <1>;
+					status = "disabled";
+				};
+
+				csi2_port2: port@2 {
+					reg = <2>;
+					status = "disabled";
+				};
+
+				csi2_port3: port@3 {
+					reg = <3>;
+					status = "disabled";
+				};
+
+				csi2_port4: port@4 {
+					reg = <4>;
+					status = "disabled";
+				};
+			};
+		};
+	};
+
+	dphy0: phy@4580000 {
+		compatible = "cdns,dphy-rx";
+		reg = <0x00 0x04580000 0x00 0x00001100>;
+		#phy-cells = <0>;
+		power-domains = <&k3_pds 212 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	dphy1: phy@4590000 {
+		compatible = "cdns,dphy-rx";
+		reg = <0x00 0x04590000 0x00 0x00001100>;
+		#phy-cells = <0>;
+		power-domains = <&k3_pds 213 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	dphy2: phy@45a0000 {
+		compatible = "cdns,dphy-rx";
+		reg = <0x00 0x045a0000 0x00 0x00001100>;
+		#phy-cells = <0>;
+		power-domains = <&k3_pds 214 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	vpu0: video-codec@4210000 {
+		compatible = "ti,j721s2-wave521c", "cnm,wave521c";
+		reg = <0x00 0x4210000 0x00 0x10000>;
+		interrupts = <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 241 2>;
+		power-domains = <&k3_pds 241 TI_SCI_PD_EXCLUSIVE>;
+	};
+
+	vpu1: video-codec@4220000 {
+		compatible = "ti,j721s2-wave521c", "cnm,wave521c";
+		reg = <0x00 0x4220000 0x00 0x10000>;
+		interrupts = <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 242 2>;
+		power-domains = <&k3_pds 242 TI_SCI_PD_EXCLUSIVE>;
+	};
+
+	main_sdhci0: mmc@4f80000 {
+		compatible = "ti,j721e-sdhci-8bit";
+		reg = <0x00 0x04f80000 0x00 0x1000>,
+		      <0x00 0x04f88000 0x00 0x400>;
+		interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&k3_pds 140 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 140 1>, <&k3_clks 140 2>;
+		clock-names = "clk_ahb", "clk_xin";
+		assigned-clocks = <&k3_clks 140 2>;
+		assigned-clock-parents = <&k3_clks 140 3>;
+		bus-width = <8>;
+		ti,otap-del-sel-legacy = <0x0>;
+		ti,otap-del-sel-mmc-hs = <0x0>;
+		ti,otap-del-sel-ddr52 = <0x6>;
+		ti,otap-del-sel-hs200 = <0x8>;
+		ti,otap-del-sel-hs400 = <0x5>;
+		ti,itap-del-sel-legacy = <0x10>;
+		ti,itap-del-sel-mmc-hs = <0xa>;
+		ti,strobe-sel = <0x77>;
+		ti,clkbuf-sel = <0x7>;
+		ti,trm-icp = <0x8>;
+		mmc-ddr-1_8v;
+		mmc-hs200-1_8v;
+		mmc-hs400-1_8v;
+		dma-coherent;
+		status = "disabled";
+	};
+
+	main_sdhci1: mmc@4fb0000 {
+		compatible = "ti,j721e-sdhci-4bit";
+		reg = <0x00 0x04fb0000 0x00 0x1000>,
+		      <0x00 0x04fb8000 0x00 0x400>;
+		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&k3_pds 141 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 141 3>, <&k3_clks 141 4>;
+		clock-names = "clk_ahb", "clk_xin";
+		assigned-clocks = <&k3_clks 141 4>;
+		assigned-clock-parents = <&k3_clks 141 5>;
+		bus-width = <4>;
+		ti,otap-del-sel-legacy = <0x0>;
+		ti,otap-del-sel-sd-hs = <0x0>;
+		ti,otap-del-sel-sdr12 = <0xf>;
+		ti,otap-del-sel-sdr25 = <0xf>;
+		ti,otap-del-sel-sdr50 = <0xc>;
+		ti,otap-del-sel-sdr104 = <0x5>;
+		ti,otap-del-sel-ddr50 = <0xc>;
+		ti,itap-del-sel-legacy = <0x0>;
+		ti,itap-del-sel-sd-hs = <0x0>;
+		ti,itap-del-sel-sdr12 = <0x0>;
+		ti,itap-del-sel-sdr25 = <0x0>;
+		ti,itap-del-sel-ddr50 = <0x2>;
+		ti,clkbuf-sel = <0x7>;
+		ti,trm-icp = <0x8>;
+		dma-coherent;
+		status = "disabled";
+	};
+
+	pcie0_rc: pcie@2900000 {
+		compatible = "ti,j784s4-pcie-host";
+		reg = <0x00 0x02900000 0x00 0x1000>,
+		      <0x00 0x02907000 0x00 0x400>,
+		      <0x00 0x0d000000 0x00 0x00800000>,
+		      <0x00 0x10000000 0x00 0x00001000>;
+		reg-names = "intd_cfg", "user_cfg", "reg", "cfg";
+		interrupt-names = "link_state";
+		interrupts = <GIC_SPI 318 IRQ_TYPE_EDGE_RISING>;
+		device_type = "pci";
+		ti,syscon-pcie-ctrl = <&pcie0_ctrl 0x0>;
+		max-link-speed = <3>;
+		num-lanes = <4>;
+		power-domains = <&k3_pds 332 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 332 0>;
+		clock-names = "fck";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x0 0xff>;
+		vendor-id = <0x104c>;
+		device-id = <0xb012>;
+		msi-map = <0x0 &gic_its 0x0 0x10000>;
+		dma-coherent;
+		ranges = <0x01000000 0x0 0x10001000 0x0 0x10001000 0x0 0x0010000>,
+			 <0x02000000 0x0 0x10011000 0x0 0x10011000 0x0 0x7fef000>;
+		dma-ranges = <0x02000000 0x0 0x0 0x0 0x0 0x10000 0x0>;
+		status = "disabled";
+	};
+
+	pcie1_rc: pcie@2910000 {
+		compatible = "ti,j784s4-pcie-host";
+		reg = <0x00 0x02910000 0x00 0x1000>,
+		      <0x00 0x02917000 0x00 0x400>,
+		      <0x00 0x0d800000 0x00 0x00800000>,
+		      <0x00 0x18000000 0x00 0x00001000>;
+		reg-names = "intd_cfg", "user_cfg", "reg", "cfg";
+		interrupt-names = "link_state";
+		interrupts = <GIC_SPI 330 IRQ_TYPE_EDGE_RISING>;
+		device_type = "pci";
+		ti,syscon-pcie-ctrl = <&pcie1_ctrl 0x0>;
+		max-link-speed = <3>;
+		num-lanes = <4>;
+		power-domains = <&k3_pds 333 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 333 0>;
+		clock-names = "fck";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x0 0xff>;
+		vendor-id = <0x104c>;
+		device-id = <0xb012>;
+		msi-map = <0x0 &gic_its 0x10000 0x10000>;
+		dma-coherent;
+		ranges = <0x01000000 0x0 0x18001000  0x00 0x18001000  0x0 0x0010000>,
+			 <0x02000000 0x0 0x18011000  0x00 0x18011000  0x0 0x7fef000>;
+		dma-ranges = <0x02000000 0x0 0x0 0x0 0x0 0x10000 0x0>;
+		status = "disabled";
+	};
+
+	serdes_wiz0: wiz@5060000 {
+		compatible = "ti,j784s4-wiz-10g";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		power-domains = <&k3_pds 404 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 404 2>, <&k3_clks 404 6>, <&serdes_refclk>, <&k3_clks 404 5>;
+		clock-names = "fck", "core_ref_clk", "ext_ref_clk", "core_ref1_clk";
+		assigned-clocks = <&k3_clks 404 6>;
+		assigned-clock-parents = <&k3_clks 404 10>;
+		num-lanes = <4>;
+		#reset-cells = <1>;
+		#clock-cells = <1>;
+		ranges = <0x5060000 0x00 0x5060000 0x10000>;
+		status = "disabled";
+
+		serdes0: serdes@5060000 {
+			compatible = "ti,j721e-serdes-10g";
+			reg = <0x05060000 0x010000>;
+			reg-names = "torrent_phy";
+			resets = <&serdes_wiz0 0>;
+			reset-names = "torrent_reset";
+			clocks = <&serdes_wiz0 TI_WIZ_PLL0_REFCLK>,
+				 <&serdes_wiz0 TI_WIZ_PHY_EN_REFCLK>;
+			clock-names = "refclk", "phy_en_refclk";
+			assigned-clocks = <&serdes_wiz0 TI_WIZ_PLL0_REFCLK>,
+					  <&serdes_wiz0 TI_WIZ_PLL1_REFCLK>,
+					  <&serdes_wiz0 TI_WIZ_REFCLK_DIG>;
+			assigned-clock-parents = <&k3_clks 404 6>,
+						 <&k3_clks 404 6>,
+						 <&k3_clks 404 6>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			#clock-cells = <1>;
+			status = "disabled";
+		};
+	};
+
+	serdes_wiz1: wiz@5070000 {
+		compatible = "ti,j784s4-wiz-10g";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		power-domains = <&k3_pds 405 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 405 2>, <&k3_clks 405 6>, <&serdes_refclk>, <&k3_clks 405 5>;
+		clock-names = "fck", "core_ref_clk", "ext_ref_clk", "core_ref1_clk";
+		assigned-clocks = <&k3_clks 405 6>;
+		assigned-clock-parents = <&k3_clks 405 10>;
+		num-lanes = <4>;
+		#reset-cells = <1>;
+		#clock-cells = <1>;
+		ranges = <0x05070000 0x00 0x05070000 0x10000>;
+		status = "disabled";
+
+		serdes1: serdes@5070000 {
+			compatible = "ti,j721e-serdes-10g";
+			reg = <0x05070000 0x010000>;
+			reg-names = "torrent_phy";
+			resets = <&serdes_wiz1 0>;
+			reset-names = "torrent_reset";
+			clocks = <&serdes_wiz1 TI_WIZ_PLL0_REFCLK>,
+				 <&serdes_wiz1 TI_WIZ_PHY_EN_REFCLK>;
+			clock-names = "refclk", "phy_en_refclk";
+			assigned-clocks = <&serdes_wiz1 TI_WIZ_PLL0_REFCLK>,
+					  <&serdes_wiz1 TI_WIZ_PLL1_REFCLK>,
+					  <&serdes_wiz1 TI_WIZ_REFCLK_DIG>;
+			assigned-clock-parents = <&k3_clks 405 6>,
+						 <&k3_clks 405 6>,
+						 <&k3_clks 405 6>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			#clock-cells = <1>;
+			status = "disabled";
+		};
+	};
+
+	serdes_wiz4: wiz@5050000 {
+		compatible = "ti,j784s4-wiz-10g";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		power-domains = <&k3_pds 407 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 407 2>, <&k3_clks 407 6>, <&serdes_refclk>, <&k3_clks 407 5>;
+		clock-names = "fck", "core_ref_clk", "ext_ref_clk", "core_ref1_clk";
+		assigned-clocks = <&k3_clks 407 6>;
+		assigned-clock-parents = <&k3_clks 407 10>;
+		num-lanes = <4>;
+		#reset-cells = <1>;
+		#clock-cells = <1>;
+		ranges = <0x05050000 0x00 0x05050000 0x10000>,
+			 <0xa030a00 0x00 0xa030a00 0x40>; /* DPTX PHY */
+		status = "disabled";
+
+		serdes4: serdes@5050000 {
+			/*
+			 * Note: we also map DPTX PHY registers as the Torrent
+			 * needs to manage those.
+			 */
+			compatible = "ti,j721e-serdes-10g";
+			reg = <0x05050000 0x010000>,
+			      <0x0a030a00 0x40>; /* DPTX PHY */
+			reg-names = "torrent_phy";
+			resets = <&serdes_wiz4 0>;
+			reset-names = "torrent_reset";
+			clocks = <&serdes_wiz4 TI_WIZ_PLL0_REFCLK>,
+				 <&serdes_wiz4 TI_WIZ_PHY_EN_REFCLK>;
+			clock-names = "refclk", "phy_en_refclk";
+			assigned-clocks = <&serdes_wiz4 TI_WIZ_PLL0_REFCLK>,
+					  <&serdes_wiz4 TI_WIZ_PLL1_REFCLK>,
+					  <&serdes_wiz4 TI_WIZ_REFCLK_DIG>;
+			assigned-clock-parents = <&k3_clks 407 6>,
+						 <&k3_clks 407 6>,
+						 <&k3_clks 407 6>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			#clock-cells = <1>;
+			status = "disabled";
+		};
+	};
+
+	main_navss: bus@30000000 {
+		bootph-all;
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges = <0x00 0x30000000 0x00 0x30000000 0x00 0x0c400000>;
+		ti,sci-dev-id = <280>;
+		dma-coherent;
+		dma-ranges;
+
+		main_navss_intr: interrupt-controller@310e0000 {
+			compatible = "ti,sci-intr";
+			reg = <0x00 0x310e0000 0x00 0x4000>;
+			ti,intr-trigger-type = <4>;
+			interrupt-controller;
+			interrupt-parent = <&gic500>;
+			#interrupt-cells = <1>;
+			ti,sci = <&sms>;
+			ti,sci-dev-id = <283>;
+			ti,interrupt-ranges = <0 64 64>,
+					      <64 448 64>,
+					      <128 672 64>;
+		};
+
+		main_udmass_inta: msi-controller@33d00000 {
+			compatible = "ti,sci-inta";
+			reg = <0x00 0x33d00000 0x00 0x100000>;
+			interrupt-controller;
+			#interrupt-cells = <0>;
+			interrupt-parent = <&main_navss_intr>;
+			msi-controller;
+			ti,sci = <&sms>;
+			ti,sci-dev-id = <321>;
+			ti,interrupt-ranges = <0 0 256>;
+			ti,unmapped-event-sources = <&main_bcdma_csi>;
+		};
+
+		secure_proxy_main: mailbox@32c00000 {
+			bootph-all;
+			compatible = "ti,am654-secure-proxy";
+			#mbox-cells = <1>;
+			reg-names = "target_data", "rt", "scfg";
+			reg = <0x00 0x32c00000 0x00 0x100000>,
+			      <0x00 0x32400000 0x00 0x100000>,
+			      <0x00 0x32800000 0x00 0x100000>;
+			interrupt-names = "rx_011";
+			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		hwspinlock: hwlock@30e00000 {
+			compatible = "ti,am654-hwspinlock";
+			reg = <0x00 0x30e00000 0x00 0x1000>;
+			#hwlock-cells = <1>;
+		};
+
+		mailbox0_cluster0: mailbox@31f80000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f80000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster1: mailbox@31f81000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f81000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster2: mailbox@31f82000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f82000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster3: mailbox@31f83000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f83000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster4: mailbox@31f84000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f84000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster5: mailbox@31f85000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f85000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster6: mailbox@31f86000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f86000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster7: mailbox@31f87000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f87000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster8: mailbox@31f88000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f88000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster9: mailbox@31f89000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f89000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster10: mailbox@31f8a000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f8a000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox0_cluster11: mailbox@31f8b000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f8b000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox1_cluster0: mailbox@31f90000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f90000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox1_cluster1: mailbox@31f91000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f91000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox1_cluster2: mailbox@31f92000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f92000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox1_cluster3: mailbox@31f93000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f93000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox1_cluster4: mailbox@31f94000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f94000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox1_cluster5: mailbox@31f95000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f95000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox1_cluster6: mailbox@31f96000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f96000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox1_cluster7: mailbox@31f97000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f97000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox1_cluster8: mailbox@31f98000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f98000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox1_cluster9: mailbox@31f99000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f99000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox1_cluster10: mailbox@31f9a000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f9a000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		mailbox1_cluster11: mailbox@31f9b000 {
+			compatible = "ti,am654-mailbox";
+			reg = <0x00 0x31f9b000 0x00 0x200>;
+			#mbox-cells = <1>;
+			ti,mbox-num-users = <4>;
+			ti,mbox-num-fifos = <16>;
+			interrupt-parent = <&main_navss_intr>;
+			status = "disabled";
+		};
+
+		main_ringacc: ringacc@3c000000 {
+			compatible = "ti,am654-navss-ringacc";
+			reg = <0x00 0x3c000000 0x00 0x400000>,
+			      <0x00 0x38000000 0x00 0x400000>,
+			      <0x00 0x31120000 0x00 0x100>,
+			      <0x00 0x33000000 0x00 0x40000>,
+			      <0x00 0x31080000 0x00 0x40000>;
+			reg-names = "rt", "fifos", "proxy_gcfg", "proxy_target", "cfg";
+			ti,num-rings = <1024>;
+			ti,sci-rm-range-gp-rings = <0x1>;
+			ti,sci = <&sms>;
+			ti,sci-dev-id = <315>;
+			msi-parent = <&main_udmass_inta>;
+		};
+
+		main_udmap: dma-controller@31150000 {
+			compatible = "ti,j721e-navss-main-udmap";
+			reg = <0x00 0x31150000 0x00 0x100>,
+			      <0x00 0x34000000 0x00 0x80000>,
+			      <0x00 0x35000000 0x00 0x200000>,
+			      <0x00 0x30b00000 0x00 0x20000>,
+			      <0x00 0x30c00000 0x00 0x8000>,
+			      <0x00 0x30d00000 0x00 0x4000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt",
+				    "tchan", "rchan", "rflow";
+			msi-parent = <&main_udmass_inta>;
+			#dma-cells = <1>;
+
+			ti,sci = <&sms>;
+			ti,sci-dev-id = <319>;
+			ti,ringacc = <&main_ringacc>;
+
+			ti,sci-rm-range-tchan = <0x0d>, /* TX_CHAN */
+						<0x0f>, /* TX_HCHAN */
+						<0x10>; /* TX_UHCHAN */
+			ti,sci-rm-range-rchan = <0x0a>, /* RX_CHAN */
+						<0x0b>, /* RX_HCHAN */
+						<0x0c>; /* RX_UHCHAN */
+			ti,sci-rm-range-rflow = <0x00>; /* GP RFLOW */
+		};
+
+		main_bcdma_csi: dma-controller@311a0000 {
+			compatible = "ti,j721s2-dmss-bcdma-csi";
+			reg = <0x00 0x311a0000 0x00 0x100>,
+			      <0x00 0x35d00000 0x00 0x20000>,
+			      <0x00 0x35c00000 0x00 0x10000>,
+			      <0x00 0x35e00000 0x00 0x80000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt", "ringrt";
+			msi-parent = <&main_udmass_inta>;
+			#dma-cells = <3>;
+			ti,sci = <&sms>;
+			ti,sci-dev-id = <281>;
+			ti,sci-rm-range-rchan = <0x21>;
+			ti,sci-rm-range-tchan = <0x22>;
+		};
+
+		cpts@310d0000 {
+			compatible = "ti,j721e-cpts";
+			reg = <0x00 0x310d0000 0x00 0x400>;
+			reg-names = "cpts";
+			clocks = <&k3_clks 282 0>;
+			clock-names = "cpts";
+			assigned-clocks = <&k3_clks 62 3>; /* CPTS_RFT_CLK */
+			assigned-clock-parents = <&k3_clks 62 5>; /* MAIN_0_HSDIV6_CLK */
+			interrupts-extended = <&main_navss_intr 391>;
+			interrupt-names = "cpts";
+			ti,cpts-periodic-outputs = <6>;
+			ti,cpts-ext-ts-inputs = <8>;
+		};
+	};
+
+	main_cpsw0: ethernet@c000000 {
+		compatible = "ti,j784s4-cpswxg-nuss";
+		reg = <0x00 0xc000000 0x00 0x200000>;
+		reg-names = "cpsw_nuss";
+		ranges = <0x00 0x00 0x00 0xc000000 0x00 0x200000>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		dma-coherent;
+		clocks = <&k3_clks 64 0>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 64 TI_SCI_PD_EXCLUSIVE>;
+
+		dmas = <&main_udmap 0xca00>,
+		       <&main_udmap 0xca01>,
+		       <&main_udmap 0xca02>,
+		       <&main_udmap 0xca03>,
+		       <&main_udmap 0xca04>,
+		       <&main_udmap 0xca05>,
+		       <&main_udmap 0xca06>,
+		       <&main_udmap 0xca07>,
+		       <&main_udmap 0x4a00>;
+		dma-names = "tx0", "tx1", "tx2", "tx3",
+			    "tx4", "tx5", "tx6", "tx7",
+			    "rx";
+
+		status = "disabled";
+
+		ethernet-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			main_cpsw0_port1: port@1 {
+				reg = <1>;
+				label = "port1";
+				ti,mac-only;
+				status = "disabled";
+			};
+
+			main_cpsw0_port2: port@2 {
+				reg = <2>;
+				label = "port2";
+				ti,mac-only;
+				status = "disabled";
+			};
+
+			main_cpsw0_port3: port@3 {
+				reg = <3>;
+				label = "port3";
+				ti,mac-only;
+				status = "disabled";
+			};
+
+			main_cpsw0_port4: port@4 {
+				reg = <4>;
+				label = "port4";
+				ti,mac-only;
+				status = "disabled";
+			};
+
+			main_cpsw0_port5: port@5 {
+				reg = <5>;
+				label = "port5";
+				ti,mac-only;
+				status = "disabled";
+			};
+
+			main_cpsw0_port6: port@6 {
+				reg = <6>;
+				label = "port6";
+				ti,mac-only;
+				status = "disabled";
+			};
+
+			main_cpsw0_port7: port@7 {
+				reg = <7>;
+				label = "port7";
+				ti,mac-only;
+				status = "disabled";
+			};
+
+			main_cpsw0_port8: port@8 {
+				reg = <8>;
+				label = "port8";
+				ti,mac-only;
+				status = "disabled";
+			};
+		};
+
+		main_cpsw0_mdio: mdio@f00 {
+			compatible = "ti,cpsw-mdio","ti,davinci_mdio";
+			reg = <0x00 0xf00 0x00 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&k3_clks 64 0>;
+			clock-names = "fck";
+			bus_freq = <1000000>;
+			status = "disabled";
+		};
+
+		cpts@3d000 {
+			compatible = "ti,am65-cpts";
+			reg = <0x00 0x3d000 0x00 0x400>;
+			clocks = <&k3_clks 64 3>;
+			clock-names = "cpts";
+			interrupts-extended = <&gic500 GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "cpts";
+			ti,cpts-ext-ts-inputs = <4>;
+			ti,cpts-periodic-outputs = <2>;
+		};
+	};
+
+	main_cpsw1: ethernet@c200000 {
+		compatible = "ti,j721e-cpsw-nuss";
+		reg = <0x00 0xc200000 0x00 0x200000>;
+		reg-names = "cpsw_nuss";
+		ranges = <0x00 0x00 0x00 0xc200000 0x00 0x200000>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		dma-coherent;
+		clocks = <&k3_clks 62 0>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 62 TI_SCI_PD_EXCLUSIVE>;
+
+		dmas = <&main_udmap 0xc640>,
+			<&main_udmap 0xc641>,
+			<&main_udmap 0xc642>,
+			<&main_udmap 0xc643>,
+			<&main_udmap 0xc644>,
+			<&main_udmap 0xc645>,
+			<&main_udmap 0xc646>,
+			<&main_udmap 0xc647>,
+			<&main_udmap 0x4640>;
+		dma-names = "tx0", "tx1", "tx2", "tx3",
+				"tx4", "tx5", "tx6", "tx7",
+				"rx";
+
+		status = "disabled";
+
+		ethernet-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			main_cpsw1_port1: port@1 {
+				reg = <1>;
+				label = "port1";
+				phys = <&cpsw1_phy_gmii_sel 1>;
+				ti,mac-only;
+				status = "disabled";
+			};
+		};
+
+		main_cpsw1_mdio: mdio@f00 {
+			compatible = "ti,cpsw-mdio", "ti,davinci_mdio";
+			reg = <0x00 0xf00 0x00 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&k3_clks 62 0>;
+			clock-names = "fck";
+			bus_freq = <1000000>;
+			status = "disabled";
+		};
+
+		cpts@3d000 {
+			compatible = "ti,am65-cpts";
+			reg = <0x00 0x3d000 0x00 0x400>;
+			clocks = <&k3_clks 62 3>;
+			clock-names = "cpts";
+			interrupts-extended = <&gic500 GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "cpts";
+			ti,cpts-ext-ts-inputs = <4>;
+			ti,cpts-periodic-outputs = <2>;
+		};
+	};
+
+	main_mcan0: can@2701000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x02701000 0x00 0x200>,
+		      <0x00 0x02708000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 245 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 245 6>, <&k3_clks 245 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan1: can@2711000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x02711000 0x00 0x200>,
+		      <0x00 0x02718000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 246 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 246 6>, <&k3_clks 246 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan2: can@2721000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x02721000 0x00 0x200>,
+		      <0x00 0x02728000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 247 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 247 6>, <&k3_clks 247 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan3: can@2731000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x02731000 0x00 0x200>,
+		      <0x00 0x02738000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 248 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 248 6>, <&k3_clks 248 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan4: can@2741000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x02741000 0x00 0x200>,
+		      <0x00 0x02748000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 249 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 249 6>, <&k3_clks 249 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan5: can@2751000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x02751000 0x00 0x200>,
+		      <0x00 0x02758000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 250 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 250 6>, <&k3_clks 250 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan6: can@2761000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x02761000 0x00 0x200>,
+		      <0x00 0x02768000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 251 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 251 6>, <&k3_clks 251 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan7: can@2771000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x02771000 0x00 0x200>,
+		      <0x00 0x02778000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 252 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 252 6>, <&k3_clks 252 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan8: can@2781000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x02781000 0x00 0x200>,
+		      <0x00 0x02788000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 253 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 253 6>, <&k3_clks 253 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 576 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 577 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan9: can@2791000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x02791000 0x00 0x200>,
+		      <0x00 0x02798000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 254 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 254 6>, <&k3_clks 254 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 579 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 580 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan10: can@27a1000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x027a1000 0x00 0x200>,
+		      <0x00 0x027a8000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 255 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 255 6>, <&k3_clks 255 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 582 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 583 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan11: can@27b1000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x027b1000 0x00 0x200>,
+		      <0x00 0x027b8000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 256 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 256 6>, <&k3_clks 256 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 585 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 586 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan12: can@27c1000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x027c1000 0x00 0x200>,
+		      <0x00 0x027c8000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 257 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 257 6>, <&k3_clks 257 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 588 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 589 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan13: can@27d1000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x027d1000 0x00 0x200>,
+		      <0x00 0x027d8000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 258 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 258 6>, <&k3_clks 258 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan14: can@2681000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x02681000 0x00 0x200>,
+		      <0x00 0x02688000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 259 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 259 6>, <&k3_clks 259 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan15: can@2691000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x02691000 0x00 0x200>,
+		      <0x00 0x02698000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 260 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 260 6>, <&k3_clks 260 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan16: can@26a1000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x026a1000 0x00 0x200>,
+		      <0x00 0x026a8000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 261 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 261 6>, <&k3_clks 261 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 784 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 785 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_mcan17: can@26b1000 {
+		compatible = "bosch,m_can";
+		reg = <0x00 0x026b1000 0x00 0x200>,
+		      <0x00 0x026b8000 0x00 0x8000>;
+		reg-names = "m_can", "message_ram";
+		power-domains = <&k3_pds 262 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 262 6>, <&k3_clks 262 1>;
+		clock-names = "hclk", "cclk";
+		interrupts = <GIC_SPI 787 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 788 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "int0", "int1";
+		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
+		status = "disabled";
+	};
+
+	main_spi0: spi@2100000 {
+		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
+		reg = <0x00 0x02100000 0x00 0x400>;
+		interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		power-domains = <&k3_pds 376 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 376 1>;
+		status = "disabled";
+	};
+
+	main_spi1: spi@2110000 {
+		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
+		reg = <0x00 0x02110000 0x00 0x400>;
+		interrupts = <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		power-domains = <&k3_pds 377 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 377 1>;
+		status = "disabled";
+	};
+
+	main_spi2: spi@2120000 {
+		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
+		reg = <0x00 0x02120000 0x00 0x400>;
+		interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		power-domains = <&k3_pds 378 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 378 1>;
+		status = "disabled";
+	};
+
+	main_spi3: spi@2130000 {
+		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
+		reg = <0x00 0x02130000 0x00 0x400>;
+		interrupts = <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		power-domains = <&k3_pds 379 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 379 1>;
+		status = "disabled";
+	};
+
+	main_spi4: spi@2140000 {
+		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
+		reg = <0x00 0x02140000 0x00 0x400>;
+		interrupts = <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		power-domains = <&k3_pds 380 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 380 1>;
+		status = "disabled";
+	};
+
+	main_spi5: spi@2150000 {
+		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
+		reg = <0x00 0x02150000 0x00 0x400>;
+		interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		power-domains = <&k3_pds 381 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 381 1>;
+		status = "disabled";
+	};
+
+	main_spi6: spi@2160000 {
+		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
+		reg = <0x00 0x02160000 0x00 0x400>;
+		interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		power-domains = <&k3_pds 382 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 382 1>;
+		status = "disabled";
+	};
+
+	main_spi7: spi@2170000 {
+		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
+		reg = <0x00 0x02170000 0x00 0x400>;
+		interrupts = <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		power-domains = <&k3_pds 383 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 383 1>;
+		status = "disabled";
+	};
+
+	ufs_wrapper: ufs-wrapper@4e80000 {
+		compatible = "ti,j721e-ufs";
+		reg = <0x00 0x4e80000 0x00 0x100>;
+		power-domains = <&k3_pds 387 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 387 3>;
+		assigned-clocks = <&k3_clks 387 3>;
+		assigned-clock-parents = <&k3_clks 387 6>;
+		ranges;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		status = "disabled";
+
+		ufs@4e84000 {
+			compatible = "cdns,ufshc-m31-16nm", "jedec,ufs-2.0";
+			reg = <0x00 0x4e84000 0x00 0x10000>;
+			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
+			freq-table-hz = <250000000 250000000>, <19200000 19200000>,
+					<19200000 19200000>;
+			clocks = <&k3_clks 387 1>, <&k3_clks 387 3>, <&k3_clks 387 3>;
+			clock-names = "core_clk", "phy_clk", "ref_clk";
+			dma-coherent;
+		};
+	};
+
+	main_r5fss0: r5fss@5c00000 {
+		compatible = "ti,j721s2-r5fss";
+		ti,cluster-mode = <1>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x5c00000 0x00 0x5c00000 0x20000>,
+			 <0x5d00000 0x00 0x5d00000 0x20000>;
+		power-domains = <&k3_pds 336 TI_SCI_PD_EXCLUSIVE>;
+
+		main_r5fss0_core0: r5f@5c00000 {
+			compatible = "ti,j721s2-r5f";
+			reg = <0x5c00000 0x00010000>,
+			      <0x5c10000 0x00010000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&sms>;
+			ti,sci-dev-id = <339>;
+			ti,sci-proc-ids = <0x06 0xff>;
+			resets = <&k3_reset 339 1>;
+			firmware-name = "j784s4-main-r5f0_0-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+
+		main_r5fss0_core1: r5f@5d00000 {
+			compatible = "ti,j721s2-r5f";
+			reg = <0x5d00000 0x00010000>,
+			      <0x5d10000 0x00010000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&sms>;
+			ti,sci-dev-id = <340>;
+			ti,sci-proc-ids = <0x07 0xff>;
+			resets = <&k3_reset 340 1>;
+			firmware-name = "j784s4-main-r5f0_1-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+	};
+
+	main_r5fss1: r5fss@5e00000 {
+		compatible = "ti,j721s2-r5fss";
+		ti,cluster-mode = <1>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x5e00000 0x00 0x5e00000 0x20000>,
+			 <0x5f00000 0x00 0x5f00000 0x20000>;
+		power-domains = <&k3_pds 337 TI_SCI_PD_EXCLUSIVE>;
+
+		main_r5fss1_core0: r5f@5e00000 {
+			compatible = "ti,j721s2-r5f";
+			reg = <0x5e00000 0x00010000>,
+			      <0x5e10000 0x00010000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&sms>;
+			ti,sci-dev-id = <341>;
+			ti,sci-proc-ids = <0x08 0xff>;
+			resets = <&k3_reset 341 1>;
+			firmware-name = "j784s4-main-r5f1_0-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+
+		main_r5fss1_core1: r5f@5f00000 {
+			compatible = "ti,j721s2-r5f";
+			reg = <0x5f00000 0x00010000>,
+			      <0x5f10000 0x00010000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&sms>;
+			ti,sci-dev-id = <342>;
+			ti,sci-proc-ids = <0x09 0xff>;
+			resets = <&k3_reset 342 1>;
+			firmware-name = "j784s4-main-r5f1_1-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+	};
+
+	main_r5fss2: r5fss@5900000 {
+		compatible = "ti,j721s2-r5fss";
+		ti,cluster-mode = <1>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x5900000 0x00 0x5900000 0x20000>,
+			 <0x5a00000 0x00 0x5a00000 0x20000>;
+		power-domains = <&k3_pds 338 TI_SCI_PD_EXCLUSIVE>;
+
+		main_r5fss2_core0: r5f@5900000 {
+			compatible = "ti,j721s2-r5f";
+			reg = <0x5900000 0x00010000>,
+			      <0x5910000 0x00010000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&sms>;
+			ti,sci-dev-id = <343>;
+			ti,sci-proc-ids = <0x0a 0xff>;
+			resets = <&k3_reset 343 1>;
+			firmware-name = "j784s4-main-r5f2_0-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+
+		main_r5fss2_core1: r5f@5a00000 {
+			compatible = "ti,j721s2-r5f";
+			reg = <0x5a00000 0x00010000>,
+			      <0x5a10000 0x00010000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&sms>;
+			ti,sci-dev-id = <344>;
+			ti,sci-proc-ids = <0x0b 0xff>;
+			resets = <&k3_reset 344 1>;
+			firmware-name = "j784s4-main-r5f2_1-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+	};
+
+	c71_0: dsp@64800000 {
+		compatible = "ti,j721s2-c71-dsp";
+		reg = <0x00 0x64800000 0x00 0x00080000>,
+		      <0x00 0x64e00000 0x00 0x0000c000>;
+		reg-names = "l2sram", "l1dram";
+		ti,sci = <&sms>;
+		ti,sci-dev-id = <30>;
+		ti,sci-proc-ids = <0x30 0xff>;
+		resets = <&k3_reset 30 1>;
+		firmware-name = "j784s4-c71_0-fw";
+		status = "disabled";
+	};
+
+	c71_1: dsp@65800000 {
+		compatible = "ti,j721s2-c71-dsp";
+		reg = <0x00 0x65800000 0x00 0x00080000>,
+		      <0x00 0x65e00000 0x00 0x0000c000>;
+		reg-names = "l2sram", "l1dram";
+		ti,sci = <&sms>;
+		ti,sci-dev-id = <33>;
+		ti,sci-proc-ids = <0x31 0xff>;
+		resets = <&k3_reset 33 1>;
+		firmware-name = "j784s4-c71_1-fw";
+		status = "disabled";
+	};
+
+	c71_2: dsp@66800000 {
+		compatible = "ti,j721s2-c71-dsp";
+		reg = <0x00 0x66800000 0x00 0x00080000>,
+		      <0x00 0x66e00000 0x00 0x0000c000>;
+		reg-names = "l2sram", "l1dram";
+		ti,sci = <&sms>;
+		ti,sci-dev-id = <37>;
+		ti,sci-proc-ids = <0x32 0xff>;
+		resets = <&k3_reset 37 1>;
+		firmware-name = "j784s4-c71_2-fw";
+		status = "disabled";
+	};
+
+	main_esm: esm@700000 {
+		compatible = "ti,j721e-esm";
+		reg = <0x00 0x700000 0x00 0x1000>;
+		ti,esm-pins = <688>, <689>, <690>, <691>, <692>, <693>, <694>,
+			      <695>;
+		bootph-pre-ram;
+	};
+
+	watchdog0: watchdog@2200000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2200000 0x00 0x100>;
+		clocks = <&k3_clks 348 1>;
+		power-domains = <&k3_pds 348 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 348 0>;
+		assigned-clock-parents = <&k3_clks 348 4>;
+	};
+
+	watchdog1: watchdog@2210000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2210000 0x00 0x100>;
+		clocks = <&k3_clks 349 1>;
+		power-domains = <&k3_pds 349 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 349 0>;
+		assigned-clock-parents = <&k3_clks 349 4>;
+	};
+
+	watchdog2: watchdog@2220000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2220000 0x00 0x100>;
+		clocks = <&k3_clks 350 1>;
+		power-domains = <&k3_pds 350 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 350 0>;
+		assigned-clock-parents = <&k3_clks 350 4>;
+	};
+
+	watchdog3: watchdog@2230000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2230000 0x00 0x100>;
+		clocks = <&k3_clks 351 1>;
+		power-domains = <&k3_pds 351 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 351 0>;
+		assigned-clock-parents = <&k3_clks 351 4>;
+	};
+
+	watchdog4: watchdog@2240000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2240000 0x00 0x100>;
+		clocks = <&k3_clks 352 1>;
+		power-domains = <&k3_pds 352 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 352 0>;
+		assigned-clock-parents = <&k3_clks 352 4>;
+	};
+
+	watchdog5: watchdog@2250000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2250000 0x00 0x100>;
+		clocks = <&k3_clks 353 1>;
+		power-domains = <&k3_pds 353 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 353 0>;
+		assigned-clock-parents = <&k3_clks 353 4>;
+	};
+
+	watchdog6: watchdog@2260000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2260000 0x00 0x100>;
+		clocks = <&k3_clks 354 1>;
+		power-domains = <&k3_pds 354 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 354 0>;
+		assigned-clock-parents = <&k3_clks 354 4>;
+	};
+
+	watchdog7: watchdog@2270000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2270000 0x00 0x100>;
+		clocks = <&k3_clks 355 1>;
+		power-domains = <&k3_pds 355 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 355 0>;
+		assigned-clock-parents = <&k3_clks 355 4>;
+	};
+
+	/*
+	 * The following RTI instances are coupled with MCU R5Fs, c7x and
+	 * GPU so keeping them reserved as these will be used by their
+	 * respective firmware
+	 */
+	watchdog8: watchdog@22f0000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x22f0000 0x00 0x100>;
+		clocks = <&k3_clks 360 1>;
+		power-domains = <&k3_pds 360 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 360 0>;
+		assigned-clock-parents = <&k3_clks 360 4>;
+		/* reserved for GPU */
+		status = "reserved";
+	};
+
+	watchdog9: watchdog@2300000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2300000 0x00 0x100>;
+		clocks = <&k3_clks 356 1>;
+		power-domains = <&k3_pds 356 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 356 0>;
+		assigned-clock-parents = <&k3_clks 356 4>;
+		/* reserved for C7X_0 DSP */
+		status = "reserved";
+	};
+
+	watchdog10: watchdog@2310000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2310000 0x00 0x100>;
+		clocks = <&k3_clks 357 1>;
+		power-domains = <&k3_pds 357 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 357 0>;
+		assigned-clock-parents = <&k3_clks 357 4>;
+		/* reserved for C7X_1 DSP */
+		status = "reserved";
+	};
+
+	watchdog11: watchdog@2320000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2320000 0x00 0x100>;
+		clocks = <&k3_clks 358 1>;
+		power-domains = <&k3_pds 358 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 358 0>;
+		assigned-clock-parents = <&k3_clks 358 4>;
+		/* reserved for C7X_2 DSP */
+		status = "reserved";
+	};
+
+	watchdog12: watchdog@2330000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2330000 0x00 0x100>;
+		clocks = <&k3_clks 359 1>;
+		power-domains = <&k3_pds 359 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 359 0>;
+		assigned-clock-parents = <&k3_clks 359 4>;
+		/* reserved for C7X_3 DSP */
+		status = "reserved";
+	};
+
+	watchdog13: watchdog@23c0000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x23c0000 0x00 0x100>;
+		clocks = <&k3_clks 361 1>;
+		power-domains = <&k3_pds 361 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 361 0>;
+		assigned-clock-parents = <&k3_clks 361 4>;
+		/* reserved for MAIN_R5F0_0 */
+		status = "reserved";
+	};
+
+	watchdog14: watchdog@23d0000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x23d0000 0x00 0x100>;
+		clocks = <&k3_clks 362 1>;
+		power-domains = <&k3_pds 362 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 362 0>;
+		assigned-clock-parents = <&k3_clks 362 4>;
+		/* reserved for MAIN_R5F0_1 */
+		status = "reserved";
+	};
+
+	watchdog15: watchdog@23e0000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x23e0000 0x00 0x100>;
+		clocks = <&k3_clks 363 1>;
+		power-domains = <&k3_pds 363 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 363 0>;
+		assigned-clock-parents = <&k3_clks 363 4>;
+		/* reserved for MAIN_R5F1_0 */
+		status = "reserved";
+	};
+
+	watchdog16: watchdog@23f0000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x23f0000 0x00 0x100>;
+		clocks = <&k3_clks 364 1>;
+		power-domains = <&k3_pds 364 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 364 0>;
+		assigned-clock-parents = <&k3_clks 364 4>;
+		/* reserved for MAIN_R5F1_1 */
+		status = "reserved";
+	};
+
+	watchdog17: watchdog@2540000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2540000 0x00 0x100>;
+		clocks = <&k3_clks 365 1>;
+		power-domains = <&k3_pds 365 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 365 0>;
+		assigned-clock-parents = <&k3_clks 366 4>;
+		/* reserved for MAIN_R5F2_0 */
+		status = "reserved";
+	};
+
+	watchdog18: watchdog@2550000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2550000 0x00 0x100>;
+		clocks = <&k3_clks 366 1>;
+		power-domains = <&k3_pds 366 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 366 0>;
+		assigned-clock-parents = <&k3_clks 366 4>;
+		/* reserved for MAIN_R5F2_1 */
+		status = "reserved";
+	};
+
+	mhdp: bridge@a000000 {
+		compatible = "ti,j721e-mhdp8546";
+		reg = <0x0 0xa000000 0x0 0x30a00>,
+		      <0x0 0x4f40000 0x0 0x20>;
+		reg-names = "mhdptx", "j721e-intg";
+		clocks = <&k3_clks 217 11>;
+		interrupt-parent = <&gic500>;
+		interrupts = <GIC_SPI 614 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&k3_pds 217 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+
+		dp0_ports: ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			/* Remote-endpoints are on the boards so
+			 * ports are defined in the platform dt file.
+			 */
+		};
+	};
+
+	dss: dss@4a00000 {
+		compatible = "ti,j721e-dss";
+		reg = <0x00 0x04a00000 0x00 0x10000>, /* common_m */
+		      <0x00 0x04a10000 0x00 0x10000>, /* common_s0*/
+		      <0x00 0x04b00000 0x00 0x10000>, /* common_s1*/
+		      <0x00 0x04b10000 0x00 0x10000>, /* common_s2*/
+		      <0x00 0x04a20000 0x00 0x10000>, /* vidl1 */
+		      <0x00 0x04a30000 0x00 0x10000>, /* vidl2 */
+		      <0x00 0x04a50000 0x00 0x10000>, /* vid1 */
+		      <0x00 0x04a60000 0x00 0x10000>, /* vid2 */
+		      <0x00 0x04a70000 0x00 0x10000>, /* ovr1 */
+		      <0x00 0x04a90000 0x00 0x10000>, /* ovr2 */
+		      <0x00 0x04ab0000 0x00 0x10000>, /* ovr3 */
+		      <0x00 0x04ad0000 0x00 0x10000>, /* ovr4 */
+		      <0x00 0x04a80000 0x00 0x10000>, /* vp1 */
+		      <0x00 0x04aa0000 0x00 0x10000>, /* vp1 */
+		      <0x00 0x04ac0000 0x00 0x10000>, /* vp1 */
+		      <0x00 0x04ae0000 0x00 0x10000>, /* vp4 */
+		      <0x00 0x04af0000 0x00 0x10000>; /* wb */
+		reg-names = "common_m", "common_s0",
+			    "common_s1", "common_s2",
+			    "vidl1", "vidl2","vid1","vid2",
+			    "ovr1", "ovr2", "ovr3", "ovr4",
+			    "vp1", "vp2", "vp3", "vp4",
+			    "wb";
+		clocks = <&k3_clks 218 0>,
+			 <&k3_clks 218 2>,
+			 <&k3_clks 218 5>,
+			 <&k3_clks 218 14>,
+			 <&k3_clks 218 18>;
+		clock-names = "fck", "vp1", "vp2", "vp3", "vp4";
+		power-domains = <&k3_pds 218 TI_SCI_PD_EXCLUSIVE>;
+		interrupts = <GIC_SPI 602 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 605 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "common_m",
+				  "common_s0",
+				  "common_s1",
+				  "common_s2";
+		status = "disabled";
+
+		dss_ports: ports {
+			/* Ports that DSS drives are platform specific
+			 * so they are defined in platform dt file.
+			 */
+		};
+	};
+
+	mcasp0: mcasp@2b00000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x00 0x02b00000 0x00 0x2000>,
+		      <0x00 0x02b08000 0x00 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 544 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 545 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+		dmas = <&main_udmap 0xc400>, <&main_udmap 0x4400>;
+		dma-names = "tx", "rx";
+		clocks = <&k3_clks 265 0>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 265 0>;
+		assigned-clock-parents = <&k3_clks 265 1>;
+		power-domains = <&k3_pds 265 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	mcasp1: mcasp@2b10000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x00 0x02b10000 0x00 0x2000>,
+		      <0x00 0x02b18000 0x00 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 546 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 547 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+		dmas = <&main_udmap 0xc401>, <&main_udmap 0x4401>;
+		dma-names = "tx", "rx";
+		clocks = <&k3_clks 266 0>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 266 0>;
+		assigned-clock-parents = <&k3_clks 266 1>;
+		power-domains = <&k3_pds 266 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	mcasp2: mcasp@2b20000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x00 0x02b20000 0x00 0x2000>,
+		      <0x00 0x02b28000 0x00 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 548 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 549 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+		dmas = <&main_udmap 0xc402>, <&main_udmap 0x4402>;
+		dma-names = "tx", "rx";
+		clocks = <&k3_clks 267 0>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 267 0>;
+		assigned-clock-parents = <&k3_clks 267 1>;
+		power-domains = <&k3_pds 267 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	mcasp3: mcasp@2b30000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x00 0x02b30000 0x00 0x2000>,
+		      <0x00 0x02b38000 0x00 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 550 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 551 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+		dmas = <&main_udmap 0xc403>, <&main_udmap 0x4403>;
+		dma-names = "tx", "rx";
+		clocks = <&k3_clks 268 0>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 268 0>;
+		assigned-clock-parents = <&k3_clks 268 1>;
+		power-domains = <&k3_pds 268 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+
+	mcasp4: mcasp@2b40000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x00 0x02b40000 0x00 0x2000>,
+		      <0x00 0x02b48000 0x00 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 552 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 553 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+		dmas = <&main_udmap 0xc404>, <&main_udmap 0x4404>;
+		dma-names = "tx", "rx";
+		clocks = <&k3_clks 269 0>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 269 0>;
+		assigned-clock-parents = <&k3_clks 269 1>;
+		power-domains = <&k3_pds 269 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+	};
+};
diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi
similarity index 99%
rename from arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
rename to arch/arm64/boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi
index f3a6ed1c979d..346623fa2ee9 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only OR MIT
 /*
- * Device Tree Source for J784S4 SoC Family MCU/WAKEUP Domain peripherals
+ * Device Tree Source for J784S4 and J742S2 SoC Family MCU/WAKEUP Domain peripherals
  *
  * Copyright (C) 2022-2024 Texas Instruments Incorporated - https://www.ti.com/
  */
diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-thermal.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-thermal-common.dtsi
similarity index 100%
rename from arch/arm64/boot/dts/ti/k3-j784s4-thermal.dtsi
rename to arch/arm64/boot/dts/ti/k3-j784s4-j742s2-thermal-common.dtsi
diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
index d4ac1c9872a5..0160fe0da983 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
@@ -5,2781 +5,124 @@
  * Copyright (C) 2022-2024 Texas Instruments Incorporated - https://www.ti.com/
  */
 
-#include <dt-bindings/mux/mux.h>
-#include <dt-bindings/phy/phy.h>
-#include <dt-bindings/phy/phy-ti.h>
-
-#include "k3-serdes.h"
-
-/ {
-	serdes_refclk: clock-serdes {
-		#clock-cells = <0>;
-		compatible = "fixed-clock";
-		/* To be enabled when serdes_wiz* is functional */
-		status = "disabled";
-	};
-};
-
-&cbass_main {
-	msmc_ram: sram@70000000 {
-		compatible = "mmio-sram";
-		reg = <0x00 0x70000000 0x00 0x800000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0x00 0x00 0x70000000 0x800000>;
-
-		atf-sram@0 {
-			reg = <0x00 0x20000>;
-		};
-
-		tifs-sram@1f0000 {
-			reg = <0x1f0000 0x10000>;
-		};
-
-		l3cache-sram@200000 {
-			reg = <0x200000 0x200000>;
-		};
-	};
-
-	scm_conf: bus@100000 {
-		compatible = "simple-bus";
-		reg = <0x00 0x00100000 0x00 0x1c000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0x00 0x00 0x00100000 0x1c000>;
-
-		cpsw1_phy_gmii_sel: phy@4034 {
-			compatible = "ti,am654-phy-gmii-sel";
-			reg = <0x4034 0x4>;
-			#phy-cells = <1>;
-		};
-
-		cpsw0_phy_gmii_sel: phy@4044 {
-			compatible = "ti,j784s4-cpsw9g-phy-gmii-sel";
-			reg = <0x4044 0x20>;
-			#phy-cells = <1>;
-			ti,qsgmii-main-ports = <7>, <7>;
-		};
-
-		pcie0_ctrl: pcie0-ctrl@4070 {
-			compatible = "ti,j784s4-pcie-ctrl", "syscon";
-			reg = <0x4070 0x4>;
-		};
-
-		pcie1_ctrl: pcie1-ctrl@4074 {
-			compatible = "ti,j784s4-pcie-ctrl", "syscon";
-			reg = <0x4074 0x4>;
-		};
-
-		pcie2_ctrl: pcie2-ctrl@4078 {
-			compatible = "ti,j784s4-pcie-ctrl", "syscon";
-			reg = <0x4078 0x4>;
-		};
-
-		pcie3_ctrl: pcie3-ctrl@407c {
-			compatible = "ti,j784s4-pcie-ctrl", "syscon";
-			reg = <0x407c 0x4>;
-		};
-
-		serdes_ln_ctrl: mux-controller@4080 {
-			compatible = "reg-mux";
-			reg = <0x00004080 0x30>;
-			#mux-control-cells = <1>;
-			mux-reg-masks = <0x0 0x3>, <0x4 0x3>, /* SERDES0 lane0/1 select */
-					<0x8 0x3>, <0xc 0x3>, /* SERDES0 lane2/3 select */
-					<0x10 0x3>, <0x14 0x3>, /* SERDES1 lane0/1 select */
-					<0x18 0x3>, <0x1c 0x3>, /* SERDES1 lane2/3 select */
-					<0x20 0x3>, <0x24 0x3>, /* SERDES2 lane0/1 select */
-					<0x28 0x3>, <0x2c 0x3>; /* SERDES2 lane2/3 select */
-			idle-states = <J784S4_SERDES0_LANE0_PCIE1_LANE0>,
-				      <J784S4_SERDES0_LANE1_PCIE1_LANE1>,
-				      <J784S4_SERDES0_LANE2_IP3_UNUSED>,
-				      <J784S4_SERDES0_LANE3_USB>,
-				      <J784S4_SERDES1_LANE0_PCIE0_LANE0>,
-				      <J784S4_SERDES1_LANE1_PCIE0_LANE1>,
-				      <J784S4_SERDES1_LANE2_PCIE0_LANE2>,
-				      <J784S4_SERDES1_LANE3_PCIE0_LANE3>,
-				      <J784S4_SERDES2_LANE0_IP2_UNUSED>,
-				      <J784S4_SERDES2_LANE1_IP2_UNUSED>,
-				      <J784S4_SERDES2_LANE2_QSGMII_LANE1>,
-				      <J784S4_SERDES2_LANE3_QSGMII_LANE2>,
-				      <J784S4_SERDES4_LANE0_EDP_LANE0>,
-				      <J784S4_SERDES4_LANE1_EDP_LANE1>,
-				      <J784S4_SERDES4_LANE2_EDP_LANE2>,
-				      <J784S4_SERDES4_LANE3_EDP_LANE3>;
-		};
-
-		usb_serdes_mux: mux-controller@4000 {
-			compatible = "reg-mux";
-			reg = <0x4000 0x4>;
-			#mux-control-cells = <1>;
-			mux-reg-masks = <0x0 0x8000000>; /* USB0 to SERDES0 lane 3 mux */
-		};
-
-		ehrpwm_tbclk: clock-controller@4140 {
-			compatible = "ti,am654-ehrpwm-tbclk";
-			reg = <0x4140 0x18>;
-			#clock-cells = <1>;
-		};
-
-		audio_refclk1: clock@82e4 {
-			compatible = "ti,am62-audio-refclk";
-			reg = <0x82e4 0x4>;
-			clocks = <&k3_clks 157 34>;
-			assigned-clocks = <&k3_clks 157 34>;
-			assigned-clock-parents = <&k3_clks 157 63>;
-			#clock-cells = <0>;
-		};
-	};
-
-	main_ehrpwm0: pwm@3000000 {
-		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
-		reg = <0x00 0x3000000 0x00 0x100>;
-		clocks = <&ehrpwm_tbclk 0>, <&k3_clks 219 0>;
-		clock-names = "tbclk", "fck";
-		power-domains = <&k3_pds 219 TI_SCI_PD_EXCLUSIVE>;
-		#pwm-cells = <3>;
-		status = "disabled";
-	};
-
-	main_ehrpwm1: pwm@3010000 {
-		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
-		reg = <0x00 0x3010000 0x00 0x100>;
-		clocks = <&ehrpwm_tbclk 1>, <&k3_clks 220 0>;
-		clock-names = "tbclk", "fck";
-		power-domains = <&k3_pds 220 TI_SCI_PD_EXCLUSIVE>;
-		#pwm-cells = <3>;
-		status = "disabled";
-	};
-
-	main_ehrpwm2: pwm@3020000 {
-		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
-		reg = <0x00 0x3020000 0x00 0x100>;
-		clocks = <&ehrpwm_tbclk 2>, <&k3_clks 221 0>;
-		clock-names = "tbclk", "fck";
-		power-domains = <&k3_pds 221 TI_SCI_PD_EXCLUSIVE>;
-		#pwm-cells = <3>;
-		status = "disabled";
-	};
-
-	main_ehrpwm3: pwm@3030000 {
-		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
-		reg = <0x00 0x3030000 0x00 0x100>;
-		clocks = <&ehrpwm_tbclk 3>, <&k3_clks 222 0>;
-		clock-names = "tbclk", "fck";
-		power-domains = <&k3_pds 222 TI_SCI_PD_EXCLUSIVE>;
-		#pwm-cells = <3>;
-		status = "disabled";
-	};
-
-	main_ehrpwm4: pwm@3040000 {
-		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
-		reg = <0x00 0x3040000 0x00 0x100>;
-		clocks = <&ehrpwm_tbclk 4>, <&k3_clks 223 0>;
-		clock-names = "tbclk", "fck";
-		power-domains = <&k3_pds 223 TI_SCI_PD_EXCLUSIVE>;
-		#pwm-cells = <3>;
-		status = "disabled";
-	};
-
-	main_ehrpwm5: pwm@3050000 {
-		compatible = "ti,am654-ehrpwm", "ti,am3352-ehrpwm";
-		reg = <0x00 0x3050000 0x00 0x100>;
-		clocks = <&ehrpwm_tbclk 5>, <&k3_clks 224 0>;
-		clock-names = "tbclk", "fck";
-		power-domains = <&k3_pds 224 TI_SCI_PD_EXCLUSIVE>;
-		#pwm-cells = <3>;
-		status = "disabled";
-	};
-
-	gic500: interrupt-controller@1800000 {
-		compatible = "arm,gic-v3";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
-		#interrupt-cells = <3>;
-		interrupt-controller;
-		reg = <0x00 0x01800000 0x00 0x200000>, /* GICD */
-		      <0x00 0x01900000 0x00 0x100000>, /* GICR */
-		      <0x00 0x6f000000 0x00 0x2000>,   /* GICC */
-		      <0x00 0x6f010000 0x00 0x1000>,   /* GICH */
-		      <0x00 0x6f020000 0x00 0x2000>;   /* GICV */
-
-		/* vcpumntirq: virtual CPU interface maintenance interrupt */
-		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
-
-		gic_its: msi-controller@1820000 {
-			compatible = "arm,gic-v3-its";
-			reg = <0x00 0x01820000 0x00 0x10000>;
-			socionext,synquacer-pre-its = <0x1000000 0x400000>;
-			msi-controller;
-			#msi-cells = <1>;
-		};
-	};
-
-	main_gpio_intr: interrupt-controller@a00000 {
-		compatible = "ti,sci-intr";
-		reg = <0x00 0x00a00000 0x00 0x800>;
-		ti,intr-trigger-type = <1>;
-		interrupt-controller;
-		interrupt-parent = <&gic500>;
-		#interrupt-cells = <1>;
-		ti,sci = <&sms>;
-		ti,sci-dev-id = <10>;
-		ti,interrupt-ranges = <8 392 56>;
-	};
-
-	main_pmx0: pinctrl@11c000 {
-		compatible = "pinctrl-single";
-		/* Proxy 0 addressing */
-		reg = <0x00 0x11c000 0x00 0x120>;
-		#pinctrl-cells = <1>;
-		pinctrl-single,register-width = <32>;
-		pinctrl-single,function-mask = <0xffffffff>;
-	};
-
-	/* TIMERIO pad input CTRLMMR_TIMER*_CTRL registers */
-	main_timerio_input: pinctrl@104200 {
-		compatible = "pinctrl-single";
-		reg = <0x00 0x104200 0x00 0x50>;
-		#pinctrl-cells = <1>;
-		pinctrl-single,register-width = <32>;
-		pinctrl-single,function-mask = <0x00000007>;
-	};
-
-	/* TIMERIO pad output CTCTRLMMR_TIMERIO*_CTRL registers */
-	main_timerio_output: pinctrl@104280 {
-		compatible = "pinctrl-single";
-		reg = <0x00 0x104280 0x00 0x20>;
-		#pinctrl-cells = <1>;
-		pinctrl-single,register-width = <32>;
-		pinctrl-single,function-mask = <0x0000001f>;
-	};
-
-	main_crypto: crypto@4e00000 {
-		compatible = "ti,j721e-sa2ul";
-		reg = <0x00 0x4e00000 0x00 0x1200>;
-		power-domains = <&k3_pds 369 TI_SCI_PD_EXCLUSIVE>;
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges = <0x00 0x04e00000 0x00 0x04e00000 0x00 0x30000>;
-
-		dmas = <&main_udmap 0xca40>, <&main_udmap 0x4a40>,
-				<&main_udmap 0x4a41>;
-		dma-names = "tx", "rx1", "rx2";
-
-		rng: rng@4e10000 {
-			compatible = "inside-secure,safexcel-eip76";
-			reg = <0x00 0x4e10000 0x00 0x7d>;
-			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
-		};
-	};
-
-	main_timer0: timer@2400000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x2400000 0x00 0x400>;
-		interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 97 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 97 2>;
-		assigned-clock-parents = <&k3_clks 97 3>;
-		power-domains = <&k3_pds 97 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer1: timer@2410000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x2410000 0x00 0x400>;
-		interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 98 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 98 2>;
-		assigned-clock-parents = <&k3_clks 98 3>;
-		power-domains = <&k3_pds 98 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer2: timer@2420000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x2420000 0x00 0x400>;
-		interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 99 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 99 2>;
-		assigned-clock-parents = <&k3_clks 99 3>;
-		power-domains = <&k3_pds 99 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer3: timer@2430000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x2430000 0x00 0x400>;
-		interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 100 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 100 2>;
-		assigned-clock-parents = <&k3_clks 100 3>;
-		power-domains = <&k3_pds 100 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer4: timer@2440000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x2440000 0x00 0x400>;
-		interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 101 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 101 2>;
-		assigned-clock-parents = <&k3_clks 101 3>;
-		power-domains = <&k3_pds 101 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer5: timer@2450000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x2450000 0x00 0x400>;
-		interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 102 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 102 2>;
-		assigned-clock-parents = <&k3_clks 102 3>;
-		power-domains = <&k3_pds 102 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer6: timer@2460000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x2460000 0x00 0x400>;
-		interrupts = <GIC_SPI 230 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 103 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 103 2>;
-		assigned-clock-parents = <&k3_clks 103 3>;
-		power-domains = <&k3_pds 103 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer7: timer@2470000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x2470000 0x00 0x400>;
-		interrupts = <GIC_SPI 231 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 104 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 104 2>;
-		assigned-clock-parents = <&k3_clks 104 3>;
-		power-domains = <&k3_pds 104 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer8: timer@2480000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x2480000 0x00 0x400>;
-		interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 105 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 105 2>;
-		assigned-clock-parents = <&k3_clks 105 3>;
-		power-domains = <&k3_pds 105 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer9: timer@2490000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x2490000 0x00 0x400>;
-		interrupts = <GIC_SPI 233 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 106 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 106 2>;
-		assigned-clock-parents = <&k3_clks 106 3>;
-		power-domains = <&k3_pds 106 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer10: timer@24a0000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x24a0000 0x00 0x400>;
-		interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 107 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 107 2>;
-		assigned-clock-parents = <&k3_clks 107 3>;
-		power-domains = <&k3_pds 107 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer11: timer@24b0000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x24b0000 0x00 0x400>;
-		interrupts = <GIC_SPI 235 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 108 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 108 2>;
-		assigned-clock-parents = <&k3_clks 108 3>;
-		power-domains = <&k3_pds 108 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer12: timer@24c0000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x24c0000 0x00 0x400>;
-		interrupts = <GIC_SPI 236 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 109 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 109 2>;
-		assigned-clock-parents = <&k3_clks 109 3>;
-		power-domains = <&k3_pds 109 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer13: timer@24d0000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x24d0000 0x00 0x400>;
-		interrupts = <GIC_SPI 237 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 110 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 110 2>;
-		assigned-clock-parents = <&k3_clks 110 3>;
-		power-domains = <&k3_pds 110 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer14: timer@24e0000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x24e0000 0x00 0x400>;
-		interrupts = <GIC_SPI 238 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 111 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 111 2>;
-		assigned-clock-parents = <&k3_clks 111 3>;
-		power-domains = <&k3_pds 111 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer15: timer@24f0000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x24f0000 0x00 0x400>;
-		interrupts = <GIC_SPI 239 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 112 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 112 2>;
-		assigned-clock-parents = <&k3_clks 112 3>;
-		power-domains = <&k3_pds 112 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer16: timer@2500000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x2500000 0x00 0x400>;
-		interrupts = <GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 113 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 113 2>;
-		assigned-clock-parents = <&k3_clks 113 3>;
-		power-domains = <&k3_pds 113 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer17: timer@2510000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x2510000 0x00 0x400>;
-		interrupts = <GIC_SPI 241 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 114 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 114 2>;
-		assigned-clock-parents = <&k3_clks 114 3>;
-		power-domains = <&k3_pds 114 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer18: timer@2520000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x2520000 0x00 0x400>;
-		interrupts = <GIC_SPI 242 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 115 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 115 2>;
-		assigned-clock-parents = <&k3_clks 115 3>;
-		power-domains = <&k3_pds 115 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_timer19: timer@2530000 {
-		compatible = "ti,am654-timer";
-		reg = <0x00 0x2530000 0x00 0x400>;
-		interrupts = <GIC_SPI 243 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 116 2>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 116 2>;
-		assigned-clock-parents = <&k3_clks 116 3>;
-		power-domains = <&k3_pds 116 TI_SCI_PD_EXCLUSIVE>;
-		ti,timer-pwm;
-	};
-
-	main_uart0: serial@2800000 {
-		compatible = "ti,j721e-uart", "ti,am654-uart";
-		reg = <0x00 0x02800000 0x00 0x200>;
-		interrupts = <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 146 0>;
-		clock-names = "fclk";
-		power-domains = <&k3_pds 146 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	main_uart1: serial@2810000 {
-		compatible = "ti,j721e-uart", "ti,am654-uart";
-		reg = <0x00 0x02810000 0x00 0x200>;
-		interrupts = <GIC_SPI 193 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 388 0>;
-		clock-names = "fclk";
-		power-domains = <&k3_pds 388 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	main_uart2: serial@2820000 {
-		compatible = "ti,j721e-uart", "ti,am654-uart";
-		reg = <0x00 0x02820000 0x00 0x200>;
-		interrupts = <GIC_SPI 194 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 389 0>;
-		clock-names = "fclk";
-		power-domains = <&k3_pds 389 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	main_uart3: serial@2830000 {
-		compatible = "ti,j721e-uart", "ti,am654-uart";
-		reg = <0x00 0x02830000 0x00 0x200>;
-		interrupts = <GIC_SPI 195 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 390 0>;
-		clock-names = "fclk";
-		power-domains = <&k3_pds 390 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	main_uart4: serial@2840000 {
-		compatible = "ti,j721e-uart", "ti,am654-uart";
-		reg = <0x00 0x02840000 0x00 0x200>;
-		interrupts = <GIC_SPI 196 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 391 0>;
-		clock-names = "fclk";
-		power-domains = <&k3_pds 391 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	main_uart5: serial@2850000 {
-		compatible = "ti,j721e-uart", "ti,am654-uart";
-		reg = <0x00 0x02850000 0x00 0x200>;
-		interrupts = <GIC_SPI 197 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 392 0>;
-		clock-names = "fclk";
-		power-domains = <&k3_pds 392 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	main_uart6: serial@2860000 {
-		compatible = "ti,j721e-uart", "ti,am654-uart";
-		reg = <0x00 0x02860000 0x00 0x200>;
-		interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 393 0>;
-		clock-names = "fclk";
-		power-domains = <&k3_pds 393 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	main_uart7: serial@2870000 {
-		compatible = "ti,j721e-uart", "ti,am654-uart";
-		reg = <0x00 0x02870000 0x00 0x200>;
-		interrupts = <GIC_SPI 199 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 394 0>;
-		clock-names = "fclk";
-		power-domains = <&k3_pds 394 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	main_uart8: serial@2880000 {
-		compatible = "ti,j721e-uart", "ti,am654-uart";
-		reg = <0x00 0x02880000 0x00 0x200>;
-		interrupts = <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 395 0>;
-		clock-names = "fclk";
-		power-domains = <&k3_pds 395 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	main_uart9: serial@2890000 {
-		compatible = "ti,j721e-uart", "ti,am654-uart";
-		reg = <0x00 0x02890000 0x00 0x200>;
-		interrupts = <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 396 0>;
-		clock-names = "fclk";
-		power-domains = <&k3_pds 396 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	main_gpio0: gpio@600000 {
-		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
-		reg = <0x00 0x00600000 0x00 0x100>;
-		gpio-controller;
-		#gpio-cells = <2>;
-		interrupt-parent = <&main_gpio_intr>;
-		interrupts = <145>, <146>, <147>, <148>, <149>;
-		interrupt-controller;
-		#interrupt-cells = <2>;
-		ti,ngpio = <66>;
-		ti,davinci-gpio-unbanked = <0>;
-		power-domains = <&k3_pds 163 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 163 0>;
-		clock-names = "gpio";
-		status = "disabled";
-	};
-
-	main_gpio2: gpio@610000 {
-		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
-		reg = <0x00 0x00610000 0x00 0x100>;
-		gpio-controller;
-		#gpio-cells = <2>;
-		interrupt-parent = <&main_gpio_intr>;
-		interrupts = <154>, <155>, <156>, <157>, <158>;
-		interrupt-controller;
-		#interrupt-cells = <2>;
-		ti,ngpio = <66>;
-		ti,davinci-gpio-unbanked = <0>;
-		power-domains = <&k3_pds 164 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 164 0>;
-		clock-names = "gpio";
-		status = "disabled";
-	};
-
-	main_gpio4: gpio@620000 {
-		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
-		reg = <0x00 0x00620000 0x00 0x100>;
-		gpio-controller;
-		#gpio-cells = <2>;
-		interrupt-parent = <&main_gpio_intr>;
-		interrupts = <163>, <164>, <165>, <166>, <167>;
-		interrupt-controller;
-		#interrupt-cells = <2>;
-		ti,ngpio = <66>;
-		ti,davinci-gpio-unbanked = <0>;
-		power-domains = <&k3_pds 165 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 165 0>;
-		clock-names = "gpio";
-		status = "disabled";
-	};
-
-	main_gpio6: gpio@630000 {
-		compatible = "ti,j721e-gpio", "ti,keystone-gpio";
-		reg = <0x00 0x00630000 0x00 0x100>;
-		gpio-controller;
-		#gpio-cells = <2>;
-		interrupt-parent = <&main_gpio_intr>;
-		interrupts = <172>, <173>, <174>, <175>, <176>;
-		interrupt-controller;
-		#interrupt-cells = <2>;
-		ti,ngpio = <66>;
-		ti,davinci-gpio-unbanked = <0>;
-		power-domains = <&k3_pds 166 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 166 0>;
-		clock-names = "gpio";
-		status = "disabled";
-	};
-
-	usbss0: usb@4104000 {
-		bootph-all;
-		compatible = "ti,j721e-usb";
-		reg = <0x00 0x4104000 0x00 0x100>;
-		dma-coherent;
-		power-domains = <&k3_pds 398 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 398 21>, <&k3_clks 398 2>;
-		clock-names = "ref", "lpm";
-		assigned-clocks = <&k3_clks 398 21>;    /* USB2_REFCLK */
-		assigned-clock-parents = <&k3_clks 398 22>; /* HFOSC0 */
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
-
-		status = "disabled"; /* Needs lane config */
-
-		usb0: usb@6000000 {
-			bootph-all;
-			compatible = "cdns,usb3";
-			reg = <0x00 0x6000000 0x00 0x10000>,
-			      <0x00 0x6010000 0x00 0x10000>,
-			      <0x00 0x6020000 0x00 0x10000>;
-			reg-names = "otg", "xhci", "dev";
-			interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>,  /* irq.0 */
-				     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>, /* irq.6 */
-				     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>; /* otgirq.0 */
-			interrupt-names = "host",
-					  "peripheral",
-					  "otg";
-		};
-	};
-
-	main_i2c0: i2c@2000000 {
-		compatible = "ti,j721e-i2c", "ti,omap4-i2c";
-		reg = <0x00 0x02000000 0x00 0x100>;
-		interrupts = <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		clocks = <&k3_clks 270 2>;
-		clock-names = "fck";
-		power-domains = <&k3_pds 270 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	main_i2c1: i2c@2010000 {
-		compatible = "ti,j721e-i2c", "ti,omap4-i2c";
-		reg = <0x00 0x02010000 0x00 0x100>;
-		interrupts = <GIC_SPI 201 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		clocks = <&k3_clks 271 2>;
-		clock-names = "fck";
-		power-domains = <&k3_pds 271 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	main_i2c2: i2c@2020000 {
-		compatible = "ti,j721e-i2c", "ti,omap4-i2c";
-		reg = <0x00 0x02020000 0x00 0x100>;
-		interrupts = <GIC_SPI 202 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		clocks = <&k3_clks 272 2>;
-		clock-names = "fck";
-		power-domains = <&k3_pds 272 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	main_i2c3: i2c@2030000 {
-		compatible = "ti,j721e-i2c", "ti,omap4-i2c";
-		reg = <0x00 0x02030000 0x00 0x100>;
-		interrupts = <GIC_SPI 203 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		clocks = <&k3_clks 273 2>;
-		clock-names = "fck";
-		power-domains = <&k3_pds 273 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	main_i2c4: i2c@2040000 {
-		compatible = "ti,j721e-i2c", "ti,omap4-i2c";
-		reg = <0x00 0x02040000 0x00 0x100>;
-		interrupts = <GIC_SPI 204 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		clocks = <&k3_clks 274 2>;
-		clock-names = "fck";
-		power-domains = <&k3_pds 274 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	main_i2c5: i2c@2050000 {
-		compatible = "ti,j721e-i2c", "ti,omap4-i2c";
-		reg = <0x00 0x02050000 0x00 0x100>;
-		interrupts = <GIC_SPI 205 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		clocks = <&k3_clks 275 2>;
-		clock-names = "fck";
-		power-domains = <&k3_pds 275 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	main_i2c6: i2c@2060000 {
-		compatible = "ti,j721e-i2c", "ti,omap4-i2c";
-		reg = <0x00 0x02060000 0x00 0x100>;
-		interrupts = <GIC_SPI 206 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		clocks = <&k3_clks 276 2>;
-		clock-names = "fck";
-		power-domains = <&k3_pds 276 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	ti_csi2rx0: ticsi2rx@4500000 {
-		compatible = "ti,j721e-csi2rx-shim";
-		reg = <0x00 0x04500000 0x00 0x00001000>;
-		ranges;
-		#address-cells = <2>;
-		#size-cells = <2>;
-		dmas = <&main_bcdma_csi 0 0x4940 0>;
-		dma-names = "rx0";
-		power-domains = <&k3_pds 72 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-
-		cdns_csi2rx0: csi-bridge@4504000 {
-			compatible = "ti,j721e-csi2rx", "cdns,csi2rx";
-			reg = <0x00 0x04504000 0x00 0x00001000>;
-			clocks = <&k3_clks 72 2>, <&k3_clks 72 0>, <&k3_clks 72 2>,
-				<&k3_clks 72 2>, <&k3_clks 72 3>, <&k3_clks 72 3>;
-			clock-names = "sys_clk", "p_clk", "pixel_if0_clk",
-				"pixel_if1_clk", "pixel_if2_clk", "pixel_if3_clk";
-			phys = <&dphy0>;
-			phy-names = "dphy";
-
-			ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				csi0_port0: port@0 {
-					reg = <0>;
-					status = "disabled";
-				};
-
-				csi0_port1: port@1 {
-					reg = <1>;
-					status = "disabled";
-				};
-
-				csi0_port2: port@2 {
-					reg = <2>;
-					status = "disabled";
-				};
-
-				csi0_port3: port@3 {
-					reg = <3>;
-					status = "disabled";
-				};
-
-				csi0_port4: port@4 {
-					reg = <4>;
-					status = "disabled";
-				};
-			};
-		};
-	};
-
-	ti_csi2rx1: ticsi2rx@4510000 {
-		compatible = "ti,j721e-csi2rx-shim";
-		reg = <0x00 0x04510000 0x00 0x1000>;
-		ranges;
-		#address-cells = <2>;
-		#size-cells = <2>;
-		dmas = <&main_bcdma_csi 0 0x4960 0>;
-		dma-names = "rx0";
-		power-domains = <&k3_pds 73 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-
-		cdns_csi2rx1: csi-bridge@4514000 {
-			compatible = "ti,j721e-csi2rx", "cdns,csi2rx";
-			reg = <0x00 0x04514000 0x00 0x00001000>;
-			clocks = <&k3_clks 73 2>, <&k3_clks 73 0>, <&k3_clks 73 2>,
-				<&k3_clks 73 2>, <&k3_clks 73 3>, <&k3_clks 73 3>;
-			clock-names = "sys_clk", "p_clk", "pixel_if0_clk",
-				"pixel_if1_clk", "pixel_if2_clk", "pixel_if3_clk";
-			phys = <&dphy1>;
-			phy-names = "dphy";
-			ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				csi1_port0: port@0 {
-					reg = <0>;
-					status = "disabled";
-				};
-
-				csi1_port1: port@1 {
-					reg = <1>;
-					status = "disabled";
-				};
-
-				csi1_port2: port@2 {
-					reg = <2>;
-					status = "disabled";
-				};
-
-				csi1_port3: port@3 {
-					reg = <3>;
-					status = "disabled";
-				};
-
-				csi1_port4: port@4 {
-					reg = <4>;
-					status = "disabled";
-				};
-			};
-		};
-	};
-
-	ti_csi2rx2: ticsi2rx@4520000 {
-		compatible = "ti,j721e-csi2rx-shim";
-		reg = <0x00 0x04520000 0x00 0x00001000>;
-		ranges;
-		#address-cells = <2>;
-		#size-cells = <2>;
-		dmas = <&main_bcdma_csi 0 0x4980 0>;
-		dma-names = "rx0";
-		power-domains = <&k3_pds 74 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-
-		cdns_csi2rx2: csi-bridge@4524000 {
-			compatible = "ti,j721e-csi2rx", "cdns,csi2rx";
-			reg = <0x00 0x04524000 0x00 0x00001000>;
-			clocks = <&k3_clks 74 2>, <&k3_clks 74 0>, <&k3_clks 74 2>,
-				<&k3_clks 74 2>, <&k3_clks 74 3>, <&k3_clks 74 3>;
-			clock-names = "sys_clk", "p_clk", "pixel_if0_clk",
-				"pixel_if1_clk", "pixel_if2_clk", "pixel_if3_clk";
-			phys = <&dphy2>;
-			phy-names = "dphy";
-
-			ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				csi2_port0: port@0 {
-					reg = <0>;
-					status = "disabled";
-				};
-
-				csi2_port1: port@1 {
-					reg = <1>;
-					status = "disabled";
-				};
-
-				csi2_port2: port@2 {
-					reg = <2>;
-					status = "disabled";
-				};
-
-				csi2_port3: port@3 {
-					reg = <3>;
-					status = "disabled";
-				};
-
-				csi2_port4: port@4 {
-					reg = <4>;
-					status = "disabled";
-				};
-			};
-		};
-	};
-
-	dphy0: phy@4580000 {
-		compatible = "cdns,dphy-rx";
-		reg = <0x00 0x04580000 0x00 0x00001100>;
-		#phy-cells = <0>;
-		power-domains = <&k3_pds 212 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	dphy1: phy@4590000 {
-		compatible = "cdns,dphy-rx";
-		reg = <0x00 0x04590000 0x00 0x00001100>;
-		#phy-cells = <0>;
-		power-domains = <&k3_pds 213 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	dphy2: phy@45a0000 {
-		compatible = "cdns,dphy-rx";
-		reg = <0x00 0x045a0000 0x00 0x00001100>;
-		#phy-cells = <0>;
-		power-domains = <&k3_pds 214 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-	};
-
-	vpu0: video-codec@4210000 {
-		compatible = "ti,j721s2-wave521c", "cnm,wave521c";
-		reg = <0x00 0x4210000 0x00 0x10000>;
-		interrupts = <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 241 2>;
-		power-domains = <&k3_pds 241 TI_SCI_PD_EXCLUSIVE>;
-	};
-
-	vpu1: video-codec@4220000 {
-		compatible = "ti,j721s2-wave521c", "cnm,wave521c";
-		reg = <0x00 0x4220000 0x00 0x10000>;
-		interrupts = <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&k3_clks 242 2>;
-		power-domains = <&k3_pds 242 TI_SCI_PD_EXCLUSIVE>;
-	};
-
-	main_sdhci0: mmc@4f80000 {
-		compatible = "ti,j721e-sdhci-8bit";
-		reg = <0x00 0x04f80000 0x00 0x1000>,
-		      <0x00 0x04f88000 0x00 0x400>;
-		interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
-		power-domains = <&k3_pds 140 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 140 1>, <&k3_clks 140 2>;
-		clock-names = "clk_ahb", "clk_xin";
-		assigned-clocks = <&k3_clks 140 2>;
-		assigned-clock-parents = <&k3_clks 140 3>;
-		bus-width = <8>;
-		ti,otap-del-sel-legacy = <0x0>;
-		ti,otap-del-sel-mmc-hs = <0x0>;
-		ti,otap-del-sel-ddr52 = <0x6>;
-		ti,otap-del-sel-hs200 = <0x8>;
-		ti,otap-del-sel-hs400 = <0x5>;
-		ti,itap-del-sel-legacy = <0x10>;
-		ti,itap-del-sel-mmc-hs = <0xa>;
-		ti,strobe-sel = <0x77>;
-		ti,clkbuf-sel = <0x7>;
-		ti,trm-icp = <0x8>;
-		mmc-ddr-1_8v;
-		mmc-hs200-1_8v;
-		mmc-hs400-1_8v;
-		dma-coherent;
-		status = "disabled";
-	};
-
-	main_sdhci1: mmc@4fb0000 {
-		compatible = "ti,j721e-sdhci-4bit";
-		reg = <0x00 0x04fb0000 0x00 0x1000>,
-		      <0x00 0x04fb8000 0x00 0x400>;
-		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
-		power-domains = <&k3_pds 141 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 141 3>, <&k3_clks 141 4>;
-		clock-names = "clk_ahb", "clk_xin";
-		assigned-clocks = <&k3_clks 141 4>;
-		assigned-clock-parents = <&k3_clks 141 5>;
-		bus-width = <4>;
-		ti,otap-del-sel-legacy = <0x0>;
-		ti,otap-del-sel-sd-hs = <0x0>;
-		ti,otap-del-sel-sdr12 = <0xf>;
-		ti,otap-del-sel-sdr25 = <0xf>;
-		ti,otap-del-sel-sdr50 = <0xc>;
-		ti,otap-del-sel-sdr104 = <0x5>;
-		ti,otap-del-sel-ddr50 = <0xc>;
-		ti,itap-del-sel-legacy = <0x0>;
-		ti,itap-del-sel-sd-hs = <0x0>;
-		ti,itap-del-sel-sdr12 = <0x0>;
-		ti,itap-del-sel-sdr25 = <0x0>;
-		ti,itap-del-sel-ddr50 = <0x2>;
-		ti,clkbuf-sel = <0x7>;
-		ti,trm-icp = <0x8>;
-		dma-coherent;
-		status = "disabled";
-	};
-
-	pcie0_rc: pcie@2900000 {
-		compatible = "ti,j784s4-pcie-host";
-		reg = <0x00 0x02900000 0x00 0x1000>,
-		      <0x00 0x02907000 0x00 0x400>,
-		      <0x00 0x0d000000 0x00 0x00800000>,
-		      <0x00 0x10000000 0x00 0x00001000>;
-		reg-names = "intd_cfg", "user_cfg", "reg", "cfg";
-		interrupt-names = "link_state";
-		interrupts = <GIC_SPI 318 IRQ_TYPE_EDGE_RISING>;
-		device_type = "pci";
-		ti,syscon-pcie-ctrl = <&pcie0_ctrl 0x0>;
-		max-link-speed = <3>;
-		num-lanes = <4>;
-		power-domains = <&k3_pds 332 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 332 0>;
-		clock-names = "fck";
-		#address-cells = <3>;
-		#size-cells = <2>;
-		bus-range = <0x0 0xff>;
-		vendor-id = <0x104c>;
-		device-id = <0xb012>;
-		msi-map = <0x0 &gic_its 0x0 0x10000>;
-		dma-coherent;
-		ranges = <0x01000000 0x0 0x10001000 0x0 0x10001000 0x0 0x0010000>,
-			 <0x02000000 0x0 0x10011000 0x0 0x10011000 0x0 0x7fef000>;
-		dma-ranges = <0x02000000 0x0 0x0 0x0 0x0 0x10000 0x0>;
-		status = "disabled";
-	};
-
-	pcie1_rc: pcie@2910000 {
-		compatible = "ti,j784s4-pcie-host";
-		reg = <0x00 0x02910000 0x00 0x1000>,
-		      <0x00 0x02917000 0x00 0x400>,
-		      <0x00 0x0d800000 0x00 0x00800000>,
-		      <0x00 0x18000000 0x00 0x00001000>;
-		reg-names = "intd_cfg", "user_cfg", "reg", "cfg";
-		interrupt-names = "link_state";
-		interrupts = <GIC_SPI 330 IRQ_TYPE_EDGE_RISING>;
-		device_type = "pci";
-		ti,syscon-pcie-ctrl = <&pcie1_ctrl 0x0>;
-		max-link-speed = <3>;
-		num-lanes = <4>;
-		power-domains = <&k3_pds 333 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 333 0>;
-		clock-names = "fck";
-		#address-cells = <3>;
-		#size-cells = <2>;
-		bus-range = <0x0 0xff>;
-		vendor-id = <0x104c>;
-		device-id = <0xb012>;
-		msi-map = <0x0 &gic_its 0x10000 0x10000>;
-		dma-coherent;
-		ranges = <0x01000000 0x0 0x18001000  0x00 0x18001000  0x0 0x0010000>,
-			 <0x02000000 0x0 0x18011000  0x00 0x18011000  0x0 0x7fef000>;
-		dma-ranges = <0x02000000 0x0 0x0 0x0 0x0 0x10000 0x0>;
-		status = "disabled";
-	};
-
-	pcie2_rc: pcie@2920000 {
-		compatible = "ti,j784s4-pcie-host";
-		reg = <0x00 0x02920000 0x00 0x1000>,
-		      <0x00 0x02927000 0x00 0x400>,
-		      <0x00 0x0e000000 0x00 0x00800000>,
-		      <0x44 0x00000000 0x00 0x00001000>;
-		reg-names = "intd_cfg", "user_cfg", "reg", "cfg";
-		interrupt-names = "link_state";
-		interrupts = <GIC_SPI 342 IRQ_TYPE_EDGE_RISING>;
-		device_type = "pci";
-		ti,syscon-pcie-ctrl = <&pcie2_ctrl 0x0>;
-		max-link-speed = <3>;
-		num-lanes = <2>;
-		power-domains = <&k3_pds 334 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 334 0>;
-		clock-names = "fck";
-		#address-cells = <3>;
-		#size-cells = <2>;
-		bus-range = <0x0 0xff>;
-		vendor-id = <0x104c>;
-		device-id = <0xb012>;
-		msi-map = <0x0 &gic_its 0x20000 0x10000>;
-		dma-coherent;
-		ranges = <0x01000000 0x0 0x00001000 0x44 0x00001000 0x0 0x0010000>,
-			 <0x02000000 0x0 0x00011000 0x44 0x00011000 0x0 0x7fef000>;
-		dma-ranges = <0x02000000 0x0 0x0 0x0 0x0 0x10000 0x0>;
-		status = "disabled";
-	};
-
-	pcie3_rc: pcie@2930000 {
-		compatible = "ti,j784s4-pcie-host";
-		reg = <0x00 0x02930000 0x00 0x1000>,
-		      <0x00 0x02937000 0x00 0x400>,
-		      <0x00 0x0e800000 0x00 0x00800000>,
-		      <0x44 0x10000000 0x00 0x00001000>;
-		reg-names = "intd_cfg", "user_cfg", "reg", "cfg";
-		interrupt-names = "link_state";
-		interrupts = <GIC_SPI 354 IRQ_TYPE_EDGE_RISING>;
-		device_type = "pci";
-		ti,syscon-pcie-ctrl = <&pcie3_ctrl 0x0>;
-		max-link-speed = <3>;
-		num-lanes = <2>;
-		power-domains = <&k3_pds 335 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 335 0>;
-		clock-names = "fck";
-		#address-cells = <3>;
-		#size-cells = <2>;
-		bus-range = <0x0 0xff>;
-		vendor-id = <0x104c>;
-		device-id = <0xb012>;
-		msi-map = <0x0 &gic_its 0x30000 0x10000>;
-		dma-coherent;
-		ranges = <0x01000000 0x0 0x00001000 0x44 0x10001000 0x0 0x0010000>,
-			 <0x02000000 0x0 0x00011000 0x44 0x10011000 0x0 0x7fef000>;
-		dma-ranges = <0x02000000 0x0 0x0 0x0 0x0 0x10000 0x0>;
-		status = "disabled";
-	};
-
-	serdes_wiz0: wiz@5060000 {
-		compatible = "ti,j784s4-wiz-10g";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		power-domains = <&k3_pds 404 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 404 2>, <&k3_clks 404 6>, <&serdes_refclk>, <&k3_clks 404 5>;
-		clock-names = "fck", "core_ref_clk", "ext_ref_clk", "core_ref1_clk";
-		assigned-clocks = <&k3_clks 404 6>;
-		assigned-clock-parents = <&k3_clks 404 10>;
-		num-lanes = <4>;
-		#reset-cells = <1>;
-		#clock-cells = <1>;
-		ranges = <0x5060000 0x00 0x5060000 0x10000>;
-		status = "disabled";
-
-		serdes0: serdes@5060000 {
-			compatible = "ti,j721e-serdes-10g";
-			reg = <0x05060000 0x010000>;
-			reg-names = "torrent_phy";
-			resets = <&serdes_wiz0 0>;
-			reset-names = "torrent_reset";
-			clocks = <&serdes_wiz0 TI_WIZ_PLL0_REFCLK>,
-				 <&serdes_wiz0 TI_WIZ_PHY_EN_REFCLK>;
-			clock-names = "refclk", "phy_en_refclk";
-			assigned-clocks = <&serdes_wiz0 TI_WIZ_PLL0_REFCLK>,
-					  <&serdes_wiz0 TI_WIZ_PLL1_REFCLK>,
-					  <&serdes_wiz0 TI_WIZ_REFCLK_DIG>;
-			assigned-clock-parents = <&k3_clks 404 6>,
-						 <&k3_clks 404 6>,
-						 <&k3_clks 404 6>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			#clock-cells = <1>;
-			status = "disabled";
-		};
-	};
-
-	serdes_wiz1: wiz@5070000 {
-		compatible = "ti,j784s4-wiz-10g";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		power-domains = <&k3_pds 405 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 405 2>, <&k3_clks 405 6>, <&serdes_refclk>, <&k3_clks 405 5>;
-		clock-names = "fck", "core_ref_clk", "ext_ref_clk", "core_ref1_clk";
-		assigned-clocks = <&k3_clks 405 6>;
-		assigned-clock-parents = <&k3_clks 405 10>;
-		num-lanes = <4>;
-		#reset-cells = <1>;
-		#clock-cells = <1>;
-		ranges = <0x05070000 0x00 0x05070000 0x10000>;
-		status = "disabled";
-
-		serdes1: serdes@5070000 {
-			compatible = "ti,j721e-serdes-10g";
-			reg = <0x05070000 0x010000>;
-			reg-names = "torrent_phy";
-			resets = <&serdes_wiz1 0>;
-			reset-names = "torrent_reset";
-			clocks = <&serdes_wiz1 TI_WIZ_PLL0_REFCLK>,
-				 <&serdes_wiz1 TI_WIZ_PHY_EN_REFCLK>;
-			clock-names = "refclk", "phy_en_refclk";
-			assigned-clocks = <&serdes_wiz1 TI_WIZ_PLL0_REFCLK>,
-					  <&serdes_wiz1 TI_WIZ_PLL1_REFCLK>,
-					  <&serdes_wiz1 TI_WIZ_REFCLK_DIG>;
-			assigned-clock-parents = <&k3_clks 405 6>,
-						 <&k3_clks 405 6>,
-						 <&k3_clks 405 6>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			#clock-cells = <1>;
-			status = "disabled";
-		};
-	};
-
-	serdes_wiz2: wiz@5020000 {
-		compatible = "ti,j784s4-wiz-10g";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		power-domains = <&k3_pds 406 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 406 2>, <&k3_clks 406 6>, <&serdes_refclk>, <&k3_clks 406 5>;
-		clock-names = "fck", "core_ref_clk", "ext_ref_clk", "core_ref1_clk";
-		assigned-clocks = <&k3_clks 406 6>;
-		assigned-clock-parents = <&k3_clks 406 10>;
-		num-lanes = <4>;
-		#reset-cells = <1>;
-		#clock-cells = <1>;
-		ranges = <0x05020000 0x00 0x05020000 0x10000>;
-		status = "disabled";
-
-		serdes2: serdes@5020000 {
-			compatible = "ti,j721e-serdes-10g";
-			reg = <0x05020000 0x010000>;
-			reg-names = "torrent_phy";
-			resets = <&serdes_wiz2 0>;
-			reset-names = "torrent_reset";
-			clocks = <&serdes_wiz2 TI_WIZ_PLL0_REFCLK>,
-				 <&serdes_wiz2 TI_WIZ_PHY_EN_REFCLK>;
-			clock-names = "refclk", "phy_en_refclk";
-			assigned-clocks = <&serdes_wiz2 TI_WIZ_PLL0_REFCLK>,
-					  <&serdes_wiz2 TI_WIZ_PLL1_REFCLK>,
-					  <&serdes_wiz2 TI_WIZ_REFCLK_DIG>;
-			assigned-clock-parents = <&k3_clks 406 6>,
-						 <&k3_clks 406 6>,
-						 <&k3_clks 406 6>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			#clock-cells = <1>;
-			status = "disabled";
-		};
-	};
-
-	serdes_wiz4: wiz@5050000 {
-		compatible = "ti,j784s4-wiz-10g";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		power-domains = <&k3_pds 407 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 407 2>, <&k3_clks 407 6>, <&serdes_refclk>, <&k3_clks 407 5>;
-		clock-names = "fck", "core_ref_clk", "ext_ref_clk", "core_ref1_clk";
-		assigned-clocks = <&k3_clks 407 6>;
-		assigned-clock-parents = <&k3_clks 407 10>;
-		num-lanes = <4>;
-		#reset-cells = <1>;
-		#clock-cells = <1>;
-		ranges = <0x05050000 0x00 0x05050000 0x10000>,
-			 <0xa030a00 0x00 0xa030a00 0x40>; /* DPTX PHY */
-		status = "disabled";
-
-		serdes4: serdes@5050000 {
-			/*
-			 * Note: we also map DPTX PHY registers as the Torrent
-			 * needs to manage those.
-			 */
-			compatible = "ti,j721e-serdes-10g";
-			reg = <0x05050000 0x010000>,
-			      <0x0a030a00 0x40>; /* DPTX PHY */
-			reg-names = "torrent_phy";
-			resets = <&serdes_wiz4 0>;
-			reset-names = "torrent_reset";
-			clocks = <&serdes_wiz4 TI_WIZ_PLL0_REFCLK>,
-				 <&serdes_wiz4 TI_WIZ_PHY_EN_REFCLK>;
-			clock-names = "refclk", "phy_en_refclk";
-			assigned-clocks = <&serdes_wiz4 TI_WIZ_PLL0_REFCLK>,
-					  <&serdes_wiz4 TI_WIZ_PLL1_REFCLK>,
-					  <&serdes_wiz4 TI_WIZ_REFCLK_DIG>;
-			assigned-clock-parents = <&k3_clks 407 6>,
-						 <&k3_clks 407 6>,
-						 <&k3_clks 407 6>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			#clock-cells = <1>;
-			status = "disabled";
-		};
-	};
-
-	main_navss: bus@30000000 {
-		bootph-all;
-		compatible = "simple-bus";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges = <0x00 0x30000000 0x00 0x30000000 0x00 0x0c400000>;
-		ti,sci-dev-id = <280>;
-		dma-coherent;
-		dma-ranges;
-
-		main_navss_intr: interrupt-controller@310e0000 {
-			compatible = "ti,sci-intr";
-			reg = <0x00 0x310e0000 0x00 0x4000>;
-			ti,intr-trigger-type = <4>;
-			interrupt-controller;
-			interrupt-parent = <&gic500>;
-			#interrupt-cells = <1>;
-			ti,sci = <&sms>;
-			ti,sci-dev-id = <283>;
-			ti,interrupt-ranges = <0 64 64>,
-					      <64 448 64>,
-					      <128 672 64>;
-		};
-
-		main_udmass_inta: msi-controller@33d00000 {
-			compatible = "ti,sci-inta";
-			reg = <0x00 0x33d00000 0x00 0x100000>;
-			interrupt-controller;
-			#interrupt-cells = <0>;
-			interrupt-parent = <&main_navss_intr>;
-			msi-controller;
-			ti,sci = <&sms>;
-			ti,sci-dev-id = <321>;
-			ti,interrupt-ranges = <0 0 256>;
-			ti,unmapped-event-sources = <&main_bcdma_csi>;
-		};
-
-		secure_proxy_main: mailbox@32c00000 {
-			bootph-all;
-			compatible = "ti,am654-secure-proxy";
-			#mbox-cells = <1>;
-			reg-names = "target_data", "rt", "scfg";
-			reg = <0x00 0x32c00000 0x00 0x100000>,
-			      <0x00 0x32400000 0x00 0x100000>,
-			      <0x00 0x32800000 0x00 0x100000>;
-			interrupt-names = "rx_011";
-			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
-		};
-
-		hwspinlock: hwlock@30e00000 {
-			compatible = "ti,am654-hwspinlock";
-			reg = <0x00 0x30e00000 0x00 0x1000>;
-			#hwlock-cells = <1>;
-		};
-
-		mailbox0_cluster0: mailbox@31f80000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f80000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox0_cluster1: mailbox@31f81000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f81000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox0_cluster2: mailbox@31f82000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f82000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox0_cluster3: mailbox@31f83000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f83000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox0_cluster4: mailbox@31f84000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f84000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox0_cluster5: mailbox@31f85000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f85000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox0_cluster6: mailbox@31f86000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f86000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox0_cluster7: mailbox@31f87000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f87000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox0_cluster8: mailbox@31f88000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f88000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox0_cluster9: mailbox@31f89000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f89000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox0_cluster10: mailbox@31f8a000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f8a000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox0_cluster11: mailbox@31f8b000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f8b000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox1_cluster0: mailbox@31f90000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f90000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox1_cluster1: mailbox@31f91000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f91000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox1_cluster2: mailbox@31f92000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f92000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox1_cluster3: mailbox@31f93000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f93000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox1_cluster4: mailbox@31f94000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f94000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox1_cluster5: mailbox@31f95000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f95000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox1_cluster6: mailbox@31f96000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f96000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox1_cluster7: mailbox@31f97000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f97000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox1_cluster8: mailbox@31f98000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f98000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox1_cluster9: mailbox@31f99000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f99000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox1_cluster10: mailbox@31f9a000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f9a000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		mailbox1_cluster11: mailbox@31f9b000 {
-			compatible = "ti,am654-mailbox";
-			reg = <0x00 0x31f9b000 0x00 0x200>;
-			#mbox-cells = <1>;
-			ti,mbox-num-users = <4>;
-			ti,mbox-num-fifos = <16>;
-			interrupt-parent = <&main_navss_intr>;
-			status = "disabled";
-		};
-
-		main_ringacc: ringacc@3c000000 {
-			compatible = "ti,am654-navss-ringacc";
-			reg = <0x00 0x3c000000 0x00 0x400000>,
-			      <0x00 0x38000000 0x00 0x400000>,
-			      <0x00 0x31120000 0x00 0x100>,
-			      <0x00 0x33000000 0x00 0x40000>,
-			      <0x00 0x31080000 0x00 0x40000>;
-			reg-names = "rt", "fifos", "proxy_gcfg", "proxy_target", "cfg";
-			ti,num-rings = <1024>;
-			ti,sci-rm-range-gp-rings = <0x1>;
-			ti,sci = <&sms>;
-			ti,sci-dev-id = <315>;
-			msi-parent = <&main_udmass_inta>;
-		};
-
-		main_udmap: dma-controller@31150000 {
-			compatible = "ti,j721e-navss-main-udmap";
-			reg = <0x00 0x31150000 0x00 0x100>,
-			      <0x00 0x34000000 0x00 0x80000>,
-			      <0x00 0x35000000 0x00 0x200000>,
-			      <0x00 0x30b00000 0x00 0x20000>,
-			      <0x00 0x30c00000 0x00 0x8000>,
-			      <0x00 0x30d00000 0x00 0x4000>;
-			reg-names = "gcfg", "rchanrt", "tchanrt",
-				    "tchan", "rchan", "rflow";
-			msi-parent = <&main_udmass_inta>;
-			#dma-cells = <1>;
-
-			ti,sci = <&sms>;
-			ti,sci-dev-id = <319>;
-			ti,ringacc = <&main_ringacc>;
-
-			ti,sci-rm-range-tchan = <0x0d>, /* TX_CHAN */
-						<0x0f>, /* TX_HCHAN */
-						<0x10>; /* TX_UHCHAN */
-			ti,sci-rm-range-rchan = <0x0a>, /* RX_CHAN */
-						<0x0b>, /* RX_HCHAN */
-						<0x0c>; /* RX_UHCHAN */
-			ti,sci-rm-range-rflow = <0x00>; /* GP RFLOW */
-		};
-
-		main_bcdma_csi: dma-controller@311a0000 {
-			compatible = "ti,j721s2-dmss-bcdma-csi";
-			reg = <0x00 0x311a0000 0x00 0x100>,
-			      <0x00 0x35d00000 0x00 0x20000>,
-			      <0x00 0x35c00000 0x00 0x10000>,
-			      <0x00 0x35e00000 0x00 0x80000>;
-			reg-names = "gcfg", "rchanrt", "tchanrt", "ringrt";
-			msi-parent = <&main_udmass_inta>;
-			#dma-cells = <3>;
-			ti,sci = <&sms>;
-			ti,sci-dev-id = <281>;
-			ti,sci-rm-range-rchan = <0x21>;
-			ti,sci-rm-range-tchan = <0x22>;
-		};
-
-		cpts@310d0000 {
-			compatible = "ti,j721e-cpts";
-			reg = <0x00 0x310d0000 0x00 0x400>;
-			reg-names = "cpts";
-			clocks = <&k3_clks 282 0>;
-			clock-names = "cpts";
-			assigned-clocks = <&k3_clks 62 3>; /* CPTS_RFT_CLK */
-			assigned-clock-parents = <&k3_clks 62 5>; /* MAIN_0_HSDIV6_CLK */
-			interrupts-extended = <&main_navss_intr 391>;
-			interrupt-names = "cpts";
-			ti,cpts-periodic-outputs = <6>;
-			ti,cpts-ext-ts-inputs = <8>;
-		};
-	};
-
-	main_cpsw0: ethernet@c000000 {
-		compatible = "ti,j784s4-cpswxg-nuss";
-		reg = <0x00 0xc000000 0x00 0x200000>;
-		reg-names = "cpsw_nuss";
-		ranges = <0x00 0x00 0x00 0xc000000 0x00 0x200000>;
-		#address-cells = <2>;
-		#size-cells = <2>;
-		dma-coherent;
-		clocks = <&k3_clks 64 0>;
-		clock-names = "fck";
-		power-domains = <&k3_pds 64 TI_SCI_PD_EXCLUSIVE>;
-
-		dmas = <&main_udmap 0xca00>,
-		       <&main_udmap 0xca01>,
-		       <&main_udmap 0xca02>,
-		       <&main_udmap 0xca03>,
-		       <&main_udmap 0xca04>,
-		       <&main_udmap 0xca05>,
-		       <&main_udmap 0xca06>,
-		       <&main_udmap 0xca07>,
-		       <&main_udmap 0x4a00>;
-		dma-names = "tx0", "tx1", "tx2", "tx3",
-			    "tx4", "tx5", "tx6", "tx7",
-			    "rx";
-
-		status = "disabled";
-
-		ethernet-ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			main_cpsw0_port1: port@1 {
-				reg = <1>;
-				label = "port1";
-				ti,mac-only;
-				status = "disabled";
-			};
-
-			main_cpsw0_port2: port@2 {
-				reg = <2>;
-				label = "port2";
-				ti,mac-only;
-				status = "disabled";
-			};
-
-			main_cpsw0_port3: port@3 {
-				reg = <3>;
-				label = "port3";
-				ti,mac-only;
-				status = "disabled";
-			};
-
-			main_cpsw0_port4: port@4 {
-				reg = <4>;
-				label = "port4";
-				ti,mac-only;
-				status = "disabled";
-			};
-
-			main_cpsw0_port5: port@5 {
-				reg = <5>;
-				label = "port5";
-				ti,mac-only;
-				status = "disabled";
-			};
-
-			main_cpsw0_port6: port@6 {
-				reg = <6>;
-				label = "port6";
-				ti,mac-only;
-				status = "disabled";
-			};
-
-			main_cpsw0_port7: port@7 {
-				reg = <7>;
-				label = "port7";
-				ti,mac-only;
-				status = "disabled";
-			};
-
-			main_cpsw0_port8: port@8 {
-				reg = <8>;
-				label = "port8";
-				ti,mac-only;
-				status = "disabled";
-			};
-		};
-
-		main_cpsw0_mdio: mdio@f00 {
-			compatible = "ti,cpsw-mdio","ti,davinci_mdio";
-			reg = <0x00 0xf00 0x00 0x100>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			clocks = <&k3_clks 64 0>;
-			clock-names = "fck";
-			bus_freq = <1000000>;
-			status = "disabled";
-		};
-
-		cpts@3d000 {
-			compatible = "ti,am65-cpts";
-			reg = <0x00 0x3d000 0x00 0x400>;
-			clocks = <&k3_clks 64 3>;
-			clock-names = "cpts";
-			interrupts-extended = <&gic500 GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "cpts";
-			ti,cpts-ext-ts-inputs = <4>;
-			ti,cpts-periodic-outputs = <2>;
-		};
-	};
-
-	main_cpsw1: ethernet@c200000 {
-		compatible = "ti,j721e-cpsw-nuss";
-		reg = <0x00 0xc200000 0x00 0x200000>;
-		reg-names = "cpsw_nuss";
-		ranges = <0x00 0x00 0x00 0xc200000 0x00 0x200000>;
-		#address-cells = <2>;
-		#size-cells = <2>;
-		dma-coherent;
-		clocks = <&k3_clks 62 0>;
-		clock-names = "fck";
-		power-domains = <&k3_pds 62 TI_SCI_PD_EXCLUSIVE>;
-
-		dmas = <&main_udmap 0xc640>,
-			<&main_udmap 0xc641>,
-			<&main_udmap 0xc642>,
-			<&main_udmap 0xc643>,
-			<&main_udmap 0xc644>,
-			<&main_udmap 0xc645>,
-			<&main_udmap 0xc646>,
-			<&main_udmap 0xc647>,
-			<&main_udmap 0x4640>;
-		dma-names = "tx0", "tx1", "tx2", "tx3",
-				"tx4", "tx5", "tx6", "tx7",
-				"rx";
-
-		status = "disabled";
-
-		ethernet-ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			main_cpsw1_port1: port@1 {
-				reg = <1>;
-				label = "port1";
-				phys = <&cpsw1_phy_gmii_sel 1>;
-				ti,mac-only;
-				status = "disabled";
-			};
-		};
-
-		main_cpsw1_mdio: mdio@f00 {
-			compatible = "ti,cpsw-mdio", "ti,davinci_mdio";
-			reg = <0x00 0xf00 0x00 0x100>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			clocks = <&k3_clks 62 0>;
-			clock-names = "fck";
-			bus_freq = <1000000>;
-			status = "disabled";
-		};
-
-		cpts@3d000 {
-			compatible = "ti,am65-cpts";
-			reg = <0x00 0x3d000 0x00 0x400>;
-			clocks = <&k3_clks 62 3>;
-			clock-names = "cpts";
-			interrupts-extended = <&gic500 GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "cpts";
-			ti,cpts-ext-ts-inputs = <4>;
-			ti,cpts-periodic-outputs = <2>;
-		};
-	};
-
-	main_mcan0: can@2701000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x02701000 0x00 0x200>,
-		      <0x00 0x02708000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 245 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 245 6>, <&k3_clks 245 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan1: can@2711000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x02711000 0x00 0x200>,
-		      <0x00 0x02718000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 246 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 246 6>, <&k3_clks 246 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan2: can@2721000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x02721000 0x00 0x200>,
-		      <0x00 0x02728000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 247 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 247 6>, <&k3_clks 247 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan3: can@2731000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x02731000 0x00 0x200>,
-		      <0x00 0x02738000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 248 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 248 6>, <&k3_clks 248 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan4: can@2741000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x02741000 0x00 0x200>,
-		      <0x00 0x02748000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 249 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 249 6>, <&k3_clks 249 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan5: can@2751000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x02751000 0x00 0x200>,
-		      <0x00 0x02758000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 250 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 250 6>, <&k3_clks 250 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan6: can@2761000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x02761000 0x00 0x200>,
-		      <0x00 0x02768000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 251 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 251 6>, <&k3_clks 251 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan7: can@2771000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x02771000 0x00 0x200>,
-		      <0x00 0x02778000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 252 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 252 6>, <&k3_clks 252 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan8: can@2781000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x02781000 0x00 0x200>,
-		      <0x00 0x02788000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 253 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 253 6>, <&k3_clks 253 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 576 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 577 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan9: can@2791000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x02791000 0x00 0x200>,
-		      <0x00 0x02798000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 254 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 254 6>, <&k3_clks 254 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 579 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 580 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan10: can@27a1000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x027a1000 0x00 0x200>,
-		      <0x00 0x027a8000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 255 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 255 6>, <&k3_clks 255 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 582 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 583 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan11: can@27b1000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x027b1000 0x00 0x200>,
-		      <0x00 0x027b8000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 256 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 256 6>, <&k3_clks 256 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 585 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 586 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan12: can@27c1000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x027c1000 0x00 0x200>,
-		      <0x00 0x027c8000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 257 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 257 6>, <&k3_clks 257 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 588 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 589 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan13: can@27d1000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x027d1000 0x00 0x200>,
-		      <0x00 0x027d8000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 258 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 258 6>, <&k3_clks 258 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan14: can@2681000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x02681000 0x00 0x200>,
-		      <0x00 0x02688000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 259 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 259 6>, <&k3_clks 259 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan15: can@2691000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x02691000 0x00 0x200>,
-		      <0x00 0x02698000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 260 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 260 6>, <&k3_clks 260 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan16: can@26a1000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x026a1000 0x00 0x200>,
-		      <0x00 0x026a8000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 261 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 261 6>, <&k3_clks 261 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 784 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 785 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_mcan17: can@26b1000 {
-		compatible = "bosch,m_can";
-		reg = <0x00 0x026b1000 0x00 0x200>,
-		      <0x00 0x026b8000 0x00 0x8000>;
-		reg-names = "m_can", "message_ram";
-		power-domains = <&k3_pds 262 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 262 6>, <&k3_clks 262 1>;
-		clock-names = "hclk", "cclk";
-		interrupts = <GIC_SPI 787 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 788 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "int0", "int1";
-		bosch,mram-cfg = <0x00 128 64 64 64 64 32 32>;
-		status = "disabled";
-	};
-
-	main_spi0: spi@2100000 {
-		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
-		reg = <0x00 0x02100000 0x00 0x400>;
-		interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		power-domains = <&k3_pds 376 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 376 1>;
-		status = "disabled";
-	};
-
-	main_spi1: spi@2110000 {
-		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
-		reg = <0x00 0x02110000 0x00 0x400>;
-		interrupts = <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		power-domains = <&k3_pds 377 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 377 1>;
-		status = "disabled";
-	};
-
-	main_spi2: spi@2120000 {
-		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
-		reg = <0x00 0x02120000 0x00 0x400>;
-		interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		power-domains = <&k3_pds 378 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 378 1>;
-		status = "disabled";
-	};
-
-	main_spi3: spi@2130000 {
-		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
-		reg = <0x00 0x02130000 0x00 0x400>;
-		interrupts = <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		power-domains = <&k3_pds 379 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 379 1>;
-		status = "disabled";
-	};
-
-	main_spi4: spi@2140000 {
-		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
-		reg = <0x00 0x02140000 0x00 0x400>;
-		interrupts = <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		power-domains = <&k3_pds 380 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 380 1>;
-		status = "disabled";
-	};
-
-	main_spi5: spi@2150000 {
-		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
-		reg = <0x00 0x02150000 0x00 0x400>;
-		interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		power-domains = <&k3_pds 381 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 381 1>;
-		status = "disabled";
-	};
-
-	main_spi6: spi@2160000 {
-		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
-		reg = <0x00 0x02160000 0x00 0x400>;
-		interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		power-domains = <&k3_pds 382 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 382 1>;
-		status = "disabled";
-	};
-
-	main_spi7: spi@2170000 {
-		compatible = "ti,am654-mcspi","ti,omap4-mcspi";
-		reg = <0x00 0x02170000 0x00 0x400>;
-		interrupts = <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		power-domains = <&k3_pds 383 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 383 1>;
-		status = "disabled";
-	};
-
-	ufs_wrapper: ufs-wrapper@4e80000 {
-		compatible = "ti,j721e-ufs";
-		reg = <0x00 0x4e80000 0x00 0x100>;
-		power-domains = <&k3_pds 387 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 387 3>;
-		assigned-clocks = <&k3_clks 387 3>;
-		assigned-clock-parents = <&k3_clks 387 6>;
-		ranges;
-		#address-cells = <2>;
-		#size-cells = <2>;
-		status = "disabled";
-
-		ufs@4e84000 {
-			compatible = "cdns,ufshc-m31-16nm", "jedec,ufs-2.0";
-			reg = <0x00 0x4e84000 0x00 0x10000>;
-			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
-			freq-table-hz = <250000000 250000000>, <19200000 19200000>,
-					<19200000 19200000>;
-			clocks = <&k3_clks 387 1>, <&k3_clks 387 3>, <&k3_clks 387 3>;
-			clock-names = "core_clk", "phy_clk", "ref_clk";
-			dma-coherent;
-		};
-	};
-
-	main_r5fss0: r5fss@5c00000 {
-		compatible = "ti,j721s2-r5fss";
-		ti,cluster-mode = <1>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0x5c00000 0x00 0x5c00000 0x20000>,
-			 <0x5d00000 0x00 0x5d00000 0x20000>;
-		power-domains = <&k3_pds 336 TI_SCI_PD_EXCLUSIVE>;
-
-		main_r5fss0_core0: r5f@5c00000 {
-			compatible = "ti,j721s2-r5f";
-			reg = <0x5c00000 0x00010000>,
-			      <0x5c10000 0x00010000>;
-			reg-names = "atcm", "btcm";
-			ti,sci = <&sms>;
-			ti,sci-dev-id = <339>;
-			ti,sci-proc-ids = <0x06 0xff>;
-			resets = <&k3_reset 339 1>;
-			firmware-name = "j784s4-main-r5f0_0-fw";
-			ti,atcm-enable = <1>;
-			ti,btcm-enable = <1>;
-			ti,loczrama = <1>;
-		};
-
-		main_r5fss0_core1: r5f@5d00000 {
-			compatible = "ti,j721s2-r5f";
-			reg = <0x5d00000 0x00010000>,
-			      <0x5d10000 0x00010000>;
-			reg-names = "atcm", "btcm";
-			ti,sci = <&sms>;
-			ti,sci-dev-id = <340>;
-			ti,sci-proc-ids = <0x07 0xff>;
-			resets = <&k3_reset 340 1>;
-			firmware-name = "j784s4-main-r5f0_1-fw";
-			ti,atcm-enable = <1>;
-			ti,btcm-enable = <1>;
-			ti,loczrama = <1>;
-		};
-	};
-
-	main_r5fss1: r5fss@5e00000 {
-		compatible = "ti,j721s2-r5fss";
-		ti,cluster-mode = <1>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0x5e00000 0x00 0x5e00000 0x20000>,
-			 <0x5f00000 0x00 0x5f00000 0x20000>;
-		power-domains = <&k3_pds 337 TI_SCI_PD_EXCLUSIVE>;
-
-		main_r5fss1_core0: r5f@5e00000 {
-			compatible = "ti,j721s2-r5f";
-			reg = <0x5e00000 0x00010000>,
-			      <0x5e10000 0x00010000>;
-			reg-names = "atcm", "btcm";
-			ti,sci = <&sms>;
-			ti,sci-dev-id = <341>;
-			ti,sci-proc-ids = <0x08 0xff>;
-			resets = <&k3_reset 341 1>;
-			firmware-name = "j784s4-main-r5f1_0-fw";
-			ti,atcm-enable = <1>;
-			ti,btcm-enable = <1>;
-			ti,loczrama = <1>;
-		};
-
-		main_r5fss1_core1: r5f@5f00000 {
-			compatible = "ti,j721s2-r5f";
-			reg = <0x5f00000 0x00010000>,
-			      <0x5f10000 0x00010000>;
-			reg-names = "atcm", "btcm";
-			ti,sci = <&sms>;
-			ti,sci-dev-id = <342>;
-			ti,sci-proc-ids = <0x09 0xff>;
-			resets = <&k3_reset 342 1>;
-			firmware-name = "j784s4-main-r5f1_1-fw";
-			ti,atcm-enable = <1>;
-			ti,btcm-enable = <1>;
-			ti,loczrama = <1>;
-		};
-	};
-
-	main_r5fss2: r5fss@5900000 {
-		compatible = "ti,j721s2-r5fss";
-		ti,cluster-mode = <1>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0x5900000 0x00 0x5900000 0x20000>,
-			 <0x5a00000 0x00 0x5a00000 0x20000>;
-		power-domains = <&k3_pds 338 TI_SCI_PD_EXCLUSIVE>;
-
-		main_r5fss2_core0: r5f@5900000 {
-			compatible = "ti,j721s2-r5f";
-			reg = <0x5900000 0x00010000>,
-			      <0x5910000 0x00010000>;
-			reg-names = "atcm", "btcm";
-			ti,sci = <&sms>;
-			ti,sci-dev-id = <343>;
-			ti,sci-proc-ids = <0x0a 0xff>;
-			resets = <&k3_reset 343 1>;
-			firmware-name = "j784s4-main-r5f2_0-fw";
-			ti,atcm-enable = <1>;
-			ti,btcm-enable = <1>;
-			ti,loczrama = <1>;
-		};
-
-		main_r5fss2_core1: r5f@5a00000 {
-			compatible = "ti,j721s2-r5f";
-			reg = <0x5a00000 0x00010000>,
-			      <0x5a10000 0x00010000>;
-			reg-names = "atcm", "btcm";
-			ti,sci = <&sms>;
-			ti,sci-dev-id = <344>;
-			ti,sci-proc-ids = <0x0b 0xff>;
-			resets = <&k3_reset 344 1>;
-			firmware-name = "j784s4-main-r5f2_1-fw";
-			ti,atcm-enable = <1>;
-			ti,btcm-enable = <1>;
-			ti,loczrama = <1>;
-		};
-	};
-
-	c71_0: dsp@64800000 {
-		compatible = "ti,j721s2-c71-dsp";
-		reg = <0x00 0x64800000 0x00 0x00080000>,
-		      <0x00 0x64e00000 0x00 0x0000c000>;
-		reg-names = "l2sram", "l1dram";
-		ti,sci = <&sms>;
-		ti,sci-dev-id = <30>;
-		ti,sci-proc-ids = <0x30 0xff>;
-		resets = <&k3_reset 30 1>;
-		firmware-name = "j784s4-c71_0-fw";
-		status = "disabled";
-	};
-
-	c71_1: dsp@65800000 {
-		compatible = "ti,j721s2-c71-dsp";
-		reg = <0x00 0x65800000 0x00 0x00080000>,
-		      <0x00 0x65e00000 0x00 0x0000c000>;
-		reg-names = "l2sram", "l1dram";
-		ti,sci = <&sms>;
-		ti,sci-dev-id = <33>;
-		ti,sci-proc-ids = <0x31 0xff>;
-		resets = <&k3_reset 33 1>;
-		firmware-name = "j784s4-c71_1-fw";
-		status = "disabled";
-	};
-
-	c71_2: dsp@66800000 {
-		compatible = "ti,j721s2-c71-dsp";
-		reg = <0x00 0x66800000 0x00 0x00080000>,
-		      <0x00 0x66e00000 0x00 0x0000c000>;
-		reg-names = "l2sram", "l1dram";
-		ti,sci = <&sms>;
-		ti,sci-dev-id = <37>;
-		ti,sci-proc-ids = <0x32 0xff>;
-		resets = <&k3_reset 37 1>;
-		firmware-name = "j784s4-c71_2-fw";
-		status = "disabled";
-	};
-
+&cbass_main {
 	c71_3: dsp@67800000 {
 		compatible = "ti,j721s2-c71-dsp";
 		reg = <0x00 0x67800000 0x00 0x00080000>,
 		      <0x00 0x67e00000 0x00 0x0000c000>;
 		reg-names = "l2sram", "l1dram";
+		resets = <&k3_reset 40 1>;
+		firmware-name = "j784s4-c71_3-fw";
 		ti,sci = <&sms>;
 		ti,sci-dev-id = <40>;
 		ti,sci-proc-ids = <0x33 0xff>;
-		resets = <&k3_reset 40 1>;
-		firmware-name = "j784s4-c71_3-fw";
-		status = "disabled";
-	};
-
-	main_esm: esm@700000 {
-		compatible = "ti,j721e-esm";
-		reg = <0x00 0x700000 0x00 0x1000>;
-		ti,esm-pins = <688>, <689>, <690>, <691>, <692>, <693>, <694>,
-			      <695>;
-		bootph-pre-ram;
-	};
-
-	watchdog0: watchdog@2200000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2200000 0x00 0x100>;
-		clocks = <&k3_clks 348 1>;
-		power-domains = <&k3_pds 348 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 348 0>;
-		assigned-clock-parents = <&k3_clks 348 4>;
-	};
-
-	watchdog1: watchdog@2210000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2210000 0x00 0x100>;
-		clocks = <&k3_clks 349 1>;
-		power-domains = <&k3_pds 349 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 349 0>;
-		assigned-clock-parents = <&k3_clks 349 4>;
-	};
-
-	watchdog2: watchdog@2220000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2220000 0x00 0x100>;
-		clocks = <&k3_clks 350 1>;
-		power-domains = <&k3_pds 350 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 350 0>;
-		assigned-clock-parents = <&k3_clks 350 4>;
-	};
-
-	watchdog3: watchdog@2230000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2230000 0x00 0x100>;
-		clocks = <&k3_clks 351 1>;
-		power-domains = <&k3_pds 351 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 351 0>;
-		assigned-clock-parents = <&k3_clks 351 4>;
-	};
-
-	watchdog4: watchdog@2240000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2240000 0x00 0x100>;
-		clocks = <&k3_clks 352 1>;
-		power-domains = <&k3_pds 352 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 352 0>;
-		assigned-clock-parents = <&k3_clks 352 4>;
-	};
-
-	watchdog5: watchdog@2250000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2250000 0x00 0x100>;
-		clocks = <&k3_clks 353 1>;
-		power-domains = <&k3_pds 353 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 353 0>;
-		assigned-clock-parents = <&k3_clks 353 4>;
-	};
-
-	watchdog6: watchdog@2260000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2260000 0x00 0x100>;
-		clocks = <&k3_clks 354 1>;
-		power-domains = <&k3_pds 354 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 354 0>;
-		assigned-clock-parents = <&k3_clks 354 4>;
-	};
-
-	watchdog7: watchdog@2270000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2270000 0x00 0x100>;
-		clocks = <&k3_clks 355 1>;
-		power-domains = <&k3_pds 355 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 355 0>;
-		assigned-clock-parents = <&k3_clks 355 4>;
-	};
-
-	/*
-	 * The following RTI instances are coupled with MCU R5Fs, c7x and
-	 * GPU so keeping them reserved as these will be used by their
-	 * respective firmware
-	 */
-	watchdog8: watchdog@22f0000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x22f0000 0x00 0x100>;
-		clocks = <&k3_clks 360 1>;
-		power-domains = <&k3_pds 360 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 360 0>;
-		assigned-clock-parents = <&k3_clks 360 4>;
-		/* reserved for GPU */
-		status = "reserved";
-	};
-
-	watchdog9: watchdog@2300000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2300000 0x00 0x100>;
-		clocks = <&k3_clks 356 1>;
-		power-domains = <&k3_pds 356 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 356 0>;
-		assigned-clock-parents = <&k3_clks 356 4>;
-		/* reserved for C7X_0 DSP */
-		status = "reserved";
-	};
-
-	watchdog10: watchdog@2310000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2310000 0x00 0x100>;
-		clocks = <&k3_clks 357 1>;
-		power-domains = <&k3_pds 357 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 357 0>;
-		assigned-clock-parents = <&k3_clks 357 4>;
-		/* reserved for C7X_1 DSP */
-		status = "reserved";
-	};
-
-	watchdog11: watchdog@2320000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2320000 0x00 0x100>;
-		clocks = <&k3_clks 358 1>;
-		power-domains = <&k3_pds 358 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 358 0>;
-		assigned-clock-parents = <&k3_clks 358 4>;
-		/* reserved for C7X_2 DSP */
-		status = "reserved";
-	};
-
-	watchdog12: watchdog@2330000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2330000 0x00 0x100>;
-		clocks = <&k3_clks 359 1>;
-		power-domains = <&k3_pds 359 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 359 0>;
-		assigned-clock-parents = <&k3_clks 359 4>;
-		/* reserved for C7X_3 DSP */
-		status = "reserved";
-	};
-
-	watchdog13: watchdog@23c0000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x23c0000 0x00 0x100>;
-		clocks = <&k3_clks 361 1>;
-		power-domains = <&k3_pds 361 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 361 0>;
-		assigned-clock-parents = <&k3_clks 361 4>;
-		/* reserved for MAIN_R5F0_0 */
-		status = "reserved";
-	};
-
-	watchdog14: watchdog@23d0000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x23d0000 0x00 0x100>;
-		clocks = <&k3_clks 362 1>;
-		power-domains = <&k3_pds 362 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 362 0>;
-		assigned-clock-parents = <&k3_clks 362 4>;
-		/* reserved for MAIN_R5F0_1 */
-		status = "reserved";
-	};
-
-	watchdog15: watchdog@23e0000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x23e0000 0x00 0x100>;
-		clocks = <&k3_clks 363 1>;
-		power-domains = <&k3_pds 363 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 363 0>;
-		assigned-clock-parents = <&k3_clks 363 4>;
-		/* reserved for MAIN_R5F1_0 */
-		status = "reserved";
-	};
-
-	watchdog16: watchdog@23f0000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x23f0000 0x00 0x100>;
-		clocks = <&k3_clks 364 1>;
-		power-domains = <&k3_pds 364 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 364 0>;
-		assigned-clock-parents = <&k3_clks 364 4>;
-		/* reserved for MAIN_R5F1_1 */
-		status = "reserved";
-	};
-
-	watchdog17: watchdog@2540000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2540000 0x00 0x100>;
-		clocks = <&k3_clks 365 1>;
-		power-domains = <&k3_pds 365 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 365 0>;
-		assigned-clock-parents = <&k3_clks 366 4>;
-		/* reserved for MAIN_R5F2_0 */
-		status = "reserved";
-	};
-
-	watchdog18: watchdog@2550000 {
-		compatible = "ti,j7-rti-wdt";
-		reg = <0x00 0x2550000 0x00 0x100>;
-		clocks = <&k3_clks 366 1>;
-		power-domains = <&k3_pds 366 TI_SCI_PD_EXCLUSIVE>;
-		assigned-clocks = <&k3_clks 366 0>;
-		assigned-clock-parents = <&k3_clks 366 4>;
-		/* reserved for MAIN_R5F2_1 */
-		status = "reserved";
-	};
-
-	mhdp: bridge@a000000 {
-		compatible = "ti,j721e-mhdp8546";
-		reg = <0x0 0xa000000 0x0 0x30a00>,
-		      <0x0 0x4f40000 0x0 0x20>;
-		reg-names = "mhdptx", "j721e-intg";
-		clocks = <&k3_clks 217 11>;
-		interrupt-parent = <&gic500>;
-		interrupts = <GIC_SPI 614 IRQ_TYPE_LEVEL_HIGH>;
-		power-domains = <&k3_pds 217 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
-
-		dp0_ports: ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			/* Remote-endpoints are on the boards so
-			 * ports are defined in the platform dt file.
-			 */
-		};
-	};
-
-	dss: dss@4a00000 {
-		compatible = "ti,j721e-dss";
-		reg = <0x00 0x04a00000 0x00 0x10000>, /* common_m */
-		      <0x00 0x04a10000 0x00 0x10000>, /* common_s0*/
-		      <0x00 0x04b00000 0x00 0x10000>, /* common_s1*/
-		      <0x00 0x04b10000 0x00 0x10000>, /* common_s2*/
-		      <0x00 0x04a20000 0x00 0x10000>, /* vidl1 */
-		      <0x00 0x04a30000 0x00 0x10000>, /* vidl2 */
-		      <0x00 0x04a50000 0x00 0x10000>, /* vid1 */
-		      <0x00 0x04a60000 0x00 0x10000>, /* vid2 */
-		      <0x00 0x04a70000 0x00 0x10000>, /* ovr1 */
-		      <0x00 0x04a90000 0x00 0x10000>, /* ovr2 */
-		      <0x00 0x04ab0000 0x00 0x10000>, /* ovr3 */
-		      <0x00 0x04ad0000 0x00 0x10000>, /* ovr4 */
-		      <0x00 0x04a80000 0x00 0x10000>, /* vp1 */
-		      <0x00 0x04aa0000 0x00 0x10000>, /* vp1 */
-		      <0x00 0x04ac0000 0x00 0x10000>, /* vp1 */
-		      <0x00 0x04ae0000 0x00 0x10000>, /* vp4 */
-		      <0x00 0x04af0000 0x00 0x10000>; /* wb */
-		reg-names = "common_m", "common_s0",
-			    "common_s1", "common_s2",
-			    "vidl1", "vidl2","vid1","vid2",
-			    "ovr1", "ovr2", "ovr3", "ovr4",
-			    "vp1", "vp2", "vp3", "vp4",
-			    "wb";
-		clocks = <&k3_clks 218 0>,
-			 <&k3_clks 218 2>,
-			 <&k3_clks 218 5>,
-			 <&k3_clks 218 14>,
-			 <&k3_clks 218 18>;
-		clock-names = "fck", "vp1", "vp2", "vp3", "vp4";
-		power-domains = <&k3_pds 218 TI_SCI_PD_EXCLUSIVE>;
-		interrupts = <GIC_SPI 602 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 605 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "common_m",
-				  "common_s0",
-				  "common_s1",
-				  "common_s2";
 		status = "disabled";
-
-		dss_ports: ports {
-			/* Ports that DSS drives are platform specific
-			 * so they are defined in platform dt file.
-			 */
-		};
 	};
 
-	mcasp0: mcasp@2b00000 {
-		compatible = "ti,am33xx-mcasp-audio";
-		reg = <0x00 0x02b00000 0x00 0x2000>,
-		      <0x00 0x02b08000 0x00 0x1000>;
-		reg-names = "mpu","dat";
-		interrupts = <GIC_SPI 544 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 545 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "tx", "rx";
-		dmas = <&main_udmap 0xc400>, <&main_udmap 0x4400>;
-		dma-names = "tx", "rx";
-		clocks = <&k3_clks 265 0>;
+	pcie2_rc: pcie@2920000 {
+		compatible = "ti,j784s4-pcie-host";
+		reg = <0x00 0x02920000 0x00 0x1000>,
+		      <0x00 0x02927000 0x00 0x400>,
+		      <0x00 0x0e000000 0x00 0x00800000>,
+		      <0x44 0x00000000 0x00 0x00001000>;
+		ranges = <0x01000000 0x0 0x00001000 0x44 0x00001000 0x0 0x0010000>,
+			 <0x02000000 0x0 0x00011000 0x44 0x00011000 0x0 0x7fef000>;
+		reg-names = "intd_cfg", "user_cfg", "reg", "cfg";
+		interrupt-names = "link_state";
+		interrupts = <GIC_SPI 342 IRQ_TYPE_EDGE_RISING>;
+		device_type = "pci";
+		max-link-speed = <3>;
+		num-lanes = <2>;
+		power-domains = <&k3_pds 334 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 334 0>;
 		clock-names = "fck";
-		assigned-clocks = <&k3_clks 265 0>;
-		assigned-clock-parents = <&k3_clks 265 1>;
-		power-domains = <&k3_pds 265 TI_SCI_PD_EXCLUSIVE>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x0 0xff>;
+		vendor-id = <0x104c>;
+		device-id = <0xb012>;
+		msi-map = <0x0 &gic_its 0x20000 0x10000>;
+		dma-coherent;
+		dma-ranges = <0x02000000 0x0 0x0 0x0 0x0 0x10000 0x0>;
+		ti,syscon-pcie-ctrl = <&pcie2_ctrl 0x0>;
 		status = "disabled";
 	};
 
-	mcasp1: mcasp@2b10000 {
-		compatible = "ti,am33xx-mcasp-audio";
-		reg = <0x00 0x02b10000 0x00 0x2000>,
-		      <0x00 0x02b18000 0x00 0x1000>;
-		reg-names = "mpu","dat";
-		interrupts = <GIC_SPI 546 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 547 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "tx", "rx";
-		dmas = <&main_udmap 0xc401>, <&main_udmap 0x4401>;
-		dma-names = "tx", "rx";
-		clocks = <&k3_clks 266 0>;
+	pcie3_rc: pcie@2930000 {
+		compatible = "ti,j784s4-pcie-host";
+		reg = <0x00 0x02930000 0x00 0x1000>,
+		      <0x00 0x02937000 0x00 0x400>,
+		      <0x00 0x0e800000 0x00 0x00800000>,
+		      <0x44 0x10000000 0x00 0x00001000>;
+		ranges = <0x01000000 0x0 0x00001000 0x44 0x10001000 0x0 0x0010000>,
+			 <0x02000000 0x0 0x00011000 0x44 0x10011000 0x0 0x7fef000>;
+		reg-names = "intd_cfg", "user_cfg", "reg", "cfg";
+		interrupt-names = "link_state";
+		interrupts = <GIC_SPI 354 IRQ_TYPE_EDGE_RISING>;
+		device_type = "pci";
+		max-link-speed = <3>;
+		num-lanes = <2>;
+		power-domains = <&k3_pds 335 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 335 0>;
 		clock-names = "fck";
-		assigned-clocks = <&k3_clks 266 0>;
-		assigned-clock-parents = <&k3_clks 266 1>;
-		power-domains = <&k3_pds 266 TI_SCI_PD_EXCLUSIVE>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x0 0xff>;
+		vendor-id = <0x104c>;
+		device-id = <0xb012>;
+		msi-map = <0x0 &gic_its 0x30000 0x10000>;
+		dma-coherent;
+		dma-ranges = <0x02000000 0x0 0x0 0x0 0x0 0x10000 0x0>;
+		ti,syscon-pcie-ctrl = <&pcie3_ctrl 0x0>;
 		status = "disabled";
 	};
 
-	mcasp2: mcasp@2b20000 {
-		compatible = "ti,am33xx-mcasp-audio";
-		reg = <0x00 0x02b20000 0x00 0x2000>,
-		      <0x00 0x02b28000 0x00 0x1000>;
-		reg-names = "mpu","dat";
-		interrupts = <GIC_SPI 548 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 549 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "tx", "rx";
-		dmas = <&main_udmap 0xc402>, <&main_udmap 0x4402>;
-		dma-names = "tx", "rx";
-		clocks = <&k3_clks 267 0>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 267 0>;
-		assigned-clock-parents = <&k3_clks 267 1>;
-		power-domains = <&k3_pds 267 TI_SCI_PD_EXCLUSIVE>;
+	serdes_wiz2: wiz@5020000 {
+		compatible = "ti,j784s4-wiz-10g";
+		ranges = <0x05020000 0x00 0x05020000 0x10000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		power-domains = <&k3_pds 406 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 406 2>, <&k3_clks 406 6>, <&serdes_refclk>, <&k3_clks 406 5>;
+		clock-names = "fck", "core_ref_clk", "ext_ref_clk", "core_ref1_clk";
+		assigned-clocks = <&k3_clks 406 6>;
+		assigned-clock-parents = <&k3_clks 406 10>;
+		num-lanes = <4>;
+		#reset-cells = <1>;
+		#clock-cells = <1>;
 		status = "disabled";
+
+		serdes2: serdes@5020000 {
+			compatible = "ti,j721e-serdes-10g";
+			reg = <0x05020000 0x010000>;
+			reg-names = "torrent_phy";
+			resets = <&serdes_wiz2 0>;
+			reset-names = "torrent_reset";
+			clocks = <&serdes_wiz2 TI_WIZ_PLL0_REFCLK>,
+				 <&serdes_wiz2 TI_WIZ_PHY_EN_REFCLK>;
+			clock-names = "refclk", "phy_en_refclk";
+			assigned-clocks = <&serdes_wiz2 TI_WIZ_PLL0_REFCLK>,
+					  <&serdes_wiz2 TI_WIZ_PLL1_REFCLK>,
+					  <&serdes_wiz2 TI_WIZ_REFCLK_DIG>;
+			assigned-clock-parents = <&k3_clks 406 6>,
+						 <&k3_clks 406 6>,
+						 <&k3_clks 406 6>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			#clock-cells = <1>;
+			status = "disabled";
+		};
 	};
+};
 
-	mcasp3: mcasp@2b30000 {
-		compatible = "ti,am33xx-mcasp-audio";
-		reg = <0x00 0x02b30000 0x00 0x2000>,
-		      <0x00 0x02b38000 0x00 0x1000>;
-		reg-names = "mpu","dat";
-		interrupts = <GIC_SPI 550 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 551 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "tx", "rx";
-		dmas = <&main_udmap 0xc403>, <&main_udmap 0x4403>;
-		dma-names = "tx", "rx";
-		clocks = <&k3_clks 268 0>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 268 0>;
-		assigned-clock-parents = <&k3_clks 268 1>;
-		power-domains = <&k3_pds 268 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
+&scm_conf {
+	pcie2_ctrl: pcie2-ctrl@4078 {
+		compatible = "ti,j784s4-pcie-ctrl", "syscon";
+		reg = <0x4078 0x4>;
 	};
 
-	mcasp4: mcasp@2b40000 {
-		compatible = "ti,am33xx-mcasp-audio";
-		reg = <0x00 0x02b40000 0x00 0x2000>,
-		      <0x00 0x02b48000 0x00 0x1000>;
-		reg-names = "mpu","dat";
-		interrupts = <GIC_SPI 552 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 553 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "tx", "rx";
-		dmas = <&main_udmap 0xc404>, <&main_udmap 0x4404>;
-		dma-names = "tx", "rx";
-		clocks = <&k3_clks 269 0>;
-		clock-names = "fck";
-		assigned-clocks = <&k3_clks 269 0>;
-		assigned-clock-parents = <&k3_clks 269 1>;
-		power-domains = <&k3_pds 269 TI_SCI_PD_EXCLUSIVE>;
-		status = "disabled";
+	pcie3_ctrl: pcie3-ctrl@407c {
+		compatible = "ti,j784s4-pcie-ctrl", "syscon";
+		reg = <0x407c 0x4>;
 	};
 };
diff --git a/arch/arm64/boot/dts/ti/k3-j784s4.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4.dtsi
index 73cc3c1fec08..f5afa32157cb 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4.dtsi
@@ -8,18 +8,11 @@
  *
  */
 
-#include <dt-bindings/interrupt-controller/irq.h>
-#include <dt-bindings/interrupt-controller/arm-gic.h>
-#include <dt-bindings/soc/ti,sci_pm_domain.h>
-
-#include "k3-pinctrl.h"
+#include "k3-j784s4-j742s2-common.dtsi"
 
 / {
 	model = "Texas Instruments K3 J784S4 SoC";
 	compatible = "ti,j784s4";
-	interrupt-parent = <&gic500>;
-	#address-cells = <2>;
-	#size-cells = <2>;
 
 	cpus {
 		#address-cells = <1>;
@@ -174,132 +167,6 @@ cpu7: cpu@103 {
 			next-level-cache = <&L2_1>;
 		};
 	};
-
-	L2_0: l2-cache0 {
-		compatible = "cache";
-		cache-level = <2>;
-		cache-unified;
-		cache-size = <0x200000>;
-		cache-line-size = <64>;
-		cache-sets = <1024>;
-		next-level-cache = <&msmc_l3>;
-	};
-
-	L2_1: l2-cache1 {
-		compatible = "cache";
-		cache-level = <2>;
-		cache-unified;
-		cache-size = <0x200000>;
-		cache-line-size = <64>;
-		cache-sets = <1024>;
-		next-level-cache = <&msmc_l3>;
-	};
-
-	msmc_l3: l3-cache0 {
-		compatible = "cache";
-		cache-level = <3>;
-		cache-unified;
-	};
-
-	firmware {
-		optee {
-			compatible = "linaro,optee-tz";
-			method = "smc";
-		};
-
-		psci: psci {
-			compatible = "arm,psci-1.0";
-			method = "smc";
-		};
-	};
-
-	a72_timer0: timer-cl0-cpu0 {
-		compatible = "arm,armv8-timer";
-		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>, /* cntpsirq */
-			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>, /* cntpnsirq */
-			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>, /* cntvirq */
-			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>; /* cnthpirq */
-	};
-
-	pmu: pmu {
-		compatible = "arm,cortex-a72-pmu";
-		/* Recommendation from GIC500 TRM Table A.3 */
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
-	};
-
-	cbass_main: bus@100000 {
-		bootph-all;
-		compatible = "simple-bus";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges = <0x00 0x00100000 0x00 0x00100000 0x00 0x00020000>, /* ctrl mmr */
-			 <0x00 0x00600000 0x00 0x00600000 0x00 0x00031100>, /* GPIO */
-			 <0x00 0x00700000 0x00 0x00700000 0x00 0x00001000>, /* ESM */
-			 <0x00 0x01000000 0x00 0x01000000 0x00 0x0d000000>, /* Most peripherals */
-			 <0x00 0x04210000 0x00 0x04210000 0x00 0x00010000>, /* VPU0 */
-			 <0x00 0x04220000 0x00 0x04220000 0x00 0x00010000>, /* VPU1 */
-			 <0x00 0x0d000000 0x00 0x0d000000 0x00 0x00800000>, /* PCIe0 Core*/
-			 <0x00 0x0d800000 0x00 0x0d800000 0x00 0x00800000>, /* PCIe1 Core*/
-			 <0x00 0x0e000000 0x00 0x0e000000 0x00 0x00800000>, /* PCIe2 Core*/
-			 <0x00 0x0e800000 0x00 0x0e800000 0x00 0x00800000>, /* PCIe3 Core*/
-			 <0x00 0x10000000 0x00 0x10000000 0x00 0x08000000>, /* PCIe0 DAT0 */
-			 <0x00 0x18000000 0x00 0x18000000 0x00 0x08000000>, /* PCIe1 DAT0 */
-			 <0x00 0x64800000 0x00 0x64800000 0x00 0x0070c000>, /* C71_1 */
-			 <0x00 0x65800000 0x00 0x65800000 0x00 0x0070c000>, /* C71_2 */
-			 <0x00 0x66800000 0x00 0x66800000 0x00 0x0070c000>, /* C71_3 */
-			 <0x00 0x67800000 0x00 0x67800000 0x00 0x0070c000>, /* C71_4 */
-			 <0x00 0x6f000000 0x00 0x6f000000 0x00 0x00310000>, /* A72 PERIPHBASE */
-			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00400000>, /* MSMC RAM */
-			 <0x00 0x30000000 0x00 0x30000000 0x00 0x0c400000>, /* MAIN NAVSS */
-			 <0x40 0x00000000 0x40 0x00000000 0x01 0x00000000>, /* PCIe0 DAT1 */
-			 <0x41 0x00000000 0x41 0x00000000 0x01 0x00000000>, /* PCIe1 DAT1 */
-			 <0x42 0x00000000 0x42 0x00000000 0x01 0x00000000>, /* PCIe2 DAT1 */
-			 <0x43 0x00000000 0x43 0x00000000 0x01 0x00000000>, /* PCIe3 DAT1 */
-			 <0x44 0x00000000 0x44 0x00000000 0x00 0x08000000>, /* PCIe2 DAT0 */
-			 <0x44 0x10000000 0x44 0x10000000 0x00 0x08000000>, /* PCIe3 DAT0 */
-			 <0x4e 0x20000000 0x4e 0x20000000 0x00 0x00080000>, /* GPU */
-
-			 /* MCUSS_WKUP Range */
-			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
-			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>,
-			 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>,
-			 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>,
-			 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>,
-			 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>,
-			 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>,
-			 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>,
-			 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>,
-			 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>,
-			 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>,
-			 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>,
-			 <0x07 0x00000000 0x07 0x00000000 0x01 0x00000000>;
-
-		cbass_mcu_wakeup: bus@28380000 {
-			bootph-all;
-			compatible = "simple-bus";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges = <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>, /* MCU NAVSS*/
-				 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>, /* First peripheral window */
-				 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>, /* CTRL_MMR0 */
-				 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>, /* MCU R5F Core0 */
-				 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>, /* MCU R5F Core1 */
-				 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>, /* MCU SRAM */
-				 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>, /* WKUP peripheral window */
-				 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>, /* MMRs, remaining NAVSS */
-				 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>, /* CPSW */
-				 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>, /* OSPI register space */
-				 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>, /* FSS OSPI0/1 data region 0 */
-				 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>, /* FSS OSPI0 data region 3 */
-				 <0x07 0x00000000 0x07 0x00000000 0x01 0x00000000>; /* FSS OSPI1 data region 3*/
-		};
-	};
-
-	thermal_zones: thermal-zones {
-		#include "k3-j784s4-thermal.dtsi"
-	};
 };
 
-/* Now include peripherals from each bus segment */
 #include "k3-j784s4-main.dtsi"
-#include "k3-j784s4-mcu-wakeup.dtsi"

-- 
2.46.0


