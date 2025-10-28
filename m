Return-Path: <devicetree+bounces-231917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A09F7C12F64
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 06:35:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 83B061AA4C8F
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 05:35:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 319802DA777;
	Tue, 28 Oct 2025 05:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Iu74G8KC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DDD2D97AA
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 05:33:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761629589; cv=none; b=Eh/wYthSPFVGpi0Y1pvDed+QJiqBFXnY8ZWDHbRgbwXdAB2wDStTm3LTeaDCzEbM9BbKUQ/0Hovwbn9c/lWp2dXRzUELudrdCV9IXAh96J8Yxpo6/lDI9hLKbSQ45MMmifEJass8MohIiB1J4RYcZCpqp83ylVNO+VF2idLB3F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761629589; c=relaxed/simple;
	bh=+dLQpfbTrFxzV5dsX1GXitn8cUmu5hgWK68mi0bijG4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IF3frK/iU56w9UQ3KWLt8vg45PpIx4SRIwZWrl/9smqFd0UVrtrsUMMLTBnXeIOrCo6UfArKJchyRGhhaod1hClPwPG86ITYFNb5oYNCkAUmg6l8Pt/a1hfh1wK/f1oclxFRRYk9XB7jygNRQ/gohAAwwyDNc45w5x187lJaDkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Iu74G8KC; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b67ae7e76abso4249452a12.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761629585; x=1762234385; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cNULvO+vr4YH0Ech7QnjKqzCDcrDbjhI5UscOSi3LAI=;
        b=Iu74G8KCepJEKGyjluA0kxWpTSl57zG9IoowN1lFXYXfuGGXDT1lEZYZBzSMdLjRh6
         oPZiHbkAzWY+sf24bnW36EGjmUzo1JvW+0MrTFoOPooXxM6FAQhZVkwURmWhdQJhA4BZ
         +wgegq7elWGqP7Q42tuU8wo9L0hpj4kE6C7X04gN8Acev2/fHQLg24Hb2g1Um1GcTlpz
         Z/LEtdumEGPk5GhxMhHC1ONzfp0FNxG1fZX2tiw/VivrxNvoMVB7XSd02VqZN4bNwZiB
         twwDmLPIPlnlY9XGqRoVhiuXTHUN1QmK+mjqWFsgpUGslMeNTm9nM+KSWbQOcsL0Jt2R
         mXeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761629585; x=1762234385;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cNULvO+vr4YH0Ech7QnjKqzCDcrDbjhI5UscOSi3LAI=;
        b=M5xKGMlhXEEJ3i2gAt2Psoj7RhV/lsRjM1QuIAa01wlca2/R+BD/9g254XndsjZI6O
         yOpzuPcUigZbZrIKzET0n+tCjlWd4AeQ5mtOlMRjsPPONzXrxtN2GPjxPTKtqrPOmCjM
         nhFLIy5wSNNJXm+4fi/Kj9b8/b/4n33TovNCvRJVTNnf8yiWjOgZs9gGOqARc0XPpYUB
         3Zy9Nhee4s5doUKU0KQ8cqaRrkzXm2tKotOBHLH4jHgdjF17/C2JLcZgWlmLYZzJPn+h
         Au5RlZwkh8MMtdlI68OJXWo61/XNEtKmAoWf3pmfF9sbZSS0joWFWGzTNExmx730Vz6U
         M/UQ==
X-Forwarded-Encrypted: i=1; AJvYcCVhsQfUfEliMMcA2yi6mdi7fuPtWp1v9+ckI8yRig6G7H11bkmTAwzW4wsyNbfCcy8Rn+KzfS0ggVlC@vger.kernel.org
X-Gm-Message-State: AOJu0YxerLS8u8XgwOeDYhfAi7l/3HWdt9EGQSWkqYG9wNvpayOW7H11
	V4stRyVQg3gL8LEukSf9GCo06Tzcmqs35FrmOD1qMARkUDfyXlMB/Uu+
X-Gm-Gg: ASbGnctZTL2CdMyJfsfnAgGZr6bGVsFREAbABLDcA+qX3v2iuFqbKNhtewiW6rTSAOP
	F4TmzDpNuvk5tqllLApV/UNJ/K1Kazht85mMhLKDzcPsJpZOyd0JbAIp3c63f4jOop9pQQuyK9j
	Cj76Nz3TnBAz0pQ1M2L0xmte5C1668XY7JIlDCX5SN4yNCvwcrqa9sat9vcz6jPmd3azNvO/wu+
	1U8zqxP2qekjRH6V+01+MQGPnlzSQpjdtlOmW1qeoGgW3cgAVqR1jBbcyqBVTYW/9MrGHi6e3Fx
	QFjPQ2nFof0su11m+56f49T/hVRx+fwQMGCUwhy3eYysqDQdzjhnb/4DApWEGM6+ZGAvu8vaT5v
	dMMnf4g1gUkQDRGKrz/KTExe27Kf9M1pjDki8b/WxJXoF5Es/RVhlRx5kdxWAYC4Pyp0kNeUHbJ
	s9cS91zV9qSPyWalBJqGAJvG7k9Mk6eR/w7zn7
