Return-Path: <devicetree+bounces-55450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B248C8953F5
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 14:55:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B0171F24D58
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 12:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB2617EF12;
	Tue,  2 Apr 2024 12:54:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="qrjnhIVt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77DF27D07A;
	Tue,  2 Apr 2024 12:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712062485; cv=none; b=NuMHNbF4EQ9e8sXntuXnkQQwzkD4hlDHNVrVnzvkBrm9K9CHqH4zj8SLyEQeVW/y8dG9Pj6EjpB5ra8IgQ2Avl8oVYIQkDjtauBmdqTCmSQJvUgc6SzpBZ44Qn35WtMwi8a797NS6uGkvjCEucAoB6XS4BbUkmE/9vr5GTHoXiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712062485; c=relaxed/simple;
	bh=Ni3SwuYCalPLnghLa+KLmPTtBATKJaHipYIvF3ObCgo=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qHTs/v20Wh+Hlw7Ku0GIh24ahuI9MQHaA7VMihAfG/VFS2qu5KP66ZtOeuvekynKJd9pXpqgjvsCB40YLNb42MIsLuAMMlMGKpymeEfwjEHMTwx9KFZ9EjAYRdeMtoj/WQBEK6PqXkDM/hOuhJgNz7zmbSS4lXS5LS+5kIkPvzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=qrjnhIVt; arc=none smtp.client-ip=91.207.212.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 432CIMQq016114;
	Tue, 2 Apr 2024 14:54:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=0uoUwDhsr+9njtCZUwNAPMwkFU8PdLaOZ3T/XCmSkOM=; b=qr
	jnhIVt/R/50yJu1qlFLPLD3DfInREQVBD74b6TyunpmKcSt642TiuNnTjCtfKzyP
	QBrlawXooUuQyKXCMmB0hkssAitVUK0TSO1lmarSQBhwP2nqcwepaf6eLytynPp8
	WSTG9p3ok84mTwztXO3hfR0p74VbV1thz6Zw8ct/lok15pf07283oCGsVJ8gdf+0
	YdoB4EL7RaWAsdeCXnypjgh1VLRm+bJmQQCpSc3DJp58WgRYxD9rPeF9FIKt/Vwk
	PDWGR9kbXpsefCGO9FRau3rEOBwMgVt4kPjyHq/oNZKYdr7gl3N/7Hd7LoTVSphn
	zhV7nFClPyyWhzidwSyw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3x68r8v3ad-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 02 Apr 2024 14:54:12 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 1E35740047;
	Tue,  2 Apr 2024 14:54:09 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id ED26C220B40;
	Tue,  2 Apr 2024 14:53:17 +0200 (CEST)
Received: from localhost (10.201.21.240) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Tue, 2 Apr
 2024 14:53:17 +0200
From: <gabriel.fernandez@foss.st.com>
To: Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
	<sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Gabriel Fernandez <gabriel.fernandez@foss.st.com>
CC: <linux-clk@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [RESEND PATCH v9 3/4] clk: stm32: introduce clocks for STM32MP257 platform
Date: Tue, 2 Apr 2024 14:53:11 +0200
Message-ID: <20240402125312.277052-4-gabriel.fernandez@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240402125312.277052-1-gabriel.fernandez@foss.st.com>
References: <20240402125312.277052-1-gabriel.fernandez@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-02_06,2024-04-01_01,2023-05-22_02

From: Gabriel Fernandez <gabriel.fernandez@foss.st.com>

This driver is intended for the STM32MP25 clock family and utilizes
the stm32-core API, similar to the stm32mp13 clock driver.

Signed-off-by: Gabriel Fernandez <gabriel.fernandez@foss.st.com>
---
 drivers/clk/stm32/Kconfig         |    7 +
 drivers/clk/stm32/Makefile        |    1 +
 drivers/clk/stm32/clk-stm32mp25.c | 1876 +++++++++++++++++++++++++++++
 drivers/clk/stm32/reset-stm32.c   |   59 +-
 drivers/clk/stm32/reset-stm32.h   |    7 +
 drivers/clk/stm32/stm32mp25_rcc.h |  712 +++++++++++
 6 files changed, 2647 insertions(+), 15 deletions(-)
 create mode 100644 drivers/clk/stm32/clk-stm32mp25.c
 create mode 100644 drivers/clk/stm32/stm32mp25_rcc.h

diff --git a/drivers/clk/stm32/Kconfig b/drivers/clk/stm32/Kconfig
index 3c8493a94a11..dca409d52652 100644
--- a/drivers/clk/stm32/Kconfig
+++ b/drivers/clk/stm32/Kconfig
@@ -25,5 +25,12 @@ config COMMON_CLK_STM32MP157
 	help
 	  Support for stm32mp15x SoC family clocks.
 
+config COMMON_CLK_STM32MP257
+	bool "Clock driver for stm32mp25x clocks"
+	depends on ARM64 || COMPILE_TEST
+	default y
+	help
+	  Support for stm32mp25x SoC family clocks.
+
 endif
 
diff --git a/drivers/clk/stm32/Makefile b/drivers/clk/stm32/Makefile
index 5ced7fe3ddec..0a627164fcce 100644
--- a/drivers/clk/stm32/Makefile
+++ b/drivers/clk/stm32/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_COMMON_CLK_STM32MP135)	+= clk-stm32mp13.o clk-stm32-core.o reset-stm32.o
 obj-$(CONFIG_COMMON_CLK_STM32MP157)	+= clk-stm32mp1.o reset-stm32.o
