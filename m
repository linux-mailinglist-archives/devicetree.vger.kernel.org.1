Return-Path: <devicetree+bounces-147252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2559EA37B38
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 07:13:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A2DC3AEC41
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 06:13:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5FC21922E6;
	Mon, 17 Feb 2025 06:13:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="CovD+5Jt"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CAAA19006F;
	Mon, 17 Feb 2025 06:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739772797; cv=none; b=LoyuewJ1n0tkf9q1Nw9+Ul2LFr/7kw5voc+wHEPwkJQfS+mlSgPdiNp3fTQU+lK25zM7oHg56dwvbcoPTFcAQv20r2aM2aEiTON8dYL7sGs7P7Y47tSuw77E6u7rW/ZoTkHejOQ3qXxRuuESOwaAjkZs6kFZpjw51CPR2YcvG+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739772797; c=relaxed/simple;
	bh=KtixFOSX1kX6CC4YfBIy4d5F4pAbYGXrxEbMMKTg2Uo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Aa9k8QLRX1Y7qxzlthlN+pH9xsYuC9NzSlfTssbn9rVDdp0QcD2BRN4e36E+x8DcYNef3FPuIIQbdceNLTl7nFTqvyb0tn43P4FNKq62eHVOn8lBN7j94tVY+uggu5mbEMYRG2+4Jbiq+ANGhShp9YwhOWg+BuOTr3G1RPvdmWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=CovD+5Jt; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 7424B25B6A;
	Mon, 17 Feb 2025 07:13:13 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4n1gNL_0k08x; Mon, 17 Feb 2025 07:13:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1739772788; bh=KtixFOSX1kX6CC4YfBIy4d5F4pAbYGXrxEbMMKTg2Uo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=CovD+5JteJKLUfdgOG3Xnu/qroq8WQVccHigEauzJ7hQtbOi+CeYFTzCOgpTnkXBU
	 wcXgZZZPu1rVGseZqeq0mwKm3AZl4MJMgqfofhQP/evH1qvDQoqS4/z4Cpdy0IOhXX
	 bzMvXWAMMulUrxyhxk1hDhABH/TNc902S3p6ZIY/X39g842yMifjxr4CZArP/37ddC
	 QqNpZOT0cMtGOZy1oUiT6azQ9YYJ6K9cYrXLne3KuirJDawjItaUzipuRMd/yWJOj9
	 YYBt3NRQe8mQE0clugrG/IgnCM3EGE5MSyQoIa3OSMu6N7U7zolY8oY55EusWtI4GG
	 O++ZtkBRL5jQg==
From: Yao Zi <ziyao@disroot.org>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH v3 1/5] dt-bindings: clock: Document clock and reset unit of RK3528
Date: Mon, 17 Feb 2025 06:11:42 +0000
Message-ID: <20250217061142.38480-6-ziyao@disroot.org>
In-Reply-To: <20250217061142.38480-5-ziyao@disroot.org>
References: <20250217061142.38480-5-ziyao@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are two types of clocks in RK3528 SoC, CRU-managed and
SCMI-managed. Independent IDs are assigned to them.

