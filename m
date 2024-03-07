Return-Path: <devicetree+bounces-48923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FB887450C
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 01:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 59272B24A67
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 00:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA940380;
	Thu,  7 Mar 2024 00:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rU9oX6Lr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6B76161
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 00:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709770295; cv=none; b=Gn4M7pxhL0eav28a1m6QFXMNP/kwX08IkLe6R7VE2NyXAO4+SNpvTrSzbnrc9VnNiLbrln0WXG3jvKmJzZu6d0daidJqd/CO3HNd8b/IGPeVe5a5VxAU1iOtBnX90FBNpgoqIAHP5wL8NHKCtVoSXzXbOmy5V4giN2Jr3o4UtUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709770295; c=relaxed/simple;
	bh=L4vVeHTBO/VY4Q1UNjurkimszNkTnXTXyrey7li0qmM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ozwvH2LQjrOBU5XMPv3Kb3D/9cCgM5To6zzPXn3BomR1L2uULFfYtzDaIdIhMckLwZHeNtYy1hnvUTElq546CXT4WRHZyyqwNqnkP9g1bm7RVGtLSQKAHVfSnHGwdHsTvVsMbVD3gGy6z6b+FnD8Nm9HOSAnoM/ZE569CrdAo2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rU9oX6Lr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA543C433C7;
	Thu,  7 Mar 2024 00:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709770295;
	bh=L4vVeHTBO/VY4Q1UNjurkimszNkTnXTXyrey7li0qmM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rU9oX6LrnrKg8be/tvP1/R2M58BhZKouir5ZeKGuDpAFXmZo74EzrXoQXx86TfFJo
	 jklcAtD2SbwTgn43g5n988/lfbLU2zG2ZzYsp5raMtgoBF9GSZXzuyGHcdAMZtdDLA
	 +9Ij4WVaM28v2HC+EPx54XHxboYHrYbFx6mDAbefpGSZ5RM6gGGq60uMYCNX0lTB1x
	 zmaNzASxHzlCQOasXv15Vy6B+r8gNaCXt/79gLXzjELb4Rbfy2XZkhkOL9dDG0NSxM
	 4PfrBBw4zWlU3jWZBgfJWCMXBGnlnJycCaw3+z8CzfinF/0UqHHuThANGqkunqJRZI
	 riiTynTypHsbQ==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	devicetree@vger.kernel.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	lorenzo.bianconi83@gmail.com,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH v3 2/4] arm64: dts: Add Airoha EN7581 SoC and EN7581 Evaluation Board
Date: Thu,  7 Mar 2024 01:11:11 +0100
Message-ID: <ca51cb007d06e8fc0dce613749dbe44b5116ac98.1709768157.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1709768157.git.lorenzo@kernel.org>
References: <cover.1709768157.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Daniel Danzberger <dd@embedd.com>

Introduce the Airoha EN7581 SoC's dtsi and the Airoha EN7581 Evaluation
Board's dts file, as well as the required Makefiles.

Signed-off-by: Daniel Danzberger <dd@embedd.com>
Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/boot/dts/Makefile              |   1 +
 arch/arm64/boot/dts/airoha/Makefile       |   2 +
 arch/arm64/boot/dts/airoha/en7581-evb.dts |  26 ++++
 arch/arm64/boot/dts/airoha/en7581.dtsi    | 154 ++++++++++++++++++++++
 4 files changed, 183 insertions(+)
 create mode 100644 arch/arm64/boot/dts/airoha/Makefile
 create mode 100644 arch/arm64/boot/dts/airoha/en7581-evb.dts
 create mode 100644 arch/arm64/boot/dts/airoha/en7581.dtsi

diff --git a/arch/arm64/boot/dts/Makefile b/arch/arm64/boot/dts/Makefile
index 30dd6347a929..21cd3a87f385 100644
--- a/arch/arm64/boot/dts/Makefile
+++ b/arch/arm64/boot/dts/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 subdir-y += actions
+subdir-y += airoha
 subdir-y += allwinner
 subdir-y += altera
 subdir-y += amazon
