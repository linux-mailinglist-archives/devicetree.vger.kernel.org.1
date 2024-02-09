Return-Path: <devicetree+bounces-40162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D917A84F82D
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 16:08:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 728CF288533
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 15:08:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBD1D6F07A;
	Fri,  9 Feb 2024 15:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="ku2iSXtK"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A39946A00B;
	Fri,  9 Feb 2024 15:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707491324; cv=none; b=EtDSFBgcZuVIsyuzUYwY4Fb8T6AClRrSaw6WYO7l/HuwyNx4bUgdDiOWXrX5Rq9JXviTE4M3OQJ+dpWU/8Rhy3dcVUK6QusbpvmZa5WrxkjsUySrdXT3IatCc0QFEVIZwbX+EMbQ7Zlgqef77oMSci1gQddOy8sYNyLUPF4ZUH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707491324; c=relaxed/simple;
	bh=+WdTbJtndChJa5h/hbvdTUzYQT/r/rhk5D4eo+1EJjQ=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GWYaAZYChWJ1VIeRXfvCj3nz4ECXOUG9vVWlCLa/eAQLOG4mYMM+RqDlO95+62jMf/M0TeLSOgc0LT1XwXUHhbtYqUiqedbw4if6uOar6UxDbCK/MD59NqAisz9wucUfZ9VHTl4sRSmNz58/O5EJJAoLbyNamYrI57urVs6w4cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=ku2iSXtK; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1707491323; x=1739027323;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=+WdTbJtndChJa5h/hbvdTUzYQT/r/rhk5D4eo+1EJjQ=;
  b=ku2iSXtK/1XL01l+mI4dZ11A24iNpkrW1acefaScAGHviZlrQU/iP8so
   AweVkUxjeFwCZt0qEzg26PsAYk7U0cjZbehD8Lei+7Ng5qledYa6ob4QU
   OqDum+L9j+EZES429ETpy+dFNE6EMhwihUmhGgrR4AzegyfrJLq6s0fEv
   SLGDsIOx0M4XIJ5D8yBK7nmEDit1myqWi24WAXzrthZz4byjRqYb5eXI4
   r98cHdr5EVyRYoSL3yyHVyCDjO+b6vm3pvQuRAnpF+HHNgccmH545iXKe
   8vzrrZcmQlieIXorjWASlV7ZqX5rijlTNCPt0lVj5c69ncTjJdnAJffFw
   g==;
X-CSE-ConnectionGUID: KIIHkk3fQjqBsya5fSn4qQ==
X-CSE-MsgGUID: ew0NFIJwTY2lZdpqcCi2mA==
X-IronPort-AV: E=Sophos;i="6.05,257,1701154800"; 
   d="scan'208";a="16014542"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Feb 2024 08:08:41 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 08:08:37 -0700
Received: from che-lt-i70843lx.amer.actel.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Fri, 9 Feb 2024 08:08:25 -0700
From: Dharma Balasubiramani <dharma.b@microchip.com>
To: <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>,
	<rfoss@kernel.org>, <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
	<jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
	<daniel@ffwll.ch>, <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>, <linux@armlinux.org.uk>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <manikandan.m@microchip.com>,
	<dharma.b@microchip.com>, <arnd@arndb.de>, <geert+renesas@glider.be>,
	<Jason@zx2c4.com>, <mpe@ellerman.id.au>, <gerg@linux-m68k.org>,
	<rdunlap@infradead.org>, <vbabka@suse.cz>, <dri-devel@lists.freedesktop.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <hari.prasathge@microchip.com>,
	<akpm@linux-foundation.org>, <deller@gmx.de>
