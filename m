Return-Path: <devicetree+bounces-27708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E39F881B5F9
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 13:31:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 94114289760
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 12:31:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C8216E5A4;
	Thu, 21 Dec 2023 12:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="aG8AjUDR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8059E76DA5;
	Thu, 21 Dec 2023 12:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3BL8CpxS025683;
	Thu, 21 Dec 2023 13:29:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-type:content-transfer-encoding; s=
	selector1; bh=86yepIwXHm4ntwht35V68kcONgssTMOMrEHKykYkE6w=; b=aG
	8AjUDRjkw7m2jR4rO6jRAFOqAM/bp4BU9vh2wXp+If6vfUyHTEvi1tyT2WNzIZT6
	i6bdajESvrdTc34fCw540YkIyHs5umRTnpbwmjj8z5vi/XcOMUCJDKf5W8+fJfh+
	NxV435I1Eku5WcU/TzMFRb0CBO/f+JXR8Lv8tfGi805EcwU0iaLQ+y/WJ9NnCsmm
	19WZI/d0z7HM2azmhdWWHpeIscb2c3lXFiCIL1S9kjomoGWZxs4fhvc6IBZ8UGtM
	evnP1QSJf+VGSXIFlxWREpbPlz+oPRKiX7JLEmLr8XMJ3MR27/1ModCzElYfm99C
	w6/R1NB5gh6SESWIAyWg==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3v14427gkw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Dec 2023 13:29:53 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4E8CB100053;
	Thu, 21 Dec 2023 13:29:49 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4266123C699;
	Thu, 21 Dec 2023 13:29:49 +0100 (CET)
Received: from localhost (10.252.25.159) by SHFDAG1NODE2.st.com (10.75.129.70)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 21 Dec
 2023 13:29:46 +0100
From: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Neil Armstrong
	<neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Sam
 Ravnborg <sam@ravnborg.org>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre
 Torgue <alexandre.torgue@foss.st.com>,
        Yannick Fertre
	<yannick.fertre@foss.st.com>,
        Raphael Gallais-Pou
	<raphael.gallais-pou@foss.st.com>,
        Philippe Cornu
	<philippe.cornu@foss.st.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Lad
 Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Thierry Reding
	<thierry.reding@gmail.com>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v1 3/8] drm/stm: lvds: add new STM32 LVDS Display Interface Transmitter driver
Date: Thu, 21 Dec 2023 13:28:38 +0100
Message-ID: <20231221122843.418650-4-raphael.gallais-pou@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231221122843.418650-1-raphael.gallais-pou@foss.st.com>
References: <20231221122843.418650-1-raphael.gallais-pou@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="../patches/upstream/lvds/v1/v1-0003-drm-stm-lvds-add-new-STM32-LVDS-Display-Interface.patch"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-21_05,2023-12-20_01,2023-05-22_02

The Low-Voltage Differential Signaling (LVDS) Display Interface
Transmitter handles the LVDS protocol: it maps the pixels received from
the upstream Pixel-DMA LCD-TFT Display Controller (LTDC) onto the LVDS
PHY.

It regroups three sub blocks:
	* LVDS host: handles the LVDS protocol (FPD / OpenLDI) and maps
	  its input pixels onto the data lanes of the PHY
	* LVDS PHY: parallelize the data and drives the LVDS data lanes
	* LVDS wrapper: handles top-level settings

The LVDS controller driver supports the following high-level features:
	* FDP-Link-I and OpenLDI (v0.95) protocols
	* Single-Link or Dual-Link operation
	* Single-Display or Double-Display (with the same content
	  duplicated on both)
	* Flexible Bit-Mapping, including JEIDA and VESA
	* RGB888 or RGB666 output
	* Synchronous design, with one input pixel per clock cycle

Signed-off-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
---
 drivers/gpu/drm/stm/Kconfig  |   11 +
 drivers/gpu/drm/stm/Makefile |    2 +
 drivers/gpu/drm/stm/lvds.c   | 1226 ++++++++++++++++++++++++++++++++++
 3 files changed, 1239 insertions(+)
 create mode 100644 drivers/gpu/drm/stm/lvds.c

diff --git a/drivers/gpu/drm/stm/Kconfig b/drivers/gpu/drm/stm/Kconfig
index fa49cde43bb2..9627814d027c 100644
--- a/drivers/gpu/drm/stm/Kconfig
+++ b/drivers/gpu/drm/stm/Kconfig
@@ -20,3 +20,14 @@ config DRM_STM_DSI
 	select DRM_DW_MIPI_DSI
 	help
 	  Choose this option for MIPI DSI support on STMicroelectronics SoC.
+
+config DRM_STM_LVDS
+	tristate "STMicroelectronics LVDS Display Interface Transmitter DRM driver"
+	depends on DRM_STM
+	help
+	  Enable support for LVDS encoders on STMicroelectronics SoC.
+	  The STM LVDS is a bridge which serialize pixel stream onto
+	  a LVDS protocol.
+
+	  To compile this driver as a module, choose M here: the module will be
+	  called lvds.
diff --git a/drivers/gpu/drm/stm/Makefile b/drivers/gpu/drm/stm/Makefile
index 4df5caf01f35..ad740d6175a6 100644
--- a/drivers/gpu/drm/stm/Makefile
+++ b/drivers/gpu/drm/stm/Makefile
@@ -5,4 +5,6 @@ stm-drm-y := \
 
 obj-$(CONFIG_DRM_STM_DSI) += dw_mipi_dsi-stm.o
 
+obj-$(CONFIG_DRM_STM_LVDS) += lvds.o
+
 obj-$(CONFIG_DRM_STM) += stm-drm.o
