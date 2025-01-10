Return-Path: <devicetree+bounces-137387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A0FA08D7D
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 11:10:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 176AD7A2B69
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 10:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5266520C039;
	Fri, 10 Jan 2025 10:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="gX+UlOYZ"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.3])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D909E20B7E7;
	Fri, 10 Jan 2025 10:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736503767; cv=none; b=IMFycL9tzd7MVP1YiMOr7f2opirfFZl1XtgmvVNdD+Y2NF0gg80ZyGWewPeSQb5OpZ7xznHQEMX9OA1CT59RHkF8xBIaaGT1n6ebL/cVMdiswV5yUSYn/RhH90CEcZF4RKzRLPGYIlHbttAXC4pjaSmgpHPwKduyDVw0obHJO6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736503767; c=relaxed/simple;
	bh=NVgjIHeBsXbvERwjiJnj56w01sVRRiY0iZ1xTmpwpog=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RFcAZ84kL7+WeqjIfTjq4Csb2yis1jehmMTLcYtZc4JqDRlhhzOrTLacD8s5VbjQDb5Kx2nKYuiopUVIMvTGj3scZVvegDHNh2YjN+s9bi5C9FtDJqqtukjJlE+9JwQU7DM0wdkYecugJ2uGiggHbWRVzVuc9+02Kgp+XsHFxC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=gX+UlOYZ; arc=none smtp.client-ip=117.135.210.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=vx4b9
	04GoBOQPZxPkHCVqjXWtg+tthn2HPth/upQ9wQ=; b=gX+UlOYZ58HCPq6knNLNZ
	IXQdJvnIeAbAwcXvggmLNgxNvyCH41DIQZ9au5AIxFQ4RHxyrbsX0GwKaznVWinw
	C9hzYs2kJ8X3TcPHy7sKxG/bbZVKCw6EAHR0xYPVyRejcaJ0t11/Q0lCwWkbU/XB
	vo7gkQa0R5sZstXavG/XnE=
Received: from ProDesk.. (unknown [])
	by gzsmtp4 (Coremail) with SMTP id PygvCgBHPRKh8YBn2sBEEQ--.4640S9;
	Fri, 10 Jan 2025 18:08:44 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	detlev.casanova@collabora.com,
	daniel@fooishbar.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: [PATCH v10 07/11] drm/rockchip: vop2: Register the primary plane and overlay plane separately
Date: Fri, 10 Jan 2025 18:08:22 +0800
Message-ID: <20250110100832.27551-8-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250110100832.27551-1-andyshrk@163.com>
References: <20250110100832.27551-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:PygvCgBHPRKh8YBn2sBEEQ--.4640S9
X-Coremail-Antispam: 1Uf129KBjvJXoWxGFWxtw4kKr43tFyrKryxuFg_yoWrZrW3pa
	13ta90qr4xWrsFgry8JF4jyFWYyan2kay7Crn8Gw1a934Sgr93ur48KF1DAF15uFnrWFya
	kFW3K39Y9FWj9r7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jV5lbUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gLQXmeA8KYWdAAAsN

From: Andy Yan <andy.yan@rock-chips.com>

In the upcoming VOP of rk3576, a Window cannot attach to all Video Ports,
so make sure all VP find it's suitable primary plane, then register the
remain windows as overlay plane will make code easier.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Tested-by: Michael Riesch <michael.riesch@wolfvision.net> # on RK3568
Tested-by: Detlev Casanova <detlev.casanova@collabora.com>

---

(no changes since v3)

Changes in v3:
- Add comments for why we should treat rk3566 with special care.

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 100 +++++++++++--------
 1 file changed, 61 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index a1a0383713b5..d3e21fb00225 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2222,22 +2222,29 @@ static int vop2_plane_init(struct vop2 *vop2, struct vop2_win *win,
 	return 0;
 }
 
