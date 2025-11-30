Return-Path: <devicetree+bounces-243192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C30FC95051
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 15:39:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5A6CD4E02C9
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 14:39:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9547622F16E;
	Sun, 30 Nov 2025 14:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=foxmail.com header.i=@foxmail.com header.b="GLVbrjQO"
X-Original-To: devicetree@vger.kernel.org
Received: from out162-62-58-216.mail.qq.com (out162-62-58-216.mail.qq.com [162.62.58.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518AA134AB;
	Sun, 30 Nov 2025 14:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.62.58.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764513571; cv=none; b=G7wnss+Jdt7LcxgkI+a0zrDre9jQXw9iXq/XvxGZnH3n1sHiVf7bw8AjlqyhLo38HSbiR+ll0t4xtmexaiBB9DlXcEDCJYrajVDtWF1ompiL8YeXvRVSXo55n2THj62ANJ2QmwsE5mRP8sS7i0k7HH9g94JtKa43XlzRFx983pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764513571; c=relaxed/simple;
	bh=xv8zK0OudJEaUWvg6u2mwbN6RlQ2UBl0845DmfjVV00=;
	h=Message-ID:From:To:Cc:Subject:Date:MIME-Version; b=a2W0IWbkUjQGOWf1vKIjXlTyT67uKjO2Qj/gdmfzEQXHpDT/z47awu6YN7BQjCeO6NH1g4+Xu5Bn0mTo1LePNbsY3nXWg8apnv88OCeZ8XPhLjEbDOuqPk+lV70sbWeQgPEUhNR8MFnPP53k8Vqs/VR34yEbMdwItFkOjwhDc1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foxmail.com; spf=pass smtp.mailfrom=foxmail.com; dkim=pass (1024-bit key) header.d=foxmail.com header.i=@foxmail.com header.b=GLVbrjQO; arc=none smtp.client-ip=162.62.58.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foxmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foxmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
	s=s201512; t=1764513558;
	bh=A46fsy9EF7CRu4Y9aOSl3UqvkUzQSeDu2M6rkC2ypzI=;
	h=From:To:Cc:Subject:Date;
	b=GLVbrjQOQ/peLay5rmuKY+cCcchzj5ENyg5VC/Q/JRvLNAJjr+TFHHiWGO8Wc6TV+
	 MLq3NejZtKt8gctoXzg+FMWqGlTWmRXuMmm6EVeFZJGlYMoC7/J7bBL8AV7DIS2iWG
	 5ummd6IJA4SXqPzmMJxBFj3nm/ErdkE7b7vGBncU=
Received: from localhost.localdomain ([171.223.167.52])
	by newxmesmtplogicsvrszc41-0.qq.com (NewEsmtp) with SMTP
	id 8F99D8DB; Sun, 30 Nov 2025 22:35:57 +0800
X-QQ-mid: xmsmtpt1764513357tlam1l2ua
Message-ID: <tencent_089F38E3B77E2565C35E98C1ADD54D56140A@qq.com>
X-QQ-XMAILINFO: MhK4DKsBP06itfk018mStrt39NrLISviC6cGkZ64XtlblVxB/hMB2Xr3uQTs6G
	 v5F9zvYal7kMGUTP8aLh1/dalvt17Ezjm6NWX3OvuVN02CUQeESlKxwlh599trcy4V4odcKt1zzO
	 cU4Zceq3Yi5dtZnp+U8Cz2bdMZQ2DhdR5c/dFgbUPx4cia7womNPk/NQSoBroJYUlr9yEgs9ONrd
	 bEOm11fbK5tF4TOs2BHBu7nNA+dXpOihaaFQFXWTVE7i2JDz0qpT8O0VVLJLjrRZ36n7VUb1EAXt
	 wVetPoyqB3ycvDJoPBzpkNKRy5jxs7rs2Zhdrgs5y1pKetKOOmZXNdx+qOl0vZpTza5gNmkOAnck
	 48cMc+oHyEef09lHTx3ByACHljucTBlJWnAVYEOisu1EozfHb5l0EKrprhgxspw8SK6hpPCBrDLC
	 sfuHt/8m4KDVDXLov0027vYqi83a719otF42AZxBhFWkQnW0G84lg0b6OBaSRzxkcr5Oapatc7Ty
	 LKSPBEiZR1omeIXXFiIWEpD3jWLU9GhcBci1+yF1vibQLHjkMjf1VEY3FPWBvizwsaZGnAXY0rMy
	 v7ZZZQ6Y/AHPAxmK2xphvTbSEyAftkW2NVytW16mxFBD2ic/ciSSkW/+0qj6uA6MchGrW6nxfx1V
	 y8a71UJhj+vyrRrJ9XGxLSDkE3D/BbIQpFANGMDI6J2ZB9QTBwPo2Hn0z6rbfvYCZA9FeuhMv1ep
	 LWngB/P087wbaRLWb0kQOG45i+eRfruTs4cgbp2n3a+8tmtCPfa+BniupvkP4BmHL7sDKElxRSjU
	 oosNqX8GTSFX07L97oHRlYFV2jbKYJ5E/XPnT6ys380dQ3qpI/348LrH/3WH3GmA7XjWX+k416lx
	 FEa7z633ZXhEuGFVGHLfHFd08kF8yN2AmYxLzzDciHkNd9Zk70XSaxnVTze3dRYlhKbJDDfL0kx1
	 ivb5PxjFxhDplPp6SIYekw9tmHhT1FocwnCuzAudTueMQUdnbUQ90+IvUdE/UvtoEWpHnqAHYYLn
	 3CZD4lsO6lGGssG8Rtzvl2imFtLEJT4QGHuBoic2m3uTxIwFj22sx3FfH7fwqX1JNs1+o1mL66ck
	 IEiBWF6+/xobB5TbU=
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
From: Renjun Wang <renjunw0@foxmail.com>
To: neil.armstrong@linaro.org,
	jessica.zhang@oss.qualcomm.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Renjun Wang <renjunw0@foxmail.com>
Subject: [PATCH 2/2] drm/panel: simple: Add HannStar HSD156JUW2
Date: Sun, 30 Nov 2025 22:35:52 +0800
X-OQ-MSGID: <20251130143552.81331-1-renjunw0@foxmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Hannstar HSD156JUW2 15.6" FHD (1920x1080) TFT LCD panel support.

Signed-off-by: Renjun Wang <renjunw0@foxmail.com>
---
 drivers/gpu/drm/panel/panel-simple.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 0019de93be1b..057ae6735806 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2509,6 +2509,31 @@ static const struct panel_desc hannstar_hsd101pww2 = {
 	.connector_type = DRM_MODE_CONNECTOR_LVDS,
 };
 
+static const struct display_timing hannstar_hsd156juw2_timing = {
+	.pixelclock = { 66000000, 72800000, 80500000 },
+	.hactive = { 1920, 1920, 1920 },
+	.hfront_porch = { 20, 30, 30 },
+	.hback_porch = { 20, 30, 30 },
+	.hsync_len = { 50, 60, 90 },
+	.vactive = { 1080, 1080, 1080 },
+	.vfront_porch = { 1, 2, 4 },
+	.vback_porch = { 1, 2, 4 },
+	.vsync_len = { 3, 40, 80 },
+	.flags = DISPLAY_FLAGS_DE_HIGH,
+};
+
+static const struct panel_desc hannstar_hsd156juw2 = {
+	.timings = &hannstar_hsd156juw2_timing,
+	.num_timings = 1,
+	.bpc = 8,
+	.size = {
+		.width = 344,
+		.height = 194,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct drm_display_mode hitachi_tx23d38vm0caa_mode = {
 	.clock = 33333,
 	.hdisplay = 800,
@@ -5166,6 +5191,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "hannstar,hsd101pww2",
 		.data = &hannstar_hsd101pww2,
+	}, {
+		.compatible = "hannstar,hsd156juw2",
+		.data = &hannstar_hsd156juw2,
 	}, {
 		.compatible = "hit,tx23d38vm0caa",
 		.data = &hitachi_tx23d38vm0caa
-- 
2.39.5


