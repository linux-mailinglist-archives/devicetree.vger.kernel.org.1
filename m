Return-Path: <devicetree+bounces-56865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE11F89AC6E
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 19:29:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4DA141F214F1
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 17:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB4893F9F6;
	Sat,  6 Apr 2024 17:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="osqaEnqk"
X-Original-To: devicetree@vger.kernel.org
Received: from out-177.mta0.migadu.com (out-177.mta0.migadu.com [91.218.175.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA8421CFB9
	for <devicetree@vger.kernel.org>; Sat,  6 Apr 2024 17:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712424538; cv=none; b=MOtMo33xq16Q2rFsgJg1Lc64NyTCZ4iNgGiRLC6R9KbEtRYL/jxSNPrgdOw0YQ2XXPej2R3zlCWk4qrIXXBfyAXw9YqOZ/f3eVxWh6J49cu+D1AFbsTnbNuNtQfo9dHY1bcScMjTSFqEHxkiD1hlsN+959nBbimm0dBX37yk8Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712424538; c=relaxed/simple;
	bh=ZhutpuIhXSb79sQj6LJ2vpyG4PaJE4KLJo7k8fYwcs8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=m8L+sPNyru/M8wCLbXJEHuLtSCTCnxkcCjT8GS/HUsMNB5yaLSTHBoEjnLAyyHEj11oLBvgeVbb8UNcxMfe2/HzwglwZcFHd5+q9fIRNlDY02PtfIdLjmEgHHVXUPnHT8WH+aTW8Ac3EyQyph+wVudVcr733SI5sZ4iGuZlUV+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=osqaEnqk; arc=none smtp.client-ip=91.218.175.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1712424533;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=wmteI53yHflokmy3bcAqjXJSf6/ioCpsjf02iKZumUg=;
	b=osqaEnqku9jhzCWOX1IrDw4/5d/+bjrjlWC3dj7QOO5bcFbm8b5dEJVfHAUXVRHH7J05Sp
	LP20Bq9/nyE/bglxbxnI2d54LEQ/Mkx0QAEVj2PIbO+zbpzp+52Kpwhc5anilrOLoWyMNH
	HNb6sxqcz4Ja1yktZSEEMaiIJbRjmuVKHYZnyWNTAgdvvXf0jiKrgfTo+HWlLBrtqXvSPB
	CiZxj6T08diI1faxWrN48x0a2thBj/mpYNpTdn2rehB/81c58TapAk+lUPMleSg9y30j4x
	lDVqpSg9ke7Ym0NChpflhNxSA/aS24oEraB2nlReMMGJHgtRP7AqUUM40Emmeg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH] arm64: dts: rockchip: rk3588s: Fix ordering of nodes
Date: Sat,  6 Apr 2024 19:28:04 +0200
Message-ID: <20240406172821.34173-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Fix the ordering of the main nodes by sorting them alphabetically and
then the ones with a memory address sequentially by that address.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 304 +++++++++++-----------
 1 file changed, 152 insertions(+), 152 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 89d40cff635f..ac5bd630f155 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -347,6 +347,11 @@ l3_cache: l3-cache {
 		};
 	};
 
