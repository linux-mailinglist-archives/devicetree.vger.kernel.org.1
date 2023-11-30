Return-Path: <devicetree+bounces-20355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E29337FEEED
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 13:24:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2DF7D2820E7
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 12:24:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1934C4776B;
	Thu, 30 Nov 2023 12:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="ku2fuzpu"
X-Original-To: devicetree@vger.kernel.org
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.220])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id BF8DA1AD;
	Thu, 30 Nov 2023 04:23:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=aescF
	38z6fBhd2gmVmB/UL5kxawZRAL0of1bYn6ck7c=; b=ku2fuzpuWNF9/yrNaKf9W
	yM0I68RIFy9k2NQV9Zq71Z8pYr3rdFTflJJvK+ZT9qcBZBhiBj7gPnvMba7zOPMn
	Fth1kwx95wTcsgNoqfHEiGr14Xh+0wjCJDPgET/p2JQVZ3gYdfPT9iGQn4Mebu0l
	w3AcVEiGBIKQ6aM7v0lT5Q=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g1-1 (Coremail) with SMTP id _____wDn77a_fmhlZLiqCQ--.51133S2;
	Thu, 30 Nov 2023 20:23:30 +0800 (CST)
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
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 05/14] drm/rockchip: vop2: Add write mask for VP config done
Date: Thu, 30 Nov 2023 20:23:26 +0800
Message-Id: <20231130122326.13014-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130122001.12474-1-andyshrk@163.com>
References: <20231130122001.12474-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDn77a_fmhlZLiqCQ--.51133S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7uw4rKw17GrW5WF13XF4fKrg_yoW8Ww1fpF
	yrAay5urs2kF42gr1DKFy5Zr1ayasrAa92yr97Kw13Xas0qr1DZrn0kF1jyr98JFWxZr1a
	ywsrAryrGF4jvrJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jSzuXUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEgQ4XmVOAqtkeAAAsu

From: Andy Yan <andy.yan@rock-chips.com>

The write mask bit is used to make sure when writing
config done bit for one VP will not overwrite the other.

Unfortunately, the write mask bit is missing on
rk3566/8, that means when we write to these bits,
it will not take any effect.

We need this to make the vop work properly after
rk3566/8 variants.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v3:
- split from the vop2 driver patch

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index a019cc9bbd54..25c1f33c5622 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -268,12 +268,23 @@ static bool vop2_cluster_window(const struct vop2_win *win)
 	return win->data->feature & WIN_FEATURE_CLUSTER;
 }
 
+/*
+ * Note:
+ * The write mask function is missing on rk3566/8, write
+ * to this bit has no effect, for the other soc(rk3588 and
+ * the following...), this function works well.
+ *
+ * GLB_CFG_DONE_EN doesn't have a write mask bit
+ *
+ */
 static void vop2_cfg_done(struct vop2_video_port *vp)
 {
 	struct vop2 *vop2 = vp->vop2;
+	u32 val = RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN;
+
+	val |= BIT(vp->id) | (BIT(vp->id) << 16);
 
-	regmap_set_bits(vop2->map, RK3568_REG_CFG_DONE,
-			BIT(vp->id) | RK3568_REG_CFG_DONE__GLB_CFG_DONE_EN);
+	regmap_set_bits(vop2->map, RK3568_REG_CFG_DONE, val);
 }
 
 static void vop2_win_disable(struct vop2_win *win)
-- 
2.34.1


