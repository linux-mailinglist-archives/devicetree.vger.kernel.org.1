Return-Path: <devicetree+bounces-136615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F2AA05AA0
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:55:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A9F63A6EB8
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D517B1FCD08;
	Wed,  8 Jan 2025 11:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="MP2gGT9v"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.2])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4FF11F8F16;
	Wed,  8 Jan 2025 11:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736337218; cv=none; b=TO1h0SGHf6y1M6hpshoCmlMuMMD6lMcYWRbEPWRodJ0+0Jupq89V92OqkTQcRBYa0yN8a9ItU4ixcUNCH3UM07bFEg5JwN7DJ5oneC5UjYl5gq+Dge77Hl90eyhcU2Yq+Pn533m+0249ct2AFRXO9DIUVl60Ask+a2OZ1StbwvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736337218; c=relaxed/simple;
	bh=zlbDq8pqaLDG4V2dDdC7vfTs9LPbx725W2I1jiSB+Dk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fq4GDUCYeiWEiPHSic8WXuXhTIdouILnxF4Zv4LSK2wEMksttBEcBy9xx3dr3A+lj6Nsf2/HcCL5oCEep0OzFOmqcHwEgSJDKz5NnmSjtacYZ7el5DOnoc2/I0Mue4SC6LXDL8rXsQ4NcLkRcc2p1sf3PHMIwQzrCBB0pTDIBrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=MP2gGT9v; arc=none smtp.client-ip=117.135.210.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=/Ol25
	hzjadCcm2uZLztlVSP339OpizpU6NF8c5ai4HM=; b=MP2gGT9vOiJgfFskyHObm
	a9nVGu0ywI6DN7HugM6c1LM9QcgFQ/+JkJLKfrbZqXvgIAHDRxc8Kbrj1qPfDXaX
	d9G1F+7K8SafAvyV/JETtQm9m4jPyTAVjtta1sa0bkb99oJ803w7EMArb/YPvx47
	ChEsSW8mDCJ/NRSXG1CAQY=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-4 (Coremail) with SMTP id _____wDHpyUCZ35n8Xn7EQ--.26804S11;
	Wed, 08 Jan 2025 19:52:49 +0800 (CST)
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
	Andy Yan <andy.yan@rock-chips.com>,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: [PATCH v9 09/11] drm/rockchip: vop2: Add uv swap for cluster window
Date: Wed,  8 Jan 2025 19:52:26 +0800
Message-ID: <20250108115233.17729-10-andyshrk@163.com>
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
X-CM-TRANSID:_____wDHpyUCZ35n8Xn7EQ--.26804S11
X-Coremail-Antispam: 1Uf129KBjvJXoW7tFW8Ww1kAF4UAw47JFy7ZFb_yoW8XrWfpr
	43ArWqgw45Kws2q34kJFW5AFWftwnxKayxuws7tw1F9rW3KFyDGwn0kFWUArnFyFsFka17
	tF93JrW7Zr10vrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07joeHDUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqArOXmd+X+etuwAAsF

From: Andy Yan <andy.yan@rock-chips.com>

The Cluster windows of upcoming VOP on rk3576 also support
linear YUV support, we need to set uv swap bit for it.

As the VOP2_WIN_UV_SWA register defined on rk3568/rk3588 is
0xffffffff, so this register will not be touched on these
two platforms.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Tested-by: Michael Riesch <michael.riesch@wolfvision.net> # on RK3568
Tested-by: Detlev Casanova <detlev.casanova@collabora.com>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 6d6244f736b9..d06ac7aa11d4 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1373,10 +1373,8 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 
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


