Return-Path: <devicetree+bounces-21323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1578032CF
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 13:33:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 441B81C203A7
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 12:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE808241F5;
	Mon,  4 Dec 2023 12:33:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A01618D;
	Mon,  4 Dec 2023 04:33:20 -0800 (PST)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id A08C68043;
	Mon,  4 Dec 2023 20:33:18 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 4 Dec
 2023 20:33:18 +0800
Received: from xiaofei.localdomain (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 4 Dec
 2023 20:33:17 +0800
From: Keith Zhao <keith.zhao@starfivetech.com>
To: Keith Zhao <keith.zhao@starfivetech.com>, <devicetree@vger.kernel.org>,
	<dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>
CC: <mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
	<krzysztof.kozlowski+dt@linaro.org>, <william.qiu@starfivetech.com>,
	<xingyu.wu@starfivetech.com>, <paul.walmsley@sifive.com>,
	<aou@eecs.berkeley.edu>, <palmer@dabbelt.com>, <p.zabel@pengutronix.de>,
	<shengyang.chen@starfivetech.com>, <jack.zhu@starfivetech.com>,
	<changhuang.liang@starfivetech.com>, <maarten.lankhorst@linux.intel.com>,
	<suijingfeng@loongson.cn>
Subject: [v3 4/6] drm/vs: Add KMS crtc&plane
Date: Mon, 4 Dec 2023 20:33:13 +0800
Message-ID: <20231204123315.28456-5-keith.zhao@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231204123315.28456-1-keith.zhao@starfivetech.com>
References: <20231204123315.28456-1-keith.zhao@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

add 2 crtcs and 8 planes in vs-drm

Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
---
 drivers/gpu/drm/verisilicon/Makefile   |    9 +-
 drivers/gpu/drm/verisilicon/vs_crtc.c  |  208 +++++
 drivers/gpu/drm/verisilicon/vs_crtc.h  |   42 +
 drivers/gpu/drm/verisilicon/vs_dc.c    | 1192 ++++++++++++++++++++++++
 drivers/gpu/drm/verisilicon/vs_dc.h    |   67 ++
 drivers/gpu/drm/verisilicon/vs_dc_hw.c | 1022 ++++++++++++++++++++
 drivers/gpu/drm/verisilicon/vs_dc_hw.h |  580 ++++++++++++
 drivers/gpu/drm/verisilicon/vs_drv.c   |    2 +
 drivers/gpu/drm/verisilicon/vs_plane.c |  301 ++++++
 drivers/gpu/drm/verisilicon/vs_plane.h |   39 +
 drivers/gpu/drm/verisilicon/vs_type.h  |   69 ++
 11 files changed, 3528 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_hw.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_hw.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_type.h

diff --git a/drivers/gpu/drm/verisilicon/Makefile b/drivers/gpu/drm/veris=
ilicon/Makefile
index d785a1dfaa7f..bf6f2b7ee480 100644
--- a/drivers/gpu/drm/verisilicon/Makefile
+++ b/drivers/gpu/drm/verisilicon/Makefile
@@ -1,6 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0
=20
-vs_drm-objs :=3D vs_drv.o \
-	       vs_modeset.o
-
+vs_drm-objs :=3D vs_dc_hw.o \
+		vs_dc.o \
+		vs_crtc.o \
+		vs_drv.o \
+		vs_modeset.o \
+		vs_plane.o
 obj-$(CONFIG_DRM_VERISILICON) +=3D vs_drm.o
diff --git a/drivers/gpu/drm/verisilicon/vs_crtc.c b/drivers/gpu/drm/veri=
silicon/vs_crtc.c
new file mode 100644
index 000000000000..5581219b1230
--- /dev/null
+++ b/drivers/gpu/drm/verisilicon/vs_crtc.c
@@ -0,0 +1,208 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
+ *
+ */
+
+#include <linux/clk.h>
+#include <linux/debugfs.h>
+#include <linux/media-bus-format.h>
+
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_atomic.h>
+#include <drm/drm_crtc.h>
+#include <drm/drm_gem_atomic_helper.h>
+#include <drm/drm_vblank.h>
+
+#include "vs_crtc.h"
+#include "vs_dc.h"
+#include "vs_drv.h"
+
+static void vs_crtc_atomic_destroy_state(struct drm_crtc *crtc,
+					 struct drm_crtc_state *state)
+{
+	__drm_atomic_helper_crtc_destroy_state(state);
+	kfree(to_vs_crtc_state(state));
+}
+
+static void vs_crtc_reset(struct drm_crtc *crtc)
+{
+	struct vs_crtc_state *state;
+
+	if (crtc->state)
+		vs_crtc_atomic_destroy_state(crtc, crtc->state);
+
+	state =3D kzalloc(sizeof(*state), GFP_KERNEL);
+	if (!state)
+		return;
+
+	__drm_atomic_helper_crtc_reset(crtc, &state->base);
+}
+
+static struct drm_crtc_state *
+vs_crtc_atomic_duplicate_state(struct drm_crtc *crtc)
+{
+	struct vs_crtc_state *old_state;
+	struct vs_crtc_state *state;
+
+	if (!crtc->state)
+		return NULL;
+
+	old_state =3D to_vs_crtc_state(crtc->state);
+
+	state =3D kmemdup(old_state, sizeof(*old_state), GFP_KERNEL);
+		if (!state)
+			return NULL;
+
+	__drm_atomic_helper_crtc_duplicate_state(crtc, &state->base);
+
+	return &state->base;
+}
+
+static int vs_crtc_enable_vblank(struct drm_crtc *crtc)
+{
+	struct vs_crtc *vs_crtc =3D to_vs_crtc(crtc);
+	struct vs_dc *dc =3D dev_get_drvdata(vs_crtc->dev);
+
+	vs_dc_enable_vblank(dc, true);
+
+	return 0;
+}
+
+static void vs_crtc_disable_vblank(struct drm_crtc *crtc)
+{
+	struct vs_crtc *vs_crtc =3D to_vs_crtc(crtc);
+	struct vs_dc *dc =3D dev_get_drvdata(vs_crtc->dev);
+
+	vs_dc_enable_vblank(dc, false);
+}
+
+static void vs_crtc_atomic_print_state(struct drm_printer *p,
+				       const struct drm_crtc_state *state)
+{
+	struct vs_crtc *vs_crtc =3D to_vs_crtc(state->crtc);
+
+	drm_printf(p, "vs crtc State\n");
+	drm_printf(p, "\tcolor_formats: %d\n", vs_crtc->color_formats);
+	drm_printf(p, "\tmax_bpc: %d\n", vs_crtc->max_bpc);
+}
+
+static const struct drm_crtc_funcs vs_crtc_funcs =3D {
+	.set_config		=3D drm_atomic_helper_set_config,
+	.page_flip		=3D drm_atomic_helper_page_flip,
+	.reset			=3D vs_crtc_reset,
+	.atomic_duplicate_state =3D vs_crtc_atomic_duplicate_state,
+	.atomic_destroy_state	=3D vs_crtc_atomic_destroy_state,
+	.enable_vblank		=3D vs_crtc_enable_vblank,
+	.disable_vblank		=3D vs_crtc_disable_vblank,
+	.atomic_print_state =3D vs_crtc_atomic_print_state,
+};
+
+static void vs_crtc_atomic_enable(struct drm_crtc *crtc,
+				  struct drm_atomic_state *state)
+{
+	struct vs_crtc *vs_crtc =3D to_vs_crtc(crtc);
+	struct vs_dc *dc =3D dev_get_drvdata(vs_crtc->dev);
+
+	vs_dc_enable(dc, crtc);
+	drm_crtc_vblank_on(crtc);
+}
+
+static void vs_crtc_atomic_disable(struct drm_crtc *crtc,
+				   struct drm_atomic_state *state)
+{
+	struct vs_crtc *vs_crtc =3D to_vs_crtc(crtc);
+	struct vs_dc *dc =3D dev_get_drvdata(vs_crtc->dev);
+
+	drm_crtc_vblank_off(crtc);
+
+	vs_dc_disable(dc, crtc);
+
+	if (crtc->state->event && !crtc->state->active) {
+		spin_lock_irq(&crtc->dev->event_lock);
+		drm_crtc_send_vblank_event(crtc, crtc->state->event);
+		crtc->state->event =3D NULL;
+		spin_unlock_irq(&crtc->dev->event_lock);
+	}
+}
+
+static void vs_crtc_atomic_begin(struct drm_crtc *crtc,
+				 struct drm_atomic_state *state)
+{
+	struct drm_crtc_state *new_state =3D drm_atomic_get_new_crtc_state(stat=
e,
+									  crtc);
+
+	struct vs_crtc *vs_crtc =3D to_vs_crtc(crtc);
+	struct device *dev =3D vs_crtc->dev;
+	struct drm_property_blob *blob =3D new_state->gamma_lut;
+	struct drm_color_lut *lut;
+	struct vs_dc *dc =3D dev_get_drvdata(dev);
+
+	if (new_state->color_mgmt_changed) {
+		if (blob && blob->length) {
+			lut =3D blob->data;
+			vs_dc_set_gamma(dc, crtc, lut,
+					blob->length / sizeof(*lut));
+			vs_dc_enable_gamma(dc, crtc, true);
+		} else {
+			vs_dc_enable_gamma(dc, crtc, false);
+		}
+	}
+}
+
+static void vs_crtc_atomic_flush(struct drm_crtc *crtc,
+				 struct drm_atomic_state *state)
+{
+	struct vs_crtc *vs_crtc =3D to_vs_crtc(crtc);
+	struct drm_pending_vblank_event *event =3D crtc->state->event;
+	struct vs_dc *dc =3D dev_get_drvdata(vs_crtc->dev);
+
+	vs_dc_commit(dc);
+
+	if (event) {
+		WARN_ON(drm_crtc_vblank_get(crtc) !=3D 0);
+
+		spin_lock_irq(&crtc->dev->event_lock);
+		drm_crtc_arm_vblank_event(crtc, event);
+		crtc->state->event =3D NULL;
+		spin_unlock_irq(&crtc->dev->event_lock);
+	}
+}
+
+static const struct drm_crtc_helper_funcs vs_crtc_helper_funcs =3D {
+	.atomic_check =3D drm_crtc_helper_atomic_check,
+	.atomic_enable	=3D vs_crtc_atomic_enable,
+	.atomic_disable =3D vs_crtc_atomic_disable,
+	.atomic_begin	=3D vs_crtc_atomic_begin,
+	.atomic_flush	=3D vs_crtc_atomic_flush,
+};
+
+struct vs_crtc *vs_crtc_create(struct drm_device *drm_dev,
+			       struct vs_dc_info *info)
+{
+	struct vs_crtc *crtc;
+	int ret;
+
+	if (!info)
+		return NULL;
+
+	crtc =3D drmm_crtc_alloc_with_planes(drm_dev, struct vs_crtc, base, NUL=
L,
+					   NULL, &vs_crtc_funcs,
+					   info->name ? info->name : NULL);
+
+	drm_crtc_helper_add(&crtc->base, &vs_crtc_helper_funcs);
+
+	if (info->gamma_size) {
+		ret =3D drm_mode_crtc_set_gamma_size(&crtc->base,
+						   info->gamma_size);
+		if (ret)
+			return NULL;
+
+		drm_crtc_enable_color_mgmt(&crtc->base, 0, false,
+					   info->gamma_size);
+	}
+
+	crtc->max_bpc =3D info->max_bpc;
+	crtc->color_formats =3D info->color_formats;
+	return crtc;
+}
diff --git a/drivers/gpu/drm/verisilicon/vs_crtc.h b/drivers/gpu/drm/veri=
silicon/vs_crtc.h
new file mode 100644
index 000000000000..8f5b5718283f
--- /dev/null
+++ b/drivers/gpu/drm/verisilicon/vs_crtc.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
+ */
+
+#ifndef __VS_CRTC_H__
+#define __VS_CRTC_H__
+
+#include <drm/drm_crtc.h>
+#include <drm/drm_crtc_helper.h>
+
+#include "vs_type.h"
+
+struct vs_crtc_state {
+	struct drm_crtc_state base;
+
+	u32 output_fmt;
+	u8 encoder_type;
+	u8 bpp;
+};
+
+struct vs_crtc {
+	struct drm_crtc base;
+	struct device *dev;
+	unsigned int max_bpc;
+	unsigned int color_formats;
+};
+
+struct vs_crtc *vs_crtc_create(struct drm_device *drm_dev,
+			       struct vs_dc_info *info);
+
+static inline struct vs_crtc *to_vs_crtc(struct drm_crtc *crtc)
+{
+	return container_of(crtc, struct vs_crtc, base);
+}
+
+static inline struct vs_crtc_state *
+to_vs_crtc_state(struct drm_crtc_state *state)
+{
+	return container_of(state, struct vs_crtc_state, base);
+}
+#endif /* __VS_CRTC_H__ */
diff --git a/drivers/gpu/drm/verisilicon/vs_dc.c b/drivers/gpu/drm/verisi=
licon/vs_dc.c
new file mode 100644
index 000000000000..3f1e70ba4261
--- /dev/null
+++ b/drivers/gpu/drm/verisilicon/vs_dc.c
@@ -0,0 +1,1192 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
+ */
+
+#include <linux/component.h>
+#include <linux/clk.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/of.h>
+#include <linux/of_graph.h>
+#include <linux/pm_runtime.h>
+#include <linux/reset.h>
+
+#include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
+#include <drm/drm_framebuffer.h>
+#include <drm/drm_vblank.h>
+
+#include "vs_dc_hw.h"
+#include "vs_dc.h"
+#include "vs_drv.h"
+
+static const char * const vout_clocks[] =3D {
+	"channel0",
+	"channel1",
+	"hdmi_tx",
+	"dc_parent",
+};
+
+#define FRAC_16_16(mult, div)	 (((mult) << 16) / (div))
+
+static const u32 primary_overlay_format0[] =3D {
+	DRM_FORMAT_RGB565,
+	DRM_FORMAT_BGR565,
+	DRM_FORMAT_XRGB8888,
+	DRM_FORMAT_XBGR8888,
+	DRM_FORMAT_RGBX8888,
+	DRM_FORMAT_BGRX8888,
+	DRM_FORMAT_ARGB8888,
+	DRM_FORMAT_ABGR8888,
+	DRM_FORMAT_RGBA8888,
+	DRM_FORMAT_BGRA8888,
+	DRM_FORMAT_XRGB4444,
+	DRM_FORMAT_XBGR4444,
+	DRM_FORMAT_RGBX4444,
+	DRM_FORMAT_BGRX4444,
+	DRM_FORMAT_ARGB4444,
+	DRM_FORMAT_ABGR4444,
+	DRM_FORMAT_RGBA4444,
+	DRM_FORMAT_BGRA4444,
+	DRM_FORMAT_XRGB1555,
+	DRM_FORMAT_XBGR1555,
+	DRM_FORMAT_RGBX5551,
+	DRM_FORMAT_BGRX5551,
+	DRM_FORMAT_ARGB1555,
+	DRM_FORMAT_ABGR1555,
+	DRM_FORMAT_RGBA5551,
+	DRM_FORMAT_BGRA5551,
+	DRM_FORMAT_ARGB2101010,
+	DRM_FORMAT_ABGR2101010,
+	DRM_FORMAT_RGBA1010102,
+	DRM_FORMAT_BGRA1010102,
+	DRM_FORMAT_YUYV,
+	DRM_FORMAT_YVYU,
+	DRM_FORMAT_UYVY,
+	DRM_FORMAT_VYUY,
+	DRM_FORMAT_YVU420,
+	DRM_FORMAT_YUV420,
+	DRM_FORMAT_NV12,
+	DRM_FORMAT_NV21,
+	DRM_FORMAT_NV16,
+	DRM_FORMAT_NV61,
+	DRM_FORMAT_P010,
+};
+
+static const u32 primary_overlay_format1[] =3D {
+	DRM_FORMAT_XRGB8888,
+	DRM_FORMAT_XBGR8888,
+	DRM_FORMAT_RGBX8888,
+	DRM_FORMAT_BGRX8888,
+	DRM_FORMAT_ARGB8888,
+	DRM_FORMAT_ABGR8888,
+	DRM_FORMAT_RGBA8888,
+	DRM_FORMAT_BGRA8888,
+	DRM_FORMAT_ARGB2101010,
+	DRM_FORMAT_ABGR2101010,
+	DRM_FORMAT_RGBA1010102,
+	DRM_FORMAT_BGRA1010102,
+	DRM_FORMAT_NV12,
+	DRM_FORMAT_NV21,
+	DRM_FORMAT_YUV444,
+};
+
+static const u32 cursor_formats[] =3D {
+	DRM_FORMAT_ARGB8888
+};
+
+static const u64 format_modifier0[] =3D {
+	DRM_FORMAT_MOD_LINEAR,
+	DRM_FORMAT_MOD_INVALID
+};
+
+static const u64 secondary_format_modifiers[] =3D {
+	DRM_FORMAT_MOD_LINEAR,
+	DRM_FORMAT_MOD_INVALID
+};
+
+static const struct vs_plane_info dc_hw_planes_rev0[PLANE_NUM] =3D {
+	{
+		.name			=3D "Primary",
+		.id			=3D PRIMARY_PLANE_0,
+		.type			=3D DRM_PLANE_TYPE_PRIMARY,
+		.num_formats		=3D ARRAY_SIZE(primary_overlay_format0),
+		.formats		=3D primary_overlay_format0,
+		.num_modifiers		=3D ARRAY_SIZE(format_modifier0),
+		.modifiers		=3D format_modifier0,
+		.min_width		=3D 0,
+		.min_height		=3D 0,
+		.max_width		=3D 4096,
+		.max_height		=3D 4096,
+		.rotation		=3D DRM_MODE_ROTATE_0 |
+					  DRM_MODE_ROTATE_90 |
+					  DRM_MODE_ROTATE_180 |
+					  DRM_MODE_ROTATE_270 |
+					  DRM_MODE_REFLECT_X |
+					  DRM_MODE_REFLECT_Y,
+		.blend_mode		=3D BIT(DRM_MODE_BLEND_PIXEL_NONE) |
+					  BIT(DRM_MODE_BLEND_PREMULTI) |
+					  BIT(DRM_MODE_BLEND_COVERAGE),
+		.color_encoding		=3D BIT(DRM_COLOR_YCBCR_BT709) |
+					  BIT(DRM_COLOR_YCBCR_BT2020),
+		.degamma_size		=3D DEGAMMA_SIZE,
+		.min_scale		=3D FRAC_16_16(1, 3),
+		.max_scale		=3D FRAC_16_16(10, 1),
+		.zpos			=3D 0,
+		.watermark		=3D true,
+		.color_mgmt		=3D true,
+		.roi			=3D true,
+	},
+	{
+		.name			=3D "Overlay",
+		.id			=3D OVERLAY_PLANE_0,
+		.type			=3D DRM_PLANE_TYPE_OVERLAY,
+		.num_formats		=3D ARRAY_SIZE(primary_overlay_format0),
+		.formats		=3D primary_overlay_format0,
+		.num_modifiers		=3D ARRAY_SIZE(format_modifier0),
+		.modifiers		=3D format_modifier0,
+		.min_width		=3D 0,
+		.min_height		=3D 0,
+		.max_width		=3D 4096,
+		.max_height		=3D 4096,
+		.rotation		=3D DRM_MODE_ROTATE_0 |
+					  DRM_MODE_ROTATE_90 |
+					  DRM_MODE_ROTATE_180 |
+					  DRM_MODE_ROTATE_270 |
+					  DRM_MODE_REFLECT_X |
+					  DRM_MODE_REFLECT_Y,
+		.blend_mode		=3D BIT(DRM_MODE_BLEND_PIXEL_NONE) |
+					  BIT(DRM_MODE_BLEND_PREMULTI) |
+					  BIT(DRM_MODE_BLEND_COVERAGE),
+		.color_encoding		=3D BIT(DRM_COLOR_YCBCR_BT709) |
+					  BIT(DRM_COLOR_YCBCR_BT2020),
+		.degamma_size		=3D DEGAMMA_SIZE,
+		.min_scale		=3D FRAC_16_16(1, 3),
+		.max_scale		=3D FRAC_16_16(10, 1),
+		.zpos			=3D 1,
+		.watermark		=3D true,
+		.color_mgmt		=3D true,
+		.roi			=3D true,
+	},
+	{
+		.name			=3D "Overlay_1",
+		.id			=3D OVERLAY_PLANE_1,
+		.type			=3D DRM_PLANE_TYPE_OVERLAY,
+		.num_formats		=3D ARRAY_SIZE(primary_overlay_format0),
+		.formats		=3D primary_overlay_format0,
+		.num_modifiers		=3D ARRAY_SIZE(secondary_format_modifiers),
+		.modifiers		=3D secondary_format_modifiers,
+		.min_width		=3D 0,
+		.min_height		=3D 0,
+		.max_width		=3D 4096,
+		.max_height		=3D 4096,
+		.rotation		=3D 0,
+		.blend_mode		=3D BIT(DRM_MODE_BLEND_PIXEL_NONE) |
+					  BIT(DRM_MODE_BLEND_PREMULTI) |
+					  BIT(DRM_MODE_BLEND_COVERAGE),
+		.color_encoding		=3D BIT(DRM_COLOR_YCBCR_BT709) |
+					  BIT(DRM_COLOR_YCBCR_BT2020),
+		.degamma_size		=3D DEGAMMA_SIZE,
+		.min_scale		=3D DRM_PLANE_NO_SCALING,
+		.max_scale		=3D DRM_PLANE_NO_SCALING,
+		.zpos			=3D 2,
+		.watermark		=3D true,
+		.color_mgmt		=3D true,
+		.roi			=3D true,
+	},
+	{
+		.name			=3D "Primary_1",
+		.id			=3D PRIMARY_PLANE_1,
+		.type			=3D DRM_PLANE_TYPE_PRIMARY,
+		.num_formats		=3D ARRAY_SIZE(primary_overlay_format0),
+		.formats		=3D primary_overlay_format0,
+		.num_modifiers		=3D ARRAY_SIZE(format_modifier0),
+		.modifiers		=3D format_modifier0,
+		.min_width		=3D 0,
+		.min_height		=3D 0,
+		.max_width		=3D 4096,
+		.max_height		=3D 4096,
+		.rotation		=3D DRM_MODE_ROTATE_0 |
+					  DRM_MODE_ROTATE_90 |
+					  DRM_MODE_ROTATE_180 |
+					  DRM_MODE_ROTATE_270 |
+					  DRM_MODE_REFLECT_X |
+					  DRM_MODE_REFLECT_Y,
+		.blend_mode		=3D BIT(DRM_MODE_BLEND_PIXEL_NONE) |
+					  BIT(DRM_MODE_BLEND_PREMULTI) |
+					  BIT(DRM_MODE_BLEND_COVERAGE),
+		.color_encoding		=3D BIT(DRM_COLOR_YCBCR_BT709) |
+					  BIT(DRM_COLOR_YCBCR_BT2020),
+		.degamma_size		=3D DEGAMMA_SIZE,
+		.min_scale		=3D FRAC_16_16(1, 3),
+		.max_scale		=3D FRAC_16_16(10, 1),
+		.zpos			=3D 3,
+		.watermark		=3D true,
+		.color_mgmt		=3D true,
+		.roi			=3D true,
+	},
+	{
+		.name			=3D "Overlay_2",
+		.id			=3D OVERLAY_PLANE_2,
+		.type			=3D DRM_PLANE_TYPE_OVERLAY,
+		.num_formats		=3D ARRAY_SIZE(primary_overlay_format0),
+		.formats		=3D primary_overlay_format0,
+		.num_modifiers		=3D ARRAY_SIZE(format_modifier0),
+		.modifiers		=3D format_modifier0,
+		.min_width		=3D 0,
+		.min_height		=3D 0,
+		.max_width		=3D 4096,
+		.max_height		=3D 4096,
+		.rotation		=3D DRM_MODE_ROTATE_0 |
+					  DRM_MODE_ROTATE_90 |
+					  DRM_MODE_ROTATE_180 |
+					  DRM_MODE_ROTATE_270 |
+					  DRM_MODE_REFLECT_X |
+					  DRM_MODE_REFLECT_Y,
+		.blend_mode		=3D BIT(DRM_MODE_BLEND_PIXEL_NONE) |
+					  BIT(DRM_MODE_BLEND_PREMULTI) |
+					  BIT(DRM_MODE_BLEND_COVERAGE),
+		.color_encoding		=3D BIT(DRM_COLOR_YCBCR_BT709) |
+					  BIT(DRM_COLOR_YCBCR_BT2020),
+		.degamma_size		=3D DEGAMMA_SIZE,
+		.min_scale		=3D FRAC_16_16(1, 3),
+		.max_scale		=3D FRAC_16_16(10, 1),
+		.zpos			=3D 4,
+		.watermark		=3D true,
+		.color_mgmt		=3D true,
+		.roi			=3D true,
+	},
+	{
+		.name			=3D "Overlay_3",
+		.id			=3D OVERLAY_PLANE_3,
+		.type			=3D DRM_PLANE_TYPE_OVERLAY,
+		.num_formats		=3D ARRAY_SIZE(primary_overlay_format0),
+		.formats		=3D primary_overlay_format0,
+		.num_modifiers		=3D ARRAY_SIZE(secondary_format_modifiers),
+		.modifiers		=3D secondary_format_modifiers,
+		.min_width		=3D 0,
+		.min_height		=3D 0,
+		.max_width		=3D 4096,
+		.max_height		=3D 4096,
+		.rotation		=3D 0,
+		.blend_mode		=3D BIT(DRM_MODE_BLEND_PIXEL_NONE) |
+					  BIT(DRM_MODE_BLEND_PREMULTI) |
+					  BIT(DRM_MODE_BLEND_COVERAGE),
+		.color_encoding		=3D BIT(DRM_COLOR_YCBCR_BT709) |
+					  BIT(DRM_COLOR_YCBCR_BT2020),
+		.degamma_size		=3D DEGAMMA_SIZE,
+		.min_scale		=3D DRM_PLANE_NO_SCALING,
+		.max_scale		=3D DRM_PLANE_NO_SCALING,
+		.zpos			=3D 5,
+		.watermark		=3D true,
+		.color_mgmt		=3D true,
+		.roi			=3D true,
+	},
+	{
+		.name			=3D "Cursor",
+		.id			=3D CURSOR_PLANE_0,
+		.type			=3D DRM_PLANE_TYPE_CURSOR,
+		.num_formats		=3D ARRAY_SIZE(cursor_formats),
+		.formats		=3D cursor_formats,
+		.num_modifiers		=3D 0,
+		.modifiers		=3D NULL,
+		.min_width		=3D 32,
+		.min_height		=3D 32,
+		.max_width		=3D 64,
+		.max_height		=3D 64,
+		.rotation		=3D 0,
+		.degamma_size		=3D 0,
+		.min_scale		=3D DRM_PLANE_NO_SCALING,
+		.max_scale		=3D DRM_PLANE_NO_SCALING,
+		.zpos			=3D 255,
+		.watermark		=3D false,
+		.color_mgmt		=3D false,
+		.roi			=3D false,
+	},
+	{
+		.name			=3D "Cursor_1",
+		.id			=3D CURSOR_PLANE_1,
+		.type			=3D DRM_PLANE_TYPE_CURSOR,
+		.num_formats		=3D ARRAY_SIZE(cursor_formats),
+		.formats		=3D cursor_formats,
+		.num_modifiers		=3D 0,
+		.modifiers		=3D NULL,
+		.min_width		=3D 32,
+		.min_height		=3D 32,
+		.max_width		=3D 64,
+		.max_height		=3D 64,
+		.rotation		=3D 0,
+		.degamma_size		=3D 0,
+		.min_scale		=3D DRM_PLANE_NO_SCALING,
+		.max_scale		=3D DRM_PLANE_NO_SCALING,
+		.zpos			=3D 255,
+		.watermark		=3D false,
+		.color_mgmt		=3D false,
+		.roi			=3D false,
+	},
+};
+
+static const struct vs_dc_info dc8200_info =3D {
+	.name			=3D "DC8200",
+	.panel_num		=3D 2,
+	.plane_num		=3D 8,
+	.planes			=3D dc_hw_planes_rev0,
+	.layer_num		=3D 6,
+	.max_bpc		=3D 10,
+	.color_formats		=3D DRM_COLOR_FORMAT_RGB444 |
+				  DRM_COLOR_FORMAT_YCBCR444 |
+				  DRM_COLOR_FORMAT_YCBCR422 |
+				  DRM_COLOR_FORMAT_YCBCR420,
+	.gamma_size		=3D GAMMA_EX_SIZE,
+	.gamma_bits		=3D 12,
+	.pitch_alignment	=3D 128,
+	.pipe_sync		=3D false,
+	.background		=3D true,
+	.panel_sync		=3D true,
+	.cap_dec		=3D true,
+};
+
+static inline void update_format(u32 format, u64 mod, struct dc_hw_fb *f=
b)
+{
+	u8 f =3D FORMAT_A8R8G8B8;
+
+	switch (format) {
+	case DRM_FORMAT_XRGB4444:
+	case DRM_FORMAT_RGBX4444:
+	case DRM_FORMAT_XBGR4444:
+	case DRM_FORMAT_BGRX4444:
+		f =3D FORMAT_X4R4G4B4;
+		break;
+	case DRM_FORMAT_ARGB4444:
+	case DRM_FORMAT_RGBA4444:
+	case DRM_FORMAT_ABGR4444:
+	case DRM_FORMAT_BGRA4444:
+		f =3D FORMAT_A4R4G4B4;
+		break;
+	case DRM_FORMAT_XRGB1555:
+	case DRM_FORMAT_RGBX5551:
+	case DRM_FORMAT_XBGR1555:
+	case DRM_FORMAT_BGRX5551:
+		f =3D FORMAT_X1R5G5B5;
+		break;
+	case DRM_FORMAT_ARGB1555:
+	case DRM_FORMAT_RGBA5551:
+	case DRM_FORMAT_ABGR1555:
+	case DRM_FORMAT_BGRA5551:
+		f =3D FORMAT_A1R5G5B5;
+		break;
+	case DRM_FORMAT_RGB565:
+	case DRM_FORMAT_BGR565:
+		f =3D FORMAT_R5G6B5;
+		break;
+	case DRM_FORMAT_XRGB8888:
+	case DRM_FORMAT_RGBX8888:
+	case DRM_FORMAT_XBGR8888:
+	case DRM_FORMAT_BGRX8888:
+		f =3D FORMAT_X8R8G8B8;
+		break;
+	case DRM_FORMAT_ARGB8888:
+	case DRM_FORMAT_RGBA8888:
+	case DRM_FORMAT_ABGR8888:
+	case DRM_FORMAT_BGRA8888:
+		f =3D FORMAT_A8R8G8B8;
+		break;
+	case DRM_FORMAT_YUYV:
+	case DRM_FORMAT_YVYU:
+		f =3D FORMAT_YUY2;
+		break;
+	case DRM_FORMAT_UYVY:
+	case DRM_FORMAT_VYUY:
+		f =3D FORMAT_UYVY;
+		break;
+	case DRM_FORMAT_YUV420:
+	case DRM_FORMAT_YVU420:
+		f =3D FORMAT_YV12;
+		break;
+	case DRM_FORMAT_NV21:
+		f =3D FORMAT_NV12;
+		break;
+	case DRM_FORMAT_NV16:
+	case DRM_FORMAT_NV61:
+		f =3D FORMAT_NV16;
+		break;
+	case DRM_FORMAT_P010:
+		f =3D FORMAT_P010;
+		break;
+	case DRM_FORMAT_ARGB2101010:
+	case DRM_FORMAT_RGBA1010102:
+	case DRM_FORMAT_ABGR2101010:
+	case DRM_FORMAT_BGRA1010102:
+		f =3D FORMAT_A2R10G10B10;
+		break;
+	case DRM_FORMAT_NV12:
+		f =3D FORMAT_NV12;
+		break;
+	case DRM_FORMAT_YUV444:
+		f =3D FORMAT_YUV444;
+		break;
+	default:
+		break;
+	}
+
+	fb->format =3D f;
+}
+
+static inline void update_swizzle(u32 format, struct dc_hw_fb *fb)
+{
+	fb->swizzle =3D SWIZZLE_ARGB;
+	fb->uv_swizzle =3D 0;
+
+	switch (format) {
+	case DRM_FORMAT_RGBX4444:
+	case DRM_FORMAT_RGBA4444:
+	case DRM_FORMAT_RGBX5551:
+	case DRM_FORMAT_RGBA5551:
+	case DRM_FORMAT_RGBX8888:
+	case DRM_FORMAT_RGBA8888:
+	case DRM_FORMAT_RGBA1010102:
+		fb->swizzle =3D SWIZZLE_RGBA;
+		break;
+	case DRM_FORMAT_XBGR4444:
+	case DRM_FORMAT_ABGR4444:
+	case DRM_FORMAT_XBGR1555:
+	case DRM_FORMAT_ABGR1555:
+	case DRM_FORMAT_BGR565:
+	case DRM_FORMAT_XBGR8888:
+	case DRM_FORMAT_ABGR8888:
+	case DRM_FORMAT_ABGR2101010:
+		fb->swizzle =3D SWIZZLE_ABGR;
+		break;
+	case DRM_FORMAT_BGRX4444:
+	case DRM_FORMAT_BGRA4444:
+	case DRM_FORMAT_BGRX5551:
+	case DRM_FORMAT_BGRA5551:
+	case DRM_FORMAT_BGRX8888:
+	case DRM_FORMAT_BGRA8888:
+	case DRM_FORMAT_BGRA1010102:
+		fb->swizzle =3D SWIZZLE_BGRA;
+		break;
+	case DRM_FORMAT_YVYU:
+	case DRM_FORMAT_VYUY:
+	case DRM_FORMAT_NV21:
+	case DRM_FORMAT_NV61:
+		fb->uv_swizzle =3D 1;
+		break;
+	default:
+		break;
+	}
+}
+
+static inline u8 to_vs_rotation(unsigned int rotation)
+{
+	u8 rot;
+
+	switch (rotation & DRM_MODE_REFLECT_MASK) {
+	case DRM_MODE_REFLECT_X:
+		rot =3D FLIP_X;
+		return rot;
+	case DRM_MODE_REFLECT_Y:
+		rot =3D FLIP_Y;
+		return rot;
+	case DRM_MODE_REFLECT_X | DRM_MODE_REFLECT_Y:
+		rot =3D FLIP_XY;
+		return rot;
+	default:
+		break;
+	}
+
+	switch (rotation & DRM_MODE_ROTATE_MASK) {
+	case DRM_MODE_ROTATE_0:
+		rot =3D ROT_0;
+		break;
+	case DRM_MODE_ROTATE_90:
+		rot =3D ROT_90;
+		break;
+	case DRM_MODE_ROTATE_180:
+		rot =3D ROT_180;
+		break;
+	case DRM_MODE_ROTATE_270:
+		rot =3D ROT_270;
+		break;
+	default:
+		rot =3D ROT_0;
+		break;
+	}
+
+	return rot;
+}
+
+static inline u8 to_vs_yuv_color_space(u32 color_space)
+{
+	u8 cs;
+
+	switch (color_space) {
+	case DRM_COLOR_YCBCR_BT601:
+		cs =3D COLOR_SPACE_601;
+		break;
+	case DRM_COLOR_YCBCR_BT709:
+		cs =3D COLOR_SPACE_709;
+		break;
+	case DRM_COLOR_YCBCR_BT2020:
+		cs =3D COLOR_SPACE_2020;
+		break;
+	default:
+		cs =3D COLOR_SPACE_601;
+		break;
+	}
+
+	return cs;
+}
+
+static inline u8 to_vs_display_id(struct vs_dc *dc, struct drm_crtc *crt=
c)
+{
+	u8 panel_num =3D dc->hw.info->panel_num;
+	u32 index =3D drm_crtc_index(crtc);
+	int i;
+
+	for (i =3D 0; i < panel_num; i++) {
+		if (index =3D=3D dc->crtc[i]->base.index)
+			return i;
+	}
+
+	return 0;
+}
+
+static void vs_drm_update_pitch_alignment(struct drm_device *drm_dev,
+					  unsigned int alignment)
+{
+	struct vs_drm_device *priv =3D to_vs_drm_private(drm_dev);
+
+	if (alignment > priv->pitch_alignment)
+		priv->pitch_alignment =3D alignment;
+}
+
+static int plda_clk_rst_init(struct device *dev)
+{
+	struct vs_dc *dc =3D dev_get_drvdata(dev);
+
+	return clk_bulk_prepare_enable(dc->nclks, dc->clk_vout);
+}
+
+static void plda_clk_rst_deinit(struct device *dev)
+{
+	struct vs_dc *dc =3D dev_get_drvdata(dev);
+
+	clk_bulk_disable_unprepare(dc->nclks, dc->clk_vout);
+}
+
+static void dc_deinit(struct device *dev)
+{
+	struct vs_dc *dc =3D dev_get_drvdata(dev);
+
+	dc_hw_enable_interrupt(&dc->hw, 0);
+	dc_hw_deinit(&dc->hw);
+	plda_clk_rst_deinit(dev);
+}
+
+static int dc_init(struct device *dev)
+{
+	struct vs_dc *dc =3D dev_get_drvdata(dev);
+	int ret;
+
+	ret =3D plda_clk_rst_init(dev);
+	if (ret < 0) {
+		dev_err(dev, "failed to init dc clk reset: %d\n", ret);
+		return ret;
+	}
+
+	ret =3D dc_hw_init(&dc->hw);
+	if (ret) {
+		dev_err(dev, "failed to init DC HW\n");
+		return ret;
+	}
+	return 0;
+}
+
+void vs_dc_enable(struct vs_dc *dc, struct drm_crtc *crtc)
+{
+	struct vs_crtc_state *crtc_state =3D to_vs_crtc_state(crtc->state);
+	struct drm_display_mode *mode =3D &crtc->state->adjusted_mode;
+	struct dc_hw_display display;
+
+	display.bus_format =3D crtc_state->output_fmt;
+	display.h_active =3D mode->hdisplay;
+	display.h_total =3D mode->htotal;
+	display.h_sync_start =3D mode->hsync_start;
+	display.h_sync_end =3D mode->hsync_end;
+	if (mode->flags & DRM_MODE_FLAG_PHSYNC)
+		display.h_sync_polarity =3D true;
+	else
+		display.h_sync_polarity =3D false;
+
+	display.v_active =3D mode->vdisplay;
+	display.v_total =3D mode->vtotal;
+	display.v_sync_start =3D mode->vsync_start;
+	display.v_sync_end =3D mode->vsync_end;
+
+	if (mode->flags & DRM_MODE_FLAG_PVSYNC)
+		display.v_sync_polarity =3D true;
+	else
+		display.v_sync_polarity =3D false;
+
+	display.id =3D to_vs_display_id(dc, crtc);
+
+	display.enable =3D true;
+
+	if (crtc_state->encoder_type =3D=3D DRM_MODE_ENCODER_DSI) {
+		dc_hw_set_out(&dc->hw, OUT_DPI, display.id);
+		clk_set_rate(dc->clk_vout[CLK_VOUT_SOC_PIX].clk, mode->clock * 1000);
+		clk_set_parent(dc->clk_vout[CLK_VOUT_PIX1].clk,
+			       dc->clk_vout[CLK_VOUT_SOC_PIX].clk);
+	} else {
+		dc_hw_set_out(&dc->hw, OUT_DP, display.id);
+		clk_set_parent(dc->clk_vout[CLK_VOUT_PIX0].clk,
+			       dc->clk_vout[CLK_VOUT_HDMI_PIX].clk);
+	}
+
+	dc_hw_setup_display(&dc->hw, &display);
+
+	enable_irq(dc->irq);
+}
+
+void vs_dc_disable(struct vs_dc *dc, struct drm_crtc *crtc)
+{
+	struct dc_hw_display display;
+
+	disable_irq(dc->irq);
+
+	display.id =3D to_vs_display_id(dc, crtc);
+	display.enable =3D false;
+
+	dc_hw_setup_display(&dc->hw, &display);
+}
+
+void vs_dc_set_gamma(struct vs_dc *dc, struct drm_crtc *crtc,
+		     struct drm_color_lut *lut, unsigned int size)
+{
+	u16 i, r, g, b;
+	u8 bits, id;
+
+	if (size !=3D dc->hw.info->gamma_size) {
+		drm_err(crtc->dev, "gamma size does not match!\n");
+		return;
+	}
+
+	id =3D to_vs_display_id(dc, crtc);
+
+	bits =3D dc->hw.info->gamma_bits;
+	for (i =3D 0; i < size; i++) {
+		r =3D drm_color_lut_extract(lut[i].red, bits);
+		g =3D drm_color_lut_extract(lut[i].green, bits);
+		b =3D drm_color_lut_extract(lut[i].blue, bits);
+		dc_hw_update_gamma(&dc->hw, id, i, r, g, b);
+	}
+}
+
+void vs_dc_enable_gamma(struct vs_dc *dc, struct drm_crtc *crtc,
+			bool enable)
+{
+	u8 id;
+
+	id =3D to_vs_display_id(dc, crtc);
+	dc_hw_enable_gamma(&dc->hw, id, enable);
+}
+
+void vs_dc_enable_vblank(struct vs_dc *dc, bool enable)
+{
+	dc_hw_enable_interrupt(&dc->hw, enable);
+}
+
+static u32 calc_factor(u32 src, u32 dest)
+{
+	u32 factor =3D 1 << 16;
+
+	if (src > 1 && dest > 1)
+		factor =3D ((src - 1) << 16) / (dest - 1);
+
+	return factor;
+}
+
+static void update_scale(struct drm_plane_state *state, struct dc_hw_roi=
 *roi,
+			 struct dc_hw_scale *scale)
+{
+	int dst_w =3D drm_rect_width(&state->dst);
+	int dst_h =3D drm_rect_height(&state->dst);
+	int src_w, src_h, temp;
+
+	scale->enable =3D false;
+
+	if (roi->enable) {
+		src_w =3D roi->width;
+		src_h =3D roi->height;
+	} else {
+		src_w =3D drm_rect_width(&state->src) >> 16;
+		src_h =3D drm_rect_height(&state->src) >> 16;
+	}
+
+	if (drm_rotation_90_or_270(state->rotation)) {
+		temp =3D src_w;
+		src_w =3D src_h;
+		src_h =3D temp;
+	}
+
+	if (src_w !=3D dst_w) {
+		scale->scale_factor_x =3D calc_factor(src_w, dst_w);
+		scale->enable =3D true;
+	} else {
+		scale->scale_factor_x =3D 1 << 16;
+	}
+	if (src_h !=3D dst_h) {
+		scale->scale_factor_y =3D calc_factor(src_h, dst_h);
+		scale->enable =3D true;
+	} else {
+		scale->scale_factor_y =3D 1 << 16;
+	}
+}
+
+static void update_fb(struct vs_plane *plane, u8 display_id,
+		      struct dc_hw_fb *fb, struct drm_plane_state *state)
+{
+	struct vs_plane_state *plane_state =3D to_vs_plane_state(state);
+	struct drm_framebuffer *drm_fb =3D state->fb;
+	struct drm_rect *src =3D &state->src;
+
+	fb->display_id =3D display_id;
+	fb->y_address =3D plane_state->dma_addr[0];
+	fb->y_stride =3D drm_fb->pitches[0];
+	if (drm_fb->format->format =3D=3D DRM_FORMAT_YVU420) {
+		fb->u_address =3D plane_state->dma_addr[2];
+		fb->v_address =3D plane_state->dma_addr[1];
+		fb->u_stride =3D drm_fb->pitches[2];
+		fb->v_stride =3D drm_fb->pitches[1];
+	} else {
+		fb->u_address =3D plane_state->dma_addr[1];
+		fb->v_address =3D plane_state->dma_addr[2];
+		fb->u_stride =3D drm_fb->pitches[1];
+		fb->v_stride =3D drm_fb->pitches[2];
+	}
+	fb->width =3D drm_rect_width(src) >> 16;
+	fb->height =3D drm_rect_height(src) >> 16;
+	fb->tile_mode =3D DRM_FORMAT_MOD_LINEAR;
+	fb->rotation =3D to_vs_rotation(state->rotation);
+	fb->yuv_color_space =3D to_vs_yuv_color_space(state->color_encoding);
+	fb->zpos =3D state->zpos;
+	fb->enable =3D state->visible;
+	update_format(drm_fb->format->format, drm_fb->modifier, fb);
+	update_swizzle(drm_fb->format->format, fb);
+}
+
+static void update_plane(struct vs_dc *dc, struct vs_plane *plane,
+			 struct drm_plane *drm_plane,
+			 struct drm_atomic_state *drm_state)
+{
+	struct dc_hw_fb fb =3D {0};
+	struct dc_hw_scale scale;
+	struct dc_hw_position pos;
+	struct dc_hw_blend blend;
+	struct dc_hw_roi roi;
+	struct drm_plane_state *state =3D drm_atomic_get_new_plane_state(drm_st=
ate,
+									   drm_plane);
+	struct drm_rect *dest =3D &state->dst;
+	bool dec_enable =3D false;
+	u8 display_id =3D 0;
+
+	display_id =3D to_vs_display_id(dc, state->crtc);
+	update_fb(plane, display_id, &fb, state);
+	fb.dec_enable =3D dec_enable;
+	roi.enable =3D false;
+
+	update_scale(state, &roi, &scale);
+
+	pos.start_x =3D dest->x1;
+	pos.start_y =3D dest->y1;
+	pos.end_x =3D dest->x2;
+	pos.end_y =3D dest->y2;
+
+	blend.alpha =3D (u8)(state->alpha >> 8);
+	blend.blend_mode =3D (u8)(state->pixel_blend_mode);
+
+	dc_hw_update_plane(&dc->hw, plane->id, &fb, &scale, &pos, &blend);
+}
+
+static void update_cursor_size(struct drm_plane_state *state, struct dc_=
hw_cursor *cursor)
+{
+	u8 size_type;
+
+	switch (state->crtc_w) {
+	case 32:
+		size_type =3D CURSOR_SIZE_32X32;
+		break;
+	case 64:
+		size_type =3D CURSOR_SIZE_64X64;
+		break;
+	default:
+		size_type =3D CURSOR_SIZE_32X32;
+		break;
+	}
+
+	cursor->size =3D size_type;
+}
+
+static void update_cursor_plane(struct vs_dc *dc, struct vs_plane *plane=
,
+				struct drm_plane *drm_plane,
+				struct drm_atomic_state *drm_state)
+{
+	struct drm_plane_state *state =3D drm_atomic_get_new_plane_state(drm_st=
ate,
+								       drm_plane);
+	struct vs_plane_state *plane_state =3D to_vs_plane_state(state);
+	struct drm_framebuffer *drm_fb =3D state->fb;
+	struct dc_hw_cursor cursor;
+
+	cursor.address =3D plane_state->dma_addr[0];
+	cursor.x =3D state->crtc_x;
+	cursor.y =3D state->crtc_y;
+	cursor.hot_x =3D drm_fb->hot_x;
+	cursor.hot_y =3D drm_fb->hot_y;
+	cursor.display_id =3D to_vs_display_id(dc, state->crtc);
+	update_cursor_size(state, &cursor);
+	cursor.enable =3D true;
+
+	dc_hw_update_cursor(&dc->hw, cursor.display_id, &cursor);
+}
+
+void vs_dc_update_plane(struct vs_dc *dc, struct vs_plane *plane,
+			struct drm_plane *drm_plane,
+			struct drm_atomic_state *drm_state)
+{
+	update_plane(dc, plane, drm_plane, drm_state);
+}
+
+void vs_dc_update_cursor_plane(struct vs_dc *dc, struct vs_plane *plane,
+			       struct drm_plane *drm_plane,
+			       struct drm_atomic_state *drm_state)
+{
+	update_cursor_plane(dc, plane, drm_plane, drm_state);
+}
+
+void vs_dc_disable_plane(struct vs_dc *dc, struct vs_plane *plane,
+			 struct drm_plane_state *old_state)
+{
+	struct dc_hw_fb fb =3D {0};
+
+	fb.enable =3D false;
+	dc_hw_update_plane(&dc->hw, plane->id, &fb, NULL, NULL, NULL);
+}
+
+void vs_dc_disable_cursor_plane(struct vs_dc *dc, struct vs_plane *plane=
,
+				struct drm_plane_state *old_state)
+{
+	struct dc_hw_cursor cursor =3D {0};
+
+	cursor.enable =3D false;
+	cursor.display_id =3D to_vs_display_id(dc, old_state->crtc);
+	dc_hw_update_cursor(&dc->hw, cursor.display_id, &cursor);
+}
+
+static bool vs_dc_mod_supported(const struct vs_plane_info *plane_info,
+				u64 modifier)
+{
+	const u64 *mods;
+
+	if (!plane_info->modifiers)
+		return false;
+
+	for (mods =3D plane_info->modifiers; *mods !=3D DRM_FORMAT_MOD_INVALID;=
 mods++) {
+		if (*mods =3D=3D modifier)
+			return true;
+	}
+
+	return false;
+}
+
+int vs_dc_check_plane(struct vs_dc *dc, struct drm_plane *plane,
+		      struct drm_atomic_state *state)
+{
+	struct drm_plane_state *new_plane_state =3D drm_atomic_get_new_plane_st=
ate(state,
+										 plane);
+
+	struct drm_framebuffer *fb =3D new_plane_state->fb;
+	const struct vs_plane_info *plane_info;
+	struct drm_crtc *crtc =3D new_plane_state->crtc;
+	struct drm_crtc_state *crtc_state;
+	struct vs_plane *vs_plane =3D to_vs_plane(plane);
+
+	plane_info =3D &dc->hw.info->planes[vs_plane->id];
+
+	if (fb->width < plane_info->min_width ||
+	    fb->width > plane_info->max_width ||
+	    fb->height < plane_info->min_height ||
+	    fb->height > plane_info->max_height)
+		drm_err_once(plane->dev, "buffer size may not support on plane%d.\n",
+			     vs_plane->id);
+
+	if (!vs_dc_mod_supported(plane_info, fb->modifier)) {
+		drm_err(plane->dev, "unsupported modifier on plane%d.\n", vs_plane->id=
);
+		return -EINVAL;
+	}
+
+	crtc_state =3D drm_atomic_get_existing_crtc_state(state, crtc);
+	return drm_atomic_helper_check_plane_state(new_plane_state, crtc_state,
+						  plane_info->min_scale,
+						  plane_info->max_scale,
+						  true, true);
+}
+
+int vs_dc_check_cursor_plane(struct vs_dc *dc, struct drm_plane *plane,
+			     struct drm_atomic_state *state)
+{
+	struct drm_plane_state *new_plane_state =3D drm_atomic_get_new_plane_st=
ate(state,
+									   plane);
+	struct drm_framebuffer *fb =3D new_plane_state->fb;
+	const struct vs_plane_info *plane_info;
+	struct drm_crtc *crtc =3D new_plane_state->crtc;
+	struct drm_crtc_state *crtc_state;
+	struct vs_plane *vs_plane =3D to_vs_plane(plane);
+
+	plane_info =3D &dc->hw.info->planes[vs_plane->id];
+
+	if (fb->width < plane_info->min_width ||
+	    fb->width > plane_info->max_width ||
+	    fb->height < plane_info->min_height ||
+	    fb->height > plane_info->max_height)
+		drm_err_once(plane->dev, "buffer size may not support on plane%d.\n", =
vs_plane->id);
+
+	crtc_state =3D drm_atomic_get_existing_crtc_state(state, crtc);
+	if (IS_ERR(crtc_state))
+		return -EINVAL;
+
+	return drm_atomic_helper_check_plane_state(new_plane_state, crtc_state,
+						plane_info->min_scale,
+						plane_info->max_scale,
+						true, true);
+}
+
+static irqreturn_t dc_isr(int irq, void *data)
+{
+	struct vs_dc *dc =3D data;
+	struct vs_dc_info *dc_info =3D dc->hw.info;
+	u32 i, ret;
+
+	if (!dc_info)
+		return IRQ_HANDLED;
+
+	ret =3D dc_hw_get_interrupt(&dc->hw);
+
+	for (i =3D 0; i < dc_info->panel_num; i++)
+		drm_crtc_handle_vblank(&dc->crtc[i]->base);
+
+	return IRQ_HANDLED;
+}
+
+void vs_dc_commit(struct vs_dc *dc)
+{
+	dc_hw_enable_shadow_register(&dc->hw, false);
+
+	dc_hw_commit(&dc->hw);
+
+	dc_hw_enable_shadow_register(&dc->hw, true);
+}
+
+static int dc_bind(struct device *dev, struct device *master, void *data=
)
+{
+	struct drm_device *drm_dev =3D data;
+	struct vs_dc *dc =3D dev_get_drvdata(dev);
+	struct device_node *port;
+	struct vs_crtc *crtc;
+	struct vs_dc_info *dc_info;
+	struct vs_plane *plane;
+	struct vs_plane_info *plane_info;
+	int i, ret;
+	u32 max_width =3D 0, max_height =3D 0;
+	u32 min_width =3D 0xffff, min_heigth =3D 0xffff;
+	u32 possible_crtc =3D 0;
+
+	if (!drm_dev || !dc) {
+		dev_err(dev, "devices are not created.\n");
+		return -ENODEV;
+	}
+
+	ret =3D dc_init(dev);
+	if (ret < 0) {
+		drm_err(drm_dev, "Failed to initialize DC hardware.\n");
+		return ret;
+	}
+
+	dc_info =3D dc->hw.info;
+
+	for (i =3D 0; i < dc_info->panel_num; i++) {
+		crtc =3D vs_crtc_create(drm_dev, dc_info);
+		if (!crtc) {
+			drm_err(drm_dev, "Failed to create CRTC.\n");
+			ret =3D -ENOMEM;
+			return ret;
+		}
+
+		port =3D of_graph_get_port_by_id(dev->of_node, i);
+		if (!port) {
+			drm_err(drm_dev, "no port node found for crtc_port%d\n", i);
+			return -ENOENT;
+		}
+
+		crtc->base.port =3D port;
+		crtc->dev =3D dev;
+		dc->crtc[i] =3D crtc;
+	}
+
+	for (i =3D 0; i < dc_info->plane_num; i++) {
+		plane_info =3D (struct vs_plane_info *)&dc_info->planes[i];
+
+		if (!dc->crtc[0]->base.port || !dc->crtc[1]->base.port) {
+			drm_err(drm_dev, "no port no crtc mask, fail to create plane\n");
+			return -ENOENT;
+		}
+
+		if (plane_info->id =3D=3D PRIMARY_PLANE_0 ||
+		    plane_info->id =3D=3D CURSOR_PLANE_0) {
+			possible_crtc =3D drm_crtc_mask(&dc->crtc[0]->base);
+		} else if (plane_info->id =3D=3D PRIMARY_PLANE_1 ||
+			plane_info->id =3D=3D CURSOR_PLANE_1) {
+			possible_crtc =3D drm_crtc_mask(&dc->crtc[1]->base);
+		} else {
+			possible_crtc =3D drm_crtc_mask(&dc->crtc[0]->base) |
+					drm_crtc_mask(&dc->crtc[1]->base);
+		}
+
+		plane =3D vs_plane_create(drm_dev, plane_info,
+					dc_info->layer_num, possible_crtc);
+		if (IS_ERR(plane)) {
+			dev_err(dev, "failed to construct plane\n");
+			return PTR_ERR(plane);
+		}
+
+		plane->id =3D i;
+		dc->planes[i].id =3D plane_info->id;
+
+		if (plane_info->type =3D=3D DRM_PLANE_TYPE_PRIMARY) {
+			if (plane_info->id =3D=3D PRIMARY_PLANE_0)
+				dc->crtc[0]->base.primary =3D &plane->base;
+			else
+				dc->crtc[1]->base.primary =3D &plane->base;
+
+			min_width =3D min_t(u32, min_width, plane_info->min_width);
+			min_heigth =3D min_t(u32, min_heigth, plane_info->min_height);
+			/*
+			 * Note: these values are used for multiple independent things:
+			 * hw display mode filtering, plane buffer sizes ...
+			 * Use the combined maximum values here to cover all use cases,
+			 * and do more specific checking in the respective code paths.
+			 */
+			max_width =3D max_t(u32, max_width, plane_info->max_width);
+			max_height =3D max_t(u32, max_height, plane_info->max_height);
+		}
+
+		if (plane_info->type =3D=3D DRM_PLANE_TYPE_CURSOR) {
+			if (plane_info->id =3D=3D CURSOR_PLANE_0)
+				dc->crtc[0]->base.cursor =3D &plane->base;
+			else
+				dc->crtc[1]->base.cursor =3D &plane->base;
+			drm_dev->mode_config.cursor_width =3D
+				max_t(u32, drm_dev->mode_config.cursor_width,
+				      plane_info->max_width);
+			drm_dev->mode_config.cursor_height =3D
+				max_t(u32, drm_dev->mode_config.cursor_height,
+				      plane_info->max_height);
+		}
+	}
+
+	drm_dev->mode_config.min_width =3D min_width;
+	drm_dev->mode_config.min_height =3D min_heigth;
+	drm_dev->mode_config.max_width =3D max_width;
+	drm_dev->mode_config.max_height =3D max_height;
+
+	vs_drm_update_pitch_alignment(drm_dev, dc_info->pitch_alignment);
+	return 0;
+}
+
+static void dc_unbind(struct device *dev, struct device *master, void *d=
ata)
+{
+	dc_deinit(dev);
+}
+
+const struct component_ops dc_component_ops =3D {
+	.bind =3D dc_bind,
+	.unbind =3D dc_unbind,
+};
+
+static const struct of_device_id dc_driver_dt_match[] =3D {
+	{
+		.compatible =3D "starfive,jh7110-dc8200",
+		.data =3D &dc8200_info,
+	},
+	{},
+};
+MODULE_DEVICE_TABLE(of, dc_driver_dt_match);
+
+static int dc_probe(struct platform_device *pdev)
+{
+	struct device *dev =3D &pdev->dev;
+	struct vs_dc *dc;
+	int ret, i;
+
+	dc =3D devm_kzalloc(dev, sizeof(*dc), GFP_KERNEL);
+	if (!dc)
+		return -ENOMEM;
+
+	dc->hw.hi_base =3D devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(dc->hw.hi_base))
+		return PTR_ERR(dc->hw.hi_base);
+
+	dc->hw.reg_base =3D devm_platform_ioremap_resource(pdev, 1);
+	if (IS_ERR(dc->hw.reg_base))
+		return PTR_ERR(dc->hw.reg_base);
+
+	dc->nclks =3D ARRAY_SIZE(dc->clk_vout);
+	for (i =3D 0; i < dc->nclks; ++i)
+		dc->clk_vout[i].id =3D vout_clocks[i];
+	ret =3D devm_clk_bulk_get(dev, dc->nclks, dc->clk_vout);
+	if (ret) {
+		dev_err(dev, "Failed to get clk controls\n");
+		return ret;
+	}
+
+	dc->irq =3D platform_get_irq(pdev, 0);
+
+	/* do not autoenable, will be enabled later */
+	ret =3D devm_request_irq(dev, dc->irq, dc_isr, IRQF_NO_AUTOEN, dev_name=
(dev), dc);
+	if (ret < 0) {
+		dev_err(dev, "Failed to install irq:%u.\n", dc->irq);
+		return ret;
+	}
+
+	dc->hw.info =3D (struct vs_dc_info *)of_device_get_match_data(dev);
+
+	dev_set_drvdata(dev, dc);
+
+	return component_add(dev, &dc_component_ops);
+}
+
+static int dc_remove(struct platform_device *pdev)
+{
+	struct device *dev =3D &pdev->dev;
+
+	component_del(dev, &dc_component_ops);
+
+	dev_set_drvdata(dev, NULL);
+
+	return 0;
+}
+
+struct platform_driver dc_platform_driver =3D {
+	.probe =3D dc_probe,
+	.remove =3D dc_remove,
+	.driver =3D {
+		.name =3D "vs-dc",
+		.of_match_table =3D of_match_ptr(dc_driver_dt_match),
+	},
+};
+
+MODULE_AUTHOR("StarFive Corporation");
+MODULE_DESCRIPTION("VeriSilicon DC Driver");
+MODULE_LICENSE("GPL");
diff --git a/drivers/gpu/drm/verisilicon/vs_dc.h b/drivers/gpu/drm/verisi=
licon/vs_dc.h
new file mode 100644
index 000000000000..eeb5be0499ea
--- /dev/null
+++ b/drivers/gpu/drm/verisilicon/vs_dc.h
@@ -0,0 +1,67 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
+ */
+
+#ifndef __VS_DC_H__
+#define __VS_DC_H__
+
+#include <linux/clk.h>
+#include <linux/mm_types.h>
+#include <linux/reset.h>
+
+#include <drm/drm_fourcc.h>
+#include <drm/drm_modes.h>
+
+#include "vs_crtc.h"
+#include "vs_dc_hw.h"
+#include "vs_plane.h"
+
+struct vs_dc_plane {
+	enum dc_hw_plane_id id;
+};
+
+enum vout_clk {
+	CLK_VOUT_PIX0,
+	CLK_VOUT_PIX1,
+	CLK_VOUT_HDMI_PIX,
+	CLK_VOUT_SOC_PIX,
+	CLK_VOUT_NUM
+};
+
+struct vs_dc {
+	struct vs_crtc		*crtc[DC_DISPLAY_NUM];
+	struct dc_hw		hw;
+
+	struct vs_dc_plane	planes[PLANE_NUM];
+	struct clk_bulk_data	clk_vout[CLK_VOUT_NUM];
+	int	nclks;
+	int irq;
+};
+
+void vs_dc_enable(struct vs_dc *dc, struct drm_crtc *crtc);
+void vs_dc_disable(struct vs_dc *dc, struct drm_crtc *crtc);
+
+void vs_dc_set_gamma(struct vs_dc *dc, struct drm_crtc *crtc,
+		     struct drm_color_lut *lut, unsigned int size);
+void vs_dc_enable_gamma(struct vs_dc *dc, struct drm_crtc *crtc, bool en=
able);
+void vs_dc_enable_vblank(struct vs_dc *dc, bool enable);
+void vs_dc_commit(struct vs_dc *dc);
+void vs_dc_update_plane(struct vs_dc *dc, struct vs_plane *plane,
+			struct drm_plane *drm_plane,
+			struct drm_atomic_state *drm_state);
+void vs_dc_disable_plane(struct vs_dc *dc, struct vs_plane *plane,
+			 struct drm_plane_state *old_state);
+int vs_dc_check_plane(struct vs_dc *dc, struct drm_plane *plane,
+		      struct drm_atomic_state *state);
+void vs_dc_update_cursor_plane(struct vs_dc *dc, struct vs_plane *plane,
+			       struct drm_plane *drm_plane,
+			       struct drm_atomic_state *drm_state);
+void vs_dc_disable_cursor_plane(struct vs_dc *dc, struct vs_plane *plane=
,
+				struct drm_plane_state *old_state);
+int vs_dc_check_cursor_plane(struct vs_dc *dc, struct drm_plane *plane,
+			     struct drm_atomic_state *state);
+
+extern struct platform_driver dc_platform_driver;
+
+#endif /* __VS_DC_H__ */
diff --git a/drivers/gpu/drm/verisilicon/vs_dc_hw.c b/drivers/gpu/drm/ver=
isilicon/vs_dc_hw.c
new file mode 100644
index 000000000000..d05ad3f00881
--- /dev/null
+++ b/drivers/gpu/drm/verisilicon/vs_dc_hw.c
@@ -0,0 +1,1022 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
+ */
+
+#include <linux/bits.h>
+#include <linux/io.h>
+#include <linux/media-bus-format.h>
+//#include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
+#include <drm/drm_fourcc.h>
+
+#include "vs_dc_hw.h"
+#include "vs_type.h"
+
+static const u32 horkernel[] =3D {
+	0x00000000, 0x20000000, 0x00002000, 0x00000000,
+	0x00000000, 0x00000000, 0x23fd1c03, 0x00000000,
+	0x00000000, 0x00000000, 0x181f0000, 0x000027e1,
+	0x00000000, 0x00000000, 0x00000000, 0x2b981468,
+	0x00000000, 0x00000000, 0x00000000, 0x10f00000,
+	0x00002f10, 0x00000000, 0x00000000, 0x00000000,
+	0x32390dc7, 0x00000000, 0x00000000, 0x00000000,
+	0x0af50000, 0x0000350b, 0x00000000, 0x00000000,
+	0x00000000, 0x3781087f, 0x00000000, 0x00000000,
+	0x00000000, 0x06660000, 0x0000399a, 0x00000000,
+	0x00000000, 0x00000000, 0x3b5904a7, 0x00000000,
+	0x00000000, 0x00000000, 0x033c0000, 0x00003cc4,
+	0x00000000, 0x00000000, 0x00000000, 0x3de1021f,
+	0x00000000, 0x00000000, 0x00000000, 0x01470000,
+	0x00003eb9, 0x00000000, 0x00000000, 0x00000000,
+	0x3f5300ad, 0x00000000, 0x00000000, 0x00000000,
+	0x00480000, 0x00003fb8, 0x00000000, 0x00000000,
+	0x00000000, 0x3fef0011, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00004000, 0x00000000,
+	0x00000000, 0x00000000, 0x20002000, 0x00000000,
+	0x00000000, 0x00000000, 0x1c030000, 0x000023fd,
+	0x00000000, 0x00000000, 0x00000000, 0x27e1181f,
+	0x00000000, 0x00000000, 0x00000000, 0x14680000,
+	0x00002b98, 0x00000000, 0x00000000, 0x00000000,
+	0x2f1010f0, 0x00000000, 0x00000000, 0x00000000,
+	0x0dc70000, 0x00003239, 0x00000000, 0x00000000,
+	0x00000000, 0x350b0af5, 0x00000000, 0x00000000,
+	0x00000000, 0x087f0000, 0x00003781, 0x00000000,
+	0x00000000, 0x00000000, 0x399a0666, 0x00000000,
+	0x00000000, 0x00000000, 0x04a70000, 0x00003b59,
+	0x00000000, 0x00000000, 0x00000000, 0x3cc4033c,
+	0x00000000, 0x00000000, 0x00000000, 0x021f0000,
+};
+
+#define H_COEF_SIZE ARRAY_SIZE(horkernel)
+
+static const u32 verkernel[] =3D {
+	0x00000000, 0x20000000, 0x00002000, 0x00000000,
+	0x00000000, 0x00000000, 0x23fd1c03, 0x00000000,
+	0x00000000, 0x00000000, 0x181f0000, 0x000027e1,
+	0x00000000, 0x00000000, 0x00000000, 0x2b981468,
+	0x00000000, 0x00000000, 0x00000000, 0x10f00000,
+	0x00002f10, 0x00000000, 0x00000000, 0x00000000,
+	0x32390dc7, 0x00000000, 0x00000000, 0x00000000,
+	0x0af50000, 0x0000350b, 0x00000000, 0x00000000,
+	0x00000000, 0x3781087f, 0x00000000, 0x00000000,
+	0x00000000, 0x06660000, 0x0000399a, 0x00000000,
+	0x00000000, 0x00000000, 0x3b5904a7, 0x00000000,
+	0x00000000, 0x00000000, 0x033c0000, 0x00003cc4,
+	0x00000000, 0x00000000, 0x00000000, 0x3de1021f,
+	0x00000000, 0x00000000, 0x00000000, 0x01470000,
+	0x00003eb9, 0x00000000, 0x00000000, 0x00000000,
+	0x3f5300ad, 0x00000000, 0x00000000, 0x00000000,
+	0x00480000, 0x00003fb8, 0x00000000, 0x00000000,
+	0x00000000, 0x3fef0011, 0x00000000, 0x00000000,
+	0x00000000, 0x00000000, 0x00004000, 0x00000000,
+	0xcdcd0000, 0xfdfdfdfd, 0xabababab, 0xabababab,
+	0x00000000, 0x00000000, 0x5ff5f456, 0x000f5f58,
+	0x02cc6c78, 0x02cc0c28, 0xfeeefeee, 0xfeeefeee,
+	0xfeeefeee, 0xfeeefeee, 0xfeeefeee, 0xfeeefeee,
+	0xfeeefeee, 0xfeeefeee, 0xfeeefeee, 0xfeeefeee,
+	0xfeeefeee, 0xfeeefeee, 0xfeeefeee, 0xfeeefeee,
+	0xfeeefeee, 0xfeeefeee, 0xfeeefeee, 0xfeeefeee,
+	0xfeeefeee, 0xfeeefeee, 0xfeeefeee, 0xfeeefeee,
+	0xfeeefeee, 0xfeeefeee, 0xfeeefeee, 0xfeeefeee,
+	0xfeeefeee, 0xfeeefeee, 0xfeeefeee, 0xfeeefeee,
+	0xfeeefeee, 0xfeeefeee, 0xfeeefeee, 0xfeeefeee,
+	0xfeeefeee, 0xfeeefeee, 0xfeeefeee, 0xfeeefeee,
+	0xfeeefeee, 0xfeeefeee, 0xfeeefeee, 0xfeeefeee,
+};
+
+#define V_COEF_SIZE ARRAY_SIZE(verkernel)
+
+/*
+ * RGB 709->2020 conversion parameters
+ */
+static const u16 RGB2RGB[RGB_TO_RGB_TABLE_SIZE] =3D {
+	10279,	5395,	709,
+	1132,	15065,	187,
+	269,	1442,	14674
+};
+
+/*
+ * YUV601 to RGB conversion parameters
+ * YUV2RGB[0]  - [8] : C0 - C8;
+ * YUV2RGB[9]  - [11]: D0 - D2;
+ * YUV2RGB[12] - [13]: Y clamp min & max calue;
+ * YUV2RGB[14] - [15]: UV clamp min & max calue;
+ */
+static const s32 YUV601_2RGB[YUV_TO_RGB_TABLE_SIZE] =3D {
+	1196,	0,		1640,	1196,
+	-404,	-836,		1196,	2076,
+	0,	-916224,	558336,	-1202944,
+	64,	940,		64,	960
+};
+
+/*
+ * YUV709 to RGB conversion parameters
+ * YUV2RGB[0]  - [8] : C0 - C8;
+ * YUV2RGB[9]  - [11]: D0 - D2;
+ * YUV2RGB[12] - [13]: Y clamp min & max calue;
+ * YUV2RGB[14] - [15]: UV clamp min & max calue;
+ */
+static s32 YUV709_2RGB[YUV_TO_RGB_TABLE_SIZE] =3D {
+	1196,		0,		1844,	1196,
+	-220,		-548,	1196,	2172,
+	0,			-1020672, 316672,  -1188608,
+	64,			940,		64,		960
+};
+
+/*
+ * YUV2020 to RGB conversion parameters
+ * YUV2RGB[0]  - [8] : C0 - C8;
+ * YUV2RGB[9]  - [11]: D0 - D2;
+ * YUV2RGB[12] - [13]: Y clamp min & max calue;
+ * YUV2RGB[14] - [15]: UV clamp min & max calue;
+ */
+static s32 YUV2020_2RGB[YUV_TO_RGB_TABLE_SIZE] =3D {
+	1196, 0, 1724, 1196,
+	-192, -668, 1196, 2200,
+	0, -959232, 363776, -1202944,
+	64, 940, 64, 960
+};
+
+/*
+ * RGB to YUV2020 conversion parameters
+ * RGB2YUV[0] - [8] : C0 - C8;
+ * RGB2YUV[9] - [11]: D0 - D2;
+ */
+static s16 RGB2YUV[RGB_TO_YUV_TABLE_SIZE] =3D {
+	230,	594,	52,
+	-125,  -323,	448,
+	448,   -412,   -36,
+	64,		512,	512
+};
+
+/* one is for primary plane and the other is for all overlay planes */
+static const struct dc_hw_plane_reg dc_plane_reg[] =3D {
+	{
+		.y_address		=3D DC_FRAMEBUFFER_ADDRESS,
+		.u_address		=3D DC_FRAMEBUFFER_U_ADDRESS,
+		.v_address		=3D DC_FRAMEBUFFER_V_ADDRESS,
+		.y_stride		=3D DC_FRAMEBUFFER_STRIDE,
+		.u_stride		=3D DC_FRAMEBUFFER_U_STRIDE,
+		.v_stride		=3D DC_FRAMEBUFFER_V_STRIDE,
+		.size			=3D DC_FRAMEBUFFER_SIZE,
+		.top_left		=3D DC_FRAMEBUFFER_TOP_LEFT,
+		.bottom_right	=3D DC_FRAMEBUFFER_BOTTOM_RIGHT,
+		.scale_factor_x			=3D DC_FRAMEBUFFER_SCALE_FACTOR_X,
+		.scale_factor_y			=3D DC_FRAMEBUFFER_SCALE_FACTOR_Y,
+		.h_filter_coef_index	=3D DC_FRAMEBUFFER_H_FILTER_COEF_INDEX,
+		.h_filter_coef_data		=3D DC_FRAMEBUFFER_H_FILTER_COEF_DATA,
+		.v_filter_coef_index	=3D DC_FRAMEBUFFER_V_FILTER_COEF_INDEX,
+		.v_filter_coef_data		=3D DC_FRAMEBUFFER_V_FILTER_COEF_DATA,
+		.init_offset			=3D DC_FRAMEBUFFER_INIT_OFFSET,
+		.color_key				=3D DC_FRAMEBUFFER_COLOR_KEY,
+		.color_key_high			=3D DC_FRAMEBUFFER_COLOR_KEY_HIGH,
+		.clear_value			=3D DC_FRAMEBUFFER_CLEAR_VALUE,
+		.color_table_index		=3D DC_FRAMEBUFFER_COLOR_TABLE_INDEX,
+		.color_table_data		=3D DC_FRAMEBUFFER_COLOR_TABLE_DATA,
+		.scale_config			=3D DC_FRAMEBUFFER_SCALE_CONFIG,
+		.water_mark				=3D DC_FRAMEBUFFER_WATER_MARK,
+		.degamma_index			=3D DC_FRAMEBUFFER_DEGAMMA_INDEX,
+		.degamma_data			=3D DC_FRAMEBUFFER_DEGAMMA_DATA,
+		.degamma_ex_data		=3D DC_FRAMEBUFFER_DEGAMMA_EX_DATA,
+		.src_global_color		=3D DC_FRAMEBUFFER_SRC_GLOBAL_COLOR,
+		.dst_global_color		=3D DC_FRAMEBUFFER_DST_GLOBAL_COLOR,
+		.blend_config			=3D DC_FRAMEBUFFER_BLEND_CONFIG,
+		.roi_origin				=3D DC_FRAMEBUFFER_ROI_ORIGIN,
+		.roi_size				=3D DC_FRAMEBUFFER_ROI_SIZE,
+		.yuv_to_rgb_coef0			=3D DC_FRAMEBUFFER_YUVTORGB_COEF0,
+		.yuv_to_rgb_coef1			=3D DC_FRAMEBUFFER_YUVTORGB_COEF1,
+		.yuv_to_rgb_coef2			=3D DC_FRAMEBUFFER_YUVTORGB_COEF2,
+		.yuv_to_rgb_coef3			=3D DC_FRAMEBUFFER_YUVTORGB_COEF3,
+		.yuv_to_rgb_coef4			=3D DC_FRAMEBUFFER_YUVTORGB_COEF4,
+		.yuv_to_rgb_coefd0			=3D DC_FRAMEBUFFER_YUVTORGB_COEFD0,
+		.yuv_to_rgb_coefd1			=3D DC_FRAMEBUFFER_YUVTORGB_COEFD1,
+		.yuv_to_rgb_coefd2			=3D DC_FRAMEBUFFER_YUVTORGB_COEFD2,
+		.y_clamp_bound				=3D DC_FRAMEBUFFER_Y_CLAMP_BOUND,
+		.uv_clamp_bound				=3D DC_FRAMEBUFFER_UV_CLAMP_BOUND,
+		.rgb_to_rgb_coef0			=3D DC_FRAMEBUFFER_RGBTORGB_COEF0,
+		.rgb_to_rgb_coef1			=3D DC_FRAMEBUFFER_RGBTORGB_COEF1,
+		.rgb_to_rgb_coef2			=3D DC_FRAMEBUFFER_RGBTORGB_COEF2,
+		.rgb_to_rgb_coef3			=3D DC_FRAMEBUFFER_RGBTORGB_COEF3,
+		.rgb_to_rgb_coef4			=3D DC_FRAMEBUFFER_RGBTORGB_COEF4,
+	},
+	{
+		.y_address		=3D DC_OVERLAY_ADDRESS,
+		.u_address		=3D DC_OVERLAY_U_ADDRESS,
+		.v_address		=3D DC_OVERLAY_V_ADDRESS,
+		.y_stride		=3D DC_OVERLAY_STRIDE,
+		.u_stride		=3D DC_OVERLAY_U_STRIDE,
+		.v_stride		=3D DC_OVERLAY_V_STRIDE,
+		.size			=3D DC_OVERLAY_SIZE,
+		.top_left		=3D DC_OVERLAY_TOP_LEFT,
+		.bottom_right	=3D DC_OVERLAY_BOTTOM_RIGHT,
+		.scale_factor_x	=3D DC_OVERLAY_SCALE_FACTOR_X,
+		.scale_factor_y	=3D DC_OVERLAY_SCALE_FACTOR_Y,
+		.h_filter_coef_index =3D DC_OVERLAY_H_FILTER_COEF_INDEX,
+		.h_filter_coef_data  =3D DC_OVERLAY_H_FILTER_COEF_DATA,
+		.v_filter_coef_index =3D DC_OVERLAY_V_FILTER_COEF_INDEX,
+		.v_filter_coef_data  =3D DC_OVERLAY_V_FILTER_COEF_DATA,
+		.init_offset		 =3D DC_OVERLAY_INIT_OFFSET,
+		.color_key			 =3D DC_OVERLAY_COLOR_KEY,
+		.color_key_high			=3D DC_OVERLAY_COLOR_KEY_HIGH,
+		.clear_value		 =3D DC_OVERLAY_CLEAR_VALUE,
+		.color_table_index	 =3D DC_OVERLAY_COLOR_TABLE_INDEX,
+		.color_table_data	 =3D DC_OVERLAY_COLOR_TABLE_DATA,
+		.scale_config		 =3D DC_OVERLAY_SCALE_CONFIG,
+		.water_mark				=3D DC_OVERLAY_WATER_MARK,
+		.degamma_index		 =3D DC_OVERLAY_DEGAMMA_INDEX,
+		.degamma_data		 =3D DC_OVERLAY_DEGAMMA_DATA,
+		.degamma_ex_data	 =3D DC_OVERLAY_DEGAMMA_EX_DATA,
+		.src_global_color	 =3D DC_OVERLAY_SRC_GLOBAL_COLOR,
+		.dst_global_color	 =3D DC_OVERLAY_DST_GLOBAL_COLOR,
+		.blend_config		 =3D DC_OVERLAY_BLEND_CONFIG,
+		.roi_origin				=3D DC_OVERLAY_ROI_ORIGIN,
+		.roi_size				=3D DC_OVERLAY_ROI_SIZE,
+		.yuv_to_rgb_coef0		 =3D DC_OVERLAY_YUVTORGB_COEF0,
+		.yuv_to_rgb_coef1		 =3D DC_OVERLAY_YUVTORGB_COEF1,
+		.yuv_to_rgb_coef2		 =3D DC_OVERLAY_YUVTORGB_COEF2,
+		.yuv_to_rgb_coef3		 =3D DC_OVERLAY_YUVTORGB_COEF3,
+		.yuv_to_rgb_coef4			=3D DC_OVERLAY_YUVTORGB_COEF4,
+		.yuv_to_rgb_coefd0			=3D DC_OVERLAY_YUVTORGB_COEFD0,
+		.yuv_to_rgb_coefd1			=3D DC_OVERLAY_YUVTORGB_COEFD1,
+		.yuv_to_rgb_coefd2			=3D DC_OVERLAY_YUVTORGB_COEFD2,
+		.y_clamp_bound		 =3D DC_OVERLAY_Y_CLAMP_BOUND,
+		.uv_clamp_bound		 =3D DC_OVERLAY_UV_CLAMP_BOUND,
+		.rgb_to_rgb_coef0		 =3D DC_OVERLAY_RGBTORGB_COEF0,
+		.rgb_to_rgb_coef1		 =3D DC_OVERLAY_RGBTORGB_COEF1,
+		.rgb_to_rgb_coef2		 =3D DC_OVERLAY_RGBTORGB_COEF2,
+		.rgb_to_rgb_coef3		 =3D DC_OVERLAY_RGBTORGB_COEF3,
+		.rgb_to_rgb_coef4		 =3D DC_OVERLAY_RGBTORGB_COEF4,
+	},
+};
+
+static const struct dc_hw_funcs hw_func;
+
+static inline u32 hi_read(struct dc_hw *hw, u32 reg)
+{
+	return readl(hw->hi_base + reg);
+}
+
+static inline void hi_write(struct dc_hw *hw, u32 reg, u32 value)
+{
+	writel(value, hw->hi_base + reg);
+}
+
+static inline void dc_write(struct dc_hw *hw, u32 reg, u32 value)
+{
+	writel(value, hw->reg_base + reg - DC_REG_BASE);
+}
+
+static inline u32 dc_read(struct dc_hw *hw, u32 reg)
+{
+	u32 value =3D readl(hw->reg_base + reg - DC_REG_BASE);
+
+	return value;
+}
+
+static inline void dc_set_clear(struct dc_hw *hw, u32 reg, u32 set, u32 =
clear)
+{
+	u32 value =3D dc_read(hw, reg);
+
+	value &=3D ~clear;
+	value |=3D set;
+	dc_write(hw, reg, value);
+}
+
+static void load_default_filter(struct dc_hw *hw,
+				const struct dc_hw_plane_reg *reg, u32 offset)
+{
+	u8 i;
+
+	dc_write(hw, reg->scale_config + offset, 0x33);
+	dc_write(hw, reg->init_offset + offset, 0x80008000);
+	dc_write(hw, reg->h_filter_coef_index + offset, 0x00);
+	for (i =3D 0; i < H_COEF_SIZE; i++)
+		dc_write(hw, reg->h_filter_coef_data + offset, horkernel[i]);
+
+	dc_write(hw, reg->v_filter_coef_index + offset, 0x00);
+	for (i =3D 0; i < V_COEF_SIZE; i++)
+		dc_write(hw, reg->v_filter_coef_data + offset, verkernel[i]);
+}
+
+static void load_rgb_to_rgb(struct dc_hw *hw, const struct dc_hw_plane_r=
eg *reg,
+			    u32 offset, const u16 *table)
+{
+	dc_write(hw, reg->rgb_to_rgb_coef0 + offset, table[0] | (table[1] << 16=
));
+	dc_write(hw, reg->rgb_to_rgb_coef1 + offset, table[2] | (table[3] << 16=
));
+	dc_write(hw, reg->rgb_to_rgb_coef2 + offset, table[4] | (table[5] << 16=
));
+	dc_write(hw, reg->rgb_to_rgb_coef3 + offset, table[6] | (table[7] << 16=
));
+	dc_write(hw, reg->rgb_to_rgb_coef4 + offset, table[8]);
+}
+
+static void load_yuv_to_rgb(struct dc_hw *hw, const struct dc_hw_plane_r=
eg *reg,
+			    u32 offset, const s32 *table)
+{
+	dc_write(hw, reg->yuv_to_rgb_coef0 + offset,
+		 (0xFFFF & table[0]) | (table[1] << 16));
+	dc_write(hw, reg->yuv_to_rgb_coef1 + offset,
+		 (0xFFFF & table[2]) | (table[3] << 16));
+	dc_write(hw, reg->yuv_to_rgb_coef2 + offset,
+		 (0xFFFF & table[4]) | (table[5] << 16));
+	dc_write(hw, reg->yuv_to_rgb_coef3 + offset,
+		 (0xFFFF & table[6]) | (table[7] << 16));
+	dc_write(hw, reg->yuv_to_rgb_coef4 + offset, table[8]);
+	dc_write(hw, reg->yuv_to_rgb_coefd0 + offset, table[9]);
+	dc_write(hw, reg->yuv_to_rgb_coefd1 + offset, table[10]);
+	dc_write(hw, reg->yuv_to_rgb_coefd2 + offset, table[11]);
+	dc_write(hw, reg->y_clamp_bound + offset, table[12] | (table[13] << 16)=
);
+	dc_write(hw, reg->uv_clamp_bound + offset, table[14] | (table[15] << 16=
));
+}
+
+static void load_rgb_to_yuv(struct dc_hw *hw, u32 offset, s16 *table)
+{
+	dc_write(hw, DC_DISPLAY_RGBTOYUV_COEF0 + offset,
+		 table[0] | (table[1] << 16));
+	dc_write(hw, DC_DISPLAY_RGBTOYUV_COEF1 + offset,
+		 table[2] | (table[3] << 16));
+	dc_write(hw, DC_DISPLAY_RGBTOYUV_COEF2 + offset,
+		 table[4] | (table[5] << 16));
+	dc_write(hw, DC_DISPLAY_RGBTOYUV_COEF3 + offset,
+		 table[6] | (table[7] << 16));
+	dc_write(hw, DC_DISPLAY_RGBTOYUV_COEF4 + offset, table[8]);
+	dc_write(hw, DC_DISPLAY_RGBTOYUV_COEFD0 + offset, table[9]);
+	dc_write(hw, DC_DISPLAY_RGBTOYUV_COEFD1 + offset, table[10]);
+	dc_write(hw, DC_DISPLAY_RGBTOYUV_COEFD2 + offset, table[11]);
+}
+
+static bool is_rgb(enum dc_hw_color_format format)
+{
+	switch (format) {
+	case FORMAT_X4R4G4B4:
+	case FORMAT_A4R4G4B4:
+	case FORMAT_X1R5G5B5:
+	case FORMAT_A1R5G5B5:
+	case FORMAT_R5G6B5:
+	case FORMAT_X8R8G8B8:
+	case FORMAT_A8R8G8B8:
+	case FORMAT_A2R10G10B10:
+		return true;
+	default:
+		return false;
+	}
+}
+
+static u32 get_addr_offset(u32 id)
+{
+	u32 offset =3D 0;
+
+	switch (id) {
+	case PRIMARY_PLANE_1:
+	case OVERLAY_PLANE_1:
+		offset =3D 0x04;
+		break;
+	case OVERLAY_PLANE_2:
+		offset =3D 0x08;
+		break;
+	case OVERLAY_PLANE_3:
+		offset =3D 0x0C;
+		break;
+	default:
+		break;
+	}
+
+	return offset;
+}
+
+int dc_hw_init(struct dc_hw *hw)
+{
+	u8 i, id, panel_num, layer_num;
+	u32 offset;
+
+	hw->func =3D (struct dc_hw_funcs *)&hw_func;
+
+	layer_num =3D hw->info->layer_num;
+	for (i =3D 0; i < layer_num; i++) {
+		id =3D hw->info->planes[i].id;
+		offset =3D get_addr_offset(id);
+		if (id =3D=3D PRIMARY_PLANE_0 || id =3D=3D PRIMARY_PLANE_1)
+			hw->reg[i] =3D dc_plane_reg[0];
+		else
+			hw->reg[i] =3D dc_plane_reg[1];
+
+		load_default_filter(hw, &hw->reg[i], offset);
+		load_rgb_to_rgb(hw, &hw->reg[i], offset, RGB2RGB);
+	}
+
+	panel_num =3D hw->info->panel_num;
+	for (i =3D 0; i < panel_num; i++) {
+		offset =3D i << 2;
+
+		load_rgb_to_yuv(hw, offset, RGB2YUV);
+		dc_write(hw, DC_DISPLAY_PANEL_CONFIG + offset, 0x111);
+
+		offset =3D i ? DC_CURSOR_OFFSET : 0;
+		dc_write(hw, DC_CURSOR_BACKGROUND + offset, 0x00FFFFFF);
+		dc_write(hw, DC_CURSOR_FOREGROUND + offset, 0x00AAAAAA);
+	}
+
+	return 0;
+}
+
+void dc_hw_deinit(struct dc_hw *hw)
+{
+	/* Nothing to do */
+}
+
+void dc_hw_update_plane(struct dc_hw *hw, u8 id,
+			struct dc_hw_fb *fb, struct dc_hw_scale *scale,
+			struct dc_hw_position *pos, struct dc_hw_blend *blend)
+{
+	struct dc_hw_plane *plane =3D &hw->plane[id];
+
+	if (plane) {
+		if (fb) {
+			if (!fb->enable)
+				plane->fb.enable =3D false;
+			else
+				memcpy(&plane->fb, fb,
+				       sizeof(*fb) - sizeof(fb->dirty));
+			plane->fb.dirty =3D true;
+		}
+		if (scale) {
+			memcpy(&plane->scale, scale,
+			       sizeof(*scale) - sizeof(scale->dirty));
+			plane->scale.dirty =3D true;
+		}
+		if (pos) {
+			memcpy(&plane->pos, pos,
+			       sizeof(*pos) - sizeof(pos->dirty));
+			plane->pos.dirty =3D true;
+		}
+		if (blend) {
+			memcpy(&plane->blend, blend,
+			       sizeof(*blend) - sizeof(blend->dirty));
+			plane->blend.dirty =3D true;
+		}
+	}
+}
+
+void dc_hw_update_cursor(struct dc_hw *hw, u8 id, struct dc_hw_cursor *c=
ursor)
+{
+	memcpy(&hw->cursor[id], cursor, sizeof(*cursor) - sizeof(cursor->dirty)=
);
+	hw->cursor[id].dirty =3D true;
+}
+
+void dc_hw_update_gamma(struct dc_hw *hw, u8 id, u16 index,
+			u16 r, u16 g, u16 b)
+{
+	if (index >=3D hw->info->gamma_size)
+		return;
+
+	hw->gamma[id].gamma[index][0] =3D r;
+	hw->gamma[id].gamma[index][1] =3D g;
+	hw->gamma[id].gamma[index][2] =3D b;
+	hw->gamma[id].dirty =3D true;
+}
+
+void dc_hw_enable_gamma(struct dc_hw *hw, u8 id, bool enable)
+{
+	hw->gamma[id].enable =3D enable;
+	hw->gamma[id].dirty =3D true;
+}
+
+void dc_hw_setup_display(struct dc_hw *hw, struct dc_hw_display *display=
)
+{
+	u8 id =3D display->id;
+
+	memcpy(&hw->display[id], display, sizeof(*display));
+
+	hw->func->display(hw, display);
+}
+
+void dc_hw_enable_interrupt(struct dc_hw *hw, bool enable)
+{
+	if (enable)
+		hi_write(hw, AQ_INTR_ENBL, 0xFFFFFFFF);
+	else
+		hi_write(hw, AQ_INTR_ENBL, 0);
+}
+
+u32 dc_hw_get_interrupt(struct dc_hw *hw)
+{
+	return hi_read(hw, AQ_INTR_ACKNOWLEDGE);
+}
+
+void dc_hw_enable_shadow_register(struct dc_hw *hw, bool enable)
+{
+	u32 i, offset;
+	u8 id, layer_num =3D hw->info->layer_num;
+	u8 panel_num =3D hw->info->panel_num;
+
+	for (i =3D 0; i < layer_num; i++) {
+		id =3D hw->info->planes[i].id;
+		offset =3D get_addr_offset(id);
+		if (enable) {
+			if (id =3D=3D PRIMARY_PLANE_0 || id =3D=3D PRIMARY_PLANE_1)
+				dc_set_clear(hw, DC_FRAMEBUFFER_CONFIG_EX + offset,
+					     PRIMARY_SHADOW_EN, 0);
+			else
+				dc_set_clear(hw, DC_OVERLAY_CONFIG + offset,
+					     OVERLAY_SHADOW_EN, 0);
+		} else {
+			if (id =3D=3D PRIMARY_PLANE_0 || id =3D=3D PRIMARY_PLANE_1)
+				dc_set_clear(hw, DC_FRAMEBUFFER_CONFIG_EX + offset,
+					     0, PRIMARY_SHADOW_EN);
+			else
+				dc_set_clear(hw, DC_OVERLAY_CONFIG + offset,
+					     0, OVERLAY_SHADOW_EN);
+		}
+	}
+
+	for (i =3D 0; i < panel_num; i++) {
+		offset =3D i << 2;
+		if (enable)
+			dc_set_clear(hw, DC_DISPLAY_PANEL_CONFIG_EX + offset, 0, PANEL_SHADOW=
_EN);
+		else
+			dc_set_clear(hw, DC_DISPLAY_PANEL_CONFIG_EX + offset, PANEL_SHADOW_EN=
, 0);
+	}
+}
+
+void dc_hw_set_out(struct dc_hw *hw, enum dc_hw_out out, u8 id)
+{
+	if (out <=3D OUT_DP)
+		hw->out[id] =3D out;
+}
+
+static void gamma_ex_commit(struct dc_hw *hw)
+{
+	u8 panel_num =3D hw->info->panel_num;
+	u16 i, j;
+	u32 value;
+
+	for (j =3D 0; j < panel_num; j++) {
+		if (hw->gamma[j].dirty) {
+			if (hw->gamma[j].enable) {
+				dc_write(hw, DC_DISPLAY_GAMMA_EX_INDEX + (j << 2), 0x00);
+				for (i =3D 0; i < GAMMA_EX_SIZE; i++) {
+					value =3D hw->gamma[j].gamma[i][2] |
+						(hw->gamma[j].gamma[i][1] << 12);
+					dc_write(hw, DC_DISPLAY_GAMMA_EX_DATA + (j << 2), value);
+					dc_write(hw, DC_DISPLAY_GAMMA_EX_ONE_DATA + (j << 2),
+						 hw->gamma[j].gamma[i][0]);
+				}
+				dc_set_clear(hw, DC_DISPLAY_PANEL_CONFIG + (j << 2),
+					     PANEL_GAMMA_EN, 0);
+			} else {
+				dc_set_clear(hw, DC_DISPLAY_PANEL_CONFIG + (j << 2),
+					     0, PANEL_GAMMA_EN);
+			}
+			hw->gamma[j].dirty =3D false;
+		}
+	}
+}
+
+static void plane_ex_commit_primary(struct dc_hw *hw, struct dc_hw_plane=
 *plane, u32 i, u32 offset)
