Return-Path: <devicetree+bounces-241408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E364CC7DA39
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 01:36:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9C7D54E2694
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 00:36:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7B35153BED;
	Sun, 23 Nov 2025 00:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FmdIZmRD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BACAA1E1C1A
	for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 00:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763858179; cv=none; b=PIIvjfRZDOHHfwywahRILsrIXTBZzWyLaGQxqMsUNOoSxZATML43xCnIMXldsrPHL0XDIZeXfSXbVALksU9SNHgI9ss6YMYC5dYpftWiI3sHweJY9SKnhLBaePFWKIOnL0dGj6LaGycOi4aF2TcOkCqjNPkPqpMghBpQmT6NB1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763858179; c=relaxed/simple;
	bh=ikQr8iVaBCta5U6DoeGPW1NZHCst7Q5R+GzAiElBUIM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mPs3FbuTJOXanqgXSB4bPYMH9kUruJQzj7Hnw/ZIeyhoq0jCXtm/qXOCRxWELVzzpPs/7ueyowNVJqf9eSVupwip9Le+dNnocpwXGn+uUxLKHN+htFTSRcdl0YzRpNBT+6A/LPqdD0r3fqhA08bnYGpg0OCCZWHA21DQwp3RGbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FmdIZmRD; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-8b2f0f9e4cbso274521985a.0
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 16:36:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763858176; x=1764462976; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jaZJ9EVzquIdpfjA9TUJQ2soQMGNKdSjC9ELLDt6wQw=;
        b=FmdIZmRDUctxL+dWygeqzj6eAmA+n3wRK4Qfx3MZLWMqOgWHmdRoPpSqsD1ZnJTFJ5
         9T2HRUTifx13+PM3zA5FKCy3KMt3UmJjCk7UH+i3TUjXwTvXrzXLASMRWUUCNXGr5W6g
         LVtNW6K6Y8ShTIVGDV4XYYs7hMCHQXrBk9ijGdKNgr2EZ8dcrIr/0gJ4U97bwq+owFsG
         bSdiXqwn+vaOt9gF5rifIIG2x1buWo8HgN+7Tz9WtTppXnyQ6i9XsjakSBIyK/8s5mno
         F79BAPybrARRcX9zNokiI9Oo1hQWiQa7ZgHrt+YOimffmsP9Tlfz51a1dLTD7g88RAUY
         jhrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763858176; x=1764462976;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jaZJ9EVzquIdpfjA9TUJQ2soQMGNKdSjC9ELLDt6wQw=;
        b=d2PzffsjDtRUUKkMNxAiURe9I1UbwwsJd749uLQc/n5Lp0FafrwpTsX29pUO5SdsHQ
         X4vvTS/UuiSzT1+r+J0V3Z0fWRED/S5Gh/hyXp6lEneRjzjscmMDJVvld1l4dwtVh1jU
         TOsemJl+C0UIyLIiNSaXw4HE/PZsJLM5iE+hkhGV1wx/g2l4ZNPVC/hudP1hwlyF3H12
         92UyFKJxFHGL/fIeaUQ1UzADNvVbwyQ1YwGZt219WKmUEhxp+xOPrJ4RX4cROjT5OtSE
         to7RrB/YI3xIQPJTsp7RM/lOjZxUFB3onkhrcr7sFixepqRtZEGMntmSeGduBi59sBIt
         htyA==
X-Forwarded-Encrypted: i=1; AJvYcCUdNJ3Stv5cTCnws5W9Zs1MJR8quRyMyfaKSvRAHaZNLOUTgLGzrdyCNCwTq74t7lMmBddCbVR1mXx/@vger.kernel.org
X-Gm-Message-State: AOJu0YziBltmq39qk/Toz1N8wxoBkIm4K3ncinly8biM3s/5G2eMeHwQ
	52yoWpIAEcPnXaLdgvePvt75QLyPZtlPj9yjF9T76a6q00cJqLcvczMI
