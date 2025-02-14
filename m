Return-Path: <devicetree+bounces-146700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E52EA35E00
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 13:57:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D91BA3B06A0
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 12:57:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BB82265CD4;
	Fri, 14 Feb 2025 12:56:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42C08264A65;
	Fri, 14 Feb 2025 12:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739537774; cv=none; b=iR98DobFFJd8uM9aClbGyCMjC7k1DFWLBiQrnGJpt9x4J3sSFo7P5/n5LFjqKpHxURr75DacJQkdhrGQ8LM/BtJlluwTt6FiSEMVhbrnWboDalZsawPPvBp432quKoKM9krK72FYaLNkxKVeMLipWH+QcRr/T8UUxxe6no/OMFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739537774; c=relaxed/simple;
	bh=jEDoHP9ggyQtSbGjc7N5KPP6THm5hDpsSlBVav4dBsQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uxlx0/kSOUfsZ/Ofchy7W3rdT5M7ig/Gypfottjy6FmFy+haxHOkvi2aHibcFpG+iaXgCFfZx+lyIu00Qv11HmDXni7FQV/sVX+yjPKn82XOkxbSfP1kSzDor5PAgyuB2mR4o3afuoxWrEDgn0VhjqE0CXOijPG/gf6yyJdGlaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 53B811596;
	Fri, 14 Feb 2025 04:56:32 -0800 (PST)
Received: from localhost.localdomain (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0BB7B3F58B;
	Fri, 14 Feb 2025 04:56:09 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 04/15] dt-bindings: clk: sunxi-ng: add compatible for the A523 CCU
Date: Fri, 14 Feb 2025 12:53:48 +0000
Message-ID: <20250214125359.5204-5-andre.przywara@arm.com>
X-Mailer: git-send-email 2.46.3
In-Reply-To: <20250214125359.5204-1-andre.przywara@arm.com>
References: <20250214125359.5204-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Allwinner A523/T527 SoCs have four CCUs, this adds the binding for
the main CCU.

Add the new compatible string, along with the required input clock
lists.
Also add the DT binding headers, listing all the clocks with their ID
numbers.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../clock/allwinner,sun4i-a10-ccu.yaml        |   2 +
 include/dt-bindings/clock/sun55i-a523-ccu.h   | 190 ++++++++++++++++++
 include/dt-bindings/reset/sun55i-a523-ccu.h   |  87 ++++++++
 3 files changed, 279 insertions(+)
 create mode 100644 include/dt-bindings/clock/sun55i-a523-ccu.h
 create mode 100644 include/dt-bindings/reset/sun55i-a523-ccu.h

diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml
index 1690b9d99c3d4..451a18de1b6c1 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ccu.yaml
@@ -45,6 +45,7 @@ properties:
       - allwinner,sun50i-h6-r-ccu
       - allwinner,sun50i-h616-ccu
       - allwinner,sun50i-h616-r-ccu
+      - allwinner,sun55i-a523-ccu
       - allwinner,suniv-f1c100s-ccu
       - nextthing,gr8-ccu
 
@@ -106,6 +107,7 @@ else:
           - allwinner,sun50i-a100-ccu
           - allwinner,sun50i-h6-ccu
           - allwinner,sun50i-h616-ccu
+          - allwinner,sun55i-a523-ccu
 
   then:
     properties:
