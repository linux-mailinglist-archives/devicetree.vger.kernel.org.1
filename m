Return-Path: <devicetree+bounces-17507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4C27F2B37
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:00:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 003361C20E37
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 11:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62D9A482D5;
	Tue, 21 Nov 2023 11:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gChg+TrQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A63D7113
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 03:00:11 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40838915cecso23723195e9.2
        for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 03:00:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700564410; x=1701169210; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=14+bQCKHvmnzzJrSIQe+G0K0kmg/QKlCNQGELO83fIw=;
        b=gChg+TrQ+4ZCiRZC4FQ/HKgqRRmHjdEWOWuZCAjbru8++1tjtuPnr8xb5CATbjBkPN
         yBt3u3OW+25lhjQjhnY90dMdbbX9dlj0ZHhh7Jb3C7rmypGr5OK3KsYKBTQHZa1fEQpx
         n4wp8oIbCQqRB0wT69OipAba/i7xER53jTcjvJxIm3ziDc4Jn6JZ0o4G45alhmLzm4cT
         reJFy22+nR4L791hcyyaEAGzfgg1Eg4cXL99JLIMwY9/igKAkDXw4am+ks4FySmQMUCA
         InshD6z5LUQwgebdwLrWAzneaokUCTYegDkYBRlsWAsvtKI6WvgPxZCdr9yOqiZkC++B
         3YKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700564410; x=1701169210;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=14+bQCKHvmnzzJrSIQe+G0K0kmg/QKlCNQGELO83fIw=;
        b=Z8U9n3aLc4LhnRWIUA1wMyWpKmYLdxfMcB/kmmDR3V/5SVuNwREyNO619zj2Pog+aR
         3UMk6n+wz/ytX9Z25Rjp05AYx9k9LeiZxmvPnhwRAwAJBdNvh3rG88HeTatpvPIKDRZx
         5HMelb5YOohkBT/UQp4I54tRiSEYSv+xmE6UTp5OEG9PWJl05/2hEov7/QZqE2jKPwIL
         oTF/WSCInn1hDcGKxkS9PGHWsEeXLZhmj5MGiS/mop6O/sV5OtbzeW9a5vCzfeDmJgTx
         DQ52wtRxj5bOqbvz5EjS68s6qHgYToioNgBaCgFwITubxNEjApUDZCXlRhq6e2LCA2Ug
         CENw==
X-Gm-Message-State: AOJu0Yy3zq2EWtr7ji/FPMCw+MmtAe3hABM26TRVrSutMiphPvAsJF6W
	Bo0pJJDf2Dkjbvly+r0ifscD6g==
X-Google-Smtp-Source: AGHT+IFp1CSbhcg+nZO0cK2ughoGBgJ+/Gj9HukJISzPGIFgVo7D69U/LwpgQGwKcgnKYBzsHL2zqA==
X-Received: by 2002:a05:600c:1386:b0:3fe:ba7:f200 with SMTP id u6-20020a05600c138600b003fe0ba7f200mr8177839wmf.20.1700564409815;
        Tue, 21 Nov 2023 03:00:09 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id f1-20020adff581000000b00332c0e934aasm9028500wro.44.2023.11.21.03.00.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 03:00:09 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 21 Nov 2023 12:00:01 +0100
Subject: [PATCH v3 2/8] arm64: dts: qcom: add initial SM8650 dtsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231121-topic-sm8650-upstream-dt-v3-2-db9d0507ffd3@linaro.org>
References: <20231121-topic-sm8650-upstream-dt-v3-0-db9d0507ffd3@linaro.org>
In-Reply-To: <20231121-topic-sm8650-upstream-dt-v3-0-db9d0507ffd3@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=55653;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=dd4ZlXLuTruN9cz+4k+0ih17NRuJUbrq79L1RnQU4zI=;
 b=owEBbAKT/ZANAwAKAXfc29rIyEnRAcsmYgBlXI2zPmPayF5yQx72yu5MIZvx8q1NkEYZdz3wR/Q3
 819iiD6JAjIEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZVyNswAKCRB33NvayMhJ0ULxD/
 jMEtYLq0LQhig5KvZCLIDUJJq9JIrqv6WIXe8AzP0wGUxEUeq0qU2w84nWBHMjNAxZNFkycckCCYD+
 j7C9lmFCe+vcAh0o864roH5hBl/BQtlMlZxt+qnXjKYlzYn9LU4HR41YLnaa7x+TSb2mT5TodlFMIo
 k9DqXQS1uu+BAKZyCxC58B2d9tZWW3p6t8F7p6sWY/bVB1lxgL1+vEQHEtE6kXP5uw+fulaycmOlaz
 0CCf3lhRqx4LD5aUckjh7lcz7jpnB9bNUi++q2jW09tMVoINyQglhp/5OK/eC8BVZDmICgbUtJcszc
 hE435BuaHRS5k7V0S3W3G+6J6rTdfyS5qnhSB99d+1o4JwuDzWgBLr+9AXMB3/pyOhwoCTw91yCBKq
 7pC88+G6ff3BrISHL8oT1bgY2tU/M1sz5KHD2ArbzJK7iyzcLqhxR+Oinm2+/4Ukkj2xTLzPPW4JZi
 XhvWGZyBtwCjPzJi/m8EVmtV9DThECSKnXTPGGo/gH4X4Wxoy8jWWqkhY0DQdr1TBmbarMOxMf7Bpn
 Rulm2GoA7Y9UlW2Xc7CVxw3mTAUY8ZlXZmPbwZJJ2XYHX1veh+dABYx/e+I5iLD7GQwc99aWaj/6Gn
 AZUgqtBMn6XT5eQaSq3qE2tJXjeLWLgPe4TcSXK25xNUmzEgAAQvd8rz4i
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add initial DTSI for the Qualcomm SM8650 platform,
only contains nodes which doesn't depend on interconnect.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 2437 ++++++++++++++++++++++++++++++++++
 1 file changed, 2437 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