+obj-$(CONFIG_COMMON_CLK_STM32MP257)	+= clk-stm32mp25.o clk-stm32-core.o reset-stm32.o
diff --git a/drivers/clk/stm32/clk-stm32mp25.c b/drivers/clk/stm32/clk-stm32mp25.c
new file mode 100644
index 000000000000..701b6142dbab
--- /dev/null
+++ b/drivers/clk/stm32/clk-stm32mp25.c
@@ -0,0 +1,1876 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) STMicroelectronics 2023 - All Rights Reserved
+ * Author: Gabriel Fernandez <gabriel.fernandez@foss.st.com> for STMicroelectronics.
+ */
+
+#include <linux/clk.h>
+#include <linux/of_address.h>
+#include <linux/platform_device.h>
+
+#include "clk-stm32-core.h"
+#include "reset-stm32.h"
+#include "stm32mp25_rcc.h"
+
+#include <dt-bindings/clock/st,stm32mp25-rcc.h>
+#include <dt-bindings/reset/st,stm32mp25-rcc.h>
+
+enum {
+	HSE,
+	HSI,
+	MSI,
+	LSE,
+	LSI,
+	HSE_DIV2,
+	ICN_HS_MCU,
+	ICN_LS_MCU,
+	ICN_SDMMC,
+	ICN_DDR,
+	ICN_DISPLAY,
+	ICN_HSL,
+	ICN_NIC,
+	ICN_VID,
+	FLEXGEN_07,
+	FLEXGEN_08,
+	FLEXGEN_09,
+	FLEXGEN_10,
+	FLEXGEN_11,
+	FLEXGEN_12,
+	FLEXGEN_13,
+	FLEXGEN_14,
+	FLEXGEN_15,
+	FLEXGEN_16,
+	FLEXGEN_17,
+	FLEXGEN_18,
+	FLEXGEN_19,
+	FLEXGEN_20,
+	FLEXGEN_21,
+	FLEXGEN_22,
+	FLEXGEN_23,
+	FLEXGEN_24,
+	FLEXGEN_25,
+	FLEXGEN_26,
+	FLEXGEN_27,
+	FLEXGEN_28,
+	FLEXGEN_29,
+	FLEXGEN_30,
+	FLEXGEN_31,
+	FLEXGEN_32,
+	FLEXGEN_33,
+	FLEXGEN_34,
+	FLEXGEN_35,
+	FLEXGEN_36,
+	FLEXGEN_37,
+	FLEXGEN_38,
+	FLEXGEN_39,
+	FLEXGEN_40,
+	FLEXGEN_41,
+	FLEXGEN_42,
+	FLEXGEN_43,
+	FLEXGEN_44,
+	FLEXGEN_45,
+	FLEXGEN_46,
+	FLEXGEN_47,
+	FLEXGEN_48,
+	FLEXGEN_49,
+	FLEXGEN_50,
+	FLEXGEN_51,
+	FLEXGEN_52,
+	FLEXGEN_53,
+	FLEXGEN_54,
+	FLEXGEN_55,
+	FLEXGEN_56,
+	FLEXGEN_57,
+	FLEXGEN_58,
+	FLEXGEN_59,
+	FLEXGEN_60,
+	FLEXGEN_61,
+	FLEXGEN_62,
+	FLEXGEN_63,
+	ICN_APB1,
+	ICN_APB2,
+	ICN_APB3,
+	ICN_APB4,
+	ICN_APBDBG,
+	TIMG1,
+	TIMG2,
+	PLL3,
+	DSI_TXBYTE,
+};
+
+static const struct clk_parent_data adc12_src[] = {
+	{ .index = FLEXGEN_46 },
+	{ .index = ICN_LS_MCU },
+};
+
+static const struct clk_parent_data adc3_src[] = {
+	{ .index = FLEXGEN_47 },
+	{ .index = ICN_LS_MCU },
+	{ .index = FLEXGEN_46 },
+};
+
+static const struct clk_parent_data usb2phy1_src[] = {
+	{ .index = FLEXGEN_57 },
+	{ .index = HSE_DIV2 },
+};
+
+static const struct clk_parent_data usb2phy2_src[] = {
+	{ .index = FLEXGEN_58 },
+	{ .index = HSE_DIV2 },
+};
+
+static const struct clk_parent_data usb3pciphy_src[] = {
+	{ .index = FLEXGEN_34 },
+	{ .index = HSE_DIV2 },
+};
+
+static struct clk_stm32_gate ck_ker_ltdc;
+
+static const struct clk_parent_data dsiblane_src[] = {
+	{ .index = DSI_TXBYTE },
+	{ .hw = &ck_ker_ltdc.hw },
+};
+
+static const struct clk_parent_data dsiphy_src[] = {
+	{ .index = FLEXGEN_28 },
+	{ .index = HSE },
+};
+
+static const struct clk_parent_data lvdsphy_src[] = {
+	{ .index = FLEXGEN_32 },
+	{ .index = HSE },
+};
+
+static const struct clk_parent_data dts_src[] = {
+	{ .index = HSI },
+	{ .index = HSE },
+	{ .index = MSI },
+};
+
+static const struct clk_parent_data mco1_src[] = {
+	{ .index = FLEXGEN_61 },
+};
+
+static const struct clk_parent_data mco2_src[] = {
+	{ .index = FLEXGEN_62 },
+};
+
+enum enum_mux_cfg {
+	MUX_ADC12,
+	MUX_ADC3,
+	MUX_DSIBLANE,
+	MUX_DSIPHY,
+	MUX_DTS,
+	MUX_LVDSPHY,
+	MUX_MCO1,
+	MUX_MCO2,
+	MUX_USB2PHY1,
+	MUX_USB2PHY2,
+	MUX_USB3PCIEPHY,
+	MUX_NB
+};
+
+#define MUX_CFG(id, _offset, _shift, _witdh)	\
+	[id] = {				\
+		.offset		= (_offset),	\
+		.shift		= (_shift),	\
+		.width		= (_witdh),	\
+	}
+
+static const struct stm32_mux_cfg stm32mp25_muxes[MUX_NB] = {
+	MUX_CFG(MUX_ADC12,		RCC_ADC12CFGR,		12,	1),
+	MUX_CFG(MUX_ADC3,		RCC_ADC3CFGR,		12,	2),
+	MUX_CFG(MUX_DSIBLANE,		RCC_DSICFGR,		12,	1),
+	MUX_CFG(MUX_DSIPHY,		RCC_DSICFGR,		15,	1),
+	MUX_CFG(MUX_DTS,		RCC_DTSCFGR,		12,	2),
+	MUX_CFG(MUX_LVDSPHY,		RCC_LVDSCFGR,		15,	1),
+	MUX_CFG(MUX_MCO1,		RCC_MCO1CFGR,		0,	1),
+	MUX_CFG(MUX_MCO2,		RCC_MCO2CFGR,		0,	1),
+	MUX_CFG(MUX_USB2PHY1,		RCC_USB2PHY1CFGR,	15,	1),
+	MUX_CFG(MUX_USB2PHY2,		RCC_USB2PHY2CFGR,	15,	1),
+	MUX_CFG(MUX_USB3PCIEPHY,	RCC_USB3PCIEPHYCFGR,	15,	1),
+};
+
+enum enum_gate_cfg {
+	GATE_ADC12,
+	GATE_ADC3,
+	GATE_ADF1,
+	GATE_CCI,
+	GATE_CRC,
+	GATE_CRYP1,
+	GATE_CRYP2,
+	GATE_CSI,
+	GATE_DCMIPP,
+	GATE_DSI,
+	GATE_DTS,
+	GATE_ETH1,
+	GATE_ETH1MAC,
+	GATE_ETH1RX,
+	GATE_ETH1STP,
+	GATE_ETH1TX,
+	GATE_ETH2,
+	GATE_ETH2MAC,
+	GATE_ETH2RX,
+	GATE_ETH2STP,
+	GATE_ETH2TX,
+	GATE_ETHSW,
+	GATE_ETHSWACMCFG,
+	GATE_ETHSWACMMSG,
+	GATE_ETHSWMAC,
+	GATE_ETHSWREF,
+	GATE_FDCAN,
+	GATE_GPU,
+	GATE_HASH,
+	GATE_HDP,
+	GATE_I2C1,
+	GATE_I2C2,
+	GATE_I2C3,
+	GATE_I2C4,
+	GATE_I2C5,
+	GATE_I2C6,
+	GATE_I2C7,
+	GATE_I2C8,
+	GATE_I3C1,
+	GATE_I3C2,
+	GATE_I3C3,
+	GATE_I3C4,
+	GATE_IS2M,
+	GATE_IWDG1,
+	GATE_IWDG2,
+	GATE_IWDG3,
+	GATE_IWDG4,
+	GATE_IWDG5,
+	GATE_LPTIM1,
+	GATE_LPTIM2,
+	GATE_LPTIM3,
+	GATE_LPTIM4,
+	GATE_LPTIM5,
+	GATE_LPUART1,
+	GATE_LTDC,
+	GATE_LVDS,
+	GATE_MCO1,
+	GATE_MCO2,
+	GATE_MDF1,
+	GATE_OSPIIOM,
+	GATE_PCIE,
+	GATE_PKA,
+	GATE_RNG,
+	GATE_SAES,
+	GATE_SAI1,
+	GATE_SAI2,
+	GATE_SAI3,
+	GATE_SAI4,
+	GATE_SDMMC1,
+	GATE_SDMMC2,
+	GATE_SDMMC3,
+	GATE_SERC,
+	GATE_SPDIFRX,
+	GATE_SPI1,
+	GATE_SPI2,
+	GATE_SPI3,
+	GATE_SPI4,
+	GATE_SPI5,
+	GATE_SPI6,
+	GATE_SPI7,
+	GATE_SPI8,
+	GATE_TIM1,
+	GATE_TIM10,
+	GATE_TIM11,
+	GATE_TIM12,
+	GATE_TIM13,
+	GATE_TIM14,
+	GATE_TIM15,
+	GATE_TIM16,
+	GATE_TIM17,
+	GATE_TIM2,
+	GATE_TIM20,
+	GATE_TIM3,
+	GATE_TIM4,
+	GATE_TIM5,
+	GATE_TIM6,
+	GATE_TIM7,
+	GATE_TIM8,
+	GATE_UART4,
+	GATE_UART5,
+	GATE_UART7,
+	GATE_UART8,
+	GATE_UART9,
+	GATE_USART1,
+	GATE_USART2,
+	GATE_USART3,
+	GATE_USART6,
+	GATE_USB2,
+	GATE_USB2PHY1,
+	GATE_USB2PHY2,
+	GATE_USB3DR,
+	GATE_USB3PCIEPHY,
+	GATE_USBTC,
+	GATE_VDEC,
+	GATE_VENC,
+	GATE_VREF,
+	GATE_WWDG1,
+	GATE_WWDG2,
+	GATE_NB
+};
+
+#define GATE_CFG(id, _offset, _bit_idx, _offset_clr)	\
+	[id] = {					\
+		.offset		= (_offset),		\
+		.bit_idx	= (_bit_idx),		\
+		.set_clr	= (_offset_clr),	\
+	}
+
+static const struct stm32_gate_cfg stm32mp25_gates[GATE_NB] = {
+	GATE_CFG(GATE_ADC12,		RCC_ADC12CFGR,		1,	0),
+	GATE_CFG(GATE_ADC3,		RCC_ADC3CFGR,		1,	0),
+	GATE_CFG(GATE_ADF1,		RCC_ADF1CFGR,		1,	0),
+	GATE_CFG(GATE_CCI,		RCC_CCICFGR,		1,	0),
+	GATE_CFG(GATE_CRC,		RCC_CRCCFGR,		1,	0),
+	GATE_CFG(GATE_CRYP1,		RCC_CRYP1CFGR,		1,	0),
+	GATE_CFG(GATE_CRYP2,		RCC_CRYP2CFGR,		1,	0),
+	GATE_CFG(GATE_CSI,		RCC_CSICFGR,		1,	0),
+	GATE_CFG(GATE_DCMIPP,		RCC_DCMIPPCFGR,		1,	0),
+	GATE_CFG(GATE_DSI,		RCC_DSICFGR,		1,	0),
+	GATE_CFG(GATE_DTS,		RCC_DTSCFGR,		1,	0),
+	GATE_CFG(GATE_ETH1,		RCC_ETH1CFGR,		5,	0),
+	GATE_CFG(GATE_ETH1MAC,		RCC_ETH1CFGR,		1,	0),
+	GATE_CFG(GATE_ETH1RX,		RCC_ETH1CFGR,		10,	0),
+	GATE_CFG(GATE_ETH1STP,		RCC_ETH1CFGR,		4,	0),
+	GATE_CFG(GATE_ETH1TX,		RCC_ETH1CFGR,		8,	0),
+	GATE_CFG(GATE_ETH2,		RCC_ETH2CFGR,		5,	0),
+	GATE_CFG(GATE_ETH2MAC,		RCC_ETH2CFGR,		1,	0),
+	GATE_CFG(GATE_ETH2RX,		RCC_ETH2CFGR,		10,	0),
+	GATE_CFG(GATE_ETH2STP,		RCC_ETH2CFGR,		4,	0),
+	GATE_CFG(GATE_ETH2TX,		RCC_ETH2CFGR,		8,	0),
+	GATE_CFG(GATE_ETHSW,		RCC_ETHSWCFGR,		5,	0),
+	GATE_CFG(GATE_ETHSWACMCFG,	RCC_ETHSWACMCFGR,	1,	0),
+	GATE_CFG(GATE_ETHSWACMMSG,	RCC_ETHSWACMMSGCFGR,	1,	0),
+	GATE_CFG(GATE_ETHSWMAC,		RCC_ETHSWCFGR,		1,	0),
+	GATE_CFG(GATE_ETHSWREF,		RCC_ETHSWCFGR,		21,	0),
+	GATE_CFG(GATE_FDCAN,		RCC_FDCANCFGR,		1,	0),
+	GATE_CFG(GATE_GPU,		RCC_GPUCFGR,		1,	0),
+	GATE_CFG(GATE_HASH,		RCC_HASHCFGR,		1,	0),
+	GATE_CFG(GATE_HDP,		RCC_HDPCFGR,		1,	0),
+	GATE_CFG(GATE_I2C1,		RCC_I2C1CFGR,		1,	0),
+	GATE_CFG(GATE_I2C2,		RCC_I2C2CFGR,		1,	0),
+	GATE_CFG(GATE_I2C3,		RCC_I2C3CFGR,		1,	0),
+	GATE_CFG(GATE_I2C4,		RCC_I2C4CFGR,		1,	0),
+	GATE_CFG(GATE_I2C5,		RCC_I2C5CFGR,		1,	0),
+	GATE_CFG(GATE_I2C6,		RCC_I2C6CFGR,		1,	0),
+	GATE_CFG(GATE_I2C7,		RCC_I2C7CFGR,		1,	0),
+	GATE_CFG(GATE_I2C8,		RCC_I2C8CFGR,		1,	0),
+	GATE_CFG(GATE_I3C1,		RCC_I3C1CFGR,		1,	0),
+	GATE_CFG(GATE_I3C2,		RCC_I3C2CFGR,		1,	0),
+	GATE_CFG(GATE_I3C3,		RCC_I3C3CFGR,		1,	0),
+	GATE_CFG(GATE_I3C4,		RCC_I3C4CFGR,		1,	0),
+	GATE_CFG(GATE_IS2M,		RCC_IS2MCFGR,		1,	0),
+	GATE_CFG(GATE_IWDG1,		RCC_IWDG1CFGR,		1,	0),
+	GATE_CFG(GATE_IWDG2,		RCC_IWDG2CFGR,		1,	0),
+	GATE_CFG(GATE_IWDG3,		RCC_IWDG3CFGR,		1,	0),
+	GATE_CFG(GATE_IWDG4,		RCC_IWDG4CFGR,		1,	0),
+	GATE_CFG(GATE_IWDG5,		RCC_IWDG5CFGR,		1,	0),
+	GATE_CFG(GATE_LPTIM1,		RCC_LPTIM1CFGR,		1,	0),
+	GATE_CFG(GATE_LPTIM2,		RCC_LPTIM2CFGR,		1,	0),
+	GATE_CFG(GATE_LPTIM3,		RCC_LPTIM3CFGR,		1,	0),
+	GATE_CFG(GATE_LPTIM4,		RCC_LPTIM4CFGR,		1,	0),
+	GATE_CFG(GATE_LPTIM5,		RCC_LPTIM5CFGR,		1,	0),
+	GATE_CFG(GATE_LPUART1,		RCC_LPUART1CFGR,	1,	0),
+	GATE_CFG(GATE_LTDC,		RCC_LTDCCFGR,		1,	0),
+	GATE_CFG(GATE_LVDS,		RCC_LVDSCFGR,		1,	0),
+	GATE_CFG(GATE_MCO1,		RCC_MCO1CFGR,		8,	0),
+	GATE_CFG(GATE_MCO2,		RCC_MCO2CFGR,		8,	0),
+	GATE_CFG(GATE_MDF1,		RCC_MDF1CFGR,		1,	0),
+	GATE_CFG(GATE_OSPIIOM,		RCC_OSPIIOMCFGR,	1,	0),
+	GATE_CFG(GATE_PCIE,		RCC_PCIECFGR,		1,	0),
+	GATE_CFG(GATE_PKA,		RCC_PKACFGR,		1,	0),
+	GATE_CFG(GATE_RNG,		RCC_RNGCFGR,		1,	0),
+	GATE_CFG(GATE_SAES,		RCC_SAESCFGR,		1,	0),
+	GATE_CFG(GATE_SAI1,		RCC_SAI1CFGR,		1,	0),
+	GATE_CFG(GATE_SAI2,		RCC_SAI2CFGR,		1,	0),
+	GATE_CFG(GATE_SAI3,		RCC_SAI3CFGR,		1,	0),
+	GATE_CFG(GATE_SAI4,		RCC_SAI4CFGR,		1,	0),
+	GATE_CFG(GATE_SDMMC1,		RCC_SDMMC1CFGR,		1,	0),
+	GATE_CFG(GATE_SDMMC2,		RCC_SDMMC2CFGR,		1,	0),
+	GATE_CFG(GATE_SDMMC3,		RCC_SDMMC3CFGR,		1,	0),
+	GATE_CFG(GATE_SERC,		RCC_SERCCFGR,		1,	0),
+	GATE_CFG(GATE_SPDIFRX,		RCC_SPDIFRXCFGR,	1,	0),
+	GATE_CFG(GATE_SPI1,		RCC_SPI1CFGR,		1,	0),
+	GATE_CFG(GATE_SPI2,		RCC_SPI2CFGR,		1,	0),
+	GATE_CFG(GATE_SPI3,		RCC_SPI3CFGR,		1,	0),
+	GATE_CFG(GATE_SPI4,		RCC_SPI4CFGR,		1,	0),
+	GATE_CFG(GATE_SPI5,		RCC_SPI5CFGR,		1,	0),
+	GATE_CFG(GATE_SPI6,		RCC_SPI6CFGR,		1,	0),
+	GATE_CFG(GATE_SPI7,		RCC_SPI7CFGR,		1,	0),
+	GATE_CFG(GATE_SPI8,		RCC_SPI8CFGR,		1,	0),
+	GATE_CFG(GATE_TIM1,		RCC_TIM1CFGR,		1,	0),
+	GATE_CFG(GATE_TIM10,		RCC_TIM10CFGR,		1,	0),
+	GATE_CFG(GATE_TIM11,		RCC_TIM11CFGR,		1,	0),
+	GATE_CFG(GATE_TIM12,		RCC_TIM12CFGR,		1,	0),
+	GATE_CFG(GATE_TIM13,		RCC_TIM13CFGR,		1,	0),
+	GATE_CFG(GATE_TIM14,		RCC_TIM14CFGR,		1,	0),
+	GATE_CFG(GATE_TIM15,		RCC_TIM15CFGR,		1,	0),
+	GATE_CFG(GATE_TIM16,		RCC_TIM16CFGR,		1,	0),
+	GATE_CFG(GATE_TIM17,		RCC_TIM17CFGR,		1,	0),
+	GATE_CFG(GATE_TIM2,		RCC_TIM2CFGR,		1,	0),
+	GATE_CFG(GATE_TIM20,		RCC_TIM20CFGR,		1,	0),
+	GATE_CFG(GATE_TIM3,		RCC_TIM3CFGR,		1,	0),
+	GATE_CFG(GATE_TIM4,		RCC_TIM4CFGR,		1,	0),
+	GATE_CFG(GATE_TIM5,		RCC_TIM5CFGR,		1,	0),
+	GATE_CFG(GATE_TIM6,		RCC_TIM6CFGR,		1,	0),
+	GATE_CFG(GATE_TIM7,		RCC_TIM7CFGR,		1,	0),
+	GATE_CFG(GATE_TIM8,		RCC_TIM8CFGR,		1,	0),
+	GATE_CFG(GATE_UART4,		RCC_UART4CFGR,		1,	0),
+	GATE_CFG(GATE_UART5,		RCC_UART5CFGR,		1,	0),
+	GATE_CFG(GATE_UART7,		RCC_UART7CFGR,		1,	0),
+	GATE_CFG(GATE_UART8,		RCC_UART8CFGR,		1,	0),
+	GATE_CFG(GATE_UART9,		RCC_UART9CFGR,		1,	0),
+	GATE_CFG(GATE_USART1,		RCC_USART1CFGR,		1,	0),
+	GATE_CFG(GATE_USART2,		RCC_USART2CFGR,		1,	0),
+	GATE_CFG(GATE_USART3,		RCC_USART3CFGR,		1,	0),
+	GATE_CFG(GATE_USART6,		RCC_USART6CFGR,		1,	0),
+	GATE_CFG(GATE_USB2,		RCC_USB2CFGR,		1,	0),
+	GATE_CFG(GATE_USB2PHY1,		RCC_USB2PHY1CFGR,	1,	0),
+	GATE_CFG(GATE_USB2PHY2,		RCC_USB2PHY2CFGR,	1,	0),
+	GATE_CFG(GATE_USB3DR,		RCC_USB3DRCFGR,		1,	0),
+	GATE_CFG(GATE_USB3PCIEPHY,	RCC_USB3PCIEPHYCFGR,	1,	0),
+	GATE_CFG(GATE_USBTC,		RCC_USBTCCFGR,		1,	0),
+	GATE_CFG(GATE_VDEC,		RCC_VDECCFGR,		1,	0),
+	GATE_CFG(GATE_VENC,		RCC_VENCCFGR,		1,	0),
+	GATE_CFG(GATE_VREF,		RCC_VREFCFGR,		1,	0),
+	GATE_CFG(GATE_WWDG1,		RCC_WWDG1CFGR,		1,	0),
+	GATE_CFG(GATE_WWDG2,		RCC_WWDG2CFGR,		1,	0),
+};
+
+#define CLK_HW_INIT_INDEX(_name, _parent, _ops, _flags)		\
+	(&(struct clk_init_data) {					\
+		.flags		= _flags,				\
+		.name		= _name,				\
+		.parent_data	= (const struct clk_parent_data[]) {	\
+					{ .index = _parent },		\
+				  },					\
+		.num_parents	= 1,					\
+		.ops		= _ops,					\
+	})
+
+/* ADC */
+static struct clk_stm32_gate ck_icn_p_adc12 = {
+	.gate_id = GATE_ADC12,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_adc12", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_composite ck_ker_adc12 = {
+	.gate_id = GATE_ADC12,
+	.mux_id = MUX_ADC12,
+	.div_id = NO_STM32_DIV,
+	.hw.init = CLK_HW_INIT_PARENTS_DATA("ck_ker_adc12", adc12_src, &clk_stm32_composite_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_adc3 = {
+	.gate_id = GATE_ADC3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_adc3", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_composite ck_ker_adc3 = {
+	.gate_id = GATE_ADC3,
+	.mux_id = MUX_ADC3,
+	.div_id = NO_STM32_DIV,
+	.hw.init = CLK_HW_INIT_PARENTS_DATA("ck_ker_adc3", adc3_src, &clk_stm32_composite_ops, 0),
+};
+
+/* ADF */
+static struct clk_stm32_gate ck_icn_p_adf1 = {
+	.gate_id = GATE_ADF1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_adf1", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_adf1 = {
+	.gate_id = GATE_ADF1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_adf1", FLEXGEN_42, &clk_stm32_gate_ops, 0),
+};
+
+/* DCMI */
+static struct clk_stm32_gate ck_icn_p_cci = {
+	.gate_id = GATE_CCI,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_cci", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+/* CSI-HOST */
+static struct clk_stm32_gate ck_icn_p_csi = {
+	.gate_id = GATE_CSI,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_csi", ICN_APB4, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_csi = {
+	.gate_id = GATE_CSI,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_csi", FLEXGEN_29, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_csitxesc = {
+	.gate_id = GATE_CSI,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_csitxesc", FLEXGEN_30, &clk_stm32_gate_ops, 0),
+};
+
+/* CSI-PHY */
+static struct clk_stm32_gate ck_ker_csiphy = {
+	.gate_id = GATE_CSI,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_csiphy", FLEXGEN_31, &clk_stm32_gate_ops, 0),
+};
+
+/* DCMIPP */
+static struct clk_stm32_gate ck_icn_p_dcmipp = {
+	.gate_id = GATE_DCMIPP,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_dcmipp", ICN_APB4, &clk_stm32_gate_ops, 0),
+};
+
+/* CRC */
+static struct clk_stm32_gate ck_icn_p_crc = {
+	.gate_id = GATE_CRC,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_crc", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+/* CRYP */
+static struct clk_stm32_gate ck_icn_p_cryp1 = {
+	.gate_id = GATE_CRYP1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_cryp1", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_cryp2 = {
+	.gate_id = GATE_CRYP2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_cryp2", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+/* DBG & TRACE*/
+/* Trace and debug clocks are managed by SCMI */
+
+/* LTDC */
+static struct clk_stm32_gate ck_icn_p_ltdc = {
+	.gate_id = GATE_LTDC,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_ltdc", ICN_APB4, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_ltdc = {
+	.gate_id = GATE_LTDC,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_ltdc", FLEXGEN_27, &clk_stm32_gate_ops,
+				       CLK_SET_RATE_PARENT),
+};
+
+/* DSI */
+static struct clk_stm32_gate ck_icn_p_dsi = {
+	.gate_id = GATE_DSI,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_dsi", ICN_APB4, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_composite clk_lanebyte = {
+	.gate_id = GATE_DSI,
+	.mux_id = MUX_DSIBLANE,
+	.div_id = NO_STM32_DIV,
+	.hw.init = CLK_HW_INIT_PARENTS_DATA("clk_lanebyte", dsiblane_src,
+					    &clk_stm32_composite_ops, 0),
+};
+
+/* LVDS */
+static struct clk_stm32_gate ck_icn_p_lvds = {
+	.gate_id = GATE_LVDS,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_lvds", ICN_APB4, &clk_stm32_gate_ops, 0),
+};
+
+/* DSI PHY */
+static struct clk_stm32_composite clk_phy_dsi = {
+	.gate_id = GATE_DSI,
+	.mux_id = MUX_DSIPHY,
+	.div_id = NO_STM32_DIV,
+	.hw.init = CLK_HW_INIT_PARENTS_DATA("clk_phy_dsi", dsiphy_src,
+					    &clk_stm32_composite_ops, 0),
+};
+
+/* LVDS PHY */
+static struct clk_stm32_composite ck_ker_lvdsphy = {
+	.gate_id = GATE_LVDS,
+	.mux_id = MUX_LVDSPHY,
+	.div_id = NO_STM32_DIV,
+	.hw.init = CLK_HW_INIT_PARENTS_DATA("ck_ker_lvdsphy", lvdsphy_src,
+					    &clk_stm32_composite_ops, 0),
+};
+
+/* DTS */
+static struct clk_stm32_composite ck_ker_dts = {
+	.gate_id = GATE_DTS,
+	.mux_id = MUX_DTS,
+	.div_id = NO_STM32_DIV,
+	.hw.init = CLK_HW_INIT_PARENTS_DATA("ck_ker_dts", dts_src,
+					    &clk_stm32_composite_ops, 0),
+};
+
+/* ETHERNET */
+static struct clk_stm32_gate ck_icn_p_eth1 = {
+	.gate_id = GATE_ETH1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_eth1", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_eth1stp = {
+	.gate_id = GATE_ETH1STP,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_eth1stp", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_eth1 = {
+	.gate_id = GATE_ETH1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_eth1", FLEXGEN_54, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_eth1ptp = {
+	.gate_id = GATE_ETH1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_eth1ptp", FLEXGEN_56, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_eth1mac = {
+	.gate_id = GATE_ETH1MAC,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_eth1mac", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_eth1tx = {
+	.gate_id = GATE_ETH1TX,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_eth1tx", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_eth1rx = {
+	.gate_id = GATE_ETH1RX,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_eth1rx", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_eth2 = {
+	.gate_id = GATE_ETH2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_eth2", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_eth2stp = {
+	.gate_id = GATE_ETH2STP,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_eth2stp", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_eth2 = {
+	.gate_id = GATE_ETH2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_eth2", FLEXGEN_55, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_eth2ptp = {
+	.gate_id = GATE_ETH2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_eth2ptp", FLEXGEN_56, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_eth2mac = {
+	.gate_id = GATE_ETH2MAC,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_eth2mac", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_eth2tx = {
+	.gate_id = GATE_ETH2TX,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_eth2tx", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_eth2rx = {
+	.gate_id = GATE_ETH2RX,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_eth2rx", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_ethsw = {
+	.gate_id = GATE_ETHSWMAC,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_ethsw", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_ethsw = {
+	.gate_id = GATE_ETHSW,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_ethsw", FLEXGEN_54, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_ethswref = {
+	.gate_id = GATE_ETHSWREF,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_ethswref", FLEXGEN_60, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_ethsw_acm_cfg = {
+	.gate_id = GATE_ETHSWACMCFG,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_ethsw_acm_cfg", ICN_LS_MCU,
+				       &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_ethsw_acm_msg = {
+	.gate_id = GATE_ETHSWACMMSG,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_ethsw_acm_msg", ICN_LS_MCU,
+				       &clk_stm32_gate_ops, 0),
+};
+
+/* FDCAN */
+static struct clk_stm32_gate ck_icn_p_fdcan = {
+	.gate_id = GATE_FDCAN,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_fdcan", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_fdcan = {
+	.gate_id = GATE_FDCAN,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_fdcan", FLEXGEN_26, &clk_stm32_gate_ops, 0),
+};
+
+/* GPU */
+static struct clk_stm32_gate ck_icn_m_gpu = {
+	.gate_id = GATE_GPU,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_m_gpu", FLEXGEN_59, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_gpu = {
+	.gate_id = GATE_GPU,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_gpu", PLL3, &clk_stm32_gate_ops, 0),
+};
+
+/* HASH */
+static struct clk_stm32_gate ck_icn_p_hash = {
+	.gate_id = GATE_HASH,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_hash", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+/* HDP */
+static struct clk_stm32_gate ck_icn_p_hdp = {
+	.gate_id = GATE_HDP,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_hdp", ICN_APB3, &clk_stm32_gate_ops, 0),
+};
+
+/* I2C */
+static struct clk_stm32_gate ck_icn_p_i2c8 = {
+	.gate_id = GATE_I2C8,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_i2c8", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_i2c1 = {
+	.gate_id = GATE_I2C1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_i2c1", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_i2c2 = {
+	.gate_id = GATE_I2C2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_i2c2", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_i2c3 = {
+	.gate_id = GATE_I2C3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_i2c3", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_i2c4 = {
+	.gate_id = GATE_I2C4,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_i2c4", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_i2c5 = {
+	.gate_id = GATE_I2C5,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_i2c5", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_i2c6 = {
+	.gate_id = GATE_I2C6,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_i2c6", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_i2c7 = {
+	.gate_id = GATE_I2C7,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_i2c7", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_i2c1 = {
+	.gate_id = GATE_I2C1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_i2c1", FLEXGEN_12, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_i2c2 = {
+	.gate_id = GATE_I2C2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_i2c2", FLEXGEN_12, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_i2c3 = {
+	.gate_id = GATE_I2C3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_i2c3", FLEXGEN_13, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_i2c5 = {
+	.gate_id = GATE_I2C5,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_i2c5", FLEXGEN_13, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_i2c4 = {
+	.gate_id = GATE_I2C4,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_i2c4", FLEXGEN_14, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_i2c6 = {
+	.gate_id = GATE_I2C6,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_i2c6", FLEXGEN_14, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_i2c7 = {
+	.gate_id = GATE_I2C7,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_i2c7", FLEXGEN_15, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_i2c8 = {
+	.gate_id = GATE_I2C8,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_i2c8", FLEXGEN_38, &clk_stm32_gate_ops, 0),
+};
+
+/* I3C */
+static struct clk_stm32_gate ck_icn_p_i3c1 = {
+	.gate_id = GATE_I3C1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_i3c1", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_i3c2 = {
+	.gate_id = GATE_I3C2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_i3c2", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_i3c3 = {
+	.gate_id = GATE_I3C3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_i3c3", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_i3c4 = {
+	.gate_id = GATE_I3C4,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_i3c4", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_i3c1 = {
+	.gate_id = GATE_I3C1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_i3c1", FLEXGEN_12, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_i3c2 = {
+	.gate_id = GATE_I3C2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_i3c2", FLEXGEN_12, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_i3c3 = {
+	.gate_id = GATE_I3C3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_i3c3", FLEXGEN_13, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_i3c4 = {
+	.gate_id = GATE_I3C4,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_i3c4", FLEXGEN_36, &clk_stm32_gate_ops, 0),
+};
+
+/* I2S */
+static struct clk_stm32_gate ck_icn_p_is2m = {
+	.gate_id = GATE_IS2M,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_is2m", ICN_APB3, &clk_stm32_gate_ops, 0),
+};
+
+/* IWDG */
+static struct clk_stm32_gate ck_icn_p_iwdg2 = {
+	.gate_id = GATE_IWDG2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_iwdg2", ICN_APB3, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_iwdg3 = {
+	.gate_id = GATE_IWDG3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_iwdg3", ICN_APB3, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_iwdg4 = {
+	.gate_id = GATE_IWDG4,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_iwdg4", ICN_APB3, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_iwdg5 = {
+	.gate_id = GATE_IWDG5,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_iwdg5", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+/* LPTIM */
+static struct clk_stm32_gate ck_icn_p_lptim1 = {
+	.gate_id = GATE_LPTIM1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_lptim1", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_lptim2 = {
+	.gate_id = GATE_LPTIM2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_lptim2", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_lptim3 = {
+	.gate_id = GATE_LPTIM3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_lptim3", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_lptim4 = {
+	.gate_id = GATE_LPTIM4,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_lptim4", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_lptim5 = {
+	.gate_id = GATE_LPTIM5,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_lptim5", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_lptim1 = {
+	.gate_id = GATE_LPTIM1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_lptim1", FLEXGEN_07, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_lptim2 = {
+	.gate_id = GATE_LPTIM2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_lptim2", FLEXGEN_07, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_lptim3 = {
+	.gate_id = GATE_LPTIM3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_lptim3", FLEXGEN_40, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_lptim4 = {
+	.gate_id = GATE_LPTIM4,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_lptim4", FLEXGEN_41, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_lptim5 = {
+	.gate_id = GATE_LPTIM5,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_lptim5", FLEXGEN_41, &clk_stm32_gate_ops, 0),
+};
+
+/* LPUART */
+static struct clk_stm32_gate ck_icn_p_lpuart1 = {
+	.gate_id = GATE_LPUART1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_lpuart1", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_lpuart1 = {
+	.gate_id = GATE_LPUART1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_lpuart1", FLEXGEN_39, &clk_stm32_gate_ops, 0),
+};
+
+/* MCO1 & MCO2 */
+static struct clk_stm32_composite ck_mco1 = {
+	.gate_id = GATE_MCO1,
+	.mux_id = MUX_MCO1,
+	.div_id = NO_STM32_DIV,
+	.hw.init = CLK_HW_INIT_PARENTS_DATA("ck_mco1", mco1_src, &clk_stm32_composite_ops, 0),
+};
+
+static struct clk_stm32_composite ck_mco2 = {
+	.gate_id = GATE_MCO2,
+	.mux_id = MUX_MCO2,
+	.div_id = NO_STM32_DIV,
+	.hw.init = CLK_HW_INIT_PARENTS_DATA("ck_mco2", mco2_src, &clk_stm32_composite_ops, 0),
+};
+
+/* MDF */
+static struct clk_stm32_gate ck_icn_p_mdf1 = {
+	.gate_id = GATE_MDF1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_mdf1", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_mdf1 = {
+	.gate_id = GATE_MDF1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_mdf1", FLEXGEN_23, &clk_stm32_gate_ops, 0),
+};
+
+/* OSPI */
+static struct clk_stm32_gate ck_icn_p_ospiiom = {
+	.gate_id = GATE_OSPIIOM,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_ospiiom", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+/* PCIE */
+static struct clk_stm32_gate ck_icn_p_pcie = {
+	.gate_id = GATE_PCIE,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_pcie", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+/* SAI */
+static struct clk_stm32_gate ck_icn_p_sai1 = {
+	.gate_id = GATE_SAI1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_sai1", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_sai2 = {
+	.gate_id = GATE_SAI2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_sai2", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_sai3 = {
+	.gate_id = GATE_SAI3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_sai3", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_sai4 = {
+	.gate_id = GATE_SAI4,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_sai4", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_sai1 = {
+	.gate_id = GATE_SAI1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_sai1", FLEXGEN_23, &clk_stm32_gate_ops,
+				       CLK_SET_RATE_PARENT),
+};
+
+static struct clk_stm32_gate ck_ker_sai2 = {
+	.gate_id = GATE_SAI2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_sai2", FLEXGEN_24, &clk_stm32_gate_ops,
+				       CLK_SET_RATE_PARENT),
+};
+
+static struct clk_stm32_gate ck_ker_sai3 = {
+	.gate_id = GATE_SAI3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_sai3", FLEXGEN_25, &clk_stm32_gate_ops,
+				       CLK_SET_RATE_PARENT),
+};
+
+static struct clk_stm32_gate ck_ker_sai4 = {
+	.gate_id = GATE_SAI4,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_sai4", FLEXGEN_25, &clk_stm32_gate_ops,
+				       CLK_SET_RATE_PARENT),
+};
+
+/* SDMMC */
+static struct clk_stm32_gate ck_icn_m_sdmmc1 = {
+	.gate_id = GATE_SDMMC1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_m_sdmmc1", ICN_SDMMC, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_m_sdmmc2 = {
+	.gate_id = GATE_SDMMC2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_m_sdmmc2", ICN_SDMMC, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_m_sdmmc3 = {
+	.gate_id = GATE_SDMMC3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_m_sdmmc3", ICN_SDMMC, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_sdmmc1 = {
+	.gate_id = GATE_SDMMC1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_sdmmc1", FLEXGEN_51, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_sdmmc2 = {
+	.gate_id = GATE_SDMMC2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_sdmmc2", FLEXGEN_52, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_sdmmc3 = {
+	.gate_id = GATE_SDMMC3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_sdmmc3", FLEXGEN_53, &clk_stm32_gate_ops, 0),
+};
+
+/* SPDIF */
+static struct clk_stm32_gate ck_icn_p_spdifrx = {
+	.gate_id = GATE_SPDIFRX,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_spdifrx", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_spdifrx = {
+	.gate_id = GATE_SPDIFRX,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_spdifrx", FLEXGEN_11, &clk_stm32_gate_ops, 0),
+};
+
+/* SPI */
+static struct clk_stm32_gate ck_icn_p_spi1 = {
+	.gate_id = GATE_SPI1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_spi1", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_spi2 = {
+	.gate_id = GATE_SPI2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_spi2", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_spi3 = {
+	.gate_id = GATE_SPI3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_spi3", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_spi4 = {
+	.gate_id = GATE_SPI4,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_spi4", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_spi5 = {
+	.gate_id = GATE_SPI5,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_spi5", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_spi6 = {
+	.gate_id = GATE_SPI6,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_spi6", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_spi7 = {
+	.gate_id = GATE_SPI7,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_spi7", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_spi8 = {
+	.gate_id = GATE_SPI8,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_spi8", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_spi1 = {
+	.gate_id = GATE_SPI1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_spi1", FLEXGEN_16, &clk_stm32_gate_ops,
+				     CLK_SET_RATE_PARENT),
+};
+
+static struct clk_stm32_gate ck_ker_spi2 = {
+	.gate_id = GATE_SPI2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_spi2", FLEXGEN_10, &clk_stm32_gate_ops,
+				       CLK_SET_RATE_PARENT),
+};
+
+static struct clk_stm32_gate ck_ker_spi3 = {
+	.gate_id = GATE_SPI3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_spi3", FLEXGEN_10, &clk_stm32_gate_ops,
+				       CLK_SET_RATE_PARENT),
+};
+
+static struct clk_stm32_gate ck_ker_spi4 = {
+	.gate_id = GATE_SPI4,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_spi4", FLEXGEN_17, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_spi5 = {
+	.gate_id = GATE_SPI5,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_spi5", FLEXGEN_17, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_spi6 = {
+	.gate_id = GATE_SPI6,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_spi6", FLEXGEN_18, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_spi7 = {
+	.gate_id = GATE_SPI7,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_spi7", FLEXGEN_18, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_spi8 = {
+	.gate_id = GATE_SPI8,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_spi8", FLEXGEN_37, &clk_stm32_gate_ops, 0),
+};
+
+/* Timers */
+static struct clk_stm32_gate ck_icn_p_tim2 = {
+	.gate_id = GATE_TIM2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim2", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_tim3 = {
+	.gate_id = GATE_TIM3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim3", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_tim4 = {
+	.gate_id = GATE_TIM4,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim4", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_tim5 = {
+	.gate_id = GATE_TIM5,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim5", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_tim6 = {
+	.gate_id = GATE_TIM6,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim6", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_tim7 = {
+	.gate_id = GATE_TIM7,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim7", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_tim10 = {
+	.gate_id = GATE_TIM10,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim10", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_tim11 = {
+	.gate_id = GATE_TIM11,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim11", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_tim12 = {
+	.gate_id = GATE_TIM12,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim12", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_tim13 = {
+	.gate_id = GATE_TIM13,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim13", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_tim14 = {
+	.gate_id = GATE_TIM14,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim14", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_tim1 = {
+	.gate_id = GATE_TIM1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim1", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_tim8 = {
+	.gate_id = GATE_TIM8,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim8", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_tim15 = {
+	.gate_id = GATE_TIM15,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim15", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_tim16 = {
+	.gate_id = GATE_TIM16,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim16", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_tim17 = {
+	.gate_id = GATE_TIM17,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim17", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_tim20 = {
+	.gate_id = GATE_TIM20,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_tim20", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim2 = {
+	.gate_id = GATE_TIM2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim2", TIMG1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim3 = {
+	.gate_id = GATE_TIM3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim3", TIMG1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim4 = {
+	.gate_id = GATE_TIM4,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim4", TIMG1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim5 = {
+	.gate_id = GATE_TIM5,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim5", TIMG1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim6 = {
+	.gate_id = GATE_TIM6,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim6", TIMG1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim7 = {
+	.gate_id = GATE_TIM7,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim7", TIMG1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim10 = {
+	.gate_id = GATE_TIM10,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim10", TIMG1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim11 = {
+	.gate_id = GATE_TIM11,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim11", TIMG1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim12 = {
+	.gate_id = GATE_TIM12,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim12", TIMG1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim13 = {
+	.gate_id = GATE_TIM13,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim13", TIMG1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim14 = {
+	.gate_id = GATE_TIM14,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim14", TIMG1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim1 = {
+	.gate_id = GATE_TIM1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim1", TIMG2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim8 = {
+	.gate_id = GATE_TIM8,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim8", TIMG2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim15 = {
+	.gate_id = GATE_TIM15,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim15", TIMG2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim16 = {
+	.gate_id = GATE_TIM16,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim16", TIMG2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim17 = {
+	.gate_id = GATE_TIM17,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim17", TIMG2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_tim20 = {
+	.gate_id = GATE_TIM20,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_tim20", TIMG2, &clk_stm32_gate_ops, 0),
+};
+
+/* UART/USART */
+static struct clk_stm32_gate ck_icn_p_usart2 = {
+	.gate_id = GATE_USART2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_usart2", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_usart3 = {
+	.gate_id = GATE_USART3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_usart3", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_uart4 = {
+	.gate_id = GATE_UART4,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_uart4", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_uart5 = {
+	.gate_id = GATE_UART5,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_uart5", ICN_APB1, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_usart1 = {
+	.gate_id = GATE_USART1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_usart1", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_usart6 = {
+	.gate_id = GATE_USART6,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_usart6", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_uart7 = {
+	.gate_id = GATE_UART7,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_uart7", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_uart8 = {
+	.gate_id = GATE_UART8,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_uart8", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_uart9 = {
+	.gate_id = GATE_UART9,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_uart9", ICN_APB2, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_usart2 = {
+	.gate_id = GATE_USART2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_usart2", FLEXGEN_08, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_uart4 = {
+	.gate_id = GATE_UART4,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_uart4", FLEXGEN_08, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_usart3 = {
+	.gate_id = GATE_USART3,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_usart3", FLEXGEN_09, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_uart5 = {
+	.gate_id = GATE_UART5,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_uart5", FLEXGEN_09, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_usart1 = {
+	.gate_id = GATE_USART1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_usart1", FLEXGEN_19, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_usart6 = {
+	.gate_id = GATE_USART6,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_usart6", FLEXGEN_20, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_uart7 = {
+	.gate_id = GATE_UART7,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_uart7", FLEXGEN_21, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_uart8 = {
+	.gate_id = GATE_UART8,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_uart8", FLEXGEN_21, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_uart9 = {
+	.gate_id = GATE_UART9,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_uart9", FLEXGEN_22, &clk_stm32_gate_ops, 0),
+};
+
+/* USB2PHY1 */
+static struct clk_stm32_composite ck_ker_usb2phy1 = {
+	.gate_id = GATE_USB2PHY1,
+	.mux_id = MUX_USB2PHY1,
+	.div_id = NO_STM32_DIV,
+	.hw.init = CLK_HW_INIT_PARENTS_DATA("ck_ker_usb2phy1", usb2phy1_src,
+					    &clk_stm32_composite_ops, 0),
+};
+
+/* USB2H */
+static struct clk_stm32_gate ck_icn_m_usb2ehci = {
+	.gate_id = GATE_USB2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_m_usb2ehci", ICN_HSL, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_m_usb2ohci = {
+	.gate_id = GATE_USB2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_m_usb2ohci", ICN_HSL, &clk_stm32_gate_ops, 0),
+};
+
+/* USB2PHY2 */
+static struct clk_stm32_composite ck_ker_usb2phy2_en = {
+	.gate_id = GATE_USB2PHY2,
+	.mux_id = MUX_USB2PHY2,
+	.div_id = NO_STM32_DIV,
+	.hw.init = CLK_HW_INIT_PARENTS_DATA("ck_ker_usb2phy2_en", usb2phy2_src,
+					    &clk_stm32_composite_ops, 0),
+};
+
+/* USB3 PCIe COMBOPHY */
+static struct clk_stm32_gate ck_icn_p_usb3pciephy = {
+	.gate_id = GATE_USB3PCIEPHY,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_usb3pciephy", ICN_APB4, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_composite ck_ker_usb3pciephy = {
+	.gate_id = GATE_USB3PCIEPHY,
+	.mux_id = MUX_USB3PCIEPHY,
+	.div_id = NO_STM32_DIV,
+	.hw.init = CLK_HW_INIT_PARENTS_DATA("ck_ker_usb3pciephy", usb3pciphy_src,
+					    &clk_stm32_composite_ops, 0),
+};
+
+/* USB3 DRD */
+static struct clk_stm32_gate ck_icn_m_usb3dr = {
+	.gate_id = GATE_USB3DR,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_m_usb3dr", ICN_HSL, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_usb2phy2 = {
+	.gate_id = GATE_USB3DR,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_usb2phy2", FLEXGEN_58, &clk_stm32_gate_ops, 0),
+};
+
+/* USBTC */
+static struct clk_stm32_gate ck_icn_p_usbtc = {
+	.gate_id = GATE_USBTC,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_usbtc", ICN_APB4, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_ker_usbtc = {
+	.gate_id = GATE_USBTC,
+	.hw.init = CLK_HW_INIT_INDEX("ck_ker_usbtc", FLEXGEN_35, &clk_stm32_gate_ops, 0),
+};
+
+/* VDEC / VENC */
+static struct clk_stm32_gate ck_icn_p_vdec = {
+	.gate_id = GATE_VDEC,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_vdec", ICN_APB4, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_venc = {
+	.gate_id = GATE_VENC,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_venc", ICN_APB4, &clk_stm32_gate_ops, 0),
+};
+
+/* VREF */
+static struct clk_stm32_gate ck_icn_p_vref = {
+	.gate_id = GATE_VREF,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_vref", ICN_APB3, &clk_stm32_gate_ops, 0),
+};
+
+/* WWDG */
+static struct clk_stm32_gate ck_icn_p_wwdg1 = {
+	.gate_id = GATE_WWDG1,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_wwdg1", ICN_APB3, &clk_stm32_gate_ops, 0),
+};
+
+static struct clk_stm32_gate ck_icn_p_wwdg2 = {
+	.gate_id = GATE_WWDG2,
+	.hw.init = CLK_HW_INIT_INDEX("ck_icn_p_wwdg2", ICN_LS_MCU, &clk_stm32_gate_ops, 0),
+};
+
+#define SECF_NONE -1
+
+static const struct clock_config stm32mp25_clock_cfg[] = {
+	STM32_GATE_CFG(CK_BUS_ETH1,		ck_icn_p_eth1,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_ETH2,		ck_icn_p_eth2,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_PCIE,		ck_icn_p_pcie,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_ETHSW,		ck_icn_p_ethsw,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_ADC12,		ck_icn_p_adc12,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_ADC3,		ck_icn_p_adc3,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_CCI,		ck_icn_p_cci,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_CRC,		ck_icn_p_crc,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_MDF1,		ck_icn_p_mdf1,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_OSPIIOM,		ck_icn_p_ospiiom,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_HASH,		ck_icn_p_hash,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_CRYP1,		ck_icn_p_cryp1,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_CRYP2,		ck_icn_p_cryp2,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_ADF1,		ck_icn_p_adf1,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_SPI8,		ck_icn_p_spi8,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_LPUART1,		ck_icn_p_lpuart1,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_I2C8,		ck_icn_p_i2c8,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_LPTIM3,		ck_icn_p_lptim3,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_LPTIM4,		ck_icn_p_lptim4,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_LPTIM5,		ck_icn_p_lptim5,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_IWDG5,		ck_icn_p_iwdg5,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_WWDG2,		ck_icn_p_wwdg2,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_I3C4,		ck_icn_p_i3c4,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_SDMMC1,		ck_icn_m_sdmmc1,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_SDMMC2,		ck_icn_m_sdmmc2,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_SDMMC3,		ck_icn_m_sdmmc3,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_USB2OHCI,		ck_icn_m_usb2ohci,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_USB2EHCI,		ck_icn_m_usb2ehci,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_USB3DR,		ck_icn_m_usb3dr,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM2,		ck_icn_p_tim2,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM3,		ck_icn_p_tim3,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM4,		ck_icn_p_tim4,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM5,		ck_icn_p_tim5,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM6,		ck_icn_p_tim6,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM7,		ck_icn_p_tim7,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM10,		ck_icn_p_tim10,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM11,		ck_icn_p_tim11,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM12,		ck_icn_p_tim12,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM13,		ck_icn_p_tim13,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM14,		ck_icn_p_tim14,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_LPTIM1,		ck_icn_p_lptim1,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_LPTIM2,		ck_icn_p_lptim2,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_SPI2,		ck_icn_p_spi2,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_SPI3,		ck_icn_p_spi3,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_SPDIFRX,		ck_icn_p_spdifrx,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_USART2,		ck_icn_p_usart2,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_USART3,		ck_icn_p_usart3,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_UART4,		ck_icn_p_uart4,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_UART5,		ck_icn_p_uart5,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_I2C1,		ck_icn_p_i2c1,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_I2C2,		ck_icn_p_i2c2,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_I2C3,		ck_icn_p_i2c3,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_I2C4,		ck_icn_p_i2c4,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_I2C5,		ck_icn_p_i2c5,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_I2C6,		ck_icn_p_i2c6,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_I2C7,		ck_icn_p_i2c7,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_I3C1,		ck_icn_p_i3c1,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_I3C2,		ck_icn_p_i3c2,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_I3C3,		ck_icn_p_i3c3,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM1,		ck_icn_p_tim1,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM8,		ck_icn_p_tim8,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM15,		ck_icn_p_tim15,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM16,		ck_icn_p_tim16,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM17,		ck_icn_p_tim17,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_TIM20,		ck_icn_p_tim20,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_SAI1,		ck_icn_p_sai1,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_SAI2,		ck_icn_p_sai2,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_SAI3,		ck_icn_p_sai3,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_SAI4,		ck_icn_p_sai4,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_USART1,		ck_icn_p_usart1,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_USART6,		ck_icn_p_usart6,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_UART7,		ck_icn_p_uart7,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_UART8,		ck_icn_p_uart8,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_UART9,		ck_icn_p_uart9,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_FDCAN,		ck_icn_p_fdcan,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_SPI1,		ck_icn_p_spi1,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_SPI4,		ck_icn_p_spi4,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_SPI5,		ck_icn_p_spi5,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_SPI6,		ck_icn_p_spi6,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_SPI7,		ck_icn_p_spi7,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_IWDG2,		ck_icn_p_iwdg2,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_IWDG3,		ck_icn_p_iwdg3,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_IWDG4,		ck_icn_p_iwdg4,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_WWDG1,		ck_icn_p_wwdg1,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_VREF,		ck_icn_p_vref,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_HDP,		ck_icn_p_hdp,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_IS2M,		ck_icn_p_is2m,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_DSI,		ck_icn_p_dsi,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_LTDC,		ck_icn_p_ltdc,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_CSI,		ck_icn_p_csi,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_DCMIPP,		ck_icn_p_dcmipp,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_LVDS,		ck_icn_p_lvds,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_USBTC,		ck_icn_p_usbtc,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_USB3PCIEPHY,	ck_icn_p_usb3pciephy,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_VDEC,		ck_icn_p_vdec,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_VENC,		ck_icn_p_venc,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM2,		ck_ker_tim2,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM3,		ck_ker_tim3,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM4,		ck_ker_tim4,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM5,		ck_ker_tim5,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM6,		ck_ker_tim6,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM7,		ck_ker_tim7,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM10,		ck_ker_tim10,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM11,		ck_ker_tim11,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM12,		ck_ker_tim12,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM13,		ck_ker_tim13,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM14,		ck_ker_tim14,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM1,		ck_ker_tim1,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM8,		ck_ker_tim8,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM15,		ck_ker_tim15,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM16,		ck_ker_tim16,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM17,		ck_ker_tim17,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_TIM20,		ck_ker_tim20,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_LPTIM1,		ck_ker_lptim1,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_LPTIM2,		ck_ker_lptim2,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_USART2,		ck_ker_usart2,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_UART4,		ck_ker_uart4,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_USART3,		ck_ker_usart3,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_UART5,		ck_ker_uart5,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_SPI2,		ck_ker_spi2,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_SPI3,		ck_ker_spi3,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_SPDIFRX,		ck_ker_spdifrx,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_I2C1,		ck_ker_i2c1,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_I2C2,		ck_ker_i2c2,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_I3C1,		ck_ker_i3c1,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_I3C2,		ck_ker_i3c2,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_I2C3,		ck_ker_i2c3,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_I2C5,		ck_ker_i2c5,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_I3C3,		ck_ker_i3c3,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_I2C4,		ck_ker_i2c4,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_I2C6,		ck_ker_i2c6,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_I2C7,		ck_ker_i2c7,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_SPI1,		ck_ker_spi1,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_SPI4,		ck_ker_spi4,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_SPI5,		ck_ker_spi5,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_SPI6,		ck_ker_spi6,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_SPI7,		ck_ker_spi7,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_USART1,		ck_ker_usart1,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_USART6,		ck_ker_usart6,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_UART7,		ck_ker_uart7,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_UART8,		ck_ker_uart8,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_UART9,		ck_ker_uart9,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_MDF1,		ck_ker_mdf1,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_SAI1,		ck_ker_sai1,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_SAI2,		ck_ker_sai2,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_SAI3,		ck_ker_sai3,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_SAI4,		ck_ker_sai4,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_FDCAN,		ck_ker_fdcan,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_CSI,		ck_ker_csi,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_CSITXESC,		ck_ker_csitxesc,	SECF_NONE),
+	STM32_GATE_CFG(CK_KER_CSIPHY,		ck_ker_csiphy,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_USBTC,		ck_ker_usbtc,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_I3C4,		ck_ker_i3c4,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_SPI8,		ck_ker_spi8,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_I2C8,		ck_ker_i2c8,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_LPUART1,		ck_ker_lpuart1,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_LPTIM3,		ck_ker_lptim3,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_LPTIM4,		ck_ker_lptim4,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_LPTIM5,		ck_ker_lptim5,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_ADF1,		ck_ker_adf1,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_SDMMC1,		ck_ker_sdmmc1,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_SDMMC2,		ck_ker_sdmmc2,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_SDMMC3,		ck_ker_sdmmc3,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_ETH1,		ck_ker_eth1,		SECF_NONE),
+	STM32_GATE_CFG(CK_ETH1_STP,		ck_ker_eth1stp,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_ETHSW,		ck_ker_ethsw,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_ETH2,		ck_ker_eth2,		SECF_NONE),
+	STM32_GATE_CFG(CK_ETH2_STP,		ck_ker_eth2stp,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_ETH1PTP,		ck_ker_eth1ptp,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_ETH2PTP,		ck_ker_eth2ptp,		SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_GPU,		ck_icn_m_gpu,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_GPU,		ck_ker_gpu,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_ETHSWREF,		ck_ker_ethswref,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_ETHSWACMCFG,	ck_icn_p_ethsw_acm_cfg,	SECF_NONE),
+	STM32_GATE_CFG(CK_BUS_ETHSWACMMSG, ck_icn_p_ethsw_acm_msg,	SECF_NONE),
+	STM32_GATE_CFG(CK_ETH1_MAC,		ck_ker_eth1mac,		SECF_NONE),
+	STM32_GATE_CFG(CK_ETH1_TX,		ck_ker_eth1tx,		SECF_NONE),
+	STM32_GATE_CFG(CK_ETH1_RX,		ck_ker_eth1rx,		SECF_NONE),
+	STM32_GATE_CFG(CK_ETH2_MAC,		ck_ker_eth2mac,		SECF_NONE),
+	STM32_GATE_CFG(CK_ETH2_TX,		ck_ker_eth2tx,		SECF_NONE),
+	STM32_GATE_CFG(CK_ETH2_RX,		ck_ker_eth2rx,		SECF_NONE),
+	STM32_COMPOSITE_CFG(CK_MCO1,		ck_mco1,		SECF_NONE),
+	STM32_COMPOSITE_CFG(CK_MCO2,		ck_mco2,		SECF_NONE),
+	STM32_COMPOSITE_CFG(CK_KER_ADC12,	ck_ker_adc12,		SECF_NONE),
+	STM32_COMPOSITE_CFG(CK_KER_ADC3,	ck_ker_adc3,		SECF_NONE),
+	STM32_COMPOSITE_CFG(CK_KER_USB2PHY1,	ck_ker_usb2phy1,	SECF_NONE),
+	STM32_GATE_CFG(CK_KER_USB2PHY2,		ck_ker_usb2phy2,	SECF_NONE),
+	STM32_COMPOSITE_CFG(CK_KER_USB2PHY2EN,	ck_ker_usb2phy2_en,	SECF_NONE),
+	STM32_COMPOSITE_CFG(CK_KER_USB3PCIEPHY,	ck_ker_usb3pciephy,	SECF_NONE),
+	STM32_COMPOSITE_CFG(CK_KER_DSIBLANE,	clk_lanebyte,		SECF_NONE),
+	STM32_COMPOSITE_CFG(CK_KER_DSIPHY,	clk_phy_dsi,		SECF_NONE),
+	STM32_COMPOSITE_CFG(CK_KER_LVDSPHY,	ck_ker_lvdsphy,		SECF_NONE),
+	STM32_COMPOSITE_CFG(CK_KER_DTS,		ck_ker_dts,		SECF_NONE),
+	STM32_GATE_CFG(CK_KER_LTDC,		ck_ker_ltdc,		SECF_NONE),
+};
+
+#define RESET_MP25(id, _offset, _bit_idx, _set_clr)	\
+	[id] = &(struct stm32_reset_cfg){		\
+		.offset		= (_offset),		\
+		.bit_idx	= (_bit_idx),		\
+		.set_clr	= (_set_clr),		\
+	}
+
+static const struct stm32_reset_cfg *stm32mp25_reset_cfg[STM32MP25_LAST_RESET] = {
+	RESET_MP25(TIM1_R,		RCC_TIM1CFGR,		0,	0),
+	RESET_MP25(TIM2_R,		RCC_TIM2CFGR,		0,	0),
+	RESET_MP25(TIM3_R,		RCC_TIM3CFGR,		0,	0),
+	RESET_MP25(TIM4_R,		RCC_TIM4CFGR,		0,	0),
+	RESET_MP25(TIM5_R,		RCC_TIM5CFGR,		0,	0),
+	RESET_MP25(TIM6_R,		RCC_TIM6CFGR,		0,	0),
+	RESET_MP25(TIM7_R,		RCC_TIM7CFGR,		0,	0),
+	RESET_MP25(TIM8_R,		RCC_TIM8CFGR,		0,	0),
+	RESET_MP25(TIM10_R,		RCC_TIM10CFGR,		0,	0),
+	RESET_MP25(TIM11_R,		RCC_TIM11CFGR,		0,	0),
+	RESET_MP25(TIM12_R,		RCC_TIM12CFGR,		0,	0),
+	RESET_MP25(TIM13_R,		RCC_TIM13CFGR,		0,	0),
+	RESET_MP25(TIM14_R,		RCC_TIM14CFGR,		0,	0),
+	RESET_MP25(TIM15_R,		RCC_TIM15CFGR,		0,	0),
+	RESET_MP25(TIM16_R,		RCC_TIM16CFGR,		0,	0),
+	RESET_MP25(TIM17_R,		RCC_TIM17CFGR,		0,	0),
+	RESET_MP25(TIM20_R,		RCC_TIM20CFGR,		0,	0),
+	RESET_MP25(LPTIM1_R,		RCC_LPTIM1CFGR,		0,	0),
+	RESET_MP25(LPTIM2_R,		RCC_LPTIM2CFGR,		0,	0),
+	RESET_MP25(LPTIM3_R,		RCC_LPTIM3CFGR,		0,	0),
+	RESET_MP25(LPTIM4_R,		RCC_LPTIM4CFGR,		0,	0),
+	RESET_MP25(LPTIM5_R,		RCC_LPTIM5CFGR,		0,	0),
+	RESET_MP25(SPI1_R,		RCC_SPI1CFGR,		0,	0),
+	RESET_MP25(SPI2_R,		RCC_SPI2CFGR,		0,	0),
+	RESET_MP25(SPI3_R,		RCC_SPI3CFGR,		0,	0),
+	RESET_MP25(SPI4_R,		RCC_SPI4CFGR,		0,	0),
+	RESET_MP25(SPI5_R,		RCC_SPI5CFGR,		0,	0),
+	RESET_MP25(SPI6_R,		RCC_SPI6CFGR,		0,	0),
+	RESET_MP25(SPI7_R,		RCC_SPI7CFGR,		0,	0),
+	RESET_MP25(SPI8_R,		RCC_SPI8CFGR,		0,	0),
+	RESET_MP25(SPDIFRX_R,		RCC_SPDIFRXCFGR,	0,	0),
+	RESET_MP25(USART1_R,		RCC_USART1CFGR,		0,	0),
+	RESET_MP25(USART2_R,		RCC_USART2CFGR,		0,	0),
+	RESET_MP25(USART3_R,		RCC_USART3CFGR,		0,	0),
+	RESET_MP25(UART4_R,		RCC_UART4CFGR,		0,	0),
+	RESET_MP25(UART5_R,		RCC_UART5CFGR,		0,	0),
+	RESET_MP25(USART6_R,		RCC_USART6CFGR,		0,	0),
+	RESET_MP25(UART7_R,		RCC_UART7CFGR,		0,	0),
+	RESET_MP25(UART8_R,		RCC_UART8CFGR,		0,	0),
+	RESET_MP25(UART9_R,		RCC_UART9CFGR,		0,	0),
+	RESET_MP25(LPUART1_R,		RCC_LPUART1CFGR,	0,	0),
+	RESET_MP25(IS2M_R,		RCC_IS2MCFGR,		0,	0),
+	RESET_MP25(I2C1_R,		RCC_I2C1CFGR,		0,	0),
+	RESET_MP25(I2C2_R,		RCC_I2C2CFGR,		0,	0),
+	RESET_MP25(I2C3_R,		RCC_I2C3CFGR,		0,	0),
+	RESET_MP25(I2C4_R,		RCC_I2C4CFGR,		0,	0),
+	RESET_MP25(I2C5_R,		RCC_I2C5CFGR,		0,	0),
+	RESET_MP25(I2C6_R,		RCC_I2C6CFGR,		0,	0),
+	RESET_MP25(I2C7_R,		RCC_I2C7CFGR,		0,	0),
+	RESET_MP25(I2C8_R,		RCC_I2C8CFGR,		0,	0),
+	RESET_MP25(SAI1_R,		RCC_SAI1CFGR,		0,	0),
+	RESET_MP25(SAI2_R,		RCC_SAI2CFGR,		0,	0),
+	RESET_MP25(SAI3_R,		RCC_SAI3CFGR,		0,	0),
+	RESET_MP25(SAI4_R,		RCC_SAI4CFGR,		0,	0),
+	RESET_MP25(MDF1_R,		RCC_MDF1CFGR,		0,	0),
+	RESET_MP25(MDF2_R,		RCC_ADF1CFGR,		0,	0),
+	RESET_MP25(FDCAN_R,		RCC_FDCANCFGR,		0,	0),
+	RESET_MP25(HDP_R,		RCC_HDPCFGR,		0,	0),
+	RESET_MP25(ADC12_R,		RCC_ADC12CFGR,		0,	0),
+	RESET_MP25(ADC3_R,		RCC_ADC3CFGR,		0,	0),
+	RESET_MP25(ETH1_R,		RCC_ETH1CFGR,		0,	0),
+	RESET_MP25(ETH2_R,		RCC_ETH2CFGR,		0,	0),
+	RESET_MP25(USB2_R,		RCC_USB2CFGR,		0,	0),
+	RESET_MP25(USB2PHY1_R,		RCC_USB2PHY1CFGR,	0,	0),
+	RESET_MP25(USB2PHY2_R,		RCC_USB2PHY2CFGR,	0,	0),
+	RESET_MP25(USB3DR_R,		RCC_USB3DRCFGR,		0,	0),
+	RESET_MP25(USB3PCIEPHY_R,	RCC_USB3PCIEPHYCFGR,	0,	0),
+	RESET_MP25(USBTC_R,		RCC_USBTCCFGR,		0,	0),
+	RESET_MP25(ETHSW_R,		RCC_ETHSWCFGR,		0,	0),
+	RESET_MP25(SDMMC1_R,		RCC_SDMMC1CFGR,		0,	0),
+	RESET_MP25(SDMMC1DLL_R,		RCC_SDMMC1CFGR,		16,	0),
+	RESET_MP25(SDMMC2_R,		RCC_SDMMC2CFGR,		0,	0),
+	RESET_MP25(SDMMC2DLL_R,		RCC_SDMMC2CFGR,		16,	0),
+	RESET_MP25(SDMMC3_R,		RCC_SDMMC3CFGR,		0,	0),
+	RESET_MP25(SDMMC3DLL_R,		RCC_SDMMC3CFGR,		16,	0),
+	RESET_MP25(GPU_R,		RCC_GPUCFGR,		0,	0),
+	RESET_MP25(LTDC_R,		RCC_LTDCCFGR,		0,	0),
+	RESET_MP25(DSI_R,		RCC_DSICFGR,		0,	0),
+	RESET_MP25(LVDS_R,		RCC_LVDSCFGR,		0,	0),
+	RESET_MP25(CSI_R,		RCC_CSICFGR,		0,	0),
+	RESET_MP25(DCMIPP_R,		RCC_DCMIPPCFGR,		0,	0),
+	RESET_MP25(CCI_R,		RCC_CCICFGR,		0,	0),
+	RESET_MP25(VDEC_R,		RCC_VDECCFGR,		0,	0),
+	RESET_MP25(VENC_R,		RCC_VENCCFGR,		0,	0),
+	RESET_MP25(WWDG1_R,		RCC_WWDG1CFGR,		0,	0),
+	RESET_MP25(WWDG2_R,		RCC_WWDG2CFGR,		0,	0),
+	RESET_MP25(VREF_R,		RCC_VREFCFGR,		0,	0),
+	RESET_MP25(DTS_R,		RCC_DTSCFGR,		0,	0),
+	RESET_MP25(CRC_R,		RCC_CRCCFGR,		0,	0),
+	RESET_MP25(SERC_R,		RCC_SERCCFGR,		0,	0),
+	RESET_MP25(OSPIIOM_R,		RCC_OSPIIOMCFGR,	0,	0),
+	RESET_MP25(I3C1_R,		RCC_I3C1CFGR,		0,	0),
+	RESET_MP25(I3C2_R,		RCC_I3C2CFGR,		0,	0),
+	RESET_MP25(I3C3_R,		RCC_I3C3CFGR,		0,	0),
+	RESET_MP25(I3C4_R,		RCC_I3C4CFGR,		0,	0),
+	RESET_MP25(IWDG2_KER_R,		RCC_IWDGC1CFGSETR,	18,	1),
+	RESET_MP25(IWDG4_KER_R,		RCC_IWDGC2CFGSETR,	18,	1),
+	RESET_MP25(RNG_R,		RCC_RNGCFGR,		0,	0),
+	RESET_MP25(PKA_R,		RCC_PKACFGR,		0,	0),
+	RESET_MP25(SAES_R,		RCC_SAESCFGR,		0,	0),
+	RESET_MP25(HASH_R,		RCC_HASHCFGR,		0,	0),
+	RESET_MP25(CRYP1_R,		RCC_CRYP1CFGR,		0,	0),
+	RESET_MP25(CRYP2_R,		RCC_CRYP2CFGR,		0,	0),
+	RESET_MP25(PCIE_R,		RCC_PCIECFGR,		0,	0),
+};
+
+static u16 stm32mp25_cpt_gate[GATE_NB];
+
+static struct clk_stm32_clock_data stm32mp25_clock_data = {
+	.gate_cpt	= stm32mp25_cpt_gate,
+	.gates		= stm32mp25_gates,
+	.muxes		= stm32mp25_muxes,
+};
+
+static struct clk_stm32_reset_data stm32mp25_reset_data = {
+	.reset_lines	= stm32mp25_reset_cfg,
+	.nr_lines	= ARRAY_SIZE(stm32mp25_reset_cfg),
+};
+
+static const struct stm32_rcc_match_data stm32mp25_data = {
+	.tab_clocks	= stm32mp25_clock_cfg,
+	.num_clocks	= ARRAY_SIZE(stm32mp25_clock_cfg),
+	.maxbinding	= STM32MP25_LAST_CLK,
+	.clock_data	= &stm32mp25_clock_data,
+	.reset_data	= &stm32mp25_reset_data,
+};
+
+static const struct of_device_id stm32mp25_match_data[] = {
+	{ .compatible = "st,stm32mp25-rcc", .data = &stm32mp25_data, },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, stm32mp25_match_data);
+
+static int stm32mp25_rcc_clocks_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	void __iomem *base;
+
+	base = devm_platform_ioremap_resource(pdev, 0);
+	if (WARN_ON(IS_ERR(base)))
+		return PTR_ERR(base);
+
+	return stm32_rcc_init(dev, stm32mp25_match_data, base);
+}
+
+static struct platform_driver stm32mp25_rcc_clocks_driver = {
+	.driver	= {
+		.name = "stm32mp25_rcc",
+		.of_match_table = stm32mp25_match_data,
+	},
+	.probe = stm32mp25_rcc_clocks_probe,
+};
+
+static int __init stm32mp25_clocks_init(void)
+{
+	return platform_driver_register(&stm32mp25_rcc_clocks_driver);
+}
+
+core_initcall(stm32mp25_clocks_init);
diff --git a/drivers/clk/stm32/reset-stm32.c b/drivers/clk/stm32/reset-stm32.c
index 14c2ee1eebee..5a8f525842ce 100644
--- a/drivers/clk/stm32/reset-stm32.c
+++ b/drivers/clk/stm32/reset-stm32.c
@@ -19,6 +19,7 @@ struct stm32_reset_data {
 	struct reset_controller_dev	rcdev;
 	void __iomem			*membase;
 	u32				clear_offset;
+	const struct stm32_reset_cfg	**reset_lines;
 };
 
 static inline struct stm32_reset_data *
