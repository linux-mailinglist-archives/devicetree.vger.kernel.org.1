Return-Path: <devicetree+bounces-1988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AB67B7A95E2
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:57:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C691E281A88
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 16:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7FF5199D3;
	Thu, 21 Sep 2023 16:56:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12351199CD
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 16:56:41 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58E14191;
	Thu, 21 Sep 2023 09:56:27 -0700 (PDT)
X-UUID: 7a17d822584411ee8051498923ad61e6-20230921
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=SRNqRps3CGBBaZ+7ttdHnWTO7l+/Fifh5VHyZDlIus0=;
	b=GboWcYtBWla4Slto44VfyB1+qowlbZPjUhauFoecUqZhsCCWjuB0e4rSO7JmSnDyFLb2QfKGUkrKcrD+EmplSW0ctULtxSygMd9HJQ1ULle4iq2kouqfbQQP0jSd11FP+o0qO34iGkf1bXg9PsmtlfnH72qhACsBGuMiXxUQ5h8=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:b96c5374-780b-4601-b9cb-1cd2ebb3ac81,IP:0,U
	RL:0,TC:0,Content:100,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:100
X-CID-META: VersionHash:5f78ec9,CLOUDID:208448c3-1e57-4345-9d31-31ad9818b39f,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:801|102,TC:nil,Content:3,EDM:-3,IP:n
	il,URL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR
	:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 7a17d822584411ee8051498923ad61e6-20230921
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw02.mediatek.com
	(envelope-from <jason-ch.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1762390298; Thu, 21 Sep 2023 14:02:42 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 21 Sep 2023 14:02:41 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 21 Sep 2023 14:02:41 +0800
From: Jason-ch Chen <jason-ch.chen@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>
CC: =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?=
	<nfraprado@collabora.com>, Chen-Yu Tsai <wenst@chromium.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <linux-mediatek@lists.infradead.org>,
	jason-ch chen <Jason-ch.Chen@mediatek.com>
Subject: [RESEND PATCH v4 3/4] dt-bindings: soc: mediatek: pwrap: Modify compatible for MT8188
Date: Thu, 21 Sep 2023 14:02:34 +0800
Message-ID: <20230921060235.32478-4-jason-ch.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20230921060235.32478-1-jason-ch.chen@mediatek.com>
References: <20230921060235.32478-1-jason-ch.chen@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-MTK: N
X-Spam-Status: No, score=1.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,RDNS_NONE,
	SPF_HELO_PASS,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: jason-ch chen <Jason-ch.Chen@mediatek.com>

The reason for changing the patch was that while MT8188 uses the same
pwrap as MT8195, the original code was only applicable to 'compatible =
"mediatek,mt8188-pwrap"'. To resolve the DTBS check warning that
'['mediatek,mt8188-pwrap', 'mediatek,mt8195-pwrap', 'syscon'] is too
long', it is necessary to modify the code.

Signed-off-by: jason-ch chen <Jason-ch.Chen@mediatek.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../devicetree/bindings/soc/mediatek/mediatek,pwrap.yaml    | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/mediatek/mediatek,pwrap.yaml b/Documentation/devicetree/bindings/soc/mediatek/mediatek,pwrap.yaml
index a06ac2177444..4737e5f45d54 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/mediatek,pwrap.yaml
+++ b/Documentation/devicetree/bindings/soc/mediatek/mediatek,pwrap.yaml
@@ -41,7 +41,6 @@ properties:
               - mediatek,mt8173-pwrap
               - mediatek,mt8183-pwrap
               - mediatek,mt8186-pwrap
-              - mediatek,mt8188-pwrap
               - mediatek,mt8195-pwrap
               - mediatek,mt8365-pwrap
               - mediatek,mt8516-pwrap
@@ -50,6 +49,11 @@ properties:
               - mediatek,mt8186-pwrap
               - mediatek,mt8195-pwrap
           - const: syscon
+      - items:
+          - enum:
+              - mediatek,mt8188-pwrap
+          - const: mediatek,mt8195-pwrap
+          - const: syscon
 
   reg:
     minItems: 1
-- 
2.18.0


