Return-Path: <devicetree+bounces-131046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 936639F1D75
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 09:20:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46DBD168267
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 08:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F6241917F4;
	Sat, 14 Dec 2024 08:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="QJKVUYKq"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4483187FE4;
	Sat, 14 Dec 2024 08:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734164274; cv=none; b=RwJxzn47+sVHHeAYqojj6WhxBo77+yxnYfZd98Ag1KMmp/T1iF3TjkecCOF/woCuOR1W1TI6SnQKSbv1rWsF5JiKzneCOzw4TTF/inJfJCvLp0XDfMyHtuN4ipkvHkefspBYkgCC3lTP3GOHcvCXwMxTxsiqds5lGxxqlEAN0bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734164274; c=relaxed/simple;
	bh=+sL+JlViPUhsnrUgbjo2rZMIqvz+SniTA3G4R70qIo0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t5CL4yaDA+vWYeC2wX99nSPrrI+DvNOBIPmCVUl+E3xvZ8kyEX+KvSDCl3d7KPG232INBz7S8OBfe4x0tqy08Inh4HX1su/PCyzROctW7lSD2eDSiwQEqPAmlGu+xWq7mRnVCYQu4+2H70LHlJ3LDo9n0AM45xKNLMjsfJktcio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=QJKVUYKq; arc=none smtp.client-ip=220.197.31.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=VbKLm
	PzuLtQTkySQt9wxR61KeUAZZy4vzAnqkXXXBls=; b=QJKVUYKqqB1CnoaImkbm+
	Kp3K7tjbwfJnDXfHZShpDMJTsNIKLoYj394kheIlLfeQCOlFnpaRaOuJFGVoUdAg
	YqJssyt7XksAS3Y1XeWru87h/Wr8W9Bfj0KHm9FcND0JNakaJ2kre9bFi00MoN8h
	sjhW0audZCZTO/c7EDHwus=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-4 (Coremail) with SMTP id _____wD3fwEQP11ntNLtAQ--.5686S5;
	Sat, 14 Dec 2024 16:17:27 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	s.hauer@pengutronix.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	detlev.casanova@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v6 03/16] drm/rockchip: vop2: Set AXI id for rk3588
Date: Sat, 14 Dec 2024 16:17:02 +0800
Message-ID: <20241214081719.3330518-4-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241214081719.3330518-1-andyshrk@163.com>
References: <20241214081719.3330518-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3fwEQP11ntNLtAQ--.5686S5
X-Coremail-Antispam: 1Uf129KBjvJXoWxtw4DCF4xGF4fCrWrJFyDtrb_yoW3Cr4Upa
	yfJ39xW3yqkr42qr97XF1YvF1rJasrt3yxZan3W3sFgFyFg34xtF1jyas8AFyag34IkrWj
	qws8Jry7W39xtF7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jfjjgUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQ61XmddM6y0DAAAsR

From: Andy Yan <andy.yan@rock-chips.com>

There are two AXI bus in vop2, windows attached on the same bus must
have a unique channel YUV and RGB channel ID.

The default IDs will conflict with each other on the rk3588, so they
need to be reassigned.

Fixes: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Tested-by: Derek Foreman <derek.foreman@collabora.com>
Tested-by: Detlev Casanova <detlev.casanova@collabora.com>

---

(no changes since v5)

Changes in v5:
- Added in V5

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 14 +++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  9 +++++++
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 26 +++++++++++++++++++-
 3 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 81207a79530c..0723a7606cb1 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1426,6 +1426,12 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		&fb->format->format,
 		afbc_en ? "AFBC" : "", &yrgb_mst);
 
+	if (vop2->data->soc_id > 3568) {
+		vop2_win_write(win, VOP2_WIN_AXI_BUS_ID, win->data->axi_bus_id);
+		vop2_win_write(win, VOP2_WIN_AXI_YRGB_R_ID, win->data->axi_yrgb_r_id);
+		vop2_win_write(win, VOP2_WIN_AXI_UV_R_ID, win->data->axi_uv_r_id);
+	}
+
 	if (vop2_cluster_window(win))
 		vop2_win_write(win, VOP2_WIN_AFBC_HALF_BLOCK_EN, half_block_en);
 
@@ -3354,6 +3360,10 @@ static struct reg_field vop2_cluster_regs[VOP2_WIN_MAX_REG] = {
 	[VOP2_WIN_Y2R_EN] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 8, 8),
 	[VOP2_WIN_R2Y_EN] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 9, 9),
 	[VOP2_WIN_CSC_MODE] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 10, 11),
