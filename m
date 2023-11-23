Return-Path: <devicetree+bounces-18293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5688D7F6076
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 14:38:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 87FB11C2100D
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 13:38:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8843125112;
	Thu, 23 Nov 2023 13:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iI/CzRx+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CDA424B59
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 13:38:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33F67C433C9;
	Thu, 23 Nov 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700746700;
	bh=yp3tKEvY3IVCFEhD0Bxg/Hw6hTrEBgQxqiXCTK5PONg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=iI/CzRx+LbYWI9WFQv0WzBDR0lAxkkzVvtOC7DAQgaylWVB0Kb9xobuPy+A/9V4ys
	 6EslE2vM1ydHw9XSW/FFipkTg5V7FHnrQ8hXY0FQmsfiw/DCnn+sxbq4jQDfh3NGQZ
	 FfZIzYVSg6nfy8/MYy4wpZT/XpLDcGftkMMaI7NtZDw7O6uqShHYJi8m+B1H7QbZ/g
	 4EN6pgFy2ZjJ50Hb89pELrKVU9RH+xLr7c4AyeilrWYswiHLSHySDwRMk/b6RTClXO
	 GF5KDC6eMbJ29r+vPueyY2a0DTT8oR3aKBDczeLj7/BRLSQCqj5w8upiJRaVbsIxN6
	 4M9pqlxxp0tLA==
From: Michael Walle <mwalle@kernel.org>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Xinlei Lee <xinlei.lee@mediatek.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Michael Walle <mwalle@kernel.org>
Subject: [PATCH 4/4] drm/mediatek: support the DSI0 output on the MT8195 VDOSYS0
Date: Thu, 23 Nov 2023 14:37:49 +0100
Message-Id: <20231123133749.2030661-5-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231123133749.2030661-1-mwalle@kernel.org>
References: <20231123133749.2030661-1-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

With the latest dynamic selection of the output component, we can now
support different outputs. Move current output component into the
dynamic routes array and add the new DSI0 output.

Signed-off-by: Michael Walle <mwalle@kernel.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 2b0c35cacbc6..6fa88976376e 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -222,7 +222,11 @@ static const unsigned int mt8195_mtk_ddp_main[] = {
 	DDP_COMPONENT_DITHER0,
 	DDP_COMPONENT_DSC0,
 	DDP_COMPONENT_MERGE0,
-	DDP_COMPONENT_DP_INTF0,
+};
+
+static const struct mtk_drm_route mt8195_mtk_ddp_main_routes[] = {
+	{ 0, DDP_COMPONENT_DP_INTF0 },
+	{ 0, DDP_COMPONENT_DSI0 },
 };
 
 static const unsigned int mt8195_mtk_ddp_ext[] = {
@@ -308,6 +312,8 @@ static const struct mtk_mmsys_driver_data mt8192_mmsys_driver_data = {
 static const struct mtk_mmsys_driver_data mt8195_vdosys0_driver_data = {
 	.main_path = mt8195_mtk_ddp_main,
 	.main_len = ARRAY_SIZE(mt8195_mtk_ddp_main),
+	.conn_routes = mt8195_mtk_ddp_main_routes,
+	.num_conn_routes = ARRAY_SIZE(mt8195_mtk_ddp_main_routes),
 	.mmsys_dev_num = 2,
 };
 
-- 
2.39.2


