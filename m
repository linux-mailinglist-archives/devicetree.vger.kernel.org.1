Return-Path: <devicetree+bounces-136617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5262FA05AA3
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:55:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46F77166A35
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A0CE1FDE28;
	Wed,  8 Jan 2025 11:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="hND+vrZb"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.3])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBDD01FCF74;
	Wed,  8 Jan 2025 11:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736337222; cv=none; b=gvroxAhDD58qySORY9lfr5lNcBaqCDRM3NnoazYghU8OBCebeiT25nV5KBmpY2ddAj2Z++PTe7bHv6InauSrTZEZX/Lyg5jXvsbbj9kojFP6W/TGrv4wF6vHdsvULSPi5WmWwLtUt7e4gY0tqyQM/W0fBUXZLn/3zbh+kfyPijI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736337222; c=relaxed/simple;
	bh=o38Ovz46l2apFE2oHr6TASXiL4mlQKGzOZ/ahUZtltM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EHEJjxhIZDkTFb3PcLuSIaSbXVqUE+fefBf8UYDVgnDtowvjDYk5lBd9pOxqd7OE8B6j2gdGYS7TQB0RncrPwBUUIecpn0XKtt7844KAZqE1JK7WyZ8bUj6ZeZ0uneCwbRkKekJIYsw9NVgseeEUq9J1bQK3L/wQ61bGDlP+dhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=hND+vrZb; arc=none smtp.client-ip=220.197.31.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=UXajS
	UPMGpOgjU7a8JQF2GBWNMx42IZf3FTRg+6cY8I=; b=hND+vrZbA0AwfHQBx9vaV
	AQYbaRUXVMJu9EHpbfcg6iKgHHFq18jsZcDpX3dXj0GebT/hgR6jeZ6cUG2HNoER
	YlrVr5X8bhW3lvQcNXNT7lnx2R5kRTQiQJwDyaojZ4pl6N2B/QYRQXeW+pTIfvqu
	0b28cJICs+3JCa4cSVP7/Q=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-4 (Coremail) with SMTP id _____wDHpyUCZ35n8Xn7EQ--.26804S4;
	Wed, 08 Jan 2025 19:52:42 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	detlev.casanova@collabora.com,
	daniel@fooishbar.org,
	robh@kernel.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v9 02/11] drm/rockchip: vop2: Rename TRANSFORM_OFFSET to TRANSFORM_OFFS
Date: Wed,  8 Jan 2025 19:52:19 +0800
Message-ID: <20250108115233.17729-3-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250108115233.17729-1-andyshrk@163.com>
References: <20250108115233.17729-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDHpyUCZ35n8Xn7EQ--.26804S4
X-Coremail-Antispam: 1Uf129KBjvJXoWxCrWxKw4rJw15Jr18uw17Wrg_yoWrCr18pr
	W3JayDWF4UKFs2qFWkAr15AF48Jan2k3yfJa9xJrnIqFyaga4DWwnFka4DJr4Uta4I9FZ2
	q3saqrW7ury3tr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jUManUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqBLOXmd+X+etDgABsp

From: Andy Yan <andy.yan@rock-chips.com>

This help avoid "exceeds 100 columns" warning from checkpatch

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 8 ++++----
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 327ead907d44..f78e0568f41d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1517,7 +1517,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		transform_offset = vop2_afbc_transform_offset(pstate, half_block_en);
 		vop2_win_write(win, VOP2_WIN_AFBC_HDR_PTR, yrgb_mst);
 		vop2_win_write(win, VOP2_WIN_AFBC_PIC_SIZE, act_info);
-		vop2_win_write(win, VOP2_WIN_AFBC_TRANSFORM_OFFSET, transform_offset);
+		vop2_win_write(win, VOP2_WIN_AFBC_TRANSFORM_OFFS, transform_offset);
 		vop2_win_write(win, VOP2_WIN_AFBC_PIC_OFFSET, ((src->x1 >> 16) | src->y1));
 		vop2_win_write(win, VOP2_WIN_AFBC_DSP_OFFSET, (dest->x1 | (dest->y1 << 16)));
 		vop2_win_write(win, VOP2_WIN_AFBC_PIC_VIR_WIDTH, stride);