+{
+	if (plane->fb.dirty) {
+		if (is_rgb(plane->fb.format)) {
+			dc_set_clear(hw,
+				     DC_FRAMEBUFFER_CONFIG_EX + offset,
+				     PRIMARY_RGB2RGB_EN, PRIMARY_YUVCLAMP_EN);
+		} else {
+			dc_set_clear(hw,
+				     DC_FRAMEBUFFER_CONFIG_EX + offset,
+				     PRIMARY_YUVCLAMP_EN, PRIMARY_RGB2RGB_EN);
+
+			switch (plane->fb.yuv_color_space) {
+			case COLOR_SPACE_601:
+				load_yuv_to_rgb(hw, &hw->reg[i], offset, YUV601_2RGB);
+				break;
+			case COLOR_SPACE_709:
+				load_yuv_to_rgb(hw, &hw->reg[i], offset, YUV709_2RGB);
+				break;
+			case COLOR_SPACE_2020:
+				load_yuv_to_rgb(hw, &hw->reg[i], offset, YUV2020_2RGB);
+				break;
+			default:
+				break;
+			}
+		}
+
+		if (plane->fb.enable) {
+			dc_write(hw, hw->reg[i].y_address + offset,
+				 plane->fb.y_address);
+			dc_write(hw, hw->reg[i].u_address + offset,
+				 plane->fb.u_address);
+			dc_write(hw, hw->reg[i].v_address + offset,
+				 plane->fb.v_address);
+			dc_write(hw, hw->reg[i].y_stride + offset,
+				 plane->fb.y_stride);
+			dc_write(hw, hw->reg[i].u_stride + offset,
+				 plane->fb.u_stride);
+			dc_write(hw, hw->reg[i].v_stride + offset,
+				 plane->fb.v_stride);
+			dc_write(hw, hw->reg[i].size + offset,
+				 FB_SIZE(plane->fb.width, plane->fb.height));
+			dc_write(hw, hw->reg[i].water_mark + offset,
+				 plane->fb.water_mark);
+
+			if (plane->fb.clear_enable)
+				dc_write(hw, hw->reg[i].clear_value + offset,
+					 plane->fb.clear_value);
+		}
+
+		dc_set_clear(hw, DC_FRAMEBUFFER_CONFIG + offset,
+			     PRIMARY_FORMAT(plane->fb.format) |
+			     PRIMARY_UV_SWIZ(plane->fb.uv_swizzle) |
+			     PRIMARY_SWIZ(plane->fb.swizzle) |
+			     PRIMARY_TILE(plane->fb.tile_mode) |
+			     PRIMARY_YUV_COLOR(plane->fb.yuv_color_space) |
+			     PRIMARY_ROTATION(plane->fb.rotation) |
+			     PRIMARY_CLEAR_EN(plane->fb.clear_enable),
+			     PRIMARY_FORMAT_MASK |
+			     PRIMARY_UV_SWIZ_MASK |
+			     PRIMARY_SWIZ_MASK |
+			     PRIMARY_TILE_MASK |
+			     PRIMARY_YUV_COLOR_MASK |
+			     PRIMARY_ROTATION_MASK |
+			     PRIMARY_CLEAR_EN_MASK);
+		dc_set_clear(hw, DC_FRAMEBUFFER_CONFIG_EX + offset,
+			     PRIMARY_DECODER_EN(plane->fb.dec_enable) |
+			     PRIMARY_EN(plane->fb.enable) |
+			     PRIMARY_ZPOS(plane->fb.zpos) |
+			     PRIMARY_CHANNEL(plane->fb.display_id),
+			     PRIMARY_DECODER_EN_EN_MASK |
+			     PRIMARY_EN_MASK |
+			     PRIMARY_ZPOS_MASK |
+			     PRIMARY_CHANNEL_MASK);
+
+		plane->fb.dirty =3D false;
+	}
+
+	if (plane->scale.dirty) {
+		if (plane->scale.enable) {
+			dc_write(hw, hw->reg[i].scale_factor_x + offset,
+				 plane->scale.scale_factor_x);
+			dc_write(hw, hw->reg[i].scale_factor_y + offset,
+				 plane->scale.scale_factor_y);
+				dc_set_clear(hw, DC_FRAMEBUFFER_CONFIG + offset,
+					     PRIMARY_SCALE_EN, 0);
+		} else {
+			dc_set_clear(hw, DC_FRAMEBUFFER_CONFIG + offset,
+				     0, PRIMARY_SCALE_EN);
+		}
+		plane->scale.dirty =3D false;
+	}
+
+	if (plane->pos.dirty) {
+		dc_write(hw, hw->reg[i].top_left + offset,
+			 X_POS(plane->pos.start_x) |
+			 Y_POS(plane->pos.start_y));
+		dc_write(hw, hw->reg[i].bottom_right + offset,
+			 X_POS(plane->pos.end_x) |
+			 Y_POS(plane->pos.end_y));
+		plane->pos.dirty =3D false;
+	}
+
+	if (plane->blend.dirty) {
+		dc_write(hw, hw->reg[i].src_global_color + offset,
+			 PRIMARY_ALPHA_LEN(plane->blend.alpha));
+		dc_write(hw, hw->reg[i].dst_global_color + offset,
+			 PRIMARY_ALPHA_LEN(plane->blend.alpha));
+		switch (plane->blend.blend_mode) {
+		case DRM_MODE_BLEND_PREMULTI:
+			dc_write(hw, hw->reg[i].blend_config + offset, BLEND_PREMULTI);
+			break;
+		case DRM_MODE_BLEND_COVERAGE:
+			dc_write(hw, hw->reg[i].blend_config + offset, BLEND_COVERAGE);
+			break;
+		case DRM_MODE_BLEND_PIXEL_NONE:
+			dc_write(hw, hw->reg[i].blend_config + offset, BLEND_PIXEL_NONE);
+			break;
+		default:
+			break;
+		}
+		plane->blend.dirty =3D false;
+	}
+}
+
+static void plane_ex_commit_overlay(struct dc_hw *hw, struct dc_hw_plane=
 *plane,
+				    u32 i, u32 offset)
+{
+	if (plane->fb.dirty) {
+		if (is_rgb(plane->fb.format)) {
+			dc_set_clear(hw, DC_OVERLAY_CONFIG + offset,
+				     OVERLAY_RGB2RGB_EN, OVERLAY_CLAMP_EN);
+		} else {
+			dc_set_clear(hw, DC_OVERLAY_CONFIG + offset,
+				     OVERLAY_CLAMP_EN, OVERLAY_RGB2RGB_EN);
+
+			switch (plane->fb.yuv_color_space) {
+			case COLOR_SPACE_601:
+				load_yuv_to_rgb(hw, &hw->reg[i], offset, YUV601_2RGB);
+				break;
+			case COLOR_SPACE_709:
+				load_yuv_to_rgb(hw, &hw->reg[i], offset, YUV709_2RGB);
+				break;
+			case COLOR_SPACE_2020:
+				load_yuv_to_rgb(hw, &hw->reg[i], offset, YUV2020_2RGB);
+				break;
+			default:
+				break;
+			}
+		}
+
+		if (plane->fb.enable) {
+			dc_write(hw, hw->reg[i].y_address + offset,
+				 plane->fb.y_address);
+			dc_write(hw, hw->reg[i].u_address + offset,
+				 plane->fb.u_address);
+			dc_write(hw, hw->reg[i].v_address + offset,
+				 plane->fb.v_address);
+			dc_write(hw, hw->reg[i].y_stride + offset,
+				 plane->fb.y_stride);
+			dc_write(hw, hw->reg[i].u_stride + offset,
+				 plane->fb.u_stride);
+			dc_write(hw, hw->reg[i].v_stride + offset,
+				 plane->fb.v_stride);
+			dc_write(hw, hw->reg[i].size + offset,
+				 FB_SIZE(plane->fb.width, plane->fb.height));
+			dc_write(hw, hw->reg[i].water_mark + offset,
+				 plane->fb.water_mark);
+
+			if (plane->fb.clear_enable)
+				dc_write(hw, hw->reg[i].clear_value + offset,
+					 plane->fb.clear_value);
+		}
+
+		dc_set_clear(hw, DC_OVERLAY_CONFIG + offset,
+			     OVERLAY_DEC_EN(plane->fb.dec_enable) |
+			     OVERLAY_CLEAR_EN(plane->fb.clear_enable) |
+			     OVERLAY_FB_EN(plane->fb.enable) |
+			     OVERLAY_FORMAT(plane->fb.format) |
+			     OVERLAY_UV_SWIZ(plane->fb.uv_swizzle) |
+			     OVERLAY_SWIZ(plane->fb.swizzle) |
+			     OVERLAY_TILE(plane->fb.tile_mode) |
+			     OVERLAY_YUV_COLOR(plane->fb.yuv_color_space) |
+			     OVERLAY_ROTATION(plane->fb.rotation),
+			     OVERLAY_DEC_EN_MASK |
+			     OVERLAY_CLEAR_EN_MASK |
+			     OVERLAY_FB_EN_MASK |
+			     OVERLAY_FORMAT_MASK |
+			     OVERLAY_UV_SWIZ_MASK |
+			     OVERLAY_SWIZ_MASK |
+			     OVERLAY_TILE_MASK |
+			     OVERLAY_YUV_COLOR_MASK |
+			     OVERLAY_ROTATION_MASK);
+
+		dc_set_clear(hw, DC_OVERLAY_CONFIG_EX + offset,
+			     OVERLAY_LAYER_SEL(plane->fb.zpos) |
+			     OVERLAY_PANEL_SEL(plane->fb.display_id),
+			     OVERLAY_LAYER_SEL_MASK |
+			     OVERLAY_PANEL_SEL_MASK);
+
+		plane->fb.dirty =3D false;
+	}
+
+	if (plane->scale.dirty) {
+		if (plane->scale.enable) {
+			dc_write(hw, hw->reg[i].scale_factor_x + offset,
+				 plane->scale.scale_factor_x);
+			dc_write(hw, hw->reg[i].scale_factor_y + offset,
+				 plane->scale.scale_factor_y);
+			dc_set_clear(hw, DC_OVERLAY_SCALE_CONFIG + offset,
+				     OVERLAY_SCALE_EN, 0);
+		} else {
+			dc_set_clear(hw, DC_OVERLAY_SCALE_CONFIG + offset,
+				     0, OVERLAY_SCALE_EN);
+		}
+		plane->scale.dirty =3D false;
+	}
+
+	if (plane->pos.dirty) {
+		dc_write(hw, hw->reg[i].top_left + offset,
+			 X_POS(plane->pos.start_x) |
+			 Y_POS(plane->pos.start_y));
+		dc_write(hw, hw->reg[i].bottom_right + offset,
+			 X_POS(plane->pos.end_x) |
+			 Y_POS(plane->pos.end_y));
+		plane->pos.dirty =3D false;
+	}
+
+	if (plane->blend.dirty) {
+		dc_write(hw, hw->reg[i].src_global_color + offset,
+			 OVERLAY_ALPHA_LEN(plane->blend.alpha));
+		dc_write(hw, hw->reg[i].dst_global_color + offset,
+			 OVERLAY_ALPHA_LEN(plane->blend.alpha));
+		switch (plane->blend.blend_mode) {
+		case DRM_MODE_BLEND_PREMULTI:
+			dc_write(hw, hw->reg[i].blend_config + offset, BLEND_PREMULTI);
+			break;
+		case DRM_MODE_BLEND_COVERAGE:
+			dc_write(hw, hw->reg[i].blend_config + offset, BLEND_COVERAGE);
+			break;
+		case DRM_MODE_BLEND_PIXEL_NONE:
+			dc_write(hw, hw->reg[i].blend_config + offset, BLEND_PIXEL_NONE);
+			break;
+		default:
+			break;
+		}
+		plane->blend.dirty =3D false;
+	}
+}
+
+static void plane_ex_commit(struct dc_hw *hw)
+{
+	struct dc_hw_plane *plane;
+	u8 id, layer_num =3D hw->info->layer_num;
+	u32 i, offset;
+
+	for (i =3D 0; i < layer_num; i++) {
+		plane =3D &hw->plane[i];
+		id =3D hw->info->planes[i].id;
+		offset =3D get_addr_offset(id);
+		if (id =3D=3D PRIMARY_PLANE_0 || id =3D=3D PRIMARY_PLANE_1)
+			plane_ex_commit_primary(hw, plane, i, offset);
+		else
+			plane_ex_commit_overlay(hw, plane, i, offset);
+	}
+}
+
+static void setup_display(struct dc_hw *hw, struct dc_hw_display *displa=
y)
+{
+	u8 id =3D display->id;
+	u32 dpi_cfg, offset =3D id << 2;
+
+	if (hw->display[id].enable) {
+		switch (display->bus_format) {
+		case MEDIA_BUS_FMT_RGB565_1X16:
+			dpi_cfg =3D 0;
+			break;
+		case MEDIA_BUS_FMT_RGB666_1X18:
+			dpi_cfg =3D 3;
+			break;
+		case MEDIA_BUS_FMT_RGB666_1X24_CPADHI:
+			dpi_cfg =3D 4;
+			break;
+		case MEDIA_BUS_FMT_RGB888_1X24:
+			dpi_cfg =3D 5;
+			break;
+		case MEDIA_BUS_FMT_RGB101010_1X30:
+			dpi_cfg =3D 6;
+			break;
+		default:
+			dpi_cfg =3D 5;
+			break;
+		}
+		dc_write(hw, DC_DISPLAY_DPI_CONFIG + offset, dpi_cfg);
+
+		if (id =3D=3D 0)
+			dc_set_clear(hw, DC_DISPLAY_PANEL_START, 0, PANEL0_EN | TWO_PANEL_EN)=
;
+		else
+			dc_set_clear(hw, DC_DISPLAY_PANEL_START, 0, PANEL1_EN | TWO_PANEL_EN)=
;
+
+		dc_write(hw, DC_DISPLAY_H + offset,
+			 H_ACTIVE_LEN(hw->display[id].h_active) |
+			 H_TOTAL_LEN(hw->display[id].h_total));
+
+		dc_write(hw, DC_DISPLAY_H_SYNC + offset,
+			 H_SYNC_START_LEN(hw->display[id].h_sync_start) |
+			 H_SYNC_END_LEN(hw->display[id].h_sync_end) |
+			 H_POLARITY_LEN(hw->display[id].h_sync_polarity ? 0 : 1) |
+			 H_PLUS_LEN(1));
+
+		dc_write(hw, DC_DISPLAY_V + offset,
+			 V_ACTIVE_LEN(hw->display[id].v_active) |
+			 V_TOTAL_LEN(hw->display[id].v_total));
+
+		dc_write(hw, DC_DISPLAY_V_SYNC + offset,
+			 V_SYNC_START_LEN(hw->display[id].v_sync_start) |
+			 V_SYNC_END_LEN(hw->display[id].v_sync_end) |
+			 V_POLARITY_LEN(hw->display[id].v_sync_polarity ? 0 : 1) |
+			 V_PLUS_LEN(1));
+
+		if (hw->info->pipe_sync)
+			dc_set_clear(hw, DC_FRAMEBUFFER_CONFIG_EX,
+				     0, PRIMARY_SYNC0_EN | PRIMARY_SYNC1_EN);
+
+		dc_set_clear(hw, DC_DISPLAY_PANEL_CONFIG + offset, PANEL_OUTPUT_EN, 0)=
;
+		if (id =3D=3D 0)
+			dc_set_clear(hw, DC_DISPLAY_PANEL_START, PANEL0_EN, SYNC_EN);
+		else
+			dc_set_clear(hw, DC_DISPLAY_PANEL_START, PANEL1_EN, SYNC_EN);
+	} else {
+		dc_set_clear(hw, DC_DISPLAY_PANEL_CONFIG + offset, 0, PANEL_OUTPUT_EN)=
;
+
+		if (id =3D=3D 0)
+			dc_set_clear(hw, DC_DISPLAY_PANEL_START, 0, PANEL0_EN | TWO_PANEL_EN)=
;
+		else
+			dc_set_clear(hw, DC_DISPLAY_PANEL_START, 0, PANEL1_EN | TWO_PANEL_EN)=
;
+	}
+}
+
+static void setup_display_ex(struct dc_hw *hw, struct dc_hw_display *dis=
play)
+{
+	u8 id =3D display->id;
+	u32 dp_cfg, offset =3D id << 2;
+	bool is_yuv =3D false;
+
+	if (hw->display[id].enable && hw->out[id] =3D=3D OUT_DP) {
+		switch (display->bus_format) {
+		case MEDIA_BUS_FMT_RGB565_1X16:
+			dp_cfg =3D 0;
+			break;
+		case MEDIA_BUS_FMT_RGB666_1X18:
+			dp_cfg =3D 1;
+			break;
+		case MEDIA_BUS_FMT_RGB888_1X24:
+			dp_cfg =3D 2;
+			break;
+		case MEDIA_BUS_FMT_RGB101010_1X30:
+			dp_cfg =3D 3;
+			break;
+		case MEDIA_BUS_FMT_UYVY8_1X16:
+			dp_cfg =3D 2 << 4;
+			is_yuv =3D true;
+			break;
+		case MEDIA_BUS_FMT_YUV8_1X24:
+			dp_cfg =3D 4 << 4;
+			is_yuv =3D true;
+			break;
+		case MEDIA_BUS_FMT_UYVY10_1X20:
+			dp_cfg =3D 8 << 4;
+			is_yuv =3D true;
+			break;
+		case MEDIA_BUS_FMT_YUV10_1X30:
+			dp_cfg =3D 10 << 4;
+			is_yuv =3D true;
+			break;
+		case MEDIA_BUS_FMT_UYYVYY8_0_5X24:
+			dp_cfg =3D 12 << 4;
+			is_yuv =3D true;
+			break;
+		case MEDIA_BUS_FMT_UYYVYY10_0_5X30:
+			dp_cfg =3D 13 << 4;
+			is_yuv =3D true;
+			break;
+		default:
+			dp_cfg =3D 2;
+			break;
+		}
+		if (is_yuv)
+			dc_set_clear(hw, DC_DISPLAY_PANEL_CONFIG + offset,
+				     PANEL_RGB2YUV_EN, 0);
+		else
+			dc_set_clear(hw, DC_DISPLAY_PANEL_CONFIG + offset,
+				     0, PANEL_RGB2YUV_EN);
+		dc_write(hw, DC_DISPLAY_DP_CONFIG + offset, dp_cfg | DP_SELECT);
+	}
+
+	if (hw->out[id] =3D=3D OUT_DPI)
+		dc_set_clear(hw, DC_DISPLAY_DP_CONFIG + offset, 0, DP_SELECT);
+
+	setup_display(hw, display);
+}
+
+static const struct dc_hw_funcs hw_func =3D {
+	.gamma =3D &gamma_ex_commit,
+	.plane =3D &plane_ex_commit,
+	.display =3D setup_display_ex,
+};
+
+void dc_hw_commit(struct dc_hw *hw)
+{
+	u32 i, offset =3D 0;
+	u8 plane_num =3D hw->info->plane_num;
+	u8 layer_num =3D hw->info->layer_num;
+	u8 cursor_num =3D plane_num - layer_num;
+
+	hw->func->gamma(hw);
+	hw->func->plane(hw);
+
+	for (i =3D 0; i < cursor_num; i++) {
+		if (hw->cursor[i].dirty) {
+			offset =3D hw->cursor[i].display_id ? DC_CURSOR_OFFSET : 0;
+			if (hw->cursor[i].enable) {
+				dc_write(hw, DC_CURSOR_ADDRESS + offset,
+					 hw->cursor[i].address);
+				dc_write(hw, DC_CURSOR_LOCATION + offset,
+					 X_LCOTION(hw->cursor[i].x) |
+					 Y_LCOTION(hw->cursor[i].y));
+				dc_set_clear(hw, DC_CURSOR_CONFIG + offset,
+					     CURSOR_HOT_X(hw->cursor[i].hot_x) |
+					     CURSOR_HOT_y(hw->cursor[i].hot_y) |
+					     CURSOR_SIZE(hw->cursor[i].size) |
+					     CURSOR_VALID(1) |
+					     CURSOR_TRIG_FETCH(1) |
+					     CURSOR_FORMAT(CURSOR_FORMAT_A8R8G8B8),
+					     CURSOR_HOT_X_MASK |
+					     CURSOR_HOT_y_MASK |
+					     CURSOR_SIZE_MASK |
+					     CURSOR_VALID_MASK |
+					     CURSOR_TRIG_FETCH_MASK |
+					     CURSOR_FORMAT_MASK);
+			} else {
+				dc_set_clear(hw, DC_CURSOR_CONFIG + offset,
+					     CURSOR_VALID(1),
+					     CURSOR_FORMAT_MASK);
+			}
+			hw->cursor[i].dirty =3D false;
+		}
+	}
+}
diff --git a/drivers/gpu/drm/verisilicon/vs_dc_hw.h b/drivers/gpu/drm/ver=
isilicon/vs_dc_hw.h
new file mode 100644
index 000000000000..fcf51f00adaa
--- /dev/null
+++ b/drivers/gpu/drm/verisilicon/vs_dc_hw.h
@@ -0,0 +1,580 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
+ */
+
+#ifndef __VS_DC_HW_H__
+#define __VS_DC_HW_H__
+
+#include <linux/bitfield.h>
+#include <linux/bits.h>
+
+#define UPDATE(x, h, l)				FIELD_PREP(GENMASK(h, l), x)
+
+#define AQ_INTR_ACKNOWLEDGE			0x0010
+#define AQ_INTR_ENBL				0x0014
+#define DC_HW_REVISION				0x0024
+#define DC_HW_CHIP_CID				0x0030
+
+#define DC_REG_BASE				0x0800
+#define DC_REG_RANGE				0x2000
+#define DC_SEC_REG_OFFSET			0x100000
+
+#define DC_FRAMEBUFFER_CONFIG			0x1518
+# define PRIMARY_FORMAT(x)			((x) << 26)
+# define PRIMARY_FORMAT_MASK			GENMASK(31, 26)
+# define PRIMARY_UV_SWIZ(x)			((x) << 25)
+# define PRIMARY_UV_SWIZ_MASK			GENMASK(25, 25)
+# define PRIMARY_SWIZ(x)			((x) << 23)
+# define PRIMARY_SWIZ_MASK			GENMASK(24, 23)
+# define PRIMARY_SCALE_EN			BIT(12)
+# define PRIMARY_TILE(x)			((x) << 17)
+# define PRIMARY_TILE_MASK			GENMASK(21, 17)
+# define PRIMARY_YUV_COLOR(x)			((x) << 14)
+# define PRIMARY_YUV_COLOR_MASK			GENMASK(16, 14)
+# define PRIMARY_ROTATION(x)			((x) << 11)
+# define PRIMARY_ROTATION_MASK			GENMASK(13, 11)
+# define PRIMARY_CLEAR_EN(x)			((x) << 8)
+# define PRIMARY_CLEAR_EN_MASK			GENMASK(8, 8)
+
+#define DC_FRAMEBUFFER_CONFIG_EX		0x1CC0
+# define PRIMARY_CHANNEL(x)			((x) << 19)
+# define PRIMARY_CHANNEL_MASK			GENMASK(19, 19)
+# define PRIMARY_ZPOS(x)			((x) << 16)
+# define PRIMARY_ZPOS_MASK			GENMASK(18, 16)
+# define PRIMARY_EN(x)				((x) << 13)
+# define PRIMARY_EN_MASK			GENMASK(13, 13)
+# define PRIMARY_SHADOW_EN			BIT(12)
+# define PRIMARY_YUVCLAMP_EN			BIT(8)
+# define PRIMARY_RGB2RGB_EN			BIT(6)
+# define PRIMARY_SYNC1_EN			BIT(4)
+# define PRIMARY_SYNC0_EN			BIT(3)
+# define PRIMARY_DECODER_EN(x)			((x) << 1)
+# define PRIMARY_DECODER_EN_EN_MASK		GENMASK(1, 1)
+
+#define DC_FRAMEBUFFER_SCALE_CONFIG		0x1520
+#define DC_FRAMEBUFFER_TOP_LEFT			0x24D8
+#define X_POS(x)				(x)
+#define Y_POS(x)				((x) << 15)
+
+#define DC_FRAMEBUFFER_BOTTOM_RIGHT		0x24E0
+#define DC_FRAMEBUFFER_ADDRESS			0x1400
+#define DC_FRAMEBUFFER_U_ADDRESS		0x1530
+#define DC_FRAMEBUFFER_V_ADDRESS		0x1538
+#define DC_FRAMEBUFFER_STRIDE			0x1408
+#define DC_FRAMEBUFFER_U_STRIDE			0x1800
+#define DC_FRAMEBUFFER_V_STRIDE			0x1808
+#define DC_FRAMEBUFFER_SIZE			0x1810
+#define FB_SIZE(w, h)				((w) | ((h) << 15))
+
+#define DC_FRAMEBUFFER_SCALE_FACTOR_X		0x1828
+#define DC_FRAMEBUFFER_SCALE_FACTOR_Y		0x1830
+#define DC_FRAMEBUFFER_H_FILTER_COEF_INDEX	0x1838
+#define DC_FRAMEBUFFER_H_FILTER_COEF_DATA	0x1A00
+#define DC_FRAMEBUFFER_V_FILTER_COEF_INDEX	0x1A08
+#define DC_FRAMEBUFFER_V_FILTER_COEF_DATA	0x1A10
+#define DC_FRAMEBUFFER_INIT_OFFSET		0x1A20
+#define DC_FRAMEBUFFER_COLOR_KEY		0x1508
+#define DC_FRAMEBUFFER_COLOR_KEY_HIGH		0x1510
+#define DC_FRAMEBUFFER_CLEAR_VALUE		0x1A18
+#define DC_FRAMEBUFFER_COLOR_TABLE_INDEX	0x1818
+#define DC_FRAMEBUFFER_COLOR_TABLE_DATA		0x1820
+#define DC_FRAMEBUFFER_BG_COLOR			0x1528
+#define DC_FRAMEBUFFER_ROI_ORIGIN		0x1CB0
+#define DC_FRAMEBUFFER_ROI_SIZE			0x1CB8
+#define DC_FRAMEBUFFER_WATER_MARK		0x1CE8
+#define DC_FRAMEBUFFER_DEGAMMA_INDEX		0x1D88
+#define DC_FRAMEBUFFER_DEGAMMA_DATA		0x1D90
+#define DC_FRAMEBUFFER_DEGAMMA_EX_DATA		0x1D98
+#define DC_FRAMEBUFFER_YUVTORGB_COEF0		0x1DA0
+#define DC_FRAMEBUFFER_YUVTORGB_COEF1		0x1DA8
+#define DC_FRAMEBUFFER_YUVTORGB_COEF2		0x1DB0
+#define DC_FRAMEBUFFER_YUVTORGB_COEF3		0x1DB8
+#define DC_FRAMEBUFFER_YUVTORGB_COEF4		0x1E00
+#define DC_FRAMEBUFFER_YUVTORGB_COEFD0		0x1E08
+#define DC_FRAMEBUFFER_YUVTORGB_COEFD1		0x1E10
+#define DC_FRAMEBUFFER_YUVTORGB_COEFD2		0x1E18
+#define DC_FRAMEBUFFER_Y_CLAMP_BOUND		0x1E88
+#define DC_FRAMEBUFFER_UV_CLAMP_BOUND		0x1E90
+#define DC_FRAMEBUFFER_RGBTORGB_COEF0		0x1E20
+#define DC_FRAMEBUFFER_RGBTORGB_COEF1		0x1E28
+#define DC_FRAMEBUFFER_RGBTORGB_COEF2		0x1E30
+#define DC_FRAMEBUFFER_RGBTORGB_COEF3		0x1E38
+#define DC_FRAMEBUFFER_RGBTORGB_COEF4		0x1E40
+#define DC_FRAMEBUFFER_BLEND_CONFIG		0x2510
+# define BLEND_PREMULTI				0x3450
+# define BLEND_COVERAGE				0x3950
+# define BLEND_PIXEL_NONE			0x3548
+
+#define DC_FRAMEBUFFER_SRC_GLOBAL_COLOR		0x2500
+# define PRIMARY_ALPHA_LEN(x)			((x) << 24)
+
+#define DC_FRAMEBUFFER_DST_GLOBAL_COLOR		0x2508
+
+#define DC_OVERLAY_CONFIG			0x1540
+# define OVERLAY_SHADOW_EN			BIT(31)
+# define OVERLAY_CLAMP_EN			BIT(30)
+# define OVERLAY_RGB2RGB_EN			BIT(29)
+# define OVERLAY_DEC_EN(x)			((x) << 27)
+# define OVERLAY_DEC_EN_MASK			GENMASK(27, 27)
+# define OVERLAY_CLEAR_EN(x)			((x) << 25)
+# define OVERLAY_CLEAR_EN_MASK			GENMASK(25, 25)
+# define OVERLAY_FB_EN(x)			((x) << 24)
+# define OVERLAY_FB_EN_MASK			GENMASK(24, 24)
+# define OVERLAY_FORMAT(x)			((x) << 16)
+# define OVERLAY_FORMAT_MASK			GENMASK(21, 16)
+# define OVERLAY_UV_SWIZ(x)			((x) << 15)
+# define OVERLAY_UV_SWIZ_MASK			GENMASK(15, 15)
+# define OVERLAY_SWIZ(x)			((x) << 13)
+# define OVERLAY_SWIZ_MASK			GENMASK(14, 13)
+# define OVERLAY_TILE(x)			((x) << 8)
+# define OVERLAY_TILE_MASK			GENMASK(12, 8)
+# define OVERLAY_YUV_COLOR(x)			((x) << 5)
+# define OVERLAY_YUV_COLOR_MASK			GENMASK(7, 5)
+# define OVERLAY_ROTATION(x)			((x) << 2)
+# define OVERLAY_ROTATION_MASK			GENMASK(4, 2)
+
+#define DC_OVERLAY_CONFIG_EX			0x2540
+# define OVERLAY_LAYER_SEL(x)			((x) << 0)
+# define OVERLAY_LAYER_SEL_MASK			GENMASK(2, 0)
+# define OVERLAY_PANEL_SEL(x)			((x) << 3)
+# define OVERLAY_PANEL_SEL_MASK			GENMASK(3, 3)
+
+#define DC_OVERLAY_SCALE_CONFIG			0x1C00
+# define OVERLAY_SCALE_EN			BIT(8)
+
+#define DC_OVERLAY_BLEND_CONFIG			0x1580
+#define DC_OVERLAY_TOP_LEFT			0x1640
+#define DC_OVERLAY_BOTTOM_RIGHT			0x1680
+#define DC_OVERLAY_ADDRESS			0x15C0
+#define DC_OVERLAY_U_ADDRESS			0x1840
+#define DC_OVERLAY_V_ADDRESS			0x1880
+#define DC_OVERLAY_STRIDE			0x1600
+#define DC_OVERLAY_U_STRIDE			0x18C0
+#define DC_OVERLAY_V_STRIDE			0x1900
+#define DC_OVERLAY_SIZE				0x17C0
+#define DC_OVERLAY_SCALE_FACTOR_X		0x1A40
+#define DC_OVERLAY_SCALE_FACTOR_Y		0x1A80
+#define DC_OVERLAY_H_FILTER_COEF_INDEX		0x1AC0
+#define DC_OVERLAY_H_FILTER_COEF_DATA		0x1B00
+#define DC_OVERLAY_V_FILTER_COEF_INDEX		0x1B40
+#define DC_OVERLAY_V_FILTER_COEF_DATA		0x1B80
+#define DC_OVERLAY_INIT_OFFSET			0x1BC0
+#define DC_OVERLAY_COLOR_KEY			0x1740
+#define DC_OVERLAY_COLOR_KEY_HIGH		0x1780
+#define DC_OVERLAY_CLEAR_VALUE			0x1940
+#define DC_OVERLAY_COLOR_TABLE_INDEX		0x1980
+#define DC_OVERLAY_COLOR_TABLE_DATA		0x19C0
+#define DC_OVERLAY_SRC_GLOBAL_COLOR		0x16C0
+# define OVERLAY_ALPHA_LEN(x)			((x) << 24)
+
+#define DC_OVERLAY_DST_GLOBAL_COLOR		0x1700
+#define DC_OVERLAY_ROI_ORIGIN			0x1D00
+#define DC_OVERLAY_ROI_SIZE			0x1D40
+#define DC_OVERLAY_WATER_MARK			0x1DC0
+#define DC_OVERLAY_DEGAMMA_INDEX		0x2200
+#define DC_OVERLAY_DEGAMMA_DATA			0x2240
+#define DC_OVERLAY_DEGAMMA_EX_DATA		0x2280
+#define DC_OVERLAY_YUVTORGB_COEF0		0x1EC0
+#define DC_OVERLAY_YUVTORGB_COEF1		0x1F00
+#define DC_OVERLAY_YUVTORGB_COEF2		0x1F40
+#define DC_OVERLAY_YUVTORGB_COEF3		0x1F80
+#define DC_OVERLAY_YUVTORGB_COEF4		0x1FC0
+#define DC_OVERLAY_YUVTORGB_COEFD0		0x2000
+#define DC_OVERLAY_YUVTORGB_COEFD1		0x2040
+#define DC_OVERLAY_YUVTORGB_COEFD2		0x2080
+#define DC_OVERLAY_Y_CLAMP_BOUND		0x22C0
+#define DC_OVERLAY_UV_CLAMP_BOUND		0x2300
+#define DC_OVERLAY_RGBTORGB_COEF0		0x20C0
+#define DC_OVERLAY_RGBTORGB_COEF1		0x2100
+#define DC_OVERLAY_RGBTORGB_COEF2		0x2140
+#define DC_OVERLAY_RGBTORGB_COEF3		0x2180
+#define DC_OVERLAY_RGBTORGB_COEF4		0x21C0
+
+#define DC_CURSOR_CONFIG			0x1468
+# define CURSOR_HOT_X(x)			((x) << 16)
+# define CURSOR_HOT_X_MASK			GENMASK(23, 16)
+# define CURSOR_HOT_y(x)			((x) << 8)
+# define CURSOR_HOT_y_MASK			GENMASK(15, 8)
+# define CURSOR_SIZE(x)				((x) << 5)
+# define CURSOR_SIZE_MASK			GENMASK(7, 5)
+# define CURSOR_VALID(x)			((x) << 3)
+# define CURSOR_VALID_MASK			GENMASK(3, 3)
+# define CURSOR_TRIG_FETCH(x)			((x) << 2)
+# define CURSOR_TRIG_FETCH_MASK			GENMASK(2, 2)
+# define CURSOR_FORMAT(x)			((x) << 0)
+# define CURSOR_FORMAT_MASK			GENMASK(1, 0)
+# define CURSOR_FORMAT_DISABLE			0
+# define CURSOR_FORMAT_MARK			1
+# define CURSOR_FORMAT_A8R8G8B8			2
+
+#define DC_CURSOR_ADDRESS			0x146C
+#define DC_CURSOR_LOCATION			0x1470
+# define X_LCOTION(x)				(x)
+# define Y_LCOTION(x)				((x) << 16)
+
+#define DC_CURSOR_BACKGROUND			0x1474
+#define DC_CURSOR_FOREGROUND			0x1478
+#define DC_CURSOR_CLK_GATING			0x1484
+#define DC_CURSOR_CONFIG_EX			0x24E8
+#define DC_CURSOR_OFFSET			0x1080
+
+#define DC_DISPLAY_DITHER_CONFIG		0x1410
+#define DC_DISPLAY_PANEL_CONFIG			0x1418
+# define PANEL_RGB2YUV_EN			BIT(16)
+# define PANEL_GAMMA_EN				BIT(13)
+# define PANEL_OUTPUT_EN			BIT(12)
+
+#define DC_DISPLAY_PANEL_CONFIG_EX		0x2518
+# define PANEL_SHADOW_EN			BIT(0)
+
+#define DC_DISPLAY_DITHER_TABLE_LOW		0x1420
+#define DC_DISPLAY_DITHER_TABLE_HIGH		0x1428
+#define DC_DISPLAY_H				0x1430
+# define H_ACTIVE_LEN(x)			(x)
+# define H_TOTAL_LEN(x)				((x) << 16)
+
+#define DC_DISPLAY_H_SYNC			0x1438
+# define H_SYNC_START_LEN(x)			(x)
+# define H_SYNC_END_LEN(x)			((x) << 15)
+# define H_PLUS_LEN(x)				((x) << 30)
+# define H_POLARITY_LEN(x)			((x) << 31)
+
+#define DC_DISPLAY_V				0x1440
+# define V_ACTIVE_LEN(x)			(x)
+# define V_TOTAL_LEN(x)				((x) << 16)
+
+#define DC_DISPLAY_V_SYNC			0x1448
+# define V_SYNC_START_LEN(x)			(x)
+# define V_SYNC_END_LEN(x)			((x) << 15)
+# define V_PLUS_LEN(x)				((x) << 30)
+# define V_POLARITY_LEN(x)			((x) << 31)
+
+#define DC_DISPLAY_CURRENT_LOCATION		0x1450
+#define DC_DISPLAY_GAMMA_INDEX			0x1458
+#define DC_DISPLAY_GAMMA_DATA			0x1460
+#define DC_DISPLAY_INT				0x147C
+#define DC_DISPLAY_INT_ENABLE			0x1480
+#define DC_DISPLAY_DBI_CONFIG			0x1488
+#define DC_DISPLAY_GENERAL_CONFIG		0x14B0
+#define DC_DISPLAY_DPI_CONFIG			0x14B8
+#define DC_DISPLAY_PANEL_START			0x1CCC
+# define PANEL0_EN				BIT(0)
+# define PANEL1_EN				BIT(1)
+# define TWO_PANEL_EN				BIT(2)
+# define SYNC_EN				BIT(3)
+
+#define DC_DISPLAY_DEBUG_COUNTER_SELECT		0x14D0
+#define DC_DISPLAY_DEBUG_COUNTER_VALUE		0x14D8
+#define DC_DISPLAY_DP_CONFIG			0x1CD0
+# define DP_SELECT				BIT(3)
+
+#define DC_DISPLAY_GAMMA_EX_INDEX		0x1CF0
+#define DC_DISPLAY_GAMMA_EX_DATA		0x1CF8
+#define DC_DISPLAY_GAMMA_EX_ONE_DATA		0x1D80
+#define DC_DISPLAY_RGBTOYUV_COEF0		0x1E48
+#define DC_DISPLAY_RGBTOYUV_COEF1		0x1E50
+#define DC_DISPLAY_RGBTOYUV_COEF2		0x1E58
+#define DC_DISPLAY_RGBTOYUV_COEF3		0x1E60
+#define DC_DISPLAY_RGBTOYUV_COEF4		0x1E68
+#define DC_DISPLAY_RGBTOYUV_COEFD0		0x1E70
+#define DC_DISPLAY_RGBTOYUV_COEFD1		0x1E78
+#define DC_DISPLAY_RGBTOYUV_COEFD2		0x1E80
+
+#define DC_CLK_GATTING				0x1A28
+#define DC_QOS_CONFIG				0x1A38
+
+#define DC_TRANSPARENCY_OPAQUE			0x00
+#define DC_TRANSPARENCY_KEY			0x02
+#define DC_DISPLAY_DITHERTABLE_LOW		0x7B48F3C0
+#define DC_DISPLAY_DITHERTABLE_HIGH		0x596AD1E2
+
+#define GAMMA_SIZE				256
+#define GAMMA_EX_SIZE				300
+#define DEGAMMA_SIZE				260
+
+#define RGB_TO_RGB_TABLE_SIZE			9
+#define YUV_TO_RGB_TABLE_SIZE			16
+#define RGB_TO_YUV_TABLE_SIZE			12
+
+#define DC_LAYER_NUM	6
+#define DC_DISPLAY_NUM	2
+#define DC_CURSOR_NUM	2
+
+#define DC_TILE_MODE4X4	0x15
+
+enum dc_hw_plane_id {
+	PRIMARY_PLANE_0,
+	OVERLAY_PLANE_0,
+	OVERLAY_PLANE_1,
+	PRIMARY_PLANE_1,
+	OVERLAY_PLANE_2,
+	OVERLAY_PLANE_3,
+	CURSOR_PLANE_0,
+	CURSOR_PLANE_1,
+	PLANE_NUM
+};
+
+enum dc_hw_color_format {
+	FORMAT_X4R4G4B4,
+	FORMAT_A4R4G4B4,
+	FORMAT_X1R5G5B5,
+	FORMAT_A1R5G5B5,
+	FORMAT_R5G6B5,
+	FORMAT_X8R8G8B8,
+	FORMAT_A8R8G8B8,
+	FORMAT_YUY2,
+	FORMAT_UYVY,
+	FORMAT_INDEX8,
+	FORMAT_MONOCHROME,
+	FORMAT_YV12 =3D 0xf,
+	FORMAT_A8,
+	FORMAT_NV12,
+	FORMAT_NV16,
+	FORMAT_RG16,
+	FORMAT_R8,
+	FORMAT_NV12_10BIT,
+	FORMAT_A2R10G10B10,
+	FORMAT_NV16_10BIT,
+	FORMAT_INDEX1,
+	FORMAT_INDEX2,
+	FORMAT_INDEX4,
+	FORMAT_P010,
+	FORMAT_YUV444,
+	FORMAT_YUV444_10BIT,
+};
+
+enum dc_hw_yuv_color_space {
+	COLOR_SPACE_601 =3D 0,
+	COLOR_SPACE_709 =3D 1,
+	COLOR_SPACE_2020 =3D 3,
+};
+
+enum dc_hw_rotation {
+	ROT_0 =3D 0,
+	ROT_90 =3D 4,
+	ROT_180 =3D 5,
+	ROT_270 =3D 6,
+	FLIP_X =3D 1,
+	FLIP_Y =3D 2,
+	FLIP_XY =3D 3,
+};
+
+enum dc_hw_swizzle {
+	SWIZZLE_ARGB =3D 0,
+	SWIZZLE_RGBA,
+	SWIZZLE_ABGR,
+	SWIZZLE_BGRA,
+};
+
+enum dc_hw_out {
+	OUT_DPI,
+	OUT_DP,
+};
+
+enum dc_hw_cursor_size {
+	CURSOR_SIZE_32X32 =3D 0,
+	CURSOR_SIZE_64X64,
+};
+
+struct dc_hw_plane_reg {
+	u32 y_address;
+	u32 u_address;
+	u32 v_address;
+	u32 y_stride;
+	u32 u_stride;
+	u32 v_stride;
+	u32 size;
+	u32 top_left;
+	u32 bottom_right;
+	u32 scale_factor_x;
+	u32 scale_factor_y;
+	u32 h_filter_coef_index;
+	u32 h_filter_coef_data;
+	u32 v_filter_coef_index;
+	u32 v_filter_coef_data;
+	u32 init_offset;
+	u32 color_key;
+	u32 color_key_high;
+	u32 clear_value;
+	u32 color_table_index;
+	u32 color_table_data;
+	u32 scale_config;
+	u32 water_mark;
+	u32 degamma_index;
+	u32 degamma_data;
+	u32 degamma_ex_data;
+	u32 src_global_color;
+	u32 dst_global_color;
+	u32 blend_config;
+	u32 roi_origin;
+	u32 roi_size;
+	u32 yuv_to_rgb_coef0;
+	u32 yuv_to_rgb_coef1;
+	u32 yuv_to_rgb_coef2;
+	u32 yuv_to_rgb_coef3;
+	u32 yuv_to_rgb_coef4;
+	u32 yuv_to_rgb_coefd0;
+	u32 yuv_to_rgb_coefd1;
+	u32 yuv_to_rgb_coefd2;
+	u32 y_clamp_bound;
+	u32 uv_clamp_bound;
+	u32 rgb_to_rgb_coef0;
+	u32 rgb_to_rgb_coef1;
+	u32 rgb_to_rgb_coef2;
+	u32 rgb_to_rgb_coef3;
+	u32 rgb_to_rgb_coef4;
+};
+
+struct dc_hw_fb {
+	u32 y_address;
+	u32 u_address;
+	u32 v_address;
+	u32 clear_value;
+	u32 water_mark;
+	u16 y_stride;
+	u16 u_stride;
+	u16 v_stride;
+	u16 width;
+	u16 height;
+	u8	format;
+	u8	tile_mode;
+	u8	rotation;
+	u8	yuv_color_space;
+	u8	swizzle;
+	u8	uv_swizzle;
+	u8	zpos;
+	u8	display_id;
+	bool	clear_enable;
+	bool	dec_enable;
+	bool	enable;
+	bool	dirty;
+};
+
+struct dc_hw_scale {
+	u32 scale_factor_x;
+	u32 scale_factor_y;
+	bool	enable;
+	bool	dirty;
+};
+
+struct dc_hw_position {
+	u16 start_x;
+	u16 start_y;
+	u16 end_x;
+	u16 end_y;
+	bool	dirty;
+};
+
+struct dc_hw_blend {
+	u8	alpha;
+	u8	blend_mode;
+	bool	dirty;
+};
+
+struct dc_hw_colorkey {
+	u32 colorkey;
+	u32 colorkey_high;
+	u8	transparency;
+	bool dirty;
+};
+
+struct dc_hw_roi {
+	u16 x;
+	u16 y;
+	u16 width;
+	u16 height;
+	bool enable;
+	bool dirty;
+};
+
+struct dc_hw_cursor {
+	u32 address;
+	u16 x;
+	u16 y;
+	u16 hot_x;
+	u16 hot_y;
+	u8	size;
+	u8	display_id;
+	bool	enable;
+	bool	dirty;
+};
+
+struct dc_hw_display {
+	u32 bus_format;
+	u16 h_active;
+	u16 h_total;
+	u16 h_sync_start;
+	u16 h_sync_end;
+	u16 v_active;
+	u16 v_total;
+	u16 v_sync_start;
+	u16 v_sync_end;
+	u8	id;
+	bool	h_sync_polarity;
+	bool	v_sync_polarity;
+	bool	enable;
+};
+
+struct dc_hw_gamma {
+	u16 gamma[GAMMA_EX_SIZE][3];
+	bool	enable;
+	bool	dirty;
+};
+
+struct dc_hw_plane {
+	struct dc_hw_fb			fb;
+	struct dc_hw_position	pos;
+	struct dc_hw_scale		scale;
+	struct dc_hw_blend		blend;
+};
+
+struct dc_hw_qos {
+	u8	  low_value;
+	u8	  high_value;
+	bool  dirty;
+};
+
+struct dc_hw_read {
+	u32			reg;
+	u32			value;
+};
+
+struct dc_hw;
+struct dc_hw_funcs {
+	void (*gamma)(struct dc_hw *hw);
+	void (*plane)(struct dc_hw *hw);
+	void (*display)(struct dc_hw *hw, struct dc_hw_display *display);
+};
+
+struct dc_hw {
+	enum dc_hw_out		out[DC_DISPLAY_NUM];
+	void			*hi_base;
+	void			*reg_base;
+	struct dc_hw_plane_reg	reg[DC_LAYER_NUM];
+
+	struct dc_hw_display	display[DC_DISPLAY_NUM];
+	struct dc_hw_gamma	gamma[DC_DISPLAY_NUM];
+	struct dc_hw_plane	plane[DC_LAYER_NUM];
+	struct dc_hw_cursor	cursor[DC_CURSOR_NUM];
+	struct dc_hw_funcs	*func;
+	struct vs_dc_info	*info;
+};
+
+int dc_hw_init(struct dc_hw *hw);
+void dc_hw_deinit(struct dc_hw *hw);
+void dc_hw_update_plane(struct dc_hw *hw, u8 id,
+			struct dc_hw_fb *fb, struct dc_hw_scale *scale,
+			struct dc_hw_position *pos, struct dc_hw_blend *blend);
+void dc_hw_update_cursor(struct dc_hw *hw, u8 id, struct dc_hw_cursor *c=
ursor);
+void dc_hw_update_gamma(struct dc_hw *hw, u8 id, u16 index,
+			u16 r, u16 g, u16 b);
+void dc_hw_enable_gamma(struct dc_hw *hw, u8 id, bool enable);
+void dc_hw_setup_display(struct dc_hw *hw, struct dc_hw_display *display=
);
+void dc_hw_enable_interrupt(struct dc_hw *hw, bool enable);
+u32 dc_hw_get_interrupt(struct dc_hw *hw);
+void dc_hw_enable_shadow_register(struct dc_hw *hw, bool enable);
+void dc_hw_set_out(struct dc_hw *hw, enum dc_hw_out out, u8 id);
+void dc_hw_commit(struct dc_hw *hw);
+
+#endif /* __VS_DC_HW_H__ */
diff --git a/drivers/gpu/drm/verisilicon/vs_drv.c b/drivers/gpu/drm/veris=
ilicon/vs_drv.c
index 4fb1f29ef84b..3ef90c8238a0 100644
--- a/drivers/gpu/drm/verisilicon/vs_drv.c
+++ b/drivers/gpu/drm/verisilicon/vs_drv.c
@@ -22,6 +22,7 @@
=20
 #include "vs_drv.h"
 #include "vs_modeset.h"
