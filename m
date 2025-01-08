Return-Path: <devicetree+bounces-136828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B28A3A06827
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 23:21:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BFE517A2A45
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 22:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFD2A1E1C3B;
	Wed,  8 Jan 2025 22:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="DaLXeEp3"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AADD2185B6D;
	Wed,  8 Jan 2025 22:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736374868; cv=none; b=MyRfPhF5GkoBGFkCnp6L4zxTLnwYfeygmWYZ5Z411+pIvwep2I2c31uVdJRfRO+entsZseLrkfATrEXbV3iXCYh0tdZ1f/icnoeaDufIGhag0Os+vbjArS0fNVjxo6sKdiC+jOGvzTvvlx7PYgP3L0jKKR+7gyhkE4bBBSTSfQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736374868; c=relaxed/simple;
	bh=d2YrRJQoCF186p7pw2OtqgzcKmf3NOzq6pd1lbivOZU=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=bmglYla/hQOo2allQVIf4gb2/Kse32tWoaDH1Vuy2R2kSFEOQM2VR4i8HO2Fy/imbiK1/WoePRbZ3Dw2WVsr3K2PfHh+YEdvQzeg8xjFXmmhxe7p7Pi+Gd1xJLyTbFK8pOpdy/gITsZl4Yfqp+C6IV6OznTwqHZPOGb90cdlZJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=DaLXeEp3; arc=none smtp.client-ip=198.47.19.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 508MKma12790219
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 8 Jan 2025 16:20:48 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736374848;
	bh=YyrkJBq2mH1yISy7/JG6kFRBJKpgaS5P9ogz7UdLxLo=;
	h=From:To:CC:Subject:Date;
	b=DaLXeEp3AZRS46UfzxpQboM561nzPLkvvnMgE8J2BZJeAKa22tr8VqPydrG0zLy8T
	 Hbt/lEGbbM5DXjw024vtMZJ13TkE7jnsnI16t2nGZRwEAlWx3RKG9qZVVZCgTXAEBJ
	 mtQ6DG11GMYtFGlOY2R22tySHyd7+EWJqv1Pmd4M=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 508MKmp1078933;
	Wed, 8 Jan 2025 16:20:48 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 8
 Jan 2025 16:20:48 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 8 Jan 2025 16:20:48 -0600
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 508MKmXt007918;
	Wed, 8 Jan 2025 16:20:48 -0600
From: Judith Mendez <jm@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>
CC: Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH] arm64: dts: ti: k3-am625: Add PRUSS-M node
Date: Wed, 8 Jan 2025 16:20:48 -0600
Message-ID: <20250108222048.818835-1-jm@ti.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

From: Kishon Vijay Abraham I <kishon@ti.com>

Add the DT node for the PRUSS-M processor subsystem that is present
on the K3 AM62x SoCs. The K3 AM62x family of SoC has one PRUSS-M
instance and it has two Programmable Real-Time Units (PRU0 and PRU1).

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Signed-off-by: Hari Nagalla <hnagalla@ti.com>
[ Judith: Fix pruss_iclk id for pruss_coreclk_mux ]
Signed-off-by: Judith Mendez <jm@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62-main.dtsi | 90 ++++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
index 7d355aa73ea21..ee53e663b5bdb 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
@@ -1079,6 +1079,96 @@ dphy0: phy@30110000 {
 		status = "disabled";
 	};
 
+	pruss: pruss@30040000 {
+		compatible = "ti,am625-pruss";
+		reg = <0x00 0x30040000 0x00 0x80000>;
+		power-domains = <&k3_pds 81 TI_SCI_PD_EXCLUSIVE>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x00 0x30040000 0x80000>;
+
+		pruss_mem: memories@0 {
+			reg = <0x0 0x2000>,
+			      <0x2000 0x2000>,
+			      <0x10000 0x10000>;
+			reg-names = "dram0", "dram1", "shrdram2";
+		};
+
+		pruss_cfg: cfg@26000 {
+			compatible = "ti,pruss-cfg", "syscon";
+			reg = <0x26000 0x200>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x26000 0x2000>;
+
+			clocks {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				pruss_coreclk_mux: coreclk-mux@3c {
+					reg = <0x3c>;
+					#clock-cells = <0>;
+					clocks = <&k3_clks 81 0>,  /* pruss_core_clk */
+						 <&k3_clks 81 14>; /* pruss_iclk */
+					assigned-clocks = <&pruss_coreclk_mux>;
+					assigned-clock-parents = <&k3_clks 81 14>;
+				};
+
+				pruss_iepclk_mux: iepclk-mux@30 {
+					reg = <0x30>;
+					#clock-cells = <0>;
+					clocks = <&k3_clks 81 3>,	/* pruss_iep_clk */
+						 <&pruss_coreclk_mux>;	/* pruss_coreclk_mux */
+					assigned-clocks = <&pruss_iepclk_mux>;
+					assigned-clock-parents = <&pruss_coreclk_mux>;
+				};
+			};
+		};
+
+		pruss_intc: interrupt-controller@20000 {
+			compatible = "ti,pruss-intc";
+			reg = <0x20000 0x2000>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+			interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "host_intr0", "host_intr1",
+					  "host_intr2", "host_intr3",
+					  "host_intr4", "host_intr5",
+					  "host_intr6", "host_intr7";
+		};
+
+		pru0: pru@34000 {
+			compatible = "ti,am625-pru";
+			reg = <0x34000 0x3000>,
+			      <0x22000 0x100>,
+			      <0x22400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "am62x-pru0-fw";
+			interrupt-parent = <&pruss_intc>;
+			interrupts = <16 2 2>;
+			interrupt-names = "vring";
+		};
+
+		pru1: pru@38000 {
+			compatible = "ti,am625-pru";
+			reg = <0x38000 0x3000>,
+			      <0x24000 0x100>,
+			      <0x24400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "am62x-pru1-fw";
+			interrupt-parent = <&pruss_intc>;
+			interrupts = <18 3 3>;
+			interrupt-names = "vring";
+		};
+	};
+
 	gpmc0: memory-controller@3b000000 {
 		compatible = "ti,am64-gpmc";
 		power-domains = <&k3_pds 80 TI_SCI_PD_EXCLUSIVE>;
-- 
2.47.1


