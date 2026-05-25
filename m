Return-Path: <devicetree+bounces-302538-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AD6ECz8YFGo4JgcAu9opvQ
	(envelope-from <devicetree+bounces-302538-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 11:37:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A305C8B54
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 11:37:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 50F0630058EC
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 09:37:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED3CE3E5EC1;
	Mon, 25 May 2026 09:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="K8tAQN+b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32123.qiye.163.com (mail-m32123.qiye.163.com [220.197.32.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84B943E5A3D;
	Mon, 25 May 2026 09:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779701818; cv=none; b=hXNO70UONalx9AvGRCz47ULFkGa2pYWisTjgIWMh8zHoKwMo5Xzcz6piA+z2f+5fRwnbe9ofG015nNoeH2EmoVLJyeTz2am0UCeMmFTDOzO8I6e+qaQBVdcNEykAa3aTMMXmwA+9lx+5Fy6yOG58fHvkjpJBS4/iLmHOwzhLD2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779701818; c=relaxed/simple;
	bh=qi0YPej8vMoupIEPBKCMyT1BVykGVTMCxmQO8nCiWME=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UNF+ntfr349yKRyJWBFWCzE10R3CX7dOAzmgPOzhisZZVyw0KK46QLjylwpALanOhNTcpA8RgUNhT+m+Sv+V55ESpoVkkLqH/RGBMPn5h/zX3GBbLDXHqV5YU++xSAJNhZfbT5IjeVkpEv14oryKxIqYnPj9wjfWBxtNVJZxeqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=K8tAQN+b; arc=none smtp.client-ip=220.197.32.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3fb20c060;
	Mon, 25 May 2026 16:20:51 +0800 (GMT+08:00)
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
Subject: [PATCH v7 05/10] drm/rockchip: analogix_dp: Enable hclk for RK3588
Date: Mon, 25 May 2026 16:20:28 +0800
Message-Id: <20260525082033.117569-6-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260525082033.117569-1-damon.ding@rock-chips.com>
References: <20260525082033.117569-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e5e38f59503a3kunmb64b982110265a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaSUpMVkNLSx9LTB5PQxgeQlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=K8tAQN+bSOIsPiZWOxc1U08pZ8bFVtz9duu5bhCeCSx+xUrUT0yUWiZZ9CcAAsAy3FPh/DhuT4QmroQPIzaue+1ylWrW7lOJszYFO6jW4WNvUW/bDHZ0GKguy+cMg2sOhrktvFgQ92k6thmltpYuVd/zpHsGcyl/tQxoM825iVI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=qzrSU6F51VUS8IVrczy9Q/DVSlabFI0ne4m7RTJg/xI=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-302538-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[30];
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
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,rock-chips.com];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,rock-chips.com:email,rock-chips.com:mid,rock-chips.com:dkim]
X-Rspamd-Queue-Id: 40A305C8B54
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Acquire and enable the HCLK_VO1 bus clock explicitly for RK3588
eDP controller to guarantee register and datapath access.

The clock was previously enabled implicitly via rockchip,vo-grf
phandle reference, which relies on side effect and is fragile.

Fetch optional "hclk" clock in driver to align with updated device
tree binding and keep consistent with hardware clock dependency.

Fixes: 729f8eefdcad ("drm/rockchip: analogix_dp: Add support for RK3588")
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v4:
- Modify the commit msg.
---
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 06072efd7fca..d2af5eb29dbb 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -311,6 +311,7 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
 {
 	struct device *dev = dp->dev;
 	struct device_node *np = dev->of_node;
+	struct clk *clk;
 
 	dp->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
 	if (IS_ERR(dp->grf))
@@ -327,6 +328,11 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
 		return dev_err_probe(dev, PTR_ERR(dp->pclk),
 				     "failed to get pclk property\n");
 
+	clk = devm_clk_get_optional_enabled(dev, "hclk");
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk),
+				     "failed to get hclk property\n");
+
 	dp->rst = devm_reset_control_get(dev, "dp");
 	if (IS_ERR(dp->rst))
 		return dev_err_probe(dev, PTR_ERR(dp->rst),
-- 
2.34.1


