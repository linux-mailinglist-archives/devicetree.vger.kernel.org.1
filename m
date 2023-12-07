Return-Path: <devicetree+bounces-22567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7D4808277
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 09:03:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F28B31F2183A
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 08:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCFB71E4A3;
	Thu,  7 Dec 2023 08:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="gt5HhE39"
X-Original-To: devicetree@vger.kernel.org
Received: from m12.mail.163.com (m12.mail.163.com [220.181.12.198])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 20E37DD;
	Thu,  7 Dec 2023 00:03:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=CpU5J
	926yMF9wY+3ud4tTy2mWOpsEoE5ufJQl+exfHM=; b=gt5HhE39C5o0oDRAJeOPm
	qgJQBrzwWU4GDl3YvGZuPDWig01AfVI+QcklhDZ/GOcqi+QDTsAus1ECpVYzjVUL
	E1WPa/FtFAL2D+/tfVT0REqEFeg5Vm0Fgr/UpHgqPipyj/OBZYn8l5mf1Xfqnqfk
	SXEOPY2Scz6h6m1ZcdFee8=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g3-1 (Coremail) with SMTP id _____wDX364PfHFlEPbREw--.46518S2;
	Thu, 07 Dec 2023 16:02:26 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v4 14/17] drm/rockchip: vop2: Add debugfs support
Date: Thu,  7 Dec 2023 16:02:22 +0800
Message-Id: <20231207080222.652657-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231207075906.651771-1-andyshrk@163.com>
References: <20231207075906.651771-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDX364PfHFlEPbREw--.46518S2
X-Coremail-Antispam: 1Uf129KBjvAXoWfGrW7Kr17uF1UZw4DJrWUJwb_yoW8AFWDto
	ZFgFsaqw1xtFy0qrW09r48tFy29F10vFn2krW2kF98Z3ZxW345KrW8GrnIvFsrArWFkFy8
	Zan2q3WfXryxJayrn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73VFW2AGmfu7bjvjm3
	AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU4kucDUUUU
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEBQ-XmVOA0WxkgAAsr

From: Andy Yan <andy.yan@rock-chips.com>

/sys/kernel/debug/dri/vop2/summary:  dump vop display state
/sys/kernel/debug/dri/vop2/regs: dump whole vop registers
/sys/kernel/debug/dri/vop2/active_regs: only dump the registers of
activated modules

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v4:
- check NULL pointer at right place
- fix the index of fb->obj
- drop explicitly cast of void pointer
- make the register dump code as a common function.

Changes in v3:
- put regs dump info in vop2_data

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 256 +++++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  11 +
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 191 ++++++++++++++
 3 files changed, 458 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 2b996f1a25ad..1cd86b3bde7e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -27,6 +27,7 @@
 #include <drm/drm_debugfs.h>
 #include <drm/drm_flip_work.h>
 #include <drm/drm_framebuffer.h>
+#include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_vblank.h>
 
