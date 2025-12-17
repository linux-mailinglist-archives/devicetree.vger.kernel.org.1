Return-Path: <devicetree+bounces-247252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2055BCC646C
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 07:37:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5185530E64F6
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 06:34:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66BBF3148C7;
	Wed, 17 Dec 2025 06:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="LThlTPv9"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9140B313E24;
	Wed, 17 Dec 2025 06:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765953285; cv=none; b=LaOekPFbAcUEqVjfwtq35jEd1b8TQBI6aQ/wmH5a4tYs2owLj2NUz16hJuwY6nYfwbtrD/uor9R+WhCaTaPHAzpo0d0BuM5qL3TIG90KAZb3eZ8Cm9QB0nujaY7rqpmV6oii2FKOTGkc5EN2TC1okT271hsbnV1C/jnOJnFEY+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765953285; c=relaxed/simple;
	bh=cXvcE/4zusvgEWHDn8JmMoO++lvEC69nMBVm7PuWaVg=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=U4zpAG+EZsU/t9pHl774iOSLeQr9xDzqC5JAiWf+C/cW2vx0hcFGAJOwdGkULOHqZs4ddhZbpjNDim34KDHPp0rPqr5vmqyddEVVKAdJQ8ibWt54Jh8Jy5bLgIR3guj+ff+OnpWS+e5Sh1YzXjzHEkukYYkFvOBpstAx1ZesidE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=LThlTPv9; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com
X-UUID: 75aff014db1211f0b33aeb1e7f16c2b6-20251217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=Qa0rG+HkH4eerZc8wp6OWcbR/ghiOeq880uZtF8zOjI=;
	b=LThlTPv9K/hN9gEN1Ibo9U0F/GOjosVouSmkrj3N6+fFNJ0txaXH4tIWZDh9844XlXj+Da3qg9eD4PCtoA6DnboNR6scoFKwhCOko6nAPkVNa//PNwJWcie201jpQDSoTpap4HAF6kMCqyIcBfA90eT67spbBjkJhJHxfItvWwQ=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:4821d03e-67d4-4dcf-b580-10793e0e094c,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:983288c6-8a73-4871-aac2-7b886d064f36,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|888|898,TC:-5,Content:0|15
	|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,
	OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 75aff014db1211f0b33aeb1e7f16c2b6-20251217
Received: from mtkmbs09n2.mediatek.inc [(172.21.101.94)] by mailgw02.mediatek.com
	(envelope-from <xiaoshun.xu@mediatek.corp-partner.google.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 810163785; Wed, 17 Dec 2025 14:34:37 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 14:34:36 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Wed, 17 Dec 2025 14:34:36 +0800
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
Subject: [PATCH v2 1/4] dt-bindings: soc: mediatek: devapc: Add bindings for MT8189
Date: Wed, 17 Dec 2025 14:34:10 +0800
Message-ID: <20251217063429.1157084-2-xiaoshun.xu@mediatek.corp-partner.google.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251217063429.1157084-1-xiaoshun.xu@mediatek.corp-partner.google.com>
References: <20251217063429.1157084-1-xiaoshun.xu@mediatek.corp-partner.google.com>
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


From: Xiaoshun Xu <xiaoshun.xu@mediatek.com>

Extend the devapc device tree bindings to support the MediaTek MT8189
SoC. This includes:

- Adding "mediatek,mt8189-devapc" to the list of compatible strings.
- Introducing the "vio-idx-num" property to specify the number of bus
  slaves managed by devapc.

These changes enable proper configuration and integration of devapc on
MT8189 platforms, ensuring accurate device matching and resource
allocation in the device tree.

Signed-off-by: Xiaoshun Xu <xiaoshun.xu@mediatek.com>
---
 .../devicetree/bindings/soc/mediatek/devapc.yaml       | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/mediatek/devapc.yaml b/D=
ocumentation/devicetree/bindings/soc/mediatek/devapc.yaml
index 99e2caafeadf..06a096440331 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/devapc.yaml
+++ b/Documentation/devicetree/bindings/soc/mediatek/devapc.yaml
@@ -14,13 +14,14 @@ description: |
   analysis and countermeasures.

 maintainers:
-  - Neal Liu <neal.liu@mediatek.com>
+  - Xiaoshun Xu <xiaoshun.xu@mediatek.com>

 properties:
   compatible:
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
+    $ref: /schemas/types.yaml#/definitions/uint32
+
   clocks:
     description: Contains module clock source and clock names
     maxItems: 1
@@ -42,8 +47,6 @@ required:
   - compatible
   - reg
   - interrupts
-  - clocks
-  - clock-names

 additionalProperties: false

@@ -55,6 +58,7 @@ examples:
     devapc: devapc@10207000 {
       compatible =3D "mediatek,mt6779-devapc";
       reg =3D <0x10207000 0x1000>;
+      vio-idx-num =3D <132>;
       interrupts =3D <GIC_SPI 168 IRQ_TYPE_LEVEL_LOW>;
       clocks =3D <&infracfg_ao CLK_INFRA_DEVICE_APC>;
       clock-names =3D "devapc-infra-clock";
--
2.45.2


