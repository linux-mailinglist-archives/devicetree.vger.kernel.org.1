Return-Path: <devicetree+bounces-250056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E171CE602F
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 07:14:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 218AA30051B9
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 06:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35EA727F00A;
	Mon, 29 Dec 2025 06:14:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp81.cstnet.cn [159.226.251.81])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA73A27145F;
	Mon, 29 Dec 2025 06:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766988854; cv=none; b=Yce1N3othHzEL0KeLmwKHebDVxFYMQO1bHZGA7a3+QjcxXzzhOkfunTC/SruvohHpij2gXrGAYcVnGmjVbqioK76Wqrw7HYqSkhXquz8ydIz4xigK2ANoePmjY0lqemXpcQtjS5DGdSv0KGBDaLm/qoNyN/nP33UP4lgvVXlO9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766988854; c=relaxed/simple;
	bh=4gHGStv/3qCC7K0BUJ2zZ0x0nNoVnlnbx6BwDFJtq9Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FzmEBPnII1i2hgtI9Nwn2+zein5Yl8aAH/9rJmcyVxUtOmUyOWft68wVq3qV5D5LAipQXKWxVMcvZdlGdncVMku1vse9tBkCGnQfGgWSg14A1Rq4rgez7Moqsxkmd2sLNhgBRjbfekc2hHuDyGLJiHu46iSKdMlTlYM5qD3u0mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn; spf=pass smtp.mailfrom=isrc.iscas.ac.cn; arc=none smtp.client-ip=159.226.251.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=isrc.iscas.ac.cn
Received: from duge-virtual-machine (unknown [223.160.206.4])
	by APP-03 (Coremail) with SMTP id rQCowABnaL8UHFJpuWxrAg--.22171S4;
	Mon, 29 Dec 2025 14:13:54 +0800 (CST)
From: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
To: conor@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	alex@ghiti.fr,
	jiayu.riscv@isrc.iscas.ac.cn,
	cyy@cyyself.name,
	kingxukai@zohomail.com,
	TroyMitchell988@gmail.com,
	gaohan@iscas.ac.cn,
	me@ziyao.cc
Subject: [PATCH 2/2] riscv: dts: canaan: Add initial dshanpi board DT files
Date: Mon, 29 Dec 2025 14:13:18 +0800
Message-ID: <20251229061318.16756-3-jiayu.riscv@isrc.iscas.ac.cn>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251229061318.16756-1-jiayu.riscv@isrc.iscas.ac.cn>
References: <20251229061318.16756-1-jiayu.riscv@isrc.iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:rQCowABnaL8UHFJpuWxrAg--.22171S4
X-Coremail-Antispam: 1UD129KBjvJXoWxZry8KFy3Aw4fCFWfCryDWrg_yoWrAFyDpr
	s8urZxGFWI9F9a9FW2g3yIgF43CF4qk34rCr1ayFyUtrWjqFWvkwn3t34rXF18Xr1UX390
	yan5ZryxtF1xZ3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUmj14x267AKxVWrJVCq3wAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWUuVWrJwAFIxvE14AKwVWUJVWUGwA2048vs2IY020E87I2jVAFwI0_Jryl82xGYIkIc2
	x26xkF7I0E14v26ryj6s0DM28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8wA2z4x0
	Y4vE2Ix0cI8IcVAFwI0_Jr0_JF4l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1l84
	ACjcxK6I8E87Iv67AKxVWUJVW8JwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UM2AI
	xVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20x
	vE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xv
	r2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7M4IIrI8v6xkF7I0E8cxan2IY04
	v7MxkF7I0En4kS14v26r1q6r43MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j
	6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7
	AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE
	2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcV
	C2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2Kfnx
	nUUI43ZEXa7VUbH5lUUUUUU==
X-CM-SenderInfo: 5mld534oul2uny6l223fol2u1dvotugofq/

Add board devicetree for 100ask K230 dashanpi, and also the SoM
device utilized by the board. UART0 is enabled as the default
console.

