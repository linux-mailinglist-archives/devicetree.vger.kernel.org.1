Return-Path: <devicetree+bounces-69154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 989FA8CF067
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 19:19:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E3B1281CA3
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 17:19:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD601272A0;
	Sat, 25 May 2024 17:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="ool/H/St"
X-Original-To: devicetree@vger.kernel.org
Received: from omta38.uswest2.a.cloudfilter.net (omta38.uswest2.a.cloudfilter.net [35.89.44.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406EC86657
	for <devicetree@vger.kernel.org>; Sat, 25 May 2024 17:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716657561; cv=none; b=FABeRl+0wsDipPQSIWCLd1Ptk+gkpDtXM9i3ilzQ+xZwCoyE2EbY9/da3hk3GgllS2ugQNUxTx18PjdtwSH84Dn495yLoFcimMnZ93VtsrgMNoXdkjK8lEesaQLPmytFZayOWQv141O0G9cigDxN/3+++fqvs0Wa9LdBAshmPvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716657561; c=relaxed/simple;
	bh=PWh7d+8YLA93Rz4p8tPC24xDQWybgvNly8P2B7HhAVg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fyLWnsTUgCKh5yZah1xTDQ4czOXJi3BPlHyz5D59TBzZcEfCe/i5/gIADbLZSCbNUPZw+Mhf15wQFdG6L+rIVpOppqjHM0IFIuVRAjUyXnPA+VdONzJh7wNCO7wDPbuH6Jb24veMlrKXDPR33zXT07p+pVtv9bAM17+7tUyuZcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=ool/H/St; arc=none smtp.client-ip=35.89.44.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5004a.ext.cloudfilter.net ([10.0.29.221])
	by cmsmtp with ESMTPS
	id AflTssQOSSLKxAv33sNNzD; Sat, 25 May 2024 17:19:13 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id Av30szPeJGDo0Av32sTjRp; Sat, 25 May 2024 17:19:12 +0000
X-Authority-Analysis: v=2.4 cv=I+uuR8gg c=1 sm=1 tr=0 ts=66521d90
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=TpHVaj0NuXgA:10 a=oz0wMknONp8A:10 a=vU9dKmh3AAAA:8 a=ypTnhA6Xp4740vGWRosA:9
 a=rsP06fVo5MYu2ilr0aT5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=/RujOLMVGp8FrUUWdugajJTD7U3vVTy5mq4h40ezfCE=; b=ool/H/St0oZsdV8wbBsOILBQNp
	nFaJHDojsSLAs0wGNQfSM7Uhodyp7hh6lTdYKXWKvKRhRtjSNtkCQupvhzp0eyTWGoNVUJqYn0rKc
	yZcjQ9gnyCtG9lBOLM24k80F13PVLuHX6B8tnv/tvviKbxxGn2/O2AFFr3/FQvL5Ll0HTy42INzGJ
	2wfyF4ROkCARacj0Q3DsiZ884FRBQeaymLg/bi7CnDKQi3vmM7MT7peRunLVnczNNGMruyknt5U6G
	6GcEmjG9+kqItgC50XqWExiZQzrq9fvG2AL18D0BpYOufQ17InTtoymqqwIs0E52Zci3T16iaZrse
	m30CzJyA==;
Received: from [122.165.245.213] (port=56054 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1sAv2z-001NCX-2H;
	Sat, 25 May 2024 22:49:09 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: kernel@pengutronix.de,
	festevam@gmail.com,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Parthiban Nallathambi <parthiban@linumiz.com>
Subject: [PATCH 2/2] arm64: phygate-tauri-l add overlays for RS232 and RS485
Date: Sat, 25 May 2024 22:48:54 +0530
Message-Id: <20240525171854.2165241-2-parthiban@linumiz.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240525171854.2165241-1-parthiban@linumiz.com>
References: <20240525171854.2165241-1-parthiban@linumiz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1sAv2z-001NCX-2H
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:56054
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 13
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfABymKCU1lz3jxnSW5ru8ZvEQRKpDDqFeMHCHD0p2wnHlBLtMjgaMJFXUV2XRO0u0J06tS1AHKK548YpozQoKrCyIGiN9oqKsPb6HMhALMg4IljNJYCo
 t0IGIuO68WiyFFVgOoImLu4HMSqV++cnPg6ol4y+Sdsd0JYYSk8r4Rlw1HbkUmb3CnssdNXkjHbv8tp7vrWUnwTu1tUzwJtFFh0=

UART2 and UART4 can used in following combination,

2 x RS232:
- UART2 and UART4 without flow control
- MUX selection GPIO3_20 must be held low

1 x RS232 + 1 x RS485:
- UART2 - RS232
- UART4 - RS485
- MUX selection GPIO3_20 must be held high
- RE/DE for RS485 controlled with GPIO3_25

1 x RS232 with flow control:
- UART2 - RS232
- MUX selection GPIO3_20 must be held low

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |  8 ++
 .../imx8mm-phygate-tauri-l-rs232-rs232.dtso   | 72 ++++++++++++++++++
 .../imx8mm-phygate-tauri-l-rs232-rs485.dtso   | 76 +++++++++++++++++++
 .../imx8mm-phygate-tauri-l-rs232-rts-cts.dtso | 41 ++++++++++
 4 files changed, 197 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs232.dtso
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs485.dtso
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rts-cts.dtso

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index bd443c2bc5a4..c150dfaa01c6 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -263,6 +263,14 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs485.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-venice-gw74xx-imx219.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-venice-gw74xx-rpidsi.dtb
 
+imx8mm-phygate-tauri-l-rs232-rs232-dtbs		:= imx8mm-phygate-tauri-l.dtb imx8mm-phygate-tauri-l-rs232-rs232.dtbo
+imx8mm-phygate-tauri-l-rs232-cts-rts-dtbs	:= imx8mm-phygate-tauri-l.dtb imx8mm-phygate-tauri-l-rs232-rts-cts.dtbo
+imx8mm-phygate-tauri-l-rs232-rs485-dtbs		:= imx8mm-phygate-tauri-l.dtb imx8mm-phygate-tauri-l-rs232-rs485.dtbo
+
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-phygate-tauri-l-rs232-rs232.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-phygate-tauri-l-rs232-cts-rts.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-phygate-tauri-l-rs232-rs485.dtb
+
 dtb-$(CONFIG_ARCH_S32) += s32g274a-evb.dtb
 dtb-$(CONFIG_ARCH_S32) += s32g274a-rdb2.dtb
 dtb-$(CONFIG_ARCH_S32) += s32g399a-rdb3.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs232.dtso b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs232.dtso
new file mode 100644
index 000000000000..bf3e04651ba0
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs232.dtso
@@ -0,0 +1,72 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2021 PHYTEC Messtechnik GmbH
+ * Author: Jens Lang <j.lang@phytec.de>
+ *
+ * Tauri-L 2 x RS232:
+ *  - GPIO3_20 uart4_rs485_en needs to be driven low (inactive)
+ */
+
+#include <dt-bindings/clock/imx8mm-clock.h>
+#include <dt-bindings/gpio/gpio.h>
+#include "imx8mm-pinfunc.h"
+
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	compatible = "phytec,imx8mm-phygate-tauri-l";
+
+};
+
+&gpio3 {
+	pinctrl-names = "default";
+	pinctrcl-0 = <&pinctrl_gpio3_hog>;
+
+	uart4_rs485_en {
+		gpio-hog;
+		gpios = <20 GPIO_ACTIVE_HIGH>;
+		output-low;
+		line-name = "uart4_rs485_en";
+	};
+};
+
+/* UART2 - RS232  */
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	assigned-clocks = <&clk IMX8MM_CLK_UART2>;
+	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
+	status = "okay";
+};
+
+/* UART4 - RS232  */
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	assigned-clocks = <&clk IMX8MM_CLK_UART4>;
+	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_gpio3_hog: gpio3hoggrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SAI5_RXC_GPIO3_IO20	0x49
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX	0x00
+			MX8MM_IOMUXC_UART2_TXD_UART2_DCE_TX	0x00
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_UART4_RXD_UART4_DCE_RX	0x49
+			MX8MM_IOMUXC_UART4_TXD_UART4_DCE_TX	0x49
+		>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs485.dtso b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs485.dtso
new file mode 100644
index 000000000000..f4448cde0407
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rs485.dtso
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2021 PHYTEC Messtechnik GmbH
+ * Author: Jens Lang <j.lang@phytec.de>
+ *
+ * Tauri-L RS232 + RS485:
+ *  - GPIO3_20 uart4_rs485_en needs to be driven high (active)
+ *  - GPIO3_25 RS485_DE Driver enable
+ */
+
+#include <dt-bindings/clock/imx8mm-clock.h>
+#include <dt-bindings/gpio/gpio.h>
+#include "imx8mm-pinfunc.h"
+
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	compatible = "phytec,imx8mm-phygate-tauri-l";
+
+};
+
+&gpio3 {
+	pinctrl-names = "default";
+	pinctrcl-0 = <&pinctrl_gpio3_hog>;
+
+	uart4_rs485_en {
+		gpio-hog;
+		gpios = <20 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "uart4_rs485_en";
+	};
+};
+
+/* UART2 - RS232  */
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	assigned-clocks = <&clk IMX8MM_CLK_UART2>;
+	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
+	status = "okay";
+};
+
+/* UART4 - RS485  */
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	assigned-clocks = <&clk IMX8MM_CLK_UART4>;
+	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
+	rts-gpios = <&gpio3 25 GPIO_ACTIVE_HIGH>;
+	linux,rs485-enabled-at-boot-time;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_gpio3_hog: gpio3hoggrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SAI5_RXC_GPIO3_IO20	0x49
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX	0x00
+			MX8MM_IOMUXC_UART2_TXD_UART2_DCE_TX	0x00
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_UART4_RXD_UART4_DCE_RX	0x49
+			MX8MM_IOMUXC_UART4_TXD_UART4_DCE_TX	0x49
+			MX8MM_IOMUXC_SAI5_MCLK_GPIO3_IO25	0x49
+		>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rts-cts.dtso b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rts-cts.dtso
new file mode 100644
index 000000000000..107f743fbb1c
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-phygate-tauri-l-rs232-rts-cts.dtso
@@ -0,0 +1,41 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2023 PHYTEC Messtechnik GmbH
+ * Author: Jens Lang <j.lang@phytec.de>
+ *
+ * Tauri-L RS232 with RTS/CTS hardware flow control:
+ *  - UART4_TX becomes RTS
+ *  - UART4_RX becomes CTS
+ */
+
+#include <dt-bindings/clock/imx8mm-clock.h>
+#include "imx8mm-pinfunc.h"
+
+/dts-v1/;
+/plugin/;
+
+
+&{/} {
+	compatible = "phytec,imx8mm-phygate-tauri-l";
+
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	assigned-clocks = <&clk IMX8MM_CLK_UART2>;
+	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX	0x00
+			MX8MM_IOMUXC_UART2_TXD_UART2_DCE_TX	0x00
+			MX8MM_IOMUXC_UART4_RXD_UART2_DCE_CTS_B	0x00
+			MX8MM_IOMUXC_UART4_TXD_UART2_DCE_RTS_B	0x00
+		>;
+	};
+};
-- 
2.34.1