Subject: [PATCH v4 2/4] drm/bridge: add lvds controller support for sam9x7
Date: Fri, 9 Feb 2024 20:37:55 +0530
Message-ID: <20240209150757.66914-3-dharma.b@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240209150757.66914-1-dharma.b@microchip.com>
References: <20240209150757.66914-1-dharma.b@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add a new LVDS controller driver for sam9x7 which does the following:
- Prepares and enables the LVDS Peripheral clock
- Defines its connector type as DRM_MODE_CONNECTOR_LVDS and adds itself
to the global bridge list.
- Identifies its output endpoint as panel and adds it to the encoder
display pipeline
- Enables the LVDS serializer

Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>
---
Changelog
v3 -> v4
- No changes.
v2 ->v3
- Correct Typo error "serializer".
- Consolidate get() and prepare() functions and use devm_clk_get_prepared().
- Remove unused variable 'ret' in probe().
- Use devm_pm_runtime_enable() and drop the mchp_lvds_remove().
v1 -> v2
- Drop 'res' variable and combine two lines into one.
- Handle deferred probe properly, use dev_err_probe().
- Don't print anything on deferred probe. Dropped print.
- Remove the MODULE_ALIAS and add MODULE_DEVICE_TABLE().
- symbol 'mchp_lvds_driver' was not declared. It should be static.
---
 drivers/gpu/drm/bridge/Kconfig          |   7 +
 drivers/gpu/drm/bridge/Makefile         |   1 +
 drivers/gpu/drm/bridge/microchip-lvds.c | 228 ++++++++++++++++++++++++
 3 files changed, 236 insertions(+)
 create mode 100644 drivers/gpu/drm/bridge/microchip-lvds.c

diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index 3e6a4e2044c0..74ca0edb4e0d 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -173,6 +173,13 @@ config DRM_MEGACHIPS_STDPXXXX_GE_B850V3_FW
 	  to DP++. This is used with the i.MX6 imx-ldb
 	  driver. You are likely to say N here.
 
+config DRM_MICROCHIP_LVDS_SERIALIZER
+	tristate "Microchip LVDS serializer support"
+	depends on OF
+	depends on DRM_ATMEL_HLCDC
+	help
+	  Support for Microchip's LVDS serializer.
+
 config DRM_NWL_MIPI_DSI
 	tristate "Northwest Logic MIPI DSI Host controller"
 	depends on DRM
diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
index 2b892b7ed59e..e3804e93d324 100644
--- a/drivers/gpu/drm/bridge/Makefile
+++ b/drivers/gpu/drm/bridge/Makefile
@@ -11,6 +11,7 @@ obj-$(CONFIG_DRM_LONTIUM_LT9611) += lontium-lt9611.o
 obj-$(CONFIG_DRM_LONTIUM_LT9611UXC) += lontium-lt9611uxc.o
 obj-$(CONFIG_DRM_LVDS_CODEC) += lvds-codec.o
 obj-$(CONFIG_DRM_MEGACHIPS_STDPXXXX_GE_B850V3_FW) += megachips-stdpxxxx-ge-b850v3-fw.o
+obj-$(CONFIG_DRM_MICROCHIP_LVDS_SERIALIZER) += microchip-lvds.o
 obj-$(CONFIG_DRM_NXP_PTN3460) += nxp-ptn3460.o
 obj-$(CONFIG_DRM_PARADE_PS8622) += parade-ps8622.o
 obj-$(CONFIG_DRM_PARADE_PS8640) += parade-ps8640.o