Signed-off-by: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
---
 arch/riscv/boot/dts/canaan/Makefile           |  1 +
 .../boot/dts/canaan/k230-canmv-dshanpi.dts    | 82 +++++++++++++++++++
 .../dts/canaan/k230-canmv-module-dshanpi.dtsi | 30 +++++++
 3 files changed, 113 insertions(+)
 create mode 100644 arch/riscv/boot/dts/canaan/k230-canmv-dshanpi.dts
 create mode 100644 arch/riscv/boot/dts/canaan/k230-canmv-module-dshanpi.dtsi

diff --git a/arch/riscv/boot/dts/canaan/Makefile b/arch/riscv/boot/dts/canaan/Makefile
index 7d54ea5c6f3d..89cb64bde440 100644
--- a/arch/riscv/boot/dts/canaan/Makefile
+++ b/arch/riscv/boot/dts/canaan/Makefile
@@ -2,6 +2,7 @@
 dtb-$(CONFIG_ARCH_CANAAN) += canaan_kd233.dtb
 dtb-$(CONFIG_ARCH_CANAAN) += k210_generic.dtb
 dtb-$(CONFIG_ARCH_CANAAN) += k230-canmv.dtb
+dtb-$(CONFIG_ARCH_CANAAN) += k230-canmv-dshanpi.dtb
 dtb-$(CONFIG_ARCH_CANAAN) += k230-evb.dtb
 dtb-$(CONFIG_ARCH_CANAAN) += sipeed_maix_bit.dtb
 dtb-$(CONFIG_ARCH_CANAAN) += sipeed_maix_dock.dtb
diff --git a/arch/riscv/boot/dts/canaan/k230-canmv-dshanpi.dts b/arch/riscv/boot/dts/canaan/k230-canmv-dshanpi.dts
new file mode 100644
index 000000000000..4f95b534ee87
--- /dev/null
+++ b/arch/riscv/boot/dts/canaan/k230-canmv-dshanpi.dts
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/*
+ * Copyright (C) 2025 Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
+ */
+
+/dts-v1/;
+
+#include "k230-canmv-module-dshanpi.dtsi"
+
+/ {
+	model = "100ask CanMV-K230-dshanpi";
+	compatible = "100ask,canmv-k230-dshanpi",
+		     "100ask,canmv-k230-module-dshanpi",
+		     "canaan,kendryte-k230";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	vdd_5v: regulator-vdd-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_5v";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vdd_3v3: regulator-vdd-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vdd_5v>;
+	};
+
+	vdd_1v8: regulator-vdd-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vdd_5v>;
+	};
+};
+
+&pinctrl {
+	uart0_pins: uart0-pins {
+		uart0-txd-cfg {
+			pinmux = <K230_PINMUX(38, 1)>;
+			slew-rate = <0>;
+			drive-strength = <7>;
+			power-source = <K230_MSC_1V8>;
+			output-enable;
+			bias-disable;
+			input-schmitt-enable;
+		};
+
+		uart0-rxd-cfg {
+			pinmux = <K230_PINMUX(39, 1)>;
+			slew-rate = <0>;
+			drive-strength = <7>;
+			power-source = <K230_MSC_1V8>;
+			input-enable;
+			bias-disable;
+			input-schmitt-enable;
+		};
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins>;
+	status = "okay";
+};
diff --git a/arch/riscv/boot/dts/canaan/k230-canmv-module-dshanpi.dtsi b/arch/riscv/boot/dts/canaan/k230-canmv-module-dshanpi.dtsi
new file mode 100644
index 000000000000..ed0abc68f321
--- /dev/null
+++ b/arch/riscv/boot/dts/canaan/k230-canmv-module-dshanpi.dtsi
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/*
+ * Copyright (C) 2025 Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
+ */
+
+/dts-v1/;
+
+#include "k230.dtsi"
+
+/ {
+	model = "100ask CanMV-K230-Module-dshanpi";
+	compatible = "100ask,canmv-k230-module-dshanpi",
+		     "canaan,kendryte-k230";
+
+	ddr: memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x0 0x0 0x40000000>;
+	};
+
+	timerx_pulse_in: clock-50m {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <50000000>;
+	};
+};
+
+&sysclk {
+	clocks = <&osc24m>, <&timerx_pulse_in>;
+	clock-names = "osc24m", "timer-pulse-in";
+};
-- 
2.52.0


