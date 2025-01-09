Return-Path: <devicetree+bounces-136894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 39444A06C3B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 04:31:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D98F418896E5
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 03:31:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 739F11AA1C2;
	Thu,  9 Jan 2025 03:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="jS6AlauJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32101.qiye.163.com (mail-m32101.qiye.163.com [220.197.32.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C441619D089;
	Thu,  9 Jan 2025 03:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736393316; cv=none; b=kCb48Qr07Ckfjl3yI6G8TDyZxDxa6bScnSkXWQrIq1rs4VVEpT9FNlglJHrbGkwf6BoioH80WrRPeaUQ8hXmsXUBmbTIxYY4riiaTx+HzBKtREt5B2kXSca/lNoNkJ8pzIiH2zjux1PLlItl3IDiUm8ltJkf2kqNC9F/+FzbX9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736393316; c=relaxed/simple;
	bh=o3hhg8W39+wvLOmQHmTp0Rm1ygDy8JXfKltk3yDY8wo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mBhMO4nfDTF6he75UNGGvjzshl5ChdRiDtY2TDdMA2905qBv1U5HGf39zPgD5g0JrquWQBa/5JYQr9nJL9BvhpwFfyUWdgRIfoSoyDnWmrY5H67rp+wyvL4Xjapxg4neNyUI35NwM7ur1oDlXkZwPzEhRsf23YdKfPlpsgTRe8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=jS6AlauJ; arc=none smtp.client-ip=220.197.32.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 82c01aa7;
	Thu, 9 Jan 2025 11:28:23 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	vkoul@kernel.org,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	l.stach@pengutronix.de,
	dmitry.baryshkov@linaro.org,
	andy.yan@rock-chips.com,
	hjc@rock-chips.com,
	algea.cao@rock-chips.com,
	kever.yang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v5 14/20] drm/bridge: analogix_dp: Add support for RK3588
Date: Thu,  9 Jan 2025 11:27:19 +0800
Message-Id: <20250109032725.1102465-15-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250109032725.1102465-1-damon.ding@rock-chips.com>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkpJTVZIT0sYSkxOT01NH0JWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a94491b27a803a3kunm82c01aa7
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Oj46MRw5FTIPLRQhPEtIQyMD
	DiIKFC9VSlVKTEhNSEJISEtOTUJJVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKTEtLNwY+
DKIM-Signature:a=rsa-sha256;
	b=jS6AlauJP5JyoWDRM/RGHExuVWzgQXi+Ln5yWq8iRsEgl//Kc5uMZ1aLrCGAgVr08X9Nt0WjEmzfWdhlScKTzbrpV9BRLnN7hzLBjX3j2fZC9GhnOCqNqWoU2prs9eaEMT+sbRZt+FHwvk1BPNpQGBbT/qvLgER4ldu/ouTXcfo=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=C1hAPTJc7QSuhxV6FNIUWt0rSqGrYqk38GUyZZwa9fQ=;
	h=date:mime-version:subject:message-id:from;

Expand enum analogix_dp_devtype with RK3588_EDP, and add max_link_rate
and max_lane_count configs for it.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v5:
- Add the RK3588_EDP related modification in analogix_dp.h
- Move this commit above related commit on the Rockchip side
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 4 ++++
 include/drm/bridge/analogix_dp.h                   | 3 ++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 78e78fb474d3..9cc07c028043 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1513,6 +1513,10 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
 		video_info->max_link_rate = 0x0A;
 		video_info->max_lane_count = 0x04;
 		break;
+	case RK3588_EDP:
+		video_info->max_link_rate = 0x14;
+		video_info->max_lane_count = 0x04;
+		break;
 	case EXYNOS_DP:
 		/*
 		 * NOTE: those property parseing code is used for
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 1b119b547988..10ea6e7759b2 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -16,11 +16,12 @@ enum analogix_dp_devtype {
 	EXYNOS_DP,
 	RK3288_DP,
 	RK3399_EDP,
+	RK3588_EDP,
 };
 
 static inline bool is_rockchip(enum analogix_dp_devtype type)
 {
-	return type == RK3288_DP || type == RK3399_EDP;
+	return type == RK3288_DP || type == RK3399_EDP || type == RK3588_EDP;
 }
 
 struct analogix_dp_plat_data {
-- 
2.34.1


