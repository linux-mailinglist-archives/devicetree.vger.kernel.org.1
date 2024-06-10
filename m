Return-Path: <devicetree+bounces-74106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDF2902023
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 13:10:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 32821B22E60
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 11:10:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A7E779DC7;
	Mon, 10 Jun 2024 11:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="sHJHyBXT"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEEDFF9E8
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 11:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718017810; cv=none; b=qnQz5k6NKgrS5XT+3GmuHhnpPHjg++eGqES8ljeCdyFg1m96Ir3TGWmcrUdLJcvuw5t4sFc+uhMYcZanAqbZCsxGPMlZhtQV01IZSbQS+qvQa5g3+oEUjwxs03KNKhxjmjQuyoNCgNSl1UHggVKkXG3f3EofwmFKAtQCg7leM50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718017810; c=relaxed/simple;
	bh=KLTX+FrN+/X5Pjo7hasr1G+U/5MVxG90GAbohrK1Lcw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=r36YKt0ebFiDIQL4CCSAdmNNXzw01erSnjTrCerFe+K4/w+cebsr3yBIkRECe/YUAOume2sv74CkNB6MO2IPQcsekUyBrNBU4pCyeegB9AX/ULFO0ai4RGwYwn4TxwvsyqbhoOM2+CEN8nObk1b6DtqGVbZBUJEXXLEaA4krFis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=sHJHyBXT; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1718017808; x=1749553808;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=KLTX+FrN+/X5Pjo7hasr1G+U/5MVxG90GAbohrK1Lcw=;
  b=sHJHyBXTSy2yHxHPx12tle+o3kjnoupkhIAoakjykqMnT64qTwlOxIlt
   JUf+l3qWtO58TEpW1oQROVC9nPqCxkhodNkGA0T/zsaAqYj30UVor5H3H
   3eO7T7GkEFgglW2CO7Mpqv3oti7xGXSK933UGJ8pz1KdzR6tHx7px5cVn
   UiHnG2v7rEibHvoYX+2Gqoag/xtFARizl4Kwkq3JpApLVsbppDNqbo7ye
   KbVvl4+n1gOQudLhaQzAP68WqJI1sfYUM584oAfQIXhAsTQS7e5s2bRI8
   CAvy4vqlPSrLshNzbga5IYJ2ln3/ukAsjtC6vFDUlemltOI7I1s0Ql33Q
   A==;
X-CSE-ConnectionGUID: LxG2JZT/RDyTTRgbHxmFoA==
X-CSE-MsgGUID: v1Ns5dfRR+6+wMyyTaxnhA==
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; 
   d="scan'208";a="29623984"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 10 Jun 2024 04:10:07 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 10 Jun 2024 04:09:43 -0700
Received: from wendy.microchip.com (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Mon, 10 Jun 2024 04:09:41 -0700
From: Conor Dooley <conor.dooley@microchip.com>
To: <linux-riscv@lists.infradead.org>
CC: <conor@kernel.org>, <conor.dooley@microchip.com>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, "Daire
 McNamara" <daire.mcnamara@microchip.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Samuel Holland
	<samuel.holland@sifive.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v1 4/5] riscv: dts: microchip: modify memory map & add dma-ranges for pcie on icicle
Date: Mon, 10 Jun 2024 12:09:16 +0100
Message-ID: <20240610-unhealthy-squeamish-db1039449a32@wendy>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240610-vertical-frugally-a92a55427dd9@wendy>
References: <20240610-vertical-frugally-a92a55427dd9@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6818; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=KLTX+FrN+/X5Pjo7hasr1G+U/5MVxG90GAbohrK1Lcw=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDGlp925Pi7651timSFPqf4/U7bYL+3zZkuuYzhz9s2Xmussh m2aldJSyMIhxMMiKKbIk3u5rkVr/x2WHc89bmDmsTCBDGLg4BWAiZ9gY/nD/CV8a3LqWJTvgkcvL+n 0XnbySzC9crFMQ1HZ9d67t621Ghnm++wRuuEwS/djpdvFaXa3/nDvSukX2kt5Nf2cHzvppwAsA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Since 2022/02, the main reference design for the Icicle Kit uses a
non-coherent memory configuration for PCIe, and a shim in the FPGA
fabric, in response to customer requests. As a result, the PCIe root
port has not been usable in mainline since that point in time.