For the reset part, differing from previous Rockchip SoCs and
downstream bindings which embeds register offsets into the IDs, gapless
numbers starting from zero are used.

Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 .../bindings/clock/rockchip,rk3528-cru.yaml   |  64 +++
 .../dt-bindings/clock/rockchip,rk3528-cru.h   | 453 ++++++++++++++++++
 .../dt-bindings/reset/rockchip,rk3528-cru.h   | 241 ++++++++++
 3 files changed, 758 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml
 create mode 100644 include/dt-bindings/clock/rockchip,rk3528-cru.h
 create mode 100644 include/dt-bindings/reset/rockchip,rk3528-cru.h

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml
new file mode 100644
index 000000000000..5a3ec902351c
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rk3528-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3528 Clock and Reset Controller
+
+maintainers:
+  - Yao Zi <ziyao@disroot.org>
+
+description: |
+  The RK3528 clock controller generates the clock and also implements a reset
+  controller for SoC peripherals. For example, it provides SCLK_UART0 and
+  PCLK_UART0 as well as SRST_P_UART0 and SRST_S_UART0 for the first UART
+  module.
+  Each clock is assigned an identifier, consumer nodes can use it to specify
+  the clock. All available clock and reset IDs are defined in dt-binding
+  headers.
+
+properties:
+  compatible:
+    const: rockchip,rk3528-cru
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: External 24MHz oscillator clock
+      - description: >
+          50MHz clock generated by PHY module, for generating GMAC0 clocks only.
+
+  clock-names:
+    items:
+      - const: xin24m
+      - const: gmac0
+
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#clock-cells"
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    clock-controller@ff4a0000 {
+        compatible = "rockchip,rk3528-cru";
+        reg = <0xff4a0000 0x30000>;
+        clocks = <&xin24m>, <&gmac0_clk>;
+        clock-names = "xin24m", "gmac0";
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+    };
diff --git a/include/dt-bindings/clock/rockchip,rk3528-cru.h b/include/dt-bindings/clock/rockchip,rk3528-cru.h
new file mode 100644
index 000000000000..55a448f5ed6d
--- /dev/null
+++ b/include/dt-bindings/clock/rockchip,rk3528-cru.h
@@ -0,0 +1,453 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
+/*
+ * Copyright (c) 2022 Rockchip Electronics Co. Ltd.
+ * Copyright (c) 2024 Yao Zi <ziyao@disroot.org>
+ * Author: Joseph Chen <chenjh@rock-chips.com>
+ */
+
+#ifndef _DT_BINDINGS_CLK_ROCKCHIP_RK3528_H
+#define _DT_BINDINGS_CLK_ROCKCHIP_RK3528_H
+
+/* cru-clocks indices */
+#define PLL_APLL			0
+#define PLL_CPLL			1
+#define PLL_GPLL			2
+#define PLL_PPLL			3
+#define PLL_DPLL			4
+#define ARMCLK				5
+#define XIN_OSC0_HALF			6
+#define CLK_MATRIX_50M_SRC		7
+#define CLK_MATRIX_100M_SRC		8
+#define CLK_MATRIX_150M_SRC		9
+#define CLK_MATRIX_200M_SRC		10
+#define CLK_MATRIX_250M_SRC		11
+#define CLK_MATRIX_300M_SRC		12
+#define CLK_MATRIX_339M_SRC		13
+#define CLK_MATRIX_400M_SRC		14
+#define CLK_MATRIX_500M_SRC		15
+#define CLK_MATRIX_600M_SRC		16
+#define CLK_UART0_SRC			17
+#define CLK_UART0_FRAC			18
+#define SCLK_UART0			19
+#define CLK_UART1_SRC			20
+#define CLK_UART1_FRAC			21
+#define SCLK_UART1			22
+#define CLK_UART2_SRC			23
+#define CLK_UART2_FRAC			24
+#define SCLK_UART2			25
+#define CLK_UART3_SRC			26
+#define CLK_UART3_FRAC			27
+#define SCLK_UART3			28
+#define CLK_UART4_SRC			29
+#define CLK_UART4_FRAC			30
+#define SCLK_UART4			31
+#define CLK_UART5_SRC			32
+#define CLK_UART5_FRAC			33
+#define SCLK_UART5			34
+#define CLK_UART6_SRC			35
+#define CLK_UART6_FRAC			36
+#define SCLK_UART6			37
+#define CLK_UART7_SRC			38
+#define CLK_UART7_FRAC			39
+#define SCLK_UART7			40
+#define CLK_I2S0_2CH_SRC		41
+#define CLK_I2S0_2CH_FRAC		42
+#define MCLK_I2S0_2CH_SAI_SRC		43
+#define CLK_I2S3_8CH_SRC		44
+#define CLK_I2S3_8CH_FRAC		45
+#define MCLK_I2S3_8CH_SAI_SRC		46
+#define CLK_I2S1_8CH_SRC		47
+#define CLK_I2S1_8CH_FRAC		48
+#define MCLK_I2S1_8CH_SAI_SRC		49
+#define CLK_I2S2_2CH_SRC		50
+#define CLK_I2S2_2CH_FRAC		51
+#define MCLK_I2S2_2CH_SAI_SRC		52
+#define CLK_SPDIF_SRC			53
+#define CLK_SPDIF_FRAC			54
+#define MCLK_SPDIF_SRC			55
+#define DCLK_VOP_SRC0			56
+#define DCLK_VOP_SRC1			57
+#define CLK_HSM				58
+#define CLK_CORE_SRC_ACS		59
+#define CLK_CORE_SRC_PVTMUX		60
+#define CLK_CORE_SRC			61
+#define CLK_CORE			62
+#define ACLK_M_CORE_BIU			63
+#define CLK_CORE_PVTPLL_SRC		64
+#define PCLK_DBG			65
+#define SWCLKTCK			66
+#define CLK_SCANHS_CORE			67
+#define CLK_SCANHS_ACLKM_CORE		68
+#define CLK_SCANHS_PCLK_DBG		69
+#define CLK_SCANHS_PCLK_CPU_BIU		70
+#define PCLK_CPU_ROOT			71
+#define PCLK_CORE_GRF			72
+#define PCLK_DAPLITE_BIU		73
+#define PCLK_CPU_BIU			74
+#define CLK_REF_PVTPLL_CORE		75
+#define ACLK_BUS_VOPGL_ROOT		76
+#define ACLK_BUS_VOPGL_BIU		77
+#define ACLK_BUS_H_ROOT			78
+#define ACLK_BUS_H_BIU			79
+#define ACLK_BUS_ROOT			80
+#define HCLK_BUS_ROOT			81
+#define PCLK_BUS_ROOT			82
+#define ACLK_BUS_M_ROOT			83
+#define ACLK_SYSMEM_BIU			84
+#define CLK_TIMER_ROOT			85
+#define ACLK_BUS_BIU			86
+#define HCLK_BUS_BIU			87
+#define PCLK_BUS_BIU			88
+#define PCLK_DFT2APB			89
+#define PCLK_BUS_GRF			90
+#define ACLK_BUS_M_BIU			91
+#define ACLK_GIC			92
+#define ACLK_SPINLOCK			93
+#define ACLK_DMAC			94
+#define PCLK_TIMER			95
+#define CLK_TIMER0			96
+#define CLK_TIMER1			97
+#define CLK_TIMER2			98
+#define CLK_TIMER3			99
+#define CLK_TIMER4			100
+#define CLK_TIMER5			101
+#define PCLK_JDBCK_DAP			102
+#define CLK_JDBCK_DAP			103
+#define PCLK_WDT_NS			104
+#define TCLK_WDT_NS			105
+#define HCLK_TRNG_NS			106
+#define PCLK_UART0			107
+#define PCLK_DMA2DDR			108
+#define ACLK_DMA2DDR			109
+#define PCLK_PWM0			110
+#define CLK_PWM0			111
+#define CLK_CAPTURE_PWM0		112
+#define PCLK_PWM1			113
+#define CLK_PWM1			114
+#define CLK_CAPTURE_PWM1		115
+#define PCLK_SCR			116
+#define ACLK_DCF			117
+#define PCLK_INTMUX			118
+#define CLK_PPLL_I			119
+#define CLK_PPLL_MUX			120
+#define CLK_PPLL_100M_MATRIX		121
+#define CLK_PPLL_50M_MATRIX		122
+#define CLK_REF_PCIE_INNER_PHY		123
+#define CLK_REF_PCIE_100M_PHY		124
+#define ACLK_VPU_L_ROOT			125
+#define CLK_GMAC1_VPU_25M		126
+#define CLK_PPLL_125M_MATRIX		127
+#define ACLK_VPU_ROOT			128
+#define HCLK_VPU_ROOT			129
+#define PCLK_VPU_ROOT			130
+#define ACLK_VPU_BIU			131
+#define HCLK_VPU_BIU			132
+#define PCLK_VPU_BIU			133
+#define ACLK_VPU			134
+#define HCLK_VPU			135
+#define PCLK_CRU_PCIE			136
+#define PCLK_VPU_GRF			137
+#define HCLK_SFC			138
+#define SCLK_SFC			139
+#define CCLK_SRC_EMMC			140
+#define HCLK_EMMC			141
+#define ACLK_EMMC			142
+#define BCLK_EMMC			143
+#define TCLK_EMMC			144
+#define PCLK_GPIO1			145
+#define DBCLK_GPIO1			146
+#define ACLK_VPU_L_BIU			147
+#define PCLK_VPU_IOC			148
+#define HCLK_SAI_I2S0			149
+#define MCLK_SAI_I2S0			150
+#define HCLK_SAI_I2S2			151
+#define MCLK_SAI_I2S2			152
+#define PCLK_ACODEC			153
+#define MCLK_ACODEC_TX			154
+#define PCLK_GPIO3			155
+#define DBCLK_GPIO3			156
+#define PCLK_SPI1			157
+#define CLK_SPI1			158
+#define SCLK_IN_SPI1			159
+#define PCLK_UART2			160
+#define PCLK_UART5			161
+#define PCLK_UART6			162
+#define PCLK_UART7			163
+#define PCLK_I2C3			164
+#define CLK_I2C3			165
+#define PCLK_I2C5			166
+#define CLK_I2C5			167
+#define PCLK_I2C6			168
+#define CLK_I2C6			169
+#define ACLK_MAC_VPU			170
+#define PCLK_MAC_VPU			171
+#define CLK_GMAC1_RMII_VPU		172
+#define CLK_GMAC1_SRC_VPU		173
+#define PCLK_PCIE			174
+#define CLK_PCIE_AUX			175
+#define ACLK_PCIE			176
+#define HCLK_PCIE_SLV			177
+#define HCLK_PCIE_DBI			178
+#define PCLK_PCIE_PHY			179
+#define PCLK_PIPE_GRF			180
+#define CLK_PIPE_USB3OTG_COMBO		181
+#define CLK_UTMI_USB3OTG		182
+#define CLK_PCIE_PIPE_PHY		183
+#define CCLK_SRC_SDIO0			184
+#define HCLK_SDIO0			185
+#define CCLK_SRC_SDIO1			186
+#define HCLK_SDIO1			187
+#define CLK_TS_0			188
+#define CLK_TS_1			189
+#define PCLK_CAN2			190
+#define CLK_CAN2			191
+#define PCLK_CAN3			192
+#define CLK_CAN3			193
+#define PCLK_SARADC			194
+#define CLK_SARADC			195
+#define PCLK_TSADC			196
+#define CLK_TSADC			197
+#define CLK_TSADC_TSEN			198
+#define ACLK_USB3OTG			199
+#define CLK_REF_USB3OTG			200
+#define CLK_SUSPEND_USB3OTG		201
+#define ACLK_GPU_ROOT			202
+#define PCLK_GPU_ROOT			203
+#define ACLK_GPU_BIU			204
+#define PCLK_GPU_BIU			205
+#define ACLK_GPU			206
+#define CLK_GPU_PVTPLL_SRC		207
+#define ACLK_GPU_MALI			208
+#define HCLK_RKVENC_ROOT		209
+#define ACLK_RKVENC_ROOT		210
+#define PCLK_RKVENC_ROOT		211
+#define HCLK_RKVENC_BIU			212
+#define ACLK_RKVENC_BIU			213
+#define PCLK_RKVENC_BIU			214
+#define HCLK_RKVENC			215
+#define ACLK_RKVENC			216
+#define CLK_CORE_RKVENC			217
+#define HCLK_SAI_I2S1			218
+#define MCLK_SAI_I2S1			219
+#define PCLK_I2C1			220
+#define CLK_I2C1			221
+#define PCLK_I2C0			222
+#define CLK_I2C0			223
+#define CLK_UART_JTAG			224
+#define PCLK_SPI0			225
+#define CLK_SPI0			226
+#define SCLK_IN_SPI0			227
+#define PCLK_GPIO4			228
+#define DBCLK_GPIO4			229
+#define PCLK_RKVENC_IOC			230
+#define HCLK_SPDIF			231
+#define MCLK_SPDIF			232
+#define HCLK_PDM			233
+#define MCLK_PDM			234
+#define PCLK_UART1			235
+#define PCLK_UART3			236
+#define PCLK_RKVENC_GRF			237
+#define PCLK_CAN0			238
+#define CLK_CAN0			239
+#define PCLK_CAN1			240
+#define CLK_CAN1			241
+#define ACLK_VO_ROOT			242
+#define HCLK_VO_ROOT			243
+#define PCLK_VO_ROOT			244
+#define ACLK_VO_BIU			245
+#define HCLK_VO_BIU			246
+#define PCLK_VO_BIU			247
+#define HCLK_RGA2E			248
+#define ACLK_RGA2E			249
+#define CLK_CORE_RGA2E			250
+#define HCLK_VDPP			251
+#define ACLK_VDPP			252
+#define CLK_CORE_VDPP			253
+#define PCLK_VO_GRF			254
+#define PCLK_CRU			255
+#define ACLK_VOP_ROOT			256
+#define ACLK_VOP_BIU			257
+#define HCLK_VOP			258
+#define DCLK_VOP0			259
+#define DCLK_VOP1			260
+#define ACLK_VOP			261
+#define PCLK_HDMI			262
+#define CLK_SFR_HDMI			263
+#define CLK_CEC_HDMI			264
+#define CLK_SPDIF_HDMI			265
+#define CLK_HDMIPHY_TMDSSRC		266
+#define CLK_HDMIPHY_PREP		267
+#define PCLK_HDMIPHY			268
+#define HCLK_HDCP_KEY			269
+#define ACLK_HDCP			270
+#define HCLK_HDCP			271
+#define PCLK_HDCP			272
+#define HCLK_CVBS			273
+#define DCLK_CVBS			274
+#define DCLK_4X_CVBS			275
+#define ACLK_JPEG_DECODER		276
+#define HCLK_JPEG_DECODER		277
+#define ACLK_VO_L_ROOT			278
+#define ACLK_VO_L_BIU			279
+#define ACLK_MAC_VO			280
+#define PCLK_MAC_VO			281
+#define CLK_GMAC0_SRC			282
+#define CLK_GMAC0_RMII_50M		283
+#define CLK_GMAC0_TX			284
+#define CLK_GMAC0_RX			285
+#define ACLK_JPEG_ROOT			286
+#define ACLK_JPEG_BIU			287
+#define HCLK_SAI_I2S3			288
+#define MCLK_SAI_I2S3			289
+#define CLK_MACPHY			290
+#define PCLK_VCDCPHY			291
+#define PCLK_GPIO2			292
+#define DBCLK_GPIO2			293
+#define PCLK_VO_IOC			294
+#define CCLK_SRC_SDMMC0			295
+#define HCLK_SDMMC0			296
+#define PCLK_OTPC_NS			297
+#define CLK_SBPI_OTPC_NS		298
+#define CLK_USER_OTPC_NS		299
+#define CLK_HDMIHDP0			300
+#define HCLK_USBHOST			301
+#define HCLK_USBHOST_ARB		302
+#define CLK_USBHOST_OHCI		303
+#define CLK_USBHOST_UTMI		304
+#define PCLK_UART4			305
+#define PCLK_I2C4			306
+#define CLK_I2C4			307
+#define PCLK_I2C7			308
+#define CLK_I2C7			309
+#define PCLK_USBPHY			310
+#define CLK_REF_USBPHY			311
+#define HCLK_RKVDEC_ROOT		312
+#define ACLK_RKVDEC_ROOT_NDFT		313
+#define PCLK_DDRPHY_CRU			314
+#define HCLK_RKVDEC_BIU			315
+#define ACLK_RKVDEC_BIU			316
+#define ACLK_RKVDEC			317
+#define HCLK_RKVDEC			318
+#define CLK_HEVC_CA_RKVDEC		319
+#define ACLK_RKVDEC_PVTMUX_ROOT		320
+#define CLK_RKVDEC_PVTPLL_SRC		321
+#define PCLK_DDR_ROOT			322
+#define PCLK_DDR_BIU			323
+#define PCLK_DDRC			324
+#define PCLK_DDRMON			325
+#define CLK_TIMER_DDRMON		326
+#define PCLK_MSCH_BIU			327
+#define PCLK_DDR_GRF			328
+#define PCLK_DDR_HWLP			329
+#define PCLK_DDRPHY			330
+#define CLK_MSCH_BIU			331
+#define ACLK_DDR_UPCTL			332
+#define CLK_DDR_UPCTL			333
+#define CLK_DDRMON			334
+#define ACLK_DDR_SCRAMBLE		335
+#define ACLK_SPLIT			336
+#define CLK_DDRC_SRC			337
+#define CLK_DDR_PHY			338
+#define PCLK_OTPC_S			339
+#define CLK_SBPI_OTPC_S			340
+#define CLK_USER_OTPC_S			341
+#define PCLK_KEYREADER			342
+#define PCLK_BUS_SGRF			343
+#define PCLK_STIMER			344
+#define CLK_STIMER0			345
+#define CLK_STIMER1			346
+#define PCLK_WDT_S			347
+#define TCLK_WDT_S			348
+#define HCLK_TRNG_S			349
+#define HCLK_BOOTROM			350
+#define PCLK_DCF			351
+#define ACLK_SYSMEM			352
+#define HCLK_TSP			353
+#define ACLK_TSP			354
+#define CLK_CORE_TSP			355
+#define CLK_OTPC_ARB			356
+#define PCLK_OTP_MASK			357
+#define CLK_PMC_OTP			358
+#define PCLK_PMU_ROOT			359
+#define HCLK_PMU_ROOT			360
+#define PCLK_I2C2			361
+#define CLK_I2C2			362
+#define HCLK_PMU_BIU			363
+#define PCLK_PMU_BIU			364
+#define FCLK_MCU			365
+#define RTC_CLK_MCU			366
+#define PCLK_OSCCHK			367
+#define CLK_PMU_MCU_JTAG		368
+#define PCLK_PMU			369
+#define PCLK_GPIO0			370
+#define DBCLK_GPIO0			371
+#define XIN_OSC0_DIV			372
+#define CLK_DEEPSLOW			373
+#define CLK_DDR_FAIL_SAFE		374
+#define PCLK_PMU_HP_TIMER		375
+#define CLK_PMU_HP_TIMER		376
+#define CLK_PMU_32K_HP_TIMER		377
+#define PCLK_PMU_IOC			378
+#define PCLK_PMU_CRU			379
+#define PCLK_PMU_GRF			380
+#define PCLK_PMU_WDT			381
+#define TCLK_PMU_WDT			382
+#define PCLK_PMU_MAILBOX		383
+#define PCLK_SCRKEYGEN			384
+#define CLK_SCRKEYGEN			385
+#define CLK_PVTM_OSCCHK			386
+#define CLK_REFOUT			387
+#define CLK_PVTM_PMU			388
+#define PCLK_PVTM_PMU			389
+#define PCLK_PMU_SGRF			390
+#define HCLK_PMU_SRAM			391
+#define CLK_UART0			392
+#define CLK_UART1			393
+#define CLK_UART2			394
+#define CLK_UART3			395
+#define CLK_UART4			396
+#define CLK_UART5			397
+#define CLK_UART6			398
+#define CLK_UART7			399
+#define MCLK_I2S0_2CH_SAI_SRC_PRE	400
+#define MCLK_I2S1_8CH_SAI_SRC_PRE	401
+#define MCLK_I2S2_2CH_SAI_SRC_PRE	402
+#define MCLK_I2S3_8CH_SAI_SRC_PRE	403
+#define MCLK_SDPDIF_SRC_PRE		404
+
+/* scmi-clocks indices */
+#define SCMI_PCLK_KEYREADER		0
+#define SCMI_HCLK_KLAD			1
+#define SCMI_PCLK_KLAD			2
+#define SCMI_HCLK_TRNG_S		3
+#define SCMI_HCLK_CRYPTO_S		4
+#define SCMI_PCLK_WDT_S			5
+#define SCMI_TCLK_WDT_S			6
+#define SCMI_PCLK_STIMER		7
+#define SCMI_CLK_STIMER0		8
+#define SCMI_CLK_STIMER1		9
+#define SCMI_PCLK_OTP_MASK		10
+#define SCMI_PCLK_OTPC_S		11
+#define SCMI_CLK_SBPI_OTPC_S		12
+#define SCMI_CLK_USER_OTPC_S		13
+#define SCMI_CLK_PMC_OTP		14
+#define SCMI_CLK_OTPC_ARB		15
+#define SCMI_CLK_CORE_TSP		16
+#define SCMI_ACLK_TSP			17
+#define SCMI_HCLK_TSP			18
+#define SCMI_PCLK_DCF			19
+#define SCMI_CLK_DDR			20
+#define SCMI_CLK_CPU			21
+#define SCMI_CLK_GPU			22
+#define SCMI_CORE_CRYPTO		23
+#define SCMI_ACLK_CRYPTO		24
+#define SCMI_PKA_CRYPTO			25
+#define SCMI_HCLK_CRYPTO		26
+#define SCMI_CORE_CRYPTO_S		27
+#define SCMI_ACLK_CRYPTO_S		28
+#define SCMI_PKA_CRYPTO_S		29
+#define SCMI_CORE_KLAD			30
+#define SCMI_ACLK_KLAD			31
+#define SCMI_HCLK_TRNG			32
+
+#endif // _DT_BINDINGS_CLK_ROCKCHIP_RK3528_H
diff --git a/include/dt-bindings/reset/rockchip,rk3528-cru.h b/include/dt-bindings/reset/rockchip,rk3528-cru.h
new file mode 100644
index 000000000000..6b024c5f2e1c
--- /dev/null
+++ b/include/dt-bindings/reset/rockchip,rk3528-cru.h
@@ -0,0 +1,241 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
+/*
+ * Copyright (c) 2022 Rockchip Electronics Co. Ltd.
+ * Copyright (c) 2024 Yao Zi <ziyao@disroot.org>
+ * Author: Joseph Chen <chenjh@rock-chips.com>
+ */
+
+#ifndef _DT_BINDINGS_RESET_ROCKCHIP_RK3528_H
+#define _DT_BINDINGS_RESET_ROCKCHIP_RK3528_H
+
+#define SRST_CORE0_PO		0
+#define SRST_CORE1_PO		1
+#define SRST_CORE2_PO		2
+#define SRST_CORE3_PO		3
+#define SRST_CORE0		4
+#define SRST_CORE1		5
+#define SRST_CORE2		6
+#define SRST_CORE3		7
+#define SRST_NL2		8
+#define SRST_CORE_BIU		9
+#define SRST_CORE_CRYPTO	10
+#define SRST_P_DBG		11
+#define SRST_POT_DBG		12
+#define SRST_NT_DBG		13
+#define SRST_P_CORE_GRF		14
+#define SRST_P_DAPLITE_BIU	15
+#define SRST_P_CPU_BIU		16
+#define SRST_REF_PVTPLL_CORE	17
+#define SRST_A_BUS_VOPGL_BIU	18
+#define SRST_A_BUS_H_BIU	19
+#define SRST_A_SYSMEM_BIU	20
+#define SRST_A_BUS_BIU		21
+#define SRST_H_BUS_BIU		22
+#define SRST_P_BUS_BIU		23
+#define SRST_P_DFT2APB		24
+#define SRST_P_BUS_GRF		25
+#define SRST_A_BUS_M_BIU	26
+#define SRST_A_GIC		27
+#define SRST_A_SPINLOCK		28
+#define SRST_A_DMAC		29
+#define SRST_P_TIMER		30
+#define SRST_TIMER0		31
+#define SRST_TIMER1		32
+#define SRST_TIMER2		33
+#define SRST_TIMER3		34
+#define SRST_TIMER4		35
+#define SRST_TIMER5		36
+#define SRST_P_JDBCK_DAP	37
+#define SRST_JDBCK_DAP		38
+#define SRST_P_WDT_NS		39
+#define SRST_T_WDT_NS		40
+#define SRST_H_TRNG_NS		41
+#define SRST_P_UART0		42
+#define SRST_S_UART0		43
+#define SRST_PKA_CRYPTO		44
+#define SRST_A_CRYPTO		45
+#define SRST_H_CRYPTO		46
+#define SRST_P_DMA2DDR		47
+#define SRST_A_DMA2DDR		48
+#define SRST_P_PWM0		49
+#define SRST_PWM0		50
+#define SRST_P_PWM1		51
+#define SRST_PWM1		52
+#define SRST_P_SCR		53
+#define SRST_A_DCF		54
+#define SRST_P_INTMUX		55
+#define SRST_A_VPU_BIU		56
+#define SRST_H_VPU_BIU		57
+#define SRST_P_VPU_BIU		58
+#define SRST_A_VPU		59
+#define SRST_H_VPU		60
+#define SRST_P_CRU_PCIE		61
+#define SRST_P_VPU_GRF		62
+#define SRST_H_SFC		63
+#define SRST_S_SFC		64
+#define SRST_C_EMMC		65
+#define SRST_H_EMMC		66
+#define SRST_A_EMMC		67
+#define SRST_B_EMMC		68
+#define SRST_T_EMMC		69
+#define SRST_P_GPIO1		70
+#define SRST_DB_GPIO1		71
+#define SRST_A_VPU_L_BIU	72
+#define SRST_P_VPU_IOC		73
+#define SRST_H_SAI_I2S0		74
+#define SRST_M_SAI_I2S0		75
+#define SRST_H_SAI_I2S2		76
+#define SRST_M_SAI_I2S2		77
+#define SRST_P_ACODEC		78
+#define SRST_P_GPIO3		79
+#define SRST_DB_GPIO3		80
+#define SRST_P_SPI1		81
+#define SRST_SPI1		82
+#define SRST_P_UART2		83
+#define SRST_S_UART2		84
+#define SRST_P_UART5		85
+#define SRST_S_UART5		86
+#define SRST_P_UART6		87
+#define SRST_S_UART6		88
+#define SRST_P_UART7		89
+#define SRST_S_UART7		90
+#define SRST_P_I2C3		91
+#define SRST_I2C3		92
+#define SRST_P_I2C5		93
+#define SRST_I2C5		94
+#define SRST_P_I2C6		95
+#define SRST_I2C6		96
+#define SRST_A_MAC		97
+#define SRST_P_PCIE		98
+#define SRST_PCIE_PIPE_PHY	99
+#define SRST_PCIE_POWER_UP	100
+#define SRST_P_PCIE_PHY		101
+#define SRST_P_PIPE_GRF		102
+#define SRST_H_SDIO0		103
+#define SRST_H_SDIO1		104
+#define SRST_TS_0		105
+#define SRST_TS_1		106
+#define SRST_P_CAN2		107
+#define SRST_CAN2		108
+#define SRST_P_CAN3		109
+#define SRST_CAN3		110
+#define SRST_P_SARADC		111
+#define SRST_SARADC		112
+#define SRST_SARADC_PHY		113
+#define SRST_P_TSADC		114
+#define SRST_TSADC		115
+#define SRST_A_USB3OTG		116
+#define SRST_A_GPU_BIU		117
+#define SRST_P_GPU_BIU		118
+#define SRST_A_GPU		119
+#define SRST_REF_PVTPLL_GPU	120
+#define SRST_H_RKVENC_BIU	121
+#define SRST_A_RKVENC_BIU	122
+#define SRST_P_RKVENC_BIU	123
+#define SRST_H_RKVENC		124
+#define SRST_A_RKVENC		125
+#define SRST_CORE_RKVENC	126
+#define SRST_H_SAI_I2S1		127
+#define SRST_M_SAI_I2S1		128
+#define SRST_P_I2C1		129
+#define SRST_I2C1		130
+#define SRST_P_I2C0		131
+#define SRST_I2C0		132
+#define SRST_P_SPI0		133
+#define SRST_SPI0		134
+#define SRST_P_GPIO4		135
+#define SRST_DB_GPIO4		136
+#define SRST_P_RKVENC_IOC	137
+#define SRST_H_SPDIF		138
+#define SRST_M_SPDIF		139
+#define SRST_H_PDM		140
+#define SRST_M_PDM		141
+#define SRST_P_UART1		142
+#define SRST_S_UART1		143
+#define SRST_P_UART3		144
+#define SRST_S_UART3		145
+#define SRST_P_RKVENC_GRF	146
+#define SRST_P_CAN0		147
+#define SRST_CAN0		148
+#define SRST_P_CAN1		149
+#define SRST_CAN1		150
+#define SRST_A_VO_BIU		151
+#define SRST_H_VO_BIU		152
+#define SRST_P_VO_BIU		153
+#define SRST_H_RGA2E		154
+#define SRST_A_RGA2E		155
+#define SRST_CORE_RGA2E		156
+#define SRST_H_VDPP		157
+#define SRST_A_VDPP		158
+#define SRST_CORE_VDPP		159
+#define SRST_P_VO_GRF		160
+#define SRST_P_CRU		161
+#define SRST_A_VOP_BIU		162
+#define SRST_H_VOP		163
+#define SRST_D_VOP0		164
+#define SRST_D_VOP1		165
+#define SRST_A_VOP		166
+#define SRST_P_HDMI		167
+#define SRST_HDMI		168
+#define SRST_P_HDMIPHY		169
+#define SRST_H_HDCP_KEY		170
+#define SRST_A_HDCP		171
+#define SRST_H_HDCP		172
+#define SRST_P_HDCP		173
+#define SRST_H_CVBS		174
+#define SRST_D_CVBS_VOP		175
+#define SRST_D_4X_CVBS_VOP	176
+#define SRST_A_JPEG_DECODER	177
+#define SRST_H_JPEG_DECODER	178
+#define SRST_A_VO_L_BIU		179
+#define SRST_A_MAC_VO		180
+#define SRST_A_JPEG_BIU		181
+#define SRST_H_SAI_I2S3		182
+#define SRST_M_SAI_I2S3		183
+#define SRST_MACPHY		184
+#define SRST_P_VCDCPHY		185
+#define SRST_P_GPIO2		186
+#define SRST_DB_GPIO2		187
+#define SRST_P_VO_IOC		188
+#define SRST_H_SDMMC0		189
+#define SRST_P_OTPC_NS		190
+#define SRST_SBPI_OTPC_NS	191
+#define SRST_USER_OTPC_NS	192
+#define SRST_HDMIHDP0		193
+#define SRST_H_USBHOST		194
+#define SRST_H_USBHOST_ARB	195
+#define SRST_HOST_UTMI		196
+#define SRST_P_UART4		197
+#define SRST_S_UART4		198
+#define SRST_P_I2C4		199
+#define SRST_I2C4		200
+#define SRST_P_I2C7		201
+#define SRST_I2C7		202
+#define SRST_P_USBPHY		203
+#define SRST_USBPHY_POR		204
+#define SRST_USBPHY_OTG		205
+#define SRST_USBPHY_HOST	206
+#define SRST_P_DDRPHY_CRU	207
+#define SRST_H_RKVDEC_BIU	208
+#define SRST_A_RKVDEC_BIU	209
+#define SRST_A_RKVDEC		210
+#define SRST_H_RKVDEC		211
+#define SRST_HEVC_CA_RKVDEC	212
+#define SRST_REF_PVTPLL_RKVDEC	213
+#define SRST_P_DDR_BIU		214
+#define SRST_P_DDRC		215
+#define SRST_P_DDRMON		216
+#define SRST_TIMER_DDRMON	217
+#define SRST_P_MSCH_BIU		218
+#define SRST_P_DDR_GRF		219
+#define SRST_P_DDR_HWLP		220
+#define SRST_P_DDRPHY		221
+#define SRST_MSCH_BIU		222
+#define SRST_A_DDR_UPCTL	223
+#define SRST_DDR_UPCTL		224
+#define SRST_DDRMON		225
+#define SRST_A_DDR_SCRAMBLE	226
+#define SRST_A_SPLIT		227
+#define SRST_DDR_PHY		228
+
+#endif // _DT_BINDINGS_RESET_ROCKCHIP_RK3528_H
-- 
2.48.1


