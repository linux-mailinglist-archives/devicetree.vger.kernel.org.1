Return-Path: <devicetree+bounces-219525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3F5B8C44E
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 11:12:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90F387E2D4D
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 09:12:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D81362BCF6C;
	Sat, 20 Sep 2025 09:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MDrSaxy2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B1928727A
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 09:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758359567; cv=none; b=uJEScBYweK9mbjHjp08t3SALRT1eYj8F7K345d9/YviHzT2scMQenutjZGPDDMAyd2iDAsTQFtWgfeGvAbvLU8cJr3PzCctlBlk/biCsL3yJ6sYHc8Ytddw+RBDhP4W9B+AJwlvHVeeLqQQIOWM3Va9QdfcLgDc49CnVLlsIUuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758359567; c=relaxed/simple;
	bh=1RPX1o022vxaMbbkCmG8PzVP+OT47HI5SaSZEtZ+BUw=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pxhvVdaTTwQlHsANmdmL7U5VxHTmHNT9HFNJpx3RGKhZSyPJydm0jnccpqF85rX58Dxwx0RK1UYmNVdD6ii3ljqq+V6m9nc+ZEesLverzvHD69upHntArYctxpY/u6dNJdPOZIIca8u4RsBGq/6Au5hfsUYB4JOY80NTlXw7vOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MDrSaxy2; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3f0134ccc0cso1448972f8f.1
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 02:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758359564; x=1758964364; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0KAascs3KaV3Z3mHhvMTLU3s9nCHKKshT+qkVXRYo2g=;
        b=MDrSaxy2y9K2xdzZrlR1ypfcaOAdFGzgiluKL87O+gx5TB2ErDQH0ji991kJaETweq
         plNkMOLqc66r2OPfVIY4/0lqY6E7Pirr1mBmRbPh994QnzJd1GFOU01UCCtaHMwO1RAm
         0zr0QE+RJ/kb0nH8n0R2Mez+ofXqjwrhhPxErIySsHM39Xf79e59peZiHpsHVjbxeeX/
         +EYuJnZxw1rHLRwSSVxpuNnPeFMMroKrA8333/hxeoLfQbBk+mezTY7xnwfDyZgVYXc3
         jXYuigfUgrD8h9TgjQ+0Rxu/DK50VH8tcWaAKYaKEAopxAXBpwrdkMEkv4KlE4i4TXUB
         fPBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758359564; x=1758964364;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0KAascs3KaV3Z3mHhvMTLU3s9nCHKKshT+qkVXRYo2g=;
        b=XUiBZUGYB5IgQO9CpTSD6f8j4jB28w/TzU55KXrmeSy9Zm5ez0PYb5TrbtAo65JYrw
         s5/1+NtGGTWLDdBMtoTJgUM3Lhsh1ep2pZ0cNb+eQVXpwHW/qkkcVuN2akzSa9VDNPWB
         m5jgh5nDZEggH5jdoe8Ed5GqXIzE2eyTZJaFqdjzhHzfYaC0+NqjEMMgFv6W7luj9UkU
         05QibJTg71bzboxenyBvW3X9JRHxmIfh0Ry7zUfOW/9yn+ATjClzLmkbBmjybOqG3B+U
         OBAYaUWFOrhjcu5Ha3SKVqvTp+Uhc0sfXS5/2hooix+06bac+omLz0P5171RFgeb6DuA
         uGJw==
X-Forwarded-Encrypted: i=1; AJvYcCVqIzBky/46gn+0jiWxO7VEBHe86gFshQMxxgquAikKHkks7jmvFgfj4PoFPAzagYQXROAwfSvQaLfH@vger.kernel.org
X-Gm-Message-State: AOJu0Yxd75dAcbV4Afh/klIPuoRxv7e00FL61kmVUL2Bzp02NyjSnEth
	N+ae9EXwWi6GF57uzdxX/oXrQD7fAcG1LSvw9drNUNQ+2MJeGkc8tzan