diff --git a/drivers/gpu/drm/stm/lvds.c b/drivers/gpu/drm/stm/lvds.c
new file mode 100644
index 000000000000..f01490939ab5
--- /dev/null
+++ b/drivers/gpu/drm/stm/lvds.c
@@ -0,0 +1,1226 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2023, STMicroelectronics - All Rights Reserved
+ * Author(s): Raphaël GALLAIS-POU <raphael.gallais-pou@foss.st.com> for STMicroelectronics.
+ */
+
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_bridge.h>
+#include <drm/drm_device.h>
+#include <drm/drm_of.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_print.h>
+#include <drm/drm_probe_helper.h>
+
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/media-bus-format.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/reset.h>
+
+/* LVDS Host registers */
+#define LVDS_CR		0x0000  /* configuration register */
+#define LVDS_DMLCR0	0x0004  /* data mapping lsb configuration register 0 */
+#define LVDS_DMMCR0	0x0008  /* data mapping msb configuration register 0 */
+#define LVDS_DMLCR1	0x000C  /* data mapping lsb configuration register 1 */
+#define LVDS_DMMCR1	0x0010  /* data mapping msb configuration register 1 */
+#define LVDS_DMLCR2	0x0014  /* data mapping lsb configuration register 2 */
+#define LVDS_DMMCR2	0x0018  /* data mapping msb configuration register 2 */
+#define LVDS_DMLCR3	0x001C  /* data mapping lsb configuration register 3 */
+#define LVDS_DMMCR3	0x0020  /* data mapping msb configuration register 3 */
+#define LVDS_DMLCR4	0x0024  /* data mapping lsb configuration register 4 */
+#define LVDS_DMMCR4	0x0028  /* data mapping msb configuration register 4 */
+#define LVDS_CDL1CR	0x002C  /* channel distrib link 1 configuration register */
+#define LVDS_CDL2CR	0x0030  /* channel distrib link 2 configuration register */
+
+#define CDL1CR_DEFAULT	0x04321 /* Default value for CDL1CR */
+#define CDL2CR_DEFAULT	0x59876 /* Default value for CDL2CR */
+
+#define LVDS_DMLCR(bit)	(LVDS_DMLCR0 + 0x8 * (bit))
+#define LVDS_DMMCR(bit)	(LVDS_DMMCR0 + 0x8 * (bit))
+
+/* LVDS Wrapper registers */
+#define LVDS_WCLKCR	0x11B0  /* Wrapper clock control register */
+
+#define LVDS_HWCFGR	0x1FF0  /* HW configuration register	*/
+#define LVDS_VERR	0x1FF4  /* Version register	*/
+#define LVDS_IPIDR	0x1FF8  /* Identification register	*/
+#define LVDS_SIDR	0x1FFC  /* Size Identification register	*/
+
+/* Bitfield description */
+#define CR_LVDSEN	BIT(0)  /* LVDS PHY Enable */
+#define CR_HSPOL	BIT(1)  /* Horizontal Synchronization Polarity */
+#define CR_VSPOL	BIT(2)  /* Vertical Synchronization Polarity */
+#define CR_DEPOL	BIT(3)  /* Data Enable Polarity */
+#define CR_CI		BIT(4)  /* Control Internal (software controlled bit) */
+#define CR_LKMOD	BIT(5)  /* Link Mode, for both Links */
+#define CR_LKPHA	BIT(6)  /* Link Phase, for both Links */
+#define CR_LK1POL	GENMASK(20, 16)  /* Link-1 output Polarity */
+#define CR_LK2POL	GENMASK(25, 21)  /* Link-2 output Polarity */
+
+#define DMMCRx_MAP0	GENMASK(4, 0) /* Mapping for bit 0 of datalane x */
+#define DMMCRx_MAP1	GENMASK(9, 5) /* Mapping for bit 1 of datalane x */
+#define DMMCRx_MAP2	GENMASK(14, 10) /* Mapping for bit 2 of datalane x */
+#define DMMCRx_MAP3	GENMASK(19, 15) /* Mapping for bit 3 of datalane x */
+#define DMLCRx_MAP4	GENMASK(4, 0) /* Mapping for bit 4 of datalane x */
+#define DMLCRx_MAP5	GENMASK(9, 5) /* Mapping for bit 5 of datalane x */
+#define DMLCRx_MAP6	GENMASK(14, 10) /* Mapping for bit 6 of datalane x */
+
+#define CDLCRx_DISTR0	GENMASK(3, 0) /* Channel distribution for lane 0 */
+#define CDLCRx_DISTR1	GENMASK(7, 4) /* Channel distribution for lane 1 */
+#define CDLCRx_DISTR2	GENMASK(11, 8) /* Channel distribution for lane 2 */
+#define CDLCRx_DISTR3	GENMASK(15, 12) /* Channel distribution for lane 3 */
+#define CDLCRx_DISTR4	GENMASK(19, 16) /* Channel distribution for lane 4 */
+
+#define PHY_GCR_BIT_CLK_OUT	BIT(0)  /* BIT clock enable */
+#define PHY_GCR_LS_CLK_OUT	BIT(4)  /* LS clock enable */
+#define PHY_GCR_DP_CLK_OUT	BIT(8)  /* DP clock enable */
+#define PHY_GCR_RSTZ		BIT(24) /* LVDS PHY digital reset */
+#define PHY_GCR_DIV_RSTN	BIT(25) /* Output divider reset */
+#define PHY_SCR_TX_EN		BIT(16) /* Transmission mode enable */
+/* Current mode driver enable */
+#define PHY_CMCR_CM_EN_DL	(BIT(28) | BIT(20) | BIT(12) | BIT(4))
+#define PHY_CMCR_CM_EN_DL4	BIT(4)
+/* Bias enable */
+#define PHY_BCR1_EN_BIAS_DL	(BIT(16) | BIT(12) | BIT(8) | BIT(4) | BIT(0))
+#define PHY_BCR2_BIAS_EN	BIT(28)
+/* Voltage mode driver enable */
+#define PHY_BCR3_VM_EN_DL	(BIT(16) | BIT(12) | BIT(8) | BIT(4) | BIT(0))
+#define PHY_DCR_POWER_OK	BIT(12)
+#define PHY_CFGCR_EN_DIG_DL	GENMASK(4, 0) /* LVDS PHY digital lane enable */
+#define PHY_PLLCR1_PLL_EN	BIT(0) /* LVDS PHY PLL enable */
+#define PHY_PLLCR1_EN_SD	BIT(1) /* LVDS PHY PLL sigma-delta signal enable */
+#define PHY_PLLCR1_EN_TWG	BIT(2) /* LVDS PHY PLL triangular wave generator enable */
+#define PHY_PLLCR1_DIV_EN	BIT(8) /* LVDS PHY PLL dividers enable */
+#define PHY_PLLCR2_NDIV		GENMASK(25, 16) /* NDIV mask value */
+#define PHY_PLLCR2_BDIV		GENMASK(9, 0)   /* BDIV mask value */
+#define PHY_PLLSR_PLL_LOCK	BIT(0) /* LVDS PHY PLL lock status */
+#define PHY_PLLSDCR1_MDIV	GENMASK(9, 0)   /* MDIV mask value */
+#define PHY_PLLTESTCR_TDIV	GENMASK(25, 16) /* TDIV mask value */
+#define PHY_PLLTESTCR_CLK_EN	BIT(0) /* Test clock enable */
+#define PHY_PLLTESTCR_EN	BIT(8) /* Test divider output enable */
+
+#define WCLKCR_SECND_CLKPIX_SEL	BIT(0) /* Pixel clock selection */
+#define WCLKCR_SRCSEL		BIT(8) /* Source selection for the pixel clock */
+
+/* Sleep & timeout for pll lock/unlock */
+#define SLEEP_US	1000
+#define TIMEOUT_US	200000
+
+/*
+ * The link phase defines whether an ODD pixel is carried over together with
+ * the next EVEN pixel or together with the previous EVEN pixel.
+ *
+ * LVDS_DUAL_LINK_EVEN_ODD_PIXELS (LKPHA = 0)
+ *
+ * ,--------.  ,--------.  ,--------.  ,--------.  ,---------.
+ * | ODD  LK \/ PIXEL  3 \/ PIXEL  1 \/ PIXEL' 1 \/ PIXEL' 3 |
+ * | EVEN LK /\ PIXEL  2 /\ PIXEL' 0 /\ PIXEL' 2 /\ PIXEL' 4 |
+ * `--------'  `--------'  `--------'  `--------'  `---------'
+ *
+ * LVDS_DUAL_LINK_ODD_EVEN_PIXELS (LKPHA = 1)
+ *
+ * ,--------.  ,--------.  ,--------.  ,--------.  ,---------.
+ * | ODD  LK \/ PIXEL  3 \/ PIXEL  1 \/ PIXEL' 1 \/ PIXEL' 3 |
+ * | EVEN LK /\ PIXEL  4 /\ PIXEL  2 /\ PIXEL' 0 /\ PIXEL' 2 |
+ * `--------'  `--------'  `--------'  `--------'  `---------'
+ *
+ */
+enum lvds_link_type {
+	LVDS_SINGLE_LINK_PRIMARY = 0,
+	LVDS_SINGLE_LINK_SECONDARY,
+	LVDS_DUAL_LINK_EVEN_ODD_PIXELS,
+	LVDS_DUAL_LINK_ODD_EVEN_PIXELS,
+};
+
+enum lvds_pixel {
+	PIX_R_0 = 0,
+	PIX_R_1,
+	PIX_R_2,
+	PIX_R_3,
+	PIX_R_4,
+	PIX_R_5,
+	PIX_R_6,
+	PIX_R_7,
+	PIX_G_0,
+	PIX_G_1,
+	PIX_G_2,
+	PIX_G_3,
+	PIX_G_4,
+	PIX_G_5,
+	PIX_G_6,
+	PIX_G_7,
+	PIX_B_0,
+	PIX_B_1,
+	PIX_B_2,
+	PIX_B_3,
+	PIX_B_4,
+	PIX_B_5,
+	PIX_B_6,
+	PIX_B_7,
+	PIX_H_S,
+	PIX_V_S,
+	PIX_D_E,
+	PIX_C_E,
+	PIX_C_I,
+	PIX_TOG,
+	PIX_ONE,
+	PIX_ZER,
+};
+
+struct phy_reg_offsets {
+	u32 GCR;	/* Global Control Register	*/
+	u32 CMCR1;    /* Current Mode Control Register 1 */
+	u32 CMCR2;    /* Current Mode Control Register 2 */
+	u32 SCR;      /* Serial Control Register	*/
+	u32 BCR1;     /* Bias Control Register 1	*/
+	u32 BCR2;     /* Bias Control Register 2	*/
+	u32 BCR3;     /* Bias Control Register 3	*/
+	u32 MPLCR;    /* Monitor PLL Lock Control Register */
+	u32 DCR;      /* Debug Control Register	*/
+	u32 SSR1;     /* Spare Status Register 1	*/
+	u32 CFGCR;    /* Configuration Control Register */
+	u32 PLLCR1;   /* PLL_MODE 1 Control Register	*/
+	u32 PLLCR2;   /* PLL_MODE 2 Control Register	*/
+	u32 PLLSR;    /* PLL Status Register	*/
+	u32 PLLSDCR1; /* PLL_SD_1 Control Register	*/
+	u32 PLLSDCR2; /* PLL_SD_2 Control Register	*/
+	u32 PLLTWGCR1;/* PLL_TWG_1 Control Register	*/
+	u32 PLLTWGCR2;/* PLL_TWG_2 Control Register	*/
+	u32 PLLCPCR;  /* PLL_CP Control Register	*/
+	u32 PLLTESTCR;/* PLL_TEST Control Register	*/
+};
+
+struct lvds_phy_info {
+	u32 base;
+	struct phy_reg_offsets ofs;
+};
+
+static struct lvds_phy_info lvds_phy_16ff_primary = {
+	.base = 0x1000,
+	.ofs = {
+		.GCR = 0x0,
+		.CMCR1 = 0xC,
+		.CMCR2 = 0x10,
+		.SCR = 0x20,
+		.BCR1 = 0x2C,
+		.BCR2 = 0x30,
+		.BCR3 = 0x34,
+		.MPLCR = 0x64,
+		.DCR = 0x84,
+		.SSR1 = 0x88,
+		.CFGCR = 0xA0,
+		.PLLCR1 = 0xC0,
+		.PLLCR2 = 0xC4,
+		.PLLSR = 0xC8,
+		.PLLSDCR1 = 0xCC,
+		.PLLSDCR2 = 0xD0,
+		.PLLTWGCR1 = 0xD4,
+		.PLLTWGCR2 = 0xD8,
+		.PLLCPCR = 0xE0,
+		.PLLTESTCR = 0xE8,
+	}
+};
+
+static struct lvds_phy_info lvds_phy_16ff_secondary = {
+	.base = 0x1100,
+	.ofs = {
+		.GCR = 0x0,
+		.CMCR1 = 0xC,
+		.CMCR2 = 0x10,
+		.SCR = 0x20,
+		.BCR1 = 0x2C,
+		.BCR2 = 0x30,
+		.BCR3 = 0x34,
+		.MPLCR = 0x64,
+		.DCR = 0x84,
+		.SSR1 = 0x88,
+		.CFGCR = 0xA0,
+		.PLLCR1 = 0xC0,
+		.PLLCR2 = 0xC4,
+		.PLLSR = 0xC8,
+		.PLLSDCR1 = 0xCC,
+		.PLLSDCR2 = 0xD0,
+		.PLLTWGCR1 = 0xD4,
+		.PLLTWGCR2 = 0xD8,
+		.PLLCPCR = 0xE0,
+		.PLLTESTCR = 0xE8,
+	}
+};
+
+struct stm_lvds {
+	void __iomem *base;
+	struct device *dev;
+	struct clk *pclk;		/* APB peripheral clock */
+	struct clk *pllref_clk;		/* Reference clock for the internal PLL */
+	struct clk_hw lvds_ck_px;	/* Pixel clock */
+	u32 pixel_clock_rate;		/* Pixel clock rate */
+
+	struct lvds_phy_info *primary;
+	struct lvds_phy_info *secondary;
+
+	struct drm_bridge lvds_bridge;
+	struct drm_bridge *next_bridge;
+	struct drm_connector connector;
+	struct drm_encoder *encoder;
+	struct drm_panel *panel;
+
+	u32 hw_version;
+	u32 link_type;
+};
+
+#define bridge_to_stm_lvds(b) \
+	container_of(b, struct stm_lvds, lvds_bridge)
+
+#define connector_to_stm_lvds(c) \
+	container_of(c, struct stm_lvds, connector)
+
+#define lvds_is_dual_link(lvds) \
+	({	\
+	typeof(lvds) __lvds = (lvds);	\
+	__lvds == LVDS_DUAL_LINK_EVEN_ODD_PIXELS ||	\
+	__lvds == LVDS_DUAL_LINK_ODD_EVEN_PIXELS;	\
+	})
+
+static inline void lvds_write(struct stm_lvds *lvds, u32 reg, u32 val)
+{
+	writel(val, lvds->base + reg);
+}
+
+static inline u32 lvds_read(struct stm_lvds *lvds, u32 reg)
+{
+	return readl(lvds->base + reg);
+}
+
+static inline void lvds_set(struct stm_lvds *lvds, u32 reg, u32 mask)
+{
+	lvds_write(lvds, reg, lvds_read(lvds, reg) | mask);
+}
+
+static inline void lvds_clear(struct stm_lvds *lvds, u32 reg, u32 mask)
+{
+	lvds_write(lvds, reg, lvds_read(lvds, reg) & ~mask);
+}
+
+/*
+ * Expected JEIDA-RGB888 data to be sent in LSB format
+ *	    bit6 ............................bit0
+ * CHAN0   {ONE, ONE, ZERO, ZERO, ZERO, ONE, ONE}
+ * CHAN1   {G2,  R7,  R6,   R5,   R4,   R3,  R2}
+ * CHAN2   {B3,  B2,  G7,   G6,   G5,   G4,  G3}
+ * CHAN3   {DE,  VS,  HS,   B7,   B6,   B5,  B4}
+ * CHAN4   {CE,  B1,  B0,   G1,   G0,   R1,  R0}
+ */
+enum lvds_pixel lvds_bitmap_jeida_rgb888[5][7] = {
+	{ PIX_ONE, PIX_ONE, PIX_ZER, PIX_ZER, PIX_ZER, PIX_ONE, PIX_ONE },
+	{ PIX_G_2, PIX_R_7, PIX_R_6, PIX_R_5, PIX_R_4, PIX_R_3, PIX_R_2 },
+	{ PIX_B_3, PIX_B_2, PIX_G_7, PIX_G_6, PIX_G_5, PIX_G_4, PIX_G_3 },
+	{ PIX_D_E, PIX_V_S, PIX_H_S, PIX_B_7, PIX_B_6, PIX_B_5, PIX_B_4 },
+	{ PIX_C_E, PIX_B_1, PIX_B_0, PIX_G_1, PIX_G_0, PIX_R_1, PIX_R_0 }
+};
+
+/*
+ * Expected VESA-RGB888 data to be sent in LSB format
+ *	    bit6 ............................bit0
+ * CHAN0   {ONE, ONE, ZERO, ZERO, ZERO, ONE, ONE}
+ * CHAN1   {G0,  R5,  R4,   R3,   R2,   R1,  R0}
+ * CHAN2   {B1,  B0,  G5,   G4,   G3,   G2,  G1}
+ * CHAN3   {DE,  VS,  HS,   B5,   B4,   B3,  B2}
+ * CHAN4   {CE,  B7,  B6,   G7,   G6,   R7,  R6}
+ */
+enum lvds_pixel lvds_bitmap_vesa_rgb888[5][7] = {
+	{ PIX_ONE, PIX_ONE, PIX_ZER, PIX_ZER, PIX_ZER, PIX_ONE, PIX_ONE },
+	{ PIX_G_0, PIX_R_5, PIX_R_4, PIX_R_3, PIX_R_2, PIX_R_1, PIX_R_0 },
+	{ PIX_B_1, PIX_B_0, PIX_G_5, PIX_G_4, PIX_G_3, PIX_G_2, PIX_G_1 },
+	{ PIX_D_E, PIX_V_S, PIX_H_S, PIX_B_5, PIX_B_4, PIX_B_3, PIX_B_2 },
+	{ PIX_C_E, PIX_B_7, PIX_B_6, PIX_G_7, PIX_G_6, PIX_R_7, PIX_R_6 }
+};
+
+/*
+ * Clocks and PHY related functions
+ */
+static int lvds_pll_enable(struct stm_lvds *lvds, struct lvds_phy_info *phy)
+{
+	struct drm_device *drm = lvds->lvds_bridge.dev;
+	u32 lvds_gcr;
+	int val, ret;
+
+	/*
+	 * PLL lock timing control for the monitor unmask after startup (pll_en)
+	 * Adjusted value so that the masking window is opened at start-up
+	 */
+	lvds_write(lvds, phy->base + phy->ofs.MPLCR, (0x200 - 0x160) << 16);
+
+	/* Enable bias */
+	lvds_write(lvds, phy->base + phy->ofs.BCR2, PHY_BCR2_BIAS_EN);
+
+	/* Enable DP, LS, BIT clock output */
+	lvds_gcr = PHY_GCR_DP_CLK_OUT | PHY_GCR_LS_CLK_OUT | PHY_GCR_BIT_CLK_OUT;
+	lvds_set(lvds, phy->base + phy->ofs.GCR, lvds_gcr);
+
+	/* Power up all output dividers */
+	lvds_set(lvds, phy->base + phy->ofs.PLLTESTCR, PHY_PLLTESTCR_EN);
+	lvds_set(lvds, phy->base + phy->ofs.PLLCR1, PHY_PLLCR1_DIV_EN);
+
+	/* Set PHY in serial transmission mode */
+	lvds_set(lvds, phy->base + phy->ofs.SCR, PHY_SCR_TX_EN);
+
+	/* Enable the LVDS PLL & wait for its lock */
+	lvds_set(lvds, phy->base + phy->ofs.PLLCR1, PHY_PLLCR1_PLL_EN);
+	ret = readl_poll_timeout_atomic(lvds->base + phy->base + phy->ofs.PLLSR,
+					val, val & PHY_PLLSR_PLL_LOCK,
+					SLEEP_US, TIMEOUT_US);
+	if (ret)
+		drm_err(drm, "!TIMEOUT! waiting PLL, let's continue\n");
+
+	/* WCLKCR_SECND_CLKPIX_SEL is for dual link */
+	lvds_write(lvds, LVDS_WCLKCR, WCLKCR_SECND_CLKPIX_SEL);
+
+	lvds_set(lvds, phy->ofs.PLLTESTCR, PHY_PLLTESTCR_CLK_EN);
+
+	return ret;
+}
+
+static int pll_get_clkout_khz(int clkin_khz, int bdiv, int mdiv, int ndiv)
+{
+	int divisor = ndiv * bdiv;
+
+	/* Prevents from division by 0 */
+	if (!divisor)
+		return 0;
+
+	return clkin_khz * mdiv / divisor;
+}
+
+#define TDIV	70
+#define NDIV_MIN	2
+#define NDIV_MAX	6
+#define BDIV_MIN	2
+#define BDIV_MAX	6
+#define MDIV_MIN	1
+#define MDIV_MAX	1023
+
+static int lvds_pll_get_params(struct stm_lvds *lvds,
+			       unsigned int clkin_khz, unsigned int clkout_khz,
+			       unsigned int *bdiv, unsigned int *mdiv, unsigned int *ndiv)
+{
+	int delta, best_delta; /* all in khz */
+	int i, o, n;
+
+	/* Early checks preventing division by 0 & odd results */
+	if (clkin_khz <= 0 || clkout_khz <= 0)
+		return -EINVAL;
+
+	best_delta = 1000000; /* big started value (1000000khz) */
+
+	for (i = NDIV_MIN; i <= NDIV_MAX; i++) {
+		for (o = BDIV_MIN; o <= BDIV_MAX; o++) {
+			n = DIV_ROUND_CLOSEST(i * o * clkout_khz, clkin_khz);
+			/* Check ndiv according to vco range */
+			if (n < MDIV_MIN || n > MDIV_MAX)
+				continue;
+			/* Check if new delta is better & saves parameters */
+			delta = pll_get_clkout_khz(clkin_khz, i, n, o) - clkout_khz;
+			if (delta < 0)
+				delta = -delta;
+			if (delta < best_delta) {
+				*ndiv = i;
+				*mdiv = n;
+				*bdiv = o;
+				best_delta = delta;
+			}
+			/* fast return in case of "perfect result" */
+			if (!delta)
+				return 0;
+		}
+	}
+
+	return 0;
+}
+
+static void lvds_pll_config(struct stm_lvds *lvds, struct lvds_phy_info *phy)
+{
+	unsigned int pll_in_khz, bdiv = 0, mdiv = 0, ndiv = 0;
+	struct clk_hw *hwclk;
+	int multiplier;
+
+	/*
+	 * The LVDS PHY includes a low power low jitter high performance and
+	 * highly configuration Phase Locked Loop supporting integer and
+	 * fractional multiplication ratios and Spread Spectrum Clocking.  In
+	 * integer mode, the only software supported feature for now, the PLL is
+	 * made of a pre-divider NDIV, a feedback multiplier MDIV, followed by
+	 * several post-dividers, each one with a specific application.
+	 *
+	 *          ,------.         ,-----.     ,-----.
+	 * Fref --> | NDIV | -Fpdf-> | PFD | --> | VCO | --------> Fvco
+	 *          `------'     ,-> |     |     `-----'  |
+	 *                       |   `-----'              |
+	 *                       |         ,------.       |
+	 *                       `-------- | MDIV | <-----'
+	 *                                 `------'
+	 *
+	 * From the output of the VCO, the clock can be optionally extracted on
+	 * the RCC clock observer, with a divider TDIV, for testing purpose, or
+	 * is passed through a programmable post-divider BDIV.  Finally, the
+	 * frequency can be divided further with two fixed dividers.
+	 *
+	 *                            ,--------.
+	 *                    ,-----> | DP div | ----------------> Fdp
+	 *          ,------.  |       `--------'
+	 * Fvco --> | BDIV | ------------------------------------> Fbit
+	 *      |   `------'    ,------.   |
+	 *      `-------------> | TDIV | --.---------------------> ClkObs
+	 *                      '------'   |    ,--------.
+	 *                                 `--> | LS div | ------> Fls
+	 *                                      '--------'
+	 *
+	 * The LS and DP clock dividers operate at a fixed ratio of 7 and 3.5
+	 * respectively with regards to fbit. LS divider converts the bit clock
+	 * to a pixel clock per lane per clock sample (Fls).  This is useful
+	 * when used to generate a dot clock for the display unit RGB output,
+	 * and DP divider is.
+	 */
+
+	hwclk = __clk_get_hw(lvds->pllref_clk);
+	if (!hwclk)
+		return;
+
+	pll_in_khz = clk_hw_get_rate(hwclk) / 1000;
+
+	if (lvds_is_dual_link(lvds->link_type))
+		multiplier = 2;
+	else
+		multiplier = 1;
+
+	lvds_pll_get_params(lvds, pll_in_khz,
+			    lvds->pixel_clock_rate * 7 / 1000 / multiplier,
+			    &bdiv, &mdiv, &ndiv);
+
+	/* Set BDIV, MDIV and NDIV */
+	lvds_write(lvds, phy->base + phy->ofs.PLLCR2, ndiv << 16);
+	lvds_set(lvds, phy->base + phy->ofs.PLLCR2, bdiv);
+	lvds_write(lvds, phy->base + phy->ofs.PLLSDCR1, mdiv);
+
+	/* Hardcode TDIV as dynamic values are not yet implemented */
+	lvds_write(lvds, phy->base + phy->ofs.PLLTESTCR, TDIV << 16);
+
+	/*
+	 * For now, PLL just needs to be in integer mode
+	 * Fractional and spread spectrum clocking are not yet implemented
+	 *
+	 * PLL integer mode:
+	 *	- PMRY_PLL_TWG_STEP = PMRY_PLL_SD_INT_RATIO
+	 *	- EN_TWG = 0
+	 *	- EN_SD = 0
+	 *	- DOWN_SPREAD = 0
+	 *
+	 * PLL fractional mode:
+	 *	- EN_TWG = 0
+	 *	- EN_SD = 1
+	 *	- DOWN_SPREAD = 0
+	 *
+	 * Spread Spectrum Clocking
+	 *	- EN_TWG = 1
+	 *	- EN_SD = 1
+	 */
+
+	/* Disable TWG and SD */
+	lvds_clear(lvds, phy->base + phy->ofs.PLLCR1, PHY_PLLCR1_EN_TWG | PHY_PLLCR1_EN_SD);
+
+	/* Power up bias and PLL dividers */
+	lvds_set(lvds, phy->base + phy->ofs.DCR, PHY_DCR_POWER_OK);
+	lvds_set(lvds, phy->base + phy->ofs.CMCR1, PHY_CMCR_CM_EN_DL);
+	lvds_set(lvds, phy->base + phy->ofs.CMCR2, PHY_CMCR_CM_EN_DL4);
+
+	/* Set up voltage mode */
+	lvds_set(lvds, phy->base + phy->ofs.PLLCPCR, 0x1);
+	lvds_set(lvds, phy->base + phy->ofs.BCR3, PHY_BCR3_VM_EN_DL);
+	lvds_set(lvds, phy->base + phy->ofs.BCR1, PHY_BCR1_EN_BIAS_DL);
+	/* Enable digital datalanes */
+	lvds_set(lvds, phy->base + phy->ofs.CFGCR, PHY_CFGCR_EN_DIG_DL);
+}
+
+static int lvds_pixel_clk_enable(struct clk_hw *hw)
+{
+	struct stm_lvds *lvds = container_of(hw, struct stm_lvds, lvds_ck_px);
+	struct drm_device *drm = lvds->lvds_bridge.dev;
+	struct lvds_phy_info *phy;
+	int ret;
+
+	ret = clk_prepare_enable(lvds->pclk);
+	if (ret) {
+		drm_err(drm, "Failed to enable lvds peripheral clk\n");
+		return ret;
+	}
+
+	ret = clk_prepare_enable(lvds->pllref_clk);
+	if (ret) {
+		drm_err(drm, "Failed to enable lvds reference clk\n");
+		clk_disable_unprepare(lvds->pclk);
+		return ret;
+	}
+
+	/* In case we are operating in dual link the second PHY is set before the primary PHY. */
+	if (lvds->secondary) {
+		phy = lvds->secondary;
+
+		/* Release LVDS PHY from reset mode */
+		lvds_set(lvds, phy->base + phy->ofs.GCR, PHY_GCR_DIV_RSTN | PHY_GCR_RSTZ);
+		lvds_pll_config(lvds, phy);
+
+		ret = lvds_pll_enable(lvds, phy);
+		if (ret) {
+			drm_err(drm, "Failed to enable secondary PHY PLL: %d\n", ret);
+			return ret;
+		}
+	}
+
+	if (lvds->primary) {
+		phy = lvds->primary;
+
+		/* Release LVDS PHY from reset mode */
+		lvds_set(lvds, phy->base + phy->ofs.GCR, PHY_GCR_DIV_RSTN | PHY_GCR_RSTZ);
+		lvds_pll_config(lvds, phy);
+
+		ret = lvds_pll_enable(lvds, phy);
+		if (ret) {
+			drm_err(drm, "Failed to enable primary PHY PLL: %d\n", ret);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static void lvds_pixel_clk_disable(struct clk_hw *hw)
+{
+	struct stm_lvds *lvds = container_of(hw, struct stm_lvds, lvds_ck_px);
+
+	/*
+	 * For each PHY:
+	 * Disable DP, LS, BIT clock outputs
+	 * Shutdown the PLL
+	 * Assert LVDS PHY in reset mode
+	 */
+
+	if (lvds->primary) {
+		lvds_clear(lvds, lvds->primary->base + lvds->primary->ofs.GCR,
+			   (PHY_GCR_DP_CLK_OUT | PHY_GCR_LS_CLK_OUT | PHY_GCR_BIT_CLK_OUT));
+		lvds_clear(lvds, lvds->primary->base + lvds->primary->ofs.PLLCR1,
+			   PHY_PLLCR1_PLL_EN);
+		lvds_clear(lvds, lvds->primary->base + lvds->primary->ofs.GCR,
+			   PHY_GCR_DIV_RSTN | PHY_GCR_RSTZ);
+	}
+
+	if (lvds->secondary) {
+		lvds_clear(lvds, lvds->secondary->base + lvds->secondary->ofs.GCR,
+			   (PHY_GCR_DP_CLK_OUT | PHY_GCR_LS_CLK_OUT | PHY_GCR_BIT_CLK_OUT));
+		lvds_clear(lvds, lvds->secondary->base + lvds->secondary->ofs.PLLCR1,
+			   PHY_PLLCR1_PLL_EN);
+		lvds_clear(lvds, lvds->secondary->base + lvds->secondary->ofs.GCR,
+			   PHY_GCR_DIV_RSTN | PHY_GCR_RSTZ);
+	}
+
+	clk_disable_unprepare(lvds->pllref_clk);
+	clk_disable_unprepare(lvds->pclk);
+}
+
+static unsigned long lvds_pixel_clk_recalc_rate(struct clk_hw *hw,
+						unsigned long parent_rate)
+{
+	struct stm_lvds *lvds = container_of(hw, struct stm_lvds, lvds_ck_px);
+	struct drm_device *drm = lvds->lvds_bridge.dev;
+	unsigned int pll_in_khz, bdiv, mdiv, ndiv;
+	int ret, multiplier, pll_out_khz;
+	u32 val;
+
+	ret = clk_prepare_enable(lvds->pclk);
+	if (ret) {
+		drm_err(drm, "Failed to enable lvds peripheral clk\n");
+		return 0;
+	}
+
+	if (lvds_is_dual_link(lvds->link_type))
+		multiplier = 2;
+	else
+		multiplier = 1;
+
+	val = lvds_read(lvds, lvds->primary->base + lvds->primary->ofs.PLLCR2);
+	drm_dbg(drm, "val = %08x\n", val);
+
+	ndiv = (val & PHY_PLLCR2_NDIV) >> 16;
+	bdiv = (val & PHY_PLLCR2_BDIV) >> 0;
+
+	mdiv = (unsigned int)lvds_read(lvds,
+				       lvds->primary->base + lvds->primary->ofs.PLLSDCR1);
+
+	pll_in_khz = (unsigned int)(parent_rate / 1000);
+
+	/* Compute values if not yet accessible */
+	if (val == 0 || mdiv == 0) {
+		lvds_pll_get_params(lvds, pll_in_khz,
+				    lvds->pixel_clock_rate * 7 / 1000 / multiplier,
+				    &bdiv, &mdiv, &ndiv);
+	}
+
+	pll_out_khz = pll_get_clkout_khz(pll_in_khz, bdiv, mdiv, ndiv);
+	drm_dbg(drm, "ndiv %d , bdiv %d, mdiv %d, pll_out_khz %d\n",
+		ndiv, bdiv, mdiv, pll_out_khz);
+
+	/*
+	 * 1/7 because for each pixel in 1 lane there is 7 bits
+	 * We want pixclk, not bitclk
+	 */
+	lvds->pixel_clock_rate = pll_out_khz * 1000 * multiplier / 7;
+
+	clk_disable_unprepare(lvds->pclk);
+
+	return (unsigned long)lvds->pixel_clock_rate;
+}
+
+static long lvds_pixel_clk_round_rate(struct clk_hw *hw, unsigned long rate,
+				      unsigned long *parent_rate)
+{
+	struct stm_lvds *lvds = container_of(hw, struct stm_lvds, lvds_ck_px);
+	unsigned int pll_in_khz, bdiv = 0, mdiv = 0, ndiv = 0;
+	const struct drm_connector *connector;
+	const struct drm_display_mode *mode;
+	int multiplier;
+
+	connector = &lvds->connector;
+	if (!connector)
+		return -EINVAL;
+
+	if (list_empty(&connector->modes)) {
+		drm_dbg(connector->dev, "connector: empty modes list\n");
+		return -EINVAL;
+	}
+
+	mode = list_first_entry(&connector->modes,
+				struct drm_display_mode, head);
+
+	pll_in_khz = (unsigned int)(*parent_rate / 1000);
+
+	if (lvds_is_dual_link(lvds->link_type))
+		multiplier = 2;
+	else
+		multiplier = 1;
+
+	lvds_pll_get_params(lvds, pll_in_khz, mode->clock * 7 / multiplier, &bdiv, &mdiv, &ndiv);
+
+	/*
+	 * 1/7 because for each pixel in 1 lane there is 7 bits
+	 * We want pixclk, not bitclk
+	 */
+	lvds->pixel_clock_rate = (unsigned long)pll_get_clkout_khz(pll_in_khz, bdiv, mdiv, ndiv)
+					 * 1000 * multiplier / 7;
+
+	return lvds->pixel_clock_rate;
+}
+
+static const struct clk_ops lvds_pixel_clk_ops = {
+	.enable = lvds_pixel_clk_enable,
+	.disable = lvds_pixel_clk_disable,
+	.recalc_rate = lvds_pixel_clk_recalc_rate,
+	.round_rate = lvds_pixel_clk_round_rate,
+};
+
+static const struct clk_init_data clk_data = {
+	.name = "clk_pix_lvds",
+	.ops = &lvds_pixel_clk_ops,
+	.parent_names = (const char * []) {"ck_ker_lvdsphy"},
+	.num_parents = 1,
+	.flags = CLK_IGNORE_UNUSED,
+};
+
+static void lvds_pixel_clk_unregister(void *data)
+{
+	struct stm_lvds *lvds = data;
+
+	of_clk_del_provider(lvds->dev->of_node);
+	clk_hw_unregister(&lvds->lvds_ck_px);
+}
+
+static int lvds_pixel_clk_register(struct stm_lvds *lvds)
+{
+	struct device_node *node = lvds->dev->of_node;
+	int ret;
+
+	lvds->lvds_ck_px.init = &clk_data;
+
+	/* set the rate by default at 148500000 */
+	lvds->pixel_clock_rate = 148500000;
+
+	ret = clk_hw_register(lvds->dev, &lvds->lvds_ck_px);
+	if (ret)
+		return ret;
+
+	ret = of_clk_add_hw_provider(node, of_clk_hw_simple_get,
+				     &lvds->lvds_ck_px);
+	if (ret)
+		clk_hw_unregister(&lvds->lvds_ck_px);
+
+	return ret;
+}
+
+/*
+ * Host configuration related
+ */
+static void lvds_config_data_mapping(struct stm_lvds *lvds)
+{
+	struct drm_device *drm = lvds->lvds_bridge.dev;
+	const struct drm_display_info *info;
+	enum lvds_pixel (*bitmap)[7];
+	u32 lvds_dmlcr, lvds_dmmcr;
+	int i;
+
+	info = &(&lvds->connector)->display_info;
+	if (!info->num_bus_formats || !info->bus_formats) {
+		drm_warn(drm, "No LVDS bus format reported\n");
+		return;
+	}
+
+	switch (info->bus_formats[0]) {
+	case MEDIA_BUS_FMT_RGB666_1X7X3_SPWG: /* VESA-RGB666 */
+		drm_warn(drm, "Pixel format with data mapping not yet supported.\n");
+		return;
+	case MEDIA_BUS_FMT_RGB888_1X7X4_SPWG: /* VESA-RGB888 */
+		bitmap = lvds_bitmap_vesa_rgb888;
+		break;
+	case MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA: /* JEIDA-RGB888 */
+		bitmap = lvds_bitmap_jeida_rgb888;
+		break;
+	default:
+		drm_warn(drm, "Unsupported LVDS bus format 0x%04x\n", info->bus_formats[0]);
+		return;
+	}
+
+	/* Set bitmap for each lane */
+	for (i = 0; i < 5; i++) {
+		lvds_dmlcr = ((bitmap[i][0])
+			      + (bitmap[i][1] << 5)
+			      + (bitmap[i][2] << 10)
+			      + (bitmap[i][3] << 15));
+		lvds_dmmcr = ((bitmap[i][4])
+			      + (bitmap[i][5] << 5)
+			      + (bitmap[i][6] << 10));
+
+		lvds_write(lvds, LVDS_DMLCR(i), lvds_dmlcr);
+		lvds_write(lvds, LVDS_DMMCR(i), lvds_dmmcr);
+	}
+}
+
+static void lvds_config_mode(struct stm_lvds *lvds)
+{
+	u32 bus_flags, lvds_cr = 0, lvds_cdl1cr = 0, lvds_cdl2cr = 0;
+	const struct drm_display_mode *mode;
+	const struct drm_connector *connector;
+
+	connector = &lvds->connector;
+	if (!connector)
+		return;
+
+	if (list_empty(&connector->modes)) {
+		drm_dbg(connector->dev, "connector: empty modes list\n");
+		return;
+	}
+
+	bus_flags = connector->display_info.bus_flags;
+	mode = list_first_entry(&connector->modes,
+				struct drm_display_mode, head);
+
+	lvds_clear(lvds, LVDS_CR, CR_LKMOD);
+	lvds_clear(lvds, LVDS_CDL1CR, CDLCRx_DISTR0 | CDLCRx_DISTR1 | CDLCRx_DISTR2 |
+				      CDLCRx_DISTR3 | CDLCRx_DISTR4);
+	lvds_clear(lvds, LVDS_CDL2CR, CDLCRx_DISTR0 | CDLCRx_DISTR1 | CDLCRx_DISTR2 |
+				      CDLCRx_DISTR3 | CDLCRx_DISTR4);
+
+	/* Set channel distribution */
+	if (lvds->primary)
+		lvds_cdl1cr = CDL1CR_DEFAULT;
+
+	if (lvds->secondary) {
+		lvds_cr |= CR_LKMOD;
+		lvds_cdl2cr = CDL2CR_DEFAULT;
+	}
+
+	/* Set signal polarity */
+	if (bus_flags & DRM_BUS_FLAG_DE_LOW)
+		lvds_cr |= CR_DEPOL;
+
+	if (mode->flags & DRM_MODE_FLAG_NHSYNC)
+		lvds_cr |= CR_HSPOL;
+
+	if (mode->flags & DRM_MODE_FLAG_NVSYNC)
+		lvds_cr |= CR_VSPOL;
+
+	switch (lvds->link_type) {
+	case LVDS_DUAL_LINK_EVEN_ODD_PIXELS: /* LKPHA = 0 */
+		lvds_cr &= ~CR_LKPHA;
+		break;
+	case LVDS_DUAL_LINK_ODD_EVEN_PIXELS: /* LKPHA = 1 */
+		lvds_cr |= CR_LKPHA;
+		break;
+	default:
+		drm_notice(lvds->lvds_bridge.dev, "No phase precised, setting default\n");
+		lvds_cr &= ~CR_LKPHA;
+		break;
+	}
+
+	/* Write config to registers */
+	lvds_set(lvds, LVDS_CR, lvds_cr);
+	lvds_write(lvds, LVDS_CDL1CR, lvds_cdl1cr);
+	lvds_write(lvds, LVDS_CDL2CR, lvds_cdl2cr);
+}
+
+static int lvds_connector_get_modes(struct drm_connector *connector)
+{
+	struct stm_lvds *lvds = connector_to_stm_lvds(connector);
+
+	return drm_panel_get_modes(lvds->panel, connector);
+}
+
+static int lvds_connector_atomic_check(struct drm_connector *connector,
+				       struct drm_atomic_state *state)
+{
+	const struct drm_display_mode *panel_mode;
+	struct drm_connector_state *conn_state;
+	struct drm_crtc_state *crtc_state;
+
+	conn_state = drm_atomic_get_new_connector_state(state, connector);
+	if (!conn_state)
+		return -EINVAL;
+
+	if (list_empty(&connector->modes)) {
+		drm_dbg(connector->dev, "connector: empty modes list\n");
+		return -EINVAL;
+	}
+
+	if (!conn_state->crtc)
+		return -EINVAL;
+
+	panel_mode = list_first_entry(&connector->modes,
+				      struct drm_display_mode, head);
+
+	/* We're not allowed to modify the resolution. */
+	crtc_state = drm_atomic_get_crtc_state(state, conn_state->crtc);
+	if (IS_ERR(crtc_state))
+		return PTR_ERR(crtc_state);
+
+	if (crtc_state->mode.hdisplay != panel_mode->hdisplay ||
+	    crtc_state->mode.vdisplay != panel_mode->vdisplay)
+		return -EINVAL;
+
+	/* The flat panel mode is fixed, just copy it to the adjusted mode. */
+	drm_mode_copy(&crtc_state->adjusted_mode, panel_mode);
+
+	return 0;
+}
+
+static const struct drm_connector_helper_funcs lvds_conn_helper_funcs = {
+	.get_modes = lvds_connector_get_modes,
+	.atomic_check = lvds_connector_atomic_check,
+};
+
+static const struct drm_connector_funcs lvds_conn_funcs = {
+	.reset = drm_atomic_helper_connector_reset,
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.destroy = drm_connector_cleanup,
+	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+};
+
+static int lvds_attach(struct drm_bridge *bridge,
+		       enum drm_bridge_attach_flags flags)
+{
+	struct stm_lvds *lvds = bridge_to_stm_lvds(bridge);
+	struct drm_connector *connector = &lvds->connector;
+	struct drm_encoder *encoder = bridge->encoder;
+	int ret;
+
+	if (!bridge->encoder) {
+		drm_err(bridge->dev, "Parent encoder object not found\n");
+		return -ENODEV;
+	}
+
+	/* Set the encoder type as caller does not know it */
+	bridge->encoder->encoder_type = DRM_MODE_ENCODER_LVDS;
+
+	/* No cloning support */
+	bridge->encoder->possible_clones = 0;
+
+	/* If we have a next bridge just attach it. */
+	if (lvds->next_bridge)
+		return drm_bridge_attach(bridge->encoder, lvds->next_bridge,
+					 bridge, flags);
+
+	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR) {
+		drm_err(bridge->dev, "Fix bridge driver to make connector optional!");
+		return -EINVAL;
+	}
+
+	/* Otherwise if we have a panel, create a connector. */
+	if (!lvds->panel)
+		return 0;
+
+	ret = drm_connector_init(bridge->dev, connector,
+				 &lvds_conn_funcs, DRM_MODE_CONNECTOR_LVDS);
+	if (ret < 0)
+		return ret;
+
+	drm_connector_helper_add(connector, &lvds_conn_helper_funcs);
+
+	ret = drm_connector_attach_encoder(connector, encoder);
+
+	return ret;
+}
+
+static void lvds_atomic_enable(struct drm_bridge *bridge,
+			       struct drm_bridge_state *old_bridge_state)
+{
+	struct drm_atomic_state *state = old_bridge_state->base.state;
+	struct stm_lvds *lvds = bridge_to_stm_lvds(bridge);
+	struct drm_connector_state *conn_state;
+	struct drm_connector *connector;
+	int ret;
+
+	ret = clk_prepare_enable(lvds->pclk);
+	if (ret) {
+		drm_err(bridge->dev, "Failed to enable lvds peripheral clk\n");
+		return;
+	}
+
+	connector = drm_atomic_get_new_connector_for_encoder(state, bridge->encoder);
+	if (!connector)
+		return;
+
+	conn_state = drm_atomic_get_new_connector_state(state, connector);
+	if (!conn_state)
+		return;
+
+	lvds_config_mode(lvds);
+
+	/* Set Data Mapping */
+	lvds_config_data_mapping(lvds);
+
+	/* Turn the output on. */
+	lvds_set(lvds, LVDS_CR, CR_LVDSEN);
+
+	if (lvds->panel) {
+		drm_panel_prepare(lvds->panel);
+		drm_panel_enable(lvds->panel);
+	}
+}
+
+static void lvds_atomic_disable(struct drm_bridge *bridge,
+				struct drm_bridge_state *old_bridge_state)
+{
+	struct stm_lvds *lvds = bridge_to_stm_lvds(bridge);
+
+	if (lvds->panel) {
+		drm_panel_disable(lvds->panel);
+		drm_panel_unprepare(lvds->panel);
+	}
+
+	/* Disable LVDS module */
+	lvds_clear(lvds, LVDS_CR, CR_LVDSEN);
+
+	clk_disable_unprepare(lvds->pclk);
+}
+
+static const struct drm_bridge_funcs lvds_bridge_funcs = {
+	.attach = lvds_attach,
+	.atomic_enable = lvds_atomic_enable,
+	.atomic_disable = lvds_atomic_disable,
+	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
+	.atomic_reset = drm_atomic_helper_bridge_reset,
+};
+
+static int lvds_probe(struct platform_device *pdev)
+{
+	struct device_node *port1, *port2, *remote;
+	struct device *dev = &pdev->dev;
+	struct reset_control *rstc;
+	struct stm_lvds *lvds;
+	int ret, dual_link;
+
+	dev_dbg(dev, "Probing LVDS driver...\n");
+
+	lvds = devm_kzalloc(dev, sizeof(*lvds), GFP_KERNEL);
+	if (!lvds)
+		return -ENOMEM;
+
+	lvds->dev = dev;
+
+	ret = drm_of_find_panel_or_bridge(dev->of_node, 1, 0,
+					  &lvds->panel, &lvds->next_bridge);
+	if (ret) {
+		dev_err_probe(dev, ret, "Panel not found\n");
+		return ret;
+	}
+
+	lvds->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(lvds->base)) {
+		ret = PTR_ERR(lvds->base);
+		dev_err(dev, "Unable to get regs %d\n", ret);
+		return ret;
+	}
+
+	lvds->pclk = devm_clk_get(dev, "pclk");
+	if (IS_ERR(lvds->pclk)) {
+		ret = PTR_ERR(lvds->pclk);
+		dev_err(dev, "Unable to get peripheral clock: %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_prepare_enable(lvds->pclk);
+	if (ret) {
+		dev_err(dev, "%s: Failed to enable peripheral clk\n", __func__);
+		return ret;
+	}
+
+	rstc = devm_reset_control_get_exclusive(dev, NULL);
+
+	if (IS_ERR(rstc)) {
+		ret = PTR_ERR(rstc);
+		goto err_lvds_probe;
+	}
+
+	reset_control_assert(rstc);
+	usleep_range(10, 20);
+	reset_control_deassert(rstc);
+
+	port1 = of_graph_get_port_by_id(dev->of_node, 1);
+	port2 = of_graph_get_port_by_id(dev->of_node, 2);
+	dual_link = drm_of_lvds_get_dual_link_pixel_order(port1, port2);
+
+	switch (dual_link) {
+	case DRM_LVDS_DUAL_LINK_ODD_EVEN_PIXELS:
+		lvds->link_type = LVDS_DUAL_LINK_ODD_EVEN_PIXELS;
+		lvds->primary = &lvds_phy_16ff_primary;
+		lvds->secondary = &lvds_phy_16ff_secondary;
+		break;
+	case DRM_LVDS_DUAL_LINK_EVEN_ODD_PIXELS:
+		lvds->link_type = LVDS_DUAL_LINK_EVEN_ODD_PIXELS;
+		lvds->primary = &lvds_phy_16ff_primary;
+		lvds->secondary = &lvds_phy_16ff_secondary;
+		break;
+	case -EINVAL:
+		/*
+		 * drm_of_lvds_get_dual_pixel_order returns 4 possible values.
+		 * In the case where the returned value is an error, it can be
+		 * either ENODEV or EINVAL. Seeing the structure of this
+		 * function, EINVAL means that either port1 or port2 is not
+		 * present in the device tree.
+		 * In that case, the lvds panel can be a single link panel, or
+		 * there is a semantical error in the device tree code.
+		 */
+		remote = of_get_next_available_child(port1, NULL);
+		if (remote) {
+			if (of_graph_get_remote_endpoint(remote)) {
+				lvds->link_type = LVDS_SINGLE_LINK_PRIMARY;
+				lvds->primary = &lvds_phy_16ff_primary;
+				lvds->secondary = NULL;
+			} else {
+				ret = -EINVAL;
+			}
+
+			of_node_put(remote);
+		}
+
+		remote = of_get_next_available_child(port2, NULL);
+		if (remote) {
+			if (of_graph_get_remote_endpoint(remote)) {
+				lvds->link_type = LVDS_SINGLE_LINK_SECONDARY;
+				lvds->primary = NULL;
+				lvds->secondary = &lvds_phy_16ff_secondary;
+			} else {
+				ret = (ret == -EINVAL) ? -EINVAL : 0;
+			}
+
+			of_node_put(remote);
+		}
+		break;
+	default:
+		ret = -EINVAL;
+		goto err_lvds_probe;
+	}
+	of_node_put(port1);
+	of_node_put(port2);
+
+	lvds->pllref_clk = devm_clk_get(dev, "ref");
+	if (IS_ERR(lvds->pllref_clk)) {
+		ret = PTR_ERR(lvds->pllref_clk);
+		dev_err(dev, "Unable to get reference clock: %d\n", ret);
+		goto err_lvds_probe;
+	}
+
+	ret = lvds_pixel_clk_register(lvds);
+	if (ret) {
+		dev_err(dev, "Failed to register LVDS pixel clock: %d\n", ret);
+		goto err_lvds_probe;
+	}
+
+	lvds->lvds_bridge.funcs = &lvds_bridge_funcs;
+	lvds->lvds_bridge.of_node = dev->of_node;
+	lvds->hw_version = lvds_read(lvds, LVDS_VERR);
+
+	dev_info(dev, "version 0x%02x initialized\n", lvds->hw_version);
+
+	drm_bridge_add(&lvds->lvds_bridge);
+
+	platform_set_drvdata(pdev, lvds);
+
+	clk_disable_unprepare(lvds->pclk);
+
+	return 0;
+
+err_lvds_probe:
+	clk_disable_unprepare(lvds->pclk);
+
+	return ret;
+}
+
+static int lvds_remove(struct platform_device *pdev)
+{
+	struct stm_lvds *lvds = platform_get_drvdata(pdev);
+
+	lvds_pixel_clk_unregister(lvds);
+
+	drm_bridge_remove(&lvds->lvds_bridge);
+
+	return 0;
+}
+
+static const struct of_device_id lvds_dt_ids[] = {
+	{
+		.compatible = "st,stm32-lvds",
+		.data = NULL
+	},
+	{ /* sentinel */ }
+};
+
+MODULE_DEVICE_TABLE(of, lvds_dt_ids);
+
+static struct platform_driver lvds_platform_driver = {
+	.probe = lvds_probe,
+	.remove = lvds_remove,
+	.driver = {
+		.name = "stm32-display-lvds",
+		.owner = THIS_MODULE,
+		.of_match_table = lvds_dt_ids,
+	},
+};
+
+module_platform_driver(lvds_platform_driver);
+
+MODULE_AUTHOR("Raphaël Gallais-Pou <raphael.gallais-pou@foss.st.com>");
+MODULE_AUTHOR("Philippe Cornu <philippe.cornu@foss.st.com>");
+MODULE_AUTHOR("Yannick Fertre <yannick.fertre@foss.st.com>");
+MODULE_DESCRIPTION("STMicroelectronics LVDS Display Interface Transmitter DRM driver");
+MODULE_LICENSE("GPL");
-- 
2.25.1


