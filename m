Return-Path: <devicetree+bounces-263193-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNvrINE+hWme+gMAu9opvQ
	(envelope-from <devicetree+bounces-263193-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 02:07:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E876CF8D7A
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 02:07:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 110C4303DD35
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 01:06:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80BCE23C8AE;
	Fri,  6 Feb 2026 01:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="jk1hgtu6"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71479231A3B;
	Fri,  6 Feb 2026 01:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770339960; cv=none; b=HSrmn1c/PZJJUKK3efROa05GJ+fawJHb2e4iEOoXl5mf4oPAQ0hoDFwigpndUOX0mHAl8eq0QRPKcTTo4f40G/N62+JQTOi42pDLRkcmfiTmdDpxjRPBHmrL5waMhf+n4b9JgzzfopqPIcQ1ZoxalOUATWEQX6PTFb4xdX/EvOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770339960; c=relaxed/simple;
	bh=tCJvn/yb7fydJKssT20W89HEsJlwI6r0dEPBpe2E4ws=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Hl+/taH5s48NN9h+gFwTmbVp5LRC3L/h40PN2aSDQOkXC8mxiuN6rw24FLSjxhH03xZMQUvsOGGHu5z4vmgVaeNqYQALHjIlg1PbVOt7uI9kqsGymkOWA7lYu/Q9wf5PpBhvCmyOrdDT9KmqyN0IOTtUZFADll7d0HsN66xMOII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=jk1hgtu6; arc=none smtp.client-ip=220.197.31.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=ih
	ep3YWtnZq0iNOxVl6wg5/61ITTjNTIu5bF6P4+mMI=; b=jk1hgtu6MovS27oist
	6nJBq5oGtTjwbJu+XN/JleJ2CT55TIaqlMyRVHcxXcPklO+cGTjAXeDT1tTV0Gb1
	jcSCa5AsSv9rFx7vPV56VBMUWqOCJysdDO3leLTCRAJIQlJJ7rhocZ5ssrUvWXRx
	AzVLZzlIuZ0t4hufGJJakgPD4=
Received: from ProDesk-480.. (unknown [])
	by gzsmtp2 (Coremail) with SMTP id PSgvCgD3_+0XPoVpQ5VfQQ--.20291S4;
	Fri, 06 Feb 2026 09:04:30 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: dmitry.baryshkov@oss.qualcomm.com,
	heiko@sntech.de
Cc: alchark@gmail.com,
	andrzej.hajda@intel.com,
	conor+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	airlied@gmail.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	kever.yang@rock-chips.com,
	krzk+dt@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	nicolas.frattaroli@collabora.com,
	robh@kernel.org,
	rfoss@kernel.org,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	simona@ffwll.ch,
	tzimmermann@suse.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 2/5] drm/bridge: synopsys: dw-dp: Set pixel mode by platform data