@@ -27,22 +28,46 @@ to_stm32_reset_data(struct reset_controller_dev *rcdev)
 	return container_of(rcdev, struct stm32_reset_data, rcdev);
 }
 
+static const struct stm32_reset_cfg *stm32_get_reset_line(struct reset_controller_dev *rcdev,
+							  unsigned long id,
+							  struct stm32_reset_cfg *line)
+{
+	struct stm32_reset_data *data = to_stm32_reset_data(rcdev);
+
+	if (!data->reset_lines) {
+		int reg_width = sizeof(u32);
+		int bank = id / (reg_width * BITS_PER_BYTE);
+		int offset = id % (reg_width * BITS_PER_BYTE);
+
+		line->offset = bank * reg_width;
+		line->bit_idx = offset;
+		line->set_clr = (data->clear_offset ? true : false);
+
+		return line;
+	}
+
+	return data->reset_lines[id];
+}
+
 static int stm32_reset_update(struct reset_controller_dev *rcdev,
 			      unsigned long id, bool assert)
 {
 	struct stm32_reset_data *data = to_stm32_reset_data(rcdev);
-	int reg_width = sizeof(u32);
-	int bank = id / (reg_width * BITS_PER_BYTE);
-	int offset = id % (reg_width * BITS_PER_BYTE);
+	struct stm32_reset_cfg line_reset;
+	const struct stm32_reset_cfg *ptr_line;
 
-	if (data->clear_offset) {
+	ptr_line = stm32_get_reset_line(rcdev, id, &line_reset);
+	if (!ptr_line)
+		return -EPERM;
+
+	if (ptr_line->set_clr) {
 		void __iomem *addr;
 
-		addr = data->membase + (bank * reg_width);
+		addr = data->membase + ptr_line->offset;
 		if (!assert)
 			addr += data->clear_offset;
 
-		writel(BIT(offset), addr);
+		writel(BIT(ptr_line->bit_idx), addr);
 
 	} else {
 		unsigned long flags;
@@ -50,14 +75,14 @@ static int stm32_reset_update(struct reset_controller_dev *rcdev,
 
 		spin_lock_irqsave(&data->lock, flags);
 
-		reg = readl(data->membase + (bank * reg_width));
+		reg = readl(data->membase + ptr_line->offset);
 
 		if (assert)
-			reg |= BIT(offset);
+			reg |= BIT(ptr_line->bit_idx);
 		else
-			reg &= ~BIT(offset);
+			reg &= ~BIT(ptr_line->bit_idx);
 
-		writel(reg, data->membase + (bank * reg_width));
+		writel(reg, data->membase + ptr_line->offset);
 
 		spin_unlock_irqrestore(&data->lock, flags);
 	}
@@ -81,14 +106,17 @@ static int stm32_reset_status(struct reset_controller_dev *rcdev,
 			      unsigned long id)
 {
 	struct stm32_reset_data *data = to_stm32_reset_data(rcdev);
-	int reg_width = sizeof(u32);
-	int bank = id / (reg_width * BITS_PER_BYTE);
-	int offset = id % (reg_width * BITS_PER_BYTE);
+	struct stm32_reset_cfg line_reset;
+	const struct stm32_reset_cfg *ptr_line;
 	u32 reg;
 
-	reg = readl(data->membase + (bank * reg_width));
+	ptr_line = stm32_get_reset_line(rcdev, id, &line_reset);
+	if (!ptr_line)
+		return -EPERM;
+
+	reg = readl(data->membase + ptr_line->offset);
 
-	return !!(reg & BIT(offset));
+	return !!(reg & BIT(ptr_line->bit_idx));
 }
 
 static const struct reset_control_ops stm32_reset_ops = {
@@ -113,6 +141,7 @@ int stm32_rcc_reset_init(struct device *dev, struct clk_stm32_reset_data *data,
 	reset_data->rcdev.ops = &stm32_reset_ops;
 	reset_data->rcdev.of_node = dev_of_node(dev);
 	reset_data->rcdev.nr_resets = data->nr_lines;
+	reset_data->reset_lines = data->reset_lines;
 	reset_data->clear_offset = data->clear_offset;
 
 	return reset_controller_register(&reset_data->rcdev);
diff --git a/drivers/clk/stm32/reset-stm32.h b/drivers/clk/stm32/reset-stm32.h
index 8cf1cc9be480..f79cad21dfd6 100644
--- a/drivers/clk/stm32/reset-stm32.h
+++ b/drivers/clk/stm32/reset-stm32.h
@@ -4,8 +4,15 @@
  * Author: Gabriel Fernandez <gabriel.fernandez@foss.st.com> for STMicroelectronics.
  */
 
+struct stm32_reset_cfg {
+	u16 offset;
+	u8 bit_idx;
+	bool set_clr;
+};
+
 struct clk_stm32_reset_data {
 	const struct reset_control_ops *ops;
+	const struct stm32_reset_cfg **reset_lines;
 	unsigned int nr_lines;
 	u32 clear_offset;
 };
diff --git a/drivers/clk/stm32/stm32mp25_rcc.h b/drivers/clk/stm32/stm32mp25_rcc.h
new file mode 100644
index 000000000000..6ba13cc2ae16
--- /dev/null
+++ b/drivers/clk/stm32/stm32mp25_rcc.h
@@ -0,0 +1,712 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) STMicroelectronics 2023 - All Rights Reserved
+ * Author: Gabriel Fernandez <gabriel.fernandez@foss.st.com> for STMicroelectronics.
+ */
+
+#ifndef STM32MP25_RCC_H
+#define STM32MP25_RCC_H
+
+#define RCC_SECCFGR0				0x0
+#define RCC_SECCFGR1				0x4
+#define RCC_SECCFGR2				0x8
+#define RCC_SECCFGR3				0xC
+#define RCC_PRIVCFGR0				0x10
+#define RCC_PRIVCFGR1				0x14
+#define RCC_PRIVCFGR2				0x18
+#define RCC_PRIVCFGR3				0x1C
+#define RCC_RCFGLOCKR0				0x20
+#define RCC_RCFGLOCKR1				0x24
+#define RCC_RCFGLOCKR2				0x28
+#define RCC_RCFGLOCKR3				0x2C
+#define RCC_R0CIDCFGR				0x30
+#define RCC_R0SEMCR				0x34
+#define RCC_R1CIDCFGR				0x38
+#define RCC_R1SEMCR				0x3C
+#define RCC_R2CIDCFGR				0x40
+#define RCC_R2SEMCR				0x44
+#define RCC_R3CIDCFGR				0x48
+#define RCC_R3SEMCR				0x4C
+#define RCC_R4CIDCFGR				0x50
+#define RCC_R4SEMCR				0x54
+#define RCC_R5CIDCFGR				0x58
+#define RCC_R5SEMCR				0x5C
+#define RCC_R6CIDCFGR				0x60
+#define RCC_R6SEMCR				0x64
+#define RCC_R7CIDCFGR				0x68
+#define RCC_R7SEMCR				0x6C
+#define RCC_R8CIDCFGR				0x70
+#define RCC_R8SEMCR				0x74
+#define RCC_R9CIDCFGR				0x78
+#define RCC_R9SEMCR				0x7C
+#define RCC_R10CIDCFGR				0x80
+#define RCC_R10SEMCR				0x84
+#define RCC_R11CIDCFGR				0x88
+#define RCC_R11SEMCR				0x8C
+#define RCC_R12CIDCFGR				0x90
+#define RCC_R12SEMCR				0x94
+#define RCC_R13CIDCFGR				0x98
+#define RCC_R13SEMCR				0x9C
+#define RCC_R14CIDCFGR				0xA0
+#define RCC_R14SEMCR				0xA4
+#define RCC_R15CIDCFGR				0xA8
+#define RCC_R15SEMCR				0xAC
+#define RCC_R16CIDCFGR				0xB0
+#define RCC_R16SEMCR				0xB4
+#define RCC_R17CIDCFGR				0xB8
+#define RCC_R17SEMCR				0xBC
+#define RCC_R18CIDCFGR				0xC0
+#define RCC_R18SEMCR				0xC4
+#define RCC_R19CIDCFGR				0xC8
+#define RCC_R19SEMCR				0xCC
+#define RCC_R20CIDCFGR				0xD0
+#define RCC_R20SEMCR				0xD4
+#define RCC_R21CIDCFGR				0xD8
+#define RCC_R21SEMCR				0xDC
+#define RCC_R22CIDCFGR				0xE0
+#define RCC_R22SEMCR				0xE4
+#define RCC_R23CIDCFGR				0xE8
+#define RCC_R23SEMCR				0xEC
+#define RCC_R24CIDCFGR				0xF0
+#define RCC_R24SEMCR				0xF4
+#define RCC_R25CIDCFGR				0xF8
+#define RCC_R25SEMCR				0xFC
+#define RCC_R26CIDCFGR				0x100
+#define RCC_R26SEMCR				0x104
+#define RCC_R27CIDCFGR				0x108
+#define RCC_R27SEMCR				0x10C
+#define RCC_R28CIDCFGR				0x110
+#define RCC_R28SEMCR				0x114
+#define RCC_R29CIDCFGR				0x118
+#define RCC_R29SEMCR				0x11C
+#define RCC_R30CIDCFGR				0x120
+#define RCC_R30SEMCR				0x124
+#define RCC_R31CIDCFGR				0x128
+#define RCC_R31SEMCR				0x12C
+#define RCC_R32CIDCFGR				0x130
+#define RCC_R32SEMCR				0x134
+#define RCC_R33CIDCFGR				0x138
+#define RCC_R33SEMCR				0x13C
+#define RCC_R34CIDCFGR				0x140
+#define RCC_R34SEMCR				0x144
+#define RCC_R35CIDCFGR				0x148
+#define RCC_R35SEMCR				0x14C
+#define RCC_R36CIDCFGR				0x150
+#define RCC_R36SEMCR				0x154
+#define RCC_R37CIDCFGR				0x158
+#define RCC_R37SEMCR				0x15C
+#define RCC_R38CIDCFGR				0x160
+#define RCC_R38SEMCR				0x164
+#define RCC_R39CIDCFGR				0x168
+#define RCC_R39SEMCR				0x16C
+#define RCC_R40CIDCFGR				0x170
+#define RCC_R40SEMCR				0x174
+#define RCC_R41CIDCFGR				0x178
+#define RCC_R41SEMCR				0x17C
+#define RCC_R42CIDCFGR				0x180
+#define RCC_R42SEMCR				0x184
+#define RCC_R43CIDCFGR				0x188
+#define RCC_R43SEMCR				0x18C
+#define RCC_R44CIDCFGR				0x190
+#define RCC_R44SEMCR				0x194
+#define RCC_R45CIDCFGR				0x198
+#define RCC_R45SEMCR				0x19C
+#define RCC_R46CIDCFGR				0x1A0
+#define RCC_R46SEMCR				0x1A4
+#define RCC_R47CIDCFGR				0x1A8
+#define RCC_R47SEMCR				0x1AC
+#define RCC_R48CIDCFGR				0x1B0
+#define RCC_R48SEMCR				0x1B4
+#define RCC_R49CIDCFGR				0x1B8
+#define RCC_R49SEMCR				0x1BC
+#define RCC_R50CIDCFGR				0x1C0
+#define RCC_R50SEMCR				0x1C4
+#define RCC_R51CIDCFGR				0x1C8
+#define RCC_R51SEMCR				0x1CC
+#define RCC_R52CIDCFGR				0x1D0
+#define RCC_R52SEMCR				0x1D4
+#define RCC_R53CIDCFGR				0x1D8
+#define RCC_R53SEMCR				0x1DC
+#define RCC_R54CIDCFGR				0x1E0
+#define RCC_R54SEMCR				0x1E4
+#define RCC_R55CIDCFGR				0x1E8
+#define RCC_R55SEMCR				0x1EC
+#define RCC_R56CIDCFGR				0x1F0
+#define RCC_R56SEMCR				0x1F4
+#define RCC_R57CIDCFGR				0x1F8
+#define RCC_R57SEMCR				0x1FC
+#define RCC_R58CIDCFGR				0x200
+#define RCC_R58SEMCR				0x204
+#define RCC_R59CIDCFGR				0x208
+#define RCC_R59SEMCR				0x20C
+#define RCC_R60CIDCFGR				0x210
+#define RCC_R60SEMCR				0x214
+#define RCC_R61CIDCFGR				0x218
+#define RCC_R61SEMCR				0x21C
+#define RCC_R62CIDCFGR				0x220
+#define RCC_R62SEMCR				0x224
+#define RCC_R63CIDCFGR				0x228
+#define RCC_R63SEMCR				0x22C
+#define RCC_R64CIDCFGR				0x230
+#define RCC_R64SEMCR				0x234
+#define RCC_R65CIDCFGR				0x238
+#define RCC_R65SEMCR				0x23C
+#define RCC_R66CIDCFGR				0x240
+#define RCC_R66SEMCR				0x244
+#define RCC_R67CIDCFGR				0x248
+#define RCC_R67SEMCR				0x24C
+#define RCC_R68CIDCFGR				0x250
+#define RCC_R68SEMCR				0x254
+#define RCC_R69CIDCFGR				0x258
+#define RCC_R69SEMCR				0x25C
+#define RCC_R70CIDCFGR				0x260
+#define RCC_R70SEMCR				0x264
+#define RCC_R71CIDCFGR				0x268
+#define RCC_R71SEMCR				0x26C
+#define RCC_R72CIDCFGR				0x270
+#define RCC_R72SEMCR				0x274
+#define RCC_R73CIDCFGR				0x278
+#define RCC_R73SEMCR				0x27C
+#define RCC_R74CIDCFGR				0x280
+#define RCC_R74SEMCR				0x284
+#define RCC_R75CIDCFGR				0x288
+#define RCC_R75SEMCR				0x28C
+#define RCC_R76CIDCFGR				0x290
+#define RCC_R76SEMCR				0x294
+#define RCC_R77CIDCFGR				0x298
+#define RCC_R77SEMCR				0x29C
+#define RCC_R78CIDCFGR				0x2A0
+#define RCC_R78SEMCR				0x2A4
+#define RCC_R79CIDCFGR				0x2A8
+#define RCC_R79SEMCR				0x2AC
+#define RCC_R80CIDCFGR				0x2B0
+#define RCC_R80SEMCR				0x2B4
+#define RCC_R81CIDCFGR				0x2B8
+#define RCC_R81SEMCR				0x2BC
+#define RCC_R82CIDCFGR				0x2C0
+#define RCC_R82SEMCR				0x2C4
+#define RCC_R83CIDCFGR				0x2C8
+#define RCC_R83SEMCR				0x2CC
+#define RCC_R84CIDCFGR				0x2D0
+#define RCC_R84SEMCR				0x2D4
+#define RCC_R85CIDCFGR				0x2D8
+#define RCC_R85SEMCR				0x2DC
+#define RCC_R86CIDCFGR				0x2E0
+#define RCC_R86SEMCR				0x2E4
+#define RCC_R87CIDCFGR				0x2E8
+#define RCC_R87SEMCR				0x2EC
+#define RCC_R88CIDCFGR				0x2F0
+#define RCC_R88SEMCR				0x2F4
+#define RCC_R89CIDCFGR				0x2F8
+#define RCC_R89SEMCR				0x2FC
+#define RCC_R90CIDCFGR				0x300
+#define RCC_R90SEMCR				0x304
+#define RCC_R91CIDCFGR				0x308
+#define RCC_R91SEMCR				0x30C
+#define RCC_R92CIDCFGR				0x310
+#define RCC_R92SEMCR				0x314
+#define RCC_R93CIDCFGR				0x318
+#define RCC_R93SEMCR				0x31C
+#define RCC_R94CIDCFGR				0x320
+#define RCC_R94SEMCR				0x324
+#define RCC_R95CIDCFGR				0x328
+#define RCC_R95SEMCR				0x32C
+#define RCC_R96CIDCFGR				0x330
+#define RCC_R96SEMCR				0x334
+#define RCC_R97CIDCFGR				0x338
+#define RCC_R97SEMCR				0x33C
+#define RCC_R98CIDCFGR				0x340
+#define RCC_R98SEMCR				0x344
+#define RCC_R99CIDCFGR				0x348
+#define RCC_R99SEMCR				0x34C
+#define RCC_R100CIDCFGR				0x350
+#define RCC_R100SEMCR				0x354
+#define RCC_R101CIDCFGR				0x358
+#define RCC_R101SEMCR				0x35C
+#define RCC_R102CIDCFGR				0x360
+#define RCC_R102SEMCR				0x364
+#define RCC_R103CIDCFGR				0x368
+#define RCC_R103SEMCR				0x36C
+#define RCC_R104CIDCFGR				0x370
+#define RCC_R104SEMCR				0x374
+#define RCC_R105CIDCFGR				0x378
+#define RCC_R105SEMCR				0x37C
+#define RCC_R106CIDCFGR				0x380
+#define RCC_R106SEMCR				0x384
+#define RCC_R107CIDCFGR				0x388
+#define RCC_R107SEMCR				0x38C
+#define RCC_R108CIDCFGR				0x390
+#define RCC_R108SEMCR				0x394
+#define RCC_R109CIDCFGR				0x398
+#define RCC_R109SEMCR				0x39C
+#define RCC_R110CIDCFGR				0x3A0
+#define RCC_R110SEMCR				0x3A4
+#define RCC_R111CIDCFGR				0x3A8
+#define RCC_R111SEMCR				0x3AC
+#define RCC_R112CIDCFGR				0x3B0
+#define RCC_R112SEMCR				0x3B4
+#define RCC_R113CIDCFGR				0x3B8
+#define RCC_R113SEMCR				0x3BC
+#define RCC_GRSTCSETR				0x400
+#define RCC_C1RSTCSETR				0x404
+#define RCC_C1P1RSTCSETR			0x408
+#define RCC_C2RSTCSETR				0x40C
+#define RCC_HWRSTSCLRR				0x410
+#define RCC_C1HWRSTSCLRR			0x414
+#define RCC_C2HWRSTSCLRR			0x418
+#define RCC_C1BOOTRSTSSETR			0x41C
+#define RCC_C1BOOTRSTSCLRR			0x420
+#define RCC_C2BOOTRSTSSETR			0x424
+#define RCC_C2BOOTRSTSCLRR			0x428
+#define RCC_C1SREQSETR				0x42C
+#define RCC_C1SREQCLRR				0x430
+#define RCC_CPUBOOTCR				0x434
+#define RCC_STBYBOOTCR				0x438
+#define RCC_LEGBOOTCR				0x43C
+#define RCC_BDCR				0x440
+#define RCC_D3DCR				0x444
+#define RCC_D3DSR				0x448
+#define RCC_RDCR				0x44C
+#define RCC_C1MSRDCR				0x450
+#define RCC_PWRLPDLYCR				0x454
+#define RCC_C1CIESETR				0x458
+#define RCC_C1CIFCLRR				0x45C
+#define RCC_C2CIESETR				0x460
+#define RCC_C2CIFCLRR				0x464
+#define RCC_IWDGC1FZSETR			0x468
+#define RCC_IWDGC1FZCLRR			0x46C
+#define RCC_IWDGC1CFGSETR			0x470
+#define RCC_IWDGC1CFGCLRR			0x474
+#define RCC_IWDGC2FZSETR			0x478
+#define RCC_IWDGC2FZCLRR			0x47C
+#define RCC_IWDGC2CFGSETR			0x480
+#define RCC_IWDGC2CFGCLRR			0x484
+#define RCC_IWDGC3CFGSETR			0x488
+#define RCC_IWDGC3CFGCLRR			0x48C
+#define RCC_C3CFGR				0x490
+#define RCC_MCO1CFGR				0x494
+#define RCC_MCO2CFGR				0x498
+#define RCC_OCENSETR				0x49C
+#define RCC_OCENCLRR				0x4A0
+#define RCC_OCRDYR				0x4A4
+#define RCC_HSICFGR				0x4A8
+#define RCC_MSICFGR				0x4AC
+#define RCC_RTCDIVR				0x4B0
+#define RCC_APB1DIVR				0x4B4
+#define RCC_APB2DIVR				0x4B8
+#define RCC_APB3DIVR				0x4BC
+#define RCC_APB4DIVR				0x4C0
+#define RCC_APBDBGDIVR				0x4C4
+#define RCC_TIMG1PRER				0x4C8
+#define RCC_TIMG2PRER				0x4CC
+#define RCC_LSMCUDIVR				0x4D0
+#define RCC_DDRCPCFGR				0x4D4
+#define RCC_DDRCAPBCFGR				0x4D8
+#define RCC_DDRPHYCAPBCFGR			0x4DC
+#define RCC_DDRPHYCCFGR				0x4E0
+#define RCC_DDRCFGR				0x4E4
+#define RCC_DDRITFCFGR				0x4E8
+#define RCC_SYSRAMCFGR				0x4F0
+#define RCC_VDERAMCFGR				0x4F4
+#define RCC_SRAM1CFGR				0x4F8
+#define RCC_SRAM2CFGR				0x4FC
+#define RCC_RETRAMCFGR				0x500
+#define RCC_BKPSRAMCFGR				0x504
+#define RCC_LPSRAM1CFGR				0x508
+#define RCC_LPSRAM2CFGR				0x50C
+#define RCC_LPSRAM3CFGR				0x510
+#define RCC_OSPI1CFGR				0x514
+#define RCC_OSPI2CFGR				0x518
+#define RCC_FMCCFGR				0x51C
+#define RCC_DBGCFGR				0x520
+#define RCC_STM500CFGR				0x524
+#define RCC_ETRCFGR				0x528
+#define RCC_GPIOACFGR				0x52C
+#define RCC_GPIOBCFGR				0x530
+#define RCC_GPIOCCFGR				0x534
+#define RCC_GPIODCFGR				0x538
+#define RCC_GPIOECFGR				0x53C
+#define RCC_GPIOFCFGR				0x540
+#define RCC_GPIOGCFGR				0x544
+#define RCC_GPIOHCFGR				0x548
+#define RCC_GPIOICFGR				0x54C
+#define RCC_GPIOJCFGR				0x550
+#define RCC_GPIOKCFGR				0x554
+#define RCC_GPIOZCFGR				0x558
+#define RCC_HPDMA1CFGR				0x55C
+#define RCC_HPDMA2CFGR				0x560
+#define RCC_HPDMA3CFGR				0x564
+#define RCC_LPDMACFGR				0x568
+#define RCC_HSEMCFGR				0x56C
+#define RCC_IPCC1CFGR				0x570
+#define RCC_IPCC2CFGR				0x574
+#define RCC_RTCCFGR				0x578
+#define RCC_SYSCPU1CFGR				0x580
+#define RCC_BSECCFGR				0x584
+#define RCC_IS2MCFGR				0x58C
+#define RCC_PLL2CFGR1				0x590
+#define RCC_PLL2CFGR2				0x594
+#define RCC_PLL2CFGR3				0x598
+#define RCC_PLL2CFGR4				0x59C
+#define RCC_PLL2CFGR5				0x5A0
+#define RCC_PLL2CFGR6				0x5A8
+#define RCC_PLL2CFGR7				0x5AC
+#define RCC_PLL3CFGR1				0x5B8
+#define RCC_PLL3CFGR2				0x5BC
+#define RCC_PLL3CFGR3				0x5C0
+#define RCC_PLL3CFGR4				0x5C4
+#define RCC_PLL3CFGR5				0x5C8
+#define RCC_PLL3CFGR6				0x5D0
+#define RCC_PLL3CFGR7				0x5D4
+#define RCC_HSIFMONCR				0x5E0
+#define RCC_HSIFVALR				0x5E4
+#define RCC_TIM1CFGR				0x700
+#define RCC_TIM2CFGR				0x704
+#define RCC_TIM3CFGR				0x708
+#define RCC_TIM4CFGR				0x70C
+#define RCC_TIM5CFGR				0x710
+#define RCC_TIM6CFGR				0x714
+#define RCC_TIM7CFGR				0x718
+#define RCC_TIM8CFGR				0x71C
+#define RCC_TIM10CFGR				0x720
+#define RCC_TIM11CFGR				0x724
+#define RCC_TIM12CFGR				0x728
+#define RCC_TIM13CFGR				0x72C
+#define RCC_TIM14CFGR				0x730
+#define RCC_TIM15CFGR				0x734
+#define RCC_TIM16CFGR				0x738
+#define RCC_TIM17CFGR				0x73C
+#define RCC_TIM20CFGR				0x740
+#define RCC_LPTIM1CFGR				0x744
+#define RCC_LPTIM2CFGR				0x748
+#define RCC_LPTIM3CFGR				0x74C
+#define RCC_LPTIM4CFGR				0x750
+#define RCC_LPTIM5CFGR				0x754
+#define RCC_SPI1CFGR				0x758
+#define RCC_SPI2CFGR				0x75C
+#define RCC_SPI3CFGR				0x760
+#define RCC_SPI4CFGR				0x764
+#define RCC_SPI5CFGR				0x768
+#define RCC_SPI6CFGR				0x76C
+#define RCC_SPI7CFGR				0x770
+#define RCC_SPI8CFGR				0x774
+#define RCC_SPDIFRXCFGR				0x778
+#define RCC_USART1CFGR				0x77C
+#define RCC_USART2CFGR				0x780
+#define RCC_USART3CFGR				0x784
+#define RCC_UART4CFGR				0x788
+#define RCC_UART5CFGR				0x78C
+#define RCC_USART6CFGR				0x790
+#define RCC_UART7CFGR				0x794
+#define RCC_UART8CFGR				0x798
+#define RCC_UART9CFGR				0x79C
+#define RCC_LPUART1CFGR				0x7A0
+#define RCC_I2C1CFGR				0x7A4
+#define RCC_I2C2CFGR				0x7A8
+#define RCC_I2C3CFGR				0x7AC
+#define RCC_I2C4CFGR				0x7B0
+#define RCC_I2C5CFGR				0x7B4
+#define RCC_I2C6CFGR				0x7B8
+#define RCC_I2C7CFGR				0x7BC
+#define RCC_I2C8CFGR				0x7C0
+#define RCC_SAI1CFGR				0x7C4
+#define RCC_SAI2CFGR				0x7C8
+#define RCC_SAI3CFGR				0x7CC
+#define RCC_SAI4CFGR				0x7D0
+#define RCC_MDF1CFGR				0x7D8
+#define RCC_ADF1CFGR				0x7DC
+#define RCC_FDCANCFGR				0x7E0
+#define RCC_HDPCFGR				0x7E4
+#define RCC_ADC12CFGR				0x7E8
+#define RCC_ADC3CFGR				0x7EC
+#define RCC_ETH1CFGR				0x7F0
+#define RCC_ETH2CFGR				0x7F4
+#define RCC_USB2CFGR				0x7FC
+#define RCC_USB2PHY1CFGR			0x800
+#define RCC_USB2PHY2CFGR			0x804
+#define RCC_USB3DRCFGR				0x808
+#define RCC_USB3PCIEPHYCFGR			0x80C
+#define RCC_PCIECFGR				0x810
+#define RCC_USBTCCFGR				0x814
+#define RCC_ETHSWCFGR				0x818
+#define RCC_ETHSWACMCFGR			0x81C
+#define RCC_ETHSWACMMSGCFGR			0x820
+#define RCC_STGENCFGR				0x824
+#define RCC_SDMMC1CFGR				0x830
+#define RCC_SDMMC2CFGR				0x834
+#define RCC_SDMMC3CFGR				0x838
+#define RCC_GPUCFGR				0x83C
+#define RCC_LTDCCFGR				0x840
+#define RCC_DSICFGR				0x844
+#define RCC_LVDSCFGR				0x850
+#define RCC_CSICFGR				0x858
+#define RCC_DCMIPPCFGR				0x85C
+#define RCC_CCICFGR				0x860
+#define RCC_VDECCFGR				0x864
+#define RCC_VENCCFGR				0x868
+#define RCC_RNGCFGR				0x870
+#define RCC_PKACFGR				0x874
+#define RCC_SAESCFGR				0x878
+#define RCC_HASHCFGR				0x87C
+#define RCC_CRYP1CFGR				0x880
+#define RCC_CRYP2CFGR				0x884
+#define RCC_IWDG1CFGR				0x888
+#define RCC_IWDG2CFGR				0x88C
+#define RCC_IWDG3CFGR				0x890
+#define RCC_IWDG4CFGR				0x894
+#define RCC_IWDG5CFGR				0x898
+#define RCC_WWDG1CFGR				0x89C
+#define RCC_WWDG2CFGR				0x8A0
+#define RCC_VREFCFGR				0x8A8
+#define RCC_DTSCFGR				0x8AC
+#define RCC_CRCCFGR				0x8B4
+#define RCC_SERCCFGR				0x8B8
+#define RCC_OSPIIOMCFGR				0x8BC
+#define RCC_GICV2MCFGR				0x8C0
+#define RCC_I3C1CFGR				0x8C8
+#define RCC_I3C2CFGR				0x8CC
+#define RCC_I3C3CFGR				0x8D0
+#define RCC_I3C4CFGR				0x8D4
+#define RCC_MUXSELCFGR				0x1000
+#define RCC_XBAR0CFGR				0x1018
+#define RCC_XBAR1CFGR				0x101C
+#define RCC_XBAR2CFGR				0x1020
+#define RCC_XBAR3CFGR				0x1024
+#define RCC_XBAR4CFGR				0x1028
+#define RCC_XBAR5CFGR				0x102C
+#define RCC_XBAR6CFGR				0x1030
+#define RCC_XBAR7CFGR				0x1034
+#define RCC_XBAR8CFGR				0x1038
+#define RCC_XBAR9CFGR				0x103C
+#define RCC_XBAR10CFGR				0x1040
+#define RCC_XBAR11CFGR				0x1044
+#define RCC_XBAR12CFGR				0x1048
+#define RCC_XBAR13CFGR				0x104C
+#define RCC_XBAR14CFGR				0x1050
+#define RCC_XBAR15CFGR				0x1054
+#define RCC_XBAR16CFGR				0x1058
+#define RCC_XBAR17CFGR				0x105C
+#define RCC_XBAR18CFGR				0x1060
+#define RCC_XBAR19CFGR				0x1064
+#define RCC_XBAR20CFGR				0x1068
+#define RCC_XBAR21CFGR				0x106C
+#define RCC_XBAR22CFGR				0x1070
+#define RCC_XBAR23CFGR				0x1074
+#define RCC_XBAR24CFGR				0x1078
+#define RCC_XBAR25CFGR				0x107C
+#define RCC_XBAR26CFGR				0x1080
+#define RCC_XBAR27CFGR				0x1084
+#define RCC_XBAR28CFGR				0x1088
+#define RCC_XBAR29CFGR				0x108C
+#define RCC_XBAR30CFGR				0x1090
+#define RCC_XBAR31CFGR				0x1094
+#define RCC_XBAR32CFGR				0x1098
+#define RCC_XBAR33CFGR				0x109C
+#define RCC_XBAR34CFGR				0x10A0
+#define RCC_XBAR35CFGR				0x10A4
+#define RCC_XBAR36CFGR				0x10A8
+#define RCC_XBAR37CFGR				0x10AC
+#define RCC_XBAR38CFGR				0x10B0
+#define RCC_XBAR39CFGR				0x10B4
+#define RCC_XBAR40CFGR				0x10B8
+#define RCC_XBAR41CFGR				0x10BC
+#define RCC_XBAR42CFGR				0x10C0
+#define RCC_XBAR43CFGR				0x10C4
+#define RCC_XBAR44CFGR				0x10C8
+#define RCC_XBAR45CFGR				0x10CC
+#define RCC_XBAR46CFGR				0x10D0
+#define RCC_XBAR47CFGR				0x10D4
+#define RCC_XBAR48CFGR				0x10D8
+#define RCC_XBAR49CFGR				0x10DC
+#define RCC_XBAR50CFGR				0x10E0
+#define RCC_XBAR51CFGR				0x10E4
+#define RCC_XBAR52CFGR				0x10E8
+#define RCC_XBAR53CFGR				0x10EC
+#define RCC_XBAR54CFGR				0x10F0
+#define RCC_XBAR55CFGR				0x10F4
+#define RCC_XBAR56CFGR				0x10F8
+#define RCC_XBAR57CFGR				0x10FC
+#define RCC_XBAR58CFGR				0x1100
+#define RCC_XBAR59CFGR				0x1104
+#define RCC_XBAR60CFGR				0x1108
+#define RCC_XBAR61CFGR				0x110C
+#define RCC_XBAR62CFGR				0x1110
+#define RCC_XBAR63CFGR				0x1114
+#define RCC_PREDIV0CFGR				0x1118
+#define RCC_PREDIV1CFGR				0x111C
+#define RCC_PREDIV2CFGR				0x1120
+#define RCC_PREDIV3CFGR				0x1124
+#define RCC_PREDIV4CFGR				0x1128
+#define RCC_PREDIV5CFGR				0x112C
+#define RCC_PREDIV6CFGR				0x1130
+#define RCC_PREDIV7CFGR				0x1134
+#define RCC_PREDIV8CFGR				0x1138
+#define RCC_PREDIV9CFGR				0x113C
+#define RCC_PREDIV10CFGR			0x1140
+#define RCC_PREDIV11CFGR			0x1144
+#define RCC_PREDIV12CFGR			0x1148
+#define RCC_PREDIV13CFGR			0x114C
+#define RCC_PREDIV14CFGR			0x1150
+#define RCC_PREDIV15CFGR			0x1154
+#define RCC_PREDIV16CFGR			0x1158
+#define RCC_PREDIV17CFGR			0x115C
+#define RCC_PREDIV18CFGR			0x1160
+#define RCC_PREDIV19CFGR			0x1164
+#define RCC_PREDIV20CFGR			0x1168
+#define RCC_PREDIV21CFGR			0x116C
+#define RCC_PREDIV22CFGR			0x1170
+#define RCC_PREDIV23CFGR			0x1174
+#define RCC_PREDIV24CFGR			0x1178
+#define RCC_PREDIV25CFGR			0x117C
+#define RCC_PREDIV26CFGR			0x1180
+#define RCC_PREDIV27CFGR			0x1184
+#define RCC_PREDIV28CFGR			0x1188
+#define RCC_PREDIV29CFGR			0x118C
+#define RCC_PREDIV30CFGR			0x1190
+#define RCC_PREDIV31CFGR			0x1194
+#define RCC_PREDIV32CFGR			0x1198
+#define RCC_PREDIV33CFGR			0x119C
+#define RCC_PREDIV34CFGR			0x11A0
+#define RCC_PREDIV35CFGR			0x11A4
+#define RCC_PREDIV36CFGR			0x11A8
+#define RCC_PREDIV37CFGR			0x11AC
+#define RCC_PREDIV38CFGR			0x11B0
+#define RCC_PREDIV39CFGR			0x11B4
+#define RCC_PREDIV40CFGR			0x11B8
+#define RCC_PREDIV41CFGR			0x11BC
+#define RCC_PREDIV42CFGR			0x11C0
+#define RCC_PREDIV43CFGR			0x11C4
+#define RCC_PREDIV44CFGR			0x11C8
+#define RCC_PREDIV45CFGR			0x11CC
+#define RCC_PREDIV46CFGR			0x11D0
+#define RCC_PREDIV47CFGR			0x11D4
+#define RCC_PREDIV48CFGR			0x11D8
+#define RCC_PREDIV49CFGR			0x11DC
+#define RCC_PREDIV50CFGR			0x11E0
+#define RCC_PREDIV51CFGR			0x11E4
+#define RCC_PREDIV52CFGR			0x11E8
+#define RCC_PREDIV53CFGR			0x11EC
+#define RCC_PREDIV54CFGR			0x11F0
+#define RCC_PREDIV55CFGR			0x11F4
+#define RCC_PREDIV56CFGR			0x11F8
+#define RCC_PREDIV57CFGR			0x11FC
+#define RCC_PREDIV58CFGR			0x1200
+#define RCC_PREDIV59CFGR			0x1204
+#define RCC_PREDIV60CFGR			0x1208
+#define RCC_PREDIV61CFGR			0x120C
+#define RCC_PREDIV62CFGR			0x1210
+#define RCC_PREDIV63CFGR			0x1214
+#define RCC_PREDIVSR1				0x1218
+#define RCC_PREDIVSR2				0x121C
+#define RCC_FINDIV0CFGR				0x1224
+#define RCC_FINDIV1CFGR				0x1228
+#define RCC_FINDIV2CFGR				0x122C
+#define RCC_FINDIV3CFGR				0x1230
+#define RCC_FINDIV4CFGR				0x1234
+#define RCC_FINDIV5CFGR				0x1238
+#define RCC_FINDIV6CFGR				0x123C
+#define RCC_FINDIV7CFGR				0x1240
+#define RCC_FINDIV8CFGR				0x1244
+#define RCC_FINDIV9CFGR				0x1248
+#define RCC_FINDIV10CFGR			0x124C
+#define RCC_FINDIV11CFGR			0x1250
+#define RCC_FINDIV12CFGR			0x1254
+#define RCC_FINDIV13CFGR			0x1258
+#define RCC_FINDIV14CFGR			0x125C
+#define RCC_FINDIV15CFGR			0x1260
+#define RCC_FINDIV16CFGR			0x1264
+#define RCC_FINDIV17CFGR			0x1268
+#define RCC_FINDIV18CFGR			0x126C
+#define RCC_FINDIV19CFGR			0x1270
+#define RCC_FINDIV20CFGR			0x1274
+#define RCC_FINDIV21CFGR			0x1278
+#define RCC_FINDIV22CFGR			0x127C
+#define RCC_FINDIV23CFGR			0x1280
+#define RCC_FINDIV24CFGR			0x1284
+#define RCC_FINDIV25CFGR			0x1288
+#define RCC_FINDIV26CFGR			0x128C
+#define RCC_FINDIV27CFGR			0x1290
+#define RCC_FINDIV28CFGR			0x1294
+#define RCC_FINDIV29CFGR			0x1298
+#define RCC_FINDIV30CFGR			0x129C
+#define RCC_FINDIV31CFGR			0x12A0
+#define RCC_FINDIV32CFGR			0x12A4
+#define RCC_FINDIV33CFGR			0x12A8
+#define RCC_FINDIV34CFGR			0x12AC
+#define RCC_FINDIV35CFGR			0x12B0
+#define RCC_FINDIV36CFGR			0x12B4
+#define RCC_FINDIV37CFGR			0x12B8
+#define RCC_FINDIV38CFGR			0x12BC
+#define RCC_FINDIV39CFGR			0x12C0
+#define RCC_FINDIV40CFGR			0x12C4
+#define RCC_FINDIV41CFGR			0x12C8
+#define RCC_FINDIV42CFGR			0x12CC
+#define RCC_FINDIV43CFGR			0x12D0
+#define RCC_FINDIV44CFGR			0x12D4
+#define RCC_FINDIV45CFGR			0x12D8
+#define RCC_FINDIV46CFGR			0x12DC
+#define RCC_FINDIV47CFGR			0x12E0
+#define RCC_FINDIV48CFGR			0x12E4
+#define RCC_FINDIV49CFGR			0x12E8
+#define RCC_FINDIV50CFGR			0x12EC
+#define RCC_FINDIV51CFGR			0x12F0
+#define RCC_FINDIV52CFGR			0x12F4
+#define RCC_FINDIV53CFGR			0x12F8
+#define RCC_FINDIV54CFGR			0x12FC
+#define RCC_FINDIV55CFGR			0x1300
+#define RCC_FINDIV56CFGR			0x1304
+#define RCC_FINDIV57CFGR			0x1308
+#define RCC_FINDIV58CFGR			0x130C
+#define RCC_FINDIV59CFGR			0x1310
+#define RCC_FINDIV60CFGR			0x1314
+#define RCC_FINDIV61CFGR			0x1318
+#define RCC_FINDIV62CFGR			0x131C
+#define RCC_FINDIV63CFGR			0x1320
+#define RCC_FINDIVSR1				0x1324
+#define RCC_FINDIVSR2				0x1328
+#define RCC_FCALCOBS0CFGR			0x1340
+#define RCC_FCALCOBS1CFGR			0x1344
+#define RCC_FCALCREFCFGR			0x1348
+#define RCC_FCALCCR1				0x134C
+#define RCC_FCALCCR2				0x1354
+#define RCC_FCALCSR				0x1358
+#define RCC_PLL4CFGR1				0x1360
+#define RCC_PLL4CFGR2				0x1364
+#define RCC_PLL4CFGR3				0x1368
+#define RCC_PLL4CFGR4				0x136C
+#define RCC_PLL4CFGR5				0x1370
+#define RCC_PLL4CFGR6				0x1378
+#define RCC_PLL4CFGR7				0x137C
+#define RCC_PLL5CFGR1				0x1388
+#define RCC_PLL5CFGR2				0x138C
+#define RCC_PLL5CFGR3				0x1390
+#define RCC_PLL5CFGR4				0x1394
+#define RCC_PLL5CFGR5				0x1398
+#define RCC_PLL5CFGR6				0x13A0
+#define RCC_PLL5CFGR7				0x13A4
+#define RCC_PLL6CFGR1				0x13B0
+#define RCC_PLL6CFGR2				0x13B4
+#define RCC_PLL6CFGR3				0x13B8
+#define RCC_PLL6CFGR4				0x13BC
+#define RCC_PLL6CFGR5				0x13C0
+#define RCC_PLL6CFGR6				0x13C8
+#define RCC_PLL6CFGR7				0x13CC
+#define RCC_PLL7CFGR1				0x13D8
+#define RCC_PLL7CFGR2				0x13DC
+#define RCC_PLL7CFGR3				0x13E0
+#define RCC_PLL7CFGR4				0x13E4
+#define RCC_PLL7CFGR5				0x13E8
+#define RCC_PLL7CFGR6				0x13F0
+#define RCC_PLL7CFGR7				0x13F4
+#define RCC_PLL8CFGR1				0x1400
+#define RCC_PLL8CFGR2				0x1404
+#define RCC_PLL8CFGR3				0x1408
+#define RCC_PLL8CFGR4				0x140C
+#define RCC_PLL8CFGR5				0x1410
+#define RCC_PLL8CFGR6				0x1418
+#define RCC_PLL8CFGR7				0x141C
+#define RCC_VERR				0xFFF4
+#define RCC_IDR					0xFFF8
+#define RCC_SIDR				0xFFFC
+
+#endif /* STM32MP25_RCC_H */
-- 
2.25.1


