Return-Path: <devicetree+bounces-159588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A20BA6B7BB
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 10:40:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C75A717FF28
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 09:39:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D551D22CBC4;
	Fri, 21 Mar 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="iEB9WbCe"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B67B22B8AF;
	Fri, 21 Mar 2025 09:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742549753; cv=none; b=FZ8fFicLGGnTVtsxQeTzMNUAziywuWOdSlIfEcNFHRcev6DUFPZbUzHaYE65lnWC8T7Zywh6OFPk2R5/5bwK/voqcXWK4boNv2kpAsrCZTnCxqXNAf9+RDpzL0LjLPQ0INPbxBbC6YG8DiBh4vMEyQmNItLlYEFRtnoc6glIfw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742549753; c=relaxed/simple;
	bh=JCKFr8BsD9aTpW1pTq8fmxvlko+iaUhJqCwvEM6XuHc=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JIlnzSfjDsx/NVRyNrFKq3mFQKn8r6mX0zfdRImbzHE1QEeXO9eTLXujFdFK9g5sXKQq1yyLjALqu9mM6WGxMBxE7u2ywRDSI4cyDysNx0EvztzgbKu7feXjF7gGQnn1PZswwFECVwE7SGu5viZFEV4nJU2yMuQ3QEs+rOFvUzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=iEB9WbCe; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: dd04c0ec063711f08eb9c36241bbb6fb-20250321
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=nTSF2h1OnKkWH6HxXI+MAWBmqT+Sba+o9eR7NLazAxQ=;
	b=iEB9WbCeYL6P1EJc5g2hv7I81QWbv7jW5Dkkp3N32cFa9GDMIvUTGFavsru9MydlntnH0bLYyR7lAx6F0B+5uJEPXfTT+EcwXrMfox0eNKpsRnip+BuGytUOPqnm/jF250F0Nl5O+ffl67WeEYGEMZvxbOtz1JfRw8q40HJei7U=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.2.1,REQID:097bb579-5626-4aae-9d76-b7fe0355ff90,IP:0,UR
	L:0,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-25
