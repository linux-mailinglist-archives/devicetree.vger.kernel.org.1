Return-Path: <devicetree+bounces-22561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D85808264
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 09:02:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EE86EB20B6E
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 08:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EAC21E49A;
	Thu,  7 Dec 2023 08:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="O/kaVV76"
X-Original-To: devicetree@vger.kernel.org
Received: from m12.mail.163.com (m12.mail.163.com [220.181.12.215])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 970C71710;
	Thu,  7 Dec 2023 00:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=ivYwG
	0i8GvTy5B3DD4RgxIA/V22tX/s2NpyT/lti0eQ=; b=O/kaVV76yqRNPOoqZBEZV
	9tFJtnuY3BV6mYl5WO9VVdEq/AvJLEjXTNMJLwy1Lhy1roBNFa9CpEUM+NAgERqZ
	rtojhiWyiXSpuSyhTrp+YbyiXA5ZOm2P29nItRatxFqxKZkyZ3xYYSPqJp1+48Sm
	J5OmeHfzojQRcrfIc9GXic=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g5-2 (Coremail) with SMTP id _____wDnT1jHe3FleWCfEw--.42568S2;
	Thu, 07 Dec 2023 16:01:14 +0800 (CST)
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
Subject: [PATCH v4 08/17] drm/rockchip: vop2: rename grf to sys_grf
Date: Thu,  7 Dec 2023 16:01:10 +0800
Message-Id: <20231207080110.652296-1-andyshrk@163.com>
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
X-CM-TRANSID:_____wDnT1jHe3FleWCfEw--.42568S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7AFW7tFy3Ww1DKw4DurW5trb_yoW8Zr1fpa
	sxAay2gr4xGrZFqF1vkFs8CFWakws7CayIk3WIk3Wa9ry7tr98KFs8Wa45JrW3trnruF4a
	q3yqyry3CFy7Ar7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jqWlgUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqA4-XmVOA0YHtQAAsb

From: Andy Yan <andy.yan@rock-chips.com>

The vop2 need to reference more grf(system grf, vop grf, vo0/1 grf,etc)
in the upcoming rk3588.

So we rename the current system grf to sys_grf.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index d52395b6aff7..64155b115744 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -190,7 +190,7 @@ struct vop2 {
 	void __iomem *regs;
 	struct regmap *map;
 
-	struct regmap *grf;
+	struct regmap *sys_grf;
 
 	/* physical map length of vop2 register */
 	u32 len;
@@ -1524,9 +1524,9 @@ static void rk3568_set_intf_mux(struct vop2_video_port *vp, int id,
 		dip &= ~RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL;
 		dip |= FIELD_PREP(RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL, polflags);
 		if (polflags & POLFLAG_DCLK_INV)
-			regmap_write(vop2->grf, RK3568_GRF_VO_CON1, BIT(3 + 16) | BIT(3));
+			regmap_write(vop2->sys_grf, RK3568_GRF_VO_CON1, BIT(3 + 16) | BIT(3));
 		else
-			regmap_write(vop2->grf, RK3568_GRF_VO_CON1, BIT(3 + 16));
+			regmap_write(vop2->sys_grf, RK3568_GRF_VO_CON1, BIT(3 + 16));
 		break;
 	case ROCKCHIP_VOP2_EP_HDMI0:
 		die &= ~RK3568_SYS_DSP_INFACE_EN_HDMI_MUX;
@@ -2768,7 +2768,7 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
 			return PTR_ERR(vop2->lut_regs);
 	}
 
-	vop2->grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,grf");
+	vop2->sys_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,grf");
 
 	vop2->hclk = devm_clk_get(vop2->dev, "hclk");
 	if (IS_ERR(vop2->hclk)) {
-- 
2.34.1


