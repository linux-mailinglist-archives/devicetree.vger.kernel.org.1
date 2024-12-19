Return-Path: <devicetree+bounces-132814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B569F8308
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 19:16:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D6A751886AEE
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 18:16:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A62C1A9B3C;
	Thu, 19 Dec 2024 18:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="Ef9zswrL"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D199A1A2541;
	Thu, 19 Dec 2024 18:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734632144; cv=none; b=GbyPGeXaY7Cky8cWH/w6hODH/hylFajTG2tmwdpoz67zKsW3iSVTgklDmNURNazmegVynAL5d7Q9asOUiSvZv587AWsW3aXe3Bvhh40r29unfpZIT+ZMk3pGl3Z8ClMgKWFh/0WXGU6p2QTpq6xSuYtkpN+6cgOw/P/ooK90U/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734632144; c=relaxed/simple;
	bh=WXd1xiuYWxe2KAR1aWb6q8smXDCSg9QyGhejXjj1pDw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Qfq15BTNi3ebagdj9Z4X33Xmfc0U1jIb5Pfp1mGZaAfTHdxcCH2zs/2Reh6tZ29DZ8WfyRZmKMfIJfuZUVA519qvuL9jBbsnzmcwjRdl1t8hdgJCH+Xftxme4ScYpEUaNJkbH0lQH4/HfTOsp/au7V3pht4VtdwjFCArfWCc5x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=Ef9zswrL; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 3e3b3c92be3511ef99858b75a2457dd9-20241220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=RfSeQ/Thxe80g7AraQywxO3WYtGR9lgg3whZfpNXAzE=;
	b=Ef9zswrLXoZ7DurnxJY4dc1p+TtNI6Rg31wClSmcQiRXMqD/pDBGd1/eY56yVqyhiTSQphbIcPg4V/tpT+13hRXIWYkOUtu4AwyZyDVdrErZhIeEwyqk44MUGaT9MR6m8X76fawKW78b67q+sioNST104SwIl6qmUHUvJ2zlN5o=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:d34f64ca-76b4-436e-84b8-ab81fdd38d2b,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:60143f3c-e809-4df3-83cd-88f012b9e9ba,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102,TC:nil,Content:0,EDM:-3,IP
	:nil,URL:11|1,File:nil,RT:100,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV
	:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 3e3b3c92be3511ef99858b75a2457dd9-20241220
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1395435308; Fri, 20 Dec 2024 02:15:35 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
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
	<jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy
 Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, Fei Shao
	<fshao@chromium.org>, Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH v3 2/4] dt-bindings: display: mediatek: ovl: Modify rules for MT8195/MT8188
Date: Fri, 20 Dec 2024 02:15:29 +0800
Message-ID: <20241219181531.4282-3-jason-jh.lin@mediatek.com>
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

From: Hsiao Chien Sung <shawn.sung@mediatek.com>

Modify rules for both MT8195 and MT8188.
Hardware capabilities include color formats and AFBC are
changed since MT8195, stop using the settings of MT8183.

Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
---
 .../bindings/display/mediatek/mediatek,ovl.yaml          | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
index 33542211507f..4f110635afb6 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
@@ -26,6 +26,7 @@ properties:
           - mediatek,mt8173-disp-ovl
           - mediatek,mt8183-disp-ovl
           - mediatek,mt8192-disp-ovl
+          - mediatek,mt8195-disp-ovl
           - mediatek,mt8195-mdp3-ovl
       - items:
           - enum:
@@ -36,16 +37,14 @@ properties:
           - enum:
               - mediatek,mt6795-disp-ovl
           - const: mediatek,mt8173-disp-ovl
-      - items:
-          - enum:
-              - mediatek,mt8188-disp-ovl
-              - mediatek,mt8195-disp-ovl
-          - const: mediatek,mt8183-disp-ovl
       - items:
           - enum:
               - mediatek,mt8186-disp-ovl
               - mediatek,mt8365-disp-ovl
           - const: mediatek,mt8192-disp-ovl
+      - items:
+          - const: mediatek,mt8188-disp-ovl
+          - const: mediatek,mt8195-disp-ovl
       - items:
           - const: mediatek,mt8188-mdp3-ovl
           - const: mediatek,mt8195-mdp3-ovl
-- 
2.43.0