X-Google-Smtp-Source: AGHT+IGwJmlKF4i0xdHsIxaXUh18wfdfQmwP17oV/MMxj75ZCgxGTQ5XiOQDk6h+qCdLRuDR+rzLzQ==
X-Received: by 2002:a17:902:d510:b0:290:29ba:340f with SMTP id d9443c01a7336-294cb4ff940mr28132205ad.42.1761629585408;
        Mon, 27 Oct 2025 22:33:05 -0700 (PDT)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed70645fsm10649477a91.3.2025.10.27.22.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 22:33:05 -0700 (PDT)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v4 2/2] arm64: dts: qcom: talos-evk: Add support for QCS615 talos evk board
Date: Tue, 28 Oct 2025 11:02:48 +0530
Message-Id: <20251028053248.723560-3-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251028053248.723560-1-tessolveupstream@gmail.com>
References: <20251028053248.723560-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce the device tree support for the QCS615-based talos-evk
platform, which follows the SMARC (Smart Mobility ARChitecture)
standard. The platform is composed of two main hardware
components: the talos-evk-som and the talos-evk carrier board.

The talos-evk-som is a compact System on Module that integrates the
QCS615 SoC, PMIC, and essential GPIO connectivity. It follows the
SMARC standard, which defines a modular form factor allowing the SoM
to be paired with different carrier boards for varied applications.

The talos-evk is one such carrier board, designed for evaluation
and development purposes. It provides additional peripherals
such as UART, USB, and other interfaces to enable rapid
prototyping and hardware bring-up.

This initial device tree provides the basic configuration needed
to boot the platform to a UART shell. Further patches will extend
support for additional peripherals and subsystems.

The initial device tree includes basic support for:

- CPU and memory

- UART

- GPIOs

- Regulators

- PMIC

- Early console

- AT24MAC602 EEPROM

- MCP2515 SPI to CAN

- Hook up the ADV7535 DSI-to-HDMI bridge

- Add DP connector node and MDSS DisplayPort controller.

QCS615 talos-evk uses a Quectel AF68E WiFi/BT module (PCIe for
WiFi and UART for Bluetooth), which is different from the RIDE
platform. Plan to enable these in a follow-up patch series.

Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 arch/arm64/boot/dts/qcom/Makefile           |   1 +
 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi | 442 ++++++++++++++++++++
 arch/arm64/boot/dts/qcom/talos-evk.dts      | 134 ++++++
 3 files changed, 577 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 5b52f9e4e5f3..282d744acd73 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -305,6 +305,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-mtp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-qrd.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-mtp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-qrd.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk.dtb
 x1e001de-devkit-el2-dtbs	:= x1e001de-devkit.dtb x1-el2.dtbo
 dtb-$(CONFIG_ARCH_QCOM)	+= x1e001de-devkit.dtb x1e001de-devkit-el2.dtb
 x1e78100-lenovo-thinkpad-t14s-el2-dtbs	:= x1e78100-lenovo-thinkpad-t14s.dtb x1-el2.dtbo
