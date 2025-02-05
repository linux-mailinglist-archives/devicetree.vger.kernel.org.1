Return-Path: <devicetree+bounces-143232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1660A289B4
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 12:51:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 168207A7FCA
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 11:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBA83229B38;
	Wed,  5 Feb 2025 11:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="vd2Wr/Of"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D830221D5AD;
	Wed,  5 Feb 2025 11:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738756274; cv=none; b=PKQDvOnQy/dD+9rOs15KsK57y7Lo7xOMrGGhhuV4fCZdVPsi1A60133Y4a9a4mNMAuU5jMnlF4bpW91kFHEWqMvqBSBC3KZ+O4HSNiRASALWpZ1Ydt8orYlfTvRVQnQ+zTaJ+aZ6kDgn1rqyX4y6G6pW0h7oIVZyWXj67oygkdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738756274; c=relaxed/simple;
	bh=dZXz4pMPrpn0TzsozhsZsqOV2je53Ztfm3Br8dQ2X2w=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=W41iAxRNXuvst84Hy6ICoOZH5vf8ZsxxBwL6grpMFenPXRLVnswG4A8nlQCm30R/uUyR5eQOevcLB3XloSdHTz+rz9wJHaTrBTHPjA6mh4BVzvu1TsJcc+SP4cRi5VCo9Gv/OPZtV3LRExyI6fYmqCRBU7uwQ+KHjp/g+C/XbS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=vd2Wr/Of; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 515Bol852591319
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 5 Feb 2025 05:50:47 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1738756247;
	bh=OaM5rfFZ68e3HGHbqVx4CWq+S7n+bCh/84iARh27Z8s=;
	h=From:To:Subject:Date:In-Reply-To:References;
	b=vd2Wr/Ofyd/J3tkzUwdPdMLJG86LDY+rTuIjJIRaaZ1MLNxfsccUGF+QvLY49pg2B
	 zwRX7KtYf8Ozuj/dptFFjsMkZ/FfA4oDzYJ9gk2Oh5keVi2cXuBrua0s5MLMTabMe5
	 M9Y95caWOOUOhEHT4MoM1KXGNJT1k1tZJRWRQeTg=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 515BolxH025164
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 5 Feb 2025 05:50:47 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 5
 Feb 2025 05:50:47 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 5 Feb 2025 05:50:46 -0600
Received: from hkshenoy.dhcp.ti.com (hkshenoy.dhcp.ti.com [172.24.227.96])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 515BoPCj043245;
	Wed, 5 Feb 2025 05:50:40 -0600
From: Harikrishna Shenoy <h-shenoy@ti.com>
To: <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>, <rfoss@kernel.org>,
        <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
        <jernej.skrabec@gmail.com>, <simona@ffwll.ch>,
        <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
        <tzimmermann@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <jani.nikula@intel.com>, <j-choudhary@ti.com>,
        <sui.jingfeng@linux.dev>, <viro@zeniv.linux.org.uk>,
        <r-ravikumar@ti.com>, <sjakhade@cadence.com>, <yamonkar@cadence.com>,
        <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 2/2] drm: bridge: cdns-mhdp8546: Add support for no-hpd
Date: Wed, 5 Feb 2025 17:20:25 +0530
Message-ID: <20250205115025.3133487-3-h-shenoy@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250205115025.3133487-1-h-shenoy@ti.com>
References: <20250205115025.3133487-1-h-shenoy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

From: Rahul T R <r-ravikumar@ti.com>

In J721S2 EVMs DP0 hpd is not connected to correct hpd pin on SOC, to 
handle such cases, Add support for "no-hpd" property in the device 
tree node to disable hpd.

Also change the log level for dpcd read failuers to debug, since 
framework retries 32 times for each read.

Adding timeout in to wait asynchronously for state to change to 
MHDP_HW_READY. With HPD the driver acts only on the interrupt, 
which is enabled only after both have happened.Here the driver waits 
in the attach until everything is ready, and then probes the DP 
given the HPD interrupt is broken.

Add update_link_status in case of no_hpd in cdns_mhdp_bridge_detect() to 
update status of mhdp->plugged via polling, as cdns_mhdp_bridge_detect() 
is being polled by drm framework.

Signed-off-by: Rahul T R <r-ravikumar@ti.com>
[j-choudhary@ti.com: Fix cdns_mhdp_attach hook for no-hpd usecase]
Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
[h-shenoy@ti.com: Updated mhdp->plugged status in
cdns_mhdp_bridge_detect for no-hpd usecase]
Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>

---
 .../drm/bridge/cadence/cdns-mhdp8546-core.c   | 54 ++++++++++++++++---
 .../drm/bridge/cadence/cdns-mhdp8546-core.h   |  1 +
 2 files changed, 49 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
index 6a121a2700d2..223370717ce8 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
@@ -53,6 +53,8 @@
 #include "cdns-mhdp8546-hdcp.h"
 #include "cdns-mhdp8546-j721e.h"
 
