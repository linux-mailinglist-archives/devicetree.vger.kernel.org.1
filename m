Return-Path: <devicetree+bounces-116058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E9C9B1BA3
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 02:24:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 15B4B1C20ECC
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 01:24:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AF762EAE5;
	Sun, 27 Oct 2024 01:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n+S0v4iZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADB0BDDDC
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 01:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729992261; cv=none; b=eOhRP2j9Ri7LYjiEfWTbbKixsXb7MZEJ9J09O2gsICsDjJP/2NUpD0KIKmyJH4W1B+70/PI6hA+VmgREAyr21qKfAiWWT/1qVoN2pMaWxdC7koRykrEMC5f97YdSn4Ugwu6V9vfNjj3yvL03bfuC00g9BXGkplSkax61T19MnD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729992261; c=relaxed/simple;
	bh=b7NNwEYRXx8MjyTyutswbo1A9L7AgYV3Uk+8qYXj24o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aPr3wnHJQUxaSBBOJ5AfWfpOut8S3p4UlIrNGmOZp0IU0BcWjZUbWHuk0ARMNQ/7ZCzGri3R96BObaonly47hOAOdmzuDQmDab78WdERbTa83kI4wcqyotJXzX84rnwI2szcd5fO9acnw5KRrl2HE9yMq9H9k8ZSMd29eZz5L1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n+S0v4iZ; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2fabb837ddbso48147101fa.1
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 18:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729992251; x=1730597051; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LAeDfxPrfSb7f0jMnTvXUYUx/XC3MkowwvsEYvX3iZ8=;
        b=n+S0v4iZ5TzaZQoWWHl1WixU/mnQ8EdIyMzqJEHPqVzDxuoQoYf+pUPqO4AhtL8XP7
         HD03wo7jEx5fIG6a/UyOJqGIUNYjrx05WWcunyNx7uofJKFaP5o58Hi8AEOhbjdtV98D
         BPb+yQjcZnhsMgxIV5mvEei2z8gjC4kCHE5f7Zq0H77JgMb/fEaBhPgeF0u+q0Uva3uT
         uVhBjtHJdoYRCC8RMb7FwXJx3XX2YqpnHRLiGSS/USQipmlo85Jl2CC+Ppoua/8vTxtO
         VJTs6e/BhtFs4TIYEyJnDtevWM9hUW23jcP5i9llGrnPF736grURHR8AnN1pqwQEbscA
         jB1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729992251; x=1730597051;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LAeDfxPrfSb7f0jMnTvXUYUx/XC3MkowwvsEYvX3iZ8=;
        b=xSrWQ3A6qip4bB+okZy5Mi9clusFcmbWoPY/P+5rIU8YNZPXKGcn3ASY2mILNNqoom
         7SLw23QfNOK1g+n6uKc2ZSaF734ew2+W1o2k/VSwix6Q2OpKVnxFZM0uqbMTIEK8fa5x
         ec3cU6l43LYwa9vgkJxG6erHZOOuOapq3UO48g0Q8RKZ/EAcB7okeLEQ1Xm02W75S4gd
         F+TgrzC4MLAHYwTpK1bjtA9OSmrvKIVTSNoUheCh4OO6834eYx2I+ymZxK2+xTzF018m
         wtMINnqWpC+7ML4NgdTwYPpg5S+HWkpUlK4AAYVIf0+y/yvM70JHmSR2hp3agpwygQW9
         fRSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwbACGKS8/dltq4CR23EtS0Pd7Bmmp//1BN/K18qfZCq4Rngt0PBzjyQ77WGylkAGvdRNXtrh5hF/g@vger.kernel.org
X-Gm-Message-State: AOJu0YyjqxSzCCyNTty8PVtu7ixiGfKWK28JT+hqEh/mrBuxYfbOPuBo
	1znKzRIUndbQGX/XLYNq0lEdAxuZo5cGOIaRR56wt5tE6NYu0Js9tLxNTWpxK0cwbQrmmJeEb8i
	a
X-Google-Smtp-Source: AGHT+IFMsSUmfKejndsZA9reqmo7b4w26yJzxGxrrCb4ejPvOkvo973zUR8Fmcckvznu5jofIA2GiA==
X-Received: by 2002:a2e:a4b9:0:b0:2fb:510c:7237 with SMTP id 38308e7fff4ca-2fcbe08f849mr17937811fa.41.1729992249817;
        Sat, 26 Oct 2024 18:24:09 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fcb4519b3esm6913881fa.44.2024.10.26.18.24.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 18:24:08 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 27 Oct 2024 03:24:03 +0200
Subject: [PATCH 1/3] arm64: dts: qcom: sar2130p: add support for SAR2130P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241027-sar2130p-dt-v1-1-739d36d31c33@linaro.org>
References: <20241027-sar2130p-dt-v1-0-739d36d31c33@linaro.org>
In-Reply-To: <20241027-sar2130p-dt-v1-0-739d36d31c33@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=89997;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=b7NNwEYRXx8MjyTyutswbo1A9L7AgYV3Uk+8qYXj24o=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnHZY0B3A8HrDURigoeKJWFP7KKG+y1dRl1WI6v
 9vi4CKkTFCJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZx2WNAAKCRAU23LtvoBl
 uMHqD/43dCvCbH64DF0y3BxKmsdsMQqZI52bNX5eQDDJ8kGjaYGb6rDrNBrTbEXo1eHvewymMqa
 YaeEhhBssaPknc0P7T/qdD03/CznonT3YPnriVMHU798KfLBARQ/ZAG3YdlJgIZgmZGy2oWNJzz
 vzd235KZopPpTQfgODOw3ZYQxdDbZ6LKlGswSSojlbpwkj3nhhjZsERiSwBoyBc1gThxIPEcAm/
 A+bGDTzWSyrmWL1e3N7NWhBDpb3BvidX/zwxiZAxtpvSDIeRXf1fZTEautzZcT1wSM2IDggWSiQ
 /tgn5+vOjg2AnV+Gy238Nw7ZEh2dwfzW5cHyUlCpOZdorwSmjMGg881CRLtK3xlizo6n65U4Ej1
 MYYrL+XB2OUPMBh9W+Axo5az06ilqlQX2scuO+P4xkNtjX18cIY2W1NKdFL0esAwP4fJmZVpJ2X
 D/4YpzXIGqULSD7XnUCARndRJ9XIpxoR7ppCMVr561IpCC6eeJX4OCtu6Pl8YnR6vXn3U4bArjM
 tfyqNNfqq8Uwn78b0tCagtqJUdDCpckJF/h7plK//B9L0FecWL89ez/2wyY/JNwMfIU74pL6mqR
 NTKLUqtJ5RrZwMHHbJcEStVUitG6mEPYKBwC1dewBr62PecwykliHaarKq1upHsDW+AVDi9RTNC
 mZbx9P7ID1juQ0w==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add DT file for the Qualcomm SAR2130P platform.

