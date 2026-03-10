Return-Path: <devicetree+bounces-273470-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DLKH+L7r2mmdwIAu9opvQ
	(envelope-from <devicetree+bounces-273470-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:09:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 156DB24A035
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:09:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CDC6430B85A1
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 228B8377ECC;
	Tue, 10 Mar 2026 11:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="OqYPba8A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731103.qiye.163.com (mail-m19731103.qiye.163.com [220.197.31.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4383806B8;
	Tue, 10 Mar 2026 11:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.103
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773140417; cv=none; b=ZnXgctYYQyx18omSScxpve7OrPHuvSYi/NEvRfxpML6nbUGwDvZO+TnxW6Sh1QAidIgXOUYBN7t4zp+jBWPBC2qmqh+9wR6xvRi4gw8Idy9aBlIr2M+xgm8uKC1NTs3pExDvAleOt11bLtPtmwndZaOrFuZOoF7o2zBE9iQVFSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773140417; c=relaxed/simple;
	bh=052UH4u3qMGcaaMzIOAsVZIW1AF/0EktrJUaZCEqQX4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SK46oTGr5uXD+CgQSrCS1geAm4H/6MvtejL/zf9dXfmAwgpbOyYDBAsPZs1z5sIq1lNjV/3Iol5MCrbuJtepXE1iGc7xF9wcSPjS1DqkhhdUYQunYL9fc65XpBREa8hhhxmi438IaxYT1SPkwnT9EAWae19EgW4cu9aPszZabMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=OqYPba8A; arc=none smtp.client-ip=220.197.31.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 366858a6b;
	Tue, 10 Mar 2026 18:54:56 +0800 (GMT+08:00)
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
	alchark@gmail.com,
	cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
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
Subject: [PATCH v1 4/4] drm/rockchip: analogix_dp: Add support for RK3576
Date: Tue, 10 Mar 2026 18:53:07 +0800
Message-Id: <20260310105307.309765-5-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260310105307.309765-1-damon.ding@rock-chips.com>
References: <20260310105307.309765-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9cd762b7bd03a3kunm866f47e7374c50
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhlJTlYaQksdHU9DShgfHhpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=OqYPba8Ac+FSTNio2s23bLUqQvq6LGFsl3kqR/HKfKzKBvy17OBf3uZqp3/yuRydJjDm99ki+fpDFD7zGr1FY+83y9sYoa9rVITknsR7dhqFyPzGe5ux7Cz8NkZgJUfPO41b2+6BLpGbcS/bDrAV3UorrOxOGb9fd8Snx6/UfPQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=3OocPmOMnlNRvz1526JH7EImumeXegD27jnijYId8D8=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: 156DB24A035
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273470-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[32];
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
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,rock-chips.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:dkim,rock-chips.com:email,rock-chips.com:mid,60hz:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

RK3576 integrates the Analogix eDP 1.3 TX controller IP and the HDMI/eDP
TX Combo PHY based on a Samsung IP block - both of which are the same as
those on RK3588.

The patch currently adds only the basic support, specifically RGB output
up to 4K@60Hz, without the tests for audio, PSR and other eDP 1.3 specific
features.

In additon, the newly added clock 'hclk' is the video datapath clock,
which must be enabled during probing for RK3576 eDP controller.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 832e9766bef0..4f8511636cdf 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -71,6 +71,7 @@ struct rockchip_dp_device {
 
 	struct clk               *pclk;
 	struct clk               *grfclk;
+	struct clk               *hclk;
 	struct regmap            *grf;
 	struct reset_control     *rst;
 	struct reset_control     *apbrst;
@@ -327,6 +328,11 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
 		return dev_err_probe(dev, PTR_ERR(dp->pclk),
 				     "failed to get pclk property\n");
 
+	dp->hclk = devm_clk_get_optional_enabled(dev, "hclk");
+	if (IS_ERR(dp->hclk))
+		return dev_err_probe(dev, PTR_ERR(dp->hclk),
+				     "failed to get hclk property\n");
+
 	dp->rst = devm_reset_control_get(dev, "dp");
 	if (IS_ERR(dp->rst))
 		return dev_err_probe(dev, PTR_ERR(dp->rst),
@@ -514,6 +520,14 @@ static const struct rockchip_dp_chip_data rk3288_dp[] = {
 	{ /* sentinel */ }
 };
 
+static const struct rockchip_dp_chip_data rk3576_edp[] = {
+	{
+		.chip_type = RK3576_EDP,
+		.reg = 0x27dc0000,
+	},
+	{ /* sentinel */ }
+};
+
 static const struct rockchip_dp_chip_data rk3588_edp[] = {
 	{
 		.edp_mode = GRF_REG_FIELD(0x0000, 0, 0),
@@ -531,6 +545,7 @@ static const struct rockchip_dp_chip_data rk3588_edp[] = {
 static const struct of_device_id rockchip_dp_dt_ids[] = {
 	{.compatible = "rockchip,rk3288-dp", .data = &rk3288_dp },
 	{.compatible = "rockchip,rk3399-edp", .data = &rk3399_edp },
+	{.compatible = "rockchip,rk3576-edp", .data = &rk3576_edp },
 	{.compatible = "rockchip,rk3588-edp", .data = &rk3588_edp },
 	{}
 };
-- 
2.34.1


