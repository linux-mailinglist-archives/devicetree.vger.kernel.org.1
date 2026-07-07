Return-Path: <devicetree+bounces-321686-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id a4fAHbx8TGrPlAEAu9opvQ
	(envelope-from <devicetree+bounces-321686-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 06:12:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B156B7172F6
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 06:12:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=rock-chips.com header.s=default header.b=HnKnHiNO;
	dmarc=pass (policy=none) header.from=rock-chips.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321686-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321686-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9A092301C923
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 04:12:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C051535E940;
	Tue,  7 Jul 2026 04:12:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m121166.xmail.ntesmail.com (mail-m121166.xmail.ntesmail.com [115.236.121.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1712E0938;
	Tue,  7 Jul 2026 04:12:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783397561; cv=none; b=LMX4wmo6kd1SooapWCBZBzFvnq+4VIxVApsxH3+CA4xuG/+5Ayni/Rk2Ir+XMDTfHHMdn1dkZNEuie59YsyrvmfPBkglJnMUC9ng9d8XQsoEQ6xnIB3CXPS6NYC+rs/G1gaEQD38V+G1kmAbCzaCqVQDdsFR844fUGf9LjLnIyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783397561; c=relaxed/simple;
	bh=mXlEE7C+YU02/3LKiFTKcM+AAgotmqE2gZm5HSa4O2A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sk+P0xHlbU8IRk7Nk1GP6i2lHkWGKBadGfM6vCqvms8cCZBGszUMggw2tse2f4EZ/+luiNllZsqwcX1ZfyB/bWYxlP7g0o4dJabNcgFne4q4qeZkMumP0XDpCU4eBu2Mm232SIw9VnU5wWZLyvXsgpo4AA4DbMfeSYV+vxy3fN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=HnKnHiNO; arc=none smtp.client-ip=115.236.121.166
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 452ef5834;
	Tue, 7 Jul 2026 12:07:20 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v6 3/5] drm/bridge: analogix_dp: Restore mandatory samsung DP DT properties
Date: Tue,  7 Jul 2026 12:06:11 +0800
Message-Id: <20260707040613.1992841-4-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260707040613.1992841-1-damon.ding@rock-chips.com>
References: <20260707040613.1992841-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9f3ac24e1f03a8kunme8126cdf5bc82
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCTk5CVhkaS0wfTh9MGR9KQ1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=HnKnHiNOTsUxM+dxfpAcx2TEg8yub5Qdm+wdFlSS27gyVTEVWIO2435dU+RPGq+5trfGHwYBhrz5wnSebLCVdlk2Y7rJpvpIG2Wt6I+RzwW5v0LDCGwTqb0gtvlvjWdZEr3DaZFoJ7hlIcm7GKnEE+T0S4h5Q5vANtoBKEHoqQc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=ev+X5LsVCHkgDTjb1hIYO+fJr+3QfLEWEFzM2v/Z63Y=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:dmitry.baryshkov@oss.qualcomm.com,m:m.szyprowski@samsung.com,m:sebastian.reichel@collabora.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:damon.ding@rock-chips.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,rock-chips.com,sntech.de];
	FORGED_SENDER(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-321686-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,bootlin.com,oss.qualcomm.com,samsung.com,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,rock-chips.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,rock-chips.com:from_mime,rock-chips.com:email,rock-chips.com:mid,rock-chips.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B156B7172F6

Revert the change that made samsung,link-rate and samsung,lane-count
optional for Exynos DP. Add error checking to fail probe early if the
required DT properties are missing.

If these properties are zero, &link_train.link_rate and
&link_train.lane_count used in the subsequent link training flow will
also be zero, resulting in link training failure. Although all existing
Exynos DP DT nodes already contain these two properties, this potential
logic issue still needs to be fixed.

Fixes: 0d0abd894ead ("drm: bridge: analogix/dp: add max link rate and lane count limit for RK3288")
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 8d3d4a6e6ca2..5240efcd3861 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1244,6 +1244,7 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
 {
 	struct device_node *dp_node = dp->dev->of_node;
 	struct video_info *video_info = &dp->video_info;
+	u32 val;
 
 	switch (dp->plat_data->dev_type) {
 	case RK3288_DP:
@@ -1265,10 +1266,14 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
 		 * NOTE: those property parseing code is used for
 		 * providing backward compatibility for samsung platform.
 		 */
-		of_property_read_u32(dp_node, "samsung,link-rate",
-				     &video_info->max_link_rate);
-		of_property_read_u32(dp_node, "samsung,lane-count",
-				     &video_info->max_lane_count);
+		if (of_property_read_u32(dp_node, "samsung,link-rate", &val))
+			return dev_err_probe(dp->dev, -EINVAL,
+					     "Failed to get samsung,link-rate\n");
+		video_info->max_link_rate = val;
+		if (of_property_read_u32(dp_node, "samsung,lane-count", &val))
+			return dev_err_probe(dp->dev, -EINVAL,
+					     "Failed to get samsung,lane-count\n");
+		video_info->max_lane_count = val;
 		break;
 	}
 
-- 
2.34.1


