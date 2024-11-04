Return-Path: <devicetree+bounces-118682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8919BB37C
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 12:34:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F7491C216AD
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 11:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 406C81C4A3C;
	Mon,  4 Nov 2024 11:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="u/xT7iS0"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC70E1CDA1C;
	Mon,  4 Nov 2024 11:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730719785; cv=none; b=Sd2XhwG5OCJ0UImh7uUP5o3XEr6PdgDvtISGjolySTMhAqQfIkfl56sxIKvdNh1M6QzZVFwsTRTbLDNAJUE5IoSfiMGZYTiIdYlwL7doz+aXJ1P/iMrqBtYQpFeUTVGJGrgv2iF2DkI7m//XzJkP1GnpBl1QVQpJnXnyjeGvw18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730719785; c=relaxed/simple;
	bh=2D6O+Yvgo0/9Nga5D7okJA8M0emYqrLeGt3KTm0hHTM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kD6rouNLt8Doovjq+nOnPBg/eZwDVBM9x+3xCFb9nonZJmI2hVhD9r9YK0MMCxDOLcEx0prXPxMx/cirmqrA3EarBrZygwWv8tvG5Xx15l8UcmDqWICQLM2VhFH8dpkGSO7dMN2aDvyk2OkVF27SQbVQ8hHPWyOsDvOEgbP3E34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=u/xT7iS0; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=dvqWptXLgrEhqvEfPmClK8RvjN4XRCzME2fg8cYaIMQ=; b=u/xT7iS09LYutJOsL6wRE9b54j
	VnF8qEKRJKSE6o0QbNhjPc9u5FUIw0fxcB3CZ4o+HzbGeomxwbr/uWaHJ7/A1Xg3x03BvjKHfVTtf
	ibb0wR9/UxTnxiWfurfJZWpRr5E0L60SzpvAtwgR7xEI1djNOLbcRUBl6PmStXnWlWuSvCpWhl+D/
	5P2+aCTs78OuzYycsFmRobXmPdj8ErvXLxutuqPT8n4DiIgNmVo2SLi1r0GizsE1ndXLJLFZggt1z
	EqPxtnwLNLLL4PIHMlPAJoZnaI7cK30eNtenExFVJ4pBwESnIJ/qPAF1p6EYbO5mu5dgc6j4Tc9Sl
	HpoAT1tQ==;
Received: from i5e860cc9.versanet.de ([94.134.12.201] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t7uzz-0008Vi-DQ; Mon, 04 Nov 2024 12:11:55 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quentin.schulz@cherry.de,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	heiko@sntech.de,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v2 2/2] phy: rockchip: Add Samsung CSI/DSI Combo DCPHY driver
Date: Mon,  4 Nov 2024 12:11:16 +0100
Message-ID: <20241104111121.99274-3-heiko@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241104111121.99274-1-heiko@sntech.de>
References: <20241104111121.99274-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Heiko Stuebner <heiko.stuebner@cherry.de>

Add phy driver needed to drive either a MIPI DSI output to a DSI display
or MIPI CSI input from a camera on rk3588.

Right now only the DSI portion is implemented as the whole camera part
needs more work in general.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 drivers/phy/rockchip/Kconfig                  |   12 +
 drivers/phy/rockchip/Makefile                 |    1 +
 .../phy/rockchip/phy-rockchip-samsung-dcphy.c | 1654 +++++++++++++++++
 3 files changed, 1667 insertions(+)
 create mode 100644 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c

diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
index 2f7a05f21dc5..2bfb42996503 100644
--- a/drivers/phy/rockchip/Kconfig
+++ b/drivers/phy/rockchip/Kconfig
@@ -83,6 +83,18 @@ config PHY_ROCKCHIP_PCIE
 	help
 	  Enable this to support the Rockchip PCIe PHY.
 
+config PHY_ROCKCHIP_SAMSUNG_DCPHY
+	tristate "Rockchip Samsung MIPI DCPHY driver"
+	depends on (ARCH_ROCKCHIP || COMPILE_TEST)
+	select GENERIC_PHY
+	select GENERIC_PHY_MIPI_DPHY
+	help
+	  Enable this to support the Rockchip MIPI DCPHY with
+	  Samsung IP block.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called phy-rockchip-samsung-dcphy
+
 config PHY_ROCKCHIP_SAMSUNG_HDPTX
 	tristate "Rockchip Samsung HDMI/eDP Combo PHY driver"
 	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
diff --git a/drivers/phy/rockchip/Makefile b/drivers/phy/rockchip/Makefile
index 010a824e32ce..117aaffd037d 100644
--- a/drivers/phy/rockchip/Makefile
+++ b/drivers/phy/rockchip/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_PHY_ROCKCHIP_INNO_HDMI)	+= phy-rockchip-inno-hdmi.o
 obj-$(CONFIG_PHY_ROCKCHIP_INNO_USB2)	+= phy-rockchip-inno-usb2.o
 obj-$(CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY)	+= phy-rockchip-naneng-combphy.o
 obj-$(CONFIG_PHY_ROCKCHIP_PCIE)		+= phy-rockchip-pcie.o
+obj-$(CONFIG_PHY_ROCKCHIP_SAMSUNG_DCPHY)	+= phy-rockchip-samsung-dcphy.o
 obj-$(CONFIG_PHY_ROCKCHIP_SAMSUNG_HDPTX)	+= phy-rockchip-samsung-hdptx.o
 obj-$(CONFIG_PHY_ROCKCHIP_SNPS_PCIE3)	+= phy-rockchip-snps-pcie3.o
 obj-$(CONFIG_PHY_ROCKCHIP_TYPEC)	+= phy-rockchip-typec.o
diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
new file mode 100644
index 000000000000..a2f897fa5516
--- /dev/null
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -0,0 +1,1654 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) Rockchip Electronics Co.Ltd
+ * Author:
+ *      Guochun Huang <hero.huang@rock-chips.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/regmap.h>
+#include <linux/reset.h>
+
+#define UPDATE(x, h, l)	(((x) << (l)) & GENMASK((h), (l)))
+#define HIWORD_UPDATE(v, h, l)	(((v) << (l)) | (GENMASK((h), (l)) << 16))
+
+#define BIAS_CON0		0x0000
+#define BIAS_CON1		0x0004
+#define BIAS_CON2		0x0008
+#define BIAS_CON4		0x0010
+#define I_MUX_SEL_MASK		GENMASK(6, 5)
+#define I_MUX_SEL(x)		UPDATE(x, 6, 5)
+#define I_MUX_SEL_400MV		I_MUX_SEL(0)
+#define I_MUX_SEL_200MV		I_MUX_SEL(1)
+#define I_MUX_SEL_530MV		I_MUX_SEL(2)
+
+#define PLL_CON0		0x0100
+#define PLL_EN			BIT(12)
+#define S_MASK			GENMASK(10, 8)
+#define S(x)			UPDATE(x, 10, 8)
+#define P_MASK			GENMASK(5, 0)
+#define P(x)			UPDATE(x, 5, 0)
+#define PLL_CON1		0x0104
+#define PLL_CON2		0x0108
+#define M_MASK			GENMASK(9, 0)
+#define M(x)			UPDATE(x, 9, 0)
+#define PLL_CON3		0x010c
+#define MRR_MASK		GENMASK(13, 8)
+#define MRR(x)			UPDATE(x, 13, 8)
+#define MFR_MASK                GENMASK(7, 0)
+#define MFR(x)			UPDATE(x, 7, 0)
+#define PLL_CON4		0x0110
+#define SSCG_EN			BIT(11)
+#define PLL_CON5		0x0114
+#define RESET_N_SEL		BIT(10)
+#define PLL_ENABLE_SEL		BIT(8)
+#define PLL_CON6		0x0118
+#define PLL_CON7		0x011c
+#define PLL_LOCK_CNT(x)		UPDATE(x, 15, 0)
+#define PLL_CON8		0x0120
+#define PLL_STB_CNT(x)		UPDATE(x, 15, 0)
+#define PLL_STAT0		0x0140
+#define PLL_LOCK		BIT(0)
+
+#define DPHY_MC_GNR_CON0	0x0300
+#define PHY_READY		BIT(1)
+#define PHY_ENABLE		BIT(0)
+#define DPHY_MC_GNR_CON1	0x0304
+#define T_PHY_READY(x)		UPDATE(x, 15, 0)
+#define DPHY_MC_ANA_CON0	0x0308
+#define EDGE_CON(x)		UPDATE(x, 14, 12)
+#define EDGE_CON_DIR(x)		UPDATE(x, 9, 9)
+#define EDGE_CON_EN		BIT(8)
+#define RES_UP(x)		UPDATE(x, 7, 4)
+#define RES_DN(x)		UPDATE(x, 3, 0)
+#define DPHY_MC_ANA_CON1	0x030c
+#define DPHY_MC_ANA_CON2	0x0310
+#define HS_VREG_AMP_ICON(x)	UPDATE(x, 1, 0)
+#define DPHY_MC_TIME_CON0	0x0330
+#define HSTX_CLK_SEL		BIT(12)
+#define T_LPX(x)		UPDATE(x, 11, 4)
+#define DPHY_MC_TIME_CON1	0x0334
+#define T_CLK_ZERO(x)		UPDATE(x, 15, 8)
+#define T_CLK_PREPARE(x)	UPDATE(x, 7, 0)
+#define DPHY_MC_TIME_CON2	0x0338
+#define T_HS_EXIT(x)		UPDATE(x, 15, 8)
+#define T_CLK_TRAIL(x)		UPDATE(x, 7, 0)
+#define DPHY_MC_TIME_CON3	0x033c
+#define T_CLK_POST(x)		UPDATE(x, 7, 0)
+#define DPHY_MC_TIME_CON4	0x0340
+#define T_ULPS_EXIT(x)		UPDATE(x, 9, 0)
+#define DPHY_MC_DESKEW_CON0	0x0350
+#define SKEW_CAL_RUN_TIME(x)	UPDATE(x, 15, 12)
+
+#define SKEW_CAL_INIT_RUN_TIME(x)	UPDATE(x, 11, 8)
+#define SKEW_CAL_INIT_WAIT_TIME(x)	UPDATE(x, 7, 4)
+#define SKEW_CAL_EN			BIT(0)
+
+#define COMBO_MD0_GNR_CON0	0x0400
+#define COMBO_MD0_GNR_CON1	0x0404
+#define COMBO_MD0_ANA_CON0	0x0408
+#define COMBO_MD0_ANA_CON1      0x040C
+#define COMBO_MD0_ANA_CON2	0x0410
+
+#define COMBO_MD0_TIME_CON0	0x0430
+#define COMBO_MD0_TIME_CON1	0x0434
+#define COMBO_MD0_TIME_CON2	0x0438
+#define COMBO_MD0_TIME_CON3	0x043C
+#define COMBO_MD0_TIME_CON4	0x0440
+#define COMBO_MD0_DATA_CON0	0x0444
+
+#define COMBO_MD1_GNR_CON0	0x0500
+#define COMBO_MD1_GNR_CON1	0x0504
+#define COMBO_MD1_ANA_CON0	0x0508
+#define COMBO_MD1_ANA_CON1	0x050c
+#define COMBO_MD1_ANA_CON2	0x0510
+#define COMBO_MD1_TIME_CON0	0x0530
+#define COMBO_MD1_TIME_CON1	0x0534
+#define COMBO_MD1_TIME_CON2	0x0538
+#define COMBO_MD1_TIME_CON3	0x053C
+#define COMBO_MD1_TIME_CON4	0x0540
+#define COMBO_MD1_DATA_CON0	0x0544
+
+#define COMBO_MD2_GNR_CON0	0x0600
+#define COMBO_MD2_GNR_CON1	0x0604
+#define COMBO_MD2_ANA_CON0	0X0608
+#define COMBO_MD2_ANA_CON1	0X060C
+#define COMBO_MD2_ANA_CON2	0X0610
+#define COMBO_MD2_TIME_CON0	0x0630
+#define COMBO_MD2_TIME_CON1	0x0634
+#define COMBO_MD2_TIME_CON2	0x0638
+#define COMBO_MD2_TIME_CON3	0x063C
+#define COMBO_MD2_TIME_CON4	0x0640
+#define COMBO_MD2_DATA_CON0	0x0644
+
+#define DPHY_MD3_GNR_CON0	0x0700
+#define DPHY_MD3_GNR_CON1	0x0704
+#define DPHY_MD3_ANA_CON0	0X0708
+#define DPHY_MD3_ANA_CON1	0X070C
+#define DPHY_MD3_ANA_CON2	0X0710
+#define DPHY_MD3_TIME_CON0	0x0730
+#define DPHY_MD3_TIME_CON1	0x0734
+#define DPHY_MD3_TIME_CON2	0x0738
+#define DPHY_MD3_TIME_CON3	0x073C
+#define DPHY_MD3_TIME_CON4	0x0740
+#define DPHY_MD3_DATA_CON0	0x0744
+
+#define T_LP_EXIT_SKEW(x)	UPDATE(x, 3, 2)
+#define T_LP_ENTRY_SKEW(x)	UPDATE(x, 1, 0)
+#define T_HS_ZERO(x)		UPDATE(x, 15, 8)
+#define T_HS_PREPARE(x)		UPDATE(x, 7, 0)
+#define T_HS_EXIT(x)		UPDATE(x, 15, 8)
+#define T_HS_TRAIL(x)		UPDATE(x, 7, 0)
+#define T_TA_GET(x)		UPDATE(x, 7, 4)
+#define T_TA_GO(x)		UPDATE(x, 3, 0)
+
+/* MIPI_CDPHY_GRF registers */
+#define MIPI_DCPHY_GRF_CON0	0x0000
+#define S_CPHY_MODE		HIWORD_UPDATE(1, 3, 3)
+#define M_CPHY_MODE		HIWORD_UPDATE(1, 0, 0)
+
+#define RX_CLK_THS_SETTLE		(0xb30)
+#define RX_LANE0_THS_SETTLE		(0xC30)
+#define RX_LANE0_ERR_SOT_SYNC		(0xC34)
+#define RX_LANE1_THS_SETTLE		(0xD30)
+#define RX_LANE1_ERR_SOT_SYNC		(0xD34)
+#define RX_LANE2_THS_SETTLE		(0xE30)
+#define RX_LANE2_ERR_SOT_SYNC		(0xE34)
+#define RX_LANE3_THS_SETTLE		(0xF30)
+#define RX_LANE3_ERR_SOT_SYNC		(0xF34)
+#define RX_CLK_LANE_ENABLE		(0xB00)
+#define RX_DATA_LANE0_ENABLE		(0xC00)
+#define RX_DATA_LANE1_ENABLE		(0xD00)
+#define RX_DATA_LANE2_ENABLE		(0xE00)
+#define RX_DATA_LANE3_ENABLE		(0xF00)
+
+#define RX_S0C_GNR_CON1			(0xB04)
+#define RX_S0C_ANA_CON1			(0xB0c)
+#define RX_S0C_ANA_CON2			(0xB10)
+#define RX_S0C_ANA_CON3			(0xB14)
+#define RX_COMBO_S0D0_GNR_CON1		(0xC04)
+#define RX_COMBO_S0D0_ANA_CON1		(0xC0c)
+#define RX_COMBO_S0D0_ANA_CON2		(0xC10)
+#define RX_COMBO_S0D0_ANA_CON3		(0xC14)
+#define RX_COMBO_S0D0_ANA_CON6		(0xC20)
+#define RX_COMBO_S0D0_ANA_CON7		(0xC24)
+#define RX_COMBO_S0D0_DESKEW_CON0	(0xC40)
+#define RX_COMBO_S0D0_DESKEW_CON2	(0xC48)
+#define RX_COMBO_S0D0_DESKEW_CON4	(0xC50)
+#define RX_COMBO_S0D0_CRC_CON1		(0xC64)
+#define RX_COMBO_S0D0_CRC_CON2		(0xC68)
+#define RX_COMBO_S0D1_GNR_CON1		(0xD04)
+#define RX_COMBO_S0D1_ANA_CON1		(0xD0c)
+#define RX_COMBO_S0D1_ANA_CON2		(0xD10)
+#define RX_COMBO_S0D1_ANA_CON3		(0xD14)
+#define RX_COMBO_S0D1_ANA_CON6		(0xD20)
+#define RX_COMBO_S0D1_ANA_CON7		(0xD24)
+#define RX_COMBO_S0D1_DESKEW_CON0	(0xD40)
+#define RX_COMBO_S0D1_DESKEW_CON2	(0xD48)
+#define RX_COMBO_S0D1_DESKEW_CON4	(0xD50)
+#define RX_COMBO_S0D1_CRC_CON1		(0xD64)
+#define RX_COMBO_S0D1_CRC_CON2		(0xD68)
+#define RX_COMBO_S0D2_GNR_CON1		(0xE04)
+#define RX_COMBO_S0D2_ANA_CON1		(0xE0c)
+#define RX_COMBO_S0D2_ANA_CON2		(0xE10)
+#define RX_COMBO_S0D2_ANA_CON3		(0xE14)
+#define RX_COMBO_S0D2_ANA_CON6		(0xE20)
+#define RX_COMBO_S0D2_ANA_CON7		(0xE24)
+#define RX_COMBO_S0D2_DESKEW_CON0	(0xE40)
+#define RX_COMBO_S0D2_DESKEW_CON2	(0xE48)
+#define RX_COMBO_S0D2_DESKEW_CON4	(0xE50)
+#define RX_COMBO_S0D2_CRC_CON1		(0xE64)
+#define RX_COMBO_S0D2_CRC_CON2		(0xE68)
+#define RX_S0D3_GNR_CON1		(0xF04)
+#define RX_S0D3_ANA_CON1		(0xF0c)
+#define RX_S0D3_ANA_CON2		(0xF10)
+#define RX_S0D3_ANA_CON3		(0xF14)
+#define RX_S0D3_DESKEW_CON0		(0xF40)
+#define RX_S0D3_DESKEW_CON2		(0xF48)
+#define RX_S0D3_DESKEW_CON4		(0xF50)
+
+enum hs_drv_res_ohm {
+	STRENGTH_30_OHM = 0x8,
+	STRENGTH_31_2_OHM,
+	STRENGTH_32_5_OHM,
+	STRENGTH_34_OHM,
+	STRENGTH_35_5_OHM,
+	STRENGTH_37_OHM,
+	STRENGTH_39_OHM,
+	STRENGTH_41_OHM,
+	STRENGTH_43_OHM = 0x0,
+	STRENGTH_46_OHM,
+	STRENGTH_49_OHM,
+	STRENGTH_52_OHM,
+	STRENGTH_56_OHM,
+	STRENGTH_60_OHM,
+	STRENGTH_66_OHM,
+	STRENGTH_73_OHM,
+};
+
+struct hs_drv_res_cfg {
+	enum hs_drv_res_ohm clk_hs_drv_up_ohm;
+	enum hs_drv_res_ohm clk_hs_drv_down_ohm;
+	enum hs_drv_res_ohm data_hs_drv_up_ohm;
+	enum hs_drv_res_ohm data_hs_drv_down_ohm;
+};
+
+struct samsung_mipi_dcphy_plat_data {
+	const struct hs_drv_res_cfg *dphy_hs_drv_res_cfg;
+	u32 dphy_tx_max_lane_kbps;
+};
+
+struct samsung_mipi_dcphy {
+	struct device *dev;
+	struct clk *ref_clk;
+	struct clk *pclk;
+	struct regmap *regmap;
+	struct regmap *grf_regmap;
+	struct reset_control *m_phy_rst;
+	struct reset_control *s_phy_rst;
+	struct reset_control *apb_rst;
+	struct reset_control *grf_apb_rst;
+	unsigned int lanes;
+
+	const struct samsung_mipi_dcphy_plat_data *pdata;
+	struct {
+		unsigned long long rate;
+		u8 prediv;
+		u16 fbdiv;
+		long dsm;
+		u8 scaler;
+
+		bool ssc_en;
+		u8 mfr;
+		u8 mrr;
+	} pll;
+};
+
+struct samsung_mipi_dphy_timing {
+	unsigned int max_lane_mbps;
+	u8 clk_prepare;
+	u8 clk_zero;
+	u8 clk_post;
+	u8 clk_trail_eot;
+	u8 hs_prepare;
+	u8 hs_zero;
+	u8 hs_trail_eot;
+	u8 lpx;
+	u8 hs_exit;
+	u8 hs_settle;
+};
+
+static const
+struct samsung_mipi_dphy_timing samsung_mipi_dphy_timing_table[] = {
+	{6500, 32, 117, 31, 28, 30, 56, 27, 24, 44, 37},
+	{6490, 32, 116, 31, 28, 30, 56, 27, 24, 44, 37},
+	{6480, 32, 116, 31, 28, 30, 56, 27, 24, 44, 37},
+	{6470, 32, 116, 31, 28, 30, 56, 27, 24, 44, 37},
+	{6460, 32, 116, 31, 28, 30, 56, 27, 24, 44, 37},
+	{6450, 32, 115, 31, 28, 30, 56, 27, 24, 44, 37},
+	{6440, 32, 115, 31, 28, 30, 56, 27, 24, 44, 37},
+	{6430, 31, 116, 31, 28, 30, 55, 27, 24, 44, 37},
+	{6420, 31, 116, 31, 28, 30, 55, 27, 24, 44, 37},
+	{6410, 31, 116, 31, 27, 30, 55, 27, 24, 44, 37},
+	{6400, 31, 115, 30, 27, 30, 55, 27, 23, 43, 36},
+	{6390, 31, 115, 30, 27, 30, 55, 27, 23, 43, 36},
+	{6380, 31, 115, 30, 27, 30, 55, 27, 23, 43, 36},
+	{6370, 31, 115, 30, 27, 30, 55, 26, 23, 43, 36},
+	{6360, 31, 114, 30, 27, 30, 54, 26, 23, 43, 36},
+	{6350, 31, 114, 30, 27, 30, 54, 26, 23, 43, 36},
+	{6340, 31, 114, 30, 27, 30, 54, 26, 23, 43, 36},
+	{6330, 31, 114, 30, 27, 30, 54, 26, 23, 43, 36},
+	{6320, 31, 113, 30, 27, 30, 54, 26, 23, 43, 36},
+	{6310, 31, 113, 30, 27, 30, 54, 26, 23, 43, 36},
+	{6300, 31, 113, 30, 27, 30, 54, 26, 23, 43, 36},
+	{6290, 31, 113, 30, 27, 29, 54, 26, 23, 43, 36},
+	{6280, 31, 112, 30, 27, 29, 54, 26, 23, 43, 36},
+	{6270, 31, 112, 30, 27, 29, 54, 26, 23, 43, 36},
+	{6260, 31, 112, 30, 27, 29, 54, 26, 23, 43, 36},
+	{6250, 31, 112, 30, 27, 29, 54, 26, 23, 42, 36},
+	{6240, 30, 113, 30, 27, 29, 54, 26, 23, 42, 36},
+	{6230, 30, 112, 30, 27, 29, 54, 26, 23, 42, 35},
+	{6220, 30, 112, 30, 27, 29, 53, 26, 23, 42, 35},
+	{6210, 30, 112, 30, 27, 29, 53, 26, 23, 42, 35},
+	{6200, 30, 112, 29, 27, 29, 53, 26, 23, 42, 35},
+	{6190, 30, 111, 29, 27, 29, 53, 26, 23, 42, 35},
+	{6180, 30, 111, 29, 27, 29, 53, 26, 23, 42, 35},
+	{6170, 30, 111, 29, 26, 29, 53, 26, 23, 42, 35},
+	{6160, 30, 111, 29, 26, 29, 53, 26, 23, 42, 35},
+	{6150, 30, 110, 29, 26, 29, 53, 26, 23, 42, 35},
+	{6140, 30, 110, 29, 26, 29, 52, 26, 23, 42, 35},
+	{6130, 30, 110, 29, 26, 29, 52, 25, 22, 42, 35},
+	{6120, 30, 110, 29, 26, 29, 52, 25, 22, 42, 35},
+	{6110, 30, 110, 29, 26, 29, 52, 25, 22, 42, 35},
+	{6100, 30, 109, 29, 26, 29, 52, 25, 22, 41, 35},
+	{6090, 30, 109, 29, 26, 29, 52, 25, 22, 41, 35},
+	{6080, 30, 109, 29, 26, 28, 53, 25, 22, 41, 35},
+	{6070, 30, 109, 29, 26, 28, 52, 25, 22, 41, 34},
+	{6060, 30, 108, 29, 26, 28, 52, 25, 22, 41, 34},
+	{6050, 30, 108, 29, 26, 28, 52, 25, 22, 41, 34},
+	{6040, 29, 109, 29, 26, 28, 52, 25, 22, 41, 34},
+	{6030, 29, 109, 29, 26, 28, 52, 25, 22, 41, 34},
+	{6020, 29, 108, 29, 26, 28, 52, 25, 22, 41, 34},
+	{6010, 29, 108, 29, 26, 28, 52, 25, 22, 41, 34},
+	{6000, 29, 108, 28, 26, 28, 51, 25, 22, 41, 34},
+	{5990, 29, 108, 28, 26, 28, 51, 25, 22, 41, 34},
+	{5980, 29, 107, 28, 26, 28, 51, 25, 22, 41, 34},
+	{5970, 29, 107, 28, 26, 28, 51, 25, 22, 41, 34},
+	{5960, 29, 107, 28, 26, 28, 51, 25, 22, 40, 34},
+	{5950, 29, 107, 28, 26, 28, 51, 25, 22, 40, 34},
+	{5940, 29, 107, 28, 25, 28, 51, 25, 22, 40, 34},
+	{5930, 29, 106, 28, 25, 28, 50, 25, 22, 40, 34},
+	{5920, 29, 106, 28, 25, 28, 50, 25, 22, 40, 34},
+	{5910, 29, 106, 28, 25, 28, 50, 25, 22, 40, 34},
+	{5900, 29, 106, 28, 25, 28, 50, 24, 22, 40, 33},
+	{5890, 29, 105, 28, 25, 28, 50, 24, 22, 40, 33},
+	{5880, 29, 105, 28, 25, 28, 50, 24, 22, 40, 33},
+	{5870, 29, 105, 28, 25, 27, 51, 24, 22, 40, 33},
+	{5860, 29, 105, 28, 25, 27, 51, 24, 21, 40, 33},
+	{5850, 29, 104, 28, 25, 27, 50, 24, 21, 40, 33},
+	{5840, 28, 105, 28, 25, 27, 50, 24, 21, 40, 33},
+	{5830, 28, 105, 28, 25, 27, 50, 24, 21, 40, 33},
+	{5820, 28, 105, 28, 25, 27, 50, 24, 21, 40, 33},
+	{5810, 28, 104, 28, 25, 27, 50, 24, 21, 39, 33},
+	{5800, 28, 104, 27, 25, 27, 50, 24, 21, 39, 33},
+	{5790, 28, 104, 27, 25, 27, 50, 24, 21, 39, 33},
+	{5780, 28, 104, 27, 25, 27, 49, 24, 21, 39, 33},
+	{5770, 28, 104, 27, 25, 27, 49, 24, 21, 39, 33},
+	{5760, 28, 103, 27, 25, 27, 49, 24, 21, 39, 33},
+	{5750, 28, 103, 27, 25, 27, 49, 24, 21, 39, 33},
+	{5740, 28, 103, 27, 25, 27, 49, 24, 21, 39, 33},
+	{5730, 28, 103, 27, 25, 27, 49, 24, 21, 39, 32},
+	{5720, 28, 102, 27, 25, 27, 49, 24, 21, 39, 32},
+	{5710, 28, 102, 27, 25, 27, 48, 24, 21, 39, 32},
+	{5700, 28, 102, 27, 24, 27, 48, 24, 21, 39, 32},
+	{5690, 28, 102, 27, 24, 27, 48, 24, 21, 39, 32},
+	{5680, 28, 101, 27, 24, 27, 48, 24, 21, 39, 32},
+	{5670, 28, 101, 27, 24, 27, 48, 23, 21, 38, 32},
+	{5660, 28, 101, 27, 24, 26, 49, 23, 21, 38, 32},
+	{5650, 28, 101, 27, 24, 26, 49, 23, 21, 38, 32},
+	{5640, 27, 101, 27, 24, 26, 48, 23, 21, 38, 32},
+	{5630, 27, 101, 27, 24, 26, 48, 23, 21, 38, 32},
+	{5620, 27, 101, 27, 24, 26, 48, 23, 21, 38, 32},
+	{5610, 27, 101, 27, 24, 26, 48, 23, 21, 38, 32},
+	{5600, 27, 101, 26, 24, 26, 48, 23, 20, 38, 32},
+	{5590, 27, 100, 26, 24, 26, 48, 23, 20, 38, 32},
+	{5580, 27, 100, 26, 24, 26, 48, 23, 20, 38, 32},
+	{5570, 27, 100, 26, 24, 26, 48, 23, 20, 38, 31},
+	{5560, 27, 100, 26, 24, 26, 47, 23, 20, 38, 31},
+	{5550, 27,  99, 26, 24, 26, 47, 23, 20, 38, 31},
+	{5540, 27,  99, 26, 24, 26, 47, 23, 20, 38, 31},
+	{5530, 27,  99, 26, 24, 26, 47, 23, 20, 38, 31},
+	{5520, 27,  99, 26, 24, 26, 47, 23, 20, 37, 31},
+	{5510, 27,  98, 26, 24, 26, 47, 23, 20, 37, 31},
+	{5500, 27,  98, 26, 24, 26, 47, 23, 20, 37, 31},
+	{5490, 27,  98, 26, 24, 26, 46, 23, 20, 37, 31},
+	{5480, 27,  98, 26, 24, 26, 46, 23, 20, 37, 31},
+	{5470, 27,  97, 26, 23, 26, 46, 23, 20, 37, 31},
+	{5460, 27,  97, 26, 23, 26, 46, 23, 20, 37, 31},
+	{5450, 27,  97, 26, 23, 25, 47, 23, 20, 37, 31},
+	{5440, 26,  98, 26, 23, 25, 47, 23, 20, 37, 31},
+	{5430, 26,  98, 26, 23, 25, 47, 22, 20, 37, 31},
+	{5420, 26,  97, 26, 23, 25, 46, 22, 20, 37, 31},
+	{5410, 26,  97, 26, 23, 25, 46, 22, 20, 37, 31},
+	{5400, 26,  97, 25, 23, 25, 46, 22, 20, 37, 30},
+	{5390, 26,  97, 25, 23, 25, 46, 22, 20, 37, 30},
+	{5380, 26,  96, 25, 23, 25, 46, 22, 20, 36, 30},
+	{5370, 26,  96, 25, 23, 25, 46, 22, 20, 36, 30},
+	{5360, 26,  96, 25, 23, 25, 46, 22, 20, 36, 30},
+	{5350, 26,  96, 25, 23, 25, 46, 22, 20, 36, 30},
+	{5340, 26,  95, 25, 23, 25, 45, 22, 20, 36, 30},
+	{5330, 26,  95, 25, 23, 25, 45, 22, 19, 36, 30},
+	{5320, 26,  95, 25, 23, 25, 45, 22, 19, 36, 30},
+	{5310, 26,  95, 25, 23, 25, 45, 22, 19, 36, 30},
+	{5300, 26,  95, 25, 23, 25, 45, 22, 19, 36, 30},
+	{5290, 26,  94, 25, 23, 25, 45, 22, 19, 36, 30},
+	{5280, 26,  94, 25, 23, 25, 45, 22, 19, 36, 30},
+	{5270, 26,  94, 25, 23, 25, 44, 22, 19, 36, 30},
+	{5260, 26,  94, 25, 23, 25, 44, 22, 19, 36, 30},
+	{5250, 25,  94, 25, 23, 24, 45, 22, 19, 36, 30},
+	{5240, 25,  94, 25, 23, 24, 45, 22, 19, 36, 29},
+	{5230, 25,  94, 25, 22, 24, 45, 22, 19, 35, 29},
+	{5220, 25,  94, 25, 22, 24, 45, 22, 19, 35, 29},
+	{5210, 25,  93, 25, 22, 24, 45, 22, 19, 35, 29},
+	{5200, 25,  93, 24, 22, 24, 44, 21, 19, 35, 29},
+	{5190, 25,  93, 24, 22, 24, 44, 21, 19, 35, 29},
+	{5180, 25,  93, 24, 22, 24, 44, 21, 19, 35, 29},
+	{5170, 25,  92, 24, 22, 24, 44, 21, 19, 35, 29},
+	{5160, 25,  92, 24, 22, 24, 44, 21, 19, 35, 29},
+	{5150, 25,  92, 24, 22, 24, 44, 21, 19, 35, 29},
+	{5140, 25,  92, 24, 22, 24, 44, 21, 19, 35, 29},
+	{5130, 25,  92, 24, 22, 24, 43, 21, 19, 35, 29},
+	{5120, 25,  91, 24, 22, 24, 43, 21, 19, 35, 29},
+	{5110, 25,  91, 24, 22, 24, 43, 21, 19, 35, 29},
+	{5100, 25,  91, 24, 22, 24, 43, 21, 19, 35, 29},
+	{5090, 25,  91, 24, 22, 24, 43, 21, 19, 34, 29},
+	{5080, 25,  90, 24, 22, 24, 43, 21, 19, 34, 29},
+	{5070, 25,  90, 24, 22, 24, 43, 21, 19, 34, 28},
+	{5060, 25,  90, 24, 22, 24, 43, 21, 18, 34, 28},
+	{5050, 24,  91, 24, 22, 24, 42, 21, 18, 34, 28},
+	{5040, 24,  90, 24, 22, 23, 43, 21, 18, 34, 28},
+	{5030, 24,  90, 24, 22, 23, 43, 21, 18, 34, 28},
+	{5020, 24,  90, 24, 22, 23, 43, 21, 18, 34, 28},
+	{5010, 24,  90, 24, 22, 23, 43, 21, 18, 34, 28},
+	{5000, 24,  89, 23, 21, 23, 43, 21, 18, 34, 28},
+	{4990, 24,  89, 23, 21, 23, 43, 21, 18, 34, 28},
+	{4980, 24,  89, 23, 21, 23, 42, 21, 18, 34, 28},
+	{4970, 24,  89, 23, 21, 23, 42, 21, 18, 34, 28},
+	{4960, 24,  89, 23, 21, 23, 42, 20, 18, 34, 28},
+	{4950, 24,  88, 23, 21, 23, 42, 20, 18, 34, 28},
+	{4940, 24,  88, 23, 21, 23, 42, 20, 18, 33, 28},
+	{4930, 24,  88, 23, 21, 23, 42, 20, 18, 33, 28},
+	{4920, 24,  88, 23, 21, 23, 42, 20, 18, 33, 28},
+	{4910, 24,  87, 23, 21, 23, 41, 20, 18, 33, 28},
+	{4900, 24,  87, 23, 21, 23, 41, 20, 18, 33, 27},
+	{4890, 24,  87, 23, 21, 23, 41, 20, 18, 33, 27},
+	{4880, 24,  87, 23, 21, 23, 41, 20, 18, 33, 27},
+	{4870, 24,  86, 23, 21, 23, 41, 20, 18, 33, 27},
+	{4860, 24,  86, 23, 21, 23, 41, 20, 18, 33, 27},
+	{4850, 23,  87, 23, 21, 23, 41, 20, 18, 33, 27},
+	{4840, 23,  87, 23, 21, 23, 40, 20, 18, 33, 27},
+	{4830, 23,  86, 23, 21, 22, 41, 20, 18, 33, 27},
+	{4820, 23,  86, 23, 21, 22, 41, 20, 18, 33, 27},
+	{4810, 23,  86, 23, 21, 22, 41, 20, 18, 33, 27},
+	{4800, 23,  86, 22, 21, 22, 41, 20, 17, 32, 27},
+	{4790, 23,  86, 22, 21, 22, 41, 20, 17, 32, 27},
+	{4780, 23,  85, 22, 21, 22, 41, 20, 17, 32, 27},
+	{4770, 23,  85, 22, 21, 22, 41, 20, 17, 32, 27},
+	{4760, 23,  85, 22, 20, 22, 40, 20, 17, 32, 27},
+	{4750, 23,  85, 22, 20, 22, 40, 20, 17, 32, 27},
+	{4740, 23,  84, 22, 20, 22, 40, 20, 17, 32, 26},
+	{4730, 23,  84, 22, 20, 22, 40, 19, 17, 32, 26},
+	{4720, 23,  84, 22, 20, 22, 40, 19, 17, 32, 26},
+	{4710, 23,  84, 22, 20, 22, 40, 19, 17, 32, 26},
+	{4700, 23,  83, 22, 20, 22, 40, 19, 17, 32, 26},
+	{4690, 23,  83, 22, 20, 22, 39, 19, 17, 32, 26},
+	{4680, 23,  83, 22, 20, 22, 39, 19, 17, 32, 26},
+	{4670, 23,  83, 22, 20, 22, 39, 19, 17, 32, 26},
+	{4660, 23,  82, 22, 20, 22, 39, 19, 17, 32, 26},
+	{4650, 22,  83, 22, 20, 22, 39, 19, 17, 31, 26},
+	{4640, 22,  83, 22, 20, 22, 39, 19, 17, 31, 26},
+	{4630, 22,  83, 22, 20, 22, 39, 19, 17, 31, 26},
+	{4620, 22,  83, 22, 20, 21, 39, 19, 17, 31, 26},
+	{4610, 22,  82, 22, 20, 21, 39, 19, 17, 31, 26},
+	{4600, 22,  82, 21, 20, 21, 39, 19, 17, 31, 26},
+	{4590, 22,  82, 21, 20, 21, 39, 19, 17, 31, 26},
+	{4580, 22,  82, 21, 20, 21, 39, 19, 17, 31, 26},
+	{4570, 22,  81, 21, 20, 21, 39, 19, 17, 31, 25},
+	{4560, 22,  81, 21, 20, 21, 39, 19, 17, 31, 25},
+	{4550, 22,  81, 21, 20, 21, 38, 19, 17, 31, 25},
+	{4540, 22,  81, 21, 20, 21, 38, 19, 17, 31, 25},
+	{4530, 22,  80, 21, 19, 21, 38, 19, 16, 31, 25},
+	{4520, 22,  80, 21, 19, 21, 38, 19, 16, 31, 25},
+	{4510, 22,  80, 21, 19, 21, 38, 19, 16, 31, 25},
+	{4500, 22,  80, 21, 19, 21, 38, 19, 16, 30, 25},
+	{4490, 22,  80, 21, 19, 21, 38, 18, 16, 30, 25},
+	{4480, 22,  79, 21, 19, 21, 38, 18, 16, 30, 25},
+	{4470, 22,  79, 21, 19, 21, 37, 18, 16, 30, 25},
+	{4460, 22,  79, 21, 19, 21, 37, 18, 16, 30, 25},
+	{4450, 21,  80, 21, 19, 21, 37, 18, 16, 30, 25},
+	{4440, 21,  79, 21, 19, 21, 37, 18, 16, 30, 25},
+	{4430, 21,  79, 21, 19, 21, 37, 18, 16, 30, 25},
+	{4420, 21,  79, 21, 19, 21, 37, 18, 16, 30, 25},
+	{4410, 21,  79, 21, 19, 20, 38, 18, 16, 30, 25},
+	{4400, 21,  78, 20, 19, 20, 37, 18, 16, 30, 24},
+	{4390, 21,  78, 20, 19, 20, 37, 18, 16, 30, 24},
+	{4380, 21,  78, 20, 19, 20, 37, 18, 16, 30, 24},
+	{4370, 21,  78, 20, 19, 20, 37, 18, 16, 30, 24},
+	{4360, 21,  77, 20, 19, 20, 37, 18, 16, 29, 24},
+	{4350, 21,  77, 20, 19, 20, 37, 18, 16, 29, 24},
+	{4340, 21,  77, 20, 19, 20, 37, 18, 16, 29, 24},
+	{4330, 21,  77, 20, 19, 20, 36, 18, 16, 29, 24},
+	{4320, 21,  77, 20, 19, 20, 36, 18, 16, 29, 24},
+	{4310, 21,  76, 20, 19, 20, 36, 18, 16, 29, 24},
+	{4300, 21,  76, 20, 18, 20, 36, 18, 16, 29, 24},
+	{4290, 21,  76, 20, 18, 20, 36, 18, 16, 29, 24},
+	{4280, 21,  76, 20, 18, 20, 36, 18, 16, 29, 24},
+	{4270, 21,  75, 20, 18, 20, 36, 18, 16, 29, 24},
+	{4260, 21,  75, 20, 18, 20, 35, 17, 15, 29, 24},
+	{4250, 20,  76, 20, 18, 20, 35, 17, 15, 29, 24},
+	{4240, 20,  76, 20, 18, 20, 35, 17, 15, 29, 23},
+	{4230, 20,  75, 20, 18, 20, 35, 17, 15, 29, 23},
+	{4220, 20,  75, 20, 18, 20, 35, 17, 15, 29, 23},
+	{4210, 20,  75, 20, 18, 20, 35, 17, 15, 28, 23},
+	{4200, 20,  75, 19, 18, 19, 36, 17, 15, 28, 23},
+	{4190, 20,  74, 19, 18, 19, 36, 17, 15, 28, 23},
+	{4180, 20,  74, 19, 18, 19, 35, 17, 15, 28, 23},
+	{4170, 20,  74, 19, 18, 19, 35, 17, 15, 28, 23},
+	{4160, 20,  74, 19, 18, 19, 35, 17, 15, 28, 23},
+	{4150, 20,  74, 19, 18, 19, 35, 17, 15, 28, 23},
+	{4140, 20,  73, 19, 18, 19, 35, 17, 15, 28, 23},
+	{4130, 20,  73, 19, 18, 19, 35, 17, 15, 28, 23},
+	{4120, 20,  73, 19, 18, 19, 35, 17, 15, 28, 23},
+	{4110, 20,  73, 19, 18, 19, 34, 17, 15, 28, 23},
+	{4100, 20,  72, 19, 18, 19, 34, 17, 15, 28, 23},
+	{4090, 20,  72, 19, 18, 19, 34, 17, 15, 28, 23},
+	{4080, 20,  72, 19, 18, 19, 34, 17, 15, 28, 23},
+	{4070, 20,  72, 19, 18, 19, 34, 17, 15, 27, 22},
+	{4060, 19,  72, 19, 17, 19, 34, 17, 15, 27, 22},
+	{4050, 19,  72, 19, 17, 19, 34, 17, 15, 27, 22},
+	{4040, 19,  72, 19, 17, 19, 33, 17, 15, 27, 22},
+	{4030, 19,  72, 19, 17, 19, 33, 17, 15, 27, 22},
+	{4020, 19,  71, 19, 17, 19, 33, 16, 15, 27, 22},
+	{4010, 19,  71, 19, 17, 19, 33, 16, 15, 27, 22},
+	{4000, 19,  71, 18, 17, 19, 33, 16, 14, 27, 22},
+	{3990, 19,  71, 18, 17, 18, 34, 16, 14, 27, 22},
+	{3980, 19,  71, 18, 17, 18, 34, 16, 14, 27, 22},
+	{3970, 19,  70, 18, 17, 18, 33, 16, 14, 27, 22},
+	{3960, 19,  70, 18, 17, 18, 33, 16, 14, 27, 22},
+	{3950, 19,  70, 18, 17, 18, 33, 16, 14, 27, 22},
+	{3940, 19,  70, 18, 17, 18, 33, 16, 14, 27, 22},
+	{3930, 19,  69, 18, 17, 18, 33, 16, 14, 27, 22},
+	{3920, 19,  69, 18, 17, 18, 33, 16, 14, 26, 22},
+	{3910, 19,  69, 18, 17, 18, 33, 16, 14, 26, 22},
+	{3900, 19,  69, 18, 17, 18, 33, 16, 14, 26, 21},
+	{3890, 19,  68, 18, 17, 18, 32, 16, 14, 26, 21},
+	{3880, 19,  68, 18, 17, 18, 32, 16, 14, 26, 21},
+	{3870, 19,  68, 18, 17, 18, 32, 16, 14, 26, 21},
+	{3860, 18,  69, 18, 17, 18, 32, 16, 14, 26, 21},
+	{3850, 18,  68, 18, 17, 18, 32, 16, 14, 26, 21},
+	{3840, 18,  68, 18, 17, 18, 32, 16, 14, 26, 21},
+	{3830, 18,  68, 18, 16, 18, 32, 16, 14, 26, 21},
+	{3820, 18,  68, 18, 16, 18, 31, 16, 14, 26, 21},
+	{3810, 18,  68, 18, 16, 18, 31, 16, 14, 26, 21},
+	{3800, 18,  67, 17, 16, 18, 31, 16, 14, 26, 21},
+	{3790, 18,  67, 17, 16, 17, 32, 15, 14, 26, 21},
+	{3780, 18,  67, 17, 16, 17, 32, 15, 14, 25, 21},
+	{3770, 18,  67, 17, 16, 17, 32, 15, 14, 25, 21},
+	{3760, 18,  66, 17, 16, 17, 32, 15, 14, 25, 21},
+	{3750, 18,  66, 17, 16, 17, 31, 15, 14, 25, 21},
+	{3740, 18,  66, 17, 16, 17, 31, 15, 14, 25, 20},
+	{3730, 18,  66, 17, 16, 17, 31, 15, 13, 25, 20},
+	{3720, 18,  65, 17, 16, 17, 31, 15, 13, 25, 20},
+	{3710, 18,  65, 17, 16, 17, 31, 15, 13, 25, 20},
+	{3700, 18,  65, 17, 16, 17, 31, 15, 13, 25, 20},
+	{3690, 18,  65, 17, 16, 17, 31, 15, 13, 25, 20},
+	{3680, 18,  64, 17, 16, 17, 31, 15, 13, 25, 20},
+	{3670, 18,  64, 17, 16, 17, 30, 15, 13, 25, 20},
+	{3660, 17,  65, 17, 16, 17, 30, 15, 13, 25, 20},
+	{3650, 17,  65, 17, 16, 17, 30, 15, 13, 25, 20},
+	{3640, 17,  65, 17, 16, 17, 30, 15, 13, 25, 20},
+	{3630, 17,  64, 17, 16, 17, 30, 15, 13, 24, 20},
+	{3620, 17,  64, 17, 16, 17, 30, 15, 13, 24, 20},
+	{3610, 17,  64, 17, 16, 17, 30, 15, 13, 24, 20},
+	{3600, 17,  64, 16, 16, 17, 29, 15, 13, 24, 20},
+	{3590, 17,  63, 16, 15, 17, 29, 15, 13, 24, 20},
+	{3580, 17,  63, 16, 15, 16, 30, 15, 13, 24, 20},
+	{3570, 17,  63, 16, 15, 16, 30, 15, 13, 24, 19},
+	{3560, 17,  63, 16, 15, 16, 30, 14, 13, 24, 19},
+	{3550, 17,  62, 16, 15, 16, 30, 14, 13, 24, 19},
+	{3540, 17,  62, 16, 15, 16, 30, 14, 13, 24, 19},
+	{3530, 17,  62, 16, 15, 16, 29, 14, 13, 24, 19},
+	{3520, 17,  62, 16, 15, 16, 29, 14, 13, 24, 19},
+	{3510, 17,  62, 16, 15, 16, 29, 14, 13, 24, 19},
+	{3500, 17,  61, 16, 15, 16, 29, 14, 13, 24, 19},
+	{3490, 17,  61, 16, 15, 16, 29, 14, 13, 23, 19},
+	{3480, 17,  61, 16, 15, 16, 29, 14, 13, 23, 19},
+	{3470, 17,  61, 16, 15, 16, 29, 14, 13, 23, 19},
+	{3460, 16,  61, 16, 15, 16, 28, 14, 12, 23, 19},
+	{3450, 16,  61, 16, 15, 16, 28, 14, 12, 23, 19},
+	{3440, 16,  61, 16, 15, 16, 28, 14, 12, 23, 19},
+	{3430, 16,  61, 16, 15, 16, 28, 14, 12, 23, 19},
+	{3420, 16,  60, 16, 15, 16, 28, 14, 12, 23, 19},
+	{3410, 16,  60, 16, 15, 16, 28, 14, 12, 23, 18},
+	{3400, 16,  60, 15, 15, 16, 28, 14, 12, 23, 18},
+	{3390, 16,  60, 15, 15, 16, 28, 14, 12, 23, 18},
+	{3380, 16,  59, 15, 15, 16, 27, 14, 12, 23, 18},
+	{3370, 16,  59, 15, 15, 15, 28, 14, 12, 23, 18},
+	{3360, 16,  59, 15, 14, 15, 28, 14, 12, 23, 18},
+	{3350, 16,  59, 15, 14, 15, 28, 14, 12, 23, 18},
+	{3340, 16,  59, 15, 14, 15, 28, 14, 12, 22, 18},
+	{3330, 16,  58, 15, 14, 15, 28, 14, 12, 22, 18},
+	{3320, 16,  58, 15, 14, 15, 28, 13, 12, 22, 18},
+	{3310, 16,  58, 15, 14, 15, 27, 13, 12, 22, 18},
+	{3300, 16,  58, 15, 14, 15, 27, 13, 12, 22, 18},
+	{3290, 16,  57, 15, 14, 15, 27, 13, 12, 22, 18},
+	{3280, 16,  57, 15, 14, 15, 27, 13, 12, 22, 18},
+	{3270, 16,  57, 15, 14, 15, 27, 13, 12, 22, 18},
+	{3260, 15,  58, 15, 14, 15, 27, 13, 12, 22, 18},
+	{3250, 15,  57, 15, 14, 15, 27, 13, 12, 22, 18},
+	{3240, 15,  57, 15, 14, 15, 26, 13, 12, 22, 17},
+	{3230, 15,  57, 15, 14, 15, 26, 13, 12, 22, 17},
+	{3220, 15,  57, 15, 14, 15, 26, 13, 12, 22, 17},
+	{3210, 15,  56, 15, 14, 15, 26, 13, 12, 22, 17},
+	{3200, 15,  56, 14, 14, 15, 26, 13, 11, 21, 17},
+	{3190, 15,  56, 14, 14, 15, 26, 13, 11, 21, 17},
+	{3180, 15,  56, 14, 14, 15, 26, 13, 11, 21, 17},
+	{3170, 15,  56, 14, 14, 15, 25, 13, 11, 21, 17},
+	{3160, 15,  55, 14, 14, 14, 26, 13, 11, 21, 17},
+	{3150, 15,  55, 14, 14, 14, 26, 13, 11, 21, 17},
+	{3140, 15,  55, 14, 14, 14, 26, 13, 11, 21, 17},
+	{3130, 15,  55, 14, 14, 14, 26, 13, 11, 21, 17},
+	{3120, 15,  54, 14, 13, 14, 26, 13, 11, 21, 17},
+	{3110, 15,  54, 14, 13, 14, 26, 13, 11, 21, 17},
+	{3100, 15,  54, 14, 13, 14, 26, 13, 11, 21, 17},
+	{3090, 15,  54, 14, 13, 14, 25, 12, 11, 21, 17},
+	{3080, 15,  53, 14, 13, 14, 25, 12, 11, 21, 17},
+	{3070, 14,  54, 14, 13, 14, 25, 12, 11, 21, 16},
+	{3060, 14,  54, 14, 13, 14, 25, 12, 11, 21, 16},
+	{3050, 14,  54, 14, 13, 14, 25, 12, 11, 20, 16},
+	{3040, 14,  53, 14, 13, 14, 25, 12, 11, 20, 16},
+	{3030, 14,  53, 14, 13, 14, 25, 12, 11, 20, 16},
+	{3020, 14,  53, 14, 13, 14, 24, 12, 11, 20, 16},
+	{3010, 14,  53, 14, 13, 14, 24, 12, 11, 20, 16},
+	{3000, 14,  53, 13, 13, 14, 24, 12, 11, 20, 16},
+	{2990, 14,  52, 13, 13, 14, 24, 12, 11, 20, 16},
+	{2980, 14,  52, 13, 13, 14, 24, 12, 11, 20, 16},
+	{2970, 14,  52, 13, 13, 14, 24, 12, 11, 20, 16},
+	{2960, 14,  52, 13, 13, 14, 24, 12, 11, 20, 16},
+	{2950, 14,  51, 13, 13, 13, 24, 12, 11, 20, 16},
+	{2940, 14,  51, 13, 13, 13, 24, 12, 11, 20, 16},
+	{2930, 14,  51, 13, 13, 13, 24, 12, 10, 20, 16},
+	{2920, 14,  51, 13, 13, 13, 24, 12, 10, 20, 16},
+	{2910, 14,  50, 13, 13, 13, 24, 12, 10, 20, 15},
+	{2900, 14,  50, 13, 13, 13, 24, 12, 10, 19, 15},
+	{2890, 14,  50, 13, 12, 13, 24, 12, 10, 19, 15},
+	{2880, 14,  50, 13, 12, 13, 23, 12, 10, 19, 15},
+	{2870, 13,  50, 13, 12, 13, 23, 12, 10, 19, 15},
+	{2860, 13,  50, 13, 12, 13, 23, 12, 10, 19, 15},
+	{2850, 13,  50, 13, 12, 13, 23, 11, 10, 19, 15},
+	{2840, 13,  50, 13, 12, 13, 23, 11, 10, 19, 15},
+	{2830, 13,  50, 13, 12, 13, 23, 11, 10, 19, 15},
+	{2820, 13,  49, 13, 12, 13, 23, 11, 10, 19, 15},
+	{2810, 13,  49, 13, 12, 13, 23, 11, 10, 19, 15},
+	{2800, 13,  49, 12, 12, 13, 22, 11, 10, 19, 15},
+	{2790, 13,  49, 12, 12, 13, 22, 11, 10, 19, 15},
+	{2780, 13,  48, 12, 12, 13, 22, 11, 10, 19, 15},
+	{2770, 13,  48, 12, 12, 13, 22, 11, 10, 19, 15},
+	{2760, 13,  48, 12, 12, 13, 22, 11, 10, 18, 15},
+	{2750, 13,  48, 12, 12, 13, 22, 11, 10, 18, 15},
+	{2740, 13,  47, 12, 12, 12, 23, 11, 10, 18, 14},
+	{2730, 13,  47, 12, 12, 12, 22, 11, 10, 18, 14},
+	{2720, 13,  47, 12, 12, 12, 22, 11, 10, 18, 14},
+	{2710, 13,  47, 12, 12, 12, 22, 11, 10, 18, 14},
+	{2700, 13,  47, 12, 12, 12, 22, 11, 10, 18, 14},
+	{2690, 13,  46, 12, 12, 12, 22, 11, 10, 18, 14},
+	{2680, 13,  46, 12, 12, 12, 22, 11, 10, 18, 14},
+	{2670, 12,  47, 12, 12, 12, 22, 11, 10, 18, 14},
+	{2660, 12,  47, 12, 12, 12, 21, 11,  9, 18, 14},
+	{2650, 12,  46, 12, 11, 12, 21, 11,  9, 18, 14},
+	{2640, 12,  46, 12, 11, 12, 21, 11,  9, 18, 14},
+	{2630, 12,  46, 12, 11, 12, 21, 11,  9, 18, 14},
+	{2620, 12,  46, 12, 11, 12, 21, 10,  9, 18, 14},
+	{2610, 12,  45, 12, 11, 12, 21, 10,  9, 17, 14},
+	{2600, 12,  45, 11, 11, 12, 21, 10,  9, 17, 14},
+	{2590, 12,  45, 11, 11, 12, 20, 10,  9, 17, 14},
+	{2580, 12,  45, 11, 11, 12, 20, 10,  9, 17, 14},
+	{2570, 12,  44, 11, 11, 12, 20, 10,  9, 17, 13},
+	{2560, 12,  44, 11, 11, 12, 20, 10,  9, 17, 13},
+	{2550, 12,  44, 11, 11, 12, 20, 10,  9, 17, 13},
+	{2540, 12,  44, 11, 11, 11, 21, 10,  9, 17, 13},
+	{2530, 12,  44, 11, 11, 11, 21, 10,  9, 17, 13},
+	{2520, 12,  43, 11, 11, 11, 21, 10,  9, 17, 13},
+	{2510, 12,  43, 11, 11, 11, 20, 10,  9, 17, 13},
+	{2500, 12,  43, 11, 11, 11, 20, 10,  9, 17, 13},
+	{2490, 12,  43, 11, 11, 11, 20, 10,  9, 17, 13},
+	{2480, 12,  42, 11, 11, 11, 20, 10,  9, 17, 13},
+	{2470, 11,  43, 11, 11, 11, 20, 10,  9, 16, 13},
+	{2460, 11,  43, 11, 11, 11, 20, 10,  9, 16, 13},
+	{2450, 11,  43, 11, 11, 11, 20, 10,  9, 16, 13},
+	{2440, 11,  42, 11, 11, 11, 19, 10,  9, 16, 13},
+	{2430, 11,  42, 11, 11, 11, 19, 10,  9, 16, 13},
+	{2420, 11,  42, 11, 10, 11, 19, 10,  9, 16, 13},
+	{2410, 11,  42, 11, 10, 11, 19, 10,  9, 16, 12},
+	{2400, 11,  41, 10, 10, 11, 19, 10,  8, 16, 12},
+	{2390, 11,  41, 10, 10, 11, 19, 10,  8, 16, 12},
+	{2380, 11,  41, 10, 10, 11, 19,  9,  8, 16, 12},
+	{2370, 11,  41, 10, 10, 11, 18,  9,  8, 16, 12},
+	{2360, 11,  41, 10, 10, 11, 18,  9,  8, 16, 12},
+	{2350, 11,  40, 10, 10, 11, 18,  9,  8, 16, 12},
+	{2340, 11,  40, 10, 10, 11, 18,  9,  8, 16, 12},
+	{2330, 11,  40, 10, 10, 10, 19,  9,  8, 16, 12},
+	{2320, 11,  40, 10, 10, 10, 19,  9,  8, 15, 12},
+	{2310, 11,  39, 10, 10, 10, 19,  9,  8, 15, 12},
+	{2300, 11,  39, 10, 10, 10, 18,  9,  8, 15, 12},
+	{2290, 11,  39, 10, 10, 10, 18,  9,  8, 15, 12},
+	{2280, 11,  39, 10, 10, 10, 18,  9,  8, 15, 12},
+	{2270, 10,  39, 10, 10, 10, 18,  9,  8, 15, 12},
+	{2260, 10,  39, 10, 10, 10, 18,  9,  8, 15, 12},
+	{2250, 10,  39, 10, 10, 10, 18,  9,  8, 15, 12},
+	{2240, 10,  39, 10, 10, 10, 18,  9,  8, 15, 11},
+	{2230, 10,  38, 10, 10, 10, 18,  9,  8, 15, 11},
+	{2220, 10,  38, 10, 10, 10, 17,  9,  8, 15, 11},
+	{2210, 10,  38, 10, 10, 10, 17,  9,  8, 15, 11},
+	{2200, 10,  38,  9, 10, 10, 17,  9,  8, 15, 11},
+	{2190, 10,  38,  9,  9, 10, 17,  9,  8, 15, 11},
+	{2180, 10,  37,  9,  9, 10, 17,  9,  8, 14, 11},
+	{2170, 10,  37,  9,  9, 10, 17,  9,  8, 14, 11},
+	{2160, 10,  37,  9,  9, 10, 17,  9,  8, 14, 11},
+	{2150, 10,  37,  9,  9, 10, 16,  8,  8, 14, 11},
+	{2140, 10,  36,  9,  9, 10, 16,  8,  8, 14, 11},
+	{2130, 10,  36,  9,  9, 10, 16,  8,  7, 14, 11},
+	{2120, 10,  36,  9,  9,  9, 17,  8,  7, 14, 11},
+	{2110, 10,  36,  9,  9,  9, 17,  8,  7, 14, 11},
+	{2100, 10,  35,  9,  9,  9, 17,  8,  7, 14, 11},
+	{2090, 10,  35,  9,  9,  9, 17,  8,  7, 14, 11},
+	{2080,  9,  36,  9,  9,  9, 16,  8,  7, 14, 11},
+	{2070,  9,  36,  9,  9,  9, 16,  8,  7, 14, 10},
+	{2060,  9,  35,  9,  9,  9, 16,  8,  7, 14, 10},
+	{2050,  9,  35,  9,  9,  9, 16,  8,  7, 14, 10},
+	{2040,  9,  35,  9,  9,  9, 16,  8,  7, 14, 10},
+	{2030,  9,  35,  9,  9,  9, 16,  8,  7, 13, 10},
+	{2020,  9,  35,  9,  9,  9, 16,  8,  7, 13, 10},
+	{2010,  9,  34,  9,  9,  9, 15,  8,  7, 13, 10},
+	{2000,  9,  34,  8,  9,  9, 15,  8,  7, 13, 10},
+	{1990,  9,  34,  8,  9,  9, 15,  8,  7, 13, 10},
+	{1980,  9,  34,  8,  9,  9, 15,  8,  7, 13, 10},
+	{1970,  9,  33,  8,  9,  9, 15,  8,  7, 13, 10},
+	{1960,  9,  33,  8,  9,  9, 15,  8,  7, 13, 10},
+	{1950,  9,  33,  8,  8,  9, 15,  8,  7, 13, 10},
+	{1940,  9,  33,  8,  8,  9, 15,  8,  7, 13, 10},
+	{1930,  9,  32,  8,  8,  9, 14,  8,  7, 13, 10},
+	{1920,  9,  32,  8,  8,  9, 14,  8,  7, 13, 10},
+	{1910,  9,  32,  8,  8,  8, 15,  7,  7, 13,  9},
+	{1900,  9,  32,  8,  8,  8, 15,  7,  7, 13,  9},
+	{1890,  9,  31,  8,  8,  8, 15,  7,  7, 12,  9},
+	{1880,  8,  32,  8,  8,  8, 15,  7,  7, 12,  9},
+	{1870,  8,  32,  8,  8,  8, 15,  7,  7, 12,  9},
+	{1860,  8,  32,  8,  8,  8, 14,  7,  6, 12,  9},
+	{1850,  8,  32,  8,  8,  8, 14,  7,  6, 12,  9},
+	{1840,  8,  31,  8,  8,  8, 14,  7,  6, 12,  9},
+	{1830,  8,  31,  8,  8,  8, 14,  7,  6, 12,  9},
+	{1820,  8,  31,  8,  8,  8, 14,  7,  6, 12,  9},
+	{1810,  8,  31,  8,  8,  8, 14,  7,  6, 12,  9},
+	{1800,  8,  30,  7,  8,  8, 14,  7,  6, 12,  9},
+	{1790,  8,  30,  7,  8,  8, 13,  7,  6, 12,  9},
+	{1780,  8,  30,  7,  8,  8, 13,  7,  6, 12,  9},
+	{1770,  8,  30,  7,  8,  8, 13,  7,  6, 12,  9},
+	{1760,  8,  29,  7,  8,  8, 13,  7,  6, 12,  9},
+	{1750,  8,  29,  7,  8,  8, 13,  7,  6, 12,  9},
+	{1740,  8,  29,  7,  8,  8, 13,  7,  6, 11,  8},
+	{1730,  8,  29,  7,  8,  8, 13,  7,  6, 11,  8},
+	{1720,  8,  29,  7,  7,  8, 13,  7,  6, 11,  8},
+	{1710,  8,  28,  7,  7,  8, 12,  7,  6, 11,  8},
+	{1700,  8,  28,  7,  7,  7, 13,  7,  6, 11,  8},
+	{1690,  8,  28,  7,  7,  7, 13,  7,  6, 11,  8},
+	{1680,  7,  29,  7,  7,  7, 13,  6,  6, 11,  8},
+	{1670,  7,  28,  7,  7,  7, 13,  6,  6, 11,  8},
+	{1660,  7,  28,  7,  7,  7, 13,  6,  6, 11,  8},
+	{1650,  7,  28,  7,  7,  7, 13,  6,  6, 11,  8},
+	{1640,  7,  28,  7,  7,  7, 12,  6,  6, 11,  8},
+	{1630,  7,  27,  7,  7,  7, 12,  6,  6, 11,  8},
+	{1620,  7,  27,  7,  7,  7, 12,  6,  6, 11,  8},
+	{1610,  7,  27,  7,  7,  7, 12,  6,  6, 11,  8},
+	{1600,  7,  27,  6,  7,  7, 12,  6,  5, 10,  8},
+	{1590,  7,  26,  6,  7,  7, 12,  6,  5, 10,  8},
+	{1580,  7,  26,  6,  7,  7, 12,  6,  5, 10,  7},
+	{1570,  7,  26,  6,  7,  7, 11,  6,  5, 10,  7},
+	{1560,  7,  26,  6,  7,  7, 11,  6,  5, 10,  7},
+	{1550,  7,  26,  6,  7,  7, 11,  6,  5, 10,  7},
+	{1540,  7,  25,  6,  7,  7, 11,  6,  5, 10,  7},
+	{1530,  7,  25,  6,  7,  7, 11,  6,  5, 10,  7},
+	{1520,  7,  25,  6,  7,  7, 11,  6,  5, 10,  7},
+	{1510,  7,  25,  6,  7,  7, 11,  6,  5, 10,  7},
+	{1500,  7,  24,  6,  7,  7, 10,  6,  5, 10,  7},
+	{1490, 59,  25,  6, 77, 59, 10, 70, 44,  9, 73},
+	{1480, 59,  24,  6, 76, 58, 10, 70, 44,  9, 73},
+	{1470, 58,  24,  6, 76, 58, 10, 69, 44,  9, 72},
+	{1460, 58,  24,  6, 76, 58, 10, 69, 43,  9, 72},
+	{1450, 58,  24,  6, 75, 57, 10, 68, 43,  9, 71},
+	{1440, 57,  24,  6, 75, 57, 10, 68, 43,  9, 71},
+	{1430, 57,  23,  6, 75, 57, 10, 68, 43,  8, 70},
+	{1420, 56,  23,  6, 74, 57,  9, 67, 43,  8, 70},
+	{1410, 56,  23,  6, 74, 57,  9, 67, 43,  8, 69},
+	{1400, 56,  23,  5, 74, 55,  9, 67, 41,  8, 69},
+	{1390, 55,  23,  5, 73, 55,  9, 66, 41,  8, 68},
+	{1380, 55,  23,  5, 73, 54,  9, 66, 41,  8, 68},
+	{1370, 54,  22,  5, 72, 54,  9, 66, 41,  8, 67},
+	{1360, 54,  22,  5, 72, 54,  9, 65, 40,  8, 67},
+	{1350, 54,  22,  5, 72, 53,  9, 65, 40,  8, 66},
+	{1340, 53,  22,  5, 71, 53,  9, 65, 40,  8, 66},
+	{1330, 53,  22,  5, 71, 53,  9, 64, 39,  8, 65},
+	{1320, 52,  22,  5, 71, 53,  8, 64, 40,  8, 65},
+	{1310, 52,  21,  5, 70, 53,  8, 64, 40,  8, 64},
+	{1300, 51,  21,  5, 70, 51,  8, 63, 38,  8, 64},
+	{1290, 51,  21,  5, 70, 51,  8, 63, 38,  7, 64},
+	{1280, 51,  21,  5, 69, 51,  8, 63, 38,  7, 63},
+	{1270, 50,  21,  5, 69, 50,  8, 62, 38,  7, 63},
+	{1260, 50,  20,  5, 69, 50,  8, 62, 37,  7, 62},
+	{1250, 49,  20,  5, 68, 49,  8, 62, 37,  7, 62},
+	{1240, 49,  20,  5, 68, 49,  8, 61, 37,  7, 61},
+	{1230, 49,  20,  5, 68, 49,  8, 61, 36,  7, 61},
+	{1220, 48,  20,  5, 67, 48,  8, 61, 36,  7, 60},
+	{1210, 48,  19,  5, 67, 48,  7, 60, 36,  7, 60},
+	{1200, 49,  19,  4, 67, 49,  7, 60, 36,  7, 59},
+	{1190, 48,  19,  4, 66, 48,  7, 60, 36,  7, 59},
+	{1180, 48,  19,  4, 66, 48,  7, 59, 36,  7, 58},
+	{1170, 46,  19,  4, 66, 46,  7, 59, 35,  7, 58},
+	{1160, 46,  18,  4, 65, 46,  7, 59, 34,  7, 57},
+	{1150, 45,  18,  4, 65, 46,  7, 58, 34,  7, 57},
+	{1140, 45,  18,  4, 65, 45,  7, 58, 34,  6, 56},
+	{1130, 45,  18,  4, 64, 45,  7, 58, 33,  6, 56},
+	{1120, 44,  18,  4, 64, 44,  7, 57, 33,  6, 55},
+	{1110, 44,  18,  4, 64, 44,  7, 57, 33,  6, 55},
+	{1100, 43,  17,  4, 63, 44,  6, 57, 32,  6, 54},
+	{1090, 43,  17,  4, 63, 44,  6, 56, 33,  6, 54},
+	{1080, 43,  17,  4, 63, 44,  6, 56, 33,  6, 53},
+	{1070, 42,  17,  4, 62, 44,  6, 56, 33,  6, 53},
+	{1060, 42,  17,  4, 62, 42,  6, 55, 31,  6, 52},
+	{1050, 41,  17,  4, 62, 42,  6, 55, 31,  6, 52},
+	{1040, 41,  16,  4, 61, 41,  6, 54, 31,  6, 52},
+	{1030, 41,  16,  4, 61, 41,  6, 54, 30,  6, 51},
+	{1020, 40,  16,  4, 61, 41,  6, 54, 30,  6, 51},
+	{1010, 40,  16,  4, 60, 40,  6, 53, 30,  6, 50},
+	{1000, 39,  16,  3, 60, 40,  6, 53, 29,  5, 50},
+	{ 990, 39,  15,  3, 60, 39,  6, 53, 29,  5, 49},
+	{ 980, 39,  15,  3, 59, 39,  5, 52, 29,  5, 49},
+	{ 970, 38,  15,  3, 59, 39,  5, 52, 29,  5, 48},
+	{ 960, 38,  15,  3, 59, 39,  5, 52, 29,  5, 48},
+	{ 950, 37,  15,  3, 58, 39,  5, 51, 29,  5, 47},
+	{ 940, 37,  14,  3, 58, 39,  5, 51, 29,  5, 47},
+	{ 930, 37,  14,  3, 57, 37,  5, 51, 27,  5, 46},
+	{ 920, 36,  14,  3, 57, 37,  5, 50, 27,  5, 46},
+	{ 910, 36,  14,  3, 57, 36,  5, 50, 27,  5, 45},
+	{ 900, 35,  14,  3, 56, 36,  5, 50, 26,  5, 45},
+	{ 890, 35,  14,  3, 56, 36,  5, 49, 26,  5, 44},
+	{ 880, 35,  13,  3, 56, 35,  5, 49, 26,  5, 44},
+	{ 870, 34,  13,  3, 55, 35,  4, 49, 26,  5, 43},
+	{ 860, 34,  13,  3, 55, 35,  4, 48, 25,  5, 43},
+	{ 850, 33,  13,  3, 55, 35,  4, 48, 26,  4, 42},
+	{ 840, 33,  13,  3, 54, 35,  4, 48, 26,  4, 42},
+	{ 830, 33,  12,  3, 54, 33,  4, 47, 24,  4, 41},
+	{ 820, 32,  12,  3, 54, 33,  4, 47, 24,  4, 41},
+	{ 810, 32,  12,  3, 53, 33,  4, 47, 24,  4, 40},
+	{ 800, 31,  12,  2, 53, 32,  4, 46, 23,  4, 40},
+	{ 790, 31,  12,  2, 53, 32,  4, 46, 23,  4, 39},
+	{ 780, 30,  12,  2, 52, 31,  4, 46, 23,  4, 39},
+	{ 770, 30,  11,  2, 52, 31,  4, 45, 23,  4, 39},
+	{ 760, 30,  11,  2, 52, 31,  3, 45, 22,  4, 38},
+	{ 750, 29,  11,  2, 51, 30,  3, 45, 22,  4, 38},
+	{ 740, 29,  11,  2, 51, 30,  3, 44, 22,  4, 37},
+	{ 730, 28,  11,  2, 51, 31,  3, 44, 22,  4, 37},
+	{ 720, 28,  10,  2, 50, 30,  3, 44, 22,  4, 36},
+	{ 710, 28,  10,  2, 50, 30,  3, 43, 22,  4, 36},
+	{ 700, 27,  10,  2, 50, 28,  3, 43, 20,  3, 35},
+	{ 690, 27,  10,  2, 49, 28,  3, 43, 20,  3, 35},
+	{ 680, 26,  10,  2, 49, 28,  3, 42, 20,  3, 34},
+	{ 670, 26,  10,  2, 49, 27,  3, 42, 20,  3, 34},
+	{ 660, 26,   9,  2, 48, 27,  3, 42, 19,  3, 33},
+	{ 650, 25,   9,  2, 48, 26,  3, 41, 19,  3, 33},
+	{ 640, 25,   9,  2, 48, 26,  2, 41, 19,  3, 32},
+	{ 630, 24,   9,  2, 47, 26,  2, 40, 18,  3, 32},
+	{ 620, 24,   9,  2, 47, 26,  2, 40, 19,  3, 31},
+	{ 610, 24,   8,  2, 47, 26,  2, 40, 19,  3, 31},
+	{ 600, 23,   8,  1, 46, 26,  2, 39, 18,  3, 30},
+	{ 590, 23,   8,  1, 46, 24,  2, 39, 17,  3, 30},
+	{ 580, 22,   8,  1, 46, 24,  2, 39, 17,  3, 29},
+	{ 570, 22,   8,  1, 45, 23,  2, 38, 17,  3, 29},
+	{ 560, 22,   7,  1, 45, 23,  2, 38, 16,  2, 28},
+	{ 550, 21,   7,  1, 45, 23,  2, 38, 16,  2, 28},
+	{ 540, 21,   7,  1, 44, 22,  2, 37, 16,  2, 27},
+	{ 530, 20,   7,  1, 44, 22,  1, 37, 15,  2, 27},
+	{ 520, 20,   7,  1, 43, 21,  1, 37, 15,  2, 27},
+	{ 510, 20,   6,  1, 43, 21,  1, 36, 15,  2, 26},
+	{ 500, 19,   6,  1, 43, 22,  1, 36, 15,  2, 26},
+	{ 490, 19,   6,  1, 42, 21,  1, 36, 15,  2, 25},
+	{ 480, 18,   6,  1, 42, 21,  1, 35, 15,  2, 25},
+	{ 470, 18,   6,  1, 42, 21,  1, 35, 15,  2, 24},
+	{ 460, 18,   6,  1, 41, 19,  1, 35, 13,  2, 24},
+	{ 450, 17,   5,  1, 41, 19,  1, 34, 13,  2, 23},
+	{ 440, 17,   5,  1, 41, 18,  1, 34, 13,  2, 23},
+	{ 430, 16,   5,  1, 40, 18,  0, 34, 12,  2, 22},
+	{ 420, 16,   5,  1, 40, 18,  0, 33, 12,  2, 22},
+	{ 410, 16,   5,  1, 40, 17,  0, 33, 12,  1, 21},
+	{ 400, 15,   5,  0, 39, 17,  0, 33, 11,  1, 21},
+	{ 390, 15,   4,  0, 39, 17,  0, 32, 12,  1, 20},
+	{ 380, 14,   4,  0, 39, 17,  0, 32, 12,  1, 20},
+	{ 370, 14,   4,  0, 38, 17,  0, 32, 12,  1, 19},
+	{ 360, 14,   4,  0, 38, 15,  0, 31, 10,  1, 19},
+	{ 350, 13,   4,  0, 38, 15,  0, 31, 10,  1, 18},
+	{ 340, 13,   3,  0, 37, 15,  0, 31, 10,  1, 18},
+	{ 330, 12,   3,  0, 37, 14,  0, 30,  9,  1, 17},
+	{ 320, 12,   3,  0, 37, 14,  0, 30,  9,  1, 17},
+	{ 310, 12,   3,  0, 36, 13,  0, 30,  9,  1, 16},
+	{ 300, 11,   3,  0, 36, 13,  0, 29,  8,  1, 16},
+	{ 290, 11,   2,  0, 36, 13,  0, 29,  8,  1, 15},
+	{ 280, 10,   2,  0, 35, 12,  0, 29,  8,  1, 15},
+	{ 270, 10,   2,  0, 35, 12,  0, 28,  8,  0, 14},
+	{ 260,  9,   2,  0, 35, 12,  0, 28,  8,  0, 14},
+	{ 250,  9,   2,  0, 34, 12,  0, 28,  8,  0, 14},
+	{ 240,  9,   2,  0, 34, 12,  0, 27,  8,  0, 13},
+	{ 230,  8,   1,  0, 34, 10,  0, 27,  6,  0, 13},
+	{ 220,  8,   1,  0, 33, 10,  0, 27,  6,  0, 12},
+	{ 210,  7,   1,  0, 33, 10,  0, 26,  6,  0, 12},
+	{ 200,  7,   1,  0, 33,  9,  0, 26,  5,  0, 11},
+	{ 190,  7,   1,  0, 32,  9,  0, 25,  5,  0, 11},
+	{ 180,  6,   1,  0, 32,  8,  0, 25,  5,  0, 10},
+	{ 170,  6,   0,  0, 32,  8,  0, 25,  5,  0, 10},
+	{ 160,  5,   0,  0, 31,  8,  0, 24,  4,  0,  9},
+	{ 150,  5,   0,  0, 31,  8,  0, 24,  5,  0,  9},
+	{ 140,  5,   0,  0, 31,  8,  0, 24,  5,  0,  8},
+	{ 130,  4,   0,  0, 30,  6,  0, 23,  3,  0,  8},
+	{ 120,  4,   0,  0, 30,  6,  0, 23,  3,  0,  7},
+	{ 110,  3,   0,  0, 30,  6,  0, 23,  3,  0,  7},
+	{ 100,  3,   0,  0, 29,  5,  0, 22,  2,  0,  6},
+	{  90,  3,   0,  0, 29,  5,  0, 22,  2,  0,  6},
+	{  80,  2,   0,  0, 28,  5,  0, 22,  2,  0,  5},
+};
+
+static void samsung_mipi_dcphy_bias_block_enable(struct samsung_mipi_dcphy *samsung)
+{
+	u32 bias_con2 = 0x3223;
+
+	regmap_write(samsung->regmap, BIAS_CON0, 0x0010);
+	regmap_write(samsung->regmap, BIAS_CON1, 0x0110);
+	regmap_write(samsung->regmap, BIAS_CON2, bias_con2);
+
+	/* default output voltage select:
+	 * dphy: 400mv
+	 * cphy: 530mv
+	 */
+	regmap_update_bits(samsung->regmap, BIAS_CON4,
+			   I_MUX_SEL_MASK, I_MUX_SEL_400MV);
+}
+
+static void samsung_mipi_dcphy_bias_block_disable(struct samsung_mipi_dcphy *samsung)
+{
+}
+
+static void samsung_mipi_dphy_lane_enable(struct samsung_mipi_dcphy *samsung)
+{
+	regmap_write(samsung->regmap, DPHY_MC_GNR_CON1, T_PHY_READY(0x2000));
+	regmap_update_bits(samsung->regmap, DPHY_MC_GNR_CON0,
+			   PHY_ENABLE, PHY_ENABLE);
+
+	switch (samsung->lanes) {
+	case 4:
+		regmap_write(samsung->regmap, DPHY_MD3_GNR_CON1,
+			     T_PHY_READY(0x2000));
+		regmap_update_bits(samsung->regmap, DPHY_MD3_GNR_CON0,
+				   PHY_ENABLE, PHY_ENABLE);
+		fallthrough;
+	case 3:
+		regmap_write(samsung->regmap, COMBO_MD2_GNR_CON1,
+			     T_PHY_READY(0x2000));
+		regmap_update_bits(samsung->regmap, COMBO_MD2_GNR_CON0,
+				   PHY_ENABLE, PHY_ENABLE);
+		fallthrough;
+	case 2:
+		regmap_write(samsung->regmap, COMBO_MD1_GNR_CON1,
+			     T_PHY_READY(0x2000));
+		regmap_update_bits(samsung->regmap, COMBO_MD1_GNR_CON0,
+				   PHY_ENABLE, PHY_ENABLE);
+		fallthrough;
+	case 1:
+	default:
+		regmap_write(samsung->regmap, COMBO_MD0_GNR_CON1,
+			     T_PHY_READY(0x2000));
+		regmap_update_bits(samsung->regmap, COMBO_MD0_GNR_CON0,
+				   PHY_ENABLE, PHY_ENABLE);
+		break;
+	}
+}
+
+static void samsung_mipi_dphy_lane_disable(struct samsung_mipi_dcphy *samsung)
+{
+	regmap_update_bits(samsung->regmap, DPHY_MC_GNR_CON0, PHY_ENABLE, 0);
+	regmap_update_bits(samsung->regmap, COMBO_MD0_GNR_CON0, PHY_ENABLE, 0);
+	regmap_update_bits(samsung->regmap, COMBO_MD1_GNR_CON0, PHY_ENABLE, 0);
+	regmap_update_bits(samsung->regmap, COMBO_MD2_GNR_CON0, PHY_ENABLE, 0);
+	regmap_update_bits(samsung->regmap, DPHY_MD3_GNR_CON0, PHY_ENABLE, 0);
+}
+
+static void samsung_mipi_dcphy_pll_configure(struct samsung_mipi_dcphy *samsung)
+{
+	regmap_update_bits(samsung->regmap, PLL_CON0, S_MASK | P_MASK,
+			   S(samsung->pll.scaler) | P(samsung->pll.prediv));
+
+	if (samsung->pll.dsm < 0) {
+		u16 dsm_tmp;
+
+		/* Using opposite number subtraction to find complement */
+		dsm_tmp = abs(samsung->pll.dsm);
+		dsm_tmp = dsm_tmp - 1;
+		dsm_tmp ^= 0xffff;
+		regmap_write(samsung->regmap, PLL_CON1, dsm_tmp);
+	} else {
+		regmap_write(samsung->regmap, PLL_CON1, samsung->pll.dsm);
+	}
+
+	regmap_update_bits(samsung->regmap, PLL_CON2,
+			   M_MASK, M(samsung->pll.fbdiv));
+
+	if (samsung->pll.ssc_en) {
+		regmap_write(samsung->regmap, PLL_CON3,
+			     MRR(samsung->pll.mrr) | MFR(samsung->pll.mfr));
+		regmap_update_bits(samsung->regmap, PLL_CON4, SSCG_EN, SSCG_EN);
+	}
+
+	regmap_write(samsung->regmap, PLL_CON5, RESET_N_SEL | PLL_ENABLE_SEL);
+	regmap_write(samsung->regmap, PLL_CON7, PLL_LOCK_CNT(0xf000));
+	regmap_write(samsung->regmap, PLL_CON8, PLL_STB_CNT(0xf000));
+}
+
+static int samsung_mipi_dcphy_pll_enable(struct samsung_mipi_dcphy *samsung)
+{
+	u32 sts;
+	int ret;
+
+	regmap_update_bits(samsung->regmap, PLL_CON0, PLL_EN, PLL_EN);
+
+	ret = regmap_read_poll_timeout(samsung->regmap, PLL_STAT0,
+				       sts, (sts & PLL_LOCK), 1000, 20000);
+	if (ret < 0)
+		dev_err(samsung->dev, "DC-PHY pll failed to lock\n");
+
+	return ret;
+}
+
+static void samsung_mipi_dcphy_pll_disable(struct samsung_mipi_dcphy *samsung)
+{
+	regmap_update_bits(samsung->regmap, PLL_CON0, PLL_EN, 0);
+}
+
+static const struct samsung_mipi_dphy_timing *
+samsung_mipi_dphy_get_timing(struct samsung_mipi_dcphy *samsung)
+{
+	const struct samsung_mipi_dphy_timing *timings;
+	unsigned int num_timings;
+	unsigned int lane_mbps = div64_ul(samsung->pll.rate, USEC_PER_SEC);
+	unsigned int i;
+
+	timings = samsung_mipi_dphy_timing_table;
+	num_timings = ARRAY_SIZE(samsung_mipi_dphy_timing_table);
+
+	for (i = num_timings; i > 0; i--)
+		if (lane_mbps <= timings[i - 1].max_lane_mbps)
+			break;
+
+	if (i == 0)
+		++i;
+
+	return &timings[i - 1];
+}
+
+static unsigned long
+samsung_mipi_dcphy_pll_round_rate(struct samsung_mipi_dcphy *samsung,
+				  unsigned long prate, unsigned long rate,
+				  u8 *prediv, u16 *fbdiv, int *dsm, u8 *scaler)
+{
+	u32 max_fout = samsung->pdata->dphy_tx_max_lane_kbps;
+	u64 best_freq = 0;
+	u64 fin, fvco, fout;
+	u8 min_prediv, max_prediv;
+	u8 _prediv, best_prediv = 1;
+	u16 _fbdiv, best_fbdiv = 1;
+	u8 _scaler, best_scaler = 0;
+	u32 min_delta = UINT_MAX;
+	long _dsm, best_dsm = 0;
+
+	if (!prate) {
+		dev_err(samsung->dev, "parent rate of PLL can not be zero\n");
+		return 0;
+	}
+
+	/*
+	 * The PLL output frequency can be calculated using a simple formula:
+	 * Fvco = ((m+k/65536) x 2 x Fin) / p
+	 * Fout = ((m+k/65536) x 2 x Fin) / (p x 2^s)
+	 */
+	fin = div64_ul(prate, MSEC_PER_SEC);
+
+	while (!best_freq) {
+		fout = div64_ul(rate, MSEC_PER_SEC);
+		if (fout > max_fout)
+			fout = max_fout;
+
+		/* 0 ≤ S[2:0] ≤ 6 */
+		for (_scaler = 0; _scaler < 7; _scaler++) {
+			fvco = fout << _scaler;
+
+			/*
+			 * 2600MHz ≤ FVCO ≤ 6600MHz
+			 */
+			if (fvco < 2600 * MSEC_PER_SEC || fvco > 6600 * MSEC_PER_SEC)
+				continue;
+
+			/* 6MHz ≤ Fref(Fin / p) ≤ 30MHz */
+			min_prediv = DIV_ROUND_UP_ULL(fin, 30 * MSEC_PER_SEC);
+			max_prediv = DIV_ROUND_CLOSEST_ULL(fin, 6 * MSEC_PER_SEC);
+
+			for (_prediv = min_prediv; _prediv <= max_prediv; _prediv++) {
+				u64 delta, tmp;
+
+				_fbdiv = DIV_ROUND_CLOSEST_ULL(fvco * _prediv, 2 * fin);
+
+				 /* 64 ≤ M[9:0] ≤ 1023 */
+				if (_fbdiv < 64 || _fbdiv > 1023)
+					continue;
+
+				/* -32767 ≤ K[15:0] ≤ 32767 */
+				_dsm = ((_prediv * fvco) - (2 * _fbdiv * fin));
+				_dsm = DIV_ROUND_UP_ULL(_dsm << 15, fin);
+				if (abs(_dsm) > 32767)
+					continue;
+
+				tmp = DIV_ROUND_CLOSEST_ULL((_fbdiv * fin * 2 * 1000), _prediv);
+				tmp += DIV_ROUND_CLOSEST_ULL((_dsm * fin * 1000), _prediv << 15);
+
+				delta = abs(fvco * MSEC_PER_SEC - tmp);
+				if (delta < min_delta) {
+					best_prediv = _prediv;
+					best_fbdiv = _fbdiv;
+					best_dsm = _dsm;
+					best_scaler = _scaler;
+					min_delta = delta;
+					best_freq = DIV_ROUND_CLOSEST_ULL(tmp, 1000) * MSEC_PER_SEC;
+				}
+			}
+		}
+
+		rate += 100 * MSEC_PER_SEC;
+	}
+
+	*prediv = best_prediv;
+	*fbdiv = best_fbdiv;
+	*dsm = (int)best_dsm & 0xffff;
+	*scaler = best_scaler;
+	dev_dbg(samsung->dev, "p: %d, m: %d, dsm:%ld, scaler: %d\n",
+		best_prediv, best_fbdiv, best_dsm, best_scaler);
+
+	return best_freq >> best_scaler;
+}
+
+static void
+samsung_mipi_dphy_clk_lane_timing_init(struct samsung_mipi_dcphy *samsung)
+{
+	const struct samsung_mipi_dphy_timing *timing;
+	unsigned int lane_hs_rate = div64_ul(samsung->pll.rate, USEC_PER_SEC);
+	u32 val, res_up, res_down;
+
+	timing = samsung_mipi_dphy_get_timing(samsung);
+	regmap_write(samsung->regmap, DPHY_MC_GNR_CON0, 0xf000);
+
+	/*
+	 * The Drive-Strength / Voltage-Amplitude is adjusted by setting
+	 * the Driver-Up Resistor and Driver-Down Resistor.
+	 */
+	res_up = samsung->pdata->dphy_hs_drv_res_cfg->clk_hs_drv_up_ohm;
+	res_down = samsung->pdata->dphy_hs_drv_res_cfg->clk_hs_drv_down_ohm;
+	val = EDGE_CON(7) | EDGE_CON_DIR(0) | EDGE_CON_EN |
+	      RES_UP(res_up) | RES_DN(res_down);
+	regmap_write(samsung->regmap, DPHY_MC_ANA_CON0, val);
+
+	if (lane_hs_rate >= 4500)
+		regmap_write(samsung->regmap, DPHY_MC_ANA_CON1, 0x0001);
+
+	val = 0;
+	/*
+	 * Divide-by-2 Clock from Serial Clock. Use this when data rate is under
+	 * 1500Mbps, otherwise divide-by-16 Clock from Serial Clock
+	 */
+	if (lane_hs_rate < 1500)
+		val = HSTX_CLK_SEL;
+
+	val |= T_LPX(timing->lpx);
+	/*  T_LP_EXIT_SKEW/T_LP_ENTRY_SKEW unconfig */
+	regmap_write(samsung->regmap, DPHY_MC_TIME_CON0, val);
+
+	val = T_CLK_ZERO(timing->clk_zero) | T_CLK_PREPARE(timing->clk_prepare);
+	regmap_write(samsung->regmap, DPHY_MC_TIME_CON1, val);
+
+	val = T_HS_EXIT(timing->hs_exit) | T_CLK_TRAIL(timing->clk_trail_eot);
+	regmap_write(samsung->regmap, DPHY_MC_TIME_CON2, val);
+
+	val = T_CLK_POST(timing->clk_post);
+	regmap_write(samsung->regmap, DPHY_MC_TIME_CON3, val);
+
+	/* Escape Clock is 20.00MHz */
+	regmap_write(samsung->regmap, DPHY_MC_TIME_CON4, 0x1f4);
+
+	/*
+	 * skew calibration should be off, if the operation data rate is
+	 * under 1.5Gbps or equal to 1.5Gbps.
+	 */
+	if (lane_hs_rate > 1500)
+		regmap_write(samsung->regmap, DPHY_MC_DESKEW_CON0, 0x9cb1);
+}
+
+static void
+samsung_mipi_dphy_data_lane_timing_init(struct samsung_mipi_dcphy *samsung)
+{
+	const struct samsung_mipi_dphy_timing *timing;
+	unsigned int lane_hs_rate = div64_ul(samsung->pll.rate, USEC_PER_SEC);
+	u32 val, res_up, res_down;
+
+	timing = samsung_mipi_dphy_get_timing(samsung);
+
+	/*
+	 * The Drive-Strength / Voltage-Amplitude is adjusted by adjusting the
+	 *  Driver-Up Resistor and Driver-Down Resistor.
+	 */
+	res_up = samsung->pdata->dphy_hs_drv_res_cfg->data_hs_drv_up_ohm;
+	res_down = samsung->pdata->dphy_hs_drv_res_cfg->data_hs_drv_down_ohm;
+	val = EDGE_CON(7) | EDGE_CON_DIR(0) | EDGE_CON_EN |
+	      RES_UP(res_up) | RES_DN(res_down);
+	regmap_write(samsung->regmap, COMBO_MD0_ANA_CON0, val);
+	regmap_write(samsung->regmap, COMBO_MD1_ANA_CON0, val);
+	regmap_write(samsung->regmap, COMBO_MD2_ANA_CON0, val);
+	regmap_write(samsung->regmap, DPHY_MD3_ANA_CON0, val);
+
+	if (lane_hs_rate >= 4500) {
+		regmap_write(samsung->regmap, COMBO_MD0_ANA_CON1, 0x0001);
+		regmap_write(samsung->regmap, COMBO_MD1_ANA_CON1, 0x0001);
+		regmap_write(samsung->regmap, COMBO_MD2_ANA_CON1, 0x0001);
+		regmap_write(samsung->regmap, DPHY_MD3_ANA_CON1, 0x0001);
+	}
+
+	val = 0;
+	/*
+	 * Divide-by-2 Clock from Serial Clock. Use this when data rate is under
+	 * 1500Mbps, otherwise divide-by-16 Clock from Serial Clock
+	 */
+	if (lane_hs_rate < 1500)
+		val = HSTX_CLK_SEL;
+
+	val |= T_LPX(timing->lpx);
+	/*  T_LP_EXIT_SKEW/T_LP_ENTRY_SKEW unconfig */
+	regmap_write(samsung->regmap, COMBO_MD0_TIME_CON0, val);
+	regmap_write(samsung->regmap, COMBO_MD1_TIME_CON0, val);
+	regmap_write(samsung->regmap, COMBO_MD2_TIME_CON0, val);
+	regmap_write(samsung->regmap, DPHY_MD3_TIME_CON0, val);
+
+	val = T_HS_ZERO(timing->hs_zero) | T_HS_PREPARE(timing->hs_prepare);
+	regmap_write(samsung->regmap, COMBO_MD0_TIME_CON1, val);
+	regmap_write(samsung->regmap, COMBO_MD1_TIME_CON1, val);
+	regmap_write(samsung->regmap, COMBO_MD2_TIME_CON1, val);
+	regmap_write(samsung->regmap, DPHY_MD3_TIME_CON1, val);
+
+	val = T_HS_EXIT(timing->hs_exit) | T_HS_TRAIL(timing->hs_trail_eot);
+	regmap_write(samsung->regmap, COMBO_MD0_TIME_CON2, val);
+	regmap_write(samsung->regmap, COMBO_MD1_TIME_CON2, val);
+	regmap_write(samsung->regmap, COMBO_MD2_TIME_CON2, val);
+	regmap_write(samsung->regmap, DPHY_MD3_TIME_CON2, val);
+
+	/* TTA-GET/TTA-GO Timing Counter register use default value */
+	val = T_TA_GET(0x3) | T_TA_GO(0x0);
+	regmap_write(samsung->regmap, COMBO_MD0_TIME_CON3, val);
+	regmap_write(samsung->regmap, COMBO_MD1_TIME_CON3, val);
+	regmap_write(samsung->regmap, COMBO_MD2_TIME_CON3, val);
+	regmap_write(samsung->regmap, DPHY_MD3_TIME_CON3, val);
+
+	/* Escape Clock is 20.00MHz */
+	regmap_write(samsung->regmap, COMBO_MD0_TIME_CON4, 0x1f4);
+	regmap_write(samsung->regmap, COMBO_MD1_TIME_CON4, 0x1f4);
+	regmap_write(samsung->regmap, COMBO_MD2_TIME_CON4, 0x1f4);
+	regmap_write(samsung->regmap, DPHY_MD3_TIME_CON4, 0x1f4);
+}
+
+static int samsung_mipi_dphy_power_on(struct samsung_mipi_dcphy *samsung)
+{
+	int ret;
+
+	reset_control_assert(samsung->m_phy_rst);
+
+	samsung_mipi_dcphy_bias_block_enable(samsung);
+	samsung_mipi_dcphy_pll_configure(samsung);
+	samsung_mipi_dphy_clk_lane_timing_init(samsung);
+	samsung_mipi_dphy_data_lane_timing_init(samsung);
+	ret = samsung_mipi_dcphy_pll_enable(samsung);
+	if (ret < 0) {
+		samsung_mipi_dcphy_bias_block_disable(samsung);
+		return ret;
+	}
+
+	samsung_mipi_dphy_lane_enable(samsung);
+
+	reset_control_deassert(samsung->m_phy_rst);
+
+	/* The TSKEWCAL maximum is 100 µsec
+	 * at initial calibration.
+	 */
+	usleep_range(100, 110);
+
+	return 0;
+}
+
+static int samsung_mipi_dcphy_power_on(struct phy *phy)
+{
+	struct samsung_mipi_dcphy *samsung = phy_get_drvdata(phy);
+	enum phy_mode mode = phy_get_mode(phy);
+
+	pm_runtime_get_sync(samsung->dev);
+	reset_control_assert(samsung->apb_rst);
+	udelay(1);
+	reset_control_deassert(samsung->apb_rst);
+
+	switch (mode) {
+	case PHY_MODE_MIPI_DPHY:
+		return samsung_mipi_dphy_power_on(samsung);
+	default:
+		/* CSI cphy part to be implemented later */
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
+}
+
+static int samsung_mipi_dcphy_power_off(struct phy *phy)
+{
+	struct samsung_mipi_dcphy *samsung = phy_get_drvdata(phy);
+	enum phy_mode mode = phy_get_mode(phy);
+
+	switch (mode) {
+	case PHY_MODE_MIPI_DPHY:
+		samsung_mipi_dphy_lane_disable(samsung);
+		break;
+	default:
+		/* CSI cphy part to be implemented later */
+		return -EOPNOTSUPP;
+	}
+
+	samsung_mipi_dcphy_pll_disable(samsung);
+	samsung_mipi_dcphy_bias_block_disable(samsung);
+
+	pm_runtime_put(samsung->dev);
+
+	return 0;
+}
+
+static int samsung_mipi_dcphy_set_mode(struct phy *phy, enum phy_mode mode,
+				       int submode)
+{
+	return 0;
+}
+
+static int
+samsung_mipi_dcphy_pll_ssc_modulation_calc(struct samsung_mipi_dcphy *samsung,
+					   u8 *mfr, u8 *mrr)
+{
+	unsigned long fin = div64_ul(clk_get_rate(samsung->ref_clk), MSEC_PER_SEC);
+	u16 prediv = samsung->pll.prediv;
+	u16 fbdiv = samsung->pll.fbdiv;
+	u16 min_mfr, max_mfr;
+	u16 _mfr, best_mfr = 0;
+	u16 mr, _mrr, best_mrr = 0;
+
+	/* 20KHz ≤ MF ≤ 150KHz */
+	max_mfr = DIV_ROUND_UP(fin, (20 * prediv) << 5);
+	min_mfr = div64_ul(fin, ((150 * prediv) << 5));
+	/*0 ≤ mfr ≤ 255 */
+	if (max_mfr > 256)
+		max_mfr = 256;
+
+	for (_mfr = min_mfr; _mfr < max_mfr; _mfr++) {
+		/* 1 ≤ mrr ≤ 31 */
+		for (_mrr = 1; _mrr < 32; _mrr++) {
+			mr = DIV_ROUND_UP(_mfr * _mrr * 100, fbdiv << 6);
+			/* 0 ≤ MR ≤ 5% */
+			if (mr > 5)
+				continue;
+
+			if (_mfr * _mrr < 513) {
+				best_mfr = _mfr;
+				best_mrr = _mrr;
+				break;
+			}
+		}
+	}
+
+	if (best_mrr) {
+		*mfr = best_mfr & 0xff;
+		*mrr = best_mrr & 0x3f;
+	} else {
+		dev_err(samsung->dev, "failed to calc ssc parameter mfr and mrr\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static void
+samsung_mipi_dcphy_pll_calc_rate(struct samsung_mipi_dcphy *samsung,
+				 unsigned long long rate)
+{
+	unsigned long prate = clk_get_rate(samsung->ref_clk);
+	unsigned long fout;
+	u8 scaler = 0, mfr = 0, mrr = 0;
+	u16 fbdiv = 0;
+	u8 prediv = 1;
+	int dsm = 0;
+	int ret;
+
+	fout = samsung_mipi_dcphy_pll_round_rate(samsung, prate, rate,
+						 &prediv, &fbdiv, &dsm,
+						 &scaler);
+
+	dev_dbg(samsung->dev, "%s: fin=%lu, req_rate=%llu\n",
+		__func__, prate, rate);
+	dev_dbg(samsung->dev, "%s: fout=%lu, prediv=%u, fbdiv=%u\n",
+		__func__, fout, prediv, fbdiv);
+
+	samsung->pll.prediv = prediv;
+	samsung->pll.fbdiv = fbdiv;
+	samsung->pll.dsm = dsm;
+	samsung->pll.scaler = scaler;
+	samsung->pll.rate = fout;
+
+	/*
+	 * All DPHY 2.0 compliant Transmitters shall support SSC operating above
+	 * 2.5 Gbps
+	 */
+	if (fout > 2500000000LL) {
+		ret = samsung_mipi_dcphy_pll_ssc_modulation_calc(samsung,
+								 &mfr, &mrr);
+		if (!ret) {
+			samsung->pll.ssc_en = true;
+			samsung->pll.mfr = mfr;
+			samsung->pll.mrr = mrr;
+		}
+	}
+}
+
+static int samsung_mipi_dcphy_configure(struct phy *phy,
+					union phy_configure_opts *opts)
+{
+	struct samsung_mipi_dcphy *samsung = phy_get_drvdata(phy);
+	unsigned long long target_rate = opts->mipi_dphy.hs_clk_rate;
+
+	samsung->lanes = opts->mipi_dphy.lanes > 4 ? 4 : opts->mipi_dphy.lanes;
+
+	samsung_mipi_dcphy_pll_calc_rate(samsung, target_rate);
+	opts->mipi_dphy.hs_clk_rate = samsung->pll.rate;
+
+	return 0;
+}
+
+static int samsung_mipi_dcphy_init(struct phy *phy)
+{
+	struct samsung_mipi_dcphy *samsung = phy_get_drvdata(phy);
+
+	pm_runtime_get_sync(samsung->dev);
+
+	return 0;
+}
+
+static int samsung_mipi_dcphy_exit(struct phy *phy)
+{
+	struct samsung_mipi_dcphy *samsung = phy_get_drvdata(phy);
+
+	pm_runtime_put(samsung->dev);
+
+	return 0;
+}
+
+static const struct phy_ops samsung_mipi_dcphy_ops = {
+	.configure = samsung_mipi_dcphy_configure,
+	.set_mode = samsung_mipi_dcphy_set_mode,
+	.power_on  = samsung_mipi_dcphy_power_on,
+	.power_off = samsung_mipi_dcphy_power_off,
+	.init = samsung_mipi_dcphy_init,
+	.exit = samsung_mipi_dcphy_exit,
+	.owner	   = THIS_MODULE,
+};
+
+static const struct regmap_config samsung_mipi_dcphy_regmap_config = {
+	.name = "dcphy",
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.max_register = 0x10000,
+};
+
+static int samsung_mipi_dcphy_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct samsung_mipi_dcphy *samsung;
+	struct phy_provider *phy_provider;
+	struct phy *phy;
+	struct resource *res;
+	void __iomem *regs;
+	int ret;
+
+	samsung = devm_kzalloc(dev, sizeof(*samsung), GFP_KERNEL);
+	if (!samsung)
+		return -ENOMEM;
+
+	samsung->dev = dev;
+	samsung->pdata = device_get_match_data(dev);
+	platform_set_drvdata(pdev, samsung);
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	regs = devm_ioremap_resource(dev, res);
+	if (IS_ERR(regs))
+		return PTR_ERR(regs);
+
+	samsung->regmap = devm_regmap_init_mmio(dev, regs,
+						&samsung_mipi_dcphy_regmap_config);
+	if (IS_ERR(samsung->regmap))
+		return dev_err_probe(dev, PTR_ERR(samsung->regmap), "Failed to init regmap\n");
+
+	samsung->grf_regmap = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
+	if (IS_ERR(samsung->grf_regmap))
+		return dev_err_probe(dev, PTR_ERR(samsung->grf_regmap),
+				     "Unable to get rockchip,grf\n");
+
+	samsung->ref_clk = devm_clk_get(dev, "ref");
+	if (IS_ERR(samsung->ref_clk))
+		return dev_err_probe(dev, PTR_ERR(samsung->ref_clk),
+				     "Failed to get reference clock\n");
+
+	samsung->pclk = devm_clk_get(dev, "pclk");
+	if (IS_ERR(samsung->pclk))
+		return dev_err_probe(dev, PTR_ERR(samsung->pclk), "Failed to get pclk\n");
+
+	samsung->m_phy_rst = devm_reset_control_get(dev, "m_phy");
+	if (IS_ERR(samsung->m_phy_rst))
+		return dev_err_probe(dev, PTR_ERR(samsung->m_phy_rst),
+				     "Failed to get system m_phy_rst control\n");
+
+	samsung->s_phy_rst = devm_reset_control_get(dev, "s_phy");
+	if (IS_ERR(samsung->s_phy_rst))
+		return dev_err_probe(dev, PTR_ERR(samsung->s_phy_rst),
+				     "Failed to get system s_phy_rst control\n");
+
+	samsung->apb_rst = devm_reset_control_get(dev, "apb");
+	if (IS_ERR(samsung->apb_rst))
+		return dev_err_probe(dev, PTR_ERR(samsung->apb_rst),
+				     "Failed to get system apb_rst control\n");
+
+	samsung->grf_apb_rst = devm_reset_control_get(dev, "grf");
+	if (IS_ERR(samsung->grf_apb_rst))
+		return dev_err_probe(dev, PTR_ERR(samsung->grf_apb_rst),
+				     "Failed to get system grf_apb_rst control\n");
+
+	phy = devm_phy_create(dev, NULL, &samsung_mipi_dcphy_ops);
+	if (IS_ERR(phy))
+		return dev_err_probe(dev, PTR_ERR(phy), "Failed to create MIPI DC-PHY\n");
+
+	phy_set_drvdata(phy, samsung);
+
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to enable runtime PM\n");
+
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(phy_provider))
+		return dev_err_probe(dev, PTR_ERR(phy_provider),
+				     "Failed to register phy provider\n");
+
+	return 0;
+}
+
+static __maybe_unused int samsung_mipi_dcphy_runtime_suspend(struct device *dev)
+{
+	struct samsung_mipi_dcphy *samsung = dev_get_drvdata(dev);
+
+	clk_disable_unprepare(samsung->pclk);
+	clk_disable_unprepare(samsung->ref_clk);
+
+	return 0;
+}
+
+static __maybe_unused int samsung_mipi_dcphy_runtime_resume(struct device *dev)
+{
+	struct samsung_mipi_dcphy *samsung = dev_get_drvdata(dev);
+
+	clk_prepare_enable(samsung->pclk);
+	clk_prepare_enable(samsung->ref_clk);
+
+	return 0;
+}
+
+static const struct dev_pm_ops samsung_mipi_dcphy_pm_ops = {
+	SET_RUNTIME_PM_OPS(samsung_mipi_dcphy_runtime_suspend,
+			   samsung_mipi_dcphy_runtime_resume, NULL)
+};
+
+static const struct hs_drv_res_cfg rk3576_dphy_hs_drv_res_cfg = {
+	.clk_hs_drv_up_ohm = STRENGTH_52_OHM,
+	.clk_hs_drv_down_ohm = STRENGTH_52_OHM,
+	.data_hs_drv_up_ohm = STRENGTH_39_OHM,
+	.data_hs_drv_down_ohm = STRENGTH_39_OHM,
+};
+
+static const struct hs_drv_res_cfg rk3588_dphy_hs_drv_res_cfg = {
+	.clk_hs_drv_up_ohm = STRENGTH_34_OHM,
+	.clk_hs_drv_down_ohm = STRENGTH_34_OHM,
+	.data_hs_drv_up_ohm = STRENGTH_43_OHM,
+	.data_hs_drv_down_ohm = STRENGTH_43_OHM,
+};
+
+static const struct samsung_mipi_dcphy_plat_data rk3576_samsung_mipi_dcphy_plat_data = {
+	.dphy_hs_drv_res_cfg = &rk3576_dphy_hs_drv_res_cfg,
+	.dphy_tx_max_lane_kbps = 2500000L,
+};
+
+static const struct samsung_mipi_dcphy_plat_data rk3588_samsung_mipi_dcphy_plat_data = {
+	.dphy_hs_drv_res_cfg = &rk3588_dphy_hs_drv_res_cfg,
+	.dphy_tx_max_lane_kbps = 4500000L,
+};
+
+static const struct of_device_id samsung_mipi_dcphy_of_match[] = {
+	{
+		.compatible = "rockchip,rk3576-mipi-dcphy",
+		.data = &rk3576_samsung_mipi_dcphy_plat_data,
+	}, {
+		.compatible = "rockchip,rk3588-mipi-dcphy",
+		.data = &rk3588_samsung_mipi_dcphy_plat_data,
+	},
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, samsung_mipi_dcphy_of_match);
+
+static struct platform_driver samsung_mipi_dcphy_driver = {
+	.driver = {
+		.name = "samsung-mipi-dcphy",
+		.of_match_table	= of_match_ptr(samsung_mipi_dcphy_of_match),
+		.pm = &samsung_mipi_dcphy_pm_ops,
+	},
+	.probe	= samsung_mipi_dcphy_probe,
+};
+module_platform_driver(samsung_mipi_dcphy_driver);
+
+MODULE_AUTHOR("Guochun Huang<hero.huang@rock-chips.com>");
+MODULE_DESCRIPTION("Samsung MIPI DCPHY Driver");
+MODULE_LICENSE("GPL");
-- 
2.45.2


