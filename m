Return-Path: <devicetree+bounces-132810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D03789F82FC
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 19:15:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C61F518858EC
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 18:15:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2A691A304A;
	Thu, 19 Dec 2024 18:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="iAVtvC+S"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FED11A0BFD;
	Thu, 19 Dec 2024 18:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734632141; cv=none; b=bodbS9lt4PKp/JcDktwlS0hXlaeBev2obK26FSbv2/AB+xrdEh6MQO3k+rBJx1hO5i27h8lgL8QZJoqt45+eGOFRx8243X/FYHqsAf4atoxQEI0JD2XL+e4D9ydvGtgHr3JUXk8ICBiQ9TLSeIQSNsF5jnabFzcDoxSsO4Ga6us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734632141; c=relaxed/simple;
	bh=69ohKMjbTCSZ2hHFU8+PzBBKW+90cUKdgt+TSTj4SxY=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JiyiLDvbvnHq8EwffZ8vTR99V6xRX5T+QBryik0UdfWjCfdPCovRr91K+w0YaVx70IP1QxWAPKEWPlizb7gwNBVkzYIM7OBFiHNCNE/SLd3Sf0tZ0knufd78Flb/quSfB91RElBMD3nk4xGppyGgwBxOK7PuZFGVETyaCLm1zgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=iAVtvC+S; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 3e1c1ac4be3511ef99858b75a2457dd9-20241220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=D6l2tIy9AreNG9UEVSlyrqm8QJaBLoxbrNWgh+rkDbg=;
	b=iAVtvC+SlqLHCdQTvvE3ARX1VzKH4njUH7tkGTTrgrMVz3/NHN07lU5m0f9cjaLOiI9nqoPfE4y7xoLtsRfb5wzclt9uLZD2Jn2E75zxUsx6Yma9dqCfAkWKKTL8BuUaBL9Ya0bOc/sIaex9iiaPX+qGF0N7WKbErMD5mBiiVNE=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:878fcef0-b5c2-4418-82f5-27120de1f0ca,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:7320cc28-d2eb-4de2-b5c9-495d1bc17256,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102,TC:nil,Content:0,EDM:-3,IP
	:nil,URL:0,File:nil,RT:100,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,
	LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 3e1c1ac4be3511ef99858b75a2457dd9-20241220
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1609560375; Fri, 20 Dec 2024 02:15:35 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 20 Dec 2024 02:15:34 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 20 Dec 2024 02:15:34 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, "Jason-JH . Lin"
	<jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, "Nancy
 Lin" <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, Fei Shao
	<fshao@chromium.org>, Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH v3 1/4] dt-bindings: display: mediatek: ovl: Add compatible strings for MT8188 MDP3
Date: Fri, 20 Dec 2024 02:15:28 +0800
Message-ID: <20241219181531.4282-2-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20241219181531.4282-1-jason-jh.lin@mediatek.com>
References: <20241219181531.4282-1-jason-jh.lin@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-MTK: N

Add compatible strings for the MDP3 OVL hardware components in
MediaTek's MT8188 SoC and it is compatible with the existing
MT8195 MDP OVL components.

Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
Suggested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../devicetree/bindings/display/mediatek/mediatek,ovl.yaml     | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
index 9ea796a033b2..33542211507f 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
@@ -46,6 +46,9 @@ properties:
               - mediatek,mt8186-disp-ovl
               - mediatek,mt8365-disp-ovl
           - const: mediatek,mt8192-disp-ovl
+      - items:
+          - const: mediatek,mt8188-mdp3-ovl
+          - const: mediatek,mt8195-mdp3-ovl
 
   reg:
     maxItems: 1
-- 
2.43.0


