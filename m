Return-Path: <devicetree+bounces-107692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E0798FC82
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 05:13:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE56B283BAE
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 03:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05EE83CF65;
	Fri,  4 Oct 2024 03:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="C7MJCK6s"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0E0374D1;
	Fri,  4 Oct 2024 03:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728011576; cv=none; b=urswArjtnHCVPtBBTBlY/XgwSOp3RYgePrg8P+rmboy7KCGHpD2b4AMXdRL29YrPa3ANL+OLSjQEU3t4uvJtoe1quEhoxlyF9hN9iwh9M8khCdHrWCQB6K5GcXWzNhtC2LY7/gcKuIRfNRf6mwOqJ8QIWMqvsKTCv+brpl51GfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728011576; c=relaxed/simple;
	bh=rq10KnIXiTtLxcQTehtj+ChVtY9CVoZjtUsBtYyfDqo=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=kvkXQFT3jyxDF0fhl8/A5P0pYUIxQQSxw92jpRt4jxuCDzpJDsKkPnwueaqKPsek2f86bcHZpIPPzspj1PNTKygaRbwtz5v5ukF0pSmRJ105kZKGUx8aXrj5QEhto+I/BHMF6r0nY7ZTKgpQ/VLsa/GDSciRiouQD67e0e6aixg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=C7MJCK6s; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 8996db8881fe11efb66947d174671e26-20241004
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=VvjdcvSMzu1NzlXSVqjDNCOu/6ZcirnM6M+SY+eZT3c=;
	b=C7MJCK6sLGK1cppmofpZcCefOwiPKEJC9Lw/wkBaL/DGoKaWA4crR2F3kVLmDzNsBanPFsNOOVKMKAse3qWIl/Ltq2F1O0xLQMQTgo9rh+MjhEmT4GFhGNPMnvo6OLVCuJMEKFtO4h+a/29bRdEVDPat3IDSXOmYDRtxcyxhSfQ=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.41,REQID:f159a020-776d-4300-a875-f53b42bc4c73,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6dc6a47,CLOUDID:1469ba40-8751-41b2-98dd-475503d45150,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 8996db8881fe11efb66947d174671e26-20241004
Received: from mtkmbs09n2.mediatek.inc [(172.21.101.94)] by mailgw01.mediatek.com
	(envelope-from <moudy.ho@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 818668340; Fri, 04 Oct 2024 11:12:50 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 4 Oct 2024 11:12:47 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 4 Oct 2024 11:12:47 +0800
From: Moudy Ho <moudy.ho@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, Simona Vetter
	<simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, "jason-jh . lin"
	<jason-jh.lin@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>
CC: <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, Moudy Ho <moudy.ho@mediatek.com>
Subject: [PATCH v4] dt-bindings: display: mediatek: split: add subschema property constraints
Date: Fri, 4 Oct 2024 11:12:45 +0800
Message-ID: <20241004031245.27514-1-moudy.ho@mediatek.com>
X-Mailer: git-send-email 2.18.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--3.848600-8.000000
X-TMASE-MatchedRID: ppgmZow9zj872d2F4DOSZIzb2GR6Ttd3MZm0+sEE9mtb6PBUqmq+Utdh
	dhqLxa0jj6kCfX0Edc5fvtuIsaf1Zbf0EuHoGRzu/IBH0OAL+EeusS9CiBzL8VSkag5D7Fg8O0i
	2vQl58jgZoBsQWiqLArpjAjMHHtZlHxPMjOKY7A8LbigRnpKlKZvjAepGmdoOaew8IIiXgAvvAG
	R1wjdU/A80WibzltluWeLosublKiwBfIYXHLfYyidcSTc3nswYRatHJpnW/fwOfN/N+ZGstJSM0
	+ojvAiRSZrfNhP3sgUBh9AgBSEFrJm+YJspVvj2xkvrHlT8euJ0YHKn7N1oOA==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--3.848600-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: F999A5621F1EC90E4B23B8EC631DC0308D8698A43EF295547A1B5EAC66FD31752000:8
X-MTK: N

The display node in mt8195.dtsi was triggering a CHECK_DTBS error due
to an excessively long 'clocks' property:
  display@14f06000: clocks: [[31, 14], [31, 43], [31, 44]] is too long

To resolve this issue, the constraints for 'clocks' and
other properties within the subschema will be reinforced.

Fixes: 739058a9c5c3 ("dt-bindings: display: mediatek: split: add compatible for MT8195")
Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>

--
This is based on [v2] dt-bindings: display: mediatek: split: add clocks count constraint for MT8195

Changes since v3:
  - Correct the compatible name for the mt8173 split in the subschema.

Changes since v2:
  - Revise the commit message.
  - Enhance the descriptions of 'clocks'.
  - Strengthen the conditions within the subschema.

Changes since v1:
  - Adding functional descriptions and quantity restrictions.
---
 .../display/mediatek/mediatek,split.yaml      | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,split.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,split.yaml
index e4affc854f3d..87f8477a7be8 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,split.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,split.yaml
@@ -57,6 +57,9 @@ properties:
   clocks:
     items:
       - description: SPLIT Clock
+      - description: Used for interfacing with the HDMI RX signal source.
+      - description: Paired with receiving HDMI RX metadata.
+    minItems: 1
 
 required:
   - compatible
@@ -72,9 +75,30 @@ allOf:
             const: mediatek,mt8195-mdp3-split
 
     then:
+      properties:
+        clocks:
+          maxItems: 3
+
+        power-domains:
+          maxItems: 1
+
       required:
         - mediatek,gce-client-reg
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: mediatek,mt8173-disp-split
+
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+
+        power-domains:
+          maxItems: 1
+
 additionalProperties: false
 
 examples:
-- 
2.34.1


