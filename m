Return-Path: <devicetree+bounces-174138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B257BAAC2E5
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 13:41:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 777DB1B68967
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 11:41:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA73127A457;
	Tue,  6 May 2025 11:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cgT/eQUo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9407727A473
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 11:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746531690; cv=none; b=Fkeve6TgbSlhzDfyb33TumEMl2YdPo4IZVLdGt1f7UmPqx1WBbQCeItv7K36m24UCfpFQ8WhFJ7bwMcwwtJPXNaAj4V7tXw2Wb7F2F3aH0aAjK4VMNXnRjDhl00t5LXLkIb6wCvqMiTfnb5DUpg8KWfE1tmD0D1gNHD43hD+rts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746531690; c=relaxed/simple;
	bh=+07zckh9zouNhMtYcg5VC1Q828CQtiTiy1x1n+acPXM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KwanSY2g04ekmS+xEEPp8asoSYf1nnnMDtDDzCKuW13582B5QWEY19CG9lTLQRMviyc3IkD2Vykua3tEQyL6KNAX/RdyKcgxf+Na0hFo9PvcibNuD7dwANafPaDqMLoY5g9wAS1P2TykCBEWxR3oni0xux58xE783Q5ijJm3Npg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cgT/eQUo; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7c9376c4dbaso635485485a.0
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 04:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746531687; x=1747136487; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HXiiQEJ6iU2/Vw0cZqR/C9G8E3+JPxyiM4sh71A2QE0=;
        b=cgT/eQUoBY2bpuL0heXTw5xyIHd+GkkvYx3IsbHjkGHFbm1U0D2T6u1p5pqSawrv6c
         wRBFT5LU6PAcn+0ZD6zUEIfv5z5jjDoJ5a9ZdiqZcCIqyXGxn5Sd7wS498WgMCKk6xFp
         5ZXMHwNGjMrnnEaYVEFhqmg21lFyaLEDHbOmQKT7nEFKuR+maA4KNzxRrL+74tO6WK43
         G+a8d9aTjJZnUWsHy2VpcKlsUm6OgU1we7wXaeSTLdBPpQ7o0wvK/gmX1BEhqRrIltuo
         0FM+xPV6b7szJvlnDC9IcIjqT+BU3ddCbjCUokfYI/PwEo1fqnGu4pY7oui/LkTOhX2J
         02+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746531687; x=1747136487;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HXiiQEJ6iU2/Vw0cZqR/C9G8E3+JPxyiM4sh71A2QE0=;
        b=VQI2c+3HnZavq9NVeGqpxcKwH8UaVTMtcOBqGSItnuoxK4ndQBtvyxoaYphKHSc2ZP
         vqo/mkGlMXH3iqBaY05bBw96kV64KMwDNlcF/qTjDtUAGx45eOPe/lsiU8wJw9fFJ4Op
         tv/qs1k3o0UXlRyQnzQn2wkb31XrzeDTYTJsw8BHhhjnumHvwA7DaUVrKBSuCMAm5vU6
         iFDUWZrd/HDeLlJlu8Qo2OnbRIH8UFWDBxTao7Snx0/dxrOkGXWCbQ+/oAnS9YFMLH17
         u+GsFPlCIwXZ11Vr2sdH0Utm12RHsxemgj1J53drJMKEJp4152hgdw7+TwQWS6kXfc6q
         uYag==
X-Forwarded-Encrypted: i=1; AJvYcCVz+hbwSbgPrBcVN2fLZGeRYjVQu0uX/5/AW45/QEdDEq02+rkh+/vV8yYvGEiZXOCqjyX1lN0Y+5S5@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn8E7pivjg8qqLl5iDscUkBR9XSHnBCfVRXvLDtNZu83DD3rbq
	PpbVIRXDrYnEhnzwWIJcIpa6EXD0Ns/VsngRY4PAWmDyoIG0eHdE
X-Gm-Gg: ASbGncvIdMpzJ+982HbK9e68J55TWIHhMdjiRTUH8sQka+5b3ThvO4Doqz739gOaV0f
	X0k8SNGhjakWoPT/BnCE9/IMyACr7eOWF6ixcQRZlMXBIX7JgEmGglcdalsQTeMt3eVIMOetwBe
	YJBVkRk9FijvcENglNGbVoEiMVE++Tz8D8qkSeJPZjJBY01wOhvy/2IzE3Sq1LwjoB8VmV0DPhx
	7Awhaye7MokgekI8nie8luM+CpUwNE3E5rT6zzpDow1o8A5VN1PFZMBnUtobHclw5ZXmEcPQiLo
	nUjGaz1rzHyEO9nOh3V6hhHhLdx3cA5rh549oQL+HeTcWHfrnmdVtRXmHVwGLNU=
