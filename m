Return-Path: <devicetree+bounces-23852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0443880C8A2
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 12:58:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B344C281B7E
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 11:58:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4897938DE7;
	Mon, 11 Dec 2023 11:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="j+m8NrFI"
X-Original-To: devicetree@vger.kernel.org
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.220])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7A2BFC7;
	Mon, 11 Dec 2023 03:57:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=pekM+
	FGyDCtPmb0jWNTPyTz93vTz66hJl88mKNFM3+k=; b=j+m8NrFI/1Ppiyiy8feG6
	d2nLjYwgaz30T777MGIvsDyXMkVoyJ3QatlKAFgOqrr9SCd4ynjglJTbJ2wjCcq3
	+X5ByFNMJgecmkQFqdiWOCwMLHaqdCEWNGUZPvi4l4UNFWKU/HwDpdQyhWlXF/n/
	pXYP/ttAsbAEOGRasdPjUo=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-3 (Coremail) with SMTP id _____wD3P7kg+XZl27GIFQ--.10114S2;
	Mon, 11 Dec 2023 19:57:23 +0800 (CST)
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
Subject: [PATCH v5 02/16] Revert "drm/rockchip: vop2: Use regcache_sync() to fix suspend/resume"
Date: Mon, 11 Dec 2023 19:57:19 +0800
Message-Id: <20231211115719.1784834-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211115547.1784587-1-andyshrk@163.com>
References: <20231211115547.1784587-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3P7kg+XZl27GIFQ--.10114S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Cw1rGr1xXF4xCFy7tr45trb_yoW8Cw4UpF
	W7AryYqr4IgFWjqw1kJFWUZFWYyrsFyayfCrn7G3WS9rnxKrnakrn8GF15ZFn8Ar1xur42
	yFn7ta47CFW7uFJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jYE__UUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEgdDXmVOA42+ugAAsp

From: Andy Yan <andy.yan@rock-chips.com>

This reverts commit b63a553e8f5aa6574eeb535a551817a93c426d8c.

regcache_sync will try to reload the configuration in regcache to
hardware, but the registers of 4 Cluster windows and Esmart1/2/3 on
the upcoming rk3588 can not be set successfully before internal PD
power on.

Also it's better to keep the hardware register as it is before we really
enable it.

So let's revert this version, and keep the first version:
commit afa965a45e01 ("drm/rockchip: vop2: fix suspend/resume")

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 312da5783362..57784d0a22a6 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -217,6 +217,8 @@ struct vop2 {
 	struct vop2_win win[];
 };
 
+static const struct regmap_config vop2_regmap_config;
+
 static struct vop2_video_port *to_vop2_video_port(struct drm_crtc *crtc)
 {
 	return container_of(crtc, struct vop2_video_port, crtc);
@@ -883,7 +885,11 @@ static void vop2_enable(struct vop2 *vop2)
 		return;
 	}
 
-	regcache_sync(vop2->map);
+	ret = regmap_reinit_cache(vop2->map, &vop2_regmap_config);
+	if (ret) {
+		drm_err(vop2->drm, "failed to reinit cache: %d\n", ret);
+		return;
+	}
 
 	if (vop2->data->soc_id == 3566)
 		vop2_writel(vop2, RK3568_OTP_WIN_EN, 1);
@@ -913,8 +919,6 @@ static void vop2_disable(struct vop2 *vop2)
 
 	pm_runtime_put_sync(vop2->dev);
 
-	regcache_mark_dirty(vop2->map);
-
 	clk_disable_unprepare(vop2->aclk);
 	clk_disable_unprepare(vop2->hclk);
 }
-- 
2.34.1


