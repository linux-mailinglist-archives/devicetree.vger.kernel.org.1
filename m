Return-Path: <devicetree+bounces-25106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A16812753
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 06:59:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C41E2821A4
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 05:59:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42DA76AC2;
	Thu, 14 Dec 2023 05:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="hQAtEnLN"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB5CB1BC1;
	Wed, 13 Dec 2023 21:58:58 -0800 (PST)
X-UUID: da65302e9a4511eeba30773df0976c77-20231214
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=zT0/dVzTq/5/KwjP2Gaq1AJNyFqB1WS0NxFr2ZWObRU=;
	b=hQAtEnLNbhunP6KjD4NVxO192cCE16uHqSw5LM9vQUlSIFNHQeK2Grf5l0freSiGQd+h7RTfynhhFrnH553IE1Flbai3V/nYs5/46Mo17gnJHi25ccLPSlkodAKNQ8n5VuBGEOLbhkeAHDB2i4YX9y1Vle9IvXuu33eay/npvyc=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35,REQID:7374aded-f82d-441c-859a-ed1b2de473d5,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5d391d7,CLOUDID:3bbfa7fd-4a48-46e2-b946-12f04f20af8c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: da65302e9a4511eeba30773df0976c77-20231214
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <shawn.sung@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1061979112; Thu, 14 Dec 2023 13:58:50 +0800
Received: from mtkmbs13n2.mediatek.inc (172.21.101.108) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 14 Dec 2023 13:58:48 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 14 Dec 2023 13:58:48 +0800
From: Hsiao Chien Sung <shawn.sung@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, "CK
 Hu" <ck.hu@mediatek.com>
CC: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, Daniel Vetter
	<daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
	Matthias Brugger <matthias.bgg@gmail.com>, Moudy Ho <moudy.ho@mediatek.com>,
	Hsiao Chien Sung <shawn.sung@mediatek.com>, Nathan Lu
	<nathan.lu@mediatek.com>, "Nancy . Lin" <nancy.lin@mediatek.com>, "Roy-CW .
 Yeh" <roy-cw.yeh@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>,
	xinlei lee <xinlei.lee@mediatek.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linux-mediatek@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v12 02/23] dt-bindings: display: mediatek: mdp-rdma: Add compatible for MT8188
Date: Thu, 14 Dec 2023 13:58:26 +0800
Message-ID: <20231214055847.4936-3-shawn.sung@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20231214055847.4936-1-shawn.sung@mediatek.com>
References: <20231214055847.4936-1-shawn.sung@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--0.514200-8.000000
X-TMASE-MatchedRID: tiRXYRqWr+sDh1tb/sWFHED6z8N1m1ALqm/9CTn1HV3fUZT83lbkED1/
	uZDvFhzjSBg3ErWyNT+HEeMTfR0Cex8TzIzimOwPC24oEZ6SpSmb4wHqRpnaDnM7QywOsMaA7nm
	J4V/Qs0LD2w3h4bqG8G78Q8SFinQH1YTFGXn+YVpCGhrVBcn9nye2Q1OA/Wt49hViwM+K6rnffS
	22Lf8M9Ema3zYT97IFAYfQIAUhBayZvmCbKVb49sZL6x5U/HridGByp+zdaDg=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--0.514200-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 7BF01D8E9422302803E2809614DBAD15FC07834700D366739298BB634293B2822000:8
X-MTK: N

Add compatible name for MediaTek MT8188 MDP-RDMA.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
---
 .../bindings/display/mediatek/mediatek,mdp-rdma.yaml        | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,mdp-rdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,mdp-rdma.yaml
index dd12e2ff685c..7570a0684967 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,mdp-rdma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,mdp-rdma.yaml
@@ -21,7 +21,11 @@ description:
 
 properties:
   compatible:
-    const: mediatek,mt8195-vdo1-rdma
+    oneOf:
+      - const: mediatek,mt8195-vdo1-rdma
+      - items:
+          - const: mediatek,mt8188-vdo1-rdma
+          - const: mediatek,mt8195-vdo1-rdma
 
   reg:
     maxItems: 1
-- 
2.18.0