X-Google-Smtp-Source: AGHT+IFGgzb4bN9dMEFJQ4e+8lLb43jVl1fORNRjPAnjvWiY4WYAs4XQq/yg3eC6BKOO9jQ2RnSWhQ==
X-Received: by 2002:a05:620a:24c9:b0:7c9:5ee5:719 with SMTP id af79cd13be357-7caf04e5cabmr461353485a.15.1746531687342;
        Tue, 06 May 2025 04:41:27 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cad23b51f9sm697408485a.21.2025.05.06.04.41.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 May 2025 04:41:27 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	krzysztof.kozlowski@linaro.org,
	conor+dt@kernel.org,
	jonas@kwiboo.se,
	frattaroli.nicolas@gmail.com,
	andrew@lunn.ch,
	John Clark <inindev@gmail.com>
Subject: [PATCH v3 3/3] arm64: dts: rockchip: Add Luckfox Omni3576 Board support
Date: Tue,  6 May 2025 07:41:15 -0400
Message-Id: <20250506114115.613616-4-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250506114115.613616-1-inindev@gmail.com>
References: <20250506114115.613616-1-inindev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree for the Luckfox Omni3576 Carrier Board with Core3576
Module, powered by the Rockchip RK3576 SoC with four Cortex-A72 cores,
four Cortex-A53 cores, and a Mali-G52 MC3 GPU. This initial
implementation enables essential functionality for booting Linux and
basic connectivity.

Supported and tested features:
 - UART for serial console
 - SD card for storage
 - PCIe with NVMe SSD (detected, mounted, and fully functional)
 - USB 2.0 host ports
 - RK806 PMIC for power management
 - RTC with timekeeping and wake-up
 - GPIO-controlled LED with heartbeat trigger
 - eMMC (enabled, not populated on tested board)

The device tree provides a foundation for further peripheral support, such
as WiFi, MIPI-DSI, HDMI, and Ethernet, in future updates.

Tested on Linux 6.15-rc4

Signed-off-by: John Clark <inindev@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3576-luckfox-core3576.dtsi | 683 ++++++++++++++++++
 .../dts/rockchip/rk3576-luckfox-omni3576.dts  |  53 ++
 3 files changed, 737 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-luckfox-omni3576.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 7948522cb225..22d74367b7e6 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -136,6 +136,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-display-vz.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-luckfox-omni3576.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-rock-4d.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3582-radxa-e52c.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
