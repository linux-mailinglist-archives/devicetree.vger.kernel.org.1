Return-Path: <devicetree+bounces-266331-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AC//KyODlWlrSAIAu9opvQ
	(envelope-from <devicetree+bounces-266331-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:15:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4C7154A30
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:15:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D319C302C90F
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:12:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2225B336ECD;
	Wed, 18 Feb 2026 09:12:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D8EF335BCD
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771405960; cv=none; b=TcWoa6o2PBKdk7n3HOXUzOnEWmofJyGHWqH/dRfAQ1XKQwu/qqcXZQh8rxWxm/kANuyM61kxTYhSd5s0CXG9Bp+gI/bdQeC9JwJJoxAxktgrOD32FMV5Hd6rkiWPKl10X1lWr9hY7Ck9tNst5uRnIf191nxymcqjQwr+T+AGpKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771405960; c=relaxed/simple;
	bh=gjLx1zW41M6OfTgDMDiCN06BIttZTSivQRiCAVwrOZQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fga91sqeTsmqeSRD3U5BOxlJ2C5Oib4nvCiqQDKNlTvgTRTyoogtNkow4i/hezpQ+UZStTEau8OLllvreJmjVgN7sftrDTblgnFSKiaWGRPITpiH2pmQWrVpnecn2+4DeaJZNNbMISEUnBeDuuEgDqGavy8L/GLn1GcZK6FaKWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vsdbe-0001kM-CM; Wed, 18 Feb 2026 10:12:26 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 18 Feb 2026 10:12:06 +0100
Subject: [PATCH v4 3/3] drm/panel: add LXD M9189A panel driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260218-drm-panel-ek79007ad3-v4-3-8ec448bf3ede@pengutronix.de>
References: <20260218-drm-panel-ek79007ad3-v4-0-8ec448bf3ede@pengutronix.de>
In-Reply-To: <20260218-drm-panel-ek79007ad3-v4-0-8ec448bf3ede@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Rouven Czerwinski <r.czerwinski@pengutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 kernel@pengutronix.de, Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266331-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pengutronix.de:mid,pengutronix.de:email,fairphone.com:email,puri.sm:email,sigxcpu.org:email]
X-Rspamd-Queue-Id: 1F4C7154A30
X-Rspamd-Action: no action

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

The LXD M9189A panel is based on the EK79007AD3 DSI display controller.
It currently supports only 4 lane operation.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v4:
- Fix typo in driver name ("panel-lxa-m9189a")

Changes in v3:
- Change maintainer to Michael Tretter <m.tretter@pengutronix.de>
- Fix error code if regulator is missing
- Request power-supply instead of vdd-supply

v2:
- use _multi functions
- remove unnecessary dcs_nop function
- calculate pixelclock with timings
suggested by Dmitry Baryshkov

- rename functions to m9189_ prefix
- rename struct and c file to use m9189
- fix commit title to mention m9189
---
 MAINTAINERS                              |   6 +
 drivers/gpu/drm/panel/Kconfig            |   9 ++
 drivers/gpu/drm/panel/Makefile           |   1 +
 drivers/gpu/drm/panel/panel-lxd-m9189a.c | 243 +++++++++++++++++++++++++++++++
 4 files changed, 259 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e08767323763..ba4030a4d154 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7948,6 +7948,12 @@ F:	Documentation/devicetree/bindings/display/lvds.yaml
 F:	Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
 F:	drivers/gpu/drm/panel/panel-lvds.c
 
+DRM DRIVER FOR LXD M9189A PANELS
+M:	Michael Tretter <m.tretter@pengutronix.de>
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/panel/lxd,m9189a.yaml
+F:	drivers/gpu/drm/panel/panel-lxd-m9189a.c
+
 DRM DRIVER FOR MANTIX MLAF057WE51 PANELS
 M:	Guido Günther <agx@sigxcpu.org>
 R:	Purism Kernel Team <kernel@puri.sm>
diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index 7a83804fedca..b7d35a73080e 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -442,6 +442,15 @@ config DRM_PANEL_LG_SW43408
 	  pixel. It provides a MIPI DSI interface to the host and has a
 	  built-in LED backlight.
 
+config DRM_PANEL_LXD_M9189A
+	tristate "LXD M9189A MIPI-DSI LCD panel"
+	depends on OF
+	depends on DRM_MIPI_DSI
+	depends on BACKLIGHT_CLASS_DEVICE
+	help
+	  Say Y if you want to enable support for the LXD M9189A 4-Lane
+	  1024x600 MIPI DSI panel.
+
 config DRM_PANEL_MAGNACHIP_D53E6EA8966
 	tristate "Magnachip D53E6EA8966 DSI panel"
 	depends on OF && SPI
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index b9562a6fdcb3..d1303455a374 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -44,6 +44,7 @@ obj-$(CONFIG_DRM_PANEL_LG_LB035Q02) += panel-lg-lb035q02.o
 obj-$(CONFIG_DRM_PANEL_LG_LD070WX3) += panel-lg-ld070wx3.o
 obj-$(CONFIG_DRM_PANEL_LG_LG4573) += panel-lg-lg4573.o
 obj-$(CONFIG_DRM_PANEL_LG_SW43408) += panel-lg-sw43408.o
