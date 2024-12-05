Return-Path: <devicetree+bounces-127377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C0ABA9E546B
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:47:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53D0B18814E4
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14BF6214A64;
	Thu,  5 Dec 2024 11:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="oa0O4teE"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0D92144AC;
	Thu,  5 Dec 2024 11:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733399150; cv=none; b=rvnZ9dLT3Btw7/SwITFm7ekFOaVY6JXSsYP/vQjEDWodTPrtqJzHaaqFby9njnVIy5QI60/x9YdQmi8J3DrUt7fNkwyJY2/GgN/79f1gicu7VsK5WMOHqSRunH/7yQ/vNya3v3w/lRofkbq5ket20Lvet8fbVcjic6Z639OADgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733399150; c=relaxed/simple;
	bh=SzztLwf8myNj1TnfPKgZIYpbPazXjQOJqjWCAT+PtXc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uX3KDt7HD+m6MgqhyKYn3sD0N68LWTd3Drq8hljN+Trr2/C/pnBQz0y9YWi0XfeDyfawLijb/j8jUmL70IhHIYkOg3pg0qp98CkukKCX619dA8Cx/MBQ1VqeQSowmarZAUFK9dXVPQ8aL/Qh1RGPtokT0GZgCKsqMO/N0+OVIhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=oa0O4teE; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733399146;
	bh=SzztLwf8myNj1TnfPKgZIYpbPazXjQOJqjWCAT+PtXc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oa0O4teEMFcH1nOLENbAqBEga6tLlIjsrqV6G4lht4LaQWkT2JzgOtHqXsg69rgkh
	 rkY/NAje4tTDs8oBh+A2V1KsAwLcKCs66t+PATWApFNBaIDzPDGpK90HEXIp082CYs
	 uCTOwJyc8kcwZraCKOvMc7ysElymEmQA6ySS2tpDbzzu5/8cG3A00Y12bgtEsK7N99
	 S7mshVV48i7Rq0kAvFceWEG3vnRNAB0emfcJGyEqGOZ6bAIpVBjdHd7HMP7BFlSZOg
	 kLQcjjCiP4ItAh115M05x3QhOkzx+sPEtm6QzWtt8Yjvqtu8sjA68pLkJZO8UWz+tv
	 /NFR9Pz7kYLAg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7717F17E367E;
	Thu,  5 Dec 2024 12:45:45 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunkuang.hu@kernel.org
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com,
	jie.qiu@mediatek.com,
	junzhi.zhao@mediatek.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH v2 09/15] drm/mediatek: mtk_hdmi_ddc: Switch to register as module_platform_driver
Date: Thu,  5 Dec 2024 12:45:11 +0100
Message-ID: <20241205114518.53527-10-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241205114518.53527-1-angelogioacchino.delregno@collabora.com>
References: <20241205114518.53527-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In preparation for splitting out the common bits from the HDMI
driver, change the mtk_cec driver from being registered from the
HDMI driver itself to be a module_platform_driver of its own.

With this change, there are no more users of the mtk_hdmi.h header
so, while at it, also remove it.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c     |  2 --
 drivers/gpu/drm/mediatek/mtk_hdmi.h     | 13 -------------
 drivers/gpu/drm/mediatek/mtk_hdmi_ddc.c |  4 ++--
 3 files changed, 2 insertions(+), 17 deletions(-)
 delete mode 100644 drivers/gpu/drm/mediatek/mtk_hdmi.h

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index 73ab88015d7f..bacb1a5289cb 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -31,7 +31,6 @@
 #include <drm/drm_probe_helper.h>
 
 #include "mtk_cec.h"
-#include "mtk_hdmi.h"
 #include "mtk_hdmi_regs.h"
 
 #define NCTS_BYTES	7
@@ -1804,7 +1803,6 @@ static struct platform_driver mtk_hdmi_driver = {
 };
 
 static struct platform_driver * const mtk_hdmi_drivers[] = {
-	&mtk_hdmi_ddc_driver,
 	&mtk_hdmi_driver,
 };
 
diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.h b/drivers/gpu/drm/mediatek/mtk_hdmi.h
deleted file mode 100644
index e40bc4651995..000000000000
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.h
+++ /dev/null
@@ -1,13 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (c) 2014 MediaTek Inc.
- * Author: Jie Qiu <jie.qiu@mediatek.com>
- */
-#ifndef _MTK_HDMI_CTRL_H
-#define _MTK_HDMI_CTRL_H
-
-struct platform_driver;
-
-extern struct platform_driver mtk_hdmi_ddc_driver;
-
-#endif /* _MTK_HDMI_CTRL_H */
diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_ddc.c b/drivers/gpu/drm/mediatek/mtk_hdmi_ddc.c
index 8e60631d4cd2..6358e1af69b4 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi_ddc.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi_ddc.c
@@ -20,7 +20,6 @@
 #include <linux/of_platform.h>
 
 #include "mtk_drm_drv.h"
-#include "mtk_hdmi.h"
 
 #define SIF1_CLOK		(288)
 #define DDC_DDCMCTL0		(0x0)
@@ -331,12 +330,13 @@ MODULE_DEVICE_TABLE(of, mtk_hdmi_ddc_match);
 
 struct platform_driver mtk_hdmi_ddc_driver = {
 	.probe = mtk_hdmi_ddc_probe,
-	.remove_new = mtk_hdmi_ddc_remove,
+	.remove = mtk_hdmi_ddc_remove,
 	.driver = {
 		.name = "mediatek-hdmi-ddc",
 		.of_match_table = mtk_hdmi_ddc_match,
 	},
 };
+module_platform_driver(mtk_hdmi_ddc_driver);
 
 MODULE_AUTHOR("Jie Qiu <jie.qiu@mediatek.com>");
 MODULE_DESCRIPTION("MediaTek HDMI DDC Driver");
-- 
2.47.0


