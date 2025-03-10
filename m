Return-Path: <devicetree+bounces-156107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9FAA5933A
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 12:58:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17B5B3A9E87
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 11:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D85B22655B;
	Mon, 10 Mar 2025 11:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="cx/5/rIf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49211.qiye.163.com (mail-m49211.qiye.163.com [45.254.49.211])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D5C2253E9
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 11:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.211
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741607868; cv=none; b=E8AakwWVYXdlWWA1XZ1Zikk5fCBW80vleaJTyu36k5OeFZTrdUR8mdmRSOVBjov6ypIVY5plTRbcERzkjA7F2l/raTvPQgw9ZaRdAGQFOng1SXyqQ3djszofEVHD8Dr42EG9YoN2NM2EQJnm94pyNme8cohmOrmpWXFC0aJ2khg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741607868; c=relaxed/simple;
	bh=aD06Fbbe9EMC6Hx8Zi16tcAO/wSri7Ge/ZU2T6oRbwk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WbXGsUaUJdRoq/3COrzsevKpgEERPb5bssL+v1ZVtdHeg7PzDykK/Hbp1ykPAgEbZjJBC6d+wVdm1GiRJglWz3BeeG6JmVjPyCzXCDgXNJP3dqJuH/PgIQyEehOkspJzKOw9AAfqIuRqOIjVUIkqku72VZmBjJBzwKxEqsSa1pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=cx/5/rIf; arc=none smtp.client-ip=45.254.49.211
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id dc18826a;
	Mon, 10 Mar 2025 18:42:10 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: andy.yan@rock-chips.com,
	hjc@rock-chips.com,
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
	rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	dmitry.baryshkov@linaro.org,
	dianders@chromium.org,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	boris.brezillon@collabora.com,
	l.stach@pengutronix.de,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v8 05/13] drm/bridge: analogix_dp: Support to get &analogix_dp_device.plat_data and &analogix_dp_device.aux
Date: Mon, 10 Mar 2025 18:41:06 +0800
Message-Id: <20250310104114.2608063-6-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250310104114.2608063-1-damon.ding@rock-chips.com>
References: <20250310104114.2608063-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0pDH1YeGhpOS0xOSh5MHkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCS0
	NVSktLVUpCWQY+
X-HM-Tid: 0a957fa5db1303a3kunmdc18826a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NzY6IQw4NzJOSSMRMzkSPShL
	UTZPFAlVSlVKTE9KTUtISEhJQk1IVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJSEhJNwY+
DKIM-Signature:a=rsa-sha256;
	b=cx/5/rIf8YViD47f5CCZTK5rwAEg9fCuUgxCgxRPiT7Re0DJYrb/E7fOSXVCOlOQDscOtEkimyXIdtNJkLW4XWn5L20Vm/4aJHuVN4nYvlxLZdV8knI+f+NZGIF8DeW3tzt4fiDPpzS2yEeO0Iu4rqu7in+mxVX7uzElLw0WAzQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=WiJhY8PG8AgEQhlaFruZbMXxvourhl/iCjB/6RJP8bw=;
	h=date:mime-version:subject:message-id:from;

Add two new functions: one to find &analogix_dp_device.plat_data via
&drm_dp_aux, and the other to get &analogix_dp_device.aux. Both of them
serve for the function of getting panel from DP AUX bus, which is why
they are included in a single commit.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v7:
- Use the forward-declare struct drm_dp_aux instead of including the
  relevant header file.
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 14 ++++++++++++++
 include/drm/bridge/analogix_dp.h                   |  4 ++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index d5bbc8843a56..dd91760c4b1c 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1764,6 +1764,20 @@ int analogix_dp_stop_crc(struct drm_connector *connector)
 }
 EXPORT_SYMBOL_GPL(analogix_dp_stop_crc);
 
+struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct drm_dp_aux *aux)
+{
+	struct analogix_dp_device *dp = to_dp(aux);
+
+	return dp->plat_data;
+}
+EXPORT_SYMBOL_GPL(analogix_dp_aux_to_plat_data);
+
+struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp)
+{
+	return &dp->aux;
+}
+EXPORT_SYMBOL_GPL(analogix_dp_get_aux);
+
 MODULE_AUTHOR("Jingoo Han <jg1.han@samsung.com>");
 MODULE_DESCRIPTION("Analogix DP Core Driver");
 MODULE_LICENSE("GPL v2");
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 6002c5666031..e19b0bbc57d6 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -10,6 +10,7 @@
 #include <drm/drm_crtc.h>
 
 struct analogix_dp_device;
+struct drm_dp_aux;
 
 enum analogix_dp_devtype {
 	EXYNOS_DP,
@@ -48,4 +49,7 @@ void analogix_dp_unbind(struct analogix_dp_device *dp);
 int analogix_dp_start_crc(struct drm_connector *connector);
 int analogix_dp_stop_crc(struct drm_connector *connector);
 
+struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct drm_dp_aux *aux);
+struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp);
+
 #endif /* _ANALOGIX_DP_H_ */
-- 
2.34.1