diff --git a/arch/arm64/boot/dts/airoha/Makefile b/arch/arm64/boot/dts/airoha/Makefile
new file mode 100644
index 000000000000..ebea112ce1d7
--- /dev/null
+++ b/arch/arm64/boot/dts/airoha/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+dtb-$(CONFIG_ARCH_AIROHA) += en7581-evb.dtb
diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/dts/airoha/en7581-evb.dts
new file mode 100644
index 000000000000..cf58e43dd5b2
--- /dev/null
+++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/dts-v1/;
+
+/* Bootloader installs ATF here */
+/memreserve/ 0x80000000 0x200000;
+
+#include "en7581.dtsi"
+
+/ {
+	model = "Airoha EN7581 Evaluation Board";
+	compatible = "airoha,en7581-evb", "airoha,en7581";
+
+	aliases {
+		serial0 = &uart1;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+		linux,usable-memory-range = <0x0 0x80200000 0x0 0x1fe00000>;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x0 0x80000000 0x2 0x00000000>;
+	};
+};
diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
new file mode 100644
index 000000000000..732080cf6f2b
--- /dev/null
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -0,0 +1,154 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+/ {
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		npu-binary@84000000 {
+			no-map;
+			reg = <0x0 0x84000000 0x0 0xA00000>;
+		};
+
+		npu-flag@84B0000 {
+			no-map;
+			reg = <0x0 0x84B00000 0x0 0x100000>;
+		};
+
+		npu-pkt@85000000 {
+			no-map;
+			reg = <0x0 0x85000000 0x0 0x1A00000>;
+		};
+
+		npu-phyaddr@86B00000 {
+			no-map;
+			reg = <0x0 0x86B00000 0x0 0x100000>;
+		};
+
+		npu-rxdesc@86D00000 {
+			no-map;
+			reg = <0x0 0x86D00000 0x0 0x100000>;
+		};
+	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&cpu0>;
+				};
+
+				core1 {
+					cpu = <&cpu1>;
+				};
+
+				core2 {
+					cpu = <&cpu2>;
+				};
+
+				core3 {
+					cpu = <&cpu3>;
+				};
+			};
+		};
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x0>;
+			enable-method = "psci";
+			clock-frequency = <80000000>;
+			next-level-cache = <&l2>;
+		};
+
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x1>;
+			enable-method = "psci";
+			clock-frequency = <80000000>;
+			next-level-cache = <&l2>;
+		};
+
+		cpu2: cpu@2 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x2>;
+			enable-method = "psci";
+			clock-frequency = <80000000>;
+			next-level-cache = <&l2>;
+		};
+
+		cpu3: cpu@3 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x3>;
+			enable-method = "psci";
+			clock-frequency = <80000000>;
+			next-level-cache = <&l2>;
+		};
+
+		l2: l2-cache {
+			compatible = "cache";
+			cache-size = <0x80000>;
+			cache-line-size = <64>;
+			cache-level = <2>;
+			cache-unified;
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	soc {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		gic: interrupt-controller@9000000 {
+			compatible = "arm,gic-v3";
+			interrupt-controller;
+			#interrupt-cells = <3>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0x0 0x09000000 0x0 0x20000>,
+			      <0x0 0x09080000 0x0 0x80000>,
+			      <0x0 0x09400000 0x0 0x2000>,
+			      <0x0 0x09500000 0x0 0x2000>,
+			      <0x0 0x09600000 0x0 0x20000>;
+			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
+		};
+
+		uart1: serial@1fbf0000 {
+			compatible = "ns16550";
+			reg = <0x0 0x1fbf0000 0x0 0x30>;
+			reg-io-width = <4>;
+			reg-shift = <2>;
+			interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+			clock-frequency = <1843200>;
+		};
+	};
+};
-- 
2.44.0