X-Gm-Gg: ASbGncuAajnVzC+H4TpPDH8QABGdvtpsUWPOUnLfoKODaCZRrWrad5GIXdpXV7iTZWo
	HE32e7Niu7usl/5f96Odr6khH8Qh7y54ln2eT52Nm2Lr1GFBdkW6hPXxWEX282SkbdLoi5hhQ3O
	gL5B1/vZ6r7H2Uk9LynZK7ArB5+xSiUZu2Aoy4mzIsjaO8mKt7vBLMJKmFMaJSOJC9ztv8Og+2m
	RN/LIkIqlKuMZGdPnfYc2ZKYkbqzBqdCUJfNnkXt8CJAFT/d/Kz6lRD54v+WVLFwKANNLuDeFly
	3CZKGxRxBoo6Rrj07TySkUsRydhd383OcYH3LVrrkMBwYyLirUYW/ziL8PJx2kTt7GP6ekweYHh
	Osw1ZXNKo9mW+NOnIPyCv8Jo3Y7NWjSOQM/Sfc5bnrBCZQL3PCWKUSZTUjdqEPEEpJam6Ciw=
X-Google-Smtp-Source: AGHT+IHrh+ndXxTb1EFVumE+GYJ79IR8tl0ePHWHwP2BuY3hk84NbTQ7ULb7XUOoja074PzYe5xg8A==
X-Received: by 2002:a05:6000:310e:b0:3e9:2fea:6795 with SMTP id ffacd0b85a97d-3ee852a434cmr6002416f8f.53.1758359564118;
        Sat, 20 Sep 2025 02:12:44 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3ef166e62e5sm6375782f8f.40.2025.09.20.02.12.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 02:12:43 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Felix Fietkau <nbd@nbd.name>,
	John Crispin <john@phrozen.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: Add Airoha AN7583 SoC and AN7583 Evaluation Board
Date: Sat, 20 Sep 2025 11:12:29 +0200
Message-ID: <20250920091230.17702-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250920091230.17702-1-ansuelsmth@gmail.com>
References: <20250920091230.17702-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce Airoha AN7583 SoC initial DTSI and AN7583 Evaluation Board
DTS and add the required entry in the Makefile.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 arch/arm64/boot/dts/airoha/Makefile       |   1 +
 arch/arm64/boot/dts/airoha/an7583-evb.dts |  22 ++
 arch/arm64/boot/dts/airoha/an7583.dtsi    | 282 ++++++++++++++++++++++
 3 files changed, 305 insertions(+)
 create mode 100644 arch/arm64/boot/dts/airoha/an7583-evb.dts
 create mode 100644 arch/arm64/boot/dts/airoha/an7583.dtsi

