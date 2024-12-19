Return-Path: <devicetree+bounces-132613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E479F799F
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 11:29:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80A3D188EB78
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 10:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8413222570;
	Thu, 19 Dec 2024 10:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Dto21Bsc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32115.qiye.163.com (mail-m32115.qiye.163.com [220.197.32.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5B0222567;
	Thu, 19 Dec 2024 10:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.115
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734604145; cv=none; b=alZR8KJNtlte8du2wUMlDUSFM61njjyLZ4D4zN02DrKHnV9VbxeDs4kx4hxmTJxzcKsiLX73wNNpuPGKEQfiY1JUqSNfI0GXTft2y4adCqIn1rTVHUhusi0e3S1mjZXdmvYr7s0pgTaJHSu13snjr3IRirOWCx0+K+WUFSZpw2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734604145; c=relaxed/simple;
	bh=2tQOzkgGs7K73+8myCOo0/uR7o9t6CnnKuH3wcHA1Dw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WOeZ8SJ4W6jvoZQUgGOI5se68IbkUogvRystgET0X+rPmPDSoAkLkcCbjEaT092XNQc7yI31XKrfKB0YJaE2gpCgZEby7gNmV8/3DfEaW/zxDNQBJtwsl8Q7SY9UH2rkGAG5xKjfHAkeckC93Qpm9PdyS5c0T0BfA5QPNgHqm3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Dto21Bsc; arc=none smtp.client-ip=220.197.32.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 633dd674;
	Thu, 19 Dec 2024 16:06:37 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	vkoul@kernel.org,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	l.stach@pengutronix.de,
	andy.yan@rock-chips.com,
	hjc@rock-chips.com,
	algea.cao@rock-chips.com,
	kever.yang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v3 09/15] drm/bridge: analogix_dp: Add support to get panel from the DP AUX bus
Date: Thu, 19 Dec 2024 16:05:58 +0800
Message-Id: <20241219080604.1423600-10-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241219080604.1423600-1-damon.ding@rock-chips.com>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk8ZGFZNSUpDTR0eTB1JS0lWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93ddf454c003a3kunm633dd674
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6K1E6CSo5CTISCBUMTDkeDDoz
	TTUKFB5VSlVKTEhPTkJOTkJCSklKVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJS0pINwY+
DKIM-Signature:a=rsa-sha256;
	b=Dto21BscgW0101JfwaimT5Svfhl2CPBIYvaS6Fky4ktCusr5eblGNzB/q0xXOuzouQdDnqOYyFNK7F55dxp9SOOD9gsnLh/O+NAHxkGCN3rrzWlVUxg7WrrvrRGZHh4zAy57FQCJR6Byv4ixaVHYNcc1cnI/wElgXIuIOcyTFNA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=ls2SQ381Ul5xwwUhCAde3y5OqsDlvqQOV6lShYVjzW0=;
	h=date:mime-version:subject:message-id:from;

If the panel can not be found in the beginning of rockchip_dp_probe()
using the platform bus, we can still try to find it in analogix_dp_bind()
through the DP AUX bus after the &analogix_dp_device.aux has been
initialized.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../drm/bridge/analogix/analogix_dp_core.c    | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 9429c50cc1bc..eae02819e3bb 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -19,12 +19,14 @@
 #include <linux/platform_device.h>
 
 #include <drm/bridge/analogix_dp.h>
+#include <drm/display/drm_dp_aux_bus.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_of.h>
 #include <drm/drm_panel.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
@@ -1733,6 +1735,23 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
 		goto err_disable_pm_runtime;
 	}
 
+	if (!dp->plat_data->panel) {
+		/*
+		 * If the edp-panel module has not yet been initialized, the
+		 * devm_of_dp_aux_populate_bus() function will return 0 and
+		 * the done_probing() callback will not be called either.
+		 * Consequently, the panel will never be found.
+		 *
+		 * This is the reason why we do not use the done_probing()
+		 * callback and do not check the reture value here.
+		 */
+		devm_of_dp_aux_populate_bus(&dp->aux, NULL);
+		ret = drm_of_find_panel_or_bridge(dp->dev->of_node, 1, 0,
+						  &dp->plat_data->panel, NULL);
+		if (ret)
+			goto err_unregister_aux;
+	}
+
 	ret = analogix_dp_create_bridge(drm_dev, dp);
 	if (ret) {
 		DRM_ERROR("failed to create bridge (%d)\n", ret);
-- 
2.34.1


