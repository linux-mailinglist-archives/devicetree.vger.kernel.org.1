Return-Path: <devicetree+bounces-20356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4507FEEF2
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 13:24:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7FEC91C20AFA
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 12:24:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EDBF46526;
	Thu, 30 Nov 2023 12:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="gcmVx4gB"
X-Original-To: devicetree@vger.kernel.org
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.220])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id EF7A2D50;
	Thu, 30 Nov 2023 04:24:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=CidyQ
	kcUSbONLGLqzG4G3Rj/C0GIJ8owu1w28R+5hkg=; b=gcmVx4gBcr5urmN8Ub31R
	FGl507aEjl6z0nnX/cvJkv4Og8mUzcq+NGQeH5JsEbiNaTqfbTkY/ieZjnhNtJWZ
	iD6N/8MpTcAYbRC5ebu9XGnyDt1xaPNf1isJs8NISjams4TeJnGPMb9P2nlj7QCh
	r0RuPKFO6k6TcOTgBFkecA=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g1-3 (Coremail) with SMTP id _____wD3PxjQfmhlDnD1BA--.61445S2;
	Thu, 30 Nov 2023 20:23:47 +0800 (CST)
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
Subject: [PATCH v3 06/14] drm/rockchip: vop2: Set YUV/RGB overlay mode
Date: Thu, 30 Nov 2023 20:23:42 +0800
Message-Id: <20231130122342.13072-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130122001.12474-1-andyshrk@163.com>
References: <20231130122001.12474-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3PxjQfmhlDnD1BA--.61445S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxXr18XrWkAFyrWFW3Ww47XFb_yoWrAw1kpw
	n7ZryYqrWDKF4qqw1kAF98ZF4Skw4Iyay7GFn7Gasxua4vgryDWwnxuas8AFnrXF17urWj
	yrZrCrW5AF4Ivr7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jo5lbUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqBU4XmVOAquTBAAAsO

From: Andy Yan <andy.yan@rock-chips.com>

Set overlay mode register according to the
output mode is yuv or rgb.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v3:
- put bool variable yuv_overlay next to other bool variable
- define macro for RK3568_OVL_CTRL__YUV_MODE
- just write RK3568_OVL_CTRL register once in function
  vop2_setup_layer_mixer

 drivers/gpu/drm/rockchip/rockchip_drm_drv.h  |  1 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 18 +++++++++++++++---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  1 +
 3 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
index 3d8ab2defa1b..bbb9e0bf6804 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
@@ -48,6 +48,7 @@ struct rockchip_crtc_state {
 	int output_bpc;
 	int output_flags;
 	bool enable_afbc;
+	bool yuv_overlay;
 	u32 bus_format;
 	u32 bus_flags;
 	int color_space;
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 25c1f33c5622..40b5c5ca4864 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1623,6 +1623,8 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	vop2->enable_count++;
 
+	vcstate->yuv_overlay = is_yuv_output(vcstate->bus_format);
+
 	vop2_crtc_enable_irq(vp, VP_INT_POST_BUF_EMPTY);
 
 	polflags = 0;
@@ -1650,7 +1652,7 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 	if (vop2_output_uv_swap(vcstate->bus_format, vcstate->output_mode))
 		dsp_ctrl |= RK3568_VP_DSP_CTRL__DSP_RB_SWAP;
 
-	if (is_yuv_output(vcstate->bus_format))
+	if (vcstate->yuv_overlay)
 		dsp_ctrl |= RK3568_VP_DSP_CTRL__POST_DSP_OUT_R2Y;
 
 	vop2_dither_setup(crtc, &dsp_ctrl);
@@ -1959,10 +1961,12 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
 	u16 hdisplay;
 	u32 bg_dly;
 	u32 pre_scan_dly;
+	u32 ovl_ctrl;
 	int i;
 	struct vop2_video_port *vp0 = &vop2->vps[0];
 	struct vop2_video_port *vp1 = &vop2->vps[1];
 	struct vop2_video_port *vp2 = &vop2->vps[2];
+	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(vp->crtc.state);
 
 	adjusted_mode = &vp->crtc.state->adjusted_mode;
 	hsync_len = adjusted_mode->crtc_hsync_end - adjusted_mode->crtc_hsync_start;
@@ -1975,7 +1979,15 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
 	pre_scan_dly = ((bg_dly + (hdisplay >> 1) - 1) << 16) | hsync_len;
 	vop2_vp_write(vp, RK3568_VP_PRE_SCAN_HTIMING, pre_scan_dly);
 
-	vop2_writel(vop2, RK3568_OVL_CTRL, 0);
+	ovl_ctrl = vop2_readl(vop2, RK3568_OVL_CTRL);
+	ovl_ctrl |= RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD;
+	if (vcstate->yuv_overlay)
+		ovl_ctrl |= RK3568_OVL_CTRL__YUV_MODE(vp->id);
+	else
+		ovl_ctrl &= ~RK3568_OVL_CTRL__YUV_MODE(vp->id);
+
+	vop2_writel(vop2, RK3568_OVL_CTRL, ovl_ctrl);
+
 	port_sel = vop2_readl(vop2, RK3568_OVL_PORT_SEL);
 	port_sel &= RK3568_OVL_PORT_SEL__SEL_PORT;
 
@@ -2047,9 +2059,9 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
 		layer_sel |= RK3568_OVL_LAYER_SEL__LAYER(nlayer + ofs, 5);
 	}
 
+
 	vop2_writel(vop2, RK3568_OVL_LAYER_SEL, layer_sel);
 	vop2_writel(vop2, RK3568_OVL_PORT_SEL, port_sel);
-	vop2_writel(vop2, RK3568_OVL_CTRL, RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD);
 }
 
 static void vop2_setup_dly_for_windows(struct vop2 *vop2)
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index 7175f46a2014..8d7ff52523fb 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -401,6 +401,7 @@ enum dst_factor_mode {
 #define VOP2_COLOR_KEY_MASK				BIT(31)
 
 #define RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD		BIT(28)
+#define RK3568_OVL_CTRL__YUV_MODE(vp)			BIT(vp)
 
 #define RK3568_VP_BG_MIX_CTRL__BG_DLY			GENMASK(31, 24)
 
-- 
2.34.1