diff --git a/include/dt-bindings/clock/sun55i-a523-ccu.h b/include/dt-bindings/clock/sun55i-a523-ccu.h
new file mode 100644
index 0000000000000..89bc114f7a31f
--- /dev/null
+++ b/include/dt-bindings/clock/sun55i-a523-ccu.h
@@ -0,0 +1,190 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
+/*
+ * Copyright (C) 2024 Arm Ltd.
+ */
+
+#ifndef _DT_BINDINGS_CLK_SUN55I_A523_CCU_H_
+#define _DT_BINDINGS_CLK_SUN55I_A523_CCU_H_
+
+#define CLK_PLL_DDR0		0
+#define CLK_PLL_PERIPH0_4X	1
+#define CLK_PLL_PERIPH0_2X	2
+#define CLK_PLL_PERIPH0_800M	3
+#define CLK_PLL_PERIPH0_480M	4
+#define CLK_PLL_PERIPH0_600M	5
+#define CLK_PLL_PERIPH0_400M	6
+#define CLK_PLL_PERIPH0_300M	7
+#define CLK_PLL_PERIPH0_200M	8
+#define CLK_PLL_PERIPH0_160M	9
+#define CLK_PLL_PERIPH0_150M	10
+#define CLK_PLL_PERIPH1_4X	11
+#define CLK_PLL_PERIPH1_2X	12
+#define CLK_PLL_PERIPH1_800M	13
+#define CLK_PLL_PERIPH1_480M	14
+#define CLK_PLL_PERIPH1_600M	15
+#define CLK_PLL_PERIPH1_400M	16
+#define CLK_PLL_PERIPH1_300M	17
+#define CLK_PLL_PERIPH1_200M	18
+#define CLK_PLL_PERIPH1_160M	19
+#define CLK_PLL_PERIPH1_150M	20
+#define CLK_PLL_GPU		21
+#define CLK_PLL_VIDEO0_8X	22
+#define CLK_PLL_VIDEO0_4X	23
+#define CLK_PLL_VIDEO0_3X	24
+#define CLK_PLL_VIDEO1_8X	25
+#define CLK_PLL_VIDEO1_4X	26
+#define CLK_PLL_VIDEO1_3X	27
+#define CLK_PLL_VIDEO2_8X	28
+#define CLK_PLL_VIDEO2_4X	29
+#define CLK_PLL_VIDEO2_3X	30
+#define CLK_PLL_VIDEO3_8X	31
+#define CLK_PLL_VIDEO3_4X	32
+#define CLK_PLL_VIDEO3_3X	33
+#define CLK_PLL_VE		34
+#define CLK_PLL_AUDIO0_4X	35
+#define CLK_PLL_AUDIO0_2X	36
+#define CLK_PLL_AUDIO0		37
+#define CLK_PLL_AUDIO1		38
+#define CLK_PLL_AUDIO1_DIV2	39
+#define CLK_PLL_AUDIO1_DIV5	40
+#define CLK_PLL_NPU_4X		41
+#define CLK_PLL_NPU_2X		42
+#define CLK_PLL_NPU		43
+#define CLK_AHB			44
+#define CLK_APB0		45
+#define CLK_APB1		46
+#define CLK_MBUS		47
+#define CLK_DE			48
+#define CLK_BUS_DE		49
+#define CLK_DI			50
+#define CLK_BUS_DI		51
+#define CLK_G2D			52
+#define CLK_BUS_G2D		53
+#define CLK_GPU			54
+#define CLK_BUS_GPU		55
+#define CLK_CE			56
+#define CLK_BUS_CE		57
+#define CLK_BUS_CE_SYS		58
+#define CLK_VE			59
+#define CLK_BUS_VE		60
+#define CLK_BUS_DMA		61
+#define CLK_BUS_MSGBOX		62
+#define CLK_BUS_SPINLOCK	63
+#define CLK_HSTIMER0		64
+#define CLK_HSTIMER1		65
+#define CLK_HSTIMER2		66
+#define CLK_HSTIMER3		67
+#define CLK_HSTIMER4		68
+#define CLK_HSTIMER5		69
+#define CLK_BUS_HSTIMER		70
+#define CLK_BUS_DBG		71
+#define CLK_BUS_PWM0		72
+#define CLK_BUS_PWM1		73
+#define CLK_IOMMU		74
+#define CLK_BUS_IOMMU		75
+#define CLK_DRAM		76
+#define CLK_MBUS_DMA		77
+#define CLK_MBUS_VE		78
+#define CLK_MBUS_CE		79
+#define CLK_MBUS_TVIN		80
+#define CLK_MBUS_CSI		81
+#define CLK_BUS_DRAM		82
+#define CLK_NAND0		83
+#define CLK_NAND1		84
+#define CLK_BUS_NAND		85
+#define CLK_MMC0		86
+#define CLK_MMC1		87
+#define CLK_MMC2		88
+#define CLK_BUS_SYSDAP		89
+#define CLK_BUS_MMC0		90
+#define CLK_BUS_MMC1		91
+#define CLK_BUS_MMC2		92
+#define CLK_BUS_UART0		93
+#define CLK_BUS_UART1		94
+#define CLK_BUS_UART2		95
+#define CLK_BUS_UART3		96
+#define CLK_BUS_UART4		97
+#define CLK_BUS_UART5		98
+#define CLK_BUS_UART6		99
+#define CLK_BUS_UART7		100
+#define CLK_BUS_I2C0		101
+#define CLK_BUS_I2C1		102
+#define CLK_BUS_I2C2		103
+#define CLK_BUS_I2C3		104
+#define CLK_BUS_I2C4		105
+#define CLK_BUS_I2C5		106
+#define CLK_BUS_CAN		107
+#define CLK_SPI0		108
+#define CLK_SPI1		109
+#define CLK_SPI2		110
+#define CLK_SPIFC		111
+#define CLK_BUS_SPI0		112
+#define CLK_BUS_SPI1		113
+#define CLK_BUS_SPI2		114
+#define CLK_BUS_SPIFC		115
+#define CLK_EMAC0_25M		116
+#define CLK_EMAC1_25M		117
+#define CLK_BUS_EMAC0		118
+#define CLK_BUS_EMAC1		119
+#define CLK_IR_RX		120
+#define CLK_BUS_IR_RX		121
+#define CLK_IR_TX		122
+#define CLK_BUS_IR_TX		123
+#define CLK_GPADC0		124
+#define CLK_GPADC1		125
+#define CLK_BUS_GPADC0		126
+#define CLK_BUS_GPADC1		127
+#define CLK_BUS_THS		128
+#define CLK_USB_OHCI0		129
+#define CLK_USB_OHCI1		130
+#define CLK_BUS_OHCI0		131
+#define CLK_BUS_OHCI1		132
+#define CLK_BUS_EHCI0		133
+#define CLK_BUS_EHCI1		134
+#define CLK_BUS_OTG		135
+#define CLK_BUS_LRADC		136
+#define CLK_PCIE_AUX		137
+#define CLK_BUS_DPSS_TOP	138
+#define CLK_HDMI_24M		139
+#define CLK_HDMI_CEC_32K	140
+#define CLK_HDMI_CEC		141
+#define CLK_BUS_HDMI		142
+#define CLK_MIPI_DSI0		143
+#define CLK_MIPI_DSI1		144
+#define CLK_BUS_MIPI_DSI0	145
+#define CLK_BUS_MIPI_DSI1	146
+#define CLK_TCON_LCD0		147
+#define CLK_TCON_LCD1		148
+#define CLK_COMBOPHY_DSI0	149
+#define CLK_COMBOPHY_DSI1	150
+#define CLK_BUS_TCON_LCD0	151
+#define CLK_BUS_TCON_LCD1	152
+#define CLK_TCON_TV0		153
+#define CLK_TCON_TV1		154
+#define CLK_BUS_TCON_TV0	155
+#define CLK_BUS_TCON_TV1	156
+#define CLK_EDP			157
+#define CLK_BUS_EDP		158
+#define CLK_LEDC		159
+#define CLK_BUS_LEDC		160
+#define CLK_CSI_TOP		161
+#define CLK_CSI_MCLK0		162
+#define CLK_CSI_MCLK1		163
+#define CLK_CSI_MCLK2		164
+#define CLK_CSI_MCLK3		165
+#define CLK_BUS_CSI		166
+#define CLK_ISP			167
+#define CLK_DSP			168
+#define CLK_BUS_DSP_CFG		169
+#define CLK_FANOUT_24M		170
+#define CLK_FANOUT_12M		171
+#define CLK_FANOUT_16M		172
+#define CLK_FANOUT_25M		173
+#define CLK_FANOUT_32K		174
+#define CLK_FANOUT_27M		175
+#define CLK_FANOUT_PCLK		176
+#define CLK_FANOUT0		177
+#define CLK_FANOUT1		178
+#define CLK_FANOUT2		179
+
+#endif /* _DT_BINDINGS_CLK_SUN55I_A523_CCU_H_ */
diff --git a/include/dt-bindings/reset/sun55i-a523-ccu.h b/include/dt-bindings/reset/sun55i-a523-ccu.h
new file mode 100644
index 0000000000000..f137d03b03fbe
--- /dev/null
+++ b/include/dt-bindings/reset/sun55i-a523-ccu.h
@@ -0,0 +1,87 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
+/*
+ * Copyright (c) 2024 Arm Ltd.
+ */
+
+#ifndef _DT_BINDINGS_RST_SUN55I_A523_CCU_H_
+#define _DT_BINDINGS_RST_SUN55I_A523_CCU_H_
+
+#define RST_MBUS		0
+#define RST_BUS_NSI		1
+#define RST_BUS_DE		2
+#define RST_BUS_DI		3
+#define RST_BUS_G2D		4
+#define RST_BUS_SYS		5
+#define RST_BUS_GPU		6
+#define RST_BUS_CE		7
+#define RST_BUS_SYS_CE		8
+#define RST_BUS_VE		9
+#define RST_BUS_DMA		10
+#define RST_BUS_MSGBOX		11
+#define RST_BUS_SPINLOCK	12
+#define RST_BUS_CPUXTIMER	13
+#define RST_BUS_DBG		14
+#define RST_BUS_PWM0		15
+#define RST_BUS_PWM1		16
+#define RST_BUS_DRAM		17
+#define RST_BUS_NAND		18
+#define RST_BUS_MMC0		19
+#define RST_BUS_MMC1		20
+#define RST_BUS_MMC2		21
+#define RST_BUS_SYSDAP		22
+#define RST_BUS_UART0		23
+#define RST_BUS_UART1		24
+#define RST_BUS_UART2		25
+#define RST_BUS_UART3		26
+#define RST_BUS_UART4		27
+#define RST_BUS_UART5		28
+#define RST_BUS_UART6		29
+#define RST_BUS_UART7		30
+#define RST_BUS_I2C0		31
+#define RST_BUS_I2C1		32
+#define RST_BUS_I2C2		33
+#define RST_BUS_I2C3		34
+#define RST_BUS_I2C4		35
+#define RST_BUS_I2C5		36
+#define RST_BUS_CAN		37
+#define RST_BUS_SPI0		38
+#define RST_BUS_SPI1		39
+#define RST_BUS_SPI2		40
+#define RST_BUS_SPIFC		41
+#define RST_BUS_EMAC0		42
+#define RST_BUS_EMAC1		43
+#define RST_BUS_IR_RX		44
+#define RST_BUS_IR_TX		45
+#define RST_BUS_GPADC0		46
+#define RST_BUS_GPADC1		47
+#define RST_BUS_THS		48
+#define RST_USB_PHY0		49
+#define RST_USB_PHY1		50
+#define RST_BUS_OHCI0		51
+#define RST_BUS_OHCI1		52
+#define RST_BUS_EHCI0		53
+#define RST_BUS_EHCI1		54
+#define RST_BUS_OTG		55
+#define RST_BUS_3		56
+#define RST_BUS_LRADC		57
+#define RST_BUS_PCIE_USB3	58
+#define RST_BUS_DPSS_TOP	59
+#define RST_BUS_HDMI_MAIN	60
+#define RST_BUS_HDMI_SUB	61
+#define RST_BUS_MIPI_DSI0	62
+#define RST_BUS_MIPI_DSI1	63
+#define RST_BUS_TCON_LCD0	64
+#define RST_BUS_TCON_LCD1	65
+#define RST_BUS_TCON_LCD2	66
+#define RST_BUS_TCON_TV0	67
+#define RST_BUS_TCON_TV1	68
+#define RST_BUS_LVDS0		69
+#define RST_BUS_LVDS1		70
+#define RST_BUS_EDP		71
+#define RST_BUS_VIDEO_OUT0	72
+#define RST_BUS_VIDEO_OUT1	73
+#define RST_BUS_LEDC		74
+#define RST_BUS_CSI		75
+#define RST_BUS_ISP		76
+
+#endif /* _DT_BINDINGS_RST_SUN55I_A523_CCU_H_ */
-- 
2.46.3


