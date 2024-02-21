Return-Path: <devicetree+bounces-44116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 861AC85CC86
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 01:05:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BF392839D9
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 00:05:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF10417C2;
	Wed, 21 Feb 2024 00:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcE3nQFb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B3E615AB
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 00:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708473890; cv=none; b=qkrekHTj30W6BK0rLqwF+7MD7dkScpxZnAcyzklfs5ppgq0p5pBVlLG4p02qtMhPkc1vLB1PR7lp+XgjWwSF7B4CwAFbf+MsHRaHrJ0rVBaGn4pQjVxJEkoouGVHgmpdRJzg2DVM3opCXsaRNU5M1TgmUCT1FiMex38cQpglrro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708473890; c=relaxed/simple;
	bh=691I22LNrgi0APD9ZJ3dMATtM2duOTqWQ0qGuYAVT8k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hibCcdPlC/A4hPgJ/Anluk8KOojDR1K27/zoD8/vD3Vgci38NNlqkmtXlVanEzyVHNrqBkzjocJDqiH9yparUsQijCVroYt49mH73HS0rn1L524bcpROUT9XV1XWzycncGzd+uk8xegQzQX3Nro9x88Z3ZtgDY9neBl5OPDgnUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcE3nQFb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA45DC433F1;
	Wed, 21 Feb 2024 00:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708473890;
	bh=691I22LNrgi0APD9ZJ3dMATtM2duOTqWQ0qGuYAVT8k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IcE3nQFbyqBouEIH5X/RdsN7OSUACjGkDVOPjh1ip8G9IvXyEqyGgStZrHA3S9B1P
	 V3/opSR+6HYkbi4wV5hLWz1WsjHxqFA/Q3tKmeP7EQKShzZFhIIuYsFBxj6Jada1dc
	 hwKTthC2UXjer9XUDVuXjagiBlu0l+rkjwDeq/GvPKSs9UTf8kQkE6lYZV5iuNA65z
	 mTlaOZLAwqyTKidkRqY0KKfQF6YRI/gnrFwxd/5Arx0hrrfqTmZEEAyb3/63CqDpWv
	 4hKOJd5xBzF3gLc43YSNybFlotHtRrpEZMSv6D48Vk2zY6dY42ziGQE8kCchNhUdmG
	 I6TBwM5sZdnhg==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Cc: lorenzo.bianconi@redhat.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	devicetree@vger.kernel.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH v2 2/4] arm64: dts: Add Airoha EN7581 SoC and EN7581 Evaluation Board
Date: Wed, 21 Feb 2024 01:04:28 +0100
Message-ID: <f59389838c741650f6ff05d984a9127545e4eb83.1708473083.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <cover.1708473083.git.lorenzo@kernel.org>
References: <cover.1708473083.git.lorenzo@kernel.org>
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
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/boot/dts/Makefile              |   1 +
 arch/arm64/boot/dts/airoha/Makefile       |   2 +
 arch/arm64/boot/dts/airoha/en7581-evb.dts |  27 +++++
 arch/arm64/boot/dts/airoha/en7581.dtsi    | 137 ++++++++++++++++++++++
 4 files changed, 167 insertions(+)
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
index 000000000000..4eaa8ac431c3
--- /dev/null
+++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
@@ -0,0 +1,27 @@
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
+		bootargs = "console=ttyS0,115200 earlycon";
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
index 000000000000..7a3c0a45c03f
--- /dev/null
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -0,0 +1,137 @@
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
+		npu_binary@84000000 {
+			no-map;
+			reg = <0x0 0x84000000 0x0 0xA00000>;
+		};
+
+		npu_flag@84B0000 {
+			no-map;
+			reg = <0x0 0x84B00000 0x0 0x100000>;
+		};
+
+		npu_pkt@85000000 {
+			no-map;
+			reg = <0x0 0x85000000 0x0 0x1A00000>;
+		};
+
+		npu_phyaddr@86B00000 {
+			no-map;
+			reg = <0x0 0x86B00000 0x0 0x100000>;
+		};
+
+		npu_rxdesc@86D00000 {
+			no-map;
+			reg = <0x0 0x86D00000 0x0 0x100000>;
+		};
+	};
+
+	psci {
+		compatible = "arm,psci-0.2";
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
+				core1 {
+					cpu = <&cpu1>;
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
+			next-level-cache = <&L2_0>;
+		};
+
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x1>;
+			enable-method = "psci";
+			clock-frequency = <80000000>;
+			next-level-cache = <&L2_0>;
+		};
+
+		cpu2: cpu@2 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x2>;
+			enable-method = "psci";
+			clock-frequency = <80000000>;
+			next-level-cache = <&L2_0>;
+		};
+
+		cpu3: cpu@3 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x3>;
+			enable-method = "psci";
+			clock-frequency = <80000000>;
+			next-level-cache = <&L2_0>;
+		};
+
+		L2_0: l2-cache0 {
+			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
+		};
+	};
+
+	gic: interrupt-controller@9000000 {
+		compatible = "arm,gic-v3";
+		interrupt-controller;
+		#interrupt-cells = <3>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		reg = <0x0 0x09000000 0x0 0x20000>,
+		      <0x0 0x09080000 0x0 0x80000>,
+		      <0x0 0x09400000 0x0 0x2000>,
+		      <0x0 0x09500000 0x0 0x2000>,
+		      <0x0 0x09600000 0x0 0x20000>;
+		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
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
+	uart1: serial@1fbf0000 {
+		compatible = "ns16550";
+		reg = <0x0 0x1fbf0000 0x0 0x30>;
+		reg-io-width = <4>;
+		reg-shift = <2>;
+		interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <1843200>;
+		status = "okay";
+	};
+};
-- 
2.43.2


