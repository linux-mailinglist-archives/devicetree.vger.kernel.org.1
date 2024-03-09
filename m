Return-Path: <devicetree+bounces-49566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1AE877017
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 10:32:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F3AD9B20F51
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 09:32:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1074F376EC;
	Sat,  9 Mar 2024 09:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q11u6Jr3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DECFB37141
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 09:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709976768; cv=none; b=YHopduxLdV1Oq7Df9KCtX+og7KCVoXKggyfymtz/8UZWtrXi5anZbRBT6cDz57p96v7d7qmatdQGw/IDeS5L0R4vZM3Dhfps/nMwNsAOa0/66H2/+6yxQdiKFJpPc8QkXEGMVc1Sh47mSH8QsU4vO+HjPtY5Db+G25Wrm47wKEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709976768; c=relaxed/simple;
	bh=BRH4Qmjjbw0kBo+08DFm4B7vnOQHxcAgq93btXOaRko=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aJo3Gdkg2KeBDRAaJkyrVKG+WoKEf3tT3vJednHyFpwLfF1uczpManIA5izfnbIiYD2zTvPRagHSzQHZZPVedKVEE0FLK89soJZyN+Bjvaoxpkhj2c6a3iJs2DA7HrGpsYpw9IRgCwytmqs3wyg1CWGsFx7/n3BkLQ20aXGhl8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q11u6Jr3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68CB4C433F1;
	Sat,  9 Mar 2024 09:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709976767;
	bh=BRH4Qmjjbw0kBo+08DFm4B7vnOQHxcAgq93btXOaRko=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Q11u6Jr3leuBnmkfA+dzUcmOXJ9t/8SELWURGk/m8DscxQvst278h0jk11nE/vxOy
	 1d753+25n6OF1XacB/HBtwbQy2RIEuDO4DWcss9IjKN7S/5XRnZlYi718tUSZgbxHP
	 tXW4LmvOwMNjAyEqI5z6sassTC/c/2oG8YkXLv4FtlX5N+P5uzkddHh+v9A1NF1lHX
	 6rbCu8oNlGpc5iN/IjQZODQuD0cSZ+qx5c0wINDa31QGOYtr+3wr5Ev+3eWWs0n9eV
	 VsK9zP+Z1RbTiXOiurBoR/c7eCd8zc9Xxerfh6jxiR4nk1PnoFQTiMqfIdQ7ky2vQH
	 yFQolw8a/OwCQ==
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
Subject: [PATCH v4 2/4] arm64: dts: Add Airoha EN7581 SoC and EN7581 Evaluation Board
Date: Sat,  9 Mar 2024 10:32:15 +0100
Message-ID: <f05a36dd7e8ef34ead8a63aa10fcffb542229404.1709975956.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1709975956.git.lorenzo@kernel.org>
References: <cover.1709975956.git.lorenzo@kernel.org>
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

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
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
index 000000000000..55eb1762fb11
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
+			reg = <0x0 0x84000000 0x0 0xa00000>;
+		};
+
+		npu-flag@84b0000 {
+			no-map;
+			reg = <0x0 0x84b00000 0x0 0x100000>;
+		};
+
+		npu-pkt@85000000 {
+			no-map;
+			reg = <0x0 0x85000000 0x0 0x1a00000>;
+		};
+
+		npu-phyaddr@86b00000 {
+			no-map;
+			reg = <0x0 0x86b00000 0x0 0x100000>;
+		};
+
+		npu-rxdesc@86d00000 {
+			no-map;
+			reg = <0x0 0x86d00000 0x0 0x100000>;
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


