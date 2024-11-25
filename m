Return-Path: <devicetree+bounces-124402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FF89D8A7D
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 17:37:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 788DF28675B
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 16:37:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 800911B6CE3;
	Mon, 25 Nov 2024 16:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="MQ98TSnw"
X-Original-To: devicetree@vger.kernel.org
Received: from omta036.useast.a.cloudfilter.net (omta036.useast.a.cloudfilter.net [44.202.169.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB7F1B4F11
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 16:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732552665; cv=none; b=py8FuF92xwL1en9aF1uihPDNIMTmJ0tEa87V+CunUij+83tG1yibd2/bqM30NZ25B+DL5Smvafuwt/o28Cs8XsZRcVSbL7Cv38z/IHj3NlxIet/vt8YS1Pp/01jwfMGCvZ7y3T9Y3A0ant29SpKzb/HrT9Ineatu5PJRF/J3O+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732552665; c=relaxed/simple;
	bh=fOL6L5TlnzXNAKOAwbLxcTtHOaazgxdBU1plUoQ8Jzw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r4bjDJdwnTft8ILChMb8yoyHALKoCIP+JwGjjGrLYmQFNypfmEvo/kfUgQFY3he9WqKkHUiaqEjMj2ZezpdaYVVbLy24LZtU10lRh4bLR1J/ZKsLcpPST5IOJ00i71ah0y4v/6J5c7sdSaRx5qvAPiqQtQNlC2HRJdBCfD/Djak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=MQ98TSnw; arc=none smtp.client-ip=44.202.169.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5010a.ext.cloudfilter.net ([10.0.29.199])
	by cmsmtp with ESMTPS
	id Fbqmt3lmyiA19Fc5gtnvqi; Mon, 25 Nov 2024 16:37:36 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id Fc5ctlut0JgZJFc5dtOPoT; Mon, 25 Nov 2024 16:37:35 +0000
X-Authority-Analysis: v=2.4 cv=DfMRqOtW c=1 sm=1 tr=0 ts=6744a7cf
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=VlfZXiiP6vEA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=_CNdjClPJo_0AlPSAu4A:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=gwl6rW5/vPt5JBHz3XIzY0yjV5RcrGlmAAilgoFy4TQ=; b=MQ98TSnwomYCUUnXHh8qPIN7PN
	guT2WXlfQJF3o7wz9lwrLrmT2sV+0xMr5i3xi5ldOtzWvJcGplaTE7j7q63irxFNEZl7ZkoOoUQhH
	y/7XnyJvulT7fPPW1oWQBJId0FLENybgIbVOLUMOUUz/2+PG0pSLcLDzYW+Cq+9pRlw7If/vCedSf
	Mzv2J5oav3E+eMsHES6NP17G8tBKUSiYipwSJQE68hqftT9+2gJbH0i5ezbiW8m0zbt/bYOqnhjxO
	ETJ6ln+Z9rG8MypNNjF1bEtNGVAFzx/iN5mJrz/KLLltZqN/U1Um85s4Sfc/e7RCnTxZD94rp1czj
	uDlvU6vg==;
Received: from [122.165.245.213] (port=38110 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tFc5b-001iXQ-17;
	Mon, 25 Nov 2024 22:07:31 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Mon, 25 Nov 2024 22:07:04 +0530
Subject: [PATCH 2/2] drm/imagination: add reset control support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241125-pvr-reset-v1-2-b437b8052948@linumiz.com>
References: <20241125-pvr-reset-v1-0-b437b8052948@linumiz.com>
In-Reply-To: <20241125-pvr-reset-v1-0-b437b8052948@linumiz.com>
To: Frank Binns <frank.binns@imgtec.com>, 
 Matt Coster <matt.coster@imgtec.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Parthiban Nallathambi <parthiban@linumiz.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732552647; l=3446;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=fOL6L5TlnzXNAKOAwbLxcTtHOaazgxdBU1plUoQ8Jzw=;
 b=b5t26Ndgj56MR2TOf8LgFXM36QxrcEz5U7oErfYXAw6qN5v+DaZzO20DX4Zb3bWg+evkKxHFo
 9guvoLRCY90BWvRlawQIweJXlrhUKyTqVGlXyIyWttA0QtEzkD76Hkh
X-Developer-Key: i=parthiban@linumiz.com; a=ed25519;
 pk=PrcMZ/nwnHbeXNFUFUS833wF3DAX4hziDHEbBp1eNb8=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1tFc5b-001iXQ-17
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:38110
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 34
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfJl5VNAAHCVrlmRxY8xObVPvts1PWIkljnD9tDL2eYc73nc+F3q7DYJ+HRmRCYQTut7PQfhgJActGKgaVBtn121NlOGZFQ+HQ3puwEorHnr6DfihXVMm
 uB5qR8xUgCBQqMnq7ZpSOOCcVdVRYY+TqdlYEqMSJ/tNKROKNptsn80C+gdP4R0AqOgYJNh0UJUPNEptUAnc9OJU83SFEoxQO/o=

On some platforms like Allwinner A133 with GE8300 includes
reset control from reset control unit. Add reset control
optionally from the devicetree.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 drivers/gpu/drm/imagination/pvr_device.h |  8 ++++++++
 drivers/gpu/drm/imagination/pvr_drv.c    |  5 +++++
 drivers/gpu/drm/imagination/pvr_power.c  | 16 +++++++++++++++-
 3 files changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/imagination/pvr_device.h b/drivers/gpu/drm/imagination/pvr_device.h
index 6d0dfacb677b..21ec7dd64415 100644
--- a/drivers/gpu/drm/imagination/pvr_device.h
+++ b/drivers/gpu/drm/imagination/pvr_device.h
@@ -23,6 +23,7 @@
 #include <linux/kernel.h>
 #include <linux/math.h>
 #include <linux/mutex.h>
+#include <linux/reset.h>
 #include <linux/spinlock_types.h>
 #include <linux/timer.h>
 #include <linux/types.h>
@@ -131,6 +132,13 @@ struct pvr_device {
 	 */
 	struct clk *mem_clk;
 
+	/**
+	 * @reset: Optional reset control
+	 *
+	 * This may be used on some platforms to reset the GPU module/IP.
+	 */
+	struct reset_control *reset;
+
 	/** @irq: IRQ number. */
 	int irq;
 
diff --git a/drivers/gpu/drm/imagination/pvr_drv.c b/drivers/gpu/drm/imagination/pvr_drv.c
index fb17196e05f4..d9b918410ea9 100644
--- a/drivers/gpu/drm/imagination/pvr_drv.c
+++ b/drivers/gpu/drm/imagination/pvr_drv.c
@@ -36,6 +36,7 @@
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/reset.h>
 #include <linux/xarray.h>
 
 /**
@@ -1427,6 +1428,10 @@ pvr_probe(struct platform_device *plat_dev)
 	pm_runtime_use_autosuspend(&plat_dev->dev);
 	pvr_watchdog_init(pvr_dev);
 
+	pvr_dev->reset = devm_reset_control_get_optional_exclusive(&plat_dev->dev, "ahb");
+	if (PTR_ERR(pvr_dev->reset) == -EPROBE_DEFER)
+		return PTR_ERR(pvr_dev->reset);
+
 	err = pvr_device_init(pvr_dev);
 	if (err)
 		goto err_watchdog_fini;
diff --git a/drivers/gpu/drm/imagination/pvr_power.c b/drivers/gpu/drm/imagination/pvr_power.c
index ba7816fd28ec..a24ed85f36c7 100644
--- a/drivers/gpu/drm/imagination/pvr_power.c
+++ b/drivers/gpu/drm/imagination/pvr_power.c
@@ -15,6 +15,7 @@
 #include <linux/mutex.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/reset.h>
 #include <linux/timer.h>
 #include <linux/types.h>
 #include <linux/workqueue.h>
@@ -252,6 +253,9 @@ pvr_power_device_suspend(struct device *dev)
 	clk_disable_unprepare(pvr_dev->sys_clk);
 	clk_disable_unprepare(pvr_dev->core_clk);
 
+	if (!IS_ERR(pvr_dev->reset))
+		reset_control_assert(pvr_dev->reset);
+
 err_drm_dev_exit:
 	drm_dev_exit(idx);
 
@@ -270,9 +274,15 @@ pvr_power_device_resume(struct device *dev)
 	if (!drm_dev_enter(drm_dev, &idx))
 		return -EIO;
 
+	if (!IS_ERR(pvr_dev->reset)) {
+		err = reset_control_reset(pvr_dev->reset);
+		if (err)
+			goto err_drm_dev_exit;
+	}
+
 	err = clk_prepare_enable(pvr_dev->core_clk);
 	if (err)
-		goto err_drm_dev_exit;
+		goto err_reset_exit;
 
 	err = clk_prepare_enable(pvr_dev->sys_clk);
 	if (err)
@@ -301,6 +311,10 @@ pvr_power_device_resume(struct device *dev)
 err_core_clk_disable:
 	clk_disable_unprepare(pvr_dev->core_clk);
 
+err_reset_exit:
+	if (!IS_ERR(pvr_dev->reset))
+		reset_control_assert(pvr_dev->reset);
+
 err_drm_dev_exit:
 	drm_dev_exit(idx);
 

-- 
2.39.2


