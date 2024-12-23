Return-Path: <devicetree+bounces-133639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE5B9FB2AD
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 17:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6301F7A0178
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 16:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 515E41BD9EB;
	Mon, 23 Dec 2024 16:20:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54F541B87C1;
	Mon, 23 Dec 2024 16:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734970845; cv=none; b=NdFbJj4HIpYxNfJVb5EaX0uS7KzUv9eo/F5uO3JSTFSgrMK34LNLh93o9mV84xTCoyHBX4XHjT3MKh3OPBZ0bYYZ8HEFoGirApCG34RykD3wMGmdU2yMgdb2n61M4B9VpOL7QjtPnihW0rNCaeucMLUpLIpNBBcCtKRl5rsUBh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734970845; c=relaxed/simple;
	bh=aijPuCTk9H+OejZhe+Q6Jlf1j80iXMeme0OaugQ6DN4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LU3uYDKX++bkscwm0x16vi9cj0qCbbXo0+aoj5vz87oj2eo0H6EJPIN6hnnNyaJTksn76jUQ4etB0i5tqnQIW+fxbj+fZc8+0kYUxwoM5z3J7vpRljuNUnKCvA/XyH1zHsX5gRFTbm19EjdVRuFXoP/e31JJFxo+E1y3l3nNYlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D46C4150C;
	Mon, 23 Dec 2024 08:21:10 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 971AF3F694;
	Mon, 23 Dec 2024 08:20:40 -0800 (PST)
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
Subject: [PATCH v2 3/4] arm64: dts: morello: Add support for soc dts
Date: Mon, 23 Dec 2024 16:20:28 +0000
Message-ID: <20241223162029.326997-4-vincenzo.frascino@arm.com>
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

Introduce Morello SoC dts.

Note: Morello is at the same time the name of an Architecture [1], an SoC
[2] and a Board [2].
To distinguish in between Architecture/SoC and Board we refer to the first
as arm,morello and to the second as arm,morello-sdp.

[1] https://developer.arm.com/Architectures/Morello
[2] https://www.morello-project.org/

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
 arch/arm64/boot/dts/arm/Makefile        |   1 +
 arch/arm64/boot/dts/arm/morello-sdp.dts | 116 ++++++++++++++++++++++++
 2 files changed, 117 insertions(+)
 create mode 100644 arch/arm64/boot/dts/arm/morello-sdp.dts

diff --git a/arch/arm64/boot/dts/arm/Makefile b/arch/arm64/boot/dts/arm/Makefile
index d908e96d7ddc..869667bef7c0 100644
--- a/arch/arm64/boot/dts/arm/Makefile
+++ b/arch/arm64/boot/dts/arm/Makefile
@@ -7,3 +7,4 @@ dtb-$(CONFIG_ARCH_VEXPRESS) += rtsm_ve-aemv8a.dtb
 dtb-$(CONFIG_ARCH_VEXPRESS) += vexpress-v2f-1xv7-ca53x2.dtb
 dtb-$(CONFIG_ARCH_VEXPRESS) += fvp-base-revc.dtb
 dtb-$(CONFIG_ARCH_VEXPRESS) += corstone1000-fvp.dtb corstone1000-mps3.dtb
+dtb-$(CONFIG_ARCH_VEXPRESS) += morello-sdp.dtb
diff --git a/arch/arm64/boot/dts/arm/morello-sdp.dts b/arch/arm64/boot/dts/arm/morello-sdp.dts
new file mode 100644
index 000000000000..143e644361e4
--- /dev/null
+++ b/arch/arm64/boot/dts/arm/morello-sdp.dts
@@ -0,0 +1,116 @@
+// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+/*
+ * Copyright (c) 2021-2024, Arm Limited. All rights reserved.
+
+ */
+
+/dts-v1/;
+#include "morello.dtsi"
+
+/ {
+	model = "Arm Morello System Development Platform";
+	compatible = "arm,morello-sdp";
+
+	smmu_dp: iommu@2ce00000 {
+		compatible = "arm,smmu-v3";
+		reg = <0 0x2ce00000 0 0x40000>;
+		interrupts = <GIC_SPI 76 IRQ_TYPE_EDGE_RISING>,
+				<GIC_SPI 80 IRQ_TYPE_EDGE_RISING>,
+				<GIC_SPI 78 IRQ_TYPE_EDGE_RISING>;
+		interrupt-names = "eventq", "gerror", "cmdq-sync";
+		#iommu-cells = <1>;
+	};
+
+	dp0: display@2cc00000 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "arm,mali-d32", "arm,mali-d71";
+		reg = <0 0x2cc00000 0 0x20000>;
+		interrupts = <0 69 4>;
+		clocks = <&dpu_aclk>;
+		clock-names = "aclk";
+		iommus = <&smmu_dp 0>, <&smmu_dp 1>, <&smmu_dp 2>, <&smmu_dp 3>,
+			<&smmu_dp 8>;
+
+		pl0: pipeline@0 {
+			reg = <0>;
+			clocks = <&dpu_pixel_clk>;
+			clock-names = "pxclk";
+			port {
+				dp_pl0_out0: endpoint {
+					remote-endpoint = <&tda998x_0_input>;
+				};
+			};
+		};
+	};
+
+	i2c@1c0f0000 {
+		compatible = "cdns,i2c-r1p14";
+		reg = <0x0 0x1c0f0000 0x0 0x1000>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clock-frequency = <100000>;
+		interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&dpu_aclk>;
+
+		hdmi_tx: hdmi-transmitter@70 {
+			compatible = "nxp,tda998x";
+			reg = <0x70>;
+			video-ports = <0x234501>;
+			port {
+				tda998x_0_input: endpoint {
+					remote-endpoint = <&dp_pl0_out0>;
+				};
+			};
+		};
+	};
+
+	dpu_aclk: dpu_aclk {
+		/* 77.1 MHz derived from 24 MHz reference clock */
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <350000000>;
+		clock-output-names = "aclk";
+	};
+
+	dpu_pixel_clk: dpu-pixel-clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <148500000>;
+		clock-output-names = "pxclk";
+	};
+};
+
+&gic {
+	reg = <0x0 0x30000000 0 0x10000>,	/* GICD */
+	      <0x0 0x300c0000 0 0x80000>;	/* GICR */
+	interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+
+	its1: msi-controller@30040000 {
+		compatible = "arm,gic-v3-its";
+		msi-controller;
+		#msi-cells = <1>;
+		reg = <0x0 0x30040000 0x0 0x20000>;
+	};
+
+	its2: msi-controller@30060000 {
+		compatible = "arm,gic-v3-its";
+		msi-controller;
+		#msi-cells = <1>;
+		reg = <0x0 0x30060000 0x0 0x20000>;
+	};
+
+	its_ccix: msi-controller@30080000 {
+		compatible = "arm,gic-v3-its";
+		msi-controller;
+		#msi-cells = <1>;
+		reg = <0x0 0x30080000 0x0 0x20000>;
+	};
+
+	its_pcie: msi-controller@300a0000 {
+		compatible = "arm,gic-v3-its";
+		msi-controller;
+		#msi-cells = <1>;
+		reg = <0x0 0x300a0000 0x0 0x20000>;
+	};
+};
-- 
2.43.0


