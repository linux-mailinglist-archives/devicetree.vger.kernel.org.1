Return-Path: <devicetree+bounces-255078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BF2D1F60A
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:19:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BB540307BE1C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C9F52EFD98;
	Wed, 14 Jan 2026 14:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hj5jePee"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A376C37F74B
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 14:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768400244; cv=none; b=bp7OkzyZXoYJTQjoYbJTjpn2EYVKzOEIVdilUakpjPtifLhxl+TDTIkIzIP73lc31FxN4Hwtin4jY00cXlZD72+hUca72cwkuSlxwZOU/gKdfQ4c04wOrTJ47ZjhSzeHt9dzUEANNIA9SyliGwd3wRYqCH1j9xWkgsSmv/wBCaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768400244; c=relaxed/simple;
	bh=5H0lgDSUScoa7O0SKdxLcVIZHcB9BT1ur3Jx/KZwF8M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kmkvno+XggCJGIgY6aje1rrdb5od5MCE08zUyyzaxSZWcXWMsHQ5+Qklm4Oh4wJYccFEq+PO49moE5jRIFS1u6yY4VA361G53QWgg8JWsqXfC5SKiLv6vznSBPU4pgblojHelZ/N/LgRvFJBnQGSGEXnXkHHex71s/y8G3M31ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hj5jePee; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so48388005e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 06:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768400238; x=1769005038; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v0+/JV08+r5HaiYcZ+Llw+TpfRxTE/NUdH0Ba5F1Ndg=;
        b=hj5jePeemiULmluJjNB+Ul6OncGKaSlXLPwMX7K/cILlYGNRpEaXjZ4ANDi2Vd99Fu
         XOxUAH0AV8BGww98b7Kk7kPukaznZHnqulIxphKRB5TpF0ROv3+KR0V/NUbFeo29CByh
         co8xZSioa4sZgu0XeblM7ZQZKTF+EbpD3orUTS4PzXeVU1n8PLlYYHeyy++mqvgLEUBa
         JHDQQ6KXJkW14my9GvgomG3HH2GcY9b/6y9GXv1uUsBn4AkLbmmPjxYGrHMZ+PmVoWH5
         eQ7QhzzE10vAMyNNyLwMGSPvCFI9/4SCD1X9MlepUaEGLTiEp+T9vk6HGq918uZpWy8P
         GH6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768400238; x=1769005038;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v0+/JV08+r5HaiYcZ+Llw+TpfRxTE/NUdH0Ba5F1Ndg=;
        b=TXwNPMrUTyMfdnfeEY8XYGjs7WguUyzPIh2XHmE9i1hbnVw919sia34zkR0Ie+h5Np
         aq3JqRUoSwVD2MwQKOgrYI8s8i1EloYV9QYAnJOV8cidVnVS/D0ZTi9i7ZN5rjiP1SsX
         PFbXIAFhwDfobSrLF4R3z+JeOQCWuSMvCPDjoByYaz6rWPJzB37SCxYiPk3JxaPJELiQ
         mDn+kgqviiefzJZ0SIQcN82J2JAk1wcs2PvahYH6umOfkFMQLiLKCkNT5lYU7xRCBsof
         J1k/dP+uUWXTF5WJmohyBDlc9rHLXFysUV7VN4LmNw7r5EZ+LBQ4uq7ngsP0ZMBIV+iN
         FmGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpXMFysxlb7EyzSnx2O+v87gJ1A6QDGifSBeD6Ym6JA0PySs8zJPcEQAHMbGdGt/YT4XcMvAVdzX4j@vger.kernel.org
X-Gm-Message-State: AOJu0YzSoThUflhUQPZAf/NPTzO1u+WV70shMwkrkJM7cPZCi0kJkGdF
	94yc2K4suuCN1HdcpD6R6YoRgfFEXd/faR8Du5cfjJdlKf76uQYWAvg3yReE1lsjQ38=
X-Gm-Gg: AY/fxX4JJWnEIH4yKMMiVkslDwYYkWMKcAlxSCE0gAdNMkIpsZu0wd2xU1WbvX1OpQa
	H8iRJoJzO9DejOTLkBPAXzmtKRTZrxmk3Cszkqhz3FRehjUifXpzW5sT/fkD2M/M0yznz/QjFHo
	eyOUEpHFQy86cLjh9MD9eCiSBP1btWpQdwGTUguc46VR4kV6/2VYoAsM/zDpba2VW/IQk4Kmbre
	cPPFfWtIuKLOmZlOkcCHSrkViPkTZ+8pm1mfFBUYdKOslVOSqqV3xIjAAZ+qgxmZz00t71UMRkZ
	Wmt+/t7qyT5SPZebBS9g/rE8GC32eJwciwipXe76MBPFH4dwsU1NrwMejWUkP1ugd9YGyglC6p6
	auLP6EP7UVNCncjbTg/kjz3VjGgHtOIZH4P9pGmBI63zMGdhEf7byA8sF9C5u5t182ppE236sXh
	RvHL197567JCoboZlzqGUNVrzvnPBXXdv2N7kja8d4oaJQWFBOtoU+fwrTkUy2s2dx+Ibw7A==