X-Gm-Gg: ASbGncuNeykdm2CEeFLBQbKklgNShwF6W017uhIGTg6NCX1wHmMjk1X6Q8jSbxuysgv
	rqxJvv6dSjsztJ3gG3OZI6DsOvWKgImj/pBheCwQD0TyvQUIjSGcBjXRvOScHBxXH6BNtq3y5yN
	NnUtS3rAD1FeiMZJR86glaPT33YmoayfV3CiGNKbzO4BOAL93X9YMCcCcdgGZVu8AjCdnidjSxe
	g+YA6CuRKKdx0we+ijOhTaTCcN3b2wpWjWhgVZC29BL/vuhVVnHlVZumDxKzXFZeKYedtvt7BRS
	b34Ptm6b1xvEB40hMpGNre0uempBt+Kw3r/jU83ZN0cNWDyUu9preJu/cWLIG1NJ4uaBlspJRRw
	TtkaQSM+qK6IFiJ9rb9G2zF+vF4WjZqJYNjzE8NDmJz9E2LRd/KPRbhtOAR/pKD/PfNPtj35Fbo
	qaR5FhwxCpODiDlNJlsIozhLAfwYwwWEV6EF8kXqJQZg==
X-Google-Smtp-Source: AGHT+IGvzot1t2XXD7IligBmSqpuL7zJXby8ZfhmHoATS+PW13vAkKKFeLKnQ+atuT7moSJ6qe9xtw==
X-Received: by 2002:a05:620a:190e:b0:8b2:e990:5122 with SMTP id af79cd13be357-8b33bdcb27emr947176285a.21.1763858176509;
        Sat, 22 Nov 2025 16:36:16 -0800 (PST)
Received: from localhost.localdomain ([142.188.15.215])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b3294336besm657943885a.19.2025.11.22.16.36.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Nov 2025 16:36:16 -0800 (PST)
From: Rogerio Pimentel <rpimentel.silva@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	krzk@kernel.org
Cc: kernel@pengutronix.de,
	festevam@gmail.com,
	alexander.stein@ew.tq-group.com,
	dario.binacchi@amarulasolutions.com,
	marex@denx.de,
	Markus.Niebel@tq-group.com,
	y.moog@phytec.de,
	joao.goncalves@toradex.com,
	frieder.schrempf@kontron.de,
	josua@solid-run.com,
	francesco.dolcini@toradex.com,
	primoz.fiser@norik.com,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rogerio Pimentel <rpimentel.silva@gmail.com>,
	Xiaofeng Wei <xiaofeng.wei@nxp.com>,
	Joseph Guo <qijian.guo@nxp.com>,
	Steven Yang <steven.yang@nxp.com>,
	Lei Xu <lei.xu@nxp.com>
Subject: [PATCH v5 2/2] arm64: dts: add support for NXP i.MX8MP FRDM board
Date: Sat, 22 Nov 2025 19:36:03 -0500
Message-Id: <20251123003603.246399-2-rpimentel.silva@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251123003603.246399-1-rpimentel.silva@gmail.com>
References: <20251123003603.246399-1-rpimentel.silva@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The FRDM-i.MX8MP is an NXP development platform based on the i.MX8M Plus
SoC, featuring a quad Cortex-A53, Cortex-M7 co-processor, 4GB LPDDR4,
32GB eMMC, Wi-Fi 6/Bluetooth 5.4/802.15.4 tri-radio, Ethernet, HDMI/MIPI
display interfaces, camera connectors, and standard expansion headers.

Based on the device tree found in the NXP repository at github
https://github.com/nxp-imx-support/meta-imx-frdm and on imx8mp-evk
board kernel mainline device tree.

This is a basic device tree supporting:

 - Quad Cortex-A53
 - 4GB LPDDR4 DRAM
 - PCA9450C PMIC with regulators
 - Two NXP PCAL6416 GPIO expanders
 - RGB LEDs via GPIO expander
 - I2C1, I2C2, I2C3 controllers
 - UART2 (console) and UART3 (with RTS/CTS)
 - USDHC3 (8-bit eMMC)
 - SNVS power key (onboard power button)

