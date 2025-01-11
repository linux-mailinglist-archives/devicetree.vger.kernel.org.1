Return-Path: <devicetree+bounces-137679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F19A0A410
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 15:16:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 063C83A9CFB
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 14:16:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01B0117BBF;
	Sat, 11 Jan 2025 14:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="bWHT0Mk9"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50A428F3;
	Sat, 11 Jan 2025 14:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736604977; cv=none; b=sdn4vwnBso4txbQ6w2fHV5T4Jtv3BmqWyvDwZDvCE7UaR1VVAjDuECikGUdcLgysrkq7zs8mw8URlxs2uPzLkICVxHIjKqNkBIvDkZIZn3XZzE2Ig0vHqMutXEYx4XuMH69npZfx0wwW63ALKKgV1GxobyB66dYcrjnwG3ZFZuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736604977; c=relaxed/simple;
	bh=LNh+JQzKHBvXpc+B4ZwQaKDj/skN54ZdW5i+cMkR7OY=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=EgiG8V3aq+Vh2EKa8cgs7L76WomWLJNxIogHxzG6ZaUISERI++8Nob259zK3hMuV+51Cq3ZeV98/lDq5UvO7YpTqvRHf/bQlJP09Tp5yXSKtKofnAc1RGceWHnSDAnR9zuwEklhMcXA98D6drCU30iVLu93945gWOlpi7uRI3zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=bWHT0Mk9; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 96c94a36d02611ef99858b75a2457dd9-20250111
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=Cht/vAGJIZzbEfrDdOm9SBLezLgKDjkDcZWdI0QLLZ8=;
	b=bWHT0Mk9ks1mdLfS2S4+T8zLPxViQpeXzGGcLf0Az7eRagMT+fhJ09MByE1TK73Ytl+gtB4IbzMx7jd8xVh5nWMhpF10SOR41jzdQPu6tF7zRgmMyhEF/aej5ih1X+3BP++vPlTdDpYWelZs6hxxrH0wKHCOzWVivDbcLDyMRsU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:f33e136b-0709-4c65-8b53-bb9e39241abf,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:60aa074,CLOUDID:a692bb0e-078a-483b-8929-714244d25c49,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0|50,EDM:-3,IP:ni
	l,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,
	LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 96c94a36d02611ef99858b75a2457dd9-20250111
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw01.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 488059237; Sat, 11 Jan 2025 22:16:02 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Sat, 11 Jan 2025 22:16:01 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1258.28 via Frontend Transport; Sat, 11 Jan 2025 22:16:00 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>
CC: Chunfeng Yun <chunfeng.yun@mediatek.com>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: [RESEND PATCH 1/2] dt-bindings: phy: mediatek,xsphy: add property to set disconnect threshold
Date: Sat, 11 Jan 2025 22:15:41 +0800
Message-ID: <20250111141542.5007-1-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 2.46.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-MTK: N

Add a property to tune usb2 phy's disconnect threshold.
And add a compatible for mt8196.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
based on kernel 6.13-rc1

this property is porting from t-phy driver, due to the u2 phy are similar.
---
 Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
index a9e3139fd421..2e012d5e1da1 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
@@ -49,6 +49,7 @@ properties:
       - enum:
           - mediatek,mt3611-xsphy
           - mediatek,mt3612-xsphy
+          - mediatek,mt8196-xsphy
       - const: mediatek,xsphy
 
   reg:
@@ -129,6 +130,13 @@ patternProperties:
         minimum: 1
         maximum: 7
 
+      mediatek,discth:
+        description:
+          The selection of disconnect threshold (U2 phy)
+        $ref: /schemas/types.yaml#/definitions/uint32
+        minimum: 1
+        maximum: 15
+
       mediatek,efuse-intr:
         description:
           The selection of Internal Resistor (U2/U3 phy)
-- 
2.46.0


