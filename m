Return-Path: <devicetree+bounces-13095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D187DC847
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 09:34:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BCD10B20F23
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 08:34:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A91A112B98;
	Tue, 31 Oct 2023 08:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="mdVPANBF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0FA11C98
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 08:34:09 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1BD1E4;
	Tue, 31 Oct 2023 01:34:06 -0700 (PDT)
X-UUID: 3df6ce0477c811eea33bb35ae8d461a2-20231031
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=FTZqwD/20ghPILDsRmA6p9FFef8yR//zyhkrO7qqtPo=;
	b=mdVPANBFF6t4JSQ8GALWug+/NbE7/wFIUTqLr3z9FDnQcYnkzChv/U1Ahxwozyp6nYUcUm9rqjSs0ttveygilw4n0ZAkyBesgk+fsZlOeoNzQMv5zb7tBFBV6bYybxNmwN+rBDB17K+NnssjPjd0K5Gz9tnNfcmTDnJ+NdfqJcg=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.33,REQID:b8dfc43a-c5a0-4bd5-bfb3-cc6f0723f917,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:364b77b,CLOUDID:9bc7f9fb-4a48-46e2-b946-12f04f20af8c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 3df6ce0477c811eea33bb35ae8d461a2-20231031
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <moudy.ho@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 812276998; Tue, 31 Oct 2023 16:34:01 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 31 Oct 2023 16:34:00 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 31 Oct 2023 16:34:00 +0800
From: Moudy Ho <moudy.ho@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Hans Verkuil
	<hverkuil-cisco@xs4all.nl>
CC: <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-media@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, Moudy
 Ho <moudy.ho@mediatek.com>
Subject: [PATCH v9 13/16] dt-bindings: display: mediatek: merge: add compatible for MT8195
Date: Tue, 31 Oct 2023 16:33:54 +0800
Message-ID: <20231031083357.13775-14-moudy.ho@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20231031083357.13775-1-moudy.ho@mediatek.com>
References: <20231031083357.13775-1-moudy.ho@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-MTK: N

Add a compatible string for the MERGE block in MediaTek MT8195 that
is controlled by MDP3.

Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/mediatek/mediatek,merge.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,merge.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,merge.yaml
index eead5cb8636e..401498523404 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,merge.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,merge.yaml
@@ -24,6 +24,7 @@ properties:
       - enum:
           - mediatek,mt8173-disp-merge
           - mediatek,mt8195-disp-merge
+          - mediatek,mt8195-mdp3-merge
       - items:
           - const: mediatek,mt6795-disp-merge
           - const: mediatek,mt8173-disp-merge
-- 
2.18.0


