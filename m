Return-Path: <devicetree+bounces-65676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAD08BF884
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 10:29:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 051D32843E4
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 08:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2576D481C7;
	Wed,  8 May 2024 08:29:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33F0045BE3
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 08:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715156975; cv=none; b=G8jhJyJBtQKq1moWomSR8WyQRCqRsZzBjELjLFjVBGJzKiVLSsAXT0l30mhddcYuwRMnTKFqoZl/Uq+gzb8+eXM7FpAJiZoG6WiRL6sWWkDDFxAzggz9H1mkGO+YDgexOU0Nu+UP1sYPdavdZpfoYM+D289Yk9HE+5OZov4xg+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715156975; c=relaxed/simple;
	bh=mm+c/N642LvutLNJcJDi4vQqK0YCFW3AbDALd0DP900=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aBhdXU7TJywm5+iVwg2E0CEfRT8Mz/9lc8k2R4Dd+HjNmtLx9cwZEmhDxODF2yWz2lZfIHIdqeJH+8EpLQPmRFFc75AQegtTUE6hOFRdMtNe3VSUcu2SQYHmPIb8olXA+mXRNeGL0okROheinEOc2qJs3zohSzUr8axz8ZF9WeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [112.20.112.218])
	by gateway (Coremail) with SMTP id _____8Bx9erqNztmwUkJAA--.13039S3;
	Wed, 08 May 2024 16:29:30 +0800 (CST)
Received: from localhost.localdomain (unknown [112.20.112.218])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8CxrlfmNztmvWUVAA--.36694S4;
	Wed, 08 May 2024 16:29:30 +0800 (CST)
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
Subject: [PATCH v1 2/2] LoongArch: dts: Add new supported device nodes to Loongson-2K2000
Date: Wed,  8 May 2024 16:29:11 +0800
Message-ID: <d2a7f3d5a0ec68de43d760fbd6e0e4e4bbafbc10.1715156107.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1715156107.git.zhoubinbin@loongson.cn>
References: <cover.1715156107.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:AQAAf8CxrlfmNztmvWUVAA--.36694S4
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoWxXw47Ww1UXr18JF4xCF4rJFc_yoW5Cw4kpa
	srua17Kr409F1xu345tryUJF1kZFZ5CFnrWanIkFWUCrsIq34qqr48tF93tF18Wr4fX3yj
	qrn5G34jkF4DZabCm3ZEXasCq-sJn29KB7ZKAUJUUUU7529EdanIXcx71UUUUU7KY7ZEXa
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

By now, more Loongson-2K2000 related drivers are supported, such as
clock controller and thermal controller.
Now we add these device nodes to the Loongson-2K2000 dts file.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 .../boot/dts/loongson-2k2000-ref.dts          |  4 ++
 arch/loongarch/boot/dts/loongson-2k2000.dtsi  | 44 +++++++++++++++++--
 2 files changed, 44 insertions(+), 4 deletions(-)

diff --git a/arch/loongarch/boot/dts/loongson-2k2000-ref.dts b/arch/loongarch/boot/dts/loongson-2k2000-ref.dts
index 74b99bd234cc..52daf41d7af4 100644
--- a/arch/loongarch/boot/dts/loongson-2k2000-ref.dts
+++ b/arch/loongarch/boot/dts/loongson-2k2000-ref.dts
@@ -39,6 +39,10 @@ linux,cma {
 	};
 };
 
+&clk {
+	status = "okay";
+};
+
 &sata {
 	status = "okay";
 };
diff --git a/arch/loongarch/boot/dts/loongson-2k2000.dtsi b/arch/loongarch/boot/dts/loongson-2k2000.dtsi
index 9eab2d02cbe8..4e717f5bad45 100644
--- a/arch/loongarch/boot/dts/loongson-2k2000.dtsi
+++ b/arch/loongarch/boot/dts/loongson-2k2000.dtsi
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/clock/loongson,ls2k-clk.h>
 
 / {
 	#address-cells = <2>;
@@ -19,21 +20,22 @@ cpu0: cpu@1 {
 			compatible = "loongson,la364";
 			device_type = "cpu";
 			reg = <0x0>;
-			clocks = <&cpu_clk>;
+			clocks = <&clk LOONGSON2_NODE_CLK>;
 		};
 
 		cpu1: cpu@2 {
 			compatible = "loongson,la364";
 			device_type = "cpu";
 			reg = <0x1>;
-			clocks = <&cpu_clk>;
+			clocks = <&clk LOONGSON2_NODE_CLK>;
 		};
 	};
 
-	cpu_clk: cpu-clk {
+	ref_100m: clock-ref-100m {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
-		clock-frequency = <1400000000>;
+		clock-frequency = <100000000>;
+		clock-output-names = "ref_100m";
 	};
 
 	cpuintc: interrupt-controller {
@@ -42,6 +44,22 @@ cpuintc: interrupt-controller {
 		interrupt-controller;
 	};
 
+	thermal-zones {
+		cpu-thermal {
+			polling-delay-passive = <1000>;
+			polling-delay = <5000>;
+			thermal-sensors = <&tsensor 0>;
+
+			trips {
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
@@ -58,6 +76,15 @@ isa@18400000 {
 			ranges = <1 0x0 0x0 0x18400000 0x4000>;
 		};
 
+		clk: clock-controller@10010480 {
+			compatible = "loongson,ls2k2000-clk";
+			reg = <0x0 0x10010480 0x0 0x100>;
+			#clock-cells = <1>;
+			clocks = <&ref_100m>;
+			clock-names = "ref_100m";
+			status = "disabled";
+		};
+
 		pmc: power-management@100d0000 {
 			compatible = "loongson,ls2k2000-pmc", "loongson,ls2k0500-pmc", "syscon";
 			reg = <0x0 0x100d0000 0x0 0x58>;
@@ -80,6 +107,15 @@ syscon-poweroff {
 			};
 		};
 
+		tsensor: thermal-sensor@1fe01460 {
+			compatible = "loongson,ls2k2000-thermal";
+			reg = <0x0 0x1fe01460 0x0 0x30>,
+			      <0x0 0x1fe0019c 0x0 0x4>;
+			interrupt-parent = <&liointc>;
+			interrupts = <7 IRQ_TYPE_LEVEL_HIGH>;
+			#thermal-sensor-cells = <1>;
+		};
+
 		liointc: interrupt-controller@1fe01400 {
 			compatible = "loongson,liointc-1.0";
 			reg = <0x0 0x1fe01400 0x0 0x64>;
-- 
2.43.0


