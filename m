Return-Path: <devicetree+bounces-246008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E1FCB7BCE
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 04:15:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D72A30056C7
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 03:15:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48BDA287503;
	Fri, 12 Dec 2025 03:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="rcuYiB2U"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56FF2868B4;
	Fri, 12 Dec 2025 03:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765509308; cv=none; b=fzoIhBxESglGqF3nJWRq6C8fNNAFLkcaqRQC8inA5eQO2NwyN293rLdmOnu3GIy8ix4VvoHHU7+/Gbnp6z7XgyZxnI4Aqro49QOhGwxTIAz3Vr6ha3WBBwjCjj7rlf3gBwAM31/Smlw+L5AzjpLIbcxVdjc/XpedtT5w0cqcgDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765509308; c=relaxed/simple;
	bh=q5zFeGpEptBsiSnh+6y1h2uSGIQYy/yFN02p0CXSulc=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZjdwFSw8smbdYMwEC4WNPp65XQE7uNrBer204RWDgHCjX0Zi9981MLgw0ZJNLnwNKRmeah8PPs1mSi1Z0EtbVeYytLZjZgNn5o9Sp/0dqae+uIPHQI/KF5epPytdqc9dmWhUS/oRRo45Re/GWXHsHl4HA4MGQvR4+fIsExLYzmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=rcuYiB2U; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com
X-UUID: bfa01568d70811f0b2bf0b349165d6e0-20251212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=qnnh38WJAKhFUnTMejVnEV0DsAhOkvN9JTUMh9QkfBM=;
	b=rcuYiB2UtyUa4LIatdFpAgwz567SUbmw+BACmFJqTjirEv3B0WiBPoCAANWqW7CMUzCQXh1MyKlJlyacmegO7KiLfkDJrYBuR4I1ZBW1551pOHjREjpYFPSGxGt/uRkVLsPtv9Ze9W3PL6AbxvdVWPWDsM4DKOEgRTwWMyHpmbE=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:0bc28dd0-d986-4dd2-b19b-388235f218b5,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:ab136f28-e3a2-4f78-a442-8c73c4eb9e9d,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|888|898,TC:-5,Content:0|15
	|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,
	OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: bfa01568d70811f0b2bf0b349165d6e0-20251212
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <xiaoshun.xu@mediatek.corp-partner.google.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2092637910; Fri, 12 Dec 2025 11:15:02 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 12 Dec 2025 11:15:01 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1748.26 via Frontend Transport; Fri, 12 Dec 2025 11:15:01 +0800
From: Xiaoshun Xu <xiaoshun.xu@mediatek.corp-partner.google.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Xiaoshun Xu
	<xiaoshun.xu@mediatek.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	Sirius Wang <sirius.wang@mediatek.com>, Vince-wl Liu
	<vince-wl.liu@mediatek.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: [PATCH 1/4] dt-bindings: soc: devapc: Add for support MT8189
Date: Fri, 12 Dec 2025 11:13:42 +0800
Message-ID: <20251212031450.489128-2-xiaoshun.xu@mediatek.corp-partner.google.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251212031450.489128-1-xiaoshun.xu@mediatek.corp-partner.google.com>
References: <20251212031450.489128-1-xiaoshun.xu@mediatek.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain


External email : Please do not click links or open attachments until you ha=
ve verified the sender or the content.


From: "xiaoshun.xu" <xiaoshun.xu@mediatek.com>

Add compatible and vio-idx-num attribute of MT8189

Signed-off-by: xiaoshun.xu <xiaoshun.xu@mediatek.com>
---
 Documentation/devicetree/bindings/soc/mediatek/devapc.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/mediatek/devapc.yaml b/D=
ocumentation/devicetree/bindings/soc/mediatek/devapc.yaml
index 99e2caafeadf..4068786d3bb1 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/devapc.yaml
+++ b/Documentation/devicetree/bindings/soc/mediatek/devapc.yaml
@@ -21,6 +21,7 @@ properties:
     enum:
       - mediatek,mt6779-devapc
       - mediatek,mt8186-devapc
+      - mediatek,mt8189-devapc

   reg:
     description: The base address of devapc register bank
@@ -30,6 +31,10 @@ properties:
     description: A single interrupt specifier
     maxItems: 1

+  vio-idx-num:
+    description: Describe the number of bus slaves controlled by devapc
+    maxItems: 1
+
   clocks:
     description: Contains module clock source and clock names
     maxItems: 1
@@ -55,6 +60,7 @@ examples:
     devapc: devapc@10207000 {
       compatible =3D "mediatek,mt6779-devapc";
       reg =3D <0x10207000 0x1000>;
+      vio-idx-num =3D <132>;
       interrupts =3D <GIC_SPI 168 IRQ_TYPE_LEVEL_LOW>;
       clocks =3D <&infracfg_ao CLK_INFRA_DEVICE_APC>;
       clock-names =3D "devapc-infra-clock";
--
2.45.2


