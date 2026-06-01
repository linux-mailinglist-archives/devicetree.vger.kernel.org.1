Return-Path: <devicetree+bounces-305011-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEKyI/tOHWrDYgkAu9opvQ
	(envelope-from <devicetree+bounces-305011-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:20:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E258861C4BF
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 11:20:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 221433090271
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 09:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DC993431E3;
	Mon,  1 Jun 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="deFm5InC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32105.qiye.163.com (mail-m32105.qiye.163.com [220.197.32.105])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A6F2BE65B;
	Mon,  1 Jun 2026 09:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.105
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780305233; cv=none; b=kDfX13MAwk/LLNU3VQMGiErv8E2JJ6Bc3W/3DSCXurd9sjQfyT1OX7i6nqLL5BOCWbTi3VWlJ60+5TxYZoH+0YYK+1gz6i0N7lTWlcYdrqy+2uQT+EzggYR83MHpYamk9qvsfn3Aq9lTA5/3oq6+wM+gMc7nppP4aGgZZqtS63o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780305233; c=relaxed/simple;
	bh=rwyghEuhTyQcRZWXOd5OluUewAmAPIW4tvO4JsAARIQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=azq725o/JRF7zDS0nf2RSSwy9eLhYd4cMTCcKuY0q89l38RxtmF9GDx7wXgxGhjEz/8rusMcc8pbfta7DlaC4q1DxGntXJQvsX9dJN8WPbxfVR/r0RpAHrzVxDB3RyxvaIvJMyH7jEsbWniw19hG9MUBDb/rXQstr0sfL23uRgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=deFm5InC; arc=none smtp.client-ip=220.197.32.105
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 408ded083;
	Mon, 1 Jun 2026 14:51:12 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	nicolas.frattaroli@collabora.com,
	cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com,
	dmitry.baryshkov@oss.qualcomm.com,
	luca.ceresoli@bootlin.com,
	dianders@chromium.org,
	m.szyprowski@samsung.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v10 06/11] drm/rockchip: analogix_dp: Fix OF node reference leak via auto cleanup
Date: Mon,  1 Jun 2026 14:50:55 +0800
Message-Id: <20260601065100.1103873-7-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260601065100.1103873-1-damon.ding@rock-chips.com>
References: <20260601065100.1103873-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e81f363b403a8kunm111da268257e31
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCTBhDVk9LH0JLGBkfTUxNSVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=deFm5InC/687QsO2wD9nxR5fYYZQR36H5WyR7KJF0KeTUyaPkU8STH2VQz9pvWnj+2TE+JLIUqml7W+sBG58qJPg7nIH26eVRdsz0uOZkpOrBsfWXBoefa1qhQuMveCPVho4oNMRF65guiFZTdh8hDTp8lOke0EzfjvWwkH81kY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=yJZuY68i6MDKTHNn2ykBZ5f5HU1REKA2FFFIWObwSW8=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-305011-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[30];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,rock-chips.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,rock-chips.com:email,rock-chips.com:mid,rock-chips.com:dkim,endpoint.id:url]
X-Rspamd-Queue-Id: E258861C4BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Sashiko reported a reference leak in rockchip_dp_drm_encoder_enable(),
the of_get_child_by_name() function does not call of_node_put() in a
symmetrical way [1].

Fix the device node reference leak by using __free(device_node) to
automatically manage of_node_put() for all device nodes.

Fixes: 729f8eefdcad ("drm/rockchip: analogix_dp: Add support for RK3588")
Link: https://sashiko.dev/#/patchset/20260527024336.191433-1-damon.ding@rock-chips.com?part=5 #1
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index d2af5eb29dbb..b1ed25cefe5e 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -8,6 +8,7 @@
  *         Jeff Chen <jeff.chen@rock-chips.com>
  */
 
+#include <linux/cleanup.h>
 #include <linux/component.h>
 #include <linux/mfd/syscon.h>
 #include <linux/of.h>
@@ -206,7 +207,6 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
 	struct drm_crtc *crtc;
 	struct drm_crtc_state *old_crtc_state;
 	struct of_endpoint endpoint;
-	struct device_node *remote_port, *remote_port_parent;
 	char name[32];
 	u32 port_id;
 	int ret;
@@ -230,18 +230,22 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
 	if (ret < 0)
 		return;
 
-	remote_port_parent = of_graph_get_remote_port_parent(endpoint.local_node);
+	struct device_node *remote_port_parent __free(device_node) =
+		of_graph_get_remote_port_parent(endpoint.local_node);
 	if (remote_port_parent) {
-		if (of_get_child_by_name(remote_port_parent, "ports")) {
-			remote_port = of_graph_get_remote_port(endpoint.local_node);
+		struct device_node *ports __free(device_node) =
+			of_get_child_by_name(remote_port_parent, "ports");
+
+		if (ports) {
+			struct device_node *remote_port __free(device_node) =
+				of_graph_get_remote_port(endpoint.local_node);
+
 			of_property_read_u32(remote_port, "reg", &port_id);
-			of_node_put(remote_port);
 			sprintf(name, "%s vp%d", remote_port_parent->full_name, port_id);
 		} else {
 			sprintf(name, "%s %s",
 				remote_port_parent->full_name, endpoint.id ? "vopl" : "vopb");
 		}
-		of_node_put(remote_port_parent);
 
 		DRM_DEV_DEBUG(dp->dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
 	}
-- 
2.34.1


