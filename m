Return-Path: <devicetree+bounces-4790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF587B4053
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 14:52:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 19B181C2088A
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 12:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E867323D0;
	Sat, 30 Sep 2023 12:52:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D787495
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 12:52:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B07DFC433C7;
	Sat, 30 Sep 2023 12:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696078327;
	bh=PO36H6jRR8QhXJ+xnlXTqLl+g9y5bq24w4dNdmW+KwE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CoGXAnvWfqasfxJ2+1tOXd6mushKBPwk/rdZ/6ShcRrtT1dgusjMI/Z7X0hG3TIpt
	 GrkBhHQjCj+yD2MFeKQr/oXWqOB1f5WZZId+5KE7niXHbh+OE6sk1+UhbZ4cTi62iz
	 LPKGNDrQnRnIqTNFojocifXICSLMTIHQ1LBqMhDji9H7/mV1ASYGRETmoJPA/TjEGq
	 KczaPvnw8prKwbd7wfisV89bndQoIEZHWz4Rb9tbjyjiS8l7rbaQ8bmYxDPTd6GF8I
	 bpRXBJKFRFRwRASlAptDVQ3GN/yHucwUsa0LfNuhJbnqH8w56pWLMAKGZM36YfywHA
	 T/v5FaUtmigIw==
From: Jisheng Zhang <jszhang@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Anup Patel <anup@brainfault.org>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Inochi Amaoto <inochiama@outlook.com>,
	chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com
Subject: [PATCH 4/5] riscv: dts: sophgo: add initial CV1800B SoC device tree
Date: Sat, 30 Sep 2023 20:39:36 +0800
Message-Id: <20230930123937.1551-5-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230930123937.1551-1-jszhang@kernel.org>
References: <20230930123937.1551-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add initial device tree for the CV1800B RISC-V SoC by SOPHGO.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 arch/riscv/boot/dts/sophgo/cv1800b.dtsi | 117 ++++++++++++++++++++++++
 1 file changed, 117 insertions(+)
 create mode 100644 arch/riscv/boot/dts/sophgo/cv1800b.dtsi

diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
new file mode 100644
index 000000000000..8829bebaa017
--- /dev/null
+++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
@@ -0,0 +1,117 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+
+/ {
+	compatible = "sophgo,cv1800b";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	cpus: cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		timebase-frequency = <25000000>;
+
+		cpu0: cpu@0 {
+			compatible = "thead,c906", "riscv";
+			device_type = "cpu";
+			reg = <0>;
+			d-cache-block-size = <64>;
+			d-cache-sets = <512>;
+			d-cache-size = <65536>;
+			i-cache-block-size = <64>;
+			i-cache-sets = <128>;
+			i-cache-size = <32768>;
+			mmu-type = "riscv,sv39";
+			riscv,isa = "rv64imafdc";
+			riscv,isa-base = "rv64i";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
+					       "zifencei", "zihpm";
+
+			cpu0_intc: interrupt-controller {
+				compatible = "riscv,cpu-intc";
+				interrupt-controller;
+				#address-cells = <0>;
+				#interrupt-cells = <1>;
+			};
+		};
+	};
+
+	osc: oscillator {
+		compatible = "fixed-clock";
+		clock-output-names = "osc_25m";
+		#clock-cells = <0>;
+	};
+
+	soc {
+		compatible = "simple-bus";
+		interrupt-parent = <&plic>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		dma-noncoherent;
+		ranges;
+
+		uart0: serial@04140000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x04140000 0x100>;
+			interrupts = <44 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			status = "disabled";
+		};
+
+		uart1: serial@04150000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x04150000 0x100>;
+			interrupts = <45 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			status = "disabled";
+		};
+
+		uart2: serial@04160000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x04160000 0x100>;
+			interrupts = <46 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			status = "disabled";
+		};
+
+		uart3: serial@04170000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x04170000 0x100>;
+			interrupts = <47 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			status = "disabled";
+		};
+
+		uart4: serial@041c0000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x041c0000 0x100>;
+			interrupts = <48 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			status = "disabled";
+		};
+
+		plic: interrupt-controller@70000000 {
+			compatible = "sophgo,cv1800b-plic", "thead,c900-plic";
+			reg = <0x70000000 0x4000000>;
+			interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>;
+			interrupt-controller;
+			#address-cells = <0>;
+			#interrupt-cells = <2>;
+			riscv,ndev = <101>;
+		};
+	};
+};
-- 
2.40.1