X-CID-META: VersionHash:0ef645f,CLOUDID:9113aa8c-f5b8-47d5-8cf3-b68fe7530c9a,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102,TC:nil,Content:0|50,EDM:-3
	,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV
	:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: dd04c0ec063711f08eb9c36241bbb6fb-20250321
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw02.mediatek.com
	(envelope-from <paul-pl.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 143833965; Fri, 21 Mar 2025 17:35:44 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.39; Fri, 21 Mar 2025 17:35:43 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1258.39 via Frontend Transport; Fri, 21 Mar 2025 17:35:43 +0800
From: paul-pl.chen <paul-pl.chen@mediatek.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<chunkuang.hu@kernel.org>, <angelogioacchino.delregno@collabora.com>
CC: <matthias.bgg@gmail.com>, <p.zabel@pengutronix.de>,
	<jason-jh.lin@mediatek.com>, <nancy.lin@mediatek.com>,
	<singo.chang@mediatek.com>, <xiandong.wang@mediatek.com>,
	<sirius.wang@mediatek.com>, <paul-pl.chen@mediatek.com>,
	<sunny.shen@mediatek.com>, <fshao@chromium.org>, <treapking@chromium.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: [PATCH v2 15/15] drm/mediatek: Add support for MT8196 multiple mmsys
Date: Fri, 21 Mar 2025 17:33:44 +0800
Message-ID: <20250321093435.94835-16-paul-pl.chen@mediatek.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250321093435.94835-1-paul-pl.chen@mediatek.com>
References: <20250321093435.94835-1-paul-pl.chen@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Nancy Lin <nancy.lin@mediatek.com>

Add code to support MT8196 SOC Multi MMSYS Driver

Signed-off-by: Nancy Lin <nancy.lin@mediatek.com>
Signed-off-by: Paul-pl Chen <paul-pl.chen@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 119 ++++++++++++++++++++++++-
 1 file changed, 115 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index b9c6a2a657ea..70a7e6d06d4f 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -193,6 +193,10 @@ static const struct mtk_drm_route mt8188_mtk_ddp_main_routes[] = {
 	{0, DDP_COMPONENT_DSI0},
 };
 
+static const struct mtk_drm_route mt8196_mtk_ddp_routes[] = {
+	{2, DDP_COMPONENT_DSI0},
+};
+
 static const unsigned int mt8192_mtk_ddp_main[] = {
 	DDP_COMPONENT_OVL0,
 	DDP_COMPONENT_OVL_2L0,
@@ -231,6 +235,50 @@ static const unsigned int mt8195_mtk_ddp_ext[] = {
 	DDP_COMPONENT_DP_INTF1,
 };
 
+static const unsigned int mt8196_mtk_ddp_ovl0_main[] = {
+	DDP_COMPONENT_DRM_OVLSYS_ADAPTOR0,
+	DDP_COMPONENT_OVL0_DLO_ASYNC5,
+};
+
+static const unsigned int mt8196_mtk_ddp_disp0_main[] = {
+	DDP_COMPONENT_DLI_ASYNC0,
+	DDP_COMPONENT_DLO_ASYNC1,
+};
+
+static const unsigned int mt8196_mtk_ddp_disp1_main[] = {
+	DDP_COMPONENT_DLI_ASYNC21,
+	DDP_COMPONENT_DVO0,
+};
+
+static const unsigned int mt8196_mtk_ddp_ovl0_ext[] = {
+	DDP_COMPONENT_DRM_OVLSYS_ADAPTOR1,
+	DDP_COMPONENT_OVL0_DLO_ASYNC6,
+};
+
+static const unsigned int mt8196_mtk_ddp_disp0_ext[] = {
+	DDP_COMPONENT_DLI_ASYNC1,
+	DDP_COMPONENT_DLO_ASYNC2,
+};
+
+static const unsigned int mt8196_mtk_ddp_disp1_ext[] = {
+	DDP_COMPONENT_DLI_ASYNC22,
+	DDP_COMPONENT_DP_INTF0,
+};
+
+static const unsigned int mt8196_mtk_ddp_ovl1_third[] = {
+	DDP_COMPONENT_DRM_OVLSYS_ADAPTOR2,
+	DDP_COMPONENT_OVL1_DLO_ASYNC5,
+};
+
+static const unsigned int mt8196_mtk_ddp_disp0_third[] = {
+	DDP_COMPONENT_DLI_ASYNC8,
+	DDP_COMPONENT_DLO_ASYNC3,
+};
+
+static const unsigned int mt8196_mtk_ddp_disp1_third[] = {
+	DDP_COMPONENT_DLI_ASYNC23,
+};
+
 static const struct mtk_mmsys_driver_data mt2701_mmsys_driver_data = {
 	.main_path = mt2701_mtk_ddp_main,
 	.main_len = ARRAY_SIZE(mt2701_mtk_ddp_main),
@@ -327,8 +375,65 @@ static const struct mtk_mmsys_driver_data mt8195_vdosys1_driver_data = {
 	.min_height = 1,
 };
 
-static const struct mtk_mmsys_driver_data mt8365_mmsys_driver_data = {
-	.mmsys_dev_num = 1,
+static const struct mtk_mmsys_driver_data mt8196_dispsys0_driver_data = {
+	.main_path = mt8196_mtk_ddp_disp0_main,
+	.main_len = ARRAY_SIZE(mt8196_mtk_ddp_disp0_main),
+	.main_order = 1,
+	.ext_path = mt8196_mtk_ddp_disp0_ext,
+	.ext_len = ARRAY_SIZE(mt8196_mtk_ddp_disp0_ext),
+	.ext_order = 1,
+	.third_path = mt8196_mtk_ddp_disp0_third,
+	.third_len = ARRAY_SIZE(mt8196_mtk_ddp_disp0_third),
+	.third_order = 1,
+	.mmsys_id = DISPSYS0,
+	.mmsys_dev_num = 4,
+	.max_width = 8191,
+	.min_width = 2, /* 2-pixel align when ethdr is bypassed */
+	.min_height = 1,
+};
+
+static const struct mtk_mmsys_driver_data mt8196_dispsys1_driver_data = {
+	.main_path = mt8196_mtk_ddp_disp1_main,
+	.main_len = ARRAY_SIZE(mt8196_mtk_ddp_disp1_main),
+	.main_order = 2,
+	.ext_path = mt8196_mtk_ddp_disp1_ext,
+	.ext_len = ARRAY_SIZE(mt8196_mtk_ddp_disp1_ext),
+	.ext_order = 2,
+	.third_path = mt8196_mtk_ddp_disp1_third,
+	.third_len = ARRAY_SIZE(mt8196_mtk_ddp_disp1_third),
+	.conn_routes = mt8196_mtk_ddp_routes,
+	.num_conn_routes = ARRAY_SIZE(mt8196_mtk_ddp_routes),
+	.third_order = 2,
+	.mmsys_id = DISPSYS1,
+	.mmsys_dev_num = 4,
+	.max_width = 8191,
+	.min_width = 2, /* 2-pixel align when ethdr is bypassed */
+	.min_height = 1,
+};
+
+static const struct mtk_mmsys_driver_data mt8196_ovlsys0_driver_data = {
+	.main_path = mt8196_mtk_ddp_ovl0_main,
+	.main_len = ARRAY_SIZE(mt8196_mtk_ddp_ovl0_main),
+	.main_order = 0,
+	.ext_path = mt8196_mtk_ddp_ovl0_ext,
+	.ext_len = ARRAY_SIZE(mt8196_mtk_ddp_ovl0_ext),
+	.ext_order = 0,
+	.mmsys_id = OVLSYS0,
+	.mmsys_dev_num = 4,
+	.max_width = 8191,
+	.min_width = 2, /* 2-pixel align when ethdr is bypassed */
+	.min_height = 1,
+};
+
+static const struct mtk_mmsys_driver_data mt8196_ovlsys1_driver_data = {
+	.third_path = mt8196_mtk_ddp_ovl1_third,
+	.third_len = ARRAY_SIZE(mt8196_mtk_ddp_ovl1_third),
+	.third_order = 0,
+	.mmsys_id = OVLSYS1,
+	.mmsys_dev_num = 4,
+	.max_width = 8191,
+	.min_width = 2, /* 2-pixel align when ethdr is bypassed */
+	.min_height = 1,
 };
 
 static const struct of_device_id mtk_drm_of_ids[] = {
@@ -358,8 +463,14 @@ static const struct of_device_id mtk_drm_of_ids[] = {
 	  .data = &mt8195_vdosys0_driver_data},
 	{ .compatible = "mediatek,mt8195-vdosys1",
 	  .data = &mt8195_vdosys1_driver_data},
-	{ .compatible = "mediatek,mt8365-mmsys",
-	  .data = &mt8365_mmsys_driver_data},
+	{ .compatible = "mediatek,mt8196-dispsys0",
+	  .data = &mt8196_dispsys0_driver_data},
+	{ .compatible = "mediatek,mt8196-dispsys1",
+	  .data = &mt8196_dispsys1_driver_data},
+	{ .compatible = "mediatek,mt8196-ovlsys0",
+	  .data = &mt8196_ovlsys0_driver_data},
+	{ .compatible = "mediatek,mt8196-ovlsys1",
+	  .data = &mt8196_ovlsys1_driver_data},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, mtk_drm_of_ids);
-- 
2.45.2


