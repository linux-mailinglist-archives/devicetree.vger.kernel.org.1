Return-Path: <devicetree+bounces-151698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEA7A4693E
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 19:14:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 459563A4C71
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 18:14:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3761236456;
	Wed, 26 Feb 2025 18:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="Sx+fkQgc"
X-Original-To: devicetree@vger.kernel.org
Received: from out-173.mta0.migadu.com (out-173.mta0.migadu.com [91.218.175.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288E922A7F4
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 18:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740593627; cv=none; b=D6w87cU45HgNnKbPtHoFanLKLb86pQs6Zmkpmx+YfzJlPrbwGC/tJhuMPsFBanMP0/YkrLtB+ICBmemVQi68BjhJdhbKO2D5zb1rJCCOd6R6s5SrlEu2LFiwOe+1CwhcrEcQlaZrYD+mtTH4EXAI3kEfEvmUwTe28MCZC5FTFWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740593627; c=relaxed/simple;
	bh=UN/xJWvEh/I9jYF3pAHyEEuEY1unkayD0kc0028j5GM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BJDxA3OxUvEnWt7WfOvQ4C+wHMsRCA0fboDnNtIPGfmZNTU5XVmoxM+CaEFM802b5nQrwEKAnelA9CJbHmU3RGO/hbJIYWHsi3CaxitfpxY25Lw9OcJ7fk93rFi6/U7Yt8V/kK+yBmF6NHNYKgnFYBkLTzgFs4T/AIqGGGbXslQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=Sx+fkQgc; arc=none smtp.client-ip=91.218.175.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1740593623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PXJAnYddVpDC3qHas9aB9KwFNFnsMuRLC3lSV36UGtw=;
	b=Sx+fkQgcXDnLpRw1PR7gI8YUpTNhqfDvJnvQahtumjnGV8aU840qN+pK40XobDSfli1yLy
	TjbXqRIBmsQeiBzfCNqjn+dmBHy4sz9RbRRVkuOksFdRoHo6EjzdrAhVcZBFON1L/JcjKb
	DhWDfXuI8izztiJ/viN7lxQyekM1dqk=
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Jyri Sarha <jyri.sarha@iki.fi>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Simona Vetter <simona@ffwll.ch>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Devarsh Thakkar <devarsht@ti.com>,
	Praneeth Bajjuri <praneeth@ti.com>,
	Udit Kumar <u-kumar1@ti.com>,
	Jayesh Choudhary <j-choudhary@ti.com>,
	Francesco Dolcini <francesco@dolcini.it>,
	DRI Development List <dri-devel@lists.freedesktop.org>,
	Devicetree List <devicetree@vger.kernel.org>,
	Linux Kernel List <linux-kernel@vger.kernel.org>,
	Aradhya Bhatia <aradhya.bhatia@linux.dev>
Subject: [PATCH v6 4/4] drm/tidss: Add OLDI bridge support
Date: Wed, 26 Feb 2025 23:43:00 +0530
Message-Id: <20250226181300.756610-5-aradhya.bhatia@linux.dev>
In-Reply-To: <20250226181300.756610-1-aradhya.bhatia@linux.dev>
References: <20250226181300.756610-1-aradhya.bhatia@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

From: Aradhya Bhatia <a-bhatia1@ti.com>

The AM62x and AM62Px SoCs feature 2 OLDI TXes each, which makes it
possible to connect them in dual-link or cloned single-link OLDI display
modes. The current OLDI support in tidss_dispc.c can only support for
a single OLDI TX, connected to a VP and doesn't really support
configuration of OLDIs in the other modes. The current OLDI support in
tidss_dispc.c also works on the principle that the OLDI output can only
be served by one, and only one, DSS video-port. This isn't the case in
the AM62Px SoC, where there are 2 DSS controllers present that share the
OLDI TXes.

Having their own devicetree and their own bridge entity will help
support the various display modes and sharing possiblilities of the OLDI
hardware.

For all these reasons, add support for the OLDI TXes as DRM bridges.

Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Signed-off-by: Aradhya Bhatia <a-bhatia1@ti.com>
Signed-off-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
---
 drivers/gpu/drm/tidss/Makefile           |   3 +-
 drivers/gpu/drm/tidss/tidss_dispc.c      |  24 +-
 drivers/gpu/drm/tidss/tidss_dispc.h      |   5 +
 drivers/gpu/drm/tidss/tidss_dispc_regs.h |  14 +
 drivers/gpu/drm/tidss/tidss_drv.c        |   9 +
 drivers/gpu/drm/tidss/tidss_drv.h        |   5 +
 drivers/gpu/drm/tidss/tidss_oldi.c       | 568 +++++++++++++++++++++++
 drivers/gpu/drm/tidss/tidss_oldi.h       |  42 ++
 8 files changed, 668 insertions(+), 2 deletions(-)
 create mode 100644 drivers/gpu/drm/tidss/tidss_oldi.c
 create mode 100644 drivers/gpu/drm/tidss/tidss_oldi.h

diff --git a/drivers/gpu/drm/tidss/Makefile b/drivers/gpu/drm/tidss/Makefile
index 312645271014..b6d6becf1683 100644
--- a/drivers/gpu/drm/tidss/Makefile
+++ b/drivers/gpu/drm/tidss/Makefile
@@ -7,6 +7,7 @@ tidss-y := tidss_crtc.o \
 	tidss_irq.o \
 	tidss_plane.o \
 	tidss_scale_coefs.o \
-	tidss_dispc.o
+	tidss_dispc.o \
+	tidss_oldi.o
 
 obj-$(CONFIG_DRM_TIDSS) += tidss.o
diff --git a/drivers/gpu/drm/tidss/tidss_dispc.c b/drivers/gpu/drm/tidss/tidss_dispc.c
index 7e5a062da896..817668b8639c 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc.c
+++ b/drivers/gpu/drm/tidss/tidss_dispc.c
@@ -466,6 +466,29 @@ static u32 dispc_vp_read(struct dispc_device *dispc, u32 hw_videoport, u16 reg)
 	return ioread32(base + reg);
 }
 
+int tidss_configure_oldi(struct tidss_device *tidss, u32 hw_videoport,
+			 u32 oldi_cfg)
+{
+	u32 count = 0;
+	u32 oldi_reset_bit = BIT(5 + hw_videoport);
+
+	dispc_vp_write(tidss->dispc, hw_videoport, DISPC_VP_DSS_OLDI_CFG, oldi_cfg);
+
+	while (!(oldi_reset_bit & dispc_read(tidss->dispc, DSS_SYSSTATUS)) &&
+	       count < 10000)
+		count++;
+
+	if (!(oldi_reset_bit & dispc_read(tidss->dispc, DSS_SYSSTATUS)))
+		return -ETIMEDOUT;
+
+	return 0;
+}
+
+void tidss_disable_oldi(struct tidss_device *tidss, u32 hw_videoport)
+{
+	dispc_vp_write(tidss->dispc, hw_videoport, DISPC_VP_DSS_OLDI_CFG, 0);
+}
+
 /*
  * TRM gives bitfields as start:end, where start is the higher bit
  * number. For example 7:0
@@ -1308,7 +1331,6 @@ void dispc_vp_disable_clk(struct dispc_device *dispc, u32 hw_videoport)
  * Calculate the percentage difference between the requested pixel clock rate
  * and the effective rate resulting from calculating the clock divider value.
  */
-static
 unsigned int dispc_pclk_diff(unsigned long rate, unsigned long real_rate)
 {
 	int r = rate / 100, rr = real_rate / 100;
diff --git a/drivers/gpu/drm/tidss/tidss_dispc.h b/drivers/gpu/drm/tidss/tidss_dispc.h
index d8e3f18c610f..ada25c21c8fe 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc.h
+++ b/drivers/gpu/drm/tidss/tidss_dispc.h
@@ -94,6 +94,11 @@ extern const struct dispc_features dispc_am62a7_feats;
 extern const struct dispc_features dispc_am65x_feats;
 extern const struct dispc_features dispc_j721e_feats;
 
+int tidss_configure_oldi(struct tidss_device *tidss, u32 hw_videoport,
+			 u32 oldi_cfg);
+void tidss_disable_oldi(struct tidss_device *tidss, u32 hw_videoport);
+unsigned int dispc_pclk_diff(unsigned long rate, unsigned long real_rate);
+
 void dispc_set_irqenable(struct dispc_device *dispc, dispc_irq_t mask);
 dispc_irq_t dispc_read_and_clear_irqstatus(struct dispc_device *dispc);
 
diff --git a/drivers/gpu/drm/tidss/tidss_dispc_regs.h b/drivers/gpu/drm/tidss/tidss_dispc_regs.h
index 30ce5ee40e1e..50a3f28250ef 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc_regs.h
+++ b/drivers/gpu/drm/tidss/tidss_dispc_regs.h
@@ -226,6 +226,20 @@ enum dispc_common_regs {
 #define DISPC_VP_DSS_DMA_THREADSIZE		0x170 /* J721E */
 #define DISPC_VP_DSS_DMA_THREADSIZE_STATUS	0x174 /* J721E */
 
+/* OLDI Config Bits (DISPC_VP_DSS_OLDI_CFG) */
+#define OLDI_ENABLE		BIT(0)
+#define OLDI_MAP		(BIT(1) | BIT(2) | BIT(3))
+#define OLDI_SRC		BIT(4)
+#define OLDI_CLONE_MODE		BIT(5)
+#define OLDI_MASTERSLAVE	BIT(6)
+#define OLDI_DEPOL		BIT(7)
+#define OLDI_MSB		BIT(8)
+#define OLDI_LBEN		BIT(9)
+#define OLDI_LBDATA		BIT(10)
+#define OLDI_DUALMODESYNC	BIT(11)
+#define OLDI_SOFTRST		BIT(12)
+#define OLDI_TPATCFG		BIT(13)
+
 /* LVDS Format values for OLDI_MAP field in DISPC_VP_OLDI_CFG register */
 enum oldi_mode_reg_val { SPWG_18 = 0, JEIDA_24 = 1, SPWG_24 = 2 };
 
diff --git a/drivers/gpu/drm/tidss/tidss_drv.c b/drivers/gpu/drm/tidss/tidss_drv.c
index d4652e8cc28c..05fbb672838e 100644
--- a/drivers/gpu/drm/tidss/tidss_drv.c
+++ b/drivers/gpu/drm/tidss/tidss_drv.c
@@ -24,6 +24,7 @@
 #include "tidss_drv.h"
 #include "tidss_kms.h"
 #include "tidss_irq.h"
+#include "tidss_oldi.h"
 
 /* Power management */
 
@@ -147,6 +148,10 @@ static int tidss_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	ret = tidss_oldi_init(tidss);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to init OLDI\n");
+
 	pm_runtime_enable(dev);
 
 	pm_runtime_set_autosuspend_delay(dev, 1000);
@@ -203,6 +208,8 @@ static int tidss_probe(struct platform_device *pdev)
 	pm_runtime_dont_use_autosuspend(dev);
 	pm_runtime_disable(dev);
 
+	tidss_oldi_deinit(tidss);
+
 	return ret;
 }
 
@@ -227,6 +234,8 @@ static void tidss_remove(struct platform_device *pdev)
 	pm_runtime_dont_use_autosuspend(dev);
 	pm_runtime_disable(dev);
 
+	tidss_oldi_deinit(tidss);
+
 	/* devm allocated dispc goes away with the dev so mark it NULL */
 	dispc_remove(tidss);
 
diff --git a/drivers/gpu/drm/tidss/tidss_drv.h b/drivers/gpu/drm/tidss/tidss_drv.h
index 7f4f4282bc04..d14d5d28f0a3 100644
--- a/drivers/gpu/drm/tidss/tidss_drv.h
+++ b/drivers/gpu/drm/tidss/tidss_drv.h
@@ -11,8 +11,10 @@
 
 #define TIDSS_MAX_PORTS 4
 #define TIDSS_MAX_PLANES 4
+#define TIDSS_MAX_OLDI_TXES 2
 
 typedef u32 dispc_irq_t;
+struct tidss_oldi;
 
 struct tidss_device {
 	struct drm_device ddev;		/* DRM device for DSS */
@@ -27,6 +29,9 @@ struct tidss_device {
 	unsigned int num_planes;
 	struct drm_plane *planes[TIDSS_MAX_PLANES];
 
+	unsigned int num_oldis;
+	struct tidss_oldi *oldis[TIDSS_MAX_OLDI_TXES];
+
 	unsigned int irq;
 
 	/* protects the irq masks field and irqenable/irqstatus registers */
diff --git a/drivers/gpu/drm/tidss/tidss_oldi.c b/drivers/gpu/drm/tidss/tidss_oldi.c
new file mode 100644
index 000000000000..e113c87fa730
--- /dev/null
+++ b/drivers/gpu/drm/tidss/tidss_oldi.c
@@ -0,0 +1,568 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2025 - Texas Instruments Incorporated
+ *
+ * Aradhya Bhatia <a-bhatia1@ti.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/of.h>
+#include <linux/of_graph.h>
+#include <linux/mfd/syscon.h>
+#include <linux/media-bus-format.h>
+#include <linux/regmap.h>
+
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_bridge.h>
+#include <drm/drm_of.h>
+
+#include "tidss_dispc.h"
+#include "tidss_dispc_regs.h"
+#include "tidss_oldi.h"
+
+struct tidss_oldi {
+	struct tidss_device	*tidss;
+	struct device		*dev;
+
+	struct drm_bridge	bridge;
+	struct drm_bridge	*next_bridge;
+
+	enum tidss_oldi_link_type link_type;
+	const struct oldi_bus_format *bus_format;
+	u32 oldi_instance;
+	u32 companion_instance;
+	u32 parent_vp;
+
+	struct clk *serial;
+	struct regmap *io_ctrl;
+};
+
+struct oldi_bus_format {
+	u32 bus_fmt;
+	u32 data_width;
+	enum oldi_mode_reg_val oldi_mode_reg_val;
+	u32 input_bus_fmt;
+};
+
+static const struct oldi_bus_format oldi_bus_formats[] = {
+	{ MEDIA_BUS_FMT_RGB666_1X7X3_SPWG,	18, SPWG_18,	MEDIA_BUS_FMT_RGB666_1X18 },
+	{ MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,	24, SPWG_24,	MEDIA_BUS_FMT_RGB888_1X24 },
+	{ MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA,	24, JEIDA_24,	MEDIA_BUS_FMT_RGB888_1X24 },
+};
+
+#define OLDI_IDLE_CLK_HZ	25000000 /*25 MHz */
+
+static inline struct tidss_oldi *
+drm_bridge_to_tidss_oldi(struct drm_bridge *bridge)
+{
+	return container_of(bridge, struct tidss_oldi, bridge);
+}
+
+static int tidss_oldi_bridge_attach(struct drm_bridge *bridge,
+				    enum drm_bridge_attach_flags flags)
+{
+	struct tidss_oldi *oldi = drm_bridge_to_tidss_oldi(bridge);
+
+	if (!oldi->next_bridge) {
+		dev_err(oldi->dev,
+			"%s: OLDI%u Failure attach next bridge\n",
+			__func__, oldi->oldi_instance);
+		return -ENODEV;
+	}
+
+	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)) {
+		dev_err(oldi->dev,
+			"%s: OLDI%u DRM_BRIDGE_ATTACH_NO_CONNECTOR is mandatory.\n",
+			__func__, oldi->oldi_instance);
+		return -EINVAL;
+	}
+
+	return drm_bridge_attach(bridge->encoder, oldi->next_bridge,
+				 bridge, flags);
+}
+
+static int
+tidss_oldi_set_serial_clk(struct tidss_oldi *oldi, unsigned long rate)
+{
+	unsigned long new_rate;
+	int ret;
+
+	ret = clk_set_rate(oldi->serial, rate);
+	if (ret) {
+		dev_err(oldi->dev,
+			"OLDI%u: failed to set serial clk rate to %lu Hz\n",
+			 oldi->oldi_instance, rate);
+		return ret;
+	}
+
+	new_rate = clk_get_rate(oldi->serial);
+
+	if (dispc_pclk_diff(rate, new_rate) > 5)
+		dev_warn(oldi->dev,
+			 "OLDI%u Clock rate %lu differs over 5%% from requested %lu\n",
+			 oldi->oldi_instance, new_rate, rate);
+
+	dev_dbg(oldi->dev, "OLDI%u: new rate %lu Hz (requested %lu Hz)\n",
+		oldi->oldi_instance, clk_get_rate(oldi->serial), rate);
+
+	return 0;
+}
+
+static void tidss_oldi_tx_power(struct tidss_oldi *oldi, bool enable)
+{
+	u32 mask;
+
+	/*
+	 * The power control bits are Active Low, and remain powered off by
+	 * default. That is, the bits are set to 1. To power on the OLDI TXes,
+	 * the bits must be cleared to 0. Since there are cases where not all
+	 * OLDI TXes are being used, the power logic selectively powers them
+	 * on.
+	 * Setting the variable 'val' to particular bit masks, makes sure that
+	 * the unrequired OLDI TXes remain powered off.
+	 */
+
+	if (enable) {
+		switch (oldi->link_type) {
+		case OLDI_MODE_SINGLE_LINK:
+			/* Power-on only the required OLDI TX's IO*/
+			mask = OLDI_PWRDOWN_TX(oldi->oldi_instance) | OLDI_PWRDN_BG;
+			break;
+		case OLDI_MODE_CLONE_SINGLE_LINK:
+		case OLDI_MODE_DUAL_LINK:
+			/* Power-on both the OLDI TXes' IOs */
+			mask = OLDI_PWRDOWN_TX(oldi->oldi_instance) |
+			       OLDI_PWRDOWN_TX(oldi->companion_instance) |
+			       OLDI_PWRDN_BG;
+			break;
+		default:
+			/*
+			 * This code execution should never reach here as any
+			 * OLDI with an unsupported OLDI mode would never get
+			 * registered in the first place.
+			 * However, power-off the OLDI in concern just in case.
+			 */
+			mask = OLDI_PWRDOWN_TX(oldi->oldi_instance);
+			enable = false;
+			break;
+		}
+	} else {
+		switch (oldi->link_type) {
+		case OLDI_MODE_CLONE_SINGLE_LINK:
+		case OLDI_MODE_DUAL_LINK:
+			mask = OLDI_PWRDOWN_TX(oldi->oldi_instance) |
+			       OLDI_PWRDOWN_TX(oldi->companion_instance) |
+			       OLDI_PWRDN_BG;
+			break;
+		case OLDI_MODE_SINGLE_LINK:
+		default:
+			mask = OLDI_PWRDOWN_TX(oldi->oldi_instance);
+			break;
+		}
+	}
+
+	regmap_update_bits(oldi->io_ctrl, OLDI_PD_CTRL, mask, enable ? 0 : mask);
+}
+
+static int tidss_oldi_config(struct tidss_oldi *oldi)
+{
+	const struct oldi_bus_format *bus_fmt = NULL;
+	u32 oldi_cfg = 0;
+	int ret;
+
+	bus_fmt = oldi->bus_format;
+
+	/*
+	 * MASTERSLAVE and SRC bits of OLDI Config are always set to 0.
+	 */
+
+	if (bus_fmt->data_width == 24)
+		oldi_cfg |= OLDI_MSB;
+	else if (bus_fmt->data_width != 18)
+		dev_warn(oldi->dev,
+			 "OLDI%u: DSS port width %d not supported\n",
+			 oldi->oldi_instance, bus_fmt->data_width);
+
+	oldi_cfg |= OLDI_DEPOL;
+
+	oldi_cfg = (oldi_cfg & (~OLDI_MAP)) | (bus_fmt->oldi_mode_reg_val << 1);
+
+	oldi_cfg |= OLDI_SOFTRST;
+
+	oldi_cfg |= OLDI_ENABLE;
+
+	switch (oldi->link_type) {
+	case OLDI_MODE_SINGLE_LINK:
+		/* All configuration is done for this mode.  */
+		break;
+
+	case OLDI_MODE_CLONE_SINGLE_LINK:
+		oldi_cfg |= OLDI_CLONE_MODE;
+		break;
+
+	case OLDI_MODE_DUAL_LINK:
+		/* data-mapping field also indicates dual-link mode */
+		oldi_cfg |= BIT(3);
+		oldi_cfg |= OLDI_DUALMODESYNC;
+		break;
+
+	default:
+		dev_err(oldi->dev, "OLDI%u: Unsupported mode.\n",
+			oldi->oldi_instance);
+		return -EINVAL;
+	}
+
+	ret = tidss_configure_oldi(oldi->tidss, oldi->parent_vp, oldi_cfg);
+	if (ret == -ETIMEDOUT)
+		dev_warn(oldi->dev, "OLDI%u: timeout waiting for OLDI reset done.\n",
+			 oldi->oldi_instance);
+
+	return ret;
+}
+
+static void tidss_oldi_atomic_pre_enable(struct drm_bridge *bridge,
+					 struct drm_atomic_state *state)
+{
+	struct tidss_oldi *oldi = drm_bridge_to_tidss_oldi(bridge);
+	struct drm_connector *connector;
+	struct drm_connector_state *conn_state;
+	struct drm_crtc_state *crtc_state;
+	struct drm_display_mode *mode;
+
+	connector = drm_atomic_get_new_connector_for_encoder(state,
+							     bridge->encoder);
+	if (WARN_ON(!connector))
+		return;
+
+	conn_state = drm_atomic_get_new_connector_state(state, connector);
+	if (WARN_ON(!conn_state))
+		return;
+
+	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
+	if (WARN_ON(!crtc_state))
+		return;
+
+	mode = &crtc_state->adjusted_mode;
+
+	/* Configure the OLDI params*/
+	tidss_oldi_config(oldi);
+
+	/* Set the OLDI serial clock (7 times the pixel clock) */
+	tidss_oldi_set_serial_clk(oldi, mode->clock * 7 * 1000);
+
+	/* Enable OLDI IO power */
+	tidss_oldi_tx_power(oldi, true);
+}
+
+static void tidss_oldi_atomic_post_disable(struct drm_bridge *bridge,
+					   struct drm_atomic_state *state)
+{
+	struct tidss_oldi *oldi = drm_bridge_to_tidss_oldi(bridge);
+
+	/* Disable OLDI IO power */
+	tidss_oldi_tx_power(oldi, false);
+
+	/* Set the OLDI serial clock to IDLE Frequency */
+	tidss_oldi_set_serial_clk(oldi, OLDI_IDLE_CLK_HZ);
+
+	/* Clear OLDI Config */
+	tidss_disable_oldi(oldi->tidss, oldi->parent_vp);
+}
+
+#define MAX_INPUT_SEL_FORMATS	1
+
+static u32 *tidss_oldi_atomic_get_input_bus_fmts(struct drm_bridge *bridge,
+						 struct drm_bridge_state *bridge_state,
+						 struct drm_crtc_state *crtc_state,
+						 struct drm_connector_state *conn_state,
+						 u32 output_fmt,
+						 unsigned int *num_input_fmts)
+{
+	struct tidss_oldi *oldi = drm_bridge_to_tidss_oldi(bridge);
+	u32 *input_fmts;
+	int i;
+
+	*num_input_fmts = 0;
+
+	for (i = 0; i < ARRAY_SIZE(oldi_bus_formats); i++)
+		if (oldi_bus_formats[i].bus_fmt == output_fmt)
+			break;
+
+	if (i == ARRAY_SIZE(oldi_bus_formats))
+		return NULL;
+
+	input_fmts = kcalloc(MAX_INPUT_SEL_FORMATS, sizeof(*input_fmts),
+			     GFP_KERNEL);
+	if (!input_fmts)
+		return NULL;
+
+	*num_input_fmts = 1;
+	input_fmts[0] = oldi_bus_formats[i].input_bus_fmt;
+	oldi->bus_format = &oldi_bus_formats[i];
+
+	return input_fmts;
+}
+
+static const struct drm_bridge_funcs tidss_oldi_bridge_funcs = {
+	.attach	= tidss_oldi_bridge_attach,
+	.atomic_pre_enable = tidss_oldi_atomic_pre_enable,
+	.atomic_post_disable = tidss_oldi_atomic_post_disable,
+	.atomic_get_input_bus_fmts = tidss_oldi_atomic_get_input_bus_fmts,
+	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
+	.atomic_reset = drm_atomic_helper_bridge_reset,
+};
+
+static int get_oldi_mode(struct device_node *oldi_tx, u32 *companion_instance)
+{
+	struct device_node *companion;
+	struct device_node *port0, *port1;
+	int pixel_order;
+
+	/*
+	 * Find if the OLDI is paired with another OLDI for combined OLDI
+	 * operation (dual-lvds or clone).
+	 */
+	companion = of_parse_phandle(oldi_tx, "ti,companion-oldi", 0);
+	if (!companion) {
+		/*
+		 * OLDI TXes in Single Link mode do not have companion
+		 * OLDI TXes and, Secondary OLDI nodes don't need this
+		 * information.
+		 */
+		*companion_instance = -1;
+
+		if (of_property_read_bool(oldi_tx, "ti,secondary-oldi"))
+			return OLDI_MODE_SECONDARY;
+
+		/*
+		 * The OLDI TX does not have a companion, nor is it a
+		 * secondary OLDI. It will operate independently.
+		 */
+		return OLDI_MODE_SINGLE_LINK;
+	}
+
+	if (of_property_read_u32(companion, "reg", companion_instance))
+		return OLDI_MODE_UNSUPPORTED;
+
+	/*
+	 * We need to work out if the sink is expecting us to function in
+	 * dual-link mode. We do this by looking at the DT port nodes we are
+	 * connected to, if they are marked as expecting even pixels and
+	 * odd pixels than we need to enable vertical stripe output.
+	 */
+	port0 = of_graph_get_port_by_id(oldi_tx, 1);
+	port1 = of_graph_get_port_by_id(companion, 1);
+	pixel_order = drm_of_lvds_get_dual_link_pixel_order(port0, port1);
+	of_node_put(port0);
+	of_node_put(port1);
+	of_node_put(companion);
+
+	switch (pixel_order) {
+	case -EINVAL:
+		/*
+		 * The dual link properties were not found in at least
+		 * one of the sink nodes. Since 2 OLDI ports are present
+		 * in the DT, it can be safely assumed that the required
+		 * configuration is Clone Mode.
+		 */
+		return OLDI_MODE_CLONE_SINGLE_LINK;
+
+	case DRM_LVDS_DUAL_LINK_ODD_EVEN_PIXELS:
+		return OLDI_MODE_DUAL_LINK;
+
+	/* Unsupported OLDI Modes */
+	case DRM_LVDS_DUAL_LINK_EVEN_ODD_PIXELS:
+	default:
+		return OLDI_MODE_UNSUPPORTED;
+	}
+}
+
+static int get_parent_dss_vp(struct device_node *oldi_tx, u32 *parent_vp)
+{
+	struct device_node *ep, *dss_port;
+	int ret;
+
+	ep = of_graph_get_endpoint_by_regs(oldi_tx, OLDI_INPUT_PORT, -1);
+	if (ep) {
+		dss_port = of_graph_get_remote_port(ep);
+		if (!dss_port) {
+			ret = -ENODEV;
+			goto err_return_ep_port;
+		}
+
+		ret = of_property_read_u32(dss_port, "reg", parent_vp);
+
+		of_node_put(dss_port);
+err_return_ep_port:
+		of_node_put(ep);
+		return ret;
+	}
+
+	return -ENODEV;
+}
+
+static const struct drm_bridge_timings default_tidss_oldi_timings = {
+	.input_bus_flags = DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE
+			 | DRM_BUS_FLAG_DE_HIGH,
+};
+
+void tidss_oldi_deinit(struct tidss_device *tidss)
+{
+	for (int i = 0; i < tidss->num_oldis; i++) {
+		if (tidss->oldis[i]) {
+			drm_bridge_remove(&tidss->oldis[i]->bridge);
+			tidss->oldis[i] = NULL;
+		}
+	}
+}
+
+int tidss_oldi_init(struct tidss_device *tidss)
+{
+	struct tidss_oldi *oldi;
+	struct device_node *child;
+	struct drm_bridge *bridge;
+	u32 parent_vp, oldi_instance, companion_instance;
+	enum tidss_oldi_link_type link_type = OLDI_MODE_UNSUPPORTED;
+	struct device_node *oldi_parent;
+	int ret = 0;
+
+	tidss->num_oldis = 0;
+
+	oldi_parent = of_get_child_by_name(tidss->dev->of_node, "oldi-transmitters");
+	if (!oldi_parent)
+		/* Return gracefully */
+		return 0;
+
+	for_each_child_of_node(oldi_parent, child) {
+		ret = get_parent_dss_vp(child, &parent_vp);
+		if (ret) {
+			if (ret == -ENODEV) {
+				/*
+				 * ENODEV means that this particular OLDI node
+				 * is not connected with the DSS, which is not
+				 * a harmful case. There could be another OLDI
+				 * which may still be connected.
+				 * Continue to search for that.
+				 */
+				ret = 0;
+				continue;
+			}
+			goto err_put_node;
+		}
+
+		ret = of_property_read_u32(child, "reg", &oldi_instance);
+		if (ret)
+			goto err_put_node;
+
+		/*
+		 * Now that its confirmed that OLDI is connected with DSS, let's
+		 * continue getting the OLDI sinks ahead and other OLDI
+		 * properties.
+		 */
+		bridge = devm_drm_of_get_bridge(tidss->dev, child,
+						OLDI_OUTPUT_PORT, 0);
+		if (IS_ERR(bridge)) {
+			/*
+			 * Either there was no OLDI sink in the devicetree, or
+			 * the OLDI sink has not been added yet. In any case,
+			 * return.
+			 * We don't want to have an OLDI node connected to DSS
+			 * but not to any sink.
+			 */
+			ret = dev_err_probe(tidss->dev, PTR_ERR(bridge),
+					    "no panel/bridge for OLDI%u.\n",
+					    oldi_instance);
+			goto err_put_node;
+		}
+
+		link_type = get_oldi_mode(child, &companion_instance);
+		if (link_type == OLDI_MODE_UNSUPPORTED) {
+			ret = dev_err_probe(tidss->dev, -EINVAL,
+					    "OLDI%u: Unsupported OLDI connection.\n",
+					    oldi_instance);
+			goto err_put_node;
+		} else if (link_type == OLDI_MODE_CLONE_SINGLE_LINK) {
+			/*
+			 * The OLDI driver cannot support OLDI clone mode
+			 * properly at present.
+			 * The clone mode requires 2 working encoder-bridge
+			 * pipelines, generating from the same crtc. The DRM
+			 * framework does not support this at present. If
+			 * there were to be, say, 2 OLDI sink bridges each
+			 * connected to an OLDI TXes, they couldn't both be
+			 * supported simultaneously.
+			 * This driver still has some code pertaining to OLDI
+			 * clone mode configuration in DSS hardware for future,
+			 * when there is a better infrastructure in the DRM
+			 * framework to support 2 encoder-bridge pipelines
+			 * simultaneously.
+			 * Till that time, this driver shall error out if it
+			 * detects a clone mode configuration.
+			 */
+			ret = dev_err_probe(tidss->dev, -EOPNOTSUPP,
+					    "The OLDI driver does not support Clone Mode at present.\n");
+			goto err_put_node;
+		} else if (link_type == OLDI_MODE_SECONDARY) {
+			/*
+			 * This is the secondary OLDI node, which serves as a
+			 * companinon to the primary OLDI, when it is configured
+			 * for the dual-lvds mode. Since the primary OLDI will
+			 * be a part of bridge chain, no need to put this one
+			 * too. Continue onto the next OLDI node.
+			 */
+			continue;
+		}
+
+		oldi = devm_kzalloc(tidss->dev, sizeof(*oldi), GFP_KERNEL);
+		if (!oldi) {
+			ret = -ENOMEM;
+			goto err_put_node;
+		}
+
+		oldi->parent_vp = parent_vp;
+		oldi->oldi_instance = oldi_instance;
+		oldi->companion_instance = companion_instance;
+		oldi->link_type = link_type;
+		oldi->dev = tidss->dev;
+		oldi->next_bridge = bridge;
+
+		oldi->io_ctrl = syscon_regmap_lookup_by_phandle(child,
+								"ti,oldi-io-ctrl");
+		if (IS_ERR(oldi->io_ctrl)) {
+			ret = dev_err_probe(oldi->dev, PTR_ERR(oldi->io_ctrl),
+					    "OLDI%u: syscon_regmap_lookup_by_phandle failed.\n",
+					    oldi_instance);
+			goto err_put_node;
+		}
+
+		oldi->serial = of_clk_get_by_name(child, "serial");
+		if (IS_ERR(oldi->serial)) {
+			ret = dev_err_probe(oldi->dev, PTR_ERR(oldi->serial),
+					    "OLDI%u: Failed to get serial clock.\n",
+					    oldi_instance);
+			goto err_put_node;
+		}
+
+		/* Register the bridge. */
+		oldi->bridge.of_node = child;
+		oldi->bridge.driver_private = oldi;
+		oldi->bridge.funcs = &tidss_oldi_bridge_funcs;
+		oldi->bridge.timings = &default_tidss_oldi_timings;
+
+		tidss->oldis[tidss->num_oldis++] = oldi;
+		oldi->tidss = tidss;
+
+		drm_bridge_add(&oldi->bridge);
+	}
+
+	of_node_put(child);
+	of_node_put(oldi_parent);
+
+	return 0;
+
+err_put_node:
+	of_node_put(child);
+	of_node_put(oldi_parent);
+	return ret;
+}
diff --git a/drivers/gpu/drm/tidss/tidss_oldi.h b/drivers/gpu/drm/tidss/tidss_oldi.h
new file mode 100644
index 000000000000..7231cbeb451f
--- /dev/null
+++ b/drivers/gpu/drm/tidss/tidss_oldi.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2025 - Texas Instruments Incorporated
+ *
+ * Aradhya Bhatia <a-bhatia1@ti.com>
+ */
+
+#ifndef __TIDSS_OLDI_H__
+#define __TIDSS_OLDI_H__
+
+#include "tidss_drv.h"
+
+struct tidss_oldi;
+
+/* OLDI PORTS */
+#define OLDI_INPUT_PORT		0
+#define OLDI_OUTPUT_PORT	1
+
+/* Control MMR Registers */
+
+/* Register offsets */
+#define OLDI_PD_CTRL            0x100
+#define OLDI_LB_CTRL            0x104
+
+/* Power control bits */
+#define OLDI_PWRDOWN_TX(n)	BIT(n)
+
+/* LVDS Bandgap reference Enable/Disable */
+#define OLDI_PWRDN_BG		BIT(8)
+
+enum tidss_oldi_link_type {
+	OLDI_MODE_UNSUPPORTED,
+	OLDI_MODE_SINGLE_LINK,
+	OLDI_MODE_CLONE_SINGLE_LINK,
+	OLDI_MODE_DUAL_LINK,
+	OLDI_MODE_SECONDARY,
+};
+
+int tidss_oldi_init(struct tidss_device *tidss);
+void tidss_oldi_deinit(struct tidss_device *tidss);
+
+#endif /* __TIDSS_OLDI_H__ */
-- 
2.34.1


