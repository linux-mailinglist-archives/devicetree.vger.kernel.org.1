Return-Path: <devicetree+bounces-65945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7194D8C0B74
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 08:18:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28DFF281BE5
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 06:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A8C71494DE;
	Thu,  9 May 2024 06:18:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FA661494BF
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 06:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715235515; cv=none; b=U6aI1x0SrbKY3ZzgrRsG/5xBRDW4yNZd+sTagBMIT3HvNI1v1T7JSnouZp3EzkRGlgW1t7pIV8iQa+tL/whb8s2nYv6g6YTxqot+kSqEqJX3oF88njODalVq8m6NGdoNescDl87cJapLBK51+Ahm1ILA/eSOmkYiUizVvyHNLbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715235515; c=relaxed/simple;
	bh=rIrCo6rqpJH2eSg+mIfiRkw7t38+cNqZPzTAqmQzm70=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qt4Fd3sRwAySmG4DM7JNhU1OLpKbpSe/SO47RZ6Daqb+/RORDLozGqZHlLrgUiGdUg/691ofqI94LbIxpCTnU4K6A1e1Nihaj73DGsAXoEPXST//bakloqUDt62gNiq15UECkHW2ghKTTkhrPmVw8w/NvRgZwzxeHUq6QPGso+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [112.20.112.218])
	by gateway (Coremail) with SMTP id _____8CxiOmwajxmsdUJAA--.13522S3;
	Thu, 09 May 2024 14:18:24 +0800 (CST)
Received: from localhost.localdomain (unknown [112.20.112.218])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8BxT1WqajxmycoWAA--.26766S4;
	Thu, 09 May 2024 14:18:23 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: Huacai Chen <chenhuacai@kernel.org>,
	loongson-kernel@lists.loongnix.cn,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v2 2/3] LoongArch: dts: Add new supported device nodes to Loongson-2K0500
Date: Thu,  9 May 2024 14:18:05 +0800
Message-ID: <44c3bcd02598894f838e7c6dd205a139fd388ff8.1715222938.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1715222938.git.zhoubinbin@loongson.cn>
References: <cover.1715222938.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:AQAAf8BxT1WqajxmycoWAA--.26766S4
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoWxCr43Cw47Cr1fZrWDtF47GFX_yoWrJFWxpa
	sFk39rGrW0vF1a93y5tFy8tF4kuF95CF97WwsrCFWUGrsaqFyjvr48KFyrXFyrCr4fZ342
	vFnYv34jkFnrXwcCm3ZEXasCq-sJn29KB7ZKAUJUUUU7529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBIb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AK
	xVW8Jr0_Cr1UM2kKe7AKxVWUXVWUAwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07
	AIYIkI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWU
	tVWrXwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7V
	AKI48JMxkF7I0En4kS14v26r126r1DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY
	6r1j6r4UMxCIbckI1I0E14v26r1Y6r17MI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7
	xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xII
	jxv20xvE14v26r4j6ryUMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw2
	0EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_Cr1lIxAIcVC2z280aVCY1x02
	67AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU0epB3UUUUU==

By now, more Loongson-2K0500 related drivers are supported, such as
clock controller, thermal controller, and dma controller.
Now we add these device nodes to the Loongson-2K0500 dts file.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 arch/loongarch/boot/dts/loongson-2k0500.dtsi | 85 +++++++++++++++++++-
 1 file changed, 82 insertions(+), 3 deletions(-)

diff --git a/arch/loongarch/boot/dts/loongson-2k0500.dtsi b/arch/loongarch/boot/dts/loongson-2k0500.dtsi
index 08531812ed5f..b78240ae9084 100644
--- a/arch/loongarch/boot/dts/loongson-2k0500.dtsi
+++ b/arch/loongarch/boot/dts/loongson-2k0500.dtsi
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/clock/loongson,ls2k-clk.h>
 
 / {
 	#address-cells = <2>;
@@ -19,14 +20,15 @@ cpu0: cpu@0 {
 			compatible = "loongson,la264";
 			device_type = "cpu";
 			reg = <0x0>;
-			clocks = <&cpu_clk>;
+			clocks = <&clk LOONGSON2_NODE_CLK>;
 		};
 	};
 
