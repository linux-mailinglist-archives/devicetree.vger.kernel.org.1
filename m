Return-Path: <devicetree+bounces-116919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0419B4623
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 10:56:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F505282C73
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 09:56:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9ABF2040AF;
	Tue, 29 Oct 2024 09:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="capxqMZu"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C76F11DFE1C;
	Tue, 29 Oct 2024 09:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730195759; cv=none; b=notllo7xiiE3tlkrafsDi4OauFu9u3xBQZyhWaLsMbtFYc+Kwapr3xOWvOCDKOCNSLgpZt2XJacHcyTIe/7gZlueZzWQAvE1afvGWB+4SZku7HRwu8lIiFV9/kWl60UFn7WbqGA/a9nIAFMyCcVCHdGT3BqVOzbDVHIWHTqOB8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730195759; c=relaxed/simple;
	bh=Mnzesax+gWZJTCR39TZsmfgA38e+ttpwc7akK0dQjkc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Fpfha4l05gNJS56//MridoeLJTxMl+JA6gLOz+N0CjuEUX0l6GIV8+ENYJqMNqTl1uFEqnFB7pft/sFcrxIIbBhGMdssp5EDJZ+KmSvsXbuAWzFgYTgd+W2+917Vvbky5yBFDzGBTcyh2uC1uU450opkGHdzizThq3632RMuZR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=capxqMZu; arc=none smtp.client-ip=220.197.31.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=ylorO
	LmPl6t2JByoZBwwtJAWf1Xy95NtaZucuHlp0rc=; b=capxqMZu1/nGgdbn6IGeq
	8hP7JCtNyblFA/MsA6c2wPffyGRJ/Zzo7tcTHxANTiQUvRu6XPWUqpFSME5joGPV
	MktO03n+f2DRbpIOp5GoYCWmfNUvRddedmNGXKmWDREeHNz0QQxT3DEVTabbAjTo
	+6e2d8Lm+vLR3grmfL//rM=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mtada-g1-1 (Coremail) with SMTP id _____wD3nxoCsSBn8+3dEA--.3291S8;
	Tue, 29 Oct 2024 17:55:25 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	s.hauer@pengutronix.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	minhuadotchen@gmail.com,
	detlev.casanova@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: [PATCH v4 06/14] drm/rockchip: vop2: Support 32x8 superblock afbc
Date: Tue, 29 Oct 2024 17:54:59 +0800
Message-ID: <20241029095513.391006-7-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241029095513.391006-1-andyshrk@163.com>
References: <20241029095513.391006-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3nxoCsSBn8+3dEA--.3291S8
X-Coremail-Antispam: 1Uf129KBjvJXoWxCrW3XF4xJw4xGr1DGry7GFg_yoW5Gry8pr
	W3ZrWqgw4DKF1jqanrJFWDZF43Jan2k3y7XrnrJr1jqryYkr9rG34qka4DZrWDtrWfGFW0
	vFn7trW7Zw1Fyr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07U_9N3UUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQWHXmcgr44bRAAAsM

From: Andy Yan <andy.yan@rock-chips.com>

This is the only afbc format supported by the upcoming
VOP for rk3576.

Add support for it.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Tested-by: Michael Riesch <michael.riesch@wolfvision.net> # on RK3568
Tested-by: Detlev Casanova <detlev.casanova@collabora.com>

---

(no changes since v2)

Changes in v2:
- split it from main patch add support for rk3576

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index a7f9f88869a6d..f6a030fd8e55b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1357,16 +1357,18 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		vop2_win_write(win, VOP2_WIN_AFBC_HALF_BLOCK_EN, half_block_en);
 
 	if (afbc_en) {
-		u32 stride;
+		u32 stride, block_w;
+
+		/* the afbc superblock is 16 x 16 or 32 x 8 */
+		block_w = fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 ? 32 : 16;
 
-		/* the afbc superblock is 16 x 16 */
 		afbc_format = vop2_convert_afbc_format(fb->format->format);
 
 		/* Enable color transform for YTR */
 		if (fb->modifier & AFBC_FORMAT_MOD_YTR)
 			afbc_format |= (1 << 4);
 
-		afbc_tile_num = ALIGN(actual_w, 16) >> 4;
+		afbc_tile_num = ALIGN(actual_w, block_w) / block_w;
 
 		/*
 		 * AFBC pic_vir_width is count by pixel, this is different
@@ -1377,6 +1379,9 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 			drm_err(vop2->drm, "vp%d %s stride[%d] not 64 pixel aligned\n",
 				vp->id, win->data->name, stride);
 
+		 /* It's for head stride, each head size is 16 byte */
+		stride = ALIGN(stride, block_w) / block_w * 16;
+
 		uv_swap = vop2_afbc_uv_swap(fb->format->format);
 		/*
 		 * This is a workaround for crazy IC design, Cluster
@@ -1407,7 +1412,11 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		else
 			vop2_win_write(win, VOP2_WIN_AFBC_AUTO_GATING_EN, 1);
 
-		vop2_win_write(win, VOP2_WIN_AFBC_BLOCK_SPLIT_EN, 0);
+		if (fb->modifier & AFBC_FORMAT_MOD_SPLIT)
+			vop2_win_write(win, VOP2_WIN_AFBC_BLOCK_SPLIT_EN, 1);
+		else
+			vop2_win_write(win, VOP2_WIN_AFBC_BLOCK_SPLIT_EN, 0);
+
 		transform_offset = vop2_afbc_transform_offset(pstate, half_block_en);
 		vop2_win_write(win, VOP2_WIN_AFBC_HDR_PTR, yrgb_mst);
 		vop2_win_write(win, VOP2_WIN_AFBC_PIC_SIZE, act_info);
-- 
2.34.1