+	display_subsystem: display-subsystem {
+		compatible = "rockchip,display-subsystem";
+		ports = <&vop_out>;
+	};
+
 	firmware {
 		optee: optee {
 			compatible = "linaro,optee-tz";
@@ -394,11 +399,6 @@ spll: clock-0 {
 		#clock-cells = <0>;
 	};
 
-	display_subsystem: display-subsystem {
-		compatible = "rockchip,display-subsystem";
-		ports = <&vop_out>;
-	};
-
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_HIGH 0>,
@@ -436,6 +436,62 @@ scmi_shmem: sram@0 {
 		};
 	};
 
+	gpu: gpu@fb000000 {
+		compatible = "rockchip,rk3588-mali", "arm,mali-valhall-csf";
+		reg = <0x0 0xfb000000 0x0 0x200000>;
+		#cooling-cells = <2>;
+		assigned-clocks = <&scmi_clk SCMI_CLK_GPU>;
+		assigned-clock-rates = <200000000>;
+		clocks = <&cru CLK_GPU>, <&cru CLK_GPU_COREGROUP>,
+			 <&cru CLK_GPU_STACKS>;
+		clock-names = "core", "coregroup", "stacks";
+		dynamic-power-coefficient = <2982>;
+		interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "job", "mmu", "gpu";
+		operating-points-v2 = <&gpu_opp_table>;
+		power-domains = <&power RK3588_PD_GPU>;
+		status = "disabled";
+
+		gpu_opp_table: opp-table {
+			compatible = "operating-points-v2";
+
+			opp-300000000 {
+				opp-hz = /bits/ 64 <300000000>;
+				opp-microvolt = <675000 675000 850000>;
+			};
+			opp-400000000 {
+				opp-hz = /bits/ 64 <400000000>;
+				opp-microvolt = <675000 675000 850000>;
+			};
+			opp-500000000 {
+				opp-hz = /bits/ 64 <500000000>;
+				opp-microvolt = <675000 675000 850000>;
+			};
+			opp-600000000 {
+				opp-hz = /bits/ 64 <600000000>;
+				opp-microvolt = <675000 675000 850000>;
+			};
+			opp-700000000 {
+				opp-hz = /bits/ 64 <700000000>;
+				opp-microvolt = <700000 700000 850000>;
+			};
+			opp-800000000 {
+				opp-hz = /bits/ 64 <800000000>;
+				opp-microvolt = <750000 750000 850000>;
+			};
+			opp-900000000 {
+				opp-hz = /bits/ 64 <900000000>;
+				opp-microvolt = <800000 800000 850000>;
+			};
+			opp-1000000000 {
+				opp-hz = /bits/ 64 <1000000000>;
+				opp-microvolt = <850000 850000 850000>;
+			};
+		};
+	};
+
 	usb_host0_ehci: usb@fc800000 {
 		compatible = "rockchip,rk3588-ehci", "generic-ehci";
 		reg = <0x0 0xfc800000 0x0 0x40000>;
@@ -501,62 +557,6 @@ usb_host2_xhci: usb@fcd00000 {
 		status = "disabled";
 	};
 
-	gpu: gpu@fb000000 {
-		compatible = "rockchip,rk3588-mali", "arm,mali-valhall-csf";
-		reg = <0x0 0xfb000000 0x0 0x200000>;
-		#cooling-cells = <2>;
-		assigned-clocks = <&scmi_clk SCMI_CLK_GPU>;
-		assigned-clock-rates = <200000000>;
-		clocks = <&cru CLK_GPU>, <&cru CLK_GPU_COREGROUP>,
-			 <&cru CLK_GPU_STACKS>;
-		clock-names = "core", "coregroup", "stacks";
-		dynamic-power-coefficient = <2982>;
-		interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "job", "mmu", "gpu";
-		operating-points-v2 = <&gpu_opp_table>;
-		power-domains = <&power RK3588_PD_GPU>;
-		status = "disabled";
-
-		gpu_opp_table: opp-table {
-			compatible = "operating-points-v2";
-
-			opp-300000000 {
-				opp-hz = /bits/ 64 <300000000>;
-				opp-microvolt = <675000 675000 850000>;
-			};
-			opp-400000000 {
-				opp-hz = /bits/ 64 <400000000>;
-				opp-microvolt = <675000 675000 850000>;
-			};
-			opp-500000000 {
-				opp-hz = /bits/ 64 <500000000>;
-				opp-microvolt = <675000 675000 850000>;
-			};
-			opp-600000000 {
-				opp-hz = /bits/ 64 <600000000>;
-				opp-microvolt = <675000 675000 850000>;
-			};
-			opp-700000000 {
-				opp-hz = /bits/ 64 <700000000>;
-				opp-microvolt = <700000 700000 850000>;
-			};
-			opp-800000000 {
-				opp-hz = /bits/ 64 <800000000>;
-				opp-microvolt = <750000 750000 850000>;
-			};
-			opp-900000000 {
-				opp-hz = /bits/ 64 <900000000>;
-				opp-microvolt = <800000 800000 850000>;
-			};
-			opp-1000000000 {
-				opp-hz = /bits/ 64 <1000000000>;
-				opp-microvolt = <850000 850000 850000>;
-			};
-		};
-	};
-
 	pmu1grf: syscon@fd58a000 {
 		compatible = "rockchip,rk3588-pmugrf", "syscon", "simple-mfd";
 		reg = <0x0 0xfd58a000 0x0 0x10000>;
@@ -702,74 +702,6 @@ i2c0: i2c@fd880000 {
 		status = "disabled";
 	};
 
-	vop: vop@fdd90000 {
-		compatible = "rockchip,rk3588-vop";
-		reg = <0x0 0xfdd90000 0x0 0x4200>, <0x0 0xfdd95000 0x0 0x1000>;
-		reg-names = "vop", "gamma-lut";
-		interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
-		clocks = <&cru ACLK_VOP>,
-			 <&cru HCLK_VOP>,
-			 <&cru DCLK_VOP0>,
-			 <&cru DCLK_VOP1>,
-			 <&cru DCLK_VOP2>,
-			 <&cru DCLK_VOP3>,
-			 <&cru PCLK_VOP_ROOT>;
-		clock-names = "aclk",
-			      "hclk",
-			      "dclk_vp0",
-			      "dclk_vp1",
-			      "dclk_vp2",
-			      "dclk_vp3",
-			      "pclk_vop";
-		iommus = <&vop_mmu>;
-		power-domains = <&power RK3588_PD_VOP>;
-		rockchip,grf = <&sys_grf>;
-		rockchip,vop-grf = <&vop_grf>;
-		rockchip,vo1-grf = <&vo1_grf>;
-		rockchip,pmu = <&pmu>;
-		status = "disabled";
-
-		vop_out: ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			vp0: port@0 {
-				#address-cells = <1>;
-				#size-cells = <0>;
-				reg = <0>;
-			};
-
-			vp1: port@1 {
-				#address-cells = <1>;
-				#size-cells = <0>;
-				reg = <1>;
-			};
-
-			vp2: port@2 {
-				#address-cells = <1>;
-				#size-cells = <0>;
-				reg = <2>;
-			};
-
-			vp3: port@3 {
-				#address-cells = <1>;
-				#size-cells = <0>;
-				reg = <3>;
-			};
-		};
-	};
-
-	vop_mmu: iommu@fdd97e00 {
-		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
-		reg = <0x0 0xfdd97e00 0x0 0x100>, <0x0 0xfdd97f00 0x0 0x100>;
-		interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
-		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
-		clock-names = "aclk", "iface";
-		#iommu-cells = <0>;
-		power-domains = <&power RK3588_PD_VOP>;
-		status = "disabled";
-	};
-
 	uart0: serial@fd890000 {
 		compatible = "rockchip,rk3588-uart", "snps,dw-apb-uart";
 		reg = <0x0 0xfd890000 0x0 0x100>;
@@ -1140,6 +1072,87 @@ power-domain@RK3588_PD_SDMMC {
 		};
 	};
 
+	av1d: video-codec@fdc70000 {
+		compatible = "rockchip,rk3588-av1-vpu";
+		reg = <0x0 0xfdc70000 0x0 0x800>;
+		interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vdpu";
+		assigned-clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
+		assigned-clock-rates = <400000000>, <400000000>;
+		clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
+		clock-names = "aclk", "hclk";
+		power-domains = <&power RK3588_PD_AV1>;
+		resets = <&cru SRST_A_AV1>, <&cru SRST_P_AV1>, <&cru SRST_A_AV1_BIU>, <&cru SRST_P_AV1_BIU>;
+	};
+
+	vop: vop@fdd90000 {
+		compatible = "rockchip,rk3588-vop";
+		reg = <0x0 0xfdd90000 0x0 0x4200>, <0x0 0xfdd95000 0x0 0x1000>;
+		reg-names = "vop", "gamma-lut";
+		interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_VOP>,
+			 <&cru HCLK_VOP>,
+			 <&cru DCLK_VOP0>,
+			 <&cru DCLK_VOP1>,
+			 <&cru DCLK_VOP2>,
+			 <&cru DCLK_VOP3>,
+			 <&cru PCLK_VOP_ROOT>;
+		clock-names = "aclk",
+			      "hclk",
+			      "dclk_vp0",
+			      "dclk_vp1",
+			      "dclk_vp2",
+			      "dclk_vp3",
+			      "pclk_vop";
+		iommus = <&vop_mmu>;
+		power-domains = <&power RK3588_PD_VOP>;
+		rockchip,grf = <&sys_grf>;
+		rockchip,vop-grf = <&vop_grf>;
+		rockchip,vo1-grf = <&vo1_grf>;
+		rockchip,pmu = <&pmu>;
+		status = "disabled";
+
+		vop_out: ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			vp0: port@0 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0>;
+			};
+
+			vp1: port@1 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <1>;
+			};
+
+			vp2: port@2 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <2>;
+			};
+
+			vp3: port@3 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <3>;
+			};
+		};
+	};
+
+	vop_mmu: iommu@fdd97e00 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdd97e00 0x0 0x100>, <0x0 0xfdd97f00 0x0 0x100>;
+		interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
+		clock-names = "aclk", "iface";
+		#iommu-cells = <0>;
+		power-domains = <&power RK3588_PD_VOP>;
+		status = "disabled";
+	};
+
 	i2s4_8ch: i2s@fddc0000 {
 		compatible = "rockchip,rk3588-i2s-tdm";
 		reg = <0x0 0xfddc0000 0x0 0x1000>;
@@ -1431,6 +1444,16 @@ qos_vop_m1: qos@fdf82200 {
 		reg = <0x0 0xfdf82200 0x0 0x20>;
 	};
 
+	dfi: dfi@fe060000 {
+		reg = <0x00 0xfe060000 0x00 0x10000>;
+		compatible = "rockchip,rk3588-dfi";
+		interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH 0>;
+		rockchip,pmu = <&pmu1grf>;
+	};
+
 	pcie2x1l1: pcie@fe180000 {
 		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
 		bus-range = <0x30 0x3f>;
@@ -1533,16 +1556,6 @@ pcie2x1l2_intc: legacy-interrupt-controller {
 		};
 	};
 
-	dfi: dfi@fe060000 {
-		reg = <0x00 0xfe060000 0x00 0x10000>;
-		compatible = "rockchip,rk3588-dfi";
-		interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH 0>;
-		rockchip,pmu = <&pmu1grf>;
-	};
-
 	gmac1: ethernet@fe1c0000 {
 		compatible = "rockchip,rk3588-gmac", "snps,dwmac-4.20a";
 		reg = <0x0 0xfe1c0000 0x0 0x10000>;
@@ -2543,19 +2556,6 @@ gpio4: gpio@fec50000 {
 			#interrupt-cells = <2>;
 		};
 	};
-
-	av1d: video-codec@fdc70000 {
-		compatible = "rockchip,rk3588-av1-vpu";
-		reg = <0x0 0xfdc70000 0x0 0x800>;
-		interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "vdpu";
-		assigned-clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
-		assigned-clock-rates = <400000000>, <400000000>;
-		clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
-		clock-names = "aclk", "hclk";
-		power-domains = <&power RK3588_PD_AV1>;
-		resets = <&cru SRST_A_AV1>, <&cru SRST_P_AV1>, <&cru SRST_A_AV1_BIU>, <&cru SRST_P_AV1_BIU>;
-	};
 };
 
 #include "rk3588s-pinctrl.dtsi"

base-commit: c1b1f340dd7db11f273e426e110697551c9f501f
-- 
2.43.0