+obj-$(CONFIG_DRM_PANEL_LXD_M9189A) += panel-lxd-m9189a.o
 obj-$(CONFIG_DRM_PANEL_MAGNACHIP_D53E6EA8966) += panel-magnachip-d53e6ea8966.o
 obj-$(CONFIG_DRM_PANEL_NEC_NL8048HL11) += panel-nec-nl8048hl11.o
 obj-$(CONFIG_DRM_PANEL_NEWVISION_NV3051D) += panel-newvision-nv3051d.o
diff --git a/drivers/gpu/drm/panel/panel-lxd-m9189a.c b/drivers/gpu/drm/panel/panel-lxd-m9189a.c
new file mode 100644
index 000000000000..68019e1e43a9
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-lxd-m9189a.c
@@ -0,0 +1,243 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Generated with linux-mdss-dsi-panel-driver-generator from vendor device tree.
+ * Copyright (c) 2024 Luca Weiss <luca.weiss@fairphone.com>
+ */
+
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/regulator/consumer.h>
+#include <linux/types.h>
+
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_modes.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_probe_helper.h>
+
+/* Manufacturer specific DSI commands */
+#define EK79007AD3_GAMMA1		0x80
+#define EK79007AD3_GAMMA2		0x81
+#define EK79007AD3_GAMMA3		0x82
+#define EK79007AD3_GAMMA4		0x83
+#define EK79007AD3_GAMMA5		0x84
+#define EK79007AD3_GAMMA6		0x85
+#define EK79007AD3_GAMMA7		0x86
+#define EK79007AD3_PANEL_CTRL3		0xB2
+
+struct m9189_panel {
+	struct drm_panel panel;
+	struct mipi_dsi_device *dsi;
+	struct regulator *supply;
+	struct gpio_desc *reset_gpio;
+	struct gpio_desc *standby_gpio;
+};
+
+static inline struct m9189_panel *to_m9189_panel(struct drm_panel *panel)
+{
+	return container_of(panel, struct m9189_panel, panel);
+}
+
+static void m9189_reset(struct m9189_panel *m9189)
+{
+	gpiod_set_value_cansleep(m9189->reset_gpio, 0);
+	msleep(20);
+	gpiod_set_value_cansleep(m9189->reset_gpio, 1);
+	msleep(30);
+	gpiod_set_value_cansleep(m9189->reset_gpio, 0);
+	msleep(55);
+}
+
+static int m9189_on(struct m9189_panel *m9189)
+{
+	struct mipi_dsi_multi_context ctx = { .dsi = m9189->dsi };
+
+	ctx.dsi->mode_flags |= MIPI_DSI_MODE_LPM;
+
+	/* Gamma 2.2 */
+	mipi_dsi_dcs_write_seq_multi(&ctx, EK79007AD3_GAMMA1, 0x48);
+	mipi_dsi_dcs_write_seq_multi(&ctx, EK79007AD3_GAMMA2, 0xB8);
+	mipi_dsi_dcs_write_seq_multi(&ctx, EK79007AD3_GAMMA3, 0x88);
+	mipi_dsi_dcs_write_seq_multi(&ctx, EK79007AD3_GAMMA4, 0x88);
+	mipi_dsi_dcs_write_seq_multi(&ctx, EK79007AD3_GAMMA5, 0x58);
+	mipi_dsi_dcs_write_seq_multi(&ctx, EK79007AD3_GAMMA6, 0xD2);
+	mipi_dsi_dcs_write_seq_multi(&ctx, EK79007AD3_GAMMA7, 0x88);
+	mipi_dsi_msleep(&ctx, 50);
+
+	/* 4 Lanes */
+	mipi_dsi_generic_write_multi(&ctx, (u8[]){ EK79007AD3_PANEL_CTRL3, 0x70 }, 2);
+
+	mipi_dsi_dcs_exit_sleep_mode_multi(&ctx);
+	mipi_dsi_msleep(&ctx, 120);
+
+	mipi_dsi_dcs_set_display_on_multi(&ctx);
+	mipi_dsi_msleep(&ctx, 120);
+
+	return ctx.accum_err;
+}
+
+static int m9189_disable(struct drm_panel *panel)
+{
+	struct m9189_panel *m9189 = to_m9189_panel(panel);
+	struct mipi_dsi_multi_context ctx = { .dsi = m9189->dsi };
+
+	ctx.dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
+
+	mipi_dsi_dcs_enter_sleep_mode_multi(&ctx);
+	mipi_dsi_msleep(&ctx, 120);
+
+	gpiod_set_value_cansleep(m9189->standby_gpio, 1);
+
+	return ctx.accum_err;
+}
+
+static int m9189_prepare(struct drm_panel *panel)
+{
+	struct m9189_panel *m9189 = to_m9189_panel(panel);
+	struct device *dev = &m9189->dsi->dev;
+	int ret;
+
+	ret = regulator_enable(m9189->supply);
+	if (ret < 0) {
+		dev_err(dev, "Failed to enable regulators: %d\n", ret);
+		return ret;
+	}
+
+	gpiod_set_value_cansleep(m9189->standby_gpio, 0);
+	msleep(20);
+	m9189_reset(m9189);
+
+	ret = m9189_on(m9189);
+	if (ret < 0) {
+		dev_err(dev, "Failed to initialize panel: %d\n", ret);
+		gpiod_set_value_cansleep(m9189->reset_gpio, 1);
+		regulator_disable(m9189->supply);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int m9189_unprepare(struct drm_panel *panel)
+{
+	struct m9189_panel *m9189 = to_m9189_panel(panel);
+
+	gpiod_set_value_cansleep(m9189->standby_gpio, 1);
+	msleep(50);
+
+	gpiod_set_value_cansleep(m9189->reset_gpio, 1);
+	regulator_disable(m9189->supply);
+
+	return 0;
+}
+
+static const struct drm_display_mode m9189_mode = {
+	.clock = (1024 + 160 + 160 + 10) * (600 + 12 + 23 + 1) * 60 / 1000,
+	.hdisplay = 1024,
+	.hsync_start = 1024 + 160,
+	.hsync_end = 1024 + 160 + 160,
+	.htotal = 1024 + 160 + 160 + 10,
+	.vdisplay = 600,
+	.vsync_start = 600 + 12,
+	.vsync_end = 600 + 12 + 23,
+	.vtotal = 600 + 12 + 23 + 1,
+	.width_mm = 154,
+	.height_mm = 86,
+};
+
+static int m9189_get_modes(struct drm_panel *panel,
+				  struct drm_connector *connector)
+{
+	return drm_connector_helper_get_modes_fixed(connector, &m9189_mode);
+}
+
+static const struct drm_panel_funcs m9189_panel_funcs = {
+	.prepare = m9189_prepare,
+	.unprepare = m9189_unprepare,
+	.disable = m9189_disable,
+	.get_modes = m9189_get_modes,
+};
+
+static int lxd_m9189_probe(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	struct m9189_panel *m9189;
+	int ret;
+
+	m9189 = devm_kzalloc(dev, sizeof(*m9189), GFP_KERNEL);
+	if (!m9189)
+		return -ENOMEM;
+
+	m9189->supply = devm_regulator_get(dev, "power");
+	if (IS_ERR(m9189->supply))
+		return dev_err_probe(dev, PTR_ERR(m9189->supply),
+				     "Failed to get power-supply\n");
+
+	m9189->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(m9189->reset_gpio))
+		return dev_err_probe(dev, PTR_ERR(m9189->reset_gpio),
+				     "Failed to get reset-gpios\n");
+
+	m9189->standby_gpio = devm_gpiod_get(dev, "standby", GPIOD_OUT_LOW);
+	if (IS_ERR(m9189->standby_gpio))
+		return dev_err_probe(dev, PTR_ERR(m9189->standby_gpio),
+				     "Failed to get standby-gpios\n");
+
+	m9189->dsi = dsi;
+	mipi_dsi_set_drvdata(dsi, m9189);
+
+	dsi->lanes = 4;
+	dsi->format = MIPI_DSI_FMT_RGB888;
+	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST;
+
+	drm_panel_init(&m9189->panel, dev, &m9189_panel_funcs,
+		       DRM_MODE_CONNECTOR_DSI);
+	m9189->panel.prepare_prev_first = true;
+
+	ret = drm_panel_of_backlight(&m9189->panel);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to get backlight\n");
+
+	drm_panel_add(&m9189->panel);
+
+	ret = mipi_dsi_attach(dsi);
+	if (ret < 0) {
+		dev_err_probe(dev, ret, "Failed to attach to DSI host\n");
+		drm_panel_remove(&m9189->panel);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void lxd_m9189_remove(struct mipi_dsi_device *dsi)
+{
+	struct m9189_panel *m9189 = mipi_dsi_get_drvdata(dsi);
+	int ret;
+
+	ret = mipi_dsi_detach(dsi);
+	if (ret < 0)
+		dev_err(&dsi->dev, "Failed to detach from DSI host: %d\n", ret);
+
+	drm_panel_remove(&m9189->panel);
+}
+
+static const struct of_device_id lxd_m9189_of_match[] = {
+	{ .compatible = "lxd,m9189a" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, lxd_m9189_of_match);
+
+static struct mipi_dsi_driver lxd_m9189_driver = {
+	.probe = lxd_m9189_probe,
+	.remove = lxd_m9189_remove,
+	.driver = {
+		.name = "panel-lxd-m9189a",
+		.of_match_table = lxd_m9189_of_match,
+	},
+};
+module_mipi_dsi_driver(lxd_m9189_driver);
+
+MODULE_DESCRIPTION("DRM driver for LXD M9189A MIPI-DSI panels");
+MODULE_LICENSE("GPL");

-- 
2.47.3