new file mode 100644
index 000000000000..86f903107115
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
@@ -0,0 +1,683 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2024 Rockchip Electronics Co., Ltd.
+ *
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include "rk3576.dtsi"
+
+/ {
+	model = "Luckfox Core3576";
+	compatible = "luckfox,core3576","rockchip,rk3576";
+
+	chosen {
+		stdout-path = "serial0:1500000n8";
+	};
+
+	hdmi-con {
+		compatible = "hdmi-connector";
+		hdmi-pwr-supply = <&vcc_5v0_hdmi>;
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
+	vcc_5v0_dcin: regulator-vcc-5v0-dcin {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "vcc_5v0_dcin";
+	};
+
+	vcc_1v1_nldo_s3: regulator-vcc-1v1-nldo-s3 {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1100000>;
+		regulator-name = "vcc_1v1_nldo_s3";
+		vin-supply = <&vcc_5v0_sys>;
+	};
+
+	vcc_2v0_pldo_s3: regulator-vcc-2v0-pldo-s3 {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <2000000>;
+		regulator-max-microvolt = <2000000>;
+		regulator-name = "vcc_2v0_pldo_s3";
+		vin-supply = <&vcc_5v0_sys>;
+	};
+
+	vcc_3v3_pcie: regulator-vcc-3v3-pcie {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_pwr_en>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "vcc_3v3_pcie";
+		startup-delay-us = <1000>;
+		vin-supply = <&vcc_5v0_sys>;
+	};
+
+	vcc_3v3_rtc_s5: regulator-vcc-3v3-rtc-s5 {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "vcc_3v3_rtc_s5";
+		vin-supply = <&vcc_5v0_sys>;
+	};
+
+	vbus_5v0_typec: regulator-vbus-5v0-typec {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_otg0_pwr_en>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "vbus5v0_typec";
+		vin-supply = <&vcc_5v0_device>;
+	};
+
+	vcc_5v0_device: regulator-vcc-5v0-device {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "vcc_5v0_device";
+		vin-supply = <&vcc_5v0_dcin>;
+	};
+
+	vcc_5v0_hdmi: regulator-vcc-5v0-hdmi {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&hdmi_con_en>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "vcc_5v0_hdmi";
+		vin-supply = <&vcc_5v0_sys>;
+	};
+
+	vcc_5v0_host: regulator-vcc-5v0-host {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_host_pwr_en>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "vcc_5v0_host";
+		vin-supply = <&vcc_5v0_device>;
+	};
+
+	vcc_5v0_sys: regulator-vcc-5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "vcc_5v0_sys";
+		vin-supply = <&vcc_5v0_dcin>;
+	};
+};
+
+&combphy0_ps {
+	status = "okay";
+};
+
+&combphy1_psu {
+	status = "okay";
+};
+
+&cpu_l0 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l1 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l2 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l3 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_big_s0>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_big_s0>;
+};
+
+&cpu_b2 {
+	cpu-supply = <&vdd_cpu_big_s0>;
+};
+
+&cpu_b3 {
+	cpu-supply = <&vdd_cpu_big_s0>;
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_in {
+	hdmi_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi>;
+	};
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+&hdptxphy {
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+
+	pmic@23 {
+		compatible = "rockchip,rk806";
+		reg = <0x23>;
+		#gpio-cells = <2>;
+		gpio-controller;
+		interrupt-parent = <&gpio0>;
+		interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
+			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
+		system-power-controller;
+
+		vcc1-supply = <&vcc_5v0_sys>;
+		vcc2-supply = <&vcc_5v0_sys>;
+		vcc3-supply = <&vcc_5v0_sys>;
+		vcc4-supply = <&vcc_5v0_sys>;
+		vcc5-supply = <&vcc_5v0_sys>;
+		vcc6-supply = <&vcc_5v0_sys>;
+		vcc7-supply = <&vcc_5v0_sys>;
+		vcc8-supply = <&vcc_5v0_sys>;
+		vcc9-supply = <&vcc_5v0_sys>;
+		vcc10-supply = <&vcc_5v0_sys>;
+		vcc11-supply = <&vcc_2v0_pldo_s3>;
+		vcc12-supply = <&vcc_5v0_sys>;
+		vcc13-supply = <&vcc_1v1_nldo_s3>;
+		vcc14-supply = <&vcc_1v1_nldo_s3>;
+		vcca-supply = <&vcc_5v0_sys>;
+
+		rk806_dvs1_null: dvs1-null-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun0";
+		};
+
+		rk806_dvs2_null: dvs2-null-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun0";
+		};
+
+		rk806_dvs3_null: dvs3-null-pins {
+			pins = "gpio_pwrctrl3";
+			function = "pin_fun0";
+		};
+
+		rk806_dvs1_slp: dvs1-slp-pins {
+			pins = "gpio_pwrctrl1";
+			function = "pin_fun1";
+		};
+
+		rk806_dvs1_pwrdn: dvs1-pwrdn-pins {
+			pins = "gpio_pwrctrl1";
+			function = "pin_fun2";
+		};
+
+		rk806_dvs1_rst: dvs1-rst-pins {
+			pins = "gpio_pwrctrl1";
+			function = "pin_fun3";
+		};
+
+		rk806_dvs2_slp: dvs2-slp-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun1";
+		};
+
+		rk806_dvs2_pwrdn: dvs2-pwrdn-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun2";
+		};
+
+		rk806_dvs2_rst: dvs2-rst-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun3";
+		};
+
+		rk806_dvs2_dvs: dvs2-dvs-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun4";
+		};
+
+		rk806_dvs2_gpio: dvs2-gpio-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun5";
+		};
+
+
+		rk806_dvs3_slp: dvs3-slp-pins {
+			pins = "gpio_pwrctrl3";
+			function = "pin_fun1";
+		};
+
+		rk806_dvs3_pwrdn: dvs3-pwrdn-pins {
+			pins = "gpio_pwrctrl3";
+			function = "pin_fun2";
+		};
+
+		rk806_dvs3_rst: dvs3-rst-pins {
+			pins = "gpio_pwrctrl3";
+			function = "pin_fun3";
+		};
+
+		rk806_dvs3_dvs: dvs3-dvs-pins {
+			pins = "gpio_pwrctrl3";
+			function = "pin_fun4";
+		};
+
+		rk806_dvs3_gpio: dvs3-gpio-pins {
+			pins = "gpio_pwrctrl3";
+			function = "pin_fun5";
+		};
+
+		regulators {
+			vdd_cpu_big_s0: dcdc-reg1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+				regulator-name = "vdd_cpu_big_s0";
+				regulator-enable-ramp-delay = <400>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_npu_s0: dcdc-reg2 {
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+				regulator-name = "vdd_npu_s0";
+				regulator-enable-ramp-delay = <400>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_cpu_lit_s0: dcdc-reg3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+				regulator-name = "vdd_cpu_lit_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <750000>;
+				};
+			};
+
+			vcc_3v3_s3: dcdc-reg4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc_3v3_s3";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vdd_gpu_s0: dcdc-reg5 {
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <900000>;
+				regulator-ramp-delay = <12500>;
+				regulator-name = "vdd_gpu_s0";
+				regulator-enable-ramp-delay = <400>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <850000>;
+				};
+			};
+
+			vddq_ddr_s0: dcdc-reg6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vddq_ddr_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_logic_s0: dcdc-reg7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <800000>;
+				regulator-name = "vdd_logic_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8_s3: dcdc-reg8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_1v8_s3";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd2_ddr_s3: dcdc-reg9 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vdd2_ddr_s3";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vdd_ddr_s0: dcdc-reg10 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-name = "vdd_ddr_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca_1v8_s0: pldo-reg1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca_1v8_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca1v8_pldo2_s0: pldo-reg2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca1v8_pldo2_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_1v2_s0: pldo-reg3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-name = "vdda_1v2_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca_3v3_s0: pldo-reg4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcca_3v3_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd_s0: pldo-reg5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_sd_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca1v8_pldo6_s3: pldo-reg6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca1v8_pldo6_s3";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd_0v75_s3: nldo-reg1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+				regulator-name = "vdd_0v75_s3";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
+				};
+			};
+
+			vdda_ddr_pll_s0: nldo-reg2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-name = "vdda_ddr_pll_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v75_hdmi_s0: nldo-reg3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <837500>;
+				regulator-max-microvolt = <837500>;
+				regulator-name = "vdda0v75_hdmi_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_0v85_s0: nldo-reg4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-name = "vdda_0v85_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_0v75_s0: nldo-reg5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+				regulator-name = "vdda_0v75_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+&i2c2 {
+	status = "okay";
+
+	hym8563: rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-output-names = "hym8563";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA5 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		wakeup-source;
+	};
+};
+
+&pcie0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_reset>;
+	reset-gpios = <&gpio2 RK_PB1 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc_3v3_pcie>;
+	status = "okay";
+};
+
+&pinctrl {
+	hdmi {
+		hdmi_con_en: hdmi-con-en {
+			rockchip,pins = <4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	pcie {
+		pcie_pwr_en: pcie-pwr-en {
+			rockchip,pins = <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		pcie_reset: pcie-reset {
+			rockchip,pins = <2 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	usb {
+		usb_host_pwr_en: usb-host-pwr-en {
+			rockchip,pins = <1 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		usb_otg0_pwr_en: usb-otg0-pwr-en {
+			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		usbc0_int: usbc0-int {
+			rockchip,pins = <3 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&rng {
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcca_1v8_s0>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	full-pwr-cycle-in-suspend;
+	max-frequency = <200000000>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	no-sd;
+	no-sdio;
+	non-removable;
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4m1_xfer &uart4m1_ctsn>;
+	status = "okay";
+};
+
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	phy-supply = <&vcc_5v0_host>;
+	status = "okay";
+};
+
+&usb_drd1_dwc3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi_in_vp0>;
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3576-luckfox-omni3576.dts b/arch/arm64/boot/dts/rockchip/rk3576-luckfox-omni3576.dts
new file mode 100644
index 000000000000..70d9ec50fe07
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3576-luckfox-omni3576.dts
@@ -0,0 +1,53 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2024 Rockchip Electronics Co., Ltd.
+ *
+ */
+
+/dts-v1/;
+
+#include "rk3576-luckfox-core3576.dtsi"
+
+/ {
+	model = "Luckfox Omni3576";
+	compatible = "luckfox,omni3576", "rockchip,rk3576";
+
+	aliases {
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
+	};
+
+	leds: leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&led_green_pin>;
+
+		green_led: green-led {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_HEARTBEAT;
+			gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+};
+
+&pinctrl {
+	leds {
+		led_green_pin: led-green-pin {
+			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	max-frequency = <200000000>;
+	no-sdio;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3_s3>;
+	vqmmc-supply = <&vccio_sd_s0>;
+	status = "okay";
+};
-- 
2.39.5