diff --git a/drivers/gpu/drm/bridge/microchip-lvds.c b/drivers/gpu/drm/bridge/microchip-lvds.c
new file mode 100644
index 000000000000..d3fd9d722e36
--- /dev/null
+++ b/drivers/gpu/drm/bridge/microchip-lvds.c
@@ -0,0 +1,228 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2023 Microchip Technology Inc. and its subsidiaries
+ *
+ * Author: Manikandan Muralidharan <manikandan.m@microchip.com>
+ * Author: Dharma Balasubiramani <dharma.b@microchip.com>
+ *
+ */
+
+#include <linux/clk.h>
+#include <linux/component.h>
+#include <linux/delay.h>
+#include <linux/jiffies.h>
+#include <linux/mfd/syscon.h>
+#include <linux/of_graph.h>
+#include <linux/pinctrl/devinfo.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/regmap.h>
+#include <linux/reset.h>
+
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_bridge.h>
+#include <drm/drm_of.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_print.h>
+#include <drm/drm_probe_helper.h>
+#include <drm/drm_simple_kms_helper.h>
+
+#define LVDS_POLL_TIMEOUT_MS 1000
+
+/* LVDSC register offsets */
+#define LVDSC_CR	0x00
+#define LVDSC_CFGR	0x04
+#define LVDSC_SR	0x0C
+#define LVDSC_WPMR	0xE4
+
+/* Bitfields in LVDSC_CR (Control Register) */
+#define LVDSC_CR_SER_EN	BIT(0)
+
+/* Bitfields in LVDSC_CFGR (Configuration Register) */
+#define LVDSC_CFGR_PIXSIZE_24BITS	0
+#define LVDSC_CFGR_DEN_POL_HIGH		0
+#define LVDSC_CFGR_DC_UNBALANCED	0
+#define LVDSC_CFGR_MAPPING_JEIDA	BIT(6)
+
+/*Bitfields in LVDSC_SR */
+#define LVDSC_SR_CS	BIT(0)
+
+/* Bitfields in LVDSC_WPMR (Write Protection Mode Register) */
+#define LVDSC_WPMR_WPKEY_MASK	GENMASK(31, 8)
+#define LVDSC_WPMR_WPKEY_PSSWD	0x4C5644
+
+struct mchp_lvds {
+	struct device *dev;
+	void __iomem *regs;
+	struct clk *pclk;
+	int format; /* vesa or jeida format */
+	struct drm_panel *panel;
+	struct drm_bridge bridge;
+	struct drm_bridge *panel_bridge;
+};
+
+static inline struct mchp_lvds *bridge_to_lvds(struct drm_bridge *bridge)
+{
+	return container_of(bridge, struct mchp_lvds, bridge);
+}
+
+static inline u32 lvds_readl(struct mchp_lvds *lvds, u32 offset)
+{
+	return readl_relaxed(lvds->regs + offset);
+}
+
+static inline void lvds_writel(struct mchp_lvds *lvds, u32 offset, u32 val)
+{
+	writel_relaxed(val, lvds->regs + offset);
+}
+
+static void lvds_serialiser_on(struct mchp_lvds *lvds)
+{
+	unsigned long timeout = jiffies + msecs_to_jiffies(LVDS_POLL_TIMEOUT_MS);
+
+	/* The LVDSC registers can only be written if WPEN is cleared */
+	lvds_writel(lvds, LVDSC_WPMR, (LVDSC_WPMR_WPKEY_PSSWD &
+				LVDSC_WPMR_WPKEY_MASK));
+
+	/* Wait for the status of configuration registers to be changed */
+	while (lvds_readl(lvds, LVDSC_SR) & LVDSC_SR_CS) {
+		if (time_after(jiffies, timeout)) {
+			dev_err(lvds->dev, "%s: timeout error\n", __func__);
+			return;
+		}
+		usleep_range(1000, 2000);
+	}
+
+	/* Configure the LVDSC */
+	lvds_writel(lvds, LVDSC_CFGR, (LVDSC_CFGR_MAPPING_JEIDA |
+				LVDSC_CFGR_DC_UNBALANCED |
+				LVDSC_CFGR_DEN_POL_HIGH |
+				LVDSC_CFGR_PIXSIZE_24BITS));
+
+	/* Enable the LVDS serializer */
+	lvds_writel(lvds, LVDSC_CR, LVDSC_CR_SER_EN);
+}
+
+static int mchp_lvds_attach(struct drm_bridge *bridge,
+			    enum drm_bridge_attach_flags flags)
+{
+	struct mchp_lvds *lvds = bridge_to_lvds(bridge);
+
+	bridge->encoder->encoder_type = DRM_MODE_ENCODER_LVDS;
+
+	return drm_bridge_attach(bridge->encoder, lvds->panel_bridge,
+				 bridge, flags);
+}
+
+static void mchp_lvds_enable(struct drm_bridge *bridge)
+{
+	struct mchp_lvds *lvds = bridge_to_lvds(bridge);
+	int ret;
+
+	ret = clk_enable(lvds->pclk);
+	if (ret < 0) {
+		DRM_DEV_ERROR(lvds->dev, "failed to enable lvds pclk %d\n", ret);
+		return;
+	}
+
+	ret = pm_runtime_get_sync(lvds->dev);
+	if (ret < 0) {
+		DRM_DEV_ERROR(lvds->dev, "failed to get pm runtime: %d\n", ret);
+		clk_disable(lvds->pclk);
+		return;
+	}
+
+	lvds_serialiser_on(lvds);
+}
+
+static void mchp_lvds_disable(struct drm_bridge *bridge)
+{
+	struct mchp_lvds *lvds = bridge_to_lvds(bridge);
+
+	pm_runtime_put(lvds->dev);
+	clk_disable(lvds->pclk);
+}
+
+static const struct drm_bridge_funcs mchp_lvds_bridge_funcs = {
+	.attach = mchp_lvds_attach,
+	.enable = mchp_lvds_enable,
+	.disable = mchp_lvds_disable,
+};
+
+static int mchp_lvds_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct mchp_lvds *lvds;
+	struct device_node *port;
+
+	if (!dev->of_node)
+		return -ENODEV;
+
+	lvds = devm_kzalloc(&pdev->dev, sizeof(*lvds), GFP_KERNEL);
+	if (!lvds)
+		return -ENOMEM;
+
+	lvds->dev = dev;
+
+	lvds->regs = devm_ioremap_resource(lvds->dev,
+			platform_get_resource(pdev, IORESOURCE_MEM, 0));
+	if (IS_ERR(lvds->regs))
+		return PTR_ERR(lvds->regs);
+
+	lvds->pclk = devm_clk_get_prepared(lvds->dev, "pclk");
+	if (IS_ERR(lvds->pclk))
+		return dev_err_probe(lvds->dev, PTR_ERR(lvds->pclk),
+				"could not get pclk_lvds prepared\n");
+
+	port = of_graph_get_remote_node(dev->of_node, 1, 0);
+	if (!port) {
+		DRM_DEV_ERROR(dev,
+			      "can't find port point, please init lvds panel port!\n");
+		return -EINVAL;
+	}
+
+	lvds->panel = of_drm_find_panel(port);
+	of_node_put(port);
+
+	if (IS_ERR(lvds->panel))
+		return -EPROBE_DEFER;
+
+	lvds->panel_bridge = devm_drm_panel_bridge_add(dev, lvds->panel);
+
+	if (IS_ERR(lvds->panel_bridge))
+		return PTR_ERR(lvds->panel_bridge);
+
+	lvds->bridge.of_node = dev->of_node;
+	lvds->bridge.type = DRM_MODE_CONNECTOR_LVDS;
+	lvds->bridge.funcs = &mchp_lvds_bridge_funcs;
+
+	dev_set_drvdata(dev, lvds);
+	devm_pm_runtime_enable(dev);
+
+	drm_bridge_add(&lvds->bridge);
+
+	return 0;
+}
+
+static const struct of_device_id mchp_lvds_dt_ids[] = {
+	{
+		.compatible = "microchip,sam9x75-lvds",
+	},
+	{},
+};
+MODULE_DEVICE_TABLE(of, mchp_lvds_dt_ids);
+
+static struct platform_driver mchp_lvds_driver = {
+	.probe = mchp_lvds_probe,
+	.driver = {
+		   .name = "microchip-lvds",
+		   .of_match_table = mchp_lvds_dt_ids,
+	},
+};
+module_platform_driver(mchp_lvds_driver);
+
+MODULE_AUTHOR("Manikandan Muralidharan <manikandan.m@microchip.com>");
+MODULE_AUTHOR("Dharma Balasubiramani <dharma.b@microchip.com>");
+MODULE_DESCRIPTION("Low Voltage Differential Signaling Controller Driver");
+MODULE_LICENSE("GPL");
-- 
2.25.1