Author: Xiaofeng Wei <xiaofeng.wei@nxp.com>
Signed-off-by: Xiaofeng Wei <xiaofeng.wei@nxp.com>

Co-developed-by: Joseph Guo <qijian.guo@nxp.com>
Signed-off-by: Joseph Guo <qijian.guo@nxp.com>

Co-developed-by: Steven Yang <steven.yang@nxp.com>
Signed-off-by: Steven Yang <steven.yang@nxp.com>

Co-developed-by: Lei Xu <lei.xu@nxp.com>
Signed-off-by: Lei Xu <lei.xu@nxp.com>

Co-developed-by: Rogerio Pimentel <rpimentel.silva@gmail.com>
Signed-off-by: Rogerio Pimentel <rpimentel.silva@gmail.com>
---

Changes in v5:

 - Replace underscores (_) in node names with dashes (-)
 - Added missing Co-developed-by and Signed-off-by tags from all contributors

Changes in v4:

 - Change label pcal6416 to pcal6416_0

Changes in v3:

 - Removing the following tags and names added
 on v2 by mistake:
 Reviewed-by: Daniel Baluta <daniel.baluta@gmail.com>
 Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
 Signed-off-by: Shawn Guo <shawnguo@kernel.org>

Changes in v2:

 - Fixed dt-binding schema warnings
 - Renamed nodes 'red, green and blue' to
   'led-0, led-1 and led-2'
 - Renamed led labels 'led-0, led-1 and led-2'
   to 'red, green and blue'
 - Added Reviewed-by and Signed-off-by tags

 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 arch/arm64/boot/dts/freescale/imx8mp-frdm.dts | 355 ++++++++++++++++++
 2 files changed, 356 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-frdm.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index f30d3fd724d0..5158c3420e75 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -212,6 +212,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mp-dhcom-pdk3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-dhcom-picoitx.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-edm-g-wb.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-frdm.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-hummingboard-mate.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-hummingboard-pro.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-hummingboard-pulse.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-frdm.dts b/arch/arm64/boot/dts/freescale/imx8mp-frdm.dts
