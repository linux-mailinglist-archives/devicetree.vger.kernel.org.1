Return-Path: <devicetree+bounces-156108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A9255A59345
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 12:59:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E0FCB168F25
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 11:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE11722A4EA;
	Mon, 10 Mar 2025 11:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="SyqnXcx5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49205.qiye.163.com (mail-m49205.qiye.163.com [45.254.49.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC3B227BA2
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 11:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741607875; cv=none; b=XpWGVzakBlczJFrXPPqbq6VePkydrxSS90SMsERsLsMMy9YbAN4L6YKBex32QrpO64kWQ4QazsPEq/m9pZCWrMVZ7/gAw+h4MFGO9IUmcQN2aq+ZD2NwjsB2KhGm4V8geERpfLIx62vWYcc/0tNsOKlK9bDrQNgjiy7LJeHGQOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741607875; c=relaxed/simple;
	bh=BSpB9zsF3EpNXZc+dbwg181g4nLCQwLhSCE1P5bu3ro=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TjsvzZJOPjEIdQfmiOgA7gl55YRVJFmtxRf30knqmXbgbHDzgXzBJ/UKputevFU/4/RBokWMHmKICcLgRH6CKk6B2jIRKBD18g7OGVMYCYXoK/uCO800AY1Mu7gSb+S6TV6TgsrrnmeZqUJLBCFuej8Q+S8bgr1yGkRNHr3PEN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=SyqnXcx5; arc=none smtp.client-ip=45.254.49.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id dc188276;
	Mon, 10 Mar 2025 18:42:13 +0800 (GMT+08:00)
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
Subject: [PATCH v8 06/13] drm/bridge: analogix_dp: Add support to get panel from the DP AUX bus
Date: Mon, 10 Mar 2025 18:41:07 +0800
Message-Id: <20250310104114.2608063-7-damon.ding@rock-chips.com>
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
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRlPS1ZCSkwaSxlDGUpOHklWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCS0
	NVSktLVUpCWQY+
X-HM-Tid: 0a957fa5e3da03a3kunmdc188276
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NCI6Iio4FTJMHCMXMzoTPR4d
	Lx9PFBpVSlVKTE9KTUtISEhOSU5LVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJTUtINwY+
DKIM-Signature:a=rsa-sha256;
	b=SyqnXcx5LoHD5wKranbdzL/uLV4monKu3+GvLzJszfSpIYP8gXm3AXFJ7eOES6jgCcw40ZuT5P1eNmUj3SMa2nXeTCXhMYmk6lnWiTYPayjSeQCwvk8bcgzcyWSwQnHrkIrr6UVA35XwFRvZIOvWzYyT4aZadNSy9Z9SyXtjpqQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=PrzE4PXYA+y/tPMc43/nU1rxnuyoWCfIKQHOq/5i0Cs=;
	h=date:mime-version:subject:message-id:from;

The main modification is moving the DP AUX initialization from function
analogix_dp_bind() to analogix_dp_probe(). In order to get the EDID of
eDP panel during probing, it is also needed to advance PM operations to
ensure that eDP controller and phy are prepared for AUX transmission.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v4:
- Use done_probing() to call drm_of_find_panel_or_bridge() and
  component_add() when getting panel from the DP AUX bus

Changes in v5:
- Advance PM operations to make eDP AUX work well

Changes in v6:
- Use devm_pm_runtime_enable() instead of devm_add_action_or_reset()
- Add a new function analogix_dp_remove() to ensure symmetry for PM
  operations

Changes in v7:
- Fix the misspelling of word 'operations' in commit message
- Remove the check related to CONFIG_PM
- Remove the unnecessary call to pm_runtime_dont_use_autosuspend() if
  devm_pm_runtime_enable() fails
- Remove unnecessary function analogix_dp_remove()
- Add new function analogix_dpaux_wait_hpd_asserted()

Changes in v8:
- Move the addition of the analogix_dpaux_wait_hpd_asserted() to the
  other patch
---
 .../drm/bridge/analogix/analogix_dp_core.c    | 20 ++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index dd91760c4b1c..2b76a9cf3bcb 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1650,6 +1650,17 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 		return ERR_PTR(ret);
 	}
 
+	dp->aux.name = "DP-AUX";
+	dp->aux.transfer = analogix_dpaux_transfer;
+	dp->aux.dev = dp->dev;
+	drm_dp_aux_init(&dp->aux);
+
+	pm_runtime_use_autosuspend(dp->dev);
+	pm_runtime_set_autosuspend_delay(dp->dev, 100);
+	ret = devm_pm_runtime_enable(dp->dev);
+	if (ret)
+		return ERR_PTR(ret);
+
 	return dp;
 }
 EXPORT_SYMBOL_GPL(analogix_dp_probe);
@@ -1696,15 +1707,6 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
 	dp->drm_dev = drm_dev;
 	dp->encoder = dp->plat_data->encoder;
 
-	pm_runtime_use_autosuspend(dp->dev);
-	pm_runtime_set_autosuspend_delay(dp->dev, 100);
-	ret = devm_pm_runtime_enable(dp->dev);
-	if (ret)
-		return ret;
-
-	dp->aux.name = "DP-AUX";
-	dp->aux.transfer = analogix_dpaux_transfer;
-	dp->aux.dev = dp->dev;
 	dp->aux.drm_dev = drm_dev;
 
 	ret = drm_dp_aux_register(&dp->aux);
-- 
2.34.1