@@ -187,6 +188,7 @@ struct vop2 {
 	 */
 	u32 registered_num_wins;
 
+	struct resource *res;
 	void __iomem *regs;
 	struct regmap *map;
 
@@ -238,6 +240,37 @@ struct vop2 {
 
 #define vop2_output_if_is_dpi(x)	((x) == ROCKCHIP_VOP2_EP_RGB0)
 
+
+/*
+ * bus-format types.
+ */
+struct drm_bus_format_enum_list {
+	int type;
+	const char *name;
+};
+
+static const struct drm_bus_format_enum_list drm_bus_format_enum_list[] = {
+	{ DRM_MODE_CONNECTOR_Unknown, "Unknown" },
+	{ MEDIA_BUS_FMT_RGB565_1X16, "RGB565_1X16" },
+	{ MEDIA_BUS_FMT_RGB666_1X18, "RGB666_1X18" },
+	{ MEDIA_BUS_FMT_RGB666_1X24_CPADHI, "RGB666_1X24_CPADHI" },
+	{ MEDIA_BUS_FMT_RGB666_1X7X3_SPWG, "RGB666_1X7X3_SPWG" },
+	{ MEDIA_BUS_FMT_YUV8_1X24, "YUV8_1X24" },
+	{ MEDIA_BUS_FMT_UYYVYY8_0_5X24, "UYYVYY8_0_5X24" },
+	{ MEDIA_BUS_FMT_YUV10_1X30, "YUV10_1X30" },
+	{ MEDIA_BUS_FMT_UYYVYY10_0_5X30, "UYYVYY10_0_5X30" },
+	{ MEDIA_BUS_FMT_RGB888_3X8, "RGB888_3X8" },
+	{ MEDIA_BUS_FMT_RGB888_1X24, "RGB888_1X24" },
+	{ MEDIA_BUS_FMT_RGB888_1X7X4_SPWG, "RGB888_1X7X4_SPWG" },
+	{ MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA, "RGB888_1X7X4_JEIDA" },
+	{ MEDIA_BUS_FMT_UYVY8_2X8, "UYVY8_2X8" },
+	{ MEDIA_BUS_FMT_YUYV8_1X16, "YUYV8_1X16" },
+	{ MEDIA_BUS_FMT_UYVY8_1X16, "UYVY8_1X16" },
+	{ MEDIA_BUS_FMT_RGB101010_1X30, "RGB101010_1X30" },
+	{ MEDIA_BUS_FMT_YUYV10_1X20, "YUYV10_1X20" },
+};
+static DRM_ENUM_NAME_FN(drm_get_bus_format_name, drm_bus_format_enum_list)
+
 static const struct regmap_config vop2_regmap_config;
 
 static struct vop2_video_port *to_vop2_video_port(struct drm_crtc *crtc)
@@ -2516,6 +2549,227 @@ static const struct drm_crtc_helper_funcs vop2_crtc_helper_funcs = {
 	.atomic_disable = vop2_crtc_atomic_disable,
 };
 
+static void vop2_dump_connector_on_crtc(struct drm_crtc *crtc, struct seq_file *s)
+{
+	struct drm_connector_list_iter conn_iter;
+	struct drm_connector *connector;
+
+	drm_connector_list_iter_begin(crtc->dev, &conn_iter);
+	drm_for_each_connector_iter(connector, &conn_iter) {
+		if (crtc->state->connector_mask & drm_connector_mask(connector))
+			seq_printf(s, "    Connector: %s\n", connector->name);
+
+	}
+	drm_connector_list_iter_end(&conn_iter);
+}
+
+static int vop2_plane_state_dump(struct seq_file *s, struct drm_plane *plane)
+{
+	struct vop2_win *win = to_vop2_win(plane);
+	struct drm_plane_state *pstate = plane->state;
+	struct drm_rect *src, *dst;
+	struct drm_framebuffer *fb;
+	struct drm_gem_object *obj;
+	struct rockchip_gem_object *rk_obj;
+	bool xmirror;
+	bool ymirror;
+	bool rotate_270;
+	bool rotate_90;
+	dma_addr_t fb_addr;
+	int i;
+
+	seq_printf(s, "    %s: %s\n", win->data->name, !pstate ?
+		   "DISABLED" : pstate->crtc ? "ACTIVE" : "DISABLED");
+
+	if (!pstate || !pstate->fb)
+		return 0;
+
+	fb = pstate->fb;
+	src = &pstate->src;
+	dst = &pstate->dst;
+	xmirror = pstate->rotation & DRM_MODE_REFLECT_X ? true : false;
+	ymirror = pstate->rotation & DRM_MODE_REFLECT_Y ? true : false;
+	rotate_270 = pstate->rotation & DRM_MODE_ROTATE_270;
+	rotate_90 = pstate->rotation & DRM_MODE_ROTATE_90;
+
+	seq_printf(s, "\twin_id: %d\n", win->win_id);
+
+	seq_printf(s, "\tformat: %p4cc%s glb_alpha[0x%x]\n",
+		   &fb->format->format,
+		   drm_is_afbc(fb->modifier) ? "[AFBC]" : "",
+		   pstate->alpha >> 8);
+	seq_printf(s, "\trotate: xmirror: %d ymirror: %d rotate_90: %d rotate_270: %d\n",
+		   xmirror, ymirror, rotate_90, rotate_270);
+	seq_printf(s, "\tzpos: %d\n", pstate->normalized_zpos);
+	seq_printf(s, "\tsrc: pos[%d, %d] rect[%d x %d]\n", src->x1 >> 16,
+		   src->y1 >> 16, drm_rect_width(src) >> 16,
+		   drm_rect_height(src) >> 16);
+	seq_printf(s, "\tdst: pos[%d, %d] rect[%d x %d]\n", dst->x1, dst->y1,
+		   drm_rect_width(dst), drm_rect_height(dst));
+
+	for (i = 0; i < fb->format->num_planes; i++) {
+		obj = fb->obj[i];
+		rk_obj = to_rockchip_obj(obj);
+		fb_addr = rk_obj->dma_addr + fb->offsets[i];
+
+		seq_printf(s, "\tbuf[%d]: addr: %pad pitch: %d offset: %d\n",
+			   i, &fb_addr, fb->pitches[i], fb->offsets[i]);
+	}
+
+	return 0;
+}
+
+static int vop2_crtc_state_dump(struct drm_crtc *crtc, struct seq_file *s)
+{
+	struct vop2_video_port *vp = to_vop2_video_port(crtc);
+	struct drm_crtc_state *cstate = crtc->state;
+	struct rockchip_crtc_state *vcstate;
+	struct drm_display_mode *mode;
+	struct drm_plane *plane;
+	bool interlaced;
+
+	seq_printf(s, "Video Port%d: %s\n", vp->id, !cstate ?
+		   "DISABLED" : cstate->active ? "ACTIVE" : "DISABLED");
+
+	if (!cstate || !cstate->active)
+		return 0;
+
+	mode = &crtc->state->adjusted_mode;
+	vcstate = to_rockchip_crtc_state(cstate);
+	interlaced = !!(mode->flags & DRM_MODE_FLAG_INTERLACE);
+
+	vop2_dump_connector_on_crtc(crtc, s);
+	seq_printf(s, "\tbus_format[%x]: %s\n", vcstate->bus_format,
+		    drm_get_bus_format_name(vcstate->bus_format));
+	seq_printf(s, "\toutput_mode[%x]", vcstate->output_mode);
+	seq_printf(s, " color_space[%d]\n", vcstate->color_space);
+	seq_printf(s, "    Display mode: %dx%d%s%d\n",
+		    mode->hdisplay, mode->vdisplay, interlaced ? "i" : "p",
+		    drm_mode_vrefresh(mode));
+	seq_printf(s, "\tclk[%d] real_clk[%d] type[%x] flag[%x]\n",
+		    mode->clock, mode->crtc_clock, mode->type, mode->flags);
+	seq_printf(s, "\tH: %d %d %d %d\n", mode->hdisplay, mode->hsync_start,
+		    mode->hsync_end, mode->htotal);
+	seq_printf(s, "\tV: %d %d %d %d\n", mode->vdisplay, mode->vsync_start,
+		    mode->vsync_end, mode->vtotal);
+
+	drm_atomic_crtc_for_each_plane(plane, crtc) {
+		vop2_plane_state_dump(s, plane);
+	}
+
+	return 0;
+}
+
+static int vop2_summary_show(struct seq_file *s, void *data)
+{
+	struct drm_info_node *node = s->private;
+	struct drm_minor *minor = node->minor;
+	struct drm_device *drm_dev = minor->dev;
+	struct drm_crtc *crtc;
+
+	drm_modeset_lock_all(drm_dev);
+	drm_for_each_crtc(crtc, drm_dev) {
+		vop2_crtc_state_dump(crtc, s);
+	}
+	drm_modeset_unlock_all(drm_dev);
+
+	return 0;
+}
+
+static void vop2_regs_print(struct vop2 *vop2, struct seq_file *s,
+			    const struct vop2_regs_dump *dump, bool active_only)
+{
+	resource_size_t start;
+	u32 val;
+	int i;
+
+	if (dump->en_mask && active_only) {
+		val = vop2_readl(vop2, dump->base + dump->en_reg);
+		if ((val & dump->en_mask) != dump->en_val)
+			return;
+	}
+
+	seq_printf(s, "\n%s:\n", dump->name);
+
+	start = vop2->res->start + dump->base;
+	for (i = 0; i < dump->size >> 2; i += 4) {
+		seq_printf(s, "%08x:  %08x %08x %08x %08x\n", (u32)start + i * 4,
+			   vop2_readl(vop2, dump->base + (4 * i)),
+			   vop2_readl(vop2, dump->base + (4 * (i + 1))),
+			   vop2_readl(vop2, dump->base + (4 * (i + 2))),
+			   vop2_readl(vop2, dump->base + (4 * (i + 3))));
+	}
+}
+
+static void __vop2_regs_dump(struct seq_file *s, bool active_only)
+{
+	struct drm_info_node *node = s->private;
+	struct vop2 *vop2 = node->info_ent->data;
+	struct drm_minor *minor = node->minor;
+	struct drm_device *drm_dev = minor->dev;
+	const struct vop2_regs_dump *dump;
+	unsigned int i;
+
+	drm_modeset_lock_all(drm_dev);
+	if (vop2->enable_count) {
+		for (i = 0; i < vop2->data->regs_dump_size; i++) {
+			dump = &vop2->data->regs_dump[i];
+			vop2_regs_print(vop2, s, dump, active_only);
+		}
+	} else {
+		seq_printf(s, "VOP disabled\n");
+	}
+	drm_modeset_unlock_all(drm_dev);
+
+}
+
+static int vop2_regs_show(struct seq_file *s, void *arg)
+{
+	__vop2_regs_dump(s, false);
+
+	return 0;
+}
+
+static int vop2_active_regs_show(struct seq_file *s, void *data)
+{
+	__vop2_regs_dump(s, true);
+
+	return 0;
+}
+
+static struct drm_info_list vop2_debugfs_list[] = {
+	{ "summary", vop2_summary_show, 0, NULL },
+	{ "active_regs", vop2_active_regs_show,   0, NULL },
+	{ "regs", vop2_regs_show,   0, NULL },
+};
+
+static void vop2_debugfs_init(struct vop2 *vop2, struct drm_minor *minor)
+{
+	struct dentry *root;
+	unsigned int i;
+
+	root = debugfs_create_dir("vop2", minor->debugfs_root);
+	if (!IS_ERR(root)) {
+		for (i = 0; i < ARRAY_SIZE(vop2_debugfs_list); i++)
+			vop2_debugfs_list[i].data = vop2;
+
+		drm_debugfs_create_files(vop2_debugfs_list,
+					 ARRAY_SIZE(vop2_debugfs_list),
+					 root, minor);
+	}
+}
+
+static int vop2_crtc_late_register(struct drm_crtc *crtc)
+{
+	struct vop2_video_port *vp = to_vop2_video_port(crtc);
+	struct vop2 *vop2 = vp->vop2;
+
+	if (drm_crtc_index(crtc) == 0)
+		vop2_debugfs_init(vop2, crtc->dev->primary);
+
+	return 0;
+}
+
 static struct drm_crtc_state *vop2_crtc_duplicate_state(struct drm_crtc *crtc)
 {
 	struct rockchip_crtc_state *vcstate;
@@ -2565,6 +2819,7 @@ static const struct drm_crtc_funcs vop2_crtc_funcs = {
 	.atomic_destroy_state = vop2_crtc_destroy_state,
 	.enable_vblank = vop2_crtc_enable_vblank,
 	.disable_vblank = vop2_crtc_disable_vblank,
+	.late_register = vop2_crtc_late_register,
 };
 
 static irqreturn_t vop2_isr(int irq, void *data)
@@ -3109,6 +3364,7 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
 		return -EINVAL;
 	}
 
+	vop2->res = res;
 	vop2->regs = devm_ioremap_resource(dev, res);
 	if (IS_ERR(vop2->regs))
 		return PTR_ERR(vop2->regs);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index 615a16196aff..59cd6b933bfb 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -122,6 +122,15 @@ enum vop2_win_regs {
 	VOP2_WIN_MAX_REG,
 };
 
+struct vop2_regs_dump {
+	const char *name;
+	u32 base;
+	u32 size;
+	u32 en_reg;
+	u32 en_val;
+	u32 en_mask;
+};
+
 struct vop2_win_data {
 	const char *name;
 	unsigned int phys_id;
@@ -160,10 +169,12 @@ struct vop2_data {
 	u64 feature;
 	const struct vop2_win_data *win;
 	const struct vop2_video_port_data *vp;
+	const struct vop2_regs_dump *regs_dump;
 	struct vop_rect max_input;
 	struct vop_rect max_output;
 
 	unsigned int win_size;
+	unsigned int regs_dump_size;
 	unsigned int soc_id;
 };
 
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index 48170694ac6b..6fc119034a0e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -260,6 +260,88 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
 	},
 };
 
+static const struct vop2_regs_dump rk3568_regs_dump[] = {
+	{
+		.name = "SYS",
+		.base = RK3568_REG_CFG_DONE,
+		.size = 0x100,
+		.en_reg  = 0,
+		.en_val = 0,
+		.en_mask = 0
+	}, {
+		.name = "OVL",
+		.base = RK3568_OVL_CTRL,
+		.size = 0x100,
+		.en_reg = 0,
+		.en_val = 0,
+		.en_mask = 0,
+	}, {
+		.name = "VP0",
+		.base = RK3568_VP0_CTRL_BASE,
+		.size = 0x100,
+		.en_reg = RK3568_VP_DSP_CTRL,
+		.en_val = 0,
+		.en_mask = RK3568_VP_DSP_CTRL__STANDBY,
+	}, {
+		.name = "VP1",
+		.base = RK3568_VP1_CTRL_BASE,
+		.size = 0x100,
+		.en_reg = RK3568_VP_DSP_CTRL,
+		.en_val = 0,
+		.en_mask = RK3568_VP_DSP_CTRL__STANDBY,
+	}, {
+		.name = "VP2",
+		.base = RK3568_VP2_CTRL_BASE,
+		.size = 0x100,
+		.en_reg = RK3568_VP_DSP_CTRL,
+		.en_val = 0,
+		.en_mask = RK3568_VP_DSP_CTRL__STANDBY,
+
+	}, {
+		.name = "Cluster0",
+		.base = RK3568_CLUSTER0_CTRL_BASE,
+		.size = 0x110,
+		.en_reg = RK3568_CLUSTER_WIN_CTRL0,
+		.en_val = RK3568_CLUSTER_WIN_CTRL0__WIN0_EN,
+		.en_mask = RK3568_CLUSTER_WIN_CTRL0__WIN0_EN,
+	}, {
+		.name = "Cluster1",
+		.base = RK3568_CLUSTER1_CTRL_BASE,
+		.size = 0x110,
+		.en_reg = RK3568_CLUSTER_WIN_CTRL0,
+		.en_val = RK3568_CLUSTER_WIN_CTRL0__WIN0_EN,
+		.en_mask = RK3568_CLUSTER_WIN_CTRL0__WIN0_EN,
+	}, {
+		.name = "Esmart0",
+		.base = RK3568_ESMART0_CTRL_BASE,
+		.size = 0xf0,
+		.en_reg = RK3568_SMART_REGION0_CTRL,
+		.en_val = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+		.en_mask = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+	}, {
+		.name = "Esmart1",
+		.base = RK3568_ESMART1_CTRL_BASE,
+		.size = 0xf0,
+		.en_reg = RK3568_SMART_REGION0_CTRL,
+		.en_val = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+		.en_mask = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+	}, {
+		.name = "Smart0",
+		.base = RK3568_SMART0_CTRL_BASE,
+		.size = 0xf0,
+		.en_reg = RK3568_SMART_REGION0_CTRL,
+		.en_val = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+		.en_mask = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+	}, {
+		.name = "Smart1",
+		.base = RK3568_SMART1_CTRL_BASE,
+		.size = 0xf0,
+		.en_reg = RK3568_SMART_REGION0_CTRL,
+		.en_val = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+		.en_mask = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+	},
+};
+
 static const struct vop2_video_port_data rk3588_vop_video_ports[] = {
 	{
 		.id = 0,
@@ -440,6 +522,109 @@ static const struct vop2_win_data rk3588_vop_win_data[] = {
 	},
 };
 
+static const struct vop2_regs_dump rk3588_regs_dump[] = {
+	{
+		.name = "SYS",
+		.base = RK3568_REG_CFG_DONE,
+		.size = 0x100,
+		.en_reg  = 0,
+		.en_val = 0,
+		.en_mask = 0
+	}, {
+		.name = "OVL",
+		.base = RK3568_OVL_CTRL,
+		.size = 0x100,
+		.en_reg = 0,
+		.en_val = 0,
+		.en_mask = 0,
+	}, {
+		.name = "VP0",
+		.base = RK3568_VP0_CTRL_BASE,
+		.size = 0x100,
+		.en_reg = RK3568_VP_DSP_CTRL,
+		.en_val = 0,
+		.en_mask = RK3568_VP_DSP_CTRL__STANDBY,
+	}, {
+		.name = "VP1",
+		.base = RK3568_VP1_CTRL_BASE,
+		.size = 0x100,
+		.en_reg = RK3568_VP_DSP_CTRL,
+		.en_val = 0,
+		.en_mask = RK3568_VP_DSP_CTRL__STANDBY,
+	}, {
+		.name = "VP2",
+		.base = RK3568_VP2_CTRL_BASE,
+		.size = 0x100,
+		.en_reg = RK3568_VP_DSP_CTRL,
+		.en_val = 0,
+		.en_mask = RK3568_VP_DSP_CTRL__STANDBY,
+
+	}, {
+		.name = "VP3",
+		.base = RK3588_VP3_CTRL_BASE,
+		.size = 0x100,
+		.en_reg = RK3568_VP_DSP_CTRL,
+		.en_val = 0,
+		.en_mask = RK3568_VP_DSP_CTRL__STANDBY,
+	}, {
+		.name = "Cluster0",
+		.base = RK3568_CLUSTER0_CTRL_BASE,
+		.size = 0x110,
+		.en_reg = RK3568_CLUSTER_WIN_CTRL0,
+		.en_val = RK3568_CLUSTER_WIN_CTRL0__WIN0_EN,
+		.en_mask = RK3568_CLUSTER_WIN_CTRL0__WIN0_EN,
+	}, {
+		.name = "Cluster1",
+		.base = RK3568_CLUSTER1_CTRL_BASE,
+		.size = 0x110,
+		.en_reg = RK3568_CLUSTER_WIN_CTRL0,
+		.en_val = RK3568_CLUSTER_WIN_CTRL0__WIN0_EN,
+		.en_mask = RK3568_CLUSTER_WIN_CTRL0__WIN0_EN,
+	}, {
+		.name = "Cluster2",
+		.base = RK3588_CLUSTER2_CTRL_BASE,
+		.size = 0x110,
+		.en_reg = RK3568_CLUSTER_WIN_CTRL0,
+		.en_val = RK3568_CLUSTER_WIN_CTRL0__WIN0_EN,
+		.en_mask = RK3568_CLUSTER_WIN_CTRL0__WIN0_EN,
+	}, {
+		.name = "Cluster3",
+		.base = RK3588_CLUSTER3_CTRL_BASE,
+		.size = 0x110,
+		.en_reg = RK3568_CLUSTER_WIN_CTRL0,
+		.en_val = RK3568_CLUSTER_WIN_CTRL0__WIN0_EN,
+		.en_mask = RK3568_CLUSTER_WIN_CTRL0__WIN0_EN,
+	}, {
+		.name = "Esmart0",
+		.base = RK3568_ESMART0_CTRL_BASE,
+		.size = 0xf0,
+		.en_reg = RK3568_SMART_REGION0_CTRL,
+		.en_val = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+		.en_mask = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+	}, {
+		.name = "Esmart1",
+		.base = RK3568_ESMART1_CTRL_BASE,
+		.size = 0xf0,
+		.en_reg = RK3568_SMART_REGION0_CTRL,
+		.en_val = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+		.en_mask = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+	}, {
+		.name = "Esmart2",
+		.base = RK3588_ESMART2_CTRL_BASE,
+		.size = 0xf0,
+		.en_reg = RK3568_SMART_REGION0_CTRL,
+		.en_val = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+		.en_mask = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+	}, {
+		.name = "Esmart3",
+		.base = RK3588_ESMART3_CTRL_BASE,
+		.size = 0xf0,
+		.en_reg = RK3568_SMART_REGION0_CTRL,
+		.en_val = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+		.en_mask = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+	},
+};
+
 static const struct vop2_data rk3566_vop = {
 	.feature = VOP2_FEATURE_HAS_SYS_GRF,
 	.nr_vps = 3,
@@ -448,6 +633,8 @@ static const struct vop2_data rk3566_vop = {
 	.vp = rk3568_vop_video_ports,
 	.win = rk3568_vop_win_data,
 	.win_size = ARRAY_SIZE(rk3568_vop_win_data),
+	.regs_dump = rk3568_regs_dump,
+	.regs_dump_size = ARRAY_SIZE(rk3568_regs_dump),
 	.soc_id = 3566,
 };
 
@@ -459,6 +646,8 @@ static const struct vop2_data rk3568_vop = {
 	.vp = rk3568_vop_video_ports,
 	.win = rk3568_vop_win_data,
 	.win_size = ARRAY_SIZE(rk3568_vop_win_data),
+	.regs_dump = rk3568_regs_dump,
+	.regs_dump_size = ARRAY_SIZE(rk3568_regs_dump),
 	.soc_id = 3568,
 };
 
@@ -471,6 +660,8 @@ static const struct vop2_data rk3588_vop = {
 	.vp = rk3588_vop_video_ports,
 	.win = rk3588_vop_win_data,
 	.win_size = ARRAY_SIZE(rk3588_vop_win_data),
+	.regs_dump = rk3588_regs_dump,
+	.regs_dump_size = ARRAY_SIZE(rk3588_regs_dump),
 	.soc_id = 3588,
 };
 
-- 
2.34.1


