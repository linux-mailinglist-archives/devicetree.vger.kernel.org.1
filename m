Return-Path: <devicetree+bounces-22558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D97808259
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 09:01:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D28921F21AAA
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 08:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09D161E493;
	Thu,  7 Dec 2023 08:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="OKq28FKF"
X-Original-To: devicetree@vger.kernel.org
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.220])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 048EDDD;
	Thu,  7 Dec 2023 00:01:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=c7kjH
	jIQ4/nlmiPUxBorZmmivgfaJAOI5Gw9Jj5OowE=; b=OKq28FKFyYa6b2htLqGNk
	7n0gxfW6w4Ry12uVjON3FpSilpH14JBP3fdiTWFYnHcexD/F51X/S85Cmm/nzXnn
	pBXP1x4uqZ/Yps9Q/ryfaNJKiws5IClqDgOZJXYhOHvPqkNEyQzG0PtGYW+L3vLV
	qwW5eY00Ifora/G/WGoNX8=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-2 (Coremail) with SMTP id _____wD3f3ORe3FlNJyiAg--.51521S2;
	Thu, 07 Dec 2023 16:00:20 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v4 04/17] drm/rockchip: vop2: clear afbc en and transform bit for cluster window at linear mode
Date: Thu,  7 Dec 2023 16:00:16 +0800
Message-Id: <20231207080016.652051-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231207075906.651771-1-andyshrk@163.com>
References: <20231207075906.651771-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3f3ORe3FlNJyiAg--.51521S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7ZrW3WF1DuFyrWryfXrWkZwb_yoW8Gr1kpr
	W5AFWqqr4xK3yqqa1DJF9xZFZYk3ZFkayxWrZ7JwnFgFWUKa4kG3Z0kryDJrWUJ3WagF48
	trn3JrW7ZFWYvr7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jSwZ7UUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEhg-XmVOA0WxpgAAsR

From: Andy Yan <andy.yan@rock-chips.com>

The enable bit and transform offset of cluster windows should be
cleared when it work at linear mode, or we may have a iommu fault
issue on rk3588 which cluster windows switch between afbc and linear
mode.

As the cluster windows of rk3568 only supports afbc format
so is therefore not affected.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 639dfebc6bd1..a019cc9bbd54 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1312,6 +1312,11 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		vop2_win_write(win, VOP2_WIN_AFBC_ROTATE_270, rotate_270);
 		vop2_win_write(win, VOP2_WIN_AFBC_ROTATE_90, rotate_90);
 	} else {
+		if (vop2_cluster_window(win)) {
+			vop2_win_write(win, VOP2_WIN_AFBC_ENABLE, 0);
+			vop2_win_write(win, VOP2_WIN_AFBC_TRANSFORM_OFFSET, 0);
+		}
+
 		vop2_win_write(win, VOP2_WIN_YRGB_VIR, DIV_ROUND_UP(fb->pitches[0], 4));
 	}
 
-- 
2.34.1