+static int cdns_mhdp_update_link_status(struct cdns_mhdp_device *mhdp);
+
 static void cdns_mhdp_bridge_hpd_enable(struct drm_bridge *bridge)
 {
 	struct cdns_mhdp_device *mhdp = bridge_to_mhdp(bridge);
@@ -768,7 +770,8 @@ static int cdns_mhdp_fw_activate(const struct firmware *fw,
 	 * MHDP_HW_STOPPED happens only due to driver removal when
 	 * bridge should already be detached.
 	 */
-	cdns_mhdp_bridge_hpd_enable(&mhdp->bridge);
+	if (!mhdp->no_hpd)
+		cdns_mhdp_bridge_hpd_enable(&mhdp->bridge);
 
 	spin_unlock(&mhdp->start_lock);
 
@@ -862,7 +865,7 @@ static ssize_t cdns_mhdp_transfer(struct drm_dp_aux *aux,
 		ret = cdns_mhdp_dpcd_read(mhdp, msg->address,
 					  msg->buffer, msg->size);
 		if (ret) {
-			dev_err(mhdp->dev,
+			dev_dbg(mhdp->dev,
 				"Failed to read DPCD addr %u\n",
 				msg->address);
 
@@ -1752,8 +1755,22 @@ static int cdns_mhdp_attach(struct drm_bridge *bridge,
 
 	spin_unlock(&mhdp->start_lock);
 
+	if (mhdp->no_hpd) {
+		ret = wait_event_timeout(mhdp->fw_load_wq,
+					 mhdp->hw_state == MHDP_HW_READY,
+					 msecs_to_jiffies(100));
+		if (ret == 0) {
+			dev_err(mhdp->dev, "%s: Timeout waiting for fw loading\n",
+				__func__);
+			return -ETIMEDOUT;
+		}
+
+		cdns_mhdp_update_link_status(mhdp);
+		return 0;
+	}
+
 	/* Enable SW event interrupts */
-	if (hw_ready)
+	if (hw_ready && !mhdp->no_hpd)
 		cdns_mhdp_bridge_hpd_enable(bridge);
 
 	return 0;
@@ -2217,6 +2234,19 @@ static enum drm_connector_status cdns_mhdp_bridge_detect(struct drm_bridge *brid
 {
 	struct cdns_mhdp_device *mhdp = bridge_to_mhdp(bridge);
 
+	if (mhdp->no_hpd) {
+		int ret = cdns_mhdp_update_link_status(mhdp);
+
+		if (mhdp->connector.dev) {
+			if (ret < 0)
+				schedule_work(&mhdp->modeset_retry_work);
+			else
+				drm_kms_helper_hotplug_event(mhdp->bridge.dev);
+		} else {
+			drm_bridge_hpd_notify(&mhdp->bridge, cdns_mhdp_detect(mhdp));
+		}
+	}
+
 	return cdns_mhdp_detect(mhdp);
 }
 
@@ -2284,7 +2314,16 @@ static int cdns_mhdp_update_link_status(struct cdns_mhdp_device *mhdp)
 
 	mutex_lock(&mhdp->link_mutex);
 
-	mhdp->plugged = cdns_mhdp_detect_hpd(mhdp, &hpd_pulse);
+	if (mhdp->no_hpd) {
+		ret = drm_dp_dpcd_read_link_status(&mhdp->aux, status);
+		hpd_pulse = false;
+		if (ret < 0)
+			mhdp->plugged = false;
+		else
+			mhdp->plugged = true;
+	} else {
+		mhdp->plugged = cdns_mhdp_detect_hpd(mhdp, &hpd_pulse);
+	}
 
 	if (!mhdp->plugged) {
 		cdns_mhdp_link_down(mhdp);
@@ -2481,6 +2520,8 @@ static int cdns_mhdp_probe(struct platform_device *pdev)
 	mhdp->aux.dev = dev;
 	mhdp->aux.transfer = cdns_mhdp_transfer;
 
+	mhdp->no_hpd = of_property_read_bool(dev->of_node, "cdns,no-hpd");
+
 	mhdp->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mhdp->regs)) {
 		dev_err(dev, "Failed to get memory resource\n");
@@ -2556,8 +2597,9 @@ static int cdns_mhdp_probe(struct platform_device *pdev)
 
 	mhdp->bridge.of_node = pdev->dev.of_node;
 	mhdp->bridge.funcs = &cdns_mhdp_bridge_funcs;
-	mhdp->bridge.ops = DRM_BRIDGE_OP_DETECT | DRM_BRIDGE_OP_EDID |
-			   DRM_BRIDGE_OP_HPD;
+	mhdp->bridge.ops = DRM_BRIDGE_OP_DETECT | DRM_BRIDGE_OP_EDID;
+	if (!mhdp->no_hpd)
+		mhdp->bridge.ops |= DRM_BRIDGE_OP_HPD;
 	mhdp->bridge.type = DRM_MODE_CONNECTOR_DisplayPort;
 
 	ret = phy_init(mhdp->phy);
diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.h b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.h
index bad2fc0c7306..48517193cf0b 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.h
+++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.h
@@ -388,6 +388,7 @@ struct cdns_mhdp_device {
 
 	bool link_up;
 	bool plugged;
+	bool no_hpd;
 
 	/*
 	 * "start_lock" protects the access to bridge_attached and
-- 
2.34.1