Co-developed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sar2130p.dtsi | 3091 ++++++++++++++++++++++++++++++++
 1 file changed, 3091 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sar2130p.dtsi b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..a8edbb9e6591265644476623aec36be9147ed7a0
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
@@ -0,0 +1,3091 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2024, Linaro Limited
+ */
+
+#include <dt-bindings/clock/qcom,rpmh.h>
+#include <dt-bindings/clock/qcom,sar2130p-gcc.h>
+#include <dt-bindings/clock/qcom,sar2130p-gpucc.h>
+#include <dt-bindings/clock/qcom,sm8550-tcsr.h>
+#include <dt-bindings/dma/qcom-gpi.h>
+#include <dt-bindings/interconnect/qcom,icc.h>
+#include <dt-bindings/interconnect/qcom,sar2130p-rpmh.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/mailbox/qcom-ipcc.h>
+#include <dt-bindings/phy/phy-qcom-qmp.h>
+#include <dt-bindings/power/qcom-rpmpd.h>
+#include <dt-bindings/power/qcom,rpmhpd.h>
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
+			clock-frequency = <19200000>;
+		};
+
+		sleep_clk: sleep-clk {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <32000>;
+		};
+	};
+
+	cpus {
+		#address-cells = <2>;
+		#size-cells = <0>;
+
+		CPU0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x0 0x0>;
+			clocks = <&cpufreq_hw 0>;
+			enable-method = "psci";
+			next-level-cache = <&L2_0>;
+			qcom,freq-domain = <&cpufreq_hw 0>;
+			power-domains = <&CPU_PD0>;
+			power-domain-names = "psci";
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
+			compatible = "arm,cortex-a55";
+			reg = <0x0 0x100>;
+			clocks = <&cpufreq_hw 0>;
+			enable-method = "psci";
+			next-level-cache = <&L2_100>;
+			qcom,freq-domain = <&cpufreq_hw 0>;
+			power-domains = <&CPU_PD1>;
+			power-domain-names = "psci";
+			#cooling-cells = <2>;
+
+			L2_100: l2-cache {
+				compatible = "cache";
+				cache-level = <2>;
+				cache-unified;
+				next-level-cache = <&L3_0>;
+			};
+		};
+
+		CPU2: cpu@200 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x0 0x200>;
+			clocks = <&cpufreq_hw 0>;
+			enable-method = "psci";
+			next-level-cache = <&L2_200>;
+			qcom,freq-domain = <&cpufreq_hw 0>;
+			power-domains = <&CPU_PD2>;
+			power-domain-names = "psci";
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
+			compatible = "arm,cortex-a55";
+			reg = <0x0 0x300>;
+			clocks = <&cpufreq_hw 0>;
+			enable-method = "psci";
+			next-level-cache = <&L2_300>;
+			qcom,freq-domain = <&cpufreq_hw 0>;
+			power-domains = <&CPU_PD3>;
+			power-domain-names = "psci";
+			#cooling-cells = <2>;
+
+			L2_300: l2-cache {
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
+			};
+		};
+
+		idle-states {
+			entry-method = "psci";
+
+			LITTLE_CPU_SLEEP_0: cpu-sleep-0-0 {
+				compatible = "arm,idle-state";
+				idle-state-name = "silver-power-collapse";
+				arm,psci-suspend-param = <0x40000003>;
+				entry-latency-us = <549>;
+				exit-latency-us = <901>;
+				min-residency-us = <1774>;
+				local-timer-stop;
+			};
+
+			LITTLE_CPU_SLEEP_1: cpu-sleep-0-1 {
+				compatible = "arm,idle-state";
+				idle-state-name = "silver-rail-power-collapse";
+				arm,psci-suspend-param = <0x40000004>;
+				entry-latency-us = <702>;
+				exit-latency-us = <915>;
+				min-residency-us = <4001>;
+				local-timer-stop;
+			};
+		};
+
+		domain-idle-states {
+			CLUSTER_SLEEP_0: cluster-sleep-0 {
+				compatible = "domain-idle-state";
+				arm,psci-suspend-param = <0x41000044>;
+				entry-latency-us = <2752>;
+				exit-latency-us = <3048>;
+				min-residency-us = <6118>;
+			};
+
+			CLUSTER_SLEEP_1: cluster-sleep-1 {
+				compatible = "domain-idle-state";
+				arm,psci-suspend-param = <0x41002344>;
+				entry-latency-us = <3263>;
+				exit-latency-us = <4562>;
+				min-residency-us = <8467>;
+			};
+
+			CLUSTER_SLEEP_2: cluster-sleep-2 {
+				compatible = "domain-idle-state";
+				arm,psci-suspend-param = <0x4100c344>;
+				entry-latency-us = <3638>;
+				exit-latency-us = <6562>;
+				min-residency-us = <9862>;
+			};
+		};
+	};
+
+	firmware {
+		scm: scm {
+			compatible = "qcom,scm-sar2130p", "qcom,scm";
+			qcom,dload-mode = <&tcsr_mutex 0x13000>;
+			interconnects = <&system_noc MASTER_CRYPTO QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+		};
+	};
+
+	clk_virt: interconnect-0 {
+		compatible = "qcom,sar2130p-clk-virt";
+		#interconnect-cells = <2>;
+		qcom,bcm-voters = <&apps_bcm_voter>;
+	};
+
+	mc_virt: interconnect-1 {
+		compatible = "qcom,sar2130p-mc-virt";
+		#interconnect-cells = <2>;
+		qcom,bcm-voters = <&apps_bcm_voter>;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		/* We expect the bootloader to fill in the size */
+		reg = <0x0 0x80000000 0x0 0x0>;
+	};
+
+	pmu {
+		compatible = "arm,armv8-pmuv3";
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+
+		CPU_PD0: power-domain-cpu0 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&LITTLE_CPU_SLEEP_0>, <&LITTLE_CPU_SLEEP_1>;
+		};
+
+		CPU_PD1: power-domain-cpu1 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&LITTLE_CPU_SLEEP_0>, <&LITTLE_CPU_SLEEP_1>;
+		};
+
+		CPU_PD2: power-domain-cpu2 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&LITTLE_CPU_SLEEP_0>, <&LITTLE_CPU_SLEEP_1>;
+		};
+
+		CPU_PD3: power-domain-cpu3 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER_PD>;
+			domain-idle-states = <&LITTLE_CPU_SLEEP_0>, <&LITTLE_CPU_SLEEP_1>;
+		};
+
+		CLUSTER_PD: power-domain-cpu-cluster0 {
+			#power-domain-cells = <0>;
+			domain-idle-states = <&CLUSTER_SLEEP_0>, <&CLUSTER_SLEEP_1>, <&CLUSTER_SLEEP_2>;
+		};
+	};
+
+	reserved_memory: reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		hyp_mem: hyp-region@80000000 {
+			reg = <0x0 0x80000000 0x0 0x600000>;
+			no-map;
+		};
+
+		xbl_dt_log_mem: xbl-dt-log-region@80600000 {
+			reg = <0x0 0x80600000 0x0 0x40000>;
+			no-map;
+		};
+
+		xbl_ramdump_mem: xbl-ramdump-region@80640000 {
+			reg = <0x0 0x80640000 0x0 0x1c0000>;
+			no-map;
+		};
+
+		aop_image_mem: aop-image-region@80800000 {
+			reg = <0x0 0x80800000 0x0 0x60000>;
+			no-map;
+		};
+
+		aop_cmd_db_mem: aop-cmd-db-region@80860000 {
+			compatible = "qcom,cmd-db";
+			reg = <0x0 0x80860000 0x0 0x20000>;
+			no-map;
+		};
+
+		aop_config_mem: aop-config-region@80880000 {
+			reg = <0x0 0x80880000 0x0 0x20000>;
+			no-map;
+		};
+
+		tme_crash_dump_mem: tme-crash-dump-region@808a0000 {
+			reg = <0x0 0x808a0000 0x0 0x40000>;
+			no-map;
+		};
+
+		tme_log_mem: tme-log-region@808e0000 {
+			reg = <0x0 0x808e0000 0x0 0x4000>;
+			no-map;
+		};
+
+		uefi_log_mem: uefi-log-region@808e4000 {
+			reg = <0x0 0x808e4000 0x0 0x10000>;
+			no-map;
+		};
+
+		secdata_apss_mem: secdata-apss-region@808ff000 {
+			reg = <0x0 0x808ff000 0x0 0x1000>;
+			no-map;
+		};
+
+		/* secdata region can be reused by apps */
+		smem: smem@80900000 {
+			compatible = "qcom,smem";
+			reg = <0x0 0x80900000 0x0 0x200000>;
+			hwlocks = <&tcsr_mutex 3>;
+			no-map;
+		};
+
+		cpucp_fw_mem: cpucp-fw-region@80b00000 {
+			reg = <0x0 0x80b00000 0x0 0x100000>;
+			no-map;
+		};
+
+		helios_ram_dump_mem: helios-ram-dump-region@80c00000 {
+			reg = <0x0 0x80c00000 0x0 0xe00000>;
+			no-map;
+		};
+
+		camera_mem: camera-region@84e00000 {
+			reg = <0x0 0x84e00000 0x0 0x800000>;
+			no-map;
+		};
+
+		video_mem: video-region@86f00000 {
+			reg = <0x0 0x86f00000 0x0 0x500000>;
+			no-map;
+		};
+
+		adsp_mem: adsp-region@87600000 {
+			reg = <0x0 0x87600000 0x0 0x1e00000>;
+			no-map;
+		};
+
+		cdsp_mem: cdsp-region@89400000 {
+			reg = <0x0 0x89400000 0x0 0xf00000>;
+			no-map;
+		};
+
+		ipa_fw_mem: ipa-fw-region@8a300000 {
+			reg = <0x0 0x8a300000 0x0 0x10000>;
+			no-map;
+		};
+
+		ipa_gsi_mem: ipa-gsi-region@8a3a0000 {
+			reg = <0x0 0x8a310000 0x0 0xa000>;
+			no-map;
+		};
+
+		gpu_micro_code_mem: gpu-micro-code-region@8a31a000 {
+			reg = <0x0 0x8a31a000 0x0 0x2000>;
+			no-map;
+		};
+
+		cvp_mem: cvp-region@8a400000 {
+			reg = <0x0 0x8a400000 0x0 0x700000>;
+			no-map;
+		};
+
+		xbl_sc_mem: xbl-sc-region@a6e00000 {
+			no-map;
+			reg = <0x0 0xa6e00000 0x0 0x40000>;
+		};
+
+		global_sync_mem: global-sync-region@a6f00000 {
+			no-map;
+			reg = <0x0 0xa6f00000 0x0 0x100000>;
+		};
+
+		tz_stat_mem: tz-stat-region@e8800000 {
+			no-map;
+			reg = <0x0 0xe8800000 0x0 0x100000>;
+		};
+
+		tags_mem: tags-region@e8900000 {
+			no-map;
+			reg = <0x0 0xe8900000 0x0 0x500000>;
+		};
+
+		qtee_mem: qtee-region@e8e00000 {
+			no-map;
+			reg = <0x0 0xe8e00000 0x0 0x500000>;
+		};
+
+		trusted_apps_mem: trusted-apps-region@e9300000 {
+			no-map;
+			reg = <0x0 0xe9300000 0x0 0xc00000>;
+		};
+	};
+
+	smp2p-adsp {
+		compatible = "qcom,smp2p";
+		qcom,smem = <443>, <429>;
+		interrupts-extended = <&ipcc IPCC_CLIENT_LPASS
+					     IPCC_MPROC_SIGNAL_SMP2P
+					     IRQ_TYPE_EDGE_RISING>;
+		mboxes = <&ipcc IPCC_CLIENT_LPASS
+				IPCC_MPROC_SIGNAL_SMP2P>;
+
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <2>;
+
+		smp2p_adsp_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		smp2p_adsp_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
+	smp2p-cdsp {
+		compatible = "qcom,smp2p";
+		qcom,smem = <94>, <432>;
+		interrupts-extended = <&ipcc IPCC_CLIENT_CDSP
+					     IPCC_MPROC_SIGNAL_SMP2P
+					     IRQ_TYPE_EDGE_RISING>;
+		mboxes = <&ipcc IPCC_CLIENT_CDSP
+				IPCC_MPROC_SIGNAL_SMP2P>;
+
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <5>;
+
+		smp2p_cdsp_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		smp2p_cdsp_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
+	soc: soc@0 {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges = <0 0 0 0 0x10 0>;
+		dma-ranges = <0 0 0 0 0x10 0>;
+		compatible = "simple-bus";
+
+		gcc: clock-controller@100000 {
+			compatible = "qcom,sar2130p-gcc";
+			reg = <0x0 0x00100000 0x0 0x1f4200>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&sleep_clk>,
+				 <&pcie0_phy>,
+				 <&pcie1_phy>,
+				 <&usb_dp_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
+		};
+
+		sdhc_1: mmc@7c4000 {
+			compatible = "qcom,sar2130p-sdhci", "qcom,sdhci-msm-v5";
+			reg = <0x0 0x007c4000 0x0 0x1000>,
+			      <0x0 0x007c5000 0x0 0x1000>;
+			reg-names = "hc", "cqhci";
+
+			iommus = <&apps_smmu 0x160 0x0>;
+			interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "hc_irq", "pwr_irq";
+
+			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
+				 <&gcc GCC_SDCC1_APPS_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "iface", "core", "xo";
+			interconnects = <&system_noc MASTER_SDCC_1 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					 &config_noc SLAVE_SDCC_1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "sdhc-ddr","cpu-sdhc";
+			power-domains = <&rpmhpd RPMHPD_CX>;
+			operating-points-v2 = <&sdhc1_opp_table>;
+
+			pinctrl-0 = <&sdc1_default>;
+			pinctrl-1 = <&sdc1_sleep>;
+			pinctrl-names = "default", "sleep";
+
+			bus-width = <8>;
+			non-removable;
+			supports-cqe;
+
+			mmc-ddr-1_8v;
+			mmc-hs200-1_8v;
+			mmc-hs400-1_8v;
+			mmc-hs400-enhanced-strobe;
+
+			status = "disabled";
+
+			sdhc1_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-100000000 {
+					opp-hz = /bits/ 64 <100000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <500000 200000>;
+					opp-avg-kBps = <104000 0>;
+				};
+
+				opp-384000000 {
+					opp-hz = /bits/ 64 <384000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <2500000 1000000>;
+					opp-avg-kBps = <400000 0>;
+				};
+			};
+		};
+
+		gpi_dma0: dma-controller@900000 {
+			compatible = "qcom,sar2130p-gpi-dma", "qcom,sm6350-gpi-dma";
+			reg = <0x0 0x00900000 0x0 0x60000>;
+			interrupts = <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 245 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 251 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 252 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 253 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <3>;
+			dma-channels = <12>;
+			dma-channel-mask = <0x7e>;
+			iommus = <&apps_smmu 0x76 0x0>;
+			status = "disabled";
+		};
+
+		qupv3_id_0: geniqup@9c0000 {
+			compatible = "qcom,geni-se-qup";
+			reg = <0x0 0x009c0000 0x0 0x2000>;
+			clock-names = "m-ahb", "s-ahb";
+			clocks = <&gcc GCC_QUPV3_WRAP_0_M_AHB_CLK>,
+				 <&gcc GCC_QUPV3_WRAP_0_S_AHB_CLK>;
+			iommus = <&apps_smmu 0x63 0x0>;
+			interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+					 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "qup-core";
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+			status = "disabled";
+
+			i2c0: i2c@980000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0x0 0x00980000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP0_S0_CLK>;
+				pinctrl-0 = <&qup_i2c0_data_clk>;
+				pinctrl-names = "default";
+				interrupts = <GIC_SPI 601 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_0 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma0 0 0 QCOM_GPI_I2C>,
+				       <&gpi_dma0 1 0 QCOM_GPI_I2C>;
+				dma-names = "tx", "rx";
+				status = "disabled";
+			};
+
+			spi0: spi@980000 {
+				compatible = "qcom,geni-spi";
+				reg = <0x0 0x00980000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP0_S0_CLK>;
+				interrupts = <GIC_SPI 601 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-0 = <&qup_spi0_data_clk>, <&qup_spi0_cs0>;
+				pinctrl-names = "default";
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_0 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma0 0 0 QCOM_GPI_SPI>,
+				       <&gpi_dma0 1 0 QCOM_GPI_SPI>;
+				dma-names = "tx", "rx";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			i2c1: i2c@984000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0x0 0x00984000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP0_S1_CLK>;
+				pinctrl-0 = <&qup_i2c1_data_clk>;
+				pinctrl-names = "default";
+				interrupts = <GIC_SPI 602 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_0 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma0 0 1 QCOM_GPI_I2C>,
+				       <&gpi_dma0 1 1 QCOM_GPI_I2C>;
+				dma-names = "tx", "rx";
+				status = "disabled";
+			};
+
+			spi1: spi@984000 {
+				compatible = "qcom,geni-spi";
+				reg = <0x0 0x00984000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP0_S1_CLK>;
+				interrupts = <GIC_SPI 602 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-0 = <&qup_spi1_data_clk>, <&qup_spi1_cs>;
+				pinctrl-names = "default";
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_0 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma0 0 1 QCOM_GPI_SPI>,
+				       <&gpi_dma0 1 1 QCOM_GPI_SPI>;
+				dma-names = "tx", "rx";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			i2c2: i2c@988000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0x0 0x00988000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP0_S2_CLK>;
+				pinctrl-0 = <&qup_i2c2_data_clk>;
+				pinctrl-names = "default";
+				interrupts = <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_0 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma0 0 2 QCOM_GPI_I2C>,
+				       <&gpi_dma0 1 2 QCOM_GPI_I2C>;
+				dma-names = "tx", "rx";
+				status = "disabled";
+			};
+
+			spi2: spi@988000 {
+				compatible = "qcom,geni-spi";
+				reg = <0x0 0x00988000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP0_S2_CLK>;
+				interrupts = <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-0 = <&qup_spi2_data_clk>, <&qup_spi2_cs>;
+				pinctrl-names = "default";
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_0 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma0 0 2 QCOM_GPI_SPI>,
+				       <&gpi_dma0 1 2 QCOM_GPI_SPI>;
+				dma-names = "tx", "rx";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+
+			i2c3: i2c@98c000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0x0 0x0098c000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP0_S3_CLK>;
+				pinctrl-0 = <&qup_i2c3_data_clk>;
+				pinctrl-names = "default";
+				interrupts = <GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_0 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma0 0 3 QCOM_GPI_I2C>,
+				       <&gpi_dma0 1 3 QCOM_GPI_I2C>;
+				dma-names = "tx", "rx";
+				status = "disabled";
+			};
+
+			spi3: spi@98c000 {
+				compatible = "qcom,geni-spi";
+				reg = <0x0 0x0098c000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP0_S3_CLK>;
+				interrupts = <GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-0 = <&qup_spi3_data_clk>, <&qup_spi3_cs0>;
+				pinctrl-names = "default";
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_0 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma0 0 3 QCOM_GPI_SPI>,
+				       <&gpi_dma0 1 3 QCOM_GPI_SPI>;
+				dma-names = "tx", "rx";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			i2c4: i2c@990000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0x0 0x00990000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP0_S4_CLK>;
+				pinctrl-0 = <&qup_i2c4_data_clk>;
+				pinctrl-names = "default";
+				interrupts = <GIC_SPI 605 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_0 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma0 0 4 QCOM_GPI_I2C>,
+				       <&gpi_dma0 1 4 QCOM_GPI_I2C>;
+				dma-names = "tx", "rx";
+				status = "disabled";
+			};
+
+			spi4: spi@990000 {
+				compatible = "qcom,geni-spi";
+				reg = <0x0 0x00990000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP0_S4_CLK>;
+				interrupts = <GIC_SPI 605 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-0 = <&qup_spi4_data_clk>, <&qup_spi4_cs0>;
+				pinctrl-names = "default";
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_0 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma0 0 4 QCOM_GPI_SPI>,
+				       <&gpi_dma0 1 4 QCOM_GPI_SPI>;
+				dma-names = "tx", "rx";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			i2c5: i2c@994000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0x0 0x00994000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP0_S5_CLK>;
+				pinctrl-0 = <&qup_i2c5_data_clk>;
+				pinctrl-names = "default";
+				interrupts = <GIC_SPI 606 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_0 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma0 0 5 QCOM_GPI_I2C>,
+				       <&gpi_dma0 1 5 QCOM_GPI_I2C>;
+				dma-names = "tx", "rx";
+				status = "disabled";
+			};
+
+			spi5: spi@994000 {
+				compatible = "qcom,geni-spi";
+				reg = <0x0 0x00994000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP0_S5_CLK>;
+				interrupts = <GIC_SPI 606 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-0 = <&qup_spi5_data_clk>, <&qup_spi5_cs>;
+				pinctrl-names = "default";
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_0 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma0 0 5 QCOM_GPI_SPI>,
+				       <&gpi_dma0 1 5 QCOM_GPI_SPI>;
+				dma-names = "tx", "rx";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+		};
+
+		gpi_dma1: dma-controller@a00000 {
+			compatible = "qcom,sar2130p-gpi-dma", "qcom,sm6350-gpi-dma";
+			#dma-cells = <3>;
+			reg = <0x0 0x00a00000 0x0 0x60000>;
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
+			dma-channels = <12>;
+			dma-channel-mask = <0x7e>;
+			iommus = <&apps_smmu 0x16 0x0>;
+			status = "disabled";
+		};
+
+		qupv3_id_1: geniqup@ac0000 {
+			compatible = "qcom,geni-se-qup";
+			reg = <0x0 0x00ac0000 0x0 0x6000>;
+			clock-names = "m-ahb", "s-ahb";
+			clocks = <&gcc GCC_QUPV3_WRAP_1_M_AHB_CLK>,
+				 <&gcc GCC_QUPV3_WRAP_1_S_AHB_CLK>;
+			iommus = <&apps_smmu 0x3 0x0>;
+			interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
+					 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "qup-core";
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+			status = "disabled";
+
+			i2c6: i2c@a80000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0x0 0x00a80000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S0_CLK>;
+				pinctrl-0 = <&qup_i2c6_data_clk>;
+				pinctrl-names = "default";
+				interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma1 0 0 QCOM_GPI_I2C>,
+				       <&gpi_dma1 1 0 QCOM_GPI_I2C>;
+				dma-names = "tx", "rx";
+				status = "disabled";
+			};
+
+			spi6: spi@a80000 {
+				compatible = "qcom,geni-spi";
+				reg = <0x0 0x00a80000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S0_CLK>;
+				interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-0 = <&qup_spi6_data_clk>, <&qup_spi6_cs>;
+				pinctrl-names = "default";
+				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma1 0 0 QCOM_GPI_SPI>,
+				       <&gpi_dma1 1 0 QCOM_GPI_SPI>;
+				dma-names = "tx", "rx";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			i2c7: i2c@a84000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0x0 0x00a84000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S1_CLK>;
+				pinctrl-0 = <&qup_i2c7_data_clk>;
+				pinctrl-names = "default";
+				interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma1 0 1 QCOM_GPI_I2C>,
+				       <&gpi_dma1 1 1 QCOM_GPI_I2C>;
+				dma-names = "tx", "rx";
+				status = "disabled";
+			};
+
+			spi7: spi@a84000 {
+				compatible = "qcom,geni-spi";
+				reg = <0x0 0x00a84000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S1_CLK>;
+				interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-0 = <&qup_spi7_data_clk>, <&qup_spi7_cs>;
+				pinctrl-names = "default";
+				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma1 0 1 QCOM_GPI_SPI>,
+				       <&gpi_dma1 1 1 QCOM_GPI_SPI>;
+				dma-names = "tx", "rx";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			uart7: uart@a84000 {
+				compatible = "qcom,geni-uart";
+				reg = <0x0 0x00a84000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S1_CLK>;
+				pinctrl-0 = <&qup_uart7_default>;
+				pinctrl-names = "default";
+				interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config";
+				status = "disabled";
+			};
+
+			i2c8: i2c@a88000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0x0 0x00a88000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S2_CLK>;
+				pinctrl-0 = <&qup_i2c8_data_clk>;
+				pinctrl-names = "default";
+				interrupts = <GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma1 0 2 QCOM_GPI_I2C>,
+				       <&gpi_dma1 1 2 QCOM_GPI_I2C>;
+				dma-names = "tx", "rx";
+				status = "disabled";
+			};
+
+			spi8: spi@a88000 {
+				compatible = "qcom,geni-spi";
+				reg = <0x0 0x00a88000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S2_CLK>;
+				interrupts = <GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-0 = <&qup_spi8_data_clk>, <&qup_spi8_cs>;
+				pinctrl-names = "default";
+				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma1 0 2 QCOM_GPI_SPI>,
+				       <&gpi_dma1 1 2 QCOM_GPI_SPI>;
+				dma-names = "tx", "rx";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			i2c9: i2c@a8c000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0x0 0x00a8c000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S3_CLK>;
+				pinctrl-0 = <&qup_i2c9_data_clk>;
+				pinctrl-names = "default";
+				interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma1 0 3 QCOM_GPI_I2C>,
+				       <&gpi_dma1 1 3 QCOM_GPI_I2C>;
+				dma-names = "tx", "rx";
+				status = "disabled";
+			};
+
+			spi9: spi@a8c000 {
+				compatible = "qcom,geni-spi";
+				reg = <0x0 0x00a8c000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S3_CLK>;
+				interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-0 = <&qup_spi9_data_clk>, <&qup_spi9_cs>;
+				pinctrl-names = "default";
+				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma1 0 3 QCOM_GPI_SPI>,
+				       <&gpi_dma1 1 3 QCOM_GPI_SPI>;
+				dma-names = "tx", "rx";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			i2c10: i2c@a90000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0x0 0x00a90000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S4_CLK>;
+				pinctrl-0 = <&qup_i2c10_data_clk>;
+				pinctrl-names = "default";
+				interrupts = <GIC_SPI 357 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma1 0 4 QCOM_GPI_I2C>,
+				       <&gpi_dma1 1 4 QCOM_GPI_I2C>;
+				dma-names = "tx", "rx";
+				status = "disabled";
+			};
+
+			spi10: spi@a90000 {
+				compatible = "qcom,geni-spi";
+				reg = <0x0 0x00a90000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S4_CLK>;
+				interrupts = <GIC_SPI 357 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-0 = <&qup_spi10_data_clk>, <&qup_spi10_cs>;
+				pinctrl-names = "default";
+				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma1 0 4 QCOM_GPI_SPI>,
+				       <&gpi_dma1 1 4 QCOM_GPI_SPI>;
+				dma-names = "tx", "rx";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			i2c11: i2c@a94000 {
+				compatible = "qcom,geni-i2c";
+				reg = <0x0 0x00a94000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S5_CLK>;
+				pinctrl-0 = <&qup_i2c11_data_clk>;
+				pinctrl-names = "default";
+				interrupts = <GIC_SPI 358 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma1 0 5 QCOM_GPI_I2C>,
+				       <&gpi_dma1 1 5 QCOM_GPI_I2C>;
+				dma-names = "tx", "rx";
+				status = "disabled";
+			};
+
+			spi11: spi@a94000 {
+				compatible = "qcom,geni-spi";
+				reg = <0x0 0x00a94000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S5_CLK>;
+				interrupts = <GIC_SPI 358 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-0 = <&qup_spi11_data_clk>, <&qup_spi11_cs>;
+				pinctrl-names = "default";
+				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
+						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
+						<&system_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
+						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core", "qup-config", "qup-memory";
+				dmas = <&gpi_dma1 0 5 QCOM_GPI_SPI>,
+				       <&gpi_dma1 1 5 QCOM_GPI_SPI>;
+				dma-names = "tx", "rx";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			uart11: serial@a94000 {
+				compatible = "qcom,geni-debug-uart";
+				reg = <0x0 0x00a94000 0x0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP1_S5_CLK>;
+				pinctrl-0 = <&qup_uart11_default>;
+				pinctrl-names = "default";
+				interrupts = <GIC_SPI 358 IRQ_TYPE_LEVEL_HIGH>;
+				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core",
+						     "qup-config";
+				status = "disabled";
+			};
+		};
+
+		config_noc: interconnect@1500000 {
+			compatible = "qcom,sar2130p-config-noc";
+			reg = <0x0 0x01500000 0x0 0x10>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+
+		system_noc: interconnect@1680000 {
+			compatible = "qcom,sar2130p-system-noc";
+			reg = <0x0 0x01680000 0x0 0x29080>;
+			clocks = <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+
+		pcie_noc: interconnect@16c0000 {
+			compatible = "qcom,sar2130p-pcie-anoc";
+			reg = <0x0 0x016c0000 0x0 0xa080>;
+			clocks = <&gcc GCC_AGGRE_NOC_PCIE_1_AXI_CLK>,
+				 <&gcc GCC_CFG_NOC_PCIE_ANOC_AHB_CLK>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+
+		mmss_noc: interconnect@1740000 {
+			compatible = "qcom,sar2130p-mmss-noc";
+			reg = <0x0 0x01740000 0x0 0x1f100>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+
+		pcie0: pcie@1c00000 {
+			device_type = "pci";
+			compatible = "qcom,sar2130p-pcie", "qcom,pcie-sm8550";
+			reg = <0x0 0x01c00000 0x0 0x3000>,
+			      <0x0 0x60000000 0x0 0xf1d>,
+			      <0x0 0x60000f20 0x0 0xa8>,
+			      <0x0 0x60001000 0x0 0x1000>,
+			      <0x0 0x60100000 0x0 0x100000>,
+			      <0x0 0x01c0c000 0x0 0x1000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "config", "mhi";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0x0 0x00000000 0x0 0x60200000 0x0 0x100000>,
+				 <0x02000000 0x0 0x60300000 0x0 0x60300000 0x0 0x3d00000>;
+			bus-range = <0x00 0xff>;
+
+			dma-coherent;
+
+			linux,pci-domain = <0>;
+			num-lanes = <2>;
+
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7";
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
+					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
+					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
+					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
+
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_DDRSS_PCIE_SF_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_1_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "ddrss_sf_tbu",
+				      "noc_aggr";
+
+			interconnects = <&pcie_noc MASTER_PCIE_0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					 &config_noc SLAVE_PCIE_0 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "pcie-mem", "cpu-pcie";
+
+			iommu-map = <0x0   &apps_smmu 0x1c00 0x1>,
+				    <0x100 &apps_smmu 0x1c01 0x1>;
+
+			resets = <&gcc GCC_PCIE_0_BCR>;
+			reset-names = "pci";
+
+			power-domains = <&gcc PCIE_0_GDSC>;
+
+			phys = <&pcie0_phy>;
+			phy-names = "pciephy";
+
+			status = "disabled";
+
+			pcieport0: pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
+		};
+
+		pcie0_phy: phy@1c06000 {
+			compatible = "qcom,sar2130p-qmp-gen3x2-pcie-phy";
+			reg = <0x0 0x01c06000 0x0 0x2000>;
+
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&tcsr TCSR_PCIE_0_CLKREF_EN>,
+				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK>;
+			clock-names = "aux", "cfg_ahb", "ref", "rchng",
+				      "pipe";
+
+			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
+			reset-names = "phy";
+
+			assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			power-domains = <&gcc PCIE_0_PHY_GDSC>;
+
+			#clock-cells = <0>;
+			clock-output-names = "pcie0_pipe_clk";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		pcie1: pcie@1c08000 {
+			device_type = "pci";
+			compatible = "qcom,sar2130p-pcie", "qcom,pcie-sm8550";
+			reg = <0x0 0x01c08000 0x0 0x3000>,
+			      <0x0 0x40000000 0x0 0xf1d>,
+			      <0x0 0x40000f20 0x0 0xa8>,
+			      <0x0 0x40001000 0x0 0x1000>,
+			      <0x0 0x40100000 0x0 0x100000>,
+			      <0x0 0x01c0b000 0x0 0x1000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "config", "mhi";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
+				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;
+			bus-range = <0x00 0xff>;
+
+			dma-coherent;
+
+			linux,pci-domain = <1>;
+			num-lanes = <2>;
+
+			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 312 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 313 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7";
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 0 434 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
+					<0 0 0 2 &intc 0 0 0 435 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
+					<0 0 0 3 &intc 0 0 0 438 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
+					<0 0 0 4 &intc 0 0 0 439 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
+
+			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
+				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_1_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_DDRSS_PCIE_SF_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_1_AXI_CLK>,
+				 <&gcc GCC_CFG_NOC_PCIE_ANOC_AHB_CLK>,
+				 <&gcc GCC_QMIP_PCIE_AHB_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "ddrss_sf_tbu",
+				      "noc_aggr",
+				      "cnoc_sf_axi",
+				      "qmip_pcie_ahb";
+
+			assigned-clocks = <&gcc GCC_PCIE_1_AUX_CLK>;
+			assigned-clock-rates = <19200000>;
+
+			interconnects = <&pcie_noc MASTER_PCIE_1 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					 &config_noc SLAVE_PCIE_1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "pcie-mem", "cpu-pcie";
+
+			iommu-map = <0x0   &apps_smmu 0x1e00 0x1>,
+				    <0x100 &apps_smmu 0x1e01 0x1>;
+
+			resets = <&gcc GCC_PCIE_1_BCR>,
+				<&gcc GCC_PCIE_1_LINK_DOWN_BCR>;
+			reset-names = "pci", "link_down";
+
+			power-domains = <&gcc PCIE_1_GDSC>;
+
+			phys = <&pcie1_phy>;
+			phy-names = "pciephy";
+
+			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
+		};
+
+		pcie1_phy: phy@1c0e000 {
+			compatible = "qcom,sar2130p-qmp-gen3x2-pcie-phy";
+			reg = <0x0 0x01c0e000 0x0 0x2000>;
+
+			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
+				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+				 <&tcsr TCSR_PCIE_1_CLKREF_EN>,
+				 <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_1_PIPE_CLK>;
+			clock-names = "aux", "cfg_ahb", "ref", "rchng",
+				      "pipe";
+
+			resets = <&gcc GCC_PCIE_1_PHY_BCR>;
+			reset-names = "phy";
+
+			assigned-clocks = <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			power-domains = <&gcc PCIE_1_PHY_GDSC>;
+
+			#clock-cells = <0>;
+			clock-output-names = "pcie1_pipe_clk";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		tcsr_mutex: hwlock@1f40000 {
+			compatible = "qcom,tcsr-mutex";
+			reg = <0x0 0x01f40000 0x0 0x20000>;
+
+			#hwlock-cells = <1>;
+		};
+
+		tcsr: clock-controller@1fc0000 {
+			compatible = "qcom,sar2130p-tcsr", "syscon";
+			reg = <0x0 0x01fc0000 0x0 0x30000>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
+		remoteproc_adsp: remoteproc@3000000 {
+			compatible = "qcom,sar2130p-adsp-pas";
+			reg = <0x0 0x03000000 0x0 0x10000>;
+
+			interrupts-extended = <&pdc 6 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 1 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 2 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 3 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "wdog", "fatal", "ready",
+					  "handover", "stop-ack";
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "xo";
+
+			power-domains = <&rpmhpd RPMHPD_LCX>,
+					<&rpmhpd RPMHPD_LMX>;
+			power-domain-names = "lcx", "lmx";
+
+			memory-region = <&adsp_mem>;
+
+			qcom,qmp = <&aoss_qmp>;
+
+			qcom,smem-states = <&smp2p_adsp_out 0>;
+			qcom,smem-state-names = "stop";
+
+			status = "disabled";
+
+			remoteproc_adsp_glink: glink-edge {
+				interrupts-extended = <&ipcc IPCC_CLIENT_LPASS
+							     IPCC_MPROC_SIGNAL_GLINK_QMP
+							     IRQ_TYPE_EDGE_RISING>;
+				mboxes = <&ipcc IPCC_CLIENT_LPASS
+						IPCC_MPROC_SIGNAL_GLINK_QMP>;
+
+				label = "lpass";
+				qcom,remote-pid = <2>;
+
+				gpr {
+					compatible = "qcom,gpr";
+					qcom,glink-channels = "adsp_apps";
+					qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+					qcom,intents = <512 20>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					q6apm: service@1 {
+						compatible = "qcom,q6apm";
+						reg = <GPR_APM_MODULE_IID>;
+						#sound-dai-cells = <0>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+
+						q6apmdai: dais {
+							compatible = "qcom,q6apm-dais";
+							iommus = <&apps_smmu 0x1801 0x0>;
+						};
+
+						q6apmbedai: bedais {
+							compatible = "qcom,q6apm-lpass-dais";
+							#sound-dai-cells = <1>;
+						};
+					};
+
+					q6prm: service@2 {
+						compatible = "qcom,q6prm";
+						reg = <GPR_PRM_MODULE_IID>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+
+						q6prmcc: clock-controller {
+							compatible = "qcom,q6prm-lpass-clocks";
+							#clock-cells = <2>;
+						};
+					};
+				};
+
+				fastrpc {
+					compatible = "qcom,fastrpc";
+					qcom,glink-channels = "fastrpcglink-apps-dsp";
+					label = "adsp";
+					qcom,non-secure-domain;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					compute-cb@3 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <3>;
+						iommus = <&apps_smmu 0x1803 0x0>;
+					};
+
+					compute-cb@4 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <4>;
+						iommus = <&apps_smmu 0x1804 0x0>;
+					};
+
+					compute-cb@5 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <5>;
+						iommus = <&apps_smmu 0x1805 0x0>;
+					};
+
+					compute-cb@6 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <6>;
+						iommus = <&apps_smmu 0x1806 0x0>;
+					};
+				};
+			};
+		};
+
+		gpu: gpu@3d00000 {
+			compatible = "qcom,adreno-621.0", "qcom,adreno";
+			reg = <0x0 0x03d00000 0x0 0x40000>,
+			      <0x0 0x03d9e000 0x0 0x2000>,
+			      <0x0 0x03d61000 0x0 0x800>;
+			reg-names = "kgsl_3d0_reg_memory",
+				    "cx_mem",
+				    "cx_dbgc";
+
+			interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>;
+
+			iommus = <&adreno_smmu 0 0x401>;
+
+			operating-points-v2 = <&gpu_opp_table>;
+
+			qcom,gmu = <&gmu>;
+
+			nvmem-cells = <&gpu_speed_bin>;
+			nvmem-cell-names = "speed_bin";
+			#cooling-cells = <2>;
+
+			status = "disabled";
+
+			gpu_zap_shader: zap-shader {
+				memory-region = <&gpu_micro_code_mem>;
+			};
+
+			gpu_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-843000000 {
+					opp-hz = /bits/ 64 <843000000>;
+					opp-level = <RPMH_REGULATOR_LEVEL_TURBO_L1>;
+					opp-supported-hw = <0x1>;
+				};
+
+				opp-780000000 {
+					opp-hz = /bits/ 64 <780000000>;
+					opp-level = <RPMH_REGULATOR_LEVEL_TURBO>;
+					opp-supported-hw = <0x1>;
+				};
+
+				opp-644000000 {
+					opp-hz = /bits/ 64 <644000000>;
+					opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
+					opp-supported-hw = <0x3>;
+				};
+
+				opp-570000000 {
+					opp-hz = /bits/ 64 <570000000>;
+					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
+					opp-supported-hw = <0x3>;
+				};
+
+				opp-450000000 {
+					opp-hz = /bits/ 64 <450000000>;
+					opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
+					opp-supported-hw = <0x3>;
+				};
+
+				opp-320000000 {
+					opp-hz = /bits/ 64 <320000000>;
+					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
+					opp-supported-hw = <0x3>;
+				};
+
+				opp-235000000 {
+					opp-hz = /bits/ 64 <235000000>;
+					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
+					opp-supported-hw = <0x3>;
+				};
+			};
+		};
+
+		gmu: gmu@3d6a000 {
+			compatible = "qcom,adreno-gmu-621.0", "qcom,adreno-gmu";
+			reg = <0x0 0x03d6a000 0x0 0x35000>,
+			      <0x0 0x03de0000 0x0 0x10000>,
+			      <0x0 0x0b290000 0x0 0x10000>;
+			reg-names = "gmu", "rscc", "gmu_pdc";
+
+			interrupts = <GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "hfi", "gmu";
+
+			clocks = <&gpucc GPU_CC_AHB_CLK>,
+				 <&gpucc GPU_CC_CX_GMU_CLK>,
+				 <&gpucc GPU_CC_CXO_CLK>,
+				 <&gcc GCC_DDRSS_GPU_AXI_CLK>,
+				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
+				 <&gpucc GPU_CC_HUB_CX_INT_CLK>;
+			clock-names = "ahb",
+				      "gmu",
+				      "cxo",
+				      "axi",
+				      "memnoc",
+				      "hub";
+
+			power-domains = <&gpucc GPU_CX_GDSC>,
+					<&gpucc GPU_GX_GDSC>;
+			power-domain-names = "cx",
+					     "gx";
+
+			iommus = <&adreno_smmu 5 0x400>;
+
+			qcom,qmp = <&aoss_qmp>;
+
+			operating-points-v2 = <&gmu_opp_table>;
+
+			gmu_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-220000000 {
+					opp-hz = /bits/ 64 <220000000>;
+					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
+				};
+
+				opp-550000000 {
+					opp-hz = /bits/ 64 <550000000>;
+					opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
+				};
+			};
+		};
+
+		gpucc: clock-controller@3d90000 {
+			compatible = "qcom,sar2130p-gpucc";
+			reg = <0x0 0x03d90000 0x0 0xa000>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_GPU_GPLL0_CLK_SRC>,
+				 <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
+
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
+		adreno_smmu: iommu@3da0000 {
+			compatible = "qcom,sar2130p-smmu-500", "qcom,adreno-smmu",
+				     "qcom,smmu-500", "arm,mmu-500";
+			reg = <0x0 0x03da0000 0x0 0x10000>;
+			#iommu-cells = <2>;
+			#global-interrupts = <1>;
+			interrupts = <GIC_SPI 673 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 678 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 679 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 680 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 681 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 682 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 683 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 684 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 685 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>,
+				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
+				 <&gcc GCC_GPU_SNOC_DVM_GFX_CLK>,
+				 <&gpucc GPU_CC_AHB_CLK>;
+			clock-names = "hlos",
+				      "bus",
+				      "iface",
+				      "ahb";
+			power-domains = <&gpucc GPU_CX_GDSC>;
+			dma-coherent;
+		};
+
+		usb_1_hsphy: phy@88e3000 {
+			compatible = "qcom,sar2130p-snps-eusb2-phy",
+				     "qcom,sm8550-snps-eusb2-phy";
+			reg = <0x0 0x088e3000 0x0 0x154>;
+			#phy-cells = <0>;
+
+			clocks = <&tcsr TCSR_USB2_CLKREF_EN>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
+
+			status = "disabled";
+		};
+
+		usb_dp_qmpphy: phy@88e8000 {
+			compatible = "qcom,sar2130p-qmp-usb3-dp-phy";
+			reg = <0x0 0x088e8000 0x0 0x3000>;
+
+			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "aux", "ref", "com_aux", "usb3_pipe";
+
+			power-domains = <&gcc USB3_PHY_GDSC>;
+
+			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
+				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
+			reset-names = "phy", "common";
+
+			#clock-cells = <1>;
+			#phy-cells = <1>;
+
+			orientation-switch;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_dp_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_dp_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_dp_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
+		};
+
+		usb_1: usb@a6f8800 {
+			compatible = "qcom,sar2130p-dwc3", "qcom,dwc3";
+			reg = <0x0 0x0a6f8800 0x0 0x400>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
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
+			interrupts-extended = <&intc GIC_SPI 350 IRQ_TYPE_LEVEL_HIGH>,
+					      //<&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 14 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 15 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "pwr_event",
+					  //"hs_phy_irq",
+					  "dp_hs_phy_irq",
+					  "dm_hs_phy_irq",
+					  "ss_phy_irq";
+
+			power-domains = <&gcc USB30_PRIM_GDSC>;
+			required-opps = <&rpmhpd_opp_nom>;
+
+			resets = <&gcc GCC_USB30_PRIM_BCR>;
+
+			interconnects = <&system_noc MASTER_USB3_0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					 &config_noc SLAVE_USB3_0 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "usb-ddr", "apps-usb";
+
+			status = "disabled";
+
+			usb_1_dwc3: usb@a600000 {
+				compatible = "snps,dwc3";
+				reg = <0x0 0x0a600000 0x0 0xcd00>;
+				interrupts = <GIC_SPI 347 IRQ_TYPE_LEVEL_HIGH>;
+				iommus = <&apps_smmu 0x20 0x0>;
+				phys = <&usb_1_hsphy>,
+				       <&usb_dp_qmpphy QMP_USB43DP_USB3_PHY>;
+				phy-names = "usb2-phy", "usb3-phy";
+
+				snps,has-lpm-erratum;
+				snps,hird-threshold = /bits/ 8 <0x0>;
+				snps,is-utmi-l1-suspend;
+				snps,dis-u1-entry-quirk;
+				snps,dis-u2-entry-quirk;
+				snps,dis_u2_susphy_quirk;
+				snps,dis_u3_susphy_quirk;
+				snps,parkmode-disable-ss-quirk;
+
+				tx-fifo-resize;
+				dma-coherent;
+				usb-role-switch;
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
+							remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
+						};
+					};
+				};
+			};
+		};
+
+		pdc: interrupt-controller@b220000 {
+			compatible = "qcom,sar2130p-pdc", "qcom,pdc";
+			reg = <0x0 0x0b220000 0x0 0x30000>, <0x0 0x174000f0 0x0 0x64>;
+			qcom,pdc-ranges = <0 480 94>,
+					  <94 609 31>, <125 63 1>, <126 716 12>;
+			#interrupt-cells = <2>;
+			interrupt-parent = <&intc>;
+			interrupt-controller;
+		};
+
+		aoss_qmp: power-management@c300000 {
+			compatible = "qcom,sar2130p-aoss-qmp", "qcom,aoss-qmp";
+			reg = <0x0 0x0c300000 0x0 0x400>;
+			interrupt-parent = <&ipcc>;
+			interrupts-extended = <&ipcc IPCC_CLIENT_AOP IPCC_MPROC_SIGNAL_GLINK_QMP
+						     IRQ_TYPE_EDGE_RISING>;
+			mboxes = <&ipcc IPCC_CLIENT_AOP IPCC_MPROC_SIGNAL_GLINK_QMP>;
+
+			#clock-cells = <0>;
+		};
+
+		tsens0: thermal-sensor@c263000 {
+			compatible = "qcom,sar2130p-tsens", "qcom,tsens-v2";
+			reg = <0x0 0x0c263000 0x0 0x1000>, /* TM */
+			      <0x0 0x0c222000 0x0 0x1000>; /* SROT */
+			#qcom,sensors = <16>;
+			interrupts = <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 508 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow", "critical";
+			#thermal-sensor-cells = <1>;
+		};
+
+		sram@c3f0000 {
+			compatible = "qcom,rpmh-stats";
+			reg = <0x0 0x0c3f0000 0x0 0x400>;
+		};
+
+		arbiter@c400000 {
+			compatible = "qcom,sar2130p-spmi-pmic-arb",
+				     "qcom,x1e80100-spmi-pmic-arb";
+			reg = <0x0 0x0c400000 0x0 0x3000>,
+			      <0x0 0x0c500000 0x0 0x400000>,
+			      <0x0 0x0c440000 0x0 0x80000>;
+			reg-names = "core", "chnls", "obsrvr";
+
+			qcom,ee = <0>;
+			qcom,channel = <0>;
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			spmi_bus: spmi@c42d000 {
+				reg = <0x0 0x0c42d000 0x0 0x4000>,
+				      <0x0 0x0c4c0000 0x0 0x10000>;
+				reg-names = "cnfg", "intr";
+
+				interrupt-names = "periph_irq";
+				interrupts-extended = <&pdc 1 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <4>;
+
+				#address-cells = <2>;
+				#size-cells = <0>;
+			};
+		};
+
+		ipcc: mailbox@ed18000 {
+			compatible = "qcom,sar2130p-ipcc", "qcom,ipcc";
+			reg = <0x0 0x0ed18000 0x0 0x1000>;
+
+			interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+
+			#mbox-cells = <2>;
+		};
+
+		tlmm: pinctrl@f100000 {
+			compatible = "qcom,sar2130p-tlmm";
+			reg = <0x0 0x0f100000 0x0 0x300000>;
+			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			gpio-ranges = <&tlmm 0 0 156>;
+			wakeup-parent = <&pdc>;
+
+			qup_i2c0_data_clk: qup-i2c0-data-clk-state {
+				/* SDA, SCL */
+				pins = "gpio0", "gpio1";
+				function = "qup0";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_i2c1_data_clk: qup-i2c1-data-clk-state {
+				/* SDA, SCL */
+				pins = "gpio2", "gpio3";
+				function = "qup1";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_i2c2_data_clk: qup-i2c2-data-clk-state {
+				/* SDA, SCL */
+				pins = "gpio22", "gpio23";
+				function = "qup2";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_i2c3_data_clk: qup-i2c3-data-clk-state {
+				/* SDA, SCL */
+				pins = "gpio16", "gpio17";
+				function = "qup3";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_i2c4_data_clk: qup-i2c4-data-clk-state {
+				/* SDA, SCL */
+				pins = "gpio20", "gpio21";
+				function = "qup4";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_i2c5_data_clk: qup-i2c5-data-clk-state {
+				/* SDA, SCL */
+				pins = "gpio95", "gpio96";
+				function = "qup5";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_i2c6_data_clk: qup-i2c6-data-clk-state {
+				/* SDA, SCL */
+				pins = "gpio91", "gpio92";
+				function = "qup6";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_i2c7_data_clk: qup-i2c7-data-clk-state {
+				/* SDA, SCL */
+				pins = "gpio8", "gpio9";
+				function = "qup7";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_i2c8_data_clk: qup-i2c8-data-clk-state {
+				/* SDA, SCL */
+				pins = "gpio8", "gpio9";
+				function = "qup8";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_i2c9_data_clk: qup-i2c9-data-clk-state {
+				/* SDA, SCL */
+				pins = "gpio109", "gpio110";
+				function = "qup9";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_i2c10_data_clk: qup-i2c10-data-clk-state {
+				/* SDA, SCL */
+				pins = "gpio4", "gpio5";
+				function = "qup10";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_i2c11_data_clk: qup-i2c11-data-clk-state {
+				/* SDA, SCL */
+				pins = "gpio28", "gpio30";
+				function = "qup11";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			qup_spi0_cs0: qup-spi0-cs0-state {
+				pins = "gpio3";
+				function = "qup0";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi0_cs1: qup-spi0-cs1-state {
+				pins = "gpio93";
+				function = "qup0";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi0_data_clk: qup-spi0-data-clk-state {
+				/* MISO, MOSI, CLK */
+				pins = "gpio0", "gpio1", "gpio2";
+				function = "qup0";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi1_cs: qup-spi1-cs-state {
+				pins = "gpio62";
+				function = "qup1";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi1_data_clk: qup-spi1-data-clk-state {
+				/* MISO, MOSI, CLK */
+				pins = "gpio2", "gpio3", "gpio61";
+				function = "qup1";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi2_cs: qup-spi2-cs-state {
+				pins = "gpio13";
+				function = "qup2";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi2_data_clk: qup-spi2-data-clk-state {
+				/* MISO, MOSI, CLK */
+				pins = "gpio22", "gpio23", "gpio12";
+				function = "qup2";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi3_cs0: qup-spi3-cs0-state {
+				pins = "gpio19";
+				function = "qup3";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi3_cs1: qup-spi3-cs1-state {
+				pins = "gpio41";
+				function = "qup3";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi3_data_clk: qup-spi3-data-clk-state {
+				/* MISO, MOSI, CLK */
+				pins = "gpio16", "gpio17", "gpio18";
+				function = "qup3";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi4_cs0: qup-spi4-cs0-state {
+				pins = "gpio23";
+				function = "qup4";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi4_cs1: qup-spi4-cs1-state {
+				pins = "gpio94";
+				function = "qup4";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi4_data_clk: qup-spi4-data-clk-state {
+				/* MISO, MOSI, CLK */
+				pins = "gpio20", "gpio21", "gpio22";
+				function = "qup4";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi5_cs: qup-spi5-cs-state {
+				pins = "gpio98";
+				function = "qup5";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi5_data_clk: qup-spi5-data-clk-state {
+				/* MISO, MOSI, CLK */
+				pins = "gpio95", "gpio96", "gpio97";
+				function = "qup5";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi6_cs: qup-spi6-cs-state {
+				pins = "gpio63";
+				function = "qup6";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi6_data_clk: qup-spi6-data-clk-state {
+				/* MISO, MOSI, CLK */
+				pins = "gpio91", "gpio92", "gpio64";
+				function = "qup6";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi7_cs: qup-spi7-cs-state {
+				pins = "gpio27";
+				function = "qup7";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi7_data_clk: qup-spi7-data-clk-state {
+				/* MISO, MOSI, CLK */
+				pins = "gpio24", "gpio25", "gpio26";
+				function = "qup7";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi8_cs: qup-spi8-cs-state {
+				pins = "gpio11";
+				function = "qup8";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi8_data_clk: qup-spi8-data-clk-state {
+				/* MISO, MOSI, CLK */
+				pins = "gpio8", "gpio9", "gpio10";
+				function = "qup8";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi9_cs: qup-spi9-cs-state {
+				pins = "gpio35";
+				function = "qup9";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi9_data_clk: qup-spi9-data-clk-state {
+				/* MISO, MOSI, CLK */
+				pins = "gpio109", "gpio110", "gpio34";
+				function = "qup9";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi10_cs: qup-spi10-cs-state {
+				pins = "gpio7";
+				function = "qup10";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi10_data_clk: qup-spi10-data-clk-state {
+				/* MISO, MOSI, CLK */
+				pins = "gpio4", "gpio5", "gpio6";
+				function = "qup10";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi11_cs: qup-spi11-cs-state {
+				pins = "gpio15";
+				function = "qup11";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_spi11_data_clk: qup-spi11-data-clk-state {
+				/* MISO, MOSI, CLK */
+				pins = "gpio28", "gpio30", "gpio14";
+				function = "qup11";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			qup_uart7_default: qup-uart7-default-state {
+				cts-pins {
+					pins = "gpio24";
+					function = "qup7";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				rts-pins {
+					pins = "gpio25";
+					function = "qup7";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				rx-pins {
+					pins = "gpio27";
+					function = "qup7";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				tx-pins {
+					pins = "gpio26";
+					function = "qup7";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			qup_uart11_default: qup-uart11-default-state {
+				pins = "gpio14", "gpio15";
+				function = "qup11";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			sdc1_default: sdc1-default-state {
+				clk-pins {
+					pins = "sdc1_clk";
+					drive-strength = <16>;
+					bias-disable;
+				};
+
+				cmd-pins {
+					pins = "sdc1_cmd";
+					drive-strength = <10>;
+					bias-pull-up;
+				};
+
+				data-pins {
+					pins = "sdc1_data";
+					drive-strength = <10>;
+					bias-pull-up;
+				};
+
+				rclk-pins {
+					pins = "sdc1_rclk";
+					bias-pull-down;
+				};
+			};
+
+			sdc1_sleep: sdc1-sleep-state {
+				clk-pins {
+					pins = "sdc1_clk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				cmd-pins {
+					pins = "sdc1_cmd";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				data-pins {
+					pins = "sdc1_data";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				rclk-pins {
+					pins = "sdc1_rclk";
+					bias-pull-down;
+				};
+			};
+		};
+
+		apps_smmu: iommu@15000000 {
+			compatible = "qcom,sar2130p-smmu-500", "qcom,smmu-500", "arm,mmu-500";
+			reg = <0x0 0x15000000 0x0 0x100000>;
+			#iommu-cells = <2>;
+			#global-interrupts = <1>;
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
+				     <GIC_SPI 707 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 690 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 691 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 692 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 693 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 694 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 695 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 696 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 697 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		intc: interrupt-controller@17200000 {
+			compatible = "arm,gic-v3";
+			#interrupt-cells = <3>;
+			interrupt-controller;
+			#redistributor-regions = <1>;
+			redistributor-stride = <0x0 0x20000>;
+			reg = <0x0 0x17200000 0x0 0x10000>,     /* GICD */
+			      <0x0 0x17260000 0x0 0x100000>;    /* GICR * 8 */
+			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			gic_its: msi-controller@17240000 {
+				compatible = "arm,gic-v3-its";
+				reg = <0x0 0x17240000 0x0 0x20000>;
+				msi-controller;
+				#msi-cells = <1>;
+			};
+		};
+
+		apps_rsc: rsc@17a00000 {
+			label = "apps_rsc";
+			compatible = "qcom,rpmh-rsc";
+			reg = <0x0 0x17a00000 0x0 0x10000>,
+			      <0x0 0x17a10000 0x0 0x10000>,
+			      <0x0 0x17a20000 0x0 0x10000>;
+			reg-names = "drv-0", "drv-1", "drv-2";
+			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+			qcom,tcs-offset = <0xd00>;
+			qcom,drv-id = <2>;
+			qcom,tcs-config = <ACTIVE_TCS  3>, <SLEEP_TCS   2>,
+					  <WAKE_TCS    2>, <CONTROL_TCS 0>;
+			power-domains = <&CLUSTER_PD>;
+
+			apps_bcm_voter: bcm-voter {
+				compatible = "qcom,bcm-voter";
+			};
+
+			rpmhcc: clock-controller {
+				compatible = "qcom,sar2130p-rpmh-clk";
+				#clock-cells = <1>;
+				clock-names = "xo";
+				clocks = <&xo_board>;
+			};
+
+			rpmhpd: power-controller {
+				compatible = "qcom,sar2130p-rpmhpd";
+				#power-domain-cells = <1>;
+				operating-points-v2 = <&rpmhpd_opp_table>;
+
+				rpmhpd_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					rpmhpd_opp_ret: opp1 {
+						opp-level = <RPMH_REGULATOR_LEVEL_RETENTION>;
+					};
+
+					rpmhpd_opp_min_svs: opp2 {
+						opp-level = <RPMH_REGULATOR_LEVEL_MIN_SVS>;
+					};
+
+					rpmhpd_opp_low_svs_d1: opp3 {
+						opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
+					};
+
+					rpmhpd_opp_low_svs: opp4 {
+						opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
+					};
+
+					rpmhpd_opp_svs: opp5 {
+						opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
+					};
+
+					rpmhpd_opp_svs_l1: opp6 {
+						opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
+					};
+
+					rpmhpd_opp_nom: opp7 {
+						opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
+					};
+
+					rpmhpd_opp_turbo: opp8 {
+						opp-level = <RPMH_REGULATOR_LEVEL_TURBO>;
+					};
+
+					rpmhpd_opp_turbo_l1: opp9 {
+						opp-level = <RPMH_REGULATOR_LEVEL_TURBO_L1>;
+					};
+				};
+			};
+		};
+
+		cpufreq_hw: cpufreq@17d91000 {
+			compatible = "qcom,sar2130p-cpufreq-epss", "qcom,cpufreq-epss";
+			reg = <0x0 0x17d91000 0x0 0x1000>;
+			reg-names = "freq-domain0";
+			clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_GPLL0>;
+			clock-names = "xo", "alternate";
+			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "dcvsh-irq-0";
+			#freq-domain-cells = <1>;
+			#clock-cells = <1>;
+		};
+
+		gem_noc: interconnect@19100000 {
+			compatible = "qcom,sar2130p-gem-noc";
+			reg = <0x0 0x19100000 0x0 0xa2080>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+
+		/*
+		 * Bootloader expects just cache-controller node instead of
+		 * the typical system-cache-controller
+		 */
+		llcc: cache-controller@19200000 {
+			compatible = "qcom,sar2130p-llcc";
+			reg = <0x0 0x19200000 0x0 0x80000>,
+			      <0x0 0x19300000 0x0 0x80000>,
+			      <0x0 0x19a00000 0x0 0x80000>,
+			      <0x0 0x19c00000 0x0 0x80000>,
+			      <0x0 0x19af0000 0x0 0x80000>,
+			      <0x0 0x19cf0000 0x0 0x80000>;
+			reg-names = "llcc0_base",
+				    "llcc1_base",
+				    "llcc_broadcast_base",
+				    "llcc_broadcast_and_base",
+				    "llcc_scratchpad_broadcast_base",
+				    "llcc_scratchpad_broadcast_and_base";
+			interrupts = <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		qfprom: qfprom@221c8000 {
+			compatible = "qcom,sar2130p-qfprom", "qcom,qfprom";
+			reg = <0x0 0x221c8000 0x0 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			read-only;
+
+			gpu_speed_bin: gpu-speed-bin@119 {
+				reg = <0x119 0x2>;
+				bits = <5 8>;
+			};
+		};
+
+		nsp_noc: interconnect@320c0000 {
+			compatible = "qcom,sar2130p-nsp-noc";
+			reg = <0x0 0x320c0000 0x0 0x10>;
+			#interconnect-cells = <2>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+
+		lpass_ag_noc: interconnect@3c40000 {
+			compatible = "qcom,sar2130p-lpass-ag-noc";
+			reg = <0x0 0x3c40000 0x0 0x10>;
+			#interconnect-cells = <1>;
+			qcom,bcm-voters = <&apps_bcm_voter>;
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	thermal-zones {
+		aoss0-thermal {
+			thermal-sensors = <&tsens0 0>;
+
+			trips {
+				trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				aoss0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+
+			};
+		};
+
+		cpu0-thermal {
+			thermal-sensors = <&tsens0 1>;
+
+			trips {
+				cpu0_alert0: trip-point0 {
+					temperature = <110000>;
+					hysteresis = <10000>;
+					type = "passive";
+				};
+
+				cpu0_alert1: trip-point1 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
+				cpu0-critical {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu0_alert0>;
+					cooling-device = <&CPU0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+
+				map1 {
+					trip = <&cpu0_alert1>;
+					cooling-device = <&CPU0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		cpu1-thermal {
+			thermal-sensors = <&tsens0 2>;
+
+			trips {
+				cpu1_alert0: trip-point0 {
+					temperature = <110000>;
+					hysteresis = <10000>;
+					type = "passive";
+				};
+
+				cpu1_alert1: trip-point1 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
+				cpu1-critical {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu1_alert0>;
+					cooling-device = <&CPU0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+
+				map1 {
+					trip = <&cpu1_alert1>;
+					cooling-device = <&CPU0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		cpu2-thermal {
+			thermal-sensors = <&tsens0 3>;
+
+			trips {
+				cpu2_alert0: trip-point0 {
+					temperature = <110000>;
+					hysteresis = <10000>;
+					type = "passive";
+				};
+
+				cpu2_alert1: trip-point1 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
+				cpu2-critical {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu2_alert0>;
+					cooling-device = <&CPU0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+
+				map1 {
+					trip = <&cpu2_alert1>;
+					cooling-device = <&CPU0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		cpu3-thermal {
+			thermal-sensors = <&tsens0 4>;
+
+			trips {
+				cpu3_alert0: trip-point0 {
+					temperature = <110000>;
+					hysteresis = <10000>;
+					type = "passive";
+				};
+
+				cpu3_alert1: rip-point1 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
+				cpu3-critical {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu3_alert0>;
+					cooling-device = <&CPU0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+
+				map1 {
+					trip = <&cpu3_alert1>;
+					cooling-device = <&CPU0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&CPU3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		gpuss0-thermal {
+			polling-delay-passive = <250>;
+
+			thermal-sensors = <&tsens0 5>;
+
+			cooling-maps {
+				map0 {
+					trip = <&gpu0_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
+			trips {
+				gpu0_alert0: trip-point0 {
+					temperature = <85000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <90000>;
+					hysteresis = <1000>;
+					type = "hot";
+				};
+
+				trip-point2 {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpuss1-thermal {
+			polling-delay-passive = <250>;
+
+			thermal-sensors = <&tsens0 6>;
+
+			cooling-maps {
+				map0 {
+					trip = <&gpu1_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
+			trips {
+				gpu1_alert0: trip-point0 {
+					temperature = <85000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+
+				trip-point1 {
+					temperature = <90000>;
+					hysteresis = <1000>;
+					type = "hot";
+				};
+
+				trip-point2 {
+					temperature = <115000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		nspss0-thermal {
+			thermal-sensors = <&tsens0 7>;
+
+			trips {
+				trip-point0 {
+					temperature = <95000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				trip-point1 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nspss1-critical {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		nspss1-thermal {
+			thermal-sensors = <&tsens0 8>;
+
+			trips {
+				trip-point0 {
+					temperature = <95000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				trip-point1 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nspss2-critical {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		nspss2-thermal {
+			thermal-sensors = <&tsens0 9>;
+
+			trips {
+				trip-point0 {
+					temperature = <95000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				trip-point1 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				nspss2-critical {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		video-thermal {
+			thermal-sensors = <&tsens0 10>;
+
+			trips {
+				trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				video-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		ddr-thermal {
+			thermal-sensors = <&tsens0 11>;
+
+			trips {
+				trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				ddr-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		camera0-thermal {
+			thermal-sensors = <&tsens0 12>;
+
+			trips {
+				trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				camera0-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		camera1-thermal {
+			thermal-sensors = <&tsens0 13>;
+
+			trips {
+				trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				camera1-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		mdmss-thermal {
+			thermal-sensors = <&tsens0 14>;
+
+			trips {
+				trip-point0 {
+					temperature = <115000>;
+					hysteresis = <5000>;
+					type = "hot";
+				};
+
+				mdmss-critical {
+					temperature = <125000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+	};
+};

-- 
2.39.5