X-Received: by 2002:a05:600c:870b:b0:471:9da:5232 with SMTP id 5b1f17b1804b1-47ee3349d27mr34823075e9.15.1768400238402;
        Wed, 14 Jan 2026 06:17:18 -0800 (PST)
Received: from ta2.c.googlers.com (164.102.240.35.bc.googleusercontent.com. [35.240.102.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee57a2613sm29595445e9.6.2026.01.14.06.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 06:17:17 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 14 Jan 2026 14:16:35 +0000
Subject: [PATCH 7/8] arm64: dts: exynos: gs101: Add thermal management unit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-acpm-tmu-v1-7-cfe56d93e90f@linaro.org>
References: <20260114-acpm-tmu-v1-0-cfe56d93e90f@linaro.org>
In-Reply-To: <20260114-acpm-tmu-v1-0-cfe56d93e90f@linaro.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Kees Cook <kees@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: willmcvicker@google.com, jyescas@google.com, shin.son@samsung.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-hardening@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768400224; l=9008;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=5H0lgDSUScoa7O0SKdxLcVIZHcB9BT1ur3Jx/KZwF8M=;
 b=HXnagG3gv/1lLforBYx+5nePgwHPOp9Z1Gwl0BqqQvYoXOb/bhmpCS7TdePLVZg19tC4RNUjf
 WV7Y7zCenC7CfdPS4WtdHlZAotXST1JrJmm7B/XOVq99Prf7aEloUTU
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add the Thermal Management Unit (TMU) nodes for the Google GS101 SoC.

This includes:
- The top-level TMU sensor node linked to the ACPM block.
- The TMU syscon node for direct interrupt register access.
- Thermal zones for the CPU clusters (little, mid, big) with associated
  trip points and cooling maps.

This enables thermal monitoring and mitigation on GS101 based devices.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101-tmu.dtsi | 209 +++++++++++++++++++++++
 arch/arm64/boot/dts/exynos/google/gs101.dtsi     |  22 +++
 2 files changed, 231 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-tmu.dtsi b/arch/arm64/boot/dts/exynos/google/gs101-tmu.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..6262c3b890aa2f7ad572c32b30bf926df804ec1e
--- /dev/null
+++ b/arch/arm64/boot/dts/exynos/google/gs101-tmu.dtsi
@@ -0,0 +1,209 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Google GS101 TMU configurations device tree source
+ *
+ * Copyright 2020 Samsung Electronics Co., Ltd.
+ * Copyright 2020 Google LLC.
+ * Copyright 2026 Linaro Ltd.
+ */
+
+#include <dt-bindings/thermal/thermal.h>
+
+/ {
+	thermal-zones {
+		cpucl2-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tmu_top 0>;
+
+			trips {
+				big_cold: big-cold {
+					temperature = <20000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				big_switch_on: big-switch-on {
+					temperature = <70000>;
+					hysteresis = <2000>;
+					type = "active";
+				};
+
+				big_control_temp: big-control-temp {
+					temperature = <90000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
+				big_pre_switch_on: big-pre-switch-on {
+					temperature = <55000>;
+					hysteresis = <2000>;
+					type = "active";
+				};
+
+				big_alert2: big-alert2 {
+					temperature = <95000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				big_hw_throttling: big-hw-throttling {
+					temperature = <103000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				big_pause: big-pause {
+					temperature = <108000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				big_hot: big-hot {
+					temperature = <115000>;
+					hysteresis = <3000>;
+					type = "hot";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&big_control_temp>;
+					cooling-device = <&cpu6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		cpucl1-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tmu_top 1>;
+
+			trips {
+				mid_cold: mid-cold {
+					temperature = <20000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				mid_switch_on: mid-switch-on {
+					temperature = <70000>;
+					hysteresis = <2000>;
+					type = "active";
+				};
+
+				mid_control_temp: mid-control-temp {
+					temperature = <90000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
+				mid_pre_switch_on: mid-pre-switch-on {
+					temperature = <55000>;
+					hysteresis = <2000>;
+					type = "active";
+				};
+
+				mid_alert2: mid-alert2 {
+					temperature = <95000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				mid_hw_throttling: mid-hw-throttling {
+					temperature = <98000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				mid_pause: mid-pause {
+					temperature = <108000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				mid_hot: mid-hot {
+					temperature = <115000>;
+					hysteresis = <3000>;
+					type = "hot";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+				     trip = <&mid_control_temp>;
+					cooling-device = <&cpu4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+			       };
+			};
+		};
+
+		cpucl0-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tmu_top 2>;
+
+			trips {
+				little_cold: little-cold {
+					temperature = <20000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				little_switch_on: little-switch-on {
+					temperature = <70000>;
+					hysteresis = <2000>;
+					type = "active";
+				};
+
+				little_control_temp: little-control-temp {
+					temperature = <95000>;
+					hysteresis = <5000>;
+					type = "passive";
+				};
+
+				little_pre_switch_on: little-pre-switch-on {
+					temperature = <55000>;
+					hysteresis = <2000>;
+					type = "active";
+				};
+
+				little_alert2: little-alert2 {
+					temperature = <100000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				little_alert5: little-alert5 {
+					temperature = <103000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				little_alert6: little-alert6 {
+					temperature = <110000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				little_hot: little-hot {
+					temperature = <115000>;
+					hysteresis = <3000>;
+					type = "hot";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&little_control_temp>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+	};
+};
diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 48f3819590cf8c05d6bd7241cfed8720149c7db4..a2d5ed832588b83ec47e8c6833073c9ec95f2517 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -74,6 +74,7 @@ cpu0: cpu@0 {
 			compatible = "arm,cortex-a55";
 			reg = <0x0000>;
 			clocks = <&acpm_ipc GS101_CLK_ACPM_DVFS_CPUCL0>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			cpu-idle-states = <&ananke_cpu_sleep>;
 			capacity-dmips-mhz = <250>;
@@ -86,6 +87,7 @@ cpu1: cpu@100 {
 			compatible = "arm,cortex-a55";
 			reg = <0x0100>;
 			clocks = <&acpm_ipc GS101_CLK_ACPM_DVFS_CPUCL0>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			cpu-idle-states = <&ananke_cpu_sleep>;
 			capacity-dmips-mhz = <250>;
@@ -98,6 +100,7 @@ cpu2: cpu@200 {
 			compatible = "arm,cortex-a55";
 			reg = <0x0200>;
 			clocks = <&acpm_ipc GS101_CLK_ACPM_DVFS_CPUCL0>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			cpu-idle-states = <&ananke_cpu_sleep>;
 			capacity-dmips-mhz = <250>;
@@ -110,6 +113,7 @@ cpu3: cpu@300 {
 			compatible = "arm,cortex-a55";
 			reg = <0x0300>;
 			clocks = <&acpm_ipc GS101_CLK_ACPM_DVFS_CPUCL0>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			cpu-idle-states = <&ananke_cpu_sleep>;
 			capacity-dmips-mhz = <250>;
@@ -122,6 +126,7 @@ cpu4: cpu@400 {
 			compatible = "arm,cortex-a76";
 			reg = <0x0400>;
 			clocks = <&acpm_ipc GS101_CLK_ACPM_DVFS_CPUCL1>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			cpu-idle-states = <&enyo_cpu_sleep>;
 			capacity-dmips-mhz = <620>;
@@ -134,6 +139,7 @@ cpu5: cpu@500 {
 			compatible = "arm,cortex-a76";
 			reg = <0x0500>;
 			clocks = <&acpm_ipc GS101_CLK_ACPM_DVFS_CPUCL1>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			cpu-idle-states = <&enyo_cpu_sleep>;
 			capacity-dmips-mhz = <620>;
@@ -146,6 +152,7 @@ cpu6: cpu@600 {
 			compatible = "arm,cortex-x1";
 			reg = <0x0600>;
 			clocks = <&acpm_ipc GS101_CLK_ACPM_DVFS_CPUCL2>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			cpu-idle-states = <&hera_cpu_sleep>;
 			capacity-dmips-mhz = <1024>;
@@ -158,6 +165,7 @@ cpu7: cpu@700 {
 			compatible = "arm,cortex-x1";
 			reg = <0x0700>;
 			clocks = <&acpm_ipc GS101_CLK_ACPM_DVFS_CPUCL2>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			cpu-idle-states = <&hera_cpu_sleep>;
 			capacity-dmips-mhz = <1024>;
@@ -489,6 +497,14 @@ acpm_ipc: power-management {
 			#clock-cells = <1>;
 			mboxes = <&ap2apm_mailbox>;
 			shmem = <&apm_sram>;
+
+			tmu_top: thermal-sensor {
+				compatible = "google,gs101-tmu-top";
+				clocks = <&cmu_misc CLK_GOUT_MISC_TMU_TOP_PCLK>;
+				interrupts = <GIC_SPI 769 IRQ_TYPE_LEVEL_HIGH 0>;
+				syscon = <&tmu_top_syscon>;
+				#thermal-sensor-cells = <1>;
+			};
 		};
 	};
 
@@ -639,6 +655,11 @@ watchdog_cl1: watchdog@10070000 {
 			status = "disabled";
 		};
 
+		tmu_top_syscon: syscon@100a0000 {
+			compatible = "google,gs101-tmu-syscon", "syscon";
+			reg = <0x100a0000 0x800>;
+		};
+
 		trng: rng@10141400 {
 			compatible = "google,gs101-trng",
 				     "samsung,exynos850-trng";
@@ -1844,3 +1865,4 @@ timer {
 };
 
 #include "gs101-pinctrl.dtsi"
+#include "gs101-tmu.dtsi"

-- 
2.52.0.457.g6b5491de43-goog