-static struct vop2_video_port *find_vp_without_primary(struct vop2 *vop2)
+/*
+ * On RK3566 these windows don't have an independent
+ * framebuffer. They can only share/mirror the framebuffer
+ * with smart0, esmart0 and cluster0 respectively.
+ * And RK3566 share the same vop version with Rk3568, so we
+ * need to use soc_id for identification here.
+ */
+static bool vop2_is_mirror_win(struct vop2_win *win)
 {
-	int i;
-
-	for (i = 0; i < vop2->data->nr_vps; i++) {
-		struct vop2_video_port *vp = &vop2->vps[i];
-
-		if (!vp->crtc.port)
-			continue;
-		if (vp->primary_plane)
-			continue;
+	struct vop2 *vop2 = win->vop2;
 
-		return vp;
+	if (vop2->data->soc_id == 3566) {
+		switch (win->data->phys_id) {
+		case ROCKCHIP_VOP2_SMART1:
+		case ROCKCHIP_VOP2_ESMART1:
+		case ROCKCHIP_VOP2_CLUSTER1:
+			return true;
+		default:
+			return false;
+		}
+	} else {
+		return false;
 	}
-
-	return NULL;
 }
 
 static int vop2_create_crtcs(struct vop2 *vop2)
@@ -2248,7 +2255,9 @@ static int vop2_create_crtcs(struct vop2 *vop2)
 	struct drm_plane *plane;
 	struct device_node *port;
 	struct vop2_video_port *vp;
-	int i, nvp, nvps = 0;
+	struct vop2_win *win;
+	u32 possible_crtcs;
+	int i, j, nvp, nvps = 0;
 	int ret;
 
 	for (i = 0; i < vop2_data->nr_vps; i++) {
@@ -2287,42 +2296,55 @@ static int vop2_create_crtcs(struct vop2 *vop2)
 	}
 
 	nvp = 0;
-	for (i = 0; i < vop2->registered_num_wins; i++) {
-		struct vop2_win *win = &vop2->win[i];
-		u32 possible_crtcs = 0;
-
-		if (vop2->data->soc_id == 3566) {
-			/*
-			 * On RK3566 these windows don't have an independent
-			 * framebuffer. They share the framebuffer with smart0,
-			 * esmart0 and cluster0 respectively.
-			 */
-			switch (win->data->phys_id) {
-			case ROCKCHIP_VOP2_SMART1:
-			case ROCKCHIP_VOP2_ESMART1:
-			case ROCKCHIP_VOP2_CLUSTER1:
+	/* Register a primary plane for every crtc */
+	for (i = 0; i < vop2_data->nr_vps; i++) {
+		vp = &vop2->vps[i];
+
+		if (!vp->crtc.port)
+			continue;
+
+		for (j = 0; j < vop2->registered_num_wins; j++) {
+			win = &vop2->win[j];
+
+			/* Aready registered as primary plane */
+			if (win->base.type == DRM_PLANE_TYPE_PRIMARY)
+				continue;
+
+			if (vop2_is_mirror_win(win))
 				continue;
-			}
-		}
 
-		if (win->type == DRM_PLANE_TYPE_PRIMARY) {
-			vp = find_vp_without_primary(vop2);
-			if (vp) {
+			if (win->type == DRM_PLANE_TYPE_PRIMARY) {
 				possible_crtcs = BIT(nvp);
 				vp->primary_plane = win;
+				ret = vop2_plane_init(vop2, win, possible_crtcs);
+				if (ret) {
+					drm_err(vop2->drm, "failed to init primary plane %s: %d\n",
+						win->data->name, ret);
+					return ret;
+				}
 				nvp++;
-			} else {
-				/* change the unused primary window to overlay window */
-				win->type = DRM_PLANE_TYPE_OVERLAY;
+				break;
 			}
 		}
+	}
+
+	/* Register all unused window as overlay plane */
+	for (i = 0; i < vop2->registered_num_wins; i++) {
+		win = &vop2->win[i];
+
+		/* Aready registered as primary plane */
+		if (win->base.type == DRM_PLANE_TYPE_PRIMARY)
+			continue;
+
+		if (vop2_is_mirror_win(win))
+			continue;
 
-		if (win->type == DRM_PLANE_TYPE_OVERLAY)
-			possible_crtcs = (1 << nvps) - 1;
+		win->type = DRM_PLANE_TYPE_OVERLAY;
 
+		possible_crtcs = (1 << nvps) - 1;
 		ret = vop2_plane_init(vop2, win, possible_crtcs);
 		if (ret) {
-			drm_err(vop2->drm, "failed to init plane %s: %d\n",
+			drm_err(vop2->drm, "failed to init overlay plane %s: %d\n",
 				win->data->name, ret);
 			return ret;
 		}
-- 
2.34.1


