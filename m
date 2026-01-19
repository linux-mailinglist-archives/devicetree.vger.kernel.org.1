Return-Path: <devicetree+bounces-256853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FE0D3A821
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 13:11:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 96A25312E421
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 12:06:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A0DD35A922;
	Mon, 19 Jan 2026 12:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="EPe8L1Dp"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BE99359FBD;
	Mon, 19 Jan 2026 12:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768824375; cv=none; b=dCwSxX1NiYtJq8ODmn99wnVCy6xLXTV9mW0TbtShb6AmsgCbRTXntfacn05xKADMR8VqoCAckB/M1FKFoAflsWy+Nspk7EFKLH1l9ZSKFWWcZ85ejBjsnbUbVm19qblzxC9W9rYPm1gRQyIjHoRdEGRljC6Pp37gl7ubiPaG00Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768824375; c=relaxed/simple;
	bh=vHPUqvPjrKYSRKCT8/SLoPYBMcGYvCPIzgNB5DVIev8=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YJWVjXcT/Ava9rCFJpxD7u8sRskW90Y7EwFmS6TzgamQP5F6FjcKUd8DwLpVuD0CG/qXqIeiCx/rD8UvzP1vdzMIQilBo9WC1pOU9rgOf11h9Hx08/5XkkmJvAwnuumyowfTBEVUWc7Hp0+UFUlw3zz6mrYrrBzneOt3yfS0k4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=EPe8L1Dp; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 37adce6cf52f11f085319dbc3099e8fb-20260119
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=w0nwvDGGbeAKlwnytlfaB28/G6v7YRJwvlUfRCNlojw=;
	b=EPe8L1DpcN9ftDy5Jic4MHD8r55PInTVCswIrjn+rAilR93SnAz6TO/hoCMBw6ycERTnwXoEJv1j8l1L0hZdgUf1WQfBvElkjJPlD02wVuLMal3w9vH9BO5czu1rIPf1o8Yh/2h+wyTxvWca0SlSNZKV+ZQcJueiqAtGAsW2qXM=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.9,REQID:b5b18ef5-1c5f-4f51-b2cf-51ff76c541ae,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:5047765,CLOUDID:ca0e4c5a-a957-4259-bcca-d3af718d7034,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|836|888|898,TC:-5,Content:
	0|15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:nil,COL:0,OS
	I:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 37adce6cf52f11f085319dbc3099e8fb-20260119
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw01.mediatek.com
	(envelope-from <friday.yang@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 401522602; Mon, 19 Jan 2026 20:05:59 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 MTKMBS14N2.mediatek.inc (172.21.101.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 19 Jan 2026 20:05:57 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Mon, 19 Jan 2026 20:05:57 +0800
From: Friday Yang <friday.yang@mediatek.com>
To: Yong Wu <yong.wu@mediatek.com>, Krzysztof Kozlowski <krzk@kernel.org>, Rob
 Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Philipp Zabel
	<p.zabel@pengutronix.de>
CC: Friday Yang <friday.yang@mediatek.com>,
	<linux-mediatek@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: [PATCH v12 1/2] dt-bindings: memory: mediatek: Add SMI reset and clamp for MT8188
Date: Mon, 19 Jan 2026 20:05:24 +0800
Message-ID: <20260119120552.9325-2-friday.yang@mediatek.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20260119120552.9325-1-friday.yang@mediatek.com>
References: <20260119120552.9325-1-friday.yang@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

On the MediaTek MT8188 SoC, bus glitches may occur during MTCMOS
on/off transitions. The root cause is a hardware design choice in
the camera subsystem where the SMI LARB and SMI Sub-Common modules
are located in separate power domains and controlled by independent
MTCMOS gates. A timing window exists after the main power domain
is enabled but before the sub-power domain is enabled. During this
window, unstable glitch signals can appear on the bus. Unlike other
subsystems, the camera subsystem lacks a GALs (Globally Asynchronous
Locally Synchronous) hardware module, which would normally handle
cross-domain synchronization and filter out such glitches.
In contrast, other subsystems have their SMI LARB and SMI Sub-Common
within one power domain or could rely on GALs for synchronization.
Thus they are not affected by this issue.

To prevent these glitches from causing bus hang, SMI requires clamp
and reset operations. This change adds the 'resets' and 'reset-names'
properties to SMI LARBs within camera subsystem to support the necessary
reset operations. This reset setting is exclusively required for the
MediaTek MT8188 platform and remains inactive on other SoCs.

We also add 'smi-sub-common' in the smi-common binding for MT8188.
This indicates that some SMI LARBs are connected to the SMI Sub-Common,
which in turn is connected to the SMI Common. The hardware block diagram
can be described as follows.

             SMI-Common(Smart Multimedia Interface Common)
                 |
         +----------------+------------------+
         |                |                  |
         |                |                  |
         |                |                  |
         |                |                  |
         |                |                  |
       larb0       SMI-Sub-Common0     SMI-Sub-Common1
                   |      |     |      |             |
                  larb1  larb2 larb3  larb7       larb9

Signed-off-by: Friday Yang <friday.yang@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../mediatek,smi-common.yaml                  |  2 ++
 .../memory-controllers/mediatek,smi-larb.yaml | 19 +++++++++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.yaml b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.yaml
index 0762e0ff66ef..3d98c08b2149 100644
--- a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.yaml
@@ -40,6 +40,7 @@ properties:
           - mediatek,mt8186-smi-common
           - mediatek,mt8188-smi-common-vdo
           - mediatek,mt8188-smi-common-vpp
+          - mediatek,mt8188-smi-sub-common
           - mediatek,mt8192-smi-common
           - mediatek,mt8195-smi-common-vdo
           - mediatek,mt8195-smi-common-vpp
@@ -108,6 +109,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - mediatek,mt8188-smi-sub-common
               - mediatek,mt8195-smi-sub-common
     then:
       required:
diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.yaml b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.yaml
index 2e7fac4b5094..fc5feb2eac1f 100644
--- a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.yaml
@@ -70,6 +70,12 @@ properties:
     description: the hardware id of this larb. It's only required when this
       hardware id is not consecutive from its M4U point of view.

+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: larb
+
 required:
   - compatible
   - reg
@@ -126,6 +132,19 @@ allOf:
       required:
         - mediatek,larb-id

+  - if:  # only for image, camera and ipe subsys
+      properties:
+        compatible:
+          const: mediatek,mt8188-smi-larb
+        mediatek,larb-id:
+          enum:
+            [ 9, 10, 11, 12, 13, 16, 17, 18, 19, 20 ]
+
+    then:
+      required:
+        - resets
+        - reset-names
+
 additionalProperties: false

 examples:
--
2.46.0