+#include "vs_dc.h"
=20
 #define DRV_NAME	"verisilicon"
 #define DRV_DESC	"Verisilicon DRM driver"
@@ -212,6 +213,7 @@ static const struct component_master_ops vs_drm_ops =3D=
 {
 };
=20
 static struct platform_driver *drm_sub_drivers[] =3D {
+	&dc_platform_driver,
 };
=20
 static struct component_match *vs_drm_match_add(struct device *dev)
diff --git a/drivers/gpu/drm/verisilicon/vs_plane.c b/drivers/gpu/drm/ver=
isilicon/vs_plane.c
new file mode 100644
index 000000000000..53580fbe05b1
--- /dev/null
+++ b/drivers/gpu/drm/verisilicon/vs_plane.c
@@ -0,0 +1,301 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
+ */
+
+#include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
+#include <drm/drm_gem_dma_helper.h>
+#include <drm/drm_fb_dma_helper.h>
+#include <drm/drm_framebuffer.h>
+#include <drm/drm_plane.h>
+#include <drm/drm_plane_helper.h>
+
+#include "vs_plane.h"
+#include "vs_drv.h"
+#include "vs_dc.h"
+
+static void vs_plane_atomic_destroy_state(struct drm_plane *plane,
+					  struct drm_plane_state *state)
+{
+	struct vs_plane_state *vs_plane_state =3D to_vs_plane_state(state);
+
+	__drm_atomic_helper_plane_destroy_state(state);
+
+	kfree(vs_plane_state);
+}
+
+static void vs_plane_reset(struct drm_plane *plane)
+{
+	struct vs_plane_state *state;
+	struct vs_plane *vs_plane =3D to_vs_plane(plane);
+
+	if (plane->state)
+		vs_plane_atomic_destroy_state(plane, plane->state);
+
+	state =3D kzalloc(sizeof(*state), GFP_KERNEL);
+	if (!state)
+		return;
+
+	state->base.zpos =3D vs_plane->id;
+	__drm_atomic_helper_plane_reset(plane, &state->base);
+}
+
+static struct drm_plane_state *
+vs_plane_atomic_duplicate_state(struct drm_plane *plane)
+{
+	struct vs_plane_state *old_state;
+	struct vs_plane_state *state;
+
+	if (WARN_ON(!plane->state))
+		return NULL;
+
+	old_state =3D to_vs_plane_state(plane->state);
+	state =3D kzalloc(sizeof(*state), GFP_KERNEL);
+	if (!state)
+		return NULL;
+
+	__drm_atomic_helper_plane_duplicate_state(plane, &state->base);
+
+	return &state->base;
+}
+
+static bool vs_format_mod_supported(struct drm_plane *plane,
+				    u32 format,
+				    u64 modifier)
+{
+	int i;
+
+	/* We always have to allow these modifiers:
+	 * 1. Core DRM checks for LINEAR support if userspace does not provide =
modifiers.
+	 * 2. Not passing any modifiers is the same as explicitly passing INVAL=
ID.
+	 */
+	if (modifier =3D=3D DRM_FORMAT_MOD_LINEAR)
+		return true;
+
+	/* Check that the modifier is on the list of the plane's supported modi=
fiers. */
+	for (i =3D 0; i < plane->modifier_count; i++) {
+		if (modifier =3D=3D plane->modifiers[i])
+			break;
+	}
+
+	if (i =3D=3D plane->modifier_count)
+		return false;
+
+	return true;
+}
+
+const struct drm_plane_funcs vs_plane_funcs =3D {
+	.update_plane		=3D drm_atomic_helper_update_plane,
+	.disable_plane		=3D drm_atomic_helper_disable_plane,
+	.reset			=3D vs_plane_reset,
+	.atomic_duplicate_state =3D vs_plane_atomic_duplicate_state,
+	.atomic_destroy_state	=3D vs_plane_atomic_destroy_state,
+	.format_mod_supported	=3D vs_format_mod_supported,
+};
+
+static unsigned char vs_get_plane_number(struct drm_framebuffer *fb)
+{
+	const struct drm_format_info *info;
+
+	if (!fb)
+		return 0;
+
+	info =3D drm_format_info(fb->format->format);
+	if (!info || info->num_planes > DRM_FORMAT_MAX_PLANES)
+		return 0;
+
+	return info->num_planes;
+}
+
+static int vs_plane_atomic_check(struct drm_plane *plane,
+				 struct drm_atomic_state *state)
+{
+	struct drm_plane_state *new_plane_state =3D drm_atomic_get_new_plane_st=
ate(state,
+										 plane);
+	unsigned char i, num_planes;
+	struct drm_framebuffer *fb =3D new_plane_state->fb;
+	struct drm_crtc *crtc =3D new_plane_state->crtc;
+	struct vs_crtc *vs_crtc =3D to_vs_crtc(crtc);
+	struct vs_dc *dc =3D dev_get_drvdata(vs_crtc->dev);
+	struct vs_plane_state *plane_state =3D to_vs_plane_state(new_plane_stat=
e);
+
+	if (!crtc || !fb)
+		return 0;
+
+	num_planes =3D vs_get_plane_number(fb);
+
+	for (i =3D 0; i < num_planes; i++) {
+		dma_addr_t dma_addr;
+
+		dma_addr =3D drm_fb_dma_get_gem_addr(fb, new_plane_state, i);
+		plane_state->dma_addr[i] =3D dma_addr;
+	}
+
+	return vs_dc_check_plane(dc, plane, state);
+}
+
+static int vs_cursor_plane_atomic_check(struct drm_plane *plane,
+					struct drm_atomic_state *state)
+{
+	struct drm_plane_state *new_plane_state =3D drm_atomic_get_new_plane_st=
ate(state,
+									  plane);
+	unsigned char i, num_planes;
+	struct drm_framebuffer *fb =3D new_plane_state->fb;
+	struct drm_crtc *crtc =3D new_plane_state->crtc;
+	struct vs_crtc *vs_crtc =3D to_vs_crtc(crtc);
+	struct vs_dc *dc =3D dev_get_drvdata(vs_crtc->dev);
+	struct vs_plane_state *plane_state =3D to_vs_plane_state(new_plane_stat=
e);
+
+	if (!crtc || !fb)
+		return 0;
+
+	num_planes =3D vs_get_plane_number(fb);
+
+	for (i =3D 0; i < num_planes; i++) {
+		dma_addr_t dma_addr;
+
+		dma_addr =3D drm_fb_dma_get_gem_addr(fb, new_plane_state, i);
+		plane_state->dma_addr[i] =3D dma_addr;
+	}
+
+	return vs_dc_check_cursor_plane(dc, plane, state);
+}
+
+static void vs_plane_atomic_update(struct drm_plane *plane,
+				   struct drm_atomic_state *state)
+{
+	struct drm_plane_state *new_state =3D drm_atomic_get_new_plane_state(st=
ate,
+									  plane);
+	struct drm_plane_state *old_state =3D drm_atomic_get_old_plane_state(st=
ate,
+									  plane);
+
+	unsigned char i, num_planes;
+	struct drm_framebuffer *fb;
+	struct vs_plane *vs_plane =3D to_vs_plane(plane);
+	struct vs_crtc *vs_crtc =3D to_vs_crtc(new_state->crtc);
+	struct vs_plane_state *plane_state =3D to_vs_plane_state(new_state);
+	struct vs_dc *dc =3D dev_get_drvdata(vs_crtc->dev);
+
+	if (!new_state->fb || !new_state->crtc)
+		return;
+
+	fb =3D new_state->fb;
+
+	drm_fb_dma_sync_non_coherent(fb->dev, old_state, new_state);
+
+	num_planes =3D vs_get_plane_number(fb);
+
+	for (i =3D 0; i < num_planes; i++) {
+		dma_addr_t dma_addr;
+
+		dma_addr =3D drm_fb_dma_get_gem_addr(fb, new_state, i);
+		plane_state->dma_addr[i] =3D dma_addr;
+	}
+
+	vs_dc_update_plane(dc, vs_plane, plane, state);
+}
+
+static void vs_cursor_plane_atomic_update(struct drm_plane *plane,
+					  struct drm_atomic_state *state)
+{
+	struct drm_plane_state *new_state =3D drm_atomic_get_new_plane_state(st=
ate,
+									   plane);
+	struct drm_plane_state *old_state =3D drm_atomic_get_old_plane_state(st=
ate,
+									   plane);
+	unsigned char i, num_planes;
+	struct drm_framebuffer *fb;
+	struct vs_plane *vs_plane =3D to_vs_plane(plane);
+	struct vs_crtc *vs_crtc =3D to_vs_crtc(new_state->crtc);
+	struct vs_plane_state *plane_state =3D to_vs_plane_state(new_state);
+	struct vs_dc *dc =3D dev_get_drvdata(vs_crtc->dev);
+
+	if (!new_state->fb || !new_state->crtc)
+		return;
+
+	fb =3D new_state->fb;
+	drm_fb_dma_sync_non_coherent(fb->dev, old_state, new_state);
+
+	num_planes =3D vs_get_plane_number(fb);
+
+	for (i =3D 0; i < num_planes; i++) {
+		dma_addr_t dma_addr;
+
+		dma_addr =3D drm_fb_dma_get_gem_addr(fb, new_state, i);
+		plane_state->dma_addr[i] =3D dma_addr;
+	}
+
+	vs_dc_update_cursor_plane(dc, vs_plane, plane, state);
+}
+
+static void vs_plane_atomic_disable(struct drm_plane *plane,
+				    struct drm_atomic_state *state)
+{
+	struct drm_plane_state *old_state =3D drm_atomic_get_old_plane_state(st=
ate,
+									   plane);
+	struct vs_plane *vs_plane =3D to_vs_plane(plane);
+	struct vs_crtc *vs_crtc =3D to_vs_crtc(old_state->crtc);
+	struct vs_dc *dc =3D dev_get_drvdata(vs_crtc->dev);
+
+	vs_dc_disable_plane(dc, vs_plane, old_state);
+}
+
+static void vs_cursor_plane_atomic_disable(struct drm_plane *plane,
+					   struct drm_atomic_state *state)
+{
+	struct drm_plane_state *old_state =3D drm_atomic_get_old_plane_state(st=
ate,
+									   plane);
+	struct vs_plane *vs_plane =3D to_vs_plane(plane);
+	struct vs_crtc *vs_crtc =3D to_vs_crtc(old_state->crtc);
+	struct vs_dc *dc =3D dev_get_drvdata(vs_crtc->dev);
+
+	vs_dc_disable_cursor_plane(dc, vs_plane, old_state);
+}
+
+const struct drm_plane_helper_funcs primary_plane_helpers =3D {
+	.atomic_check	=3D vs_plane_atomic_check,
+	.atomic_update	=3D vs_plane_atomic_update,
+	.atomic_disable =3D vs_plane_atomic_disable,
+};
+
+const struct drm_plane_helper_funcs overlay_plane_helpers =3D {
+	.atomic_check	=3D vs_plane_atomic_check,
+	.atomic_update	=3D vs_plane_atomic_update,
+	.atomic_disable =3D vs_plane_atomic_disable,
+};
+
+const struct drm_plane_helper_funcs cursor_plane_helpers =3D {
+	.atomic_check	=3D vs_cursor_plane_atomic_check,
+	.atomic_update	=3D vs_cursor_plane_atomic_update,
+	.atomic_disable =3D vs_cursor_plane_atomic_disable,
+};
+
+struct vs_plane *vs_plane_create(struct drm_device *drm_dev,
+				 struct vs_plane_info *info,
+				 unsigned int layer_num,
+				 unsigned int possible_crtcs)
+{
+	struct vs_plane *plane;
+
+	if (!info)
+		return NULL;
+
+	plane =3D drmm_universal_plane_alloc(drm_dev, struct vs_plane, base,
+					   possible_crtcs,
+					   &vs_plane_funcs,
+					   info->formats, info->num_formats,
+					   info->modifiers, info->type,
+					   info->name ? info->name : NULL);
+	if (IS_ERR(plane))
+		return ERR_CAST(plane);
+
+	if (info->type =3D=3D DRM_PLANE_TYPE_PRIMARY)
+		drm_plane_helper_add(&plane->base, &primary_plane_helpers);
+	else if (info->type =3D=3D DRM_PLANE_TYPE_CURSOR)
+		drm_plane_helper_add(&plane->base, &cursor_plane_helpers);
+	else
+		drm_plane_helper_add(&plane->base, &overlay_plane_helpers);
+
+	return plane;
+}
diff --git a/drivers/gpu/drm/verisilicon/vs_plane.h b/drivers/gpu/drm/ver=
isilicon/vs_plane.h
new file mode 100644
index 000000000000..7174ac298ffd
--- /dev/null
+++ b/drivers/gpu/drm/verisilicon/vs_plane.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
+ */
+
+#ifndef __VS_PLANE_H__
+#define __VS_PLANE_H__
+
+#include <drm/drm_fourcc.h>
+#include <drm/drm_plane_helper.h>
+
+#include "vs_type.h"
+
+struct vs_plane_state {
+	struct drm_plane_state base;
+	dma_addr_t dma_addr[DRM_FORMAT_MAX_PLANES];
+};
+
+struct vs_plane {
+	struct drm_plane base;
+	u8 id;
+};
+
+struct vs_plane *vs_plane_create(struct drm_device *drm_dev,
+				 struct vs_plane_info *info,
+				 unsigned int layer_num,
+				 unsigned int possible_crtcs);
+
+static inline struct vs_plane *to_vs_plane(struct drm_plane *plane)
+{
+	return container_of(plane, struct vs_plane, base);
+}
+
+static inline struct vs_plane_state *
+to_vs_plane_state(struct drm_plane_state *state)
+{
+	return container_of(state, struct vs_plane_state, base);
+}
+#endif /* __VS_PLANE_H__ */
diff --git a/drivers/gpu/drm/verisilicon/vs_type.h b/drivers/gpu/drm/veri=
silicon/vs_type.h
new file mode 100644
index 000000000000..7d3378e29c87
--- /dev/null
+++ b/drivers/gpu/drm/verisilicon/vs_type.h
@@ -0,0 +1,69 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
+ */
+
+#ifndef __VS_TYPE_H__
+#define __VS_TYPE_H__
+
+#include <drm/drm_plane.h>
+#include <drm/drm_plane_helper.h>
+
+struct vs_plane_info {
+	const char *name;
+	u8 id;
+	enum drm_plane_type type;
+	unsigned int num_formats;
+	const u32 *formats;
+	u8 num_modifiers;
+	const u64 *modifiers;
+	unsigned int min_width;
+	unsigned int min_height;
+	unsigned int max_width;
+	unsigned int max_height;
+	unsigned int rotation;
+	unsigned int blend_mode;
+	unsigned int color_encoding;
+
+	/* 0 means no de-gamma LUT */
+	unsigned int degamma_size;
+
+	int min_scale; /* 16.16 fixed point */
+	int max_scale; /* 16.16 fixed point */
+
+	/* default zorder value,
+	 * and 255 means unsupported zorder capability
+	 */
+	u8	 zpos;
+
+	bool watermark;
+	bool color_mgmt;
+	bool roi;
+};
+
+struct vs_dc_info {
+	const char *name;
+
+	u8 panel_num;
+
+	/* planes */
+	u8 plane_num;
+	const struct vs_plane_info *planes;
+
+	u8 layer_num;
+	unsigned int max_bpc;
+	unsigned int color_formats;
+
+	/* 0 means no gamma LUT */
+	u16 gamma_size;
+	u8 gamma_bits;
+
+	u16 pitch_alignment;
+
+	bool pipe_sync;
+	bool background;
+	bool panel_sync;
+	bool cap_dec;
+};
+
+#endif /* __VS_TYPE_H__ */
--=20
2.34.1


