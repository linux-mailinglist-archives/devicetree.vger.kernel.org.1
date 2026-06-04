Return-Path: <devicetree+bounces-306704-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ESBmKIpAIWr1BwEAu9opvQ
	(envelope-from <devicetree+bounces-306704-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 11:08:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF8363E5B4
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 11:08:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=rock-chips.com header.s=default header.b=XtPIphHO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306704-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306704-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=rock-chips.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB37D31563A4
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 08:59:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C37413FBEBC;
	Thu,  4 Jun 2026 08:58:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155104.qiye.163.com (mail-m155104.qiye.163.com [101.71.155.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3511E3FCB1A;
	Thu,  4 Jun 2026 08:58:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780563522; cv=none; b=qceWd3IESleFtvkn+zJtrgx7B3RGTpfMJTEEHclPDGyjl0cBUa+ftwUvVjfYAp060/pSicjNXwrgFXA/V3gGcOoRG3uqx+rKPYmrsaCkbNyR5jB2r/0RG5YMY/+zGsbEMXE97XUXJcfLaoRtF8vCMO7owkdUQ1pKZsfPxFbeJao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780563522; c=relaxed/simple;
	bh=v+ojtBgtrzF2pzzWaO31FV+dHjZc9i32szUx0/SAp/Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SwgjdRhdTR4bpJ3K/KbiqkTTloyG3NaCaylFbx1TRxMJtLWAT7PZGRk1BSr37oAzgZgb4UZKblskUyinXGUsxTS5H7akCU0nDnzSoJ71Ym6bjBMmMAN7cVmDx7Wbcv4jVggxtBCE0v4gjmIy1WLCXldBPqV2Of//y5eGjYLbkXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=XtPIphHO; arc=none smtp.client-ip=101.71.155.104
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 410f6c9e1;
	Thu, 4 Jun 2026 16:53:18 +0800 (GMT+08:00)
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
Subject: [PATCH v5 3/4] drm/bridge: analogix_dp: Add validation for samsung,lane-count property
Date: Thu,  4 Jun 2026 16:52:19 +0800
Message-Id: <20260604085220.2862986-4-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260604085220.2862986-1-damon.ding@rock-chips.com>
References: <20260604085220.2862986-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e91d6412703a8kunm52a01cd040991a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZGBkZVhoZHRoZGhoZT0kdTFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=XtPIphHOd4WY525UFfi7R/qd8U3GUq0V/Ubr7gaGIlz2bVDf7f/pMZllG+LxW4NF2ANz9s05SHwrfTo6kD492++QiWV5Ra8BKRB3tX4f3Puj8wJjhPvWRng2xd5xunDN7qmzajTkKlrX4cuSw4UNnZxbJE1+HDS+0zt+Zczn5uQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=vaAgRgvYs/017HC0NYlZCsyPo5zWTchBewVBuZZwOnY=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:nicolas.frattaroli@collabora.com,m:cristian.ciocaltea@collabora.com,m:sebastian.reichel@collabora.com,m:dmitry.baryshkov@oss.qualcomm.com,m:luca.ceresoli@bootlin.com,m:dianders@chromium.org,m:m.szyprowski@samsung.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:damon.ding@rock-chips.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	FORGED_SENDER(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-306704-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,rock-chips.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,bootlin.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,rock-chips.com:mid,rock-chips.com:dkim,rock-chips.com:from_mime,rock-chips.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EAF8363E5B4

Add validity check for samsung,lane-count to ensure DT-provided
lane count values are specification-compliant.

Suggested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v5:
- Apply DRM DP helper API to check the validity of DP lane count.
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 5dc07ff84cd3..9300b0db8785 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1238,6 +1238,7 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
 {
 	struct device_node *dp_node = dp->dev->of_node;
 	struct video_info *video_info = &dp->video_info;
+	int ret;
 
 	switch (dp->plat_data->dev_type) {
 	case RK3288_DP:
@@ -1261,8 +1262,11 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
 		 */
 		of_property_read_u32(dp_node, "samsung,link-rate",
 				     &video_info->max_link_rate);
-		of_property_read_u32(dp_node, "samsung,lane-count",
-				     &video_info->max_lane_count);
+		ret = of_property_read_u32(dp_node, "samsung,lane-count",
+					   &video_info->max_lane_count);
+		if (ret || !drm_dp_lane_count_is_valid(video_info->max_lane_count))
+			return dev_err_probe(dp->dev, ret ? ret : -EINVAL,
+					     "failed to parse samsung,lane-count\n");
 		break;
 	}
 
-- 
2.34.1