The memory apertures on the reference design have been configured so
that the base of each aperture is mapped to 0x0 in physical memory, a
completely "overlaid" approach. This enables the PCIe root port to
operate in a non-coherent manner (the CPUs/harts use the cached variant
of a particular actual DDR address, the PCIe root port uses the
non-cached variant of the same address. As an example, to access DDR
location 0, the FIC, to which the PCIe rootport is attached, would use
14'0000'0000 and the CPUs would use 10'0000'0000. In this example, the
FIC is responsible for the upper 32-bits of the AXI address and the
root-port (as it is limited to 32-bits on the AXI-S interface) is
responsible for the lower 32-bits of the AXI address. The FPGA designs
utilizing this approach use a simple "shim" to statically set the upper
32-bits of all AXI-S addresses to '000'0014'.

Describe some regions of non-cached memory (and immediately reserve them,
as PolarFire SoC does not support atomics in non-cached memory) so that
we can configure dma-ranges and dma-pools to support a "shim" that will
shift addresses in AXI transactions from the PCIe root port into the
0x14_0000_0000 non-cached region of memory.

The price paid for this is a reduction in the overall system memory.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../dts/microchip/mpfs-icicle-kit-fabric.dtsi | 75 ++++++++++++-------
 .../boot/dts/microchip/mpfs-icicle-kit.dts    | 44 +++++++++--
 2 files changed, 84 insertions(+), 35 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
index 1069134f2e12a..33e76db965bbc 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
@@ -26,33 +26,54 @@ i2c2: i2c@40000200 {
 		status = "disabled";
 	};
 
-	pcie: pcie@3000000000 {
-		compatible = "microchip,pcie-host-1.0";
-		#address-cells = <0x3>;
-		#interrupt-cells = <0x1>;
-		#size-cells = <0x2>;
-		device_type = "pci";
-		reg = <0x30 0x0 0x0 0x8000000>, <0x0 0x43000000 0x0 0x10000>;
-		reg-names = "cfg", "apb";
-		bus-range = <0x0 0x7f>;
-		interrupt-parent = <&plic>;
-		interrupts = <119>;
-		interrupt-map = <0 0 0 1 &pcie_intc 0>,
-				<0 0 0 2 &pcie_intc 1>,
-				<0 0 0 3 &pcie_intc 2>,
-				<0 0 0 4 &pcie_intc 3>;
-		interrupt-map-mask = <0 0 0 7>;
-		clocks = <&ccc_nw CLK_CCC_PLL0_OUT1>, <&ccc_nw CLK_CCC_PLL0_OUT3>;
-		clock-names = "fic1", "fic3";
-		ranges = <0x3000000 0x0 0x8000000 0x30 0x8000000 0x0 0x80000000>;
-		dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000 0x1 0x00000000>;
-		msi-parent = <&pcie>;
-		msi-controller;
-		status = "disabled";
-		pcie_intc: interrupt-controller {
-			#address-cells = <0>;
-			#interrupt-cells = <1>;
-			interrupt-controller;
+	fabric-pcie-bus@3000000000 {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges = <0x0 0x40000000 0x0 0x40000000 0x0 0x20000000>,
+			 <0x30 0x0 0x30 0x0 0x10 0x0>;
+		dma-ranges = <0x0 0x0 0x0 0x80000000 0x0 0x6000000>,
+			     <0x0 0x6000000 0x0 0xc6000000 0x0 0x4000000>,
+			     <0x0 0xa000000 0x0 0x8a000000 0x0 0x8000000>,
+			     <0x0 0x12000000 0x14 0x12000000 0x0 0x10000000>,
+			     <0x0 0x22000000 0x10 0x22000000 0x0 0x5e000000>;
+
+		pcie: pcie@3000000000 {
+			compatible = "microchip,pcie-host-1.0";
+			#address-cells = <0x3>;
+			#interrupt-cells = <0x1>;
+			#size-cells = <0x2>;
+			device_type = "pci";
+			dma-noncoherent;
+			reg = <0x30 0x0 0x0 0x8000000>, <0x0 0x43000000 0x0 0x10000>;
+			reg-names = "cfg", "apb";
+			bus-range = <0x0 0x7f>;
+			interrupt-parent = <&plic>;
+			interrupts = <119>;
+			interrupt-map = <0 0 0 1 &pcie_intc 0>,
+					<0 0 0 2 &pcie_intc 1>,
+					<0 0 0 3 &pcie_intc 2>,
+					<0 0 0 4 &pcie_intc 3>;
+			interrupt-map-mask = <0 0 0 7>;
+			clocks = <&ccc_nw CLK_CCC_PLL0_OUT1>, <&ccc_nw CLK_CCC_PLL0_OUT3>;
+			clock-names = "fic1", "fic3";
+			ranges = <0x43000000 0x0 0x9000000 0x30 0x9000000 0x0 0xf000000>,
+				 <0x1000000 0x0 0x8000000 0x30 0x8000000 0x0 0x1000000>,
+				 <0x3000000 0x0 0x18000000 0x30 0x18000000 0x0 0x70000000>;
+			dma-ranges = <0x3000000 0x0 0x80000000 0x0 0x0 0x0 0x6000000>,
+				     <0x3000000 0x0 0x86000000 0x0 0x6000000 0x0 0x4000000>,
+				     <0x3000000 0x0 0x8a000000 0x0 0xa000000 0x0 0x8000000>,
+				     <0x3000000 0x0 0x92000000 0x0 0x12000000 0x0 0x10000000>,
+				     <0x3000000 0x0 0xa2000000 0x0 0x22000000 0x0 0x5e000000>;
+			msi-parent = <&pcie>;
+			msi-controller;
+			status = "disabled";
+
+			pcie_intc: interrupt-controller {
+				#address-cells = <0>;
+				#interrupt-cells = <1>;
+				interrupt-controller;
+			};
 		};
 	};
 
diff --git a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
index f80df225f72b4..6c9340992e9eb 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
+++ b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
@@ -54,16 +54,29 @@ led-4 {
 		};
 	};
 
-	ddrc_cache_lo: memory@80000000 {
+	memory@80000000 {
 		device_type = "memory";
-		reg = <0x0 0x80000000 0x0 0x40000000>;
-		status = "okay";
+		reg = <0x0 0x80000000 0x0 0x6000000>;
 	};
 
-	ddrc_cache_hi: memory@1040000000 {
+	memory@8a000000 {
 		device_type = "memory";
-		reg = <0x10 0x40000000 0x0 0x40000000>;
-		status = "okay";
+		reg = <0x0 0x8a000000 0x0 0x8000000>;
+	};
+
+	memory@c4000000 {
+		device_type = "memory";
+		reg = <0x0 0xc6000000 0x0 0x4000000>;
+	};
+
+	memory@1022000000 {
+		device_type = "memory";
+		reg = <0x10 0x22000000 0x0 0x5e000000>;
+	};
+
+	memory@1412000000 {
+		device_type = "memory";
+		reg = <0x14 0x12000000 0x0 0x10000000>;
 	};
 
 	reserved-memory {
@@ -71,10 +84,25 @@ reserved-memory {
 		#size-cells = <2>;
 		ranges;
 
-		hss_payload: region@BFC00000 {
-			reg = <0x0 0xBFC00000 0x0 0x400000>;
+		hss_payload: region@103fc00000 {
+			reg = <0x10 0x3fc00000 0x0 0x400000>;
 			no-map;
 		};
+
+		non-cached-low-buffer {
+			compatible = "shared-dma-pool";
+			size = <0x0 0x4000000>;
+			no-map;
+			alloc-ranges = <0x0 0xc6000000 0x0 0x4000000>;
+		};
+
+		non-cached-high-buffer {
+			compatible = "shared-dma-pool";
+			size = <0x0 0x10000000>;
+			no-map;
+			linux,dma-default;
+			alloc-ranges = <0x14 0x12000000 0x0 0x10000000>;
+		};
 	};
 };
 
-- 
2.43.2