+	[VOP2_WIN_AXI_YRGB_R_ID] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL2, 0, 3),
+	[VOP2_WIN_AXI_UV_R_ID] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL2, 5, 8),
+	/* RK3588 only, reserved bit on rk3568*/
+	[VOP2_WIN_AXI_BUS_ID] = REG_FIELD(RK3568_CLUSTER_CTRL, 13, 13),
 
 	/* Scale */
 	[VOP2_WIN_SCALE_YRGB_X] = REG_FIELD(RK3568_CLUSTER_WIN_SCL_FACTOR_YRGB, 0, 15),
@@ -3446,6 +3456,10 @@ static struct reg_field vop2_esmart_regs[VOP2_WIN_MAX_REG] = {
 	[VOP2_WIN_YMIRROR] = REG_FIELD(RK3568_SMART_CTRL1, 31, 31),
 	[VOP2_WIN_COLOR_KEY] = REG_FIELD(RK3568_SMART_COLOR_KEY_CTRL, 0, 29),
 	[VOP2_WIN_COLOR_KEY_EN] = REG_FIELD(RK3568_SMART_COLOR_KEY_CTRL, 31, 31),
+	[VOP2_WIN_AXI_YRGB_R_ID] = REG_FIELD(RK3568_SMART_CTRL1, 4, 8),
+	[VOP2_WIN_AXI_UV_R_ID] = REG_FIELD(RK3568_SMART_CTRL1, 12, 16),
+	/* RK3588 only, reserved register on rk3568 */
+	[VOP2_WIN_AXI_BUS_ID] = REG_FIELD(RK3588_SMART_AXI_CTRL, 1, 1),
 
 	/* Scale */
 	[VOP2_WIN_SCALE_YRGB_X] = REG_FIELD(RK3568_SMART_REGION0_SCL_FACTOR_YRGB, 0, 15),
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index 2cb7b6b40c77..f4724a402ac2 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -78,6 +78,9 @@ enum vop2_win_regs {
 	VOP2_WIN_COLOR_KEY,
 	VOP2_WIN_COLOR_KEY_EN,
 	VOP2_WIN_DITHER_UP,
+	VOP2_WIN_AXI_BUS_ID,
+	VOP2_WIN_AXI_YRGB_R_ID,
+	VOP2_WIN_AXI_UV_R_ID,
 
 	/* scale regs */
 	VOP2_WIN_SCALE_YRGB_X,
@@ -149,6 +152,10 @@ struct vop2_win_data {
 	unsigned int layer_sel_id;
 	uint64_t feature;
 
+	uint8_t axi_bus_id;
+	uint8_t axi_yrgb_r_id;
+	uint8_t axi_uv_r_id;
+
 	unsigned int max_upscale_factor;
 	unsigned int max_downscale_factor;
 	const u8 dly[VOP2_DLY_MODE_MAX];
@@ -319,6 +326,7 @@ enum dst_factor_mode {
 
 #define RK3568_CLUSTER_WIN_CTRL0		0x00
 #define RK3568_CLUSTER_WIN_CTRL1		0x04
+#define RK3568_CLUSTER_WIN_CTRL2		0x08
 #define RK3568_CLUSTER_WIN_YRGB_MST		0x10
 #define RK3568_CLUSTER_WIN_CBR_MST		0x14
 #define RK3568_CLUSTER_WIN_VIR			0x18
@@ -341,6 +349,7 @@ enum dst_factor_mode {
 /* (E)smart register definition, offset relative to window base */
 #define RK3568_SMART_CTRL0			0x00
 #define RK3568_SMART_CTRL1			0x04
+#define RK3588_SMART_AXI_CTRL			0x08
 #define RK3568_SMART_REGION0_CTRL		0x10
 #define RK3568_SMART_REGION0_YRGB_MST		0x14
 #define RK3568_SMART_REGION0_CBR_MST		0x18
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index 9247f94343f2..65a88f489693 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -395,7 +395,7 @@ static const struct vop2_video_port_data rk3588_vop_video_ports[] = {
  * AXI1 is a read only bus.
  *
  * Every window on a AXI bus must assigned two unique
- * read id(yrgb_id/uv_id, valid id are 0x1~0xe).
+ * read id(yrgb_r_id/uv_r_id, valid id are 0x1~0xe).
  *
  * AXI0:
  * Cluster0/1, Esmart0/1, WriteBack
@@ -415,6 +415,9 @@ static const struct vop2_win_data rk3588_vop_win_data[] = {
 		.layer_sel_id = 0,
 		.supported_rotations = DRM_MODE_ROTATE_90 | DRM_MODE_ROTATE_270 |
 				       DRM_MODE_REFLECT_X | DRM_MODE_REFLECT_Y,
+		.axi_bus_id = 0,
+		.axi_yrgb_r_id = 2,
+		.axi_uv_r_id = 3,
 		.max_upscale_factor = 4,
 		.max_downscale_factor = 4,
 		.dly = { 4, 26, 29 },
@@ -431,6 +434,9 @@ static const struct vop2_win_data rk3588_vop_win_data[] = {
 		.supported_rotations = DRM_MODE_ROTATE_90 | DRM_MODE_ROTATE_270 |
 				       DRM_MODE_REFLECT_X | DRM_MODE_REFLECT_Y,
 		.type = DRM_PLANE_TYPE_PRIMARY,
+		.axi_bus_id = 0,
+		.axi_yrgb_r_id = 6,
+		.axi_uv_r_id = 7,
 		.max_upscale_factor = 4,
 		.max_downscale_factor = 4,
 		.dly = { 4, 26, 29 },
@@ -446,6 +452,9 @@ static const struct vop2_win_data rk3588_vop_win_data[] = {
 		.supported_rotations = DRM_MODE_ROTATE_90 | DRM_MODE_ROTATE_270 |
 				       DRM_MODE_REFLECT_X | DRM_MODE_REFLECT_Y,
 		.type = DRM_PLANE_TYPE_PRIMARY,
+		.axi_bus_id = 1,
+		.axi_yrgb_r_id = 2,
+		.axi_uv_r_id = 3,
 		.max_upscale_factor = 4,
 		.max_downscale_factor = 4,
 		.dly = { 4, 26, 29 },
@@ -461,6 +470,9 @@ static const struct vop2_win_data rk3588_vop_win_data[] = {
 		.supported_rotations = DRM_MODE_ROTATE_90 | DRM_MODE_ROTATE_270 |
 				       DRM_MODE_REFLECT_X | DRM_MODE_REFLECT_Y,
 		.type = DRM_PLANE_TYPE_PRIMARY,
+		.axi_bus_id = 1,
+		.axi_yrgb_r_id = 6,
+		.axi_uv_r_id = 7,
 		.max_upscale_factor = 4,
 		.max_downscale_factor = 4,
 		.dly = { 4, 26, 29 },
@@ -475,6 +487,9 @@ static const struct vop2_win_data rk3588_vop_win_data[] = {
 		.layer_sel_id = 2,
 		.supported_rotations = DRM_MODE_REFLECT_Y,
 		.type = DRM_PLANE_TYPE_OVERLAY,
+		.axi_bus_id = 0,
+		.axi_yrgb_r_id = 0x0a,
+		.axi_uv_r_id = 0x0b,
 		.max_upscale_factor = 8,
 		.max_downscale_factor = 8,
 		.dly = { 23, 45, 48 },
@@ -488,6 +503,9 @@ static const struct vop2_win_data rk3588_vop_win_data[] = {
 		.layer_sel_id = 3,
 		.supported_rotations = DRM_MODE_REFLECT_Y,
 		.type = DRM_PLANE_TYPE_OVERLAY,
+		.axi_bus_id = 0,
+		.axi_yrgb_r_id = 0x0c,
+		.axi_uv_r_id = 0x01,
 		.max_upscale_factor = 8,
 		.max_downscale_factor = 8,
 		.dly = { 23, 45, 48 },
@@ -501,6 +519,9 @@ static const struct vop2_win_data rk3588_vop_win_data[] = {
 		.layer_sel_id = 6,
 		.supported_rotations = DRM_MODE_REFLECT_Y,
 		.type = DRM_PLANE_TYPE_OVERLAY,
+		.axi_bus_id = 1,
+		.axi_yrgb_r_id = 0x0a,
+		.axi_uv_r_id = 0x0b,
 		.max_upscale_factor = 8,
 		.max_downscale_factor = 8,
 		.dly = { 23, 45, 48 },
@@ -514,6 +535,9 @@ static const struct vop2_win_data rk3588_vop_win_data[] = {
 		.layer_sel_id = 7,
 		.supported_rotations = DRM_MODE_REFLECT_Y,
 		.type = DRM_PLANE_TYPE_OVERLAY,
+		.axi_bus_id = 1,
+		.axi_yrgb_r_id = 0x0c,
+		.axi_uv_r_id = 0x0d,
 		.max_upscale_factor = 8,
 		.max_downscale_factor = 8,
 		.dly = { 23, 45, 48 },
-- 
2.34.1


