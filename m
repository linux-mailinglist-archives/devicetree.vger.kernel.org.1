Return-Path: <devicetree+bounces-11276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 289107D509D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:01:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A1EB1C20FBB
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 13:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACFB028DB8;
	Tue, 24 Oct 2023 13:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="kaVNT9Nj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4E728DC1
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:01:06 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8FF310E7;
	Tue, 24 Oct 2023 06:01:01 -0700 (PDT)
X-UUID: 5d59b0f0726d11eea33bb35ae8d461a2-20231024
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=N3dNrwf/7s0ewHwtuPND+CAHocwQcAVzrEM4Iqme5qU=;
	b=kaVNT9NjP23ttmsBymCZgEuHIzLJ90HpKSwxAYNuLaVrxLeL+l/Sfv5pJqsTFMbOtVIxrXNUtOt01ehR+scHmjM1ONuTu5h2004EMjFe5pNDx54RiNPpd9MgwAzEm4PDuKfwo6fF+Du/xvPjSCJNeOQgrkIeKt/EBhJB2729+Lc=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:082d11cb-f7b4-4ba3-aa2f-48e9c0931019,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:7a809394-10ce-4e4b-85c2-c9b5229ff92b,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 5d59b0f0726d11eea33bb35ae8d461a2-20231024
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <shawn.sung@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1881311829; Tue, 24 Oct 2023 21:00:53 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 24 Oct 2023 21:00:53 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 24 Oct 2023 21:00:53 +0800
From: Hsiao Chien Sung <shawn.sung@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, CK
 Hu <ck.hu@mediatek.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>
CC: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, Daniel Vetter
	<daniel@ffwll.ch>, Fei Shao <fshao@chromium.org>, Sean Paul
	<sean@poorly.run>, Johnson Wang
	<johnson.wang@mediatek.corp-partner.google.com>, "Nancy . Lin"
	<nancy.lin@mediatek.com>, Moudy Ho <moudy.ho@mediatek.com>, Hsiao Chien Sung
	<shawn.sung@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>,
	Nathan Lu <nathan.lu@mediatek.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linux-mediatek@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v11 08/23] soc: mediatek: Support MT8188 VDOSYS1 Padding in mtk-mmsys
Date: Tue, 24 Oct 2023 21:00:33 +0800
Message-ID: <20231024130048.14749-9-shawn.sung@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20231024130048.14749-1-shawn.sung@mediatek.com>
References: <20231024130048.14749-1-shawn.sung@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-MTK: N

- Add Padding components
- Add Mutex module definitions for Padding

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
---
 drivers/soc/mediatek/mtk-mutex.c       | 16 ++++++++++++++++
 include/linux/soc/mediatek/mtk-mmsys.h |  8 ++++++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-mutex.c b/drivers/soc/mediatek/mtk-mutex.c
index 988a678819d9..d52ce093adb7 100644
--- a/drivers/soc/mediatek/mtk-mutex.c
+++ b/drivers/soc/mediatek/mtk-mutex.c
@@ -142,6 +142,14 @@
 #define MT8188_MUTEX_MOD_DISP1_MDP_RDMA5	5
 #define MT8188_MUTEX_MOD_DISP1_MDP_RDMA6	6
 #define MT8188_MUTEX_MOD_DISP1_MDP_RDMA7	7
+#define MT8188_MUTEX_MOD_DISP1_PADDING0		8
+#define MT8188_MUTEX_MOD_DISP1_PADDING1		9
+#define MT8188_MUTEX_MOD_DISP1_PADDING2		10
+#define MT8188_MUTEX_MOD_DISP1_PADDING3		11
+#define MT8188_MUTEX_MOD_DISP1_PADDING4		12
+#define MT8188_MUTEX_MOD_DISP1_PADDING5		13
+#define MT8188_MUTEX_MOD_DISP1_PADDING6		14
+#define MT8188_MUTEX_MOD_DISP1_PADDING7		15
 #define MT8188_MUTEX_MOD_DISP1_VPP_MERGE0	20
 #define MT8188_MUTEX_MOD_DISP1_VPP_MERGE1	21
 #define MT8188_MUTEX_MOD_DISP1_VPP_MERGE2	22
@@ -474,6 +482,14 @@ static const unsigned int mt8188_mutex_mod[DDP_COMPONENT_ID_MAX] = {
 	[DDP_COMPONENT_MDP_RDMA5] = MT8188_MUTEX_MOD_DISP1_MDP_RDMA5,
 	[DDP_COMPONENT_MDP_RDMA6] = MT8188_MUTEX_MOD_DISP1_MDP_RDMA6,
 	[DDP_COMPONENT_MDP_RDMA7] = MT8188_MUTEX_MOD_DISP1_MDP_RDMA7,
+	[DDP_COMPONENT_PADDING0] = MT8188_MUTEX_MOD_DISP1_PADDING0,
+	[DDP_COMPONENT_PADDING1] = MT8188_MUTEX_MOD_DISP1_PADDING1,
+	[DDP_COMPONENT_PADDING2] = MT8188_MUTEX_MOD_DISP1_PADDING2,
+	[DDP_COMPONENT_PADDING3] = MT8188_MUTEX_MOD_DISP1_PADDING3,
+	[DDP_COMPONENT_PADDING4] = MT8188_MUTEX_MOD_DISP1_PADDING4,
+	[DDP_COMPONENT_PADDING5] = MT8188_MUTEX_MOD_DISP1_PADDING5,
+	[DDP_COMPONENT_PADDING6] = MT8188_MUTEX_MOD_DISP1_PADDING6,
+	[DDP_COMPONENT_PADDING7] = MT8188_MUTEX_MOD_DISP1_PADDING7,
 	[DDP_COMPONENT_MERGE1] = MT8188_MUTEX_MOD_DISP1_VPP_MERGE0,
 	[DDP_COMPONENT_MERGE2] = MT8188_MUTEX_MOD_DISP1_VPP_MERGE1,
 	[DDP_COMPONENT_MERGE3] = MT8188_MUTEX_MOD_DISP1_VPP_MERGE2,
diff --git a/include/linux/soc/mediatek/mtk-mmsys.h b/include/linux/soc/mediatek/mtk-mmsys.h
index 2475ef914746..4885b065b849 100644
--- a/include/linux/soc/mediatek/mtk-mmsys.h
+++ b/include/linux/soc/mediatek/mtk-mmsys.h
@@ -62,6 +62,14 @@ enum mtk_ddp_comp_id {
 	DDP_COMPONENT_OVL_2L1,
 	DDP_COMPONENT_OVL_2L2,
 	DDP_COMPONENT_OVL1,
+	DDP_COMPONENT_PADDING0,
+	DDP_COMPONENT_PADDING1,
+	DDP_COMPONENT_PADDING2,
+	DDP_COMPONENT_PADDING3,
+	DDP_COMPONENT_PADDING4,
+	DDP_COMPONENT_PADDING5,
+	DDP_COMPONENT_PADDING6,
+	DDP_COMPONENT_PADDING7,
 	DDP_COMPONENT_POSTMASK0,
 	DDP_COMPONENT_PWM0,
 	DDP_COMPONENT_PWM1,
-- 
2.18.0