Date: Fri,  6 Feb 2026 09:04:12 +0800
Message-ID: <20260206010421.443605-3-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260206010421.443605-1-andyshrk@163.com>
References: <20260206010421.443605-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:PSgvCgD3_+0XPoVpQ5VfQQ--.20291S4
X-Coremail-Antispam: 1Uf129KBjvJXoWxuF4UXFyDtF15CF4fZw1rXrb_yoWrCr48pF
	WxJFW5KrWkKF4Y9a48ArWkCFn0yw1q9ayxJa1xGw4Ik34fKF95Xr9Ivr15Wrn7XF9xur13
	CrsrJrW8ZF1jkrUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jvUDXUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7R5SsGmFPh5tegAA3K
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[163.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[163.com:s=s110527];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[163.com];
	TAGGED_FROM(0.00)[bounces-263193-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2600:3c0a:e001:db::12fc:5321:from];
	DKIM_TRACE(0.00)[163.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andyshrk@163.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,kernel.org,collabora.com,kwiboo.se,rock-chips.com,ideasonboard.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org,lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,rock-chips.com:email]
X-Rspamd-Queue-Id: E876CF8D7A
X-Rspamd-Action: no action

From: Andy Yan <andy.yan@rock-chips.com>

In the implementation and integration of the SoC, the DW DisplayPort
hardware block can be configured to work in single, dual, quad pixel
mode on differnt platforms, so make the pixel mode set by plat_data
to support the upcoming rk3576 variant.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Tested-by: Sebastian Reichel <sebastian.reichel@collabora.com>

---

(no changes since v2)

Changes in v2:
- Commit message improve: The pixel mode is determined during the IC
  integration stage

 drivers/gpu/drm/bridge/synopsys/dw-dp.c   |  8 +-------
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 19 +++++++++++++++----
 include/drm/bridge/dw_dp.h                |  7 +++++++
 3 files changed, 23 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
index 82aaf74e1bc0..eccf6299bdb7 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -352,12 +352,6 @@ enum {
 	DW_DP_YCBCR420_16BIT,
 };
 
-enum {
-	DW_DP_MP_SINGLE_PIXEL,
-	DW_DP_MP_DUAL_PIXEL,
-	DW_DP_MP_QUAD_PIXEL,
-};
-
 enum {
 	DW_DP_SDP_VERTICAL_INTERVAL = BIT(0),
 	DW_DP_SDP_HORIZONTAL_INTERVAL = BIT(1),
@@ -1984,7 +1978,7 @@ struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
 		return ERR_CAST(dp);
 
 	dp->dev = dev;
-	dp->pixel_mode = DW_DP_MP_QUAD_PIXEL;
+	dp->pixel_mode = plat_data->pixel_mode;
 
 	dp->plat_data.max_link_rate = plat_data->max_link_rate;
 	bridge = &dp->bridge;
diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
index 25ab4e46301e..89d614d53596 100644
--- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
@@ -75,7 +75,7 @@ static const struct drm_encoder_helper_funcs dw_dp_encoder_helper_funcs = {
 static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
-	struct dw_dp_plat_data plat_data;
+	const struct dw_dp_plat_data *plat_data;
 	struct drm_device *drm_dev = data;
 	struct rockchip_dw_dp *dp;
 	struct drm_encoder *encoder;
@@ -89,7 +89,10 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
 	dp->dev = dev;
 	platform_set_drvdata(pdev, dp);
 
-	plat_data.max_link_rate = 810000;
+	plat_data = of_device_get_match_data(dev);
+	if (!plat_data)
+		return -ENODEV;
+
 	encoder = &dp->encoder.encoder;
 	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev, dev->of_node);
 	rockchip_drm_encoder_set_crtc_endpoint_id(&dp->encoder, dev->of_node, 0, 0);
@@ -99,7 +102,7 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
 		return ret;
 	drm_encoder_helper_add(encoder, &dw_dp_encoder_helper_funcs);
 
-	dp->base = dw_dp_bind(dev, encoder, &plat_data);
+	dp->base = dw_dp_bind(dev, encoder, plat_data);
 	if (IS_ERR(dp->base)) {
 		ret = PTR_ERR(dp->base);
 		return ret;
@@ -134,8 +137,16 @@ static void dw_dp_remove(struct platform_device *pdev)
 	component_del(dp->dev, &dw_dp_rockchip_component_ops);
 }
 
+static const struct dw_dp_plat_data rk3588_dp_plat_data = {
+	.max_link_rate = 810000,
+	.pixel_mode = DW_DP_MP_QUAD_PIXEL,
+};
+
 static const struct of_device_id dw_dp_of_match[] = {
-	{ .compatible = "rockchip,rk3588-dp", },
+	{
+		.compatible = "rockchip,rk3588-dp",
+		.data = &rk3588_dp_plat_data,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, dw_dp_of_match);
diff --git a/include/drm/bridge/dw_dp.h b/include/drm/bridge/dw_dp.h
index d05df49fd884..25363541e69d 100644
--- a/include/drm/bridge/dw_dp.h
+++ b/include/drm/bridge/dw_dp.h
@@ -11,8 +11,15 @@
 struct drm_encoder;
 struct dw_dp;
 
+enum {
+	DW_DP_MP_SINGLE_PIXEL,
+	DW_DP_MP_DUAL_PIXEL,
+	DW_DP_MP_QUAD_PIXEL,
+};
+
 struct dw_dp_plat_data {
 	u32 max_link_rate;
+	u8 pixel_mode;
 };
 
 struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
-- 
2.43.0