new file mode 100644
index 000000000000..e6a862230c30
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -0,0 +1,2437 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#include <dt-bindings/clock/qcom,rpmh.h>
+#include <dt-bindings/clock/qcom,sm8650-dispcc.h>
+#include <dt-bindings/clock/qcom,sm8650-gcc.h>
+#include <dt-bindings/clock/qcom,sm8650-gpucc.h>
+#include <dt-bindings/clock/qcom,sm8650-tcsr.h>
+#include <dt-bindings/dma/qcom-gpi.h>
+#include <dt-bindings/firmware/qcom,scm.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/mailbox/qcom-ipcc.h>
+#include <dt-bindings/phy/phy-qcom-qmp.h>
+#include <dt-bindings/power/qcom,rpmhpd.h>
+#include <dt-bindings/power/qcom-rpmpd.h>
+#include <dt-bindings/reset/qcom,sm8650-gpucc.h>
+#include <dt-bindings/soc/qcom,gpr.h>
+#include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/thermal/thermal.h>
+
+/ {
+	interrupt-parent = <&intc>;
+
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	chosen { };
+
+	clocks {
+		xo_board: xo-board {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+		};
+
+		sleep_clk: sleep-clk {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+		};
+
+		bi_tcxo_div2: bi-tcxo-div2-clk {
+			compatible = "fixed-factor-clock";
+			#clock-cells = <0>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-mult = <1>;
+			clock-div = <2>;
+		};
+
+		bi_tcxo_ao_div2: bi-tcxo-ao-div2-clk {
+			compatible = "fixed-factor-clock";
+			#clock-cells = <0>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK_A>;
+			clock-mult = <1>;
+			clock-div = <2>;
+		};
+	};
+
+	cpus {
+		#address-cells = <2>;
+		#size-cells = <0>;
+
+		CPU0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a520";
+			reg = <0 0>;
+
+			clocks = <&cpufreq_hw 0>;
+
+			power-domains = <&CPU_PD0>;
+			power-domain-names = "psci";
+
+			enable-method = "psci";
+			next-level-cache = <&L2_0>;
+			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <100>;
+
+			qcom,freq-domain = <&cpufreq_hw 0>;
+
+			#cooling-cells = <2>;
+
+			L2_0: l2-cache {
+				compatible = "cache";
+				cache-level = <2>;
+				cache-unified;
+				next-level-cache = <&L3_0>;
+
+				L3_0: l3-cache {
+					compatible = "cache";
+					cache-level = <3>;
+					cache-unified;
+				};
+			};
+		};
+
+		CPU1: cpu@100 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a520";
+			reg = <0 0x100>;
+
+			clocks = <&cpufreq_hw 0>;
+
+			power-domains = <&CPU_PD1>;
+			power-domain-names = "psci";
+
+			enable-method = "psci";
+			next-level-cache = <&L2_0>;
+			capacity-dmips-mhz = <1024>;
+			dynamic-power-coefficient = <100>;
+
+			qcom,freq-domain = <&cpufreq_hw 0>;
+
+			#cooling-cells = <2>;
+		};
+
+		CPU2: cpu@200 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a720";
+			reg = <0 0x200>;
+
+			clocks = <&cpufreq_hw 3>;
+
+			power-domains = <&CPU_PD2>;
+			power-domain-names = "psci";
+
+			enable-method = "psci";
+			next-level-cache = <&L2_200>;
+			capacity-dmips-mhz = <1792>;
+			dynamic-power-coefficient = <238>;
+
+			qcom,freq-domain = <&cpufreq_hw 3>;
+
+			#cooling-cells = <2>;
+
+			L2_200: l2-cache {
+				compatible = "cache";
+				cache-level = <2>;
+				cache-unified;
+				next-level-cache = <&L3_0>;
+			};
+		};
+
+		CPU3: cpu@300 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a720";
+			reg = <0 0x300>;
+
+			clocks = <&cpufreq_hw 3>;
+
+			power-domains = <&CPU_PD3>;
+			power-domain-names = "psci";
+
+			enable-method = "psci";
+			next-level-cache = <&L2_200>;
+			capacity-dmips-mhz = <1792>;
+			dynamic-power-coefficient = <238>;
+
+			qcom,freq-domain = <&cpufreq_hw 3>;
+
+			#cooling-cells = <2>;
+		};
+
+		CPU4: cpu@400 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a720";
+			reg = <0 0x400>;
+
+			clocks = <&cpufreq_hw 3>;
+
+			power-domains = <&CPU_PD4>;
+			power-domain-names = "psci";
+
+			enable-method = "psci";
+			next-level-cache = <&L2_400>;
+			capacity-dmips-mhz = <1792>;
+			dynamic-power-coefficient = <238>;
+
+			qcom,freq-domain = <&cpufreq_hw 3>;
+
+			#cooling-cells = <2>;
+
+			L2_400: l2-cache {
+				compatible = "cache";
+				cache-level = <2>;
+				cache-unified;
+				next-level-cache = <&L3_0>;
+			};
+		};
+
+		CPU5: cpu@500 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a720";
+			reg = <0 0x500>;
+
+			clocks = <&cpufreq_hw 1>;
+
+			power-domains = <&CPU_PD5>;
+			power-domain-names = "psci";
+
+			enable-method = "psci";
+			next-level-cache = <&L2_500>;
+			capacity-dmips-mhz = <1792>;
+			dynamic-power-coefficient = <238>;
+
+			qcom,freq-domain = <&cpufreq_hw 1>;
+
+			#cooling-cells = <2>;
+
+			L2_500: l2-cache {
+				compatible = "cache";
+				cache-level = <2>;
+				cache-unified;
+				next-level-cache = <&L3_0>;
+			};
+		};
+
+		CPU6: cpu@600 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a720";
+			reg = <0 0x600>;
+
+			clocks = <&cpufreq_hw 1>;
+
+			power-domains = <&CPU_PD6>;
+			power-domain-names = "psci";
+
+			enable-method = "psci";
+			next-level-cache = <&L2_600>;
+			capacity-dmips-mhz = <1792>;
+			dynamic-power-coefficient = <238>;
+
+			qcom,freq-domain = <&cpufreq_hw 1>;
+
+			#cooling-cells = <2>;
+
+			L2_600: l2-cache {
+				compatible = "cache";
+				cache-level = <2>;
+				cache-unified;
+				next-level-cache = <&L3_0>;
+			};
+		};
+
+		CPU7: cpu@700 {
+			device_type = "cpu";
+			compatible = "arm,cortex-x4";
+			reg = <0 0x700>;
+
+			clocks = <&cpufreq_hw 2>;
+
+			power-domains = <&CPU_PD7>;
+			power-domain-names = "psci";
+
+			enable-method = "psci";
+			next-level-cache = <&L2_700>;
+			capacity-dmips-mhz = <1894>;
+			dynamic-power-coefficient = <588>;
+
+			qcom,freq-domain = <&cpufreq_hw 2>;
+
+			#cooling-cells = <2>;
+
+			L2_700: l2-cache {
+				compatible = "cache";
+				cache-level = <2>;
+				cache-unified;
+				next-level-cache = <&L3_0>;
+			};
+		};
+
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&CPU0>;
+				};
+
+				core1 {
+					cpu = <&CPU1>;
+				};
+
+				core2 {
+					cpu = <&CPU2>;
+				};
+
+				core3 {
+					cpu = <&CPU3>;
+				};
+
+				core4 {
+					cpu = <&CPU4>;
+				};
+
+				core5 {
+					cpu = <&CPU5>;
+				};
+
+				core6 {
+					cpu = <&CPU6>;
+				};
+
+				core7 {
+					cpu = <&CPU7>;
+				};
+			};
+		};
+
+		idle-states {
+			entry-method = "psci";
+
+			SILVER_CPU_SLEEP_0: cpu-sleep-0-0 {
+				compatible = "arm,idle-state";
+				idle-state-name = "silver-rail-power-collapse";
+				arm,psci-suspend-param = <0x40000004>;
+				entry-latency-us = <550>;
+				exit-latency-us = <750>;
+				min-residency-us = <6700>;
+				local-timer-stop;
+			};
+
+			GOLD_CPU_SLEEP_0: cpu-sleep-1-0 {
+				compatible = "arm,idle-state";
+				idle-state-name = "gold-rail-power-collapse";
+				arm,psci-suspend-param = <0x40000004>;
+				entry-latency-us = <600>;
+				exit-latency-us = <1300>;
+				min-residency-us = <8136>;
+				local-timer-stop;
+			};
+
+			GOLD_PLUS_CPU_SLEEP_0: cpu-sleep-2-0 {
+				compatible = "arm,idle-state";
+				idle-state-name = "gold-plus-rail-power-collapse";
+				arm,psci-suspend-param = <0x40000004>;
+				entry-latency-us = <500>;
+				exit-latency-us = <1350>;
+				min-residency-us = <7480>;
+				local-timer-stop;
+			};
+		};
+
+		domain-idle-states {
+			CLUSTER_SLEEP_0: cluster-sleep-0 {
+				compatible = "domain-idle-state";
+				arm,psci-suspend-param = <0x41000044>;
+				entry-latency-us = <750>;
+				exit-latency-us = <2350>;
+				min-residency-us = <9144>;
+			};
+
+			CLUSTER_SLEEP_1: cluster-sleep-1 {
+				compatible = "domain-idle-state";
+				arm,psci-suspend-param = <0x4100c344>;
+				entry-latency-us = <2800>;
+				exit-latency-us = <4400>;
+				min-residency-us = <10150>;
+			};
+		};
+	};
+
+	firmware {
+		scm: scm {
+			compatible = "qcom,scm-sm8650", "qcom,scm";
+		};
+	};
+
+	memory@a0000000 {
+		device_type = "memory";
+		/* We expect the bootloader to fill in the size */
+		reg = <0 0xa0000000 0 0>;
+	};
+
+	pmu {
+		compatible = "arm,armv8-pmuv3";
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+
+		CPU_PD0: power-domain-cpu0 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&SILVER_CPU_SLEEP_0>;
+		};
+
+		CPU_PD1: power-domain-cpu1 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&SILVER_CPU_SLEEP_0>;
+		};
+
+		CPU_PD2: power-domain-cpu2 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&SILVER_CPU_SLEEP_0>;
+		};
+
+		CPU_PD3: power-domain-cpu3 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&GOLD_CPU_SLEEP_0>;
+		};
+
+		CPU_PD4: power-domain-cpu4 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&GOLD_CPU_SLEEP_0>;
+		};
+
+		CPU_PD5: power-domain-cpu5 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&GOLD_CPU_SLEEP_0>;
+		};
+
+		CPU_PD6: power-domain-cpu6 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&GOLD_CPU_SLEEP_0>;
+		};
+
+		CPU_PD7: power-domain-cpu7 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&GOLD_PLUS_CPU_SLEEP_0>;
+		};
+
+		CLUSTER_PD: power-domain-cluster {
+			#power-domain-cells = <0>;
+			domain-idle-states = <&CLUSTER_SLEEP_0>,
+					     <&CLUSTER_SLEEP_1>;
+		};
+	};
+
+	reserved_memory: reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		hyp_mem: hyp@80000000 {
+			reg = <0 0x80000000 0 0xe00000>;
+			no-map;
+		};
+
+		cpusys_vm_mem: cpusys-vm@80e00000 {
+			reg = <0 0x80e00000 0 0x400000>;
+			no-map;
+		};
+
+		/* Merged xbl_dtlog, xbl_ramdump and aop_image regions */
+		xbl_dt_log_merged_mem: xbl-dt-log-merged@81a00000 {
+			reg = <0 0x81a00000 0 0x260000>;
+			no-map;
+		};
+
+		aop_cmd_db_mem: aop-cmd-db@81c60000 {
+			compatible = "qcom,cmd-db";
+			reg = <0 0x81c60000 0 0x20000>;
+			no-map;
+		};
+
+		/* Merged aop_config, tme_crash_dump, tme_log and uefi_log regions */
+		aop_tme_uefi_merged_mem: aop-tme-uefi-merged@81c80000 {
+			reg = <0 0x81c80000 0 0x74000>;
+			no-map;
+		};
+
+		/* Secdata region can be reused by apps */
+
+		smem: smem@81d00000 {
+			compatible = "qcom,smem";
+			reg = <0 0x81d00000 0 0x200000>;
+			hwlocks = <&tcsr_mutex 3>;
+			no-map;
+		};
+
+		adsp_mhi_mem: adsp-mhi@81f00000 {
+			reg = <0 0x81f00000 0 0x20000>;
+			no-map;
+		};
+
+		pvmfw_mem: pvmfw@824a0000 {
+			reg = <0 0x824a0000 0 0x100000>;
+			no-map;
+		};
+
+		global_sync_mem: global-sync@82600000 {
+			reg = <0 0x82600000 0 0x100000>;
+			no-map;
+		};
+
+		tz_stat_mem: tz-stat@82700000 {
+			reg = <0 0x82700000 0 0x100000>;
+			no-map;
+		};
+
+		qdss_mem: qdss@82800000 {
+			reg = <0 0x82800000 0 0x2000000>;
+			no-map;
+		};
+
+		mpss_dsm_mem: mpss-dsm@86b00000 {
+			reg = <0 0x86b00000 0 0x4900000>;
+			no-map;
+		};
+
+		mpss_dsm_mem_2: mpss-dsm-2@8b400000 {
+			reg = <0 0x8b400000 0 0x800000>;
+			no-map;
+		};
+
+		mpss_mem: mpss@8bc00000 {
+			reg = <0 0x8bc00000 0 0xf400000>;
+			no-map;
+		};
+
+		q6_mpss_dtb_mem: q6-mpss-dtb@9b000000 {
+			reg = <0 0x9b000000 0 0x80000>;
+			no-map;
+		};
+
+		ipa_fw_mem: ipa-fw@9b080000 {
+			reg = <0 0x9b080000 0 0x10000>;
+			no-map;
+		};
+
+		ipa_gsi_mem: ipa-gsi@9b090000 {
+			reg = <0 0x9b090000 0 0xa000>;
+			no-map;
+		};
+
+		gpu_micro_code_mem: gpu-micro-code@9b09a000 {
+			reg = <0 0x9b09a000 0 0x2000>;
+			no-map;
+		};
+
+		spss_region_mem: spss@9b0a0000 {
+			reg = <0 0x9b0a0000 0 0x1e0000>;
+			no-map;
+		};
+
+		/* First part of the "SPU secure shared memory" region */
+		spu_tz_shared_mem: spu-tz-shared@9b280000 {
+			reg = <0 0x9b280000 0 0x60000>;
+			no-map;
+		};
+
+		/* Second part of the "SPU secure shared memory" region */
+		spu_modem_shared_mem: spu-modem-shared@9b2e0000 {
+			reg = <0 0x9b2e0000 0 0x20000>;
+			no-map;
+		};
+
+		camera_mem: camera@9b300000 {
+			reg = <0 0x9b300000 0 0x800000>;
+			no-map;
+		};
+
+		video_mem: video@9bb00000 {
+			reg = <0 0x9bb00000 0 0x800000>;
+			no-map;
+		};
+
+		cvp_mem: cvp@9c300000 {
+			reg = <0 0x9c300000 0 0x700000>;
+			no-map;
+		};
+
+		cdsp_mem: cdsp@9ca00000 {
+			reg = <0 0x9ca00000 0 0x1400000>;
+			no-map;
+		};
+
+		q6_cdsp_dtb_mem: q6-cdsp-dtb@9de00000 {
+			reg = <0 0x9de00000 0 0x80000>;
+			no-map;
+		};
+
+		q6_adsp_dtb_mem: q6-adsp-dtb@9de80000 {
+			reg = <0 0x9de80000 0 0x80000>;
+			no-map;
+		};
+
+		adspslpi_mem: adspslpi@9df00000 {
+			reg = <0 0x9df00000 0 0x4080000>;
+			no-map;
+		};
+
+		rmtfs_mem: rmtfs@d7c00000 {
+			compatible = "qcom,rmtfs-mem";
+			reg = <0 0xd7c00000 0 0x400000>;
+			no-map;
+
+			qcom,client-id = <1>;
+			qcom,vmid = <QCOM_SCM_VMID_MSS_MSA>;
+		};
+
+		/* Merged tz_reserved, xbl_sc, cpucp_fw and qtee regions */
+		tz_merged_mem: tz-merged@d8000000 {
+			reg = <0 0xd8000000 0 0x800000>;
+			no-map;
+		};
+
+		hwfence_shbuf: hwfence-shbuf@e6440000 {
+			reg = <0 0xe6440000 0 0x2dd000>;
+			no-map;
+		};
+
+		trust_ui_vm_mem: trust-ui-vm@f3800000 {
+			reg = <0 0xf3800000 0 0x4400000>;
+			no-map;
+		};
+
+		oem_vm_mem: oem-vm@f7c00000 {
+			reg = <0 0xf7c00000 0 0x4c00000>;
+			no-map;
+		};
+
+		llcc_lpi_mem: llcc-lpi@ff800000 {
+			reg = <0 0xff800000 0 0x600000>;
+			no-map;
+		};
+	};
+
+	soc: soc@0 {
+		compatible = "simple-bus";
+
+		#address-cells = <2>;
+		#size-cells = <2>;
+		dma-ranges = <0 0 0 0 0x10 0>;
+		ranges = <0 0 0 0 0x10 0>;
+
+		gcc: clock-controller@100000 {
+			compatible = "qcom,sm8650-gcc";
+			reg = <0 0x00100000 0 0x1f4200>;
+
+			clocks = <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&sleep_clk>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
+		ipcc: mailbox@406000 {
+			compatible = "qcom,sm8650-ipcc", "qcom,ipcc";
+			reg = <0 0x00406000 0 0x1000>;
+
+			interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+
+			#mbox-cells = <2>;
+		};
+
+		gpi_dma2: dma-controller@800000 {
+			compatible = "qcom,sm8650-gpi-dma", "qcom,sm6350-gpi-dma";
+			reg = <0 0x00800000 0 0x60000>;
+
+			interrupts = <GIC_SPI 588 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 589 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 590 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 593 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 596 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 599 IRQ_TYPE_LEVEL_HIGH>;
+
+			dma-channels = <12>;
+			dma-channel-mask = <0x3f>;
+			#dma-cells = <3>;
+
+			iommus = <&apps_smmu 0x436 0>;
+
+			dma-coherent;
+
+			status = "disabled";
+		};
+
+		qupv3_id_1: geniqup@8c0000 {
+			compatible = "qcom,geni-se-qup";
+			reg = <0 0x008c0000 0 0x2000>;
+
+			clocks = <&gcc GCC_QUPV3_WRAP_2_M_AHB_CLK>,
+				 <&gcc GCC_QUPV3_WRAP_2_S_AHB_CLK>;
+			clock-names = "m-ahb",
+				      "s-ahb";
+
+			iommus = <&apps_smmu 0x423 0>;
+
+			dma-coherent;
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			status = "disabled";
+
+			uart15: serial@89c000 {
+				compatible = "qcom,geni-debug-uart";
+				reg = <0 0x0089c000 0 0x4000>;
+
+				interrupts = <GIC_SPI 462 IRQ_TYPE_LEVEL_HIGH>;
+
+				clocks = <&gcc GCC_QUPV3_WRAP2_S7_CLK>;
+				clock-names = "se";
+
+				pinctrl-0 = <&qup_uart15_default>;
+				pinctrl-names = "default";
+
+				status = "disabled";
+			};
+		};
+
+		gpi_dma1: dma-controller@a00000 {
+			compatible = "qcom,sm8650-gpi-dma", "qcom,sm6350-gpi-dma";
+			reg = <0 0x00a00000 0 0x60000>;
+
+			interrupts = <GIC_SPI 279 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 280 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 282 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 284 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 293 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 294 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 295 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 296 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 297 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 298 IRQ_TYPE_LEVEL_HIGH>;
+
+			dma-channels = <12>;
+			dma-channel-mask = <0xc>;
+			#dma-cells = <3>;
+
+			iommus = <&apps_smmu 0xb6 0>;
+			dma-coherent;
+
+			status = "disabled";
+		};
+
+		rng: rng@10c3000 {
+			compatible = "qcom,sm8650-trng", "qcom,trng";
+			reg = <0 0x010c3000 0 0x1000>;
+		};
+
+		ice: crypto@1d88000 {
+			compatible = "qcom,sm8650-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0 0x01d88000 0 0x8000>;
+
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+		};
+
+		tcsr_mutex: hwlock@1f40000 {
+			compatible = "qcom,tcsr-mutex";
+			reg = <0 0x01f40000 0 0x20000>;
+
+			#hwlock-cells = <1>;
+		};
+
+		tcsr: clock-controller@1fc0000 {
+			compatible = "qcom,sm8650-tcsr", "syscon";
+			reg = <0 0x01fc0000 0 0xa0000>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
+		gpucc: clock-controller@3d90000 {
+			compatible = "qcom,sm8650-gpucc";
+			reg = <0 0x03d90000 0 0xa000>;
+
+			clocks = <&bi_tcxo_div2>,
+				 <&gcc GCC_GPU_GPLL0_CLK_SRC>,
+				 <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
+		dispcc: clock-controller@af00000 {
+			compatible = "qcom,sm8650-dispcc";
+			reg = <0 0x0af00000 0 0x20000>;
+
+			clocks = <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&gcc GCC_DISP_AHB_CLK>,
+				 <&sleep_clk>,
+				 <0>, /* dsi0 */
+				 <0>,
+				 <0>, /* dsi1 */
+				 <0>,
+				 <0>, /* dp0 */
+				 <0>,
+				 <0>, /* dp1 */
+				 <0>,
+				 <0>, /* dp2 */
+				 <0>,
+				 <0>, /* dp3 */
+				 <0>;
+
+			power-domains = <&rpmhpd RPMHPD_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+
+			status = "disabled";
+		};
+
+		usb_1_hsphy: phy@88e3000 {
+			compatible = "qcom,sm8650-snps-eusb2-phy",
+				     "qcom,sm8550-snps-eusb2-phy";
+			reg = <0 0x088e3000 0 0x154>;
+
+			clocks = <&tcsr TCSR_USB2_CLKREF_EN>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		usb_dp_qmpphy: phy@88e8000 {
+			compatible = "qcom,sm8650-qmp-usb3-dp-phy";
+			reg = <0 0x088e8000 0 0x3000>;
+
+			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "usb3_pipe";
+
+			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
+				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
+			reset-names = "phy",
+				      "common";
+
+			power-domains = <&gcc USB3_PHY_GDSC>;
+
+			#clock-cells = <1>;
+			#phy-cells = <1>;
+
+			status = "disabled";
+		};
+
+		usb_1: usb@a6f8800 {
+			compatible = "qcom,sm8650-dwc3", "qcom,dwc3";
+			reg = <0 0x0a6f8800 0 0x400>;
+
+			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 15 IRQ_TYPE_EDGE_RISING>,
+					      <&pdc 14 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "hs_phy_irq",
+					  "ss_phy_irq",
+					  "dm_hs_phy_irq",
+					  "dp_hs_phy_irq";
+
+			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
+				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
+				 <&tcsr TCSR_USB3_CLKREF_EN>;
+			clock-names = "cfg_noc",
+				      "core",
+				      "iface",
+				      "sleep",
+				      "mock_utmi",
+				      "xo";
+
+			assigned-clocks = <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
+					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
+			assigned-clock-rates = <19200000>, <200000000>;
+
+			resets = <&gcc GCC_USB30_PRIM_BCR>;
+
+			power-domains = <&gcc USB30_PRIM_GDSC>;
+			required-opps = <&rpmhpd_opp_nom>;
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			status = "disabled";
+
+			usb_1_dwc3: usb@a600000 {
+				compatible = "snps,dwc3";
+				reg = <0 0x0a600000 0 0xcd00>;
+
+				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
+
+				iommus = <&apps_smmu 0x40 0>;
+
+				phys = <&usb_1_hsphy>,
+				       <&usb_dp_qmpphy QMP_USB43DP_USB3_PHY>;
+				phy-names = "usb2-phy",
+					    "usb3-phy";
+
+				snps,hird-threshold = /bits/ 8 <0x0>;
+				snps,usb2-gadget-lpm-disable;
+				snps,dis_u2_susphy_quirk;
+				snps,dis_enblslpm_quirk;
+				snps,dis-u1-entry-quirk;
+				snps,dis-u2-entry-quirk;
+				snps,is-utmi-l1-suspend;
+				snps,usb3_lpm_capable;
+				snps,usb2-lpm-disable;
+				snps,has-lpm-erratum;
+				tx-fifo-resize;
+
+				dma-coherent;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_1_dwc3_hs: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						usb_1_dwc3_ss: endpoint {
+						};
+					};
+				};
+			};
+		};
+
+		pdc: interrupt-controller@b220000 {
+			compatible = "qcom,sm8650-pdc", "qcom,pdc";
+			reg = <0 0x0b220000 0 0x30000>, <0 0x174000f0 0 0x64>;
+
+			interrupt-parent = <&intc>;
+
+			qcom,pdc-ranges = <0 480 94>, <94 609 31>,
+					  <125 63 1>, <126 716 12>,
+					  <138 251 5>, <143 244 4>;
+
+			#interrupt-cells = <2>;
+			interrupt-controller;
+		};
+
+		tsens0: thermal-sensor@c228000 {
+			compatible = "qcom,sm8650-tsens", "qcom,tsens-v2";
+			reg = <0 0x0c228000 0 0x1000>, /* TM */
+			      <0 0x0c222000 0 0x1000>; /* SROT */
+
+			interrupts = <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 640 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow",
+					  "critical";
+
+			#qcom,sensors = <15>;
+
+			#thermal-sensor-cells = <1>;
+		};
+
+		tsens1: thermal-sensor@c229000 {
+			compatible = "qcom,sm8650-tsens", "qcom,tsens-v2";
+			reg = <0 0x0c229000 0 0x1000>, /* TM */
+			      <0 0x0c223000 0 0x1000>; /* SROT */
+
+			interrupts = <GIC_SPI 507 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 641 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow",
+					  "critical";
+
+			#qcom,sensors = <16>;
+
+			#thermal-sensor-cells = <1>;
+		};
+
+		tsens2: thermal-sensor@c22a000 {
+			compatible = "qcom,sm8650-tsens", "qcom,tsens-v2";
+			reg = <0 0x0c22a000 0 0x1000>, /* TM */
+			      <0 0x0c224000 0 0x1000>; /* SROT */
+
+			interrupts = <GIC_SPI 508 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 642 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow",
+					  "critical";
+
+			#qcom,sensors = <13>;
+
+			#thermal-sensor-cells = <1>;
+		};
+
+		aoss_qmp: power-management@c300000 {
+			compatible = "qcom,sm8650-aoss-qmp", "qcom,aoss-qmp";
+			reg = <0 0x0c300000 0 0x400>;
+
+			interrupt-parent = <&ipcc>;
+			interrupts-extended = <&ipcc IPCC_CLIENT_AOP IPCC_MPROC_SIGNAL_GLINK_QMP
+						     IRQ_TYPE_EDGE_RISING>;
+
+			mboxes = <&ipcc IPCC_CLIENT_AOP IPCC_MPROC_SIGNAL_GLINK_QMP>;
+
+			#clock-cells = <0>;
+		};
+
+		sram@c3f0000 {
+			compatible = "qcom,rpmh-stats";
+			reg = <0 0x0c3f0000 0 0x400>;
+		};
+
+		spmi_bus: spmi@c400000 {
+			compatible = "qcom,spmi-pmic-arb";
+			reg = <0 0x0c400000 0 0x3000>,
+			      <0 0x0c500000 0 0x4000000>,
+			      <0 0x0c440000 0 0x80000>,
+			      <0 0x0c4c0000 0 0x20000>,
+			      <0 0x0c42d000 0 0x4000>;
+			reg-names = "core",
+				    "chnls",
+				    "obsrvr",
+				    "intr",
+				    "cnfg";
+
+			interrupts-extended = <&pdc 1 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "periph_irq";
+
+			qcom,ee = <0>;
+			qcom,channel = <0>;
+			qcom,bus-id = <0>;
+
+			interrupt-controller;
+			#interrupt-cells = <4>;
+
+			#address-cells = <2>;
+			#size-cells = <0>;
+		};
+
+		tlmm: pinctrl@f100000 {
+			compatible = "qcom,sm8650-tlmm";
+			reg = <0 0x0f100000 0 0x300000>;
+
+			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
+
+			gpio-controller;
+			#gpio-cells = <2>;
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+
+			gpio-ranges = <&tlmm 0 0 211>;
+
+			wakeup-parent = <&pdc>;
+
+			qup_uart15_default: qup-uart15-default-state {
+				/* TX, RX */
+				pins = "gpio30", "gpio31";
+				function = "qup2_se7";
+				drive-strength = <2>;
+				bias-disable;
+			};
+		};
+
+		apps_smmu: iommu@15000000 {
+			compatible = "qcom,sm8650-smmu-500", "qcom,smmu-500", "arm,mmu-500";
+			reg = <0 0x15000000 0 0x100000>;
+
+			interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 317 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 319 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 320 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 321 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 322 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 323 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 324 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 325 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 326 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 327 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 328 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 329 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 331 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 332 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 333 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 334 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 335 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 336 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 337 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 338 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 340 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 341 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 342 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 343 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 344 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 345 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 395 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 396 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 397 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 398 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 399 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 400 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 401 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 402 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 403 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 404 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 405 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 406 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 407 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 408 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 409 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 412 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 706 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 689 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 690 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 691 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 692 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 693 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 694 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 695 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 696 IRQ_TYPE_LEVEL_HIGH>;
+
+			#iommu-cells = <2>;
+			#global-interrupts = <1>;
+
+			dma-coherent;
+		};
+
+		intc: interrupt-controller@17100000 {
+			compatible = "arm,gic-v3";
+			reg = <0 0x17100000 0 0x10000>,		/* GICD */
+			      <0 0x17180000 0 0x200000>;	/* GICR * 8 */
+
+			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
+
+			#interrupt-cells = <3>;
+			interrupt-controller;
+
+			#redistributor-regions = <1>;
+			redistributor-stride = <0 0x40000>;
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			gic_its: msi-controller@17140000 {
+				compatible = "arm,gic-v3-its";
+				reg = <0 0x17140000 0 0x20000>;
+
+				msi-controller;
+				#msi-cells = <1>;
+			};
+		};
+
+		timer@17420000 {
+			compatible = "arm,armv7-timer-mem";
+			reg = <0 0x17420000 0 0x1000>;
+
+			ranges = <0 0 0 0x20000000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			frame@17421000 {
+				reg = <0x17421000 0x1000>,
+				      <0x17422000 0x1000>;
+
+				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+
+				frame-number = <0>;
+			};
+
+			frame@17423000 {
+				reg = <0x17423000 0x1000>;
+
+				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+
+				frame-number = <1>;
+
+				status = "disabled";
+			};
+
+			frame@17425000 {
+				reg = <0x17425000 0x1000>;
+
+				interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+
+				frame-number = <2>;
+
+				status = "disabled";
+			};
+
+			frame@17427000 {
+				reg = <0x17427000 0x1000>;
+
+				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+
+				frame-number = <3>;
+
+				status = "disabled";
+			};
+
+			frame@17429000 {
+				reg = <0x17429000 0x1000>;
+
+				interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+
+				frame-number = <4>;
+
+				status = "disabled";
+			};
+
+			frame@1742b000 {
+				reg = <0x1742b000 0x1000>;
+
+				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
+
+				frame-number = <5>;
+
+				status = "disabled";
+			};
+
+			frame@1742d000 {
+				reg = <0x1742d000 0x1000>;
+
+				interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
+
+				frame-number = <6>;
+
+				status = "disabled";
+			};
+		};
+
+		apps_rsc: rsc@17a00000 {
+			compatible = "qcom,rpmh-rsc";
+			reg = <0 0x17a00000 0 0x10000>,
+			      <0 0x17a10000 0 0x10000>,
+			      <0 0x17a20000 0 0x10000>,
+			      <0 0x17a30000 0 0x10000>;
+			reg-names = "drv-0",
+				    "drv-1",
+				    "drv-2";
+
+			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+
+			power-domains = <&CLUSTER_PD>;
+
+			qcom,tcs-offset = <0xd00>;
+			qcom,drv-id = <2>;
+			qcom,tcs-config = <ACTIVE_TCS    3>, <SLEEP_TCS     2>,
+					  <WAKE_TCS      2>, <CONTROL_TCS   0>;
+
+			label = "apps_rsc";
+
+			apps_bcm_voter: bcm-voter {
+				compatible = "qcom,bcm-voter";
+			};
+
+			rpmhcc: clock-controller {
+				compatible = "qcom,sm8650-rpmh-clk";
+
+				clocks = <&xo_board>;
+				clock-names = "xo";
+
+				#clock-cells = <1>;
+			};
+
+			rpmhpd: power-controller {
+				compatible = "qcom,sm8650-rpmhpd";
+
+				operating-points-v2 = <&rpmhpd_opp_table>;
+
+				#power-domain-cells = <1>;
+
+				rpmhpd_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					rpmhpd_opp_ret: opp-16 {
+						opp-level = <RPMH_REGULATOR_LEVEL_RETENTION>;
+					};
+
+					rpmhpd_opp_min_svs: opp-48 {
+						opp-level = <RPMH_REGULATOR_LEVEL_MIN_SVS>;
+					};
+
+					rpmhpd_opp_low_svs_d2: opp-52 {
+						opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D2>;
+					};
+
+					rpmhpd_opp_low_svs_d1: opp-56 {
+						opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
+					};
+
+					rpmhpd_opp_low_svs_d0: opp-60 {
+						opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D0>;
+					};
+
+					rpmhpd_opp_low_svs: opp-64 {
+						opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
+					};
+
+					rpmhpd_opp_low_svs_l1: opp-80 {
+						opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_L1>;
+					};
+
+					rpmhpd_opp_svs: opp-128 {
+						opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
+					};
+
+					rpmhpd_opp_svs_l0: opp-144 {
+						opp-level = <RPMH_REGULATOR_LEVEL_SVS_L0>;
+					};
+
+					rpmhpd_opp_svs_l1: opp-192 {
+						opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
+					};
+
+					rpmhpd_opp_nom: opp-256 {
+						opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
+					};
+
+					rpmhpd_opp_nom_l1: opp-320 {
+						opp-level = <RPMH_REGULATOR_LEVEL_NOM_L1>;
+					};
+
+					rpmhpd_opp_nom_l2: opp-336 {
+						opp-level = <RPMH_REGULATOR_LEVEL_NOM_L2>;
+					};
+
+					rpmhpd_opp_turbo: opp-384 {
+						opp-level = <RPMH_REGULATOR_LEVEL_TURBO>;
+					};
+
+					rpmhpd_opp_turbo_l1: opp-416 {
+						opp-level = <RPMH_REGULATOR_LEVEL_TURBO_L1>;
+					};
+				};
+			};
+		};
+
+		cpufreq_hw: cpufreq@17d91000 {
+			compatible = "qcom,sm8650-cpufreq-epss", "qcom,cpufreq-epss";
+			reg = <0 0x17d91000 0 0x1000>,
+			      <0 0x17d92000 0 0x1000>,
+			      <0 0x17d93000 0 0x1000>,
+			      <0 0x17d94000 0 0x1000>;
+			reg-names = "freq-domain0",
+				    "freq-domain1",
+				    "freq-domain2",
+				    "freq-domain3";
+
+			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 738 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "dcvsh-irq-0",
+					  "dcvsh-irq-1",
+					  "dcvsh-irq-2",
+					  "dcvsh-irq-3";
+
+			clocks = <&bi_tcxo_div2>, <&gcc GCC_GPLL0>;
+			clock-names = "xo", "alternate";
+
+			#freq-domain-cells = <1>;
+			#clock-cells = <1>;
+		};
+
+		system-cache-controller@25000000 {
+			compatible = "qcom,sm8650-llcc";
+			reg = <0 0x25000000 0 0x200000>,
+			      <0 0x25400000 0 0x200000>,
+			      <0 0x25200000 0 0x200000>,
+			      <0 0x25600000 0 0x200000>,
+			      <0 0x25800000 0 0x200000>;
+			reg-names = "llcc0_base",
+				    "llcc1_base",
+				    "llcc2_base",
+				    "llcc3_base",
+				    "llcc_broadcast_base";
+
+			interrupts = <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>;
+		};
+	};
+
+	thermal-zones {
+		aoss0-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens0 0>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				aoss0-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpuss0-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens0 1>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				cpuss0-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpuss1-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens0 2>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				cpuss1-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpuss2-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens0 3>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				cpuss2-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpuss3-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens0 4>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				cpuss3-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu2-top-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens0 5>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu2-critical {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu2-bottom-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens0 6>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu2-critical {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu3-top-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens0 7>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu3-critical {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu3-bottom-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens0 8>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu3-critical {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu4-top-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens0 9>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu4-critical {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu4-bottom-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens0 10>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu4-critical {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu5-top-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens0 11>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu5-critical {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu5-bottom-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens0 12>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu5-critical {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu6-top-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens0 13>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu6-critical {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu6-bottom-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens0 14>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu6-critical {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		aoss1-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens1 0>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				aoss1-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu7-top-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens1 1>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu7-critical {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu7-middle-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens1 2>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu7-critical {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu7-bottom-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens1 3>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu7-critical {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu0-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens1 4>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu0-critical {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu1-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens1 5>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu1-critical {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphvx0-thermal {
+			polling-delay-passive = <10>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 6>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				nsphvx1-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphvx1-thermal {
+			polling-delay-passive = <10>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 7>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				nsphvx1-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphmx0-thermal {
+			polling-delay-passive = <10>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 8>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				nsphmx0-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphmx1-thermal {
+			polling-delay-passive = <10>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 9>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				nsphmx1-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphmx2-thermal {
+			polling-delay-passive = <10>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 10>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				nsphmx2-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nsphmx3-thermal {
+			polling-delay-passive = <10>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 11>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				nsphmx3-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		video-thermal {
+			polling-delay-passive = <10>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens1 12>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				video-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		ddr-thermal {
+			polling-delay-passive = <10>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens1 13>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				ddr-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		camera0-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens1 14>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				camera0-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		camera1-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens1 15>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				camera1-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		aoss2-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 0>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				aoss2-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss0-thermal {
+			polling-delay-passive = <10>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 1>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				gpuss0-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss1-thermal {
+			polling-delay-passive = <10>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 2>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				gpuss1-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss2-thermal {
+			polling-delay-passive = <10>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 3>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				gpuss2-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss3-thermal {
+			polling-delay-passive = <10>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 4>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				gpuss3-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss4-thermal {
+			polling-delay-passive = <10>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 5>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				gpuss4-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss5-thermal {
+			polling-delay-passive = <10>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 6>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				gpuss5-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss6-thermal {
+			polling-delay-passive = <10>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 7>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				gpuss6-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss7-thermal {
+			polling-delay-passive = <10>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 8>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				gpuss7-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		modem0-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 9>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				modem0-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		modem1-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 10>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				modem1-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		modem2-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 11>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				modem2-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		modem3-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsens2 12>;
+
+			trips {
+				trip-point0 {
+					temperature = <90000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				modem3-critical {
+					temperature = <110000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;
+	};
+};

-- 
2.34.1