new file mode 100644
index 000000000000..55690f5e53d7
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-frdm.dts
@@ -0,0 +1,355 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2019 NXP
+ */
+
+/dts-v1/;
+
+#include "imx8mp.dtsi"
+
+/ {
+	model = "NXP i.MX8MPlus FRDM board";
+	compatible = "fsl,imx8mp-frdm", "fsl,imx8mp";
+
+	chosen {
+		stdout-path = &uart2;
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			label = "red";
+			gpios = <&pcal6416_0 13 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		led-1 {
+			label = "green";
+			gpios = <&pcal6416_0 14 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+
+		led-2 {
+			label = "blue";
+			gpios = <&pcal6416_0 15 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+	};
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x0 0x40000000 0 0xc0000000>,
+		      <0x1 0x00000000 0 0x40000000>;
+	};
+};
+
+&A53_0 {
+	cpu-supply = <&reg_arm>;
+};
+
+&A53_1 {
+	cpu-supply = <&reg_arm>;
+};
+
+&A53_2 {
+	cpu-supply = <&reg_arm>;
+};
+
+&A53_3 {
+	cpu-supply = <&reg_arm>;
+};
+
+&i2c1 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	pmic@25 {
+		compatible = "nxp,pca9450c";
+		reg = <0x25>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pmic>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+
+		regulators {
+			BUCK1 {
+				regulator-name = "BUCK1";
+				regulator-min-microvolt = <720000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+			};
+
+			reg_arm: BUCK2 {
+				regulator-name = "BUCK2";
+				regulator-min-microvolt = <720000>;
+				regulator-max-microvolt = <1025000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+				nxp,dvs-run-voltage = <950000>;
+				nxp,dvs-standby-voltage = <850000>;
+			};
+
+			BUCK4 {
+				regulator-name = "BUCK4";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_buck5: BUCK5 {
+				regulator-name = "BUCK5";
+				regulator-min-microvolt = <1650000>;
+				regulator-max-microvolt = <1950000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			BUCK6 {
+				regulator-name = "BUCK6";
+				regulator-min-microvolt = <1045000>;
+				regulator-max-microvolt = <1155000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			LDO1 {
+				regulator-name = "LDO1";
+				regulator-min-microvolt = <1650000>;
+				regulator-max-microvolt = <1950000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			LDO3 {
+				regulator-name = "LDO3";
+				regulator-min-microvolt = <1710000>;
+				regulator-max-microvolt = <1890000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			LDO5 {
+				regulator-name = "LDO5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+
+	pcal6416_0: gpio@20 {
+		compatible = "nxp,pcal6416";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pcal6416_0_int>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <16 IRQ_TYPE_LEVEL_LOW>;
+		gpio-line-names = "CSI1_nRST",
+			"CSI2_nRST",
+			"DSI_CTP_RST",
+			"EXT_PWREN1",
+			"CAN_STBY",
+			"EXP_P0_5",
+			"EXP_P0_6",
+			"P0_7",
+			"LVDS0_BLT_EN",
+			"LVDS1_BLT_EN",
+			"LVDS0_CTP_RST",
+			"LVDS1_CTP_RST",
+			"SPK_PWREN",
+			"RLED_GPIO",
+			"GLED_GPIO",
+			"BLED_GPIO";
+	};
+
+	pcal6416_1: gpio@21 {
+		compatible = "nxp,pcal6416";
+		reg = <0x21>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pcal6416_1_int>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+		gpio-line-names = "P0_0",
+			"P0_1",
+			"AUD_nINT",
+			"RTC_nINTA",
+			"USB1_SS_SEL",
+			"USB2_PWR_EN",
+			"SPI_EXP_SEL",
+			"P0_7",
+			"W2_HOST_WAKE_SD_3V3",
+			"W2_HOST_WAKE_BT_3V3",
+			"EXP_WIFI_BT_PDN_3V3",
+			"EXP_BT_RST_3V3",
+			"W2_RST_IND_3V3",
+			"SPI_nINT_3V3",
+			"KEYM_PCIE_nWAKE",
+			"P1_7";
+	};
+};
+
+&i2c2 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+};
+
+&i2c3 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+};
+
+&snvs_pwrkey {
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	assigned-clocks = <&clk IMX8MP_CLK_UART3>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_80M>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&usdhc3 {
+	assigned-clocks = <&clk IMX8MP_CLK_USDHC3>;
+	assigned-clock-rates = <400000000>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL	0x400001c2
+			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA	0x400001c2
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL	0x400001c2
+			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA	0x400001c2
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL	0x400001c2
+			MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA	0x400001c2
+		>;
+	};
+
+	pinctrl_pmic: pmicgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03	0x000001c0
+		>;
+	};
+
+	pinctrl_pcal6416_0_int: pcal6416-0-int-grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_READY_B__GPIO3_IO16	0x146
+		>;
+	};
+
+	pinctrl_pcal6416_1_int: pcal6416-1-int-grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_STROBE__GPIO2_IO11	0x146
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX	0x140
+			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX	0x140
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_ECSPI1_SCLK__UART3_DCE_RX	0x140
+			MX8MP_IOMUXC_ECSPI1_MOSI__UART3_DCE_TX	0x140
+			MX8MP_IOMUXC_ECSPI1_SS0__UART3_DCE_RTS	0x140
+			MX8MP_IOMUXC_ECSPI1_MISO__UART3_DCE_CTS	0x140
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x190
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d0
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d0
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d0
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d0
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d0
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d0
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d0
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d0
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d0
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x190
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x194
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d4
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d4
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d4
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d4
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d4
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d4
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d4
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d4
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d4
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x194
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x196
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d6
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d6
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d6
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d6
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d6
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d6
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d6
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d6
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d6
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x196
+		>;
+	};
+};
-- 
2.25.1


