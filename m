Return-Path: <devicetree+bounces-162199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 473C6A7763C
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 10:20:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D43B3A9C8E
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 08:20:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5356C1EB19D;
	Tue,  1 Apr 2025 08:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chir.rs header.i=lotte@chir.rs header.b="U8M3tn+p"
X-Original-To: devicetree@vger.kernel.org
Received: from sender-op-o17.zoho.eu (sender-op-o17.zoho.eu [136.143.169.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15ED1E9B2E
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 08:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.169.17
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743495602; cv=pass; b=R6yMhR4os0/PvrSuE5vrT8QphzjYzf2SL+K7ZSoVqHvYzBokrcB0Tbpu/odzsi8lDlY6Xg7YPbv+cCwiuapAr5eAjhn73hUHtr3gwpd/E7YXPLqfQLoHi0lqCFDej9w/e3mAIo9qAduhZGBVoKmyMTh+EtqepeCWt5q0LSG3w4Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743495602; c=relaxed/simple;
	bh=YZ4Jk6eqQC3bN1aK1Z3hLGmV0/PXuWGcY7UZp+YjW3o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PVC1rLCAjLBBjKhUjN1GupUMvjxCTMlan1k00qoGEc8ksJvGUaJL46hUaVORcLP8D4YjsrdNR83/LFoGhP0cdQq5pdWnrjXPwDw3d3GqppOFRktsxc0vfe+UY48kfWxMh9+cvp/4TMVnm1tmtgpxBDbpAtBbS+q2K4es+mv7jTg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=chir.rs; spf=pass smtp.mailfrom=chir.rs; dkim=pass (1024-bit key) header.d=chir.rs header.i=lotte@chir.rs header.b=U8M3tn+p; arc=pass smtp.client-ip=136.143.169.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=chir.rs
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chir.rs
ARC-Seal: i=1; a=rsa-sha256; t=1743495565; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=guotI+g5B6t/bPgzIYn+ID5MdcybjDgmjmVKgFLvA6IGqLsHH/hGrID4cEfTg7urs/h2Vkf/IVDh67kdQ5nl9SSfCfd+FblOCjTrgolPpqM3V3n49/gYmXORab3AL/nS0ALz/YFPxiHXLu38+HErk5OS5lnUvLZb5+sPWfpyiK8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1743495565; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=UwqOHRUGmjXp66HlNVWld2Eeio7ErVQl0UVMqzdMIiI=; 
	b=NccoCvAafYVGapcf8RiybmXW2m+9ynjZTbcJ/CEk9Y9PAcwt/TFWIRGveopbhWGGaKKOcVY6bV0YdiBHD+YZfpRozQ3edA08kMBXJ2h+9WcuApAHr+K8LQe3SAObCRynb2W1/upCvzcc514ni+p6cI3tB+nz8pY2zYguC7WgP98=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=chir.rs;
	spf=pass  smtp.mailfrom=lotte@chir.rs;
	dmarc=pass header.from=<lotte@chir.rs>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1743495565;
	s=zmail; d=chir.rs; i=lotte@chir.rs;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=UwqOHRUGmjXp66HlNVWld2Eeio7ErVQl0UVMqzdMIiI=;
	b=U8M3tn+paRzAPK8E8uKnoQGL9kKUNDLTAqemvnWA5RUil5pW8t/t28oxU6q6qDWt
	VoeB+dpn14QNLoeVeE5SMicjQEo6g0QvRGKEm1JiJa6VC3UCi89DkniPR3nOC2keS+b
	3vBSvRDA6Yms4bW6Lrik/GJvcYAV5Y3I0v0+w8nw=
Received: by mx.zoho.eu with SMTPS id 1743495561886571.3388221735572;
	Tue, 1 Apr 2025 10:19:21 +0200 (CEST)
From: =?UTF-8?q?Charlotte=20=Dele=C5=84kec?= <lotte@chir.rs>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	max@maxfierke.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Charlotte=20Dele=C5=84kec?= <lotte@chir.rs>
Subject: [PATCH v4 1/3] drm: panel: Add driver for Clockwork cwd686 panel
Date: Tue,  1 Apr 2025 09:18:31 +0100
Message-ID: <20250401081852.283532-2-lotte@chir.rs>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250401081852.283532-1-lotte@chir.rs>
References: <20250401081852.283532-1-lotte@chir.rs>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External

From: Max Fierke <max@maxfierke.com>

The ClockworkPi DevTerm (all models) uses a 6.86" IPS display
of unknown provenance, which uses the Chipone ICNL9707 IC driver.

The display panel I have has two model numbers: TXW686001 and WTL068601G,
but cannot find any manufacturer associated with either, so opting for the
ClockworkPi model number.

This driver is based on the GPL-licensed driver released by ClockworkPi,
authored by Pinfan Zhu, with some additional cleanup, rotation support,
and display sleep re-enabling done by me.

Original driver here for reference: https://github.com/clockworkpi/DevTerm/blob/main/Code/patch/armbian_build_a06/patch/kernel-004-panel.patch
Display IC datasheet provided here: https://github.com/clockworkpi/DevTerm/blob/main/Schematics/ICNL9707_Datasheet.pdf

Co-authored-by: Charlotte Deleńkec <lotte@chir.rs>
Signed-off-by: Charlotte Deleńkec <lotte@chir.rs>
Signed-off-by: Max Fierke <max@maxfierke.com>
---
 drivers/gpu/drm/panel/Kconfig                 |  12 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-clockwork-cwd686.c    | 447 ++++++++++++++++++
 3 files changed, 460 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-clockwork-cwd686.c

diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index e059b06e0239..6fc23c10fa56 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -96,6 +96,18 @@ config DRM_PANEL_BOE_TV101WUM_LL2
 	  Say Y here if you want to support for BOE TV101WUM-LL2
 	  WUXGA PANEL DSI Video Mode panel
 
+config DRM_PANEL_CLOCKWORK_CWD686
+	tristate "Clockwork CWD686 panel"
+	depends on OF
+	depends on DRM_MIPI_DSI
+	depends on BACKLIGHT_CLASS_DEVICE
+	help
+	  Say Y here if you want to enable support for the Clockwork CWD686
+	  ICNL9707-based panel, e.g. as used within the Clockwork DevTerm.
+	  The panel has a 480x1280 resolution and uses 24 bit RGB per pixel.
+
+	  To compile this driver as a module, choose M here.
+
 config DRM_PANEL_EBBG_FT8719
 	tristate "EBBG FT8719 panel driver"
 	depends on OF
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index 1bb8ae46b59b..9f5b8d2a86e4 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_DRM_PANEL_BOE_HIMAX8279D) += panel-boe-himax8279d.o
 obj-$(CONFIG_DRM_PANEL_BOE_TH101MB31UIG002_28A) += panel-boe-th101mb31ig002-28a.o
 obj-$(CONFIG_DRM_PANEL_BOE_TV101WUM_LL2) += panel-boe-tv101wum-ll2.o
 obj-$(CONFIG_DRM_PANEL_BOE_TV101WUM_NL6) += panel-boe-tv101wum-nl6.o
+obj-$(CONFIG_DRM_PANEL_CLOCKWORK_CWD686) += panel-clockwork-cwd686.o
 obj-$(CONFIG_DRM_PANEL_DSI_CM) += panel-dsi-cm.o
 obj-$(CONFIG_DRM_PANEL_LVDS) += panel-lvds.o
 obj-$(CONFIG_DRM_PANEL_SIMPLE) += panel-simple.o
diff --git a/drivers/gpu/drm/panel/panel-clockwork-cwd686.c b/drivers/gpu/drm/panel/panel-clockwork-cwd686.c
new file mode 100644
index 000000000000..53d65e6df1b0
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-clockwork-cwd686.c
@@ -0,0 +1,447 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (c) 2021 Clockwork Tech LLC
+ * Copyright (c) 2021-2022 Max Fierke <max@maxfierke.com>
+ *
+ * Based on Pinfan Zhu's work on panel-cwd686.c for Clockwork's 5.10 BSP
+ */
+
+#include <linux/gpio/consumer.h>
+#include <linux/regulator/consumer.h>
+#include <linux/delay.h>
+#include <linux/of_device.h>
+#include <linux/module.h>
+
+#include <video/mipi_display.h>
+
+#include <drm/drm_modes.h>
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_panel.h>
+
+struct cwd686 {
+	struct device *dev;
+	struct drm_panel panel;
+	struct regulator *vci;
+	struct regulator *iovcc;
+	struct gpio_desc *reset_gpio;
+	enum drm_panel_orientation orientation;
+	bool prepared;
+};
+
+static const struct drm_display_mode default_mode = {
+	.clock = 54465,
+	.hdisplay = 480,
+	.hsync_start = 480 + 150,
+	.hsync_end = 480 + 150 + 24,
+	.htotal = 480 + 150 + 24 + 40,
+	.vdisplay = 1280,
+	.vsync_start = 1280 + 12,
+	.vsync_end = 1280 + 12 + 6,
+	.vtotal = 1280 + 12 + 6 + 10,
+};
+
+static inline struct cwd686 *panel_to_cwd686(struct drm_panel *panel)
+{
+	return container_of(panel, struct cwd686, panel);
+}
+
+#define ICNL9707_CMD_CGOUTL 0xB3
+#define ICNL9707_CMD_CGOUTR 0xB4
+#define ICNL9707_P_CGOUT_VGL 0x00
+#define ICNL9707_P_CGOUT_VGH 0x01
+#define ICNL9707_P_CGOUT_HZ 0x02
+#define ICNL9707_P_CGOUT_GND 0x03
+#define ICNL9707_P_CGOUT_GSP1 0x04
+#define ICNL9707_P_CGOUT_GSP2 0x05
+#define ICNL9707_P_CGOUT_GSP3 0x06
+#define ICNL9707_P_CGOUT_GSP4 0x07
+#define ICNL9707_P_CGOUT_GSP5 0x08
+#define ICNL9707_P_CGOUT_GSP6 0x09
+#define ICNL9707_P_CGOUT_GSP7 0x0A
+#define ICNL9707_P_CGOUT_GSP8 0x0B
+#define ICNL9707_P_CGOUT_GCK1 0x0C
+#define ICNL9707_P_CGOUT_GCK2 0x0D
+#define ICNL9707_P_CGOUT_GCK3 0x0E
+#define ICNL9707_P_CGOUT_GCK4 0x0F
+#define ICNL9707_P_CGOUT_GCK5 0x10
+#define ICNL9707_P_CGOUT_GCK6 0x11
+#define ICNL9707_P_CGOUT_GCK7 0x12
+#define ICNL9707_P_CGOUT_GCK8 0x13
+#define ICNL9707_P_CGOUT_GCK9 0x14
+#define ICNL9707_P_CGOUT_GCK10 0x15
+#define ICNL9707_P_CGOUT_GCK11 0x16
+#define ICNL9707_P_CGOUT_GCK12 0x17
+#define ICNL9707_P_CGOUT_GCK13 0x18
+#define ICNL9707_P_CGOUT_GCK14 0x19
+#define ICNL9707_P_CGOUT_GCK15 0x1A
+#define ICNL9707_P_CGOUT_GCK16 0x1B
+#define ICNL9707_P_CGOUT_DIR 0x1C
+#define ICNL9707_P_CGOUT_DIRB 0x1D
+#define ICNL9707_P_CGOUT_ECLK_AC 0x1E
+#define ICNL9707_P_CGOUT_ECLK_ACB 0x1F
+#define ICNL9707_P_CGOUT_ECLK_AC2 0x20
+#define ICNL9707_P_CGOUT_ECLK_AC2B 0x21
+#define ICNL9707_P_CGOUT_GCH 0x22
+#define ICNL9707_P_CGOUT_GCL 0x23
+#define ICNL9707_P_CGOUT_XDON 0x24
+#define ICNL9707_P_CGOUT_XDONB 0x25
+
+#define ICNL9707_MADCTL_ML  0x10
+#define ICNL9707_MADCTL_RGB 0x00
+#define ICNL9707_MADCTL_BGR 0x08
+#define ICNL9707_MADCTL_MH  0x04
+
+#define ICNL9707_CMD_PWRCON_VCOM 0xB6
+#define ICNL9707_P_PWRCON_VCOM_0495V 0x0D
+
+#define ICNL9707_CMD_PWRCON_SEQ 0xB7
+#define ICNL9707_CMD_PWRCON_CLK 0xB8
+#define ICNL9707_CMD_PWRCON_BTA 0xB9
+#define ICNL9707_CMD_PWRCON_MODE 0xBA
+#define ICNL9707_CMD_PWRCON_REG 0xBD
+
+#define ICNL9707_CMD_TCON 0xC1
+#define ICNL9707_CMD_TCON2 0xC2
+#define ICNL9707_CMD_TCON3 0xC3
+#define ICNL9707_CMD_SRC_TIM 0xC6
+#define ICNL9707_CMD_SRCCON 0xC7
+#define ICNL9707_CMD_SET_GAMMA 0xC8
+
+#define ICNL9707_CMD_ETC 0xD0
+
+#define ICNL9707_CMD_PASSWORD1 0xF0
+#define ICNL9707_P_PASSWORD1_DEFAULT 0xA5
+#define ICNL9707_P_PASSWORD1_ENABLE_LVL2 0x5A
+
+#define ICNL9707_CMD_PASSWORD2 0xF1
+#define ICNL9707_P_PASSWORD2_DEFAULT 0x5A
+#define ICNL9707_P_PASSWORD2_ENABLE_LVL2 0xA5
+
+static int cwd686_init_sequence(struct cwd686 *ctx)
+{
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+	int err;
+
+	/* Enable access to Level 2 registers */
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_PASSWORD1,
+		     ICNL9707_P_PASSWORD1_ENABLE_LVL2,
+		     ICNL9707_P_PASSWORD1_ENABLE_LVL2);
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_PASSWORD2,
+		     ICNL9707_P_PASSWORD2_ENABLE_LVL2,
+		     ICNL9707_P_PASSWORD2_ENABLE_LVL2);
+
+	/* Set PWRCON_VCOM (-0.495V, -0.495V) */
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_PWRCON_VCOM,
+		     ICNL9707_P_PWRCON_VCOM_0495V,
+		     ICNL9707_P_PWRCON_VCOM_0495V);
+
+	/* Map ASG output signals */
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_CGOUTR,
+		     ICNL9707_P_CGOUT_GSP7, ICNL9707_P_CGOUT_GSP5,
+		     ICNL9707_P_CGOUT_GCK7, ICNL9707_P_CGOUT_GCK5,
+		     ICNL9707_P_CGOUT_GCK3, ICNL9707_P_CGOUT_GCK1,
+		     ICNL9707_P_CGOUT_VGL, ICNL9707_P_CGOUT_VGL,
+		     ICNL9707_P_CGOUT_VGL, ICNL9707_P_CGOUT_GND,
+		     ICNL9707_P_CGOUT_VGL, ICNL9707_P_CGOUT_GND,
+		     ICNL9707_P_CGOUT_GND, ICNL9707_P_CGOUT_GND,
+		     ICNL9707_P_CGOUT_GND, ICNL9707_P_CGOUT_GND,
+		     ICNL9707_P_CGOUT_GND, ICNL9707_P_CGOUT_GND,
+		     ICNL9707_P_CGOUT_GSP1, ICNL9707_P_CGOUT_GSP3);
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_CGOUTL,
+		     ICNL9707_P_CGOUT_GSP8, ICNL9707_P_CGOUT_GSP6,
+		     ICNL9707_P_CGOUT_GCK8, ICNL9707_P_CGOUT_GCK6,
+		     ICNL9707_P_CGOUT_GCK4, ICNL9707_P_CGOUT_GCK2,
+		     ICNL9707_P_CGOUT_VGL, ICNL9707_P_CGOUT_VGL,
+		     ICNL9707_P_CGOUT_VGL, ICNL9707_P_CGOUT_GND,
+		     ICNL9707_P_CGOUT_VGL, ICNL9707_P_CGOUT_GND,
+		     ICNL9707_P_CGOUT_GND, ICNL9707_P_CGOUT_GND,
+		     ICNL9707_P_CGOUT_GND, ICNL9707_P_CGOUT_GND,
+		     ICNL9707_P_CGOUT_GND, ICNL9707_P_CGOUT_GND,
+		     ICNL9707_P_CGOUT_GSP2, ICNL9707_P_CGOUT_GSP4);
+
+	/* Undocumented commands provided by the vendor */
+	mipi_dsi_dcs_write_seq(dsi, 0xB0, 0x54, 0x32, 0x23, 0x45, 0x44, 0x44, 0x44, 0x44, 0x90, 0x01, 0x90, 0x01);
+	mipi_dsi_dcs_write_seq(dsi, 0xB1, 0x32, 0x84, 0x02, 0x83, 0x30, 0x01, 0x6B, 0x01);
+	mipi_dsi_dcs_write_seq(dsi, 0xB2, 0x73);
+
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_PWRCON_REG,
+		     0x4E, 0x0E, 0x50, 0x50, 0x26,
+		     0x1D, 0x00, 0x14, 0x42, 0x03);
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_PWRCON_SEQ,
+		     0x01, 0x01, 0x09, 0x11, 0x0D, 0x55,
+		     0x19, 0x19, 0x21, 0x1D, 0x00, 0x00,
+		     0x00, 0x00, 0x02, 0xFF, 0x3C);
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_PWRCON_CLK, 0x23, 0x01, 0x30, 0x34, 0x63);
+
+	/* Disable abnormal power-off flag */
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_PWRCON_BTA, 0xA0, 0x22, 0x00, 0x44);
+
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_PWRCON_MODE, 0x12, 0x63);
+
+	/* Set VBP, VFP, VSW, HBP, HFP, HSW */
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_TCON, 0x0C, 0x16, 0x04, 0x0C, 0x10, 0x04);
+
+	/* Set resolution */
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_TCON2, 0x11, 0x41);
+
+	/* Set frame blanking */
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_TCON3, 0x22, 0x31, 0x04);
+
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_SRCCON, 0x05, 0x23, 0x6B, 0x49, 0x00);
+
+	/* Another undocumented command */
+	mipi_dsi_dcs_write_seq(dsi, 0xC5, 0x00);
+
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_ETC, 0x37, 0xFF, 0xFF);
+
+	/* Another set of undocumented commands */
+	mipi_dsi_dcs_write_seq(dsi, 0xD2, 0x63, 0x0B, 0x08, 0x88);
+	mipi_dsi_dcs_write_seq(dsi, 0xD3, 0x01, 0x00, 0x00, 0x01, 0x01, 0x37, 0x25, 0x38, 0x31, 0x06, 0x07);
+
+	/* Set Gamma to 2.2 */
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_SET_GAMMA,
+		     0x7C, 0x6A, 0x5D, 0x53, 0x53, 0x45, 0x4B,
+		     0x35, 0x4D, 0x4A, 0x49, 0x66, 0x53, 0x57,
+		     0x4A, 0x48, 0x3B, 0x2A, 0x06, 0x7C, 0x6A,
+		     0x5D, 0x53, 0x53, 0x45, 0x4B, 0x35, 0x4D,
+		     0x4A, 0x49, 0x66, 0x53, 0x57, 0x4A, 0x48,
+		     0x3B, 0x2A, 0x06);
+
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_SRC_TIM, 0x00, 0x00, 0xFF, 0x00, 0x00, 0xFF, 0x00, 0x00);
+
+	/* Another undocumented command */
+	mipi_dsi_dcs_write_seq(dsi, 0xF4, 0x08, 0x77);
+
+	mipi_dsi_dcs_write_seq(dsi, MIPI_DCS_SET_ADDRESS_MODE,
+		     ICNL9707_MADCTL_RGB | ICNL9707_MADCTL_ML | ICNL9707_MADCTL_MH);
+
+	/* Enable tearing mode at VBLANK */
+	err = mipi_dsi_dcs_set_tear_on(dsi, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
+	if (err) {
+		dev_err(ctx->dev, "failed to enable vblank TE (%d)\n", err);
+		return err;
+	}
+
+	/* Disable access to Level 2 registers */
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_PASSWORD2,
+		     ICNL9707_P_PASSWORD2_DEFAULT,
+		     ICNL9707_P_PASSWORD2_DEFAULT);
+	mipi_dsi_dcs_write_seq(dsi, ICNL9707_CMD_PASSWORD1,
+		     ICNL9707_P_PASSWORD1_DEFAULT,
+		     ICNL9707_P_PASSWORD1_DEFAULT);
+
+	return 0;
+}
+
+static int cwd686_unprepare(struct drm_panel *panel)
+{
+	struct cwd686 *ctx = panel_to_cwd686(panel);
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+	int err;
+
+	if (!ctx->prepared)
+		return 0;
+
+	err = mipi_dsi_dcs_set_display_off(dsi);
+	if (err) {
+		dev_err(ctx->dev, "failed to turn display off (%d)\n", err);
+		return err;
+	}
+
+	err = mipi_dsi_dcs_enter_sleep_mode(dsi);
+	if (err) {
+		dev_err(ctx->dev, "failed to enter sleep mode (%d)\n", err);
+		return err;
+	}
+
+	msleep(120);
+
+	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
+
+	regulator_disable(ctx->iovcc);
+	regulator_disable(ctx->vci);
+
+	ctx->prepared = false;
+
+	return 0;
+}
+
+static int cwd686_prepare(struct drm_panel *panel)
+{
+	struct cwd686 *ctx = panel_to_cwd686(panel);
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+	int err;
+
+	if (ctx->prepared)
+		return 0;
+
+	err = regulator_enable(ctx->vci);
+	if (err < 0) {
+		dev_err(ctx->dev, "failed to enable vci supply: %d\n", err);
+		return err;
+	}
+	err = regulator_enable(ctx->iovcc);
+	if (err < 0) {
+		dev_err(ctx->dev, "failed to enable iovcc supply: %d\n", err);
+		goto disable_vci;
+	}
+
+	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
+	/* T2 */
+	msleep(10);
+
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+	/* T3 */
+	msleep(20);
+
+	/* Exit sleep mode and power on */
+
+	err = cwd686_init_sequence(ctx);
+	if (err) {
+		dev_err(ctx->dev, "failed to initialize display (%d)\n", err);
+		goto disable_iovcc;
+	}
+
+	err = mipi_dsi_dcs_exit_sleep_mode(dsi);
+	if (err) {
+		dev_err(ctx->dev, "failed to exit sleep mode (%d)\n", err);
+		goto disable_iovcc;
+	}
+	/* T6 */
+	msleep(120);
+
+	err = mipi_dsi_dcs_set_display_on(dsi);
+	if (err) {
+		dev_err(ctx->dev, "failed to turn display on (%d)\n", err);
+		goto disable_iovcc;
+	}
+	msleep(20);
+
+	ctx->prepared = true;
+
+	return 0;
+disable_iovcc:
+	regulator_disable(ctx->iovcc);
+disable_vci:
+	regulator_disable(ctx->vci);
+	return err;
+}
+
+static int cwd686_get_modes(struct drm_panel *panel, struct drm_connector *connector)
+{
+	struct cwd686 *ctx = panel_to_cwd686(panel);
+	struct drm_display_mode *mode;
+
+	mode = drm_mode_duplicate(connector->dev, &default_mode);
+	if (!mode) {
+		dev_err(panel->dev, "bad mode or failed to add mode\n");
+		return -EINVAL;
+	}
+	drm_mode_set_name(mode);
+	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
+
+	/* Set up connector's "panel orientation" property */
+	drm_connector_set_panel_orientation(connector, ctx->orientation);
+
+	drm_mode_probed_add(connector, mode);
+
+	return 1; /* Number of modes */
+}
+
+static const struct drm_panel_funcs cwd686_drm_funcs = {
+	.unprepare = cwd686_unprepare,
+	.prepare = cwd686_prepare,
+	.get_modes = cwd686_get_modes,
+};
+
+static int cwd686_probe(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	struct cwd686 *ctx;
+	int err;
+
+	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	mipi_dsi_set_drvdata(dsi, ctx);
+	ctx->dev = dev;
+
+	dsi->lanes = 4;
+	dsi->format = MIPI_DSI_FMT_RGB888;
+	dsi->mode_flags = MIPI_DSI_MODE_VIDEO |
+			  MIPI_DSI_MODE_VIDEO_BURST |
+			  MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
+
+	ctx->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(ctx->reset_gpio)) {
+		err = PTR_ERR(ctx->reset_gpio);
+		return dev_err_probe(dev, err, "Failed to request GPIO (%d)\n", err);
+	}
+
+	ctx->vci = devm_regulator_get(dev, "vci");
+	if (IS_ERR(ctx->vci)) {
+		err = PTR_ERR(ctx->vci);
+		return dev_err_probe(dev, err, "Failed to request vci regulator: %d\n", err);
+	}
+
+	ctx->iovcc = devm_regulator_get(dev, "iovcc");
+	if (IS_ERR(ctx->iovcc)) {
+		err = PTR_ERR(ctx->iovcc);
+		return dev_err_probe(dev, err, "Failed to request iovcc regulator: %d\n", err);
+	}
+
+	err = of_drm_get_panel_orientation(dev->of_node, &ctx->orientation);
+	if (err) {
+		dev_err(dev, "%pOF: failed to get orientation %d\n", dev->of_node, err);
+		return err;
+	}
+
+	drm_panel_init(&ctx->panel, dev, &cwd686_drm_funcs, DRM_MODE_CONNECTOR_DSI);
+
+	err = drm_panel_of_backlight(&ctx->panel);
+	if (err)
+		return dev_err_probe(dev, err, "Failed to get backlight\n");
+
+	ctx->panel.prepare_prev_first = true;
+	drm_panel_add(&ctx->panel);
+
+	err = mipi_dsi_attach(dsi);
+	if (err < 0) {
+		dev_err(dev, "mipi_dsi_attach() failed: %d\n", err);
+		drm_panel_remove(&ctx->panel);
+		return err;
+	}
+
+	return 0;
+}
+
+static void cwd686_remove(struct mipi_dsi_device *dsi)
+{
+	struct cwd686 *ctx = mipi_dsi_get_drvdata(dsi);
+
+	mipi_dsi_detach(dsi);
+	drm_panel_remove(&ctx->panel);
+}
+
+static const struct of_device_id cwd686_of_match[] = {
+	{ .compatible = "clockwork,cwd686" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, cwd686_of_match);
+
+static struct mipi_dsi_driver cwd686_driver = {
+	.probe = cwd686_probe,
+	.remove = cwd686_remove,
+	.driver = {
+		.name = "panel-clockwork-cwd686",
+		.of_match_table = cwd686_of_match,
+	},
+};
+module_mipi_dsi_driver(cwd686_driver);
+
+MODULE_AUTHOR("Pinfan Zhu <zhu@clockworkpi.com>");
+MODULE_AUTHOR("Max Fierke <max@maxfierke.com>");
+MODULE_AUTHOR("Charlotte Deleńkec <lotte@chir.rs>");
+MODULE_DESCRIPTION("Clockwork CWD686 panel driver");
+MODULE_LICENSE("GPL");
-- 
2.48.1