diff --git a/arch/arm64/boot/dts/airoha/Makefile b/arch/arm64/boot/dts/airoha/Makefile
index ebea112ce1d7..7a604ae249b5 100644
--- a/arch/arm64/boot/dts/airoha/Makefile
+++ b/arch/arm64/boot/dts/airoha/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 dtb-$(CONFIG_ARCH_AIROHA) += en7581-evb.dtb
+dtb-$(CONFIG_ARCH_AIROHA) += an7583-evb.dtb
diff --git a/arch/arm64/boot/dts/airoha/an7583-evb.dts b/arch/arm64/boot/dts/airoha/an7583-evb.dts
new file mode 100644
index 000000000000..a7f83436825e
--- /dev/null
+++ b/arch/arm64/boot/dts/airoha/an7583-evb.dts
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/dts-v1/;
+
+#include "an7583.dtsi"
+
+/ {
+	model = "Airoha EN7583 Evaluation Board";
+	compatible = "airoha,an7583-evb", "airoha,an7583";
+
+	aliases {
+		serial0 = &uart1;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x0 0x80000000 0x2 0x00000000>;
+	};
+};
diff --git a/arch/arm64/boot/dts/airoha/an7583.dtsi b/arch/arm64/boot/dts/airoha/an7583.dtsi
new file mode 100644
index 000000000000..74044811efc0
--- /dev/null
+++ b/arch/arm64/boot/dts/airoha/an7583.dtsi
@@ -0,0 +1,282 @@
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
+			};
+		};
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x0>;
+			operating-points-v2 = <&cpu_opp_table>;
+			enable-method = "psci";
+			clocks = <&cpufreq>;
+			clock-names = "cpu";
+			power-domains = <&cpufreq>;
+			power-domain-names = "perf";
+			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
+		};
+
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53";
+			reg = <0x1>;
+			operating-points-v2 = <&cpu_opp_table>;
+			enable-method = "psci";
+			clocks = <&cpufreq>;
+			clock-names = "cpu";
+			power-domains = <&cpufreq>;
+			power-domain-names = "perf";
+			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
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
+	cpufreq: cpufreq {
+		compatible = "airoha,en7581-cpufreq";
+
+		operating-points-v2 = <&cpu_smcc_opp_table>;
+
+		#power-domain-cells = <0>;
+		#clock-cells = <0>;
+	};
+
+	cpu_opp_table: opp-table {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			required-opps = <&smcc_opp0>;
+		};
+
+		opp-550000000 {
+			opp-hz = /bits/ 64 <550000000>;
+			required-opps = <&smcc_opp1>;
+		};
+
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			required-opps = <&smcc_opp2>;
+		};
+
+		opp-650000000 {
+			opp-hz = /bits/ 64 <650000000>;
+			required-opps = <&smcc_opp3>;
+		};
+
+		opp-7000000000 {
+			opp-hz = /bits/ 64 <700000000>;
+			required-opps = <&smcc_opp4>;
+		};
+
+		opp-7500000000 {
+			opp-hz = /bits/ 64 <750000000>;
+			required-opps = <&smcc_opp5>;
+		};
+
+		opp-8000000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			required-opps = <&smcc_opp6>;
+		};
+
+		opp-8500000000 {
+			opp-hz = /bits/ 64 <850000000>;
+			required-opps = <&smcc_opp7>;
+		};
+
+		opp-9000000000 {
+			opp-hz = /bits/ 64 <900000000>;
+			required-opps = <&smcc_opp8>;
+		};
+
+		opp-9500000000 {
+			opp-hz = /bits/ 64 <950000000>;
+			required-opps = <&smcc_opp9>;
+		};
+
+		opp-10000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			required-opps = <&smcc_opp10>;
+		};
+
+		opp-10500000000 {
+			opp-hz = /bits/ 64 <1050000000>;
+			required-opps = <&smcc_opp11>;
+		};
+
+		opp-11000000000 {
+			opp-hz = /bits/ 64 <1100000000>;
+			required-opps = <&smcc_opp12>;
+		};
+
+		opp-11500000000 {
+			opp-hz = /bits/ 64 <1150000000>;
+			required-opps = <&smcc_opp13>;
+		};
+
+		opp-12000000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			required-opps = <&smcc_opp14>;
+		};
+	};
+
+	cpu_smcc_opp_table: opp-table-cpu-smcc {
+		compatible = "operating-points-v2";
+
+		smcc_opp0: opp0 {
+			opp-level = <0>;
+		};
+
+		smcc_opp1: opp1 {
+			opp-level = <1>;
+		};
+
+		smcc_opp2: opp2 {
+			opp-level = <2>;
+		};
+
+		smcc_opp3: opp3 {
+			opp-level = <3>;
+		};
+
+		smcc_opp4: opp4 {
+			opp-level = <4>;
+		};
+
+		smcc_opp5: opp5 {
+			opp-level = <5>;
+		};
+
+		smcc_opp6: opp6 {
+			opp-level = <6>;
+		};
+
+		smcc_opp7: opp7 {
+			opp-level = <7>;
+		};
+
+		smcc_opp8: opp8 {
+			opp-level = <8>;
+		};
+
+		smcc_opp9: opp9 {
+			opp-level = <9>;
+		};
+
+		smcc_opp10: opp10 {
+			opp-level = <10>;
+		};
+
+		smcc_opp11: opp11 {
+			opp-level = <11>;
+		};
+
+		smcc_opp12: opp12 {
+			opp-level = <12>;
+		};
+
+		smcc_opp13: opp13 {
+			opp-level = <13>;
+		};
+
+		smcc_opp14: opp14 {
+			opp-level = <14>;
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
+	sys_hclk: clk-oscillator-100mhz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+		clock-output-names = "sys_hclk";
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
+		crypto@1e004000 {
+			compatible = "inside-secure,safexcel-eip93ies";
+			reg = <0x0 0x1fb70000 0x0 0x1000>;
+
+			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
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
+
+		watchdog@1fbf0100 {
+			compatible = "airoha,en7581-wdt";
+			reg = <0x0 0x1fbf0100 0x0 0x38>;
+
+			clocks = <&sys_hclk>;
+			clock-names = "bus";
+		};
+	};
+};
-- 
2.51.0


