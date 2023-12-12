Return-Path: <devicetree+bounces-24318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D11A980EB74
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:20:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C483281122
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:20:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAEDC5EE68;
	Tue, 12 Dec 2023 12:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="mBcUHx6Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33EB3F3;
	Tue, 12 Dec 2023 04:20:10 -0800 (PST)
X-UUID: c5ea7b4e98e811eeba30773df0976c77-20231212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=pbIhtZN7tbeEZN7b/e6iHZByMWn+L/d3BOIBFhKze9A=;
	b=mBcUHx6ZZUu+ywqQriIr/AXnlCRo+afPBm6/YsnRme4V/accePrdqGWzLTkRYiaBPAMG4i6e+nGe7GuM6DLSukknFoFtsjqqVhrooYqZwsY3Ru+ugaD1vdxVLRvJt7P3jHTgZyUu4aSOtnPEguwCVk8hrL+N9agA8rWjSbMrr2I=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35,REQID:bc3a8859-4acb-4962-9f58-fb1a3b65b4b0,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:5d391d7,CLOUDID:283b1c61-c89d-4129-91cb-8ebfae4653fc,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: c5ea7b4e98e811eeba30773df0976c77-20231212
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw02.mediatek.com
	(envelope-from <shawn.sung@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1777728567; Tue, 12 Dec 2023 20:20:01 +0800
Received: from mtkmbs13n2.mediatek.inc (172.21.101.108) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 12 Dec 2023 20:20:00 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 12 Dec 2023 20:20:00 +0800
From: Hsiao Chien Sung <shawn.sung@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, CK Hu <ck.hu@mediatek.com>
CC: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, Chen-Yu Tsai <wenst@chromium.org>, Sean Paul
	<sean@poorly.run>, Fei Shao <fshao@chromium.org>, Bibby Hsieh
	<bibby.hsieh@mediatek.com>, <dri-devel@lists.freedesktop.org>,
	<linux-mediatek@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	"Hsiao Chien Sung" <shawn.sung@mediatek.com>
Subject: [PATCH v4 01/17] soc: mediatek: Add register definitions for GCE
Date: Tue, 12 Dec 2023 20:19:41 +0800
Message-ID: <20231212121957.19231-2-shawn.sung@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20231212121957.19231-1-shawn.sung@mediatek.com>
References: <20231212121957.19231-1-shawn.sung@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--0.744200-8.000000
X-TMASE-MatchedRID: +aiIZkdJNeWLwgJA7qJvFMnUT+eskUQPUAjrAJWsTe//evmlVf9xZkN+
	V6ZFLcNdK+GE57usLIi8xfjW6NxdqFfnsPC4h9MjSEQN/D/3cG4IYICTzfK2gccfB5qY+d3io8W
	MkQWv6iXBcIE78YqRWo6HM5rqDwqtZHKDEaeJy4byKRh4CNRN852PVxVMV2ioN9hxljcgqvC+po
	L87PUishRY09hgyy5B79Evy1WLpYHKWZR2fV44oViLpGR6nqyUwZBgUyJVEbl6Fw8/PpTMRaVvm
	iAyeA2kc5MSfkiJFI5p3LlElBHTlw==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--0.744200-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	2D86889AE4343A0DF89ACE741E79DE7F8215F39A453CACB35BE8DDAD111FC7682000:8
X-MTK: N

Add register definitions for GCE so users can use them
as a buffer to store data.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
---
 include/linux/soc/mediatek/mtk-cmdq.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index 649955d2cf5c..a253c001c861 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -14,6 +14,16 @@
 #define CMDQ_ADDR_HIGH(addr)	((u32)(((addr) >> 16) & GENMASK(31, 0)))
 #define CMDQ_ADDR_LOW(addr)	((u16)(addr) | BIT(1))
 
+/*
+ * Every cmdq thread has its own SPRs (Specific Purpose Registers),
+ * so there are 4 * 24 (threads) = 96 SPRs in GCE that shares the
+ * same indexes below
+ */
+#define CMDQ_THR_SPR_IDX0	(0)
+#define CMDQ_THR_SPR_IDX1	(1)
+#define CMDQ_THR_SPR_IDX2	(2)
+#define CMDQ_THR_SPR_IDX3	(3)
+
 struct cmdq_pkt;
 
 struct cmdq_client_reg {
-- 
2.18.0