-	cpu_clk: cpu-clk {
+	ref_100m: clock-ref-100m {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
-		clock-frequency = <500000000>;
+		clock-frequency = <100000000>;
+		clock-output-names = "ref_100m";
 	};
 
 	cpuintc: interrupt-controller {
@@ -35,6 +37,28 @@ cpuintc: interrupt-controller {
 		interrupt-controller;
 	};
 
+	thermal-zones {
+		cpu-thermal {
+			polling-delay-passive = <1000>;
+			polling-delay = <5000>;
+			thermal-sensors = <&tsensor 0>;
+
+			trips {
+				cpu-alert {
+					temperature = <33000>;
+					hysteresis = <2000>;
+					type = "active";
+				};
+
+				cpu-crit {
+					temperature = <85000>;
+					hysteresis = <5000>;
+					type = "critical";
+				};
+			};
+		};
+	};
+
 	bus@10000000 {
 		compatible = "simple-bus";
 		ranges = <0x0 0x10000000 0x0 0x10000000 0x0 0x10000000>,
@@ -52,6 +75,54 @@ isa@16400000 {
 			ranges = <1 0x0 0x0 0x16400000 0x4000>;
 		};
 
+		clk: clock-controller@1fe10400 {
+			compatible = "loongson,ls2k0500-clk";
+			reg = <0x0 0x1fe10400 0x0 0x2c>;
+			#clock-cells = <1>;
+			clocks = <&ref_100m>;
+			clock-names = "ref_100m";
+		};
+
+		dma-controller@1fe10c00 {
+			compatible = "loongson,ls2k0500-apbdma", "loongson,ls2k1000-apbdma";
+			reg = <0 0x1fe10c00 0 0x8>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <67>;
+			clocks = <&clk LOONGSON2_APB_CLK>;
+			#dma-cells = <1>;
+			status = "disabled";
+		};
+
+		dma-controller@1fe10c10 {
+			compatible = "loongson,ls2k0500-apbdma", "loongson,ls2k1000-apbdma";
+			reg = <0 0x1fe10c10 0 0x8>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <68>;
+			clocks = <&clk LOONGSON2_APB_CLK>;
+			#dma-cells = <1>;
+			status = "disabled";
+		};
+
+		dma-controller@1fe10c20 {
+			compatible = "loongson,ls2k0500-apbdma", "loongson,ls2k1000-apbdma";
+			reg = <0 0x1fe10c20 0 0x8>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <69>;
+			clocks = <&clk LOONGSON2_APB_CLK>;
+			#dma-cells = <1>;
+			status = "disabled";
+		};
+
+		dma-controller@1fe10c30 {
+			compatible = "loongson,ls2k0500-apbdma", "loongson,ls2k1000-apbdma";
+			reg = <0 0x1fe10c30 0 0x8>;
+			interrupt-parent = <&eiointc>;
+			interrupts = <70>;
+			clocks = <&clk LOONGSON2_APB_CLK>;
+			#dma-cells = <1>;
+			status = "disabled";
+		};
+
 		liointc0: interrupt-controller@1fe11400 {
 			compatible = "loongson,liointc-2.0";
 			reg = <0x0 0x1fe11400 0x0 0x40>,
@@ -299,6 +370,14 @@ ohci0: usb@1f058000 {
 			status = "disabled";
 		};
 
+		tsensor: thermal-sensor@1fe11500 {
+			compatible = "loongson,ls2k0500-thermal", "loongson,ls2k1000-thermal";
+			reg = <0x0 0x1fe11500 0x0 0x30>;
+			interrupt-parent = <&liointc0>;
+			interrupts = <7 IRQ_TYPE_LEVEL_HIGH>;
+			#thermal-sensor-cells = <1>;
+		};
+
 		uart0: serial@1ff40800 {
 			compatible = "ns16550a";
 			reg = <0x0 0x1ff40800 0x0 0x10>;
-- 
2.43.0