@@ -1528,7 +1528,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 	} else {
 		if (vop2_cluster_window(win)) {
 			vop2_win_write(win, VOP2_WIN_AFBC_ENABLE, 0);
-			vop2_win_write(win, VOP2_WIN_AFBC_TRANSFORM_OFFSET, 0);
+			vop2_win_write(win, VOP2_WIN_AFBC_TRANSFORM_OFFS, 0);
 		}
 
 		vop2_win_write(win, VOP2_WIN_YRGB_VIR, DIV_ROUND_UP(fb->pitches[0], 4));
@@ -3420,7 +3420,7 @@ static const struct reg_field vop2_cluster_regs[VOP2_WIN_MAX_REG] = {
 	[VOP2_WIN_AFBC_TILE_NUM] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_VIR_WIDTH, 16, 31),
 	[VOP2_WIN_AFBC_PIC_OFFSET] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_PIC_OFFSET, 0, 31),
 	[VOP2_WIN_AFBC_DSP_OFFSET] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_DSP_OFFSET, 0, 31),
-	[VOP2_WIN_AFBC_TRANSFORM_OFFSET] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_TRANSFORM_OFFSET, 0, 31),
+	[VOP2_WIN_AFBC_TRANSFORM_OFFS] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_TRANSFORM_OFFS, 0, 31),
 	[VOP2_WIN_AFBC_ROTATE_90] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_ROTATE_MODE, 0, 0),
 	[VOP2_WIN_AFBC_ROTATE_270] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_ROTATE_MODE, 1, 1),
 	[VOP2_WIN_XMIRROR] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_ROTATE_MODE, 2, 2),
@@ -3519,7 +3519,7 @@ static const struct reg_field vop2_esmart_regs[VOP2_WIN_MAX_REG] = {
 	[VOP2_WIN_AFBC_PIC_OFFSET] = { .reg = 0xffffffff },
 	[VOP2_WIN_AFBC_PIC_SIZE] = { .reg = 0xffffffff },
 	[VOP2_WIN_AFBC_DSP_OFFSET] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_TRANSFORM_OFFSET] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_TRANSFORM_OFFS] = { .reg = 0xffffffff },
 	[VOP2_WIN_AFBC_HDR_PTR] = { .reg = 0xffffffff },
 	[VOP2_WIN_AFBC_HALF_BLOCK_EN] = { .reg = 0xffffffff },
 	[VOP2_WIN_AFBC_ROTATE_270] = { .reg = 0xffffffff },
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index 29cc7fb8f6d8..8510140b0869 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -118,7 +118,7 @@ enum vop2_win_regs {
 	VOP2_WIN_AFBC_PIC_OFFSET,
 	VOP2_WIN_AFBC_PIC_SIZE,
 	VOP2_WIN_AFBC_DSP_OFFSET,
-	VOP2_WIN_AFBC_TRANSFORM_OFFSET,
+	VOP2_WIN_AFBC_TRANSFORM_OFFS,
 	VOP2_WIN_AFBC_HDR_PTR,
 	VOP2_WIN_AFBC_HALF_BLOCK_EN,
 	VOP2_WIN_AFBC_ROTATE_270,
@@ -335,7 +335,7 @@ enum dst_factor_mode {
 #define RK3568_CLUSTER_WIN_DSP_INFO		0x24
 #define RK3568_CLUSTER_WIN_DSP_ST		0x28
 #define RK3568_CLUSTER_WIN_SCL_FACTOR_YRGB	0x30
-#define RK3568_CLUSTER_WIN_AFBCD_TRANSFORM_OFFSET	0x3C
+#define RK3568_CLUSTER_WIN_AFBCD_TRANSFORM_OFFS	0x3C
 #define RK3568_CLUSTER_WIN_AFBCD_OUTPUT_CTRL	0x50
 #define RK3568_CLUSTER_WIN_AFBCD_ROTATE_MODE	0x54
 #define RK3568_CLUSTER_WIN_AFBCD_HDR_PTR	0x58
-- 
2.34.1


