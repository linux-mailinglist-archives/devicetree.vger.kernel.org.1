Return-Path: <devicetree+bounces-99979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 539AD96BB7E
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 14:03:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F03131F24DB2
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 12:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 920F21D58A2;
	Wed,  4 Sep 2024 12:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="NCdUCw8A"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.2])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AA351CF294
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 12:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725451402; cv=none; b=gUplkqIqgFATbsrZlo1gkKHZayoM02BjfahI+G/4pWAixGwDx1VBZ2IKdZHIFXnnQpnLOuqjyX+1o6hsiiBh8h813iagLBDuAURLHO+TLtJ53dxc26LdFKakIV05wtyLGxX5TwZQCqIV9vOvkMSSpxVa5ZpjZR0AsEDf0oixzRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725451402; c=relaxed/simple;
	bh=nxXfkf/fpnMI1QxOFJ+c1CoXiV5x9lfxH+F+WsTmuqU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pRnxwls5BWDVgwCs1adZVGNh2Vuv+AnBxFIov6gWSmdJZC0OhPtZe3Qs/SA25ZfhG3/eULWLqr6nQ2qQrqHkczAdll1t0wbq/rF3DgRPWHggFDvp22x9ns5Qp8VPzPX/Pq7z0o7QaNo0/KToL3S39c3dloOEc2nFr9hsOHppxH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=NCdUCw8A; arc=none smtp.client-ip=117.135.210.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=M1QKT
	NQpk3AJnRUVpFtwnoS6CV+5zNobj1gYTC1w0YY=; b=NCdUCw8AASbbrP3hOckDS
	n3dmBpjRmHg2M85j5v6jdZSrlV8kNeb0d9/T5+pjnDN48M6mZ1BNmBdEdJSJGF35
	bvtUrwXhldROvgaqVEuvMWq5o6jESrkLJWUKNOxXCjc/uHfhTP2+jj9pZKmTecld
	TEpFjRRwup3fgcQD5n6D+U=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g3-0 (Coremail) with SMTP id _____wA3HxFgTNhmiRMZCA--.50872S10;
	Wed, 04 Sep 2024 20:02:52 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: detlev.casanova@collabora.com
Cc: sjoerd@collabora.com,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	hjc@rock-chips.com,
	cristian.ciocaltea@collabora.com,
	mripard@kernel.org,
	dri-devel@lists.freedesktop.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 08/11] drm/rockchip: vop2: Add uv swap for cluster window
Date: Wed,  4 Sep 2024 20:02:35 +0800
Message-Id: <20240904120238.3856782-9-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240904120238.3856782-1-andyshrk@163.com>
References: <20240904120238.3856782-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wA3HxFgTNhmiRMZCA--.50872S10
X-Coremail-Antispam: 1Uf129KBjvJXoW7tFW8Ww1kAF4UAw47JFy7ZFb_yoW8Gr4kpw
	43ZrWq9r45Kw4Iq34kJFW5ZFWfCwnxKayxZws7tw109ry3KFyDK3Z0kFWUArnFya12ka17
	tFn3A3y7ZF4jvrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jsF4iUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gxQXmWX0KXl7wAAsd

From: Andy Yan <andy.yan@rock-chips.com>

The Cluster windows of upcoming VOP on rk3576 also support
linear YUV support, we need to set uv swap bit for it.

As the VOP2_WIN_UV_SWA register defined on rk3568/rk3588 is
0xffffffff, so this register will not be touched on these
two platforms.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index df8194697a58..d0b763b0dd6c 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1274,10 +1274,8 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 
 	rb_swap = vop2_win_rb_swap(fb->format->format);
 	vop2_win_write(win, VOP2_WIN_RB_SWAP, rb_swap);
-	if (!vop2_cluster_window(win)) {
-		uv_swap = vop2_win_uv_swap(fb->format->format);
-		vop2_win_write(win, VOP2_WIN_UV_SWAP, uv_swap);
-	}
+	uv_swap = vop2_win_uv_swap(fb->format->format);
+	vop2_win_write(win, VOP2_WIN_UV_SWAP, uv_swap);
 
 	if (fb->format->is_yuv) {
 		vop2_win_write(win, VOP2_WIN_UV_VIR, DIV_ROUND_UP(fb->pitches[1], 4));
-- 
2.34.1