diff --git a/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
new file mode 100644
index 000000000000..21f9e4f4f5be
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
@@ -0,0 +1,442 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+#include "sm6150.dtsi"
+#include "pm8150.dtsi"
+/ {
+	aliases {
+		mmc0 = &sdhc_1;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	clocks {
+		sleep_clk: sleep-clk {
+			compatible = "fixed-clock";
+			clock-frequency = <32764>;
+			#clock-cells = <0>;
+		};
+
+		xo_board_clk: xo-board-clk {
+			compatible = "fixed-clock";
+			clock-frequency = <38400000>;
+			#clock-cells = <0>;
+		};
+	};
+
+	regulator-usb2-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "USB2_VBUS";
+		gpio = <&pm8150_gpios 10 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&usb2_en>;
+		pinctrl-names = "default";
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	vreg_v3p3_can: regulator-v3p3-can {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg-v3p3-can";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	vreg_v5p0_can: regulator-v5p0-can {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg-v5p0-can";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+};
+
+&apps_rsc {
+	regulators-0 {
+		compatible = "qcom,pm8150-rpmh-regulators";
+		qcom,pmic-id = "a";
+
+		vreg_s3a: smps3 {
+			regulator-name = "vreg_s3a";
+			regulator-min-microvolt = <600000>;
+			regulator-max-microvolt = <650000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_s4a: smps4 {
+			regulator-name = "vreg_s4a";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1829000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_s5a: smps5 {
+			regulator-name = "vreg_s5a";
+			regulator-min-microvolt = <1896000>;
+			regulator-max-microvolt = <2040000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_s6a: smps6 {
+			regulator-name = "vreg_s6a";
+			regulator-min-microvolt = <1304000>;
+			regulator-max-microvolt = <1404000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l1a: ldo1 {
+			regulator-name = "vreg_l1a";
+			regulator-min-microvolt = <488000>;
+			regulator-max-microvolt = <852000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2a: ldo2 {
+			regulator-name = "vreg_l2a";
+			regulator-min-microvolt = <1650000>;
+			regulator-max-microvolt = <3100000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3a: ldo3 {
+			regulator-name = "vreg_l3a";
+			regulator-min-microvolt = <1000000>;
+			regulator-max-microvolt = <1248000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l5a: ldo5 {
+			regulator-name = "vreg_l5a";
+			regulator-min-microvolt = <875000>;
+			regulator-max-microvolt = <975000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7a: ldo7 {
+			regulator-name = "vreg_l7a";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1900000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l8a: ldo8 {
+			regulator-name = "vreg_l8a";
+			regulator-min-microvolt = <1150000>;
+			regulator-max-microvolt = <1350000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l10a: ldo10 {
+			regulator-name = "vreg_l10a";
+			regulator-min-microvolt = <2950000>;
+			regulator-max-microvolt = <3312000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l11a: ldo11 {
+			regulator-name = "vreg_l11a";
+			regulator-min-microvolt = <1232000>;
+			regulator-max-microvolt = <1260000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l12a: ldo12 {
+			regulator-name = "vreg_l12a";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1890000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l13a: ldo13 {
+			regulator-name = "vreg_l13a";
+			regulator-min-microvolt = <3000000>;
+			regulator-max-microvolt = <3230000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l15a: ldo15 {
+			regulator-name = "vreg_l15a";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1904000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l16a: ldo16 {
+			regulator-name = "vreg_l16a";
+			regulator-min-microvolt = <3000000>;
+			regulator-max-microvolt = <3312000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l17a: ldo17 {
+			regulator-name = "vreg_l17a";
+			regulator-min-microvolt = <2950000>;
+			regulator-max-microvolt = <3312000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+};
+
+&i2c5 {
+	status = "okay";
+
+	eeprom@57 {
+		compatible = "atmel,24c02";
+		reg = <0x57>;
+		pagesize = <16>;
+	};
+
+	eeprom@5f {
+		compatible = "atmel,24mac602";
+		reg = <0x5f>;
+		pagesize = <16>;
+	};
+};
+
+&mdss {
+	status = "okay";
+};
+
+&mdss_dp0 {
+	status = "okay";
+};
+
+&mdss_dp0_out {
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000>;
+	remote-endpoint = <&dp0_connector_in>;
+};
+
+&mdss_dp_phy {
+	vdda-phy-supply = <&vreg_l11a>;
+	vdda-pll-supply = <&vreg_l5a>;
+	status = "okay";
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&vreg_l11a>;
+
+	status = "okay";
+};
+
+&mdss_dsi0_out {
+	remote-endpoint = <&adv7535_in>;
+	data-lanes = <0 1 2 3>;
+};
+
+&mdss_dsi0_phy {
+	vdds-supply = <&vreg_l5a>;
+
+	status = "okay";
+};
+
+&pcie {
+	perst-gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 100 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-0 = <&pcie_default_state>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie_phy {
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l12a>;
+
+	status = "okay";
+};
+
+&pm8150_gpios {
+	usb2_en: usb2-en-state {
+		pins = "gpio10";
+		function = "normal";
+		output-enable;
+		power-source = <0>;
+	};
+};
+
+&qupv3_id_0 {
+	status = "okay";
+};
+
+&qupv3_id_1 {
+	status = "okay";
+};
+
+&remoteproc_adsp {
+	firmware-name = "qcom/qcs615/adsp.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/qcs615/cdsp.mbn";
+
+	status = "okay";
+};
+
+&sdhc_1 {
+	pinctrl-0 = <&sdc1_state_on>;
+	pinctrl-1 = <&sdc1_state_off>;
+	pinctrl-names = "default", "sleep";
+
+	bus-width = <8>;
+	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	vmmc-supply = <&vreg_l17a>;
+	vqmmc-supply = <&vreg_s4a>;
+
+	non-removable;
+	no-sd;
+	no-sdio;
+
+	status = "okay";
+};
+
+&spi6 {
+	status = "okay";
+
+	mcp2515@0 {
+		compatible = "microchip,mcp2515";
+		reg = <0>;
+		clock-frequency = <20000000>;
+		interrupts-extended = <&tlmm 87 IRQ_TYPE_LEVEL_LOW>;
+		spi-max-frequency = <10000000>;
+		vdd-supply = <&vreg_v3p3_can>;
+		xceiver-supply = <&vreg_v5p0_can>;
+	};
+};
+
+&tlmm {
+	pcie_default_state: pcie-default-state {
+		clkreq-pins {
+			pins = "gpio90";
+			function = "pcie_clk_req";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio101";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		wake-pins {
+			pins = "gpio100";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l12a>;
+	vdda-phy-dpdm-supply = <&vreg_l13a>;
+
+	status = "okay";
+};
+
+&usb_qmpphy {
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l12a>;
+
+	status = "okay";
+};
+
+&usb_1 {
+	status = "okay";
+};
+
+&usb_1_dwc3 {
+	dr_mode = "host";
+};
+
+&usb_hsphy_2 {
+	vdd-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l12a>;
+	vdda-phy-dpdm-supply = <&vreg_l13a>;
+
+	status = "okay";
+};
+
+&usb_2 {
+	status = "okay";
+};
+
+&usb_2_dwc3 {
+	dr_mode = "host";
+};
+
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 123 GPIO_ACTIVE_LOW>;
+	vcc-supply = <&vreg_l17a>;
+	vcc-max-microamp = <600000>;
+	vccq2-supply = <&vreg_s4a>;
+	vccq2-max-microamp = <600000>;
+
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l12a>;
+
+	status = "okay";
+};
+
+&venus {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/qcom/talos-evk.dts b/arch/arm64/boot/dts/qcom/talos-evk.dts
new file mode 100644
index 000000000000..5c2ac67383e7
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/talos-evk.dts
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+/dts-v1/;
+
+#include "talos-evk-som.dtsi"
+
+/ {
+	model = "Qualcomm QCS615 IQ 615 EVK";
+	compatible = "qcom,talos-evk", "qcom,qcs615", "qcom,sm6150";
+	chassis-type = "embedded";
+
+	aliases {
+		mmc1 = &sdhc_2;
+	};
+
+	dp0-connector {
+		compatible = "dp-connector";
+		label = "DP0";
+		type = "full-size";
+
+		hpd-gpios = <&tlmm 104 GPIO_ACTIVE_HIGH>;
+
+		port {
+			dp0_connector_in: endpoint {
+				remote-endpoint = <&mdss_dp0_out>;
+			};
+		};
+	};
+
+	hdmi-out {
+		compatible = "hdmi-connector";
+		type = "d";
+
+		port {
+			hdmi_con_out: endpoint {
+				remote-endpoint = <&adv7535_out>;
+			};
+		};
+	};
+
+	vreg_v5p0_out: regulator-v5p0-out {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg-v5p0-out";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		/* Powered by system 20V rail (USBC_VBUS_IN) */
+	};
+
+	vreg_v3p3_out: regulator-v3p3-out {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg-v3p3-out";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vreg_v5p0_out>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	vreg_v1p8_out: regulator-v1p8-out {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg-v1p8-out";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vreg_v5p0_out>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+};
+
+&i2c1 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	adv7535: adv7535@3d {
+		compatible = "adi,adv7535";
+		reg = <0x3d>;
+		avdd-supply = <&vreg_v1p8_out>;
+		dvdd-supply = <&vreg_v1p8_out>;
+		pvdd-supply = <&vreg_v1p8_out>;
+		a2vdd-supply = <&vreg_v1p8_out>;
+		v3p3-supply = <&vreg_v3p3_out>;
+		interrupts-extended = <&tlmm 26 IRQ_TYPE_LEVEL_LOW>;
+		adi,dsi-lanes = <4>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				adv7535_in: endpoint {
+					remote-endpoint = <&mdss_dsi0_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				adv7535_out: endpoint {
+					remote-endpoint = <&hdmi_con_out>;
+				};
+			};
+		};
+	};
+};
+
+&pon_pwrkey {
+	status = "okay";
+};
+
+&pon_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+
+	status = "okay";
+};
+
+&sdhc_2 {
+	pinctrl-0 = <&sdc2_state_on>;
+	pinctrl-1 = <&sdc2_state_off>;
+	pinctrl-names = "default", "sleep";
+
+	bus-width = <4>;
+	cd-gpios = <&tlmm 99 GPIO_ACTIVE_LOW>;
+
+	vmmc-supply = <&vreg_l10a>;
+	vqmmc-supply = <&vreg_s4a>;
+
+	status = "okay";
+};
-- 
2.34.1


