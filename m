Return-Path: <devicetree+bounces-8044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9130E7C67B4
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:40:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39F8A2828F7
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 08:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC01B1B292;
	Thu, 12 Oct 2023 08:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="mijdgD6c"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7944BDF43
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 08:40:53 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52FE4CA;
	Thu, 12 Oct 2023 01:40:50 -0700 (PDT)
X-UUID: 08b85bc868db11eea33bb35ae8d461a2-20231012
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=seSDdPmbxpUkj2sJBRkLBY8UonHVXor/eqIz0QXz6T4=;
	b=mijdgD6cp8QoRqsF8BmhZiTnG8Uer/dprk4Yp1lcYdgY/bztax22clBj5FZe+p7X4Yj4D+iZY31TY6QS7/c0hoglVXVrGg2bCs0MKTBgiwvzqjOfMncemdYTTcGm2jgZDmgSvBs77mgzcibLZhhG7Yy+w9a6FzC+Jclo0mmTFZc=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:78ccc27d-3088-41d5-bedb-b58c94404ec1,IP:0,U
	RL:25,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:25
X-CID-META: VersionHash:5f78ec9,CLOUDID:3d45b5f0-9a6e-4c39-b73e-f2bc08ca3dc5,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_ULN,TF_CID_SPAM_SNR
X-UUID: 08b85bc868db11eea33bb35ae8d461a2-20231012
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw01.mediatek.com
	(envelope-from <moudy.ho@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 980679851; Thu, 12 Oct 2023 16:40:44 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 MTKMBS14N2.mediatek.inc (172.21.101.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 12 Oct 2023 16:40:41 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 12 Oct 2023 16:40:41 +0800
From: Moudy Ho <moudy.ho@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, Daniel Vetter
	<daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Hans Verkuil
	<hverkuil-cisco@xs4all.nl>
CC: <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-media@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, "Moudy
 Ho" <moudy.ho@mediatek.com>
Subject: [PATCH v7 08/16] dt-bindings: media: mediatek: mdp3: add component STITCH for MT8195
Date: Thu, 12 Oct 2023 16:40:29 +0800
Message-ID: <20231012084037.19376-9-moudy.ho@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20231012084037.19376-1-moudy.ho@mediatek.com>
References: <20231012084037.19376-1-moudy.ho@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--8.122500-8.000000
X-TMASE-MatchedRID: +k55+NgUc6boRPKKjGHPUxcqpH7D1rtQTJDl9FKHbrm7qpOHKudqczQz
	47GqDWjpnD3AxwqeC/rkllaluas5jhhzK7qAlTSLbBu6+EIezdwzc8FC0MEwT/zaSz3Z/4aao8A
	sEqzaHYd3IL9RTZjcZXNjxEfTH8yUnuh7s4XRTZbBVprK8rvWX3+vzHfC29pfzsQ8iRVyD45ZoZ
	UwtnkREuLzNWBegCW2U9w4XVXDWCYLbigRnpKlKWxlRJiH4397fj9jiMqiWyIjyTA0RbddwlqPC
	+KqjpoaRMaCF3Y0fhqpcY1cS87iDg==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--8.122500-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	510D9C277CA291CBA59DB39714405C3EBE96D1A69B6CBF0EA7D9DCCD43675FCB2000:8
X-MTK: N
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H5,
	RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the fundamental hardware configuration of component STITCH,
which is controlled by MDP3 on MT8195.

Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
---
 .../bindings/media/mediatek,mdp3-stitch.yaml  | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,mdp3-stitch.yaml

diff --git a/Documentation/devicetree/bindings/media/mediatek,mdp3-stitch.yaml b/Documentation/devicetree/bindings/media/mediatek,mdp3-stitch.yaml
new file mode 100644
index 000000000000..d815bea29154
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek,mdp3-stitch.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/mediatek,mdp3-stitch.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek Media Data Path 3 STITCH
+
+maintainers:
+  - Matthias Brugger <matthias.bgg@gmail.com>
+  - Moudy Ho <moudy.ho@mediatek.com>
+
+description:
+  One of Media Data Path 3 (MDP3) components used to combine multiple video frame
+  with overlapping fields of view to produce a segmented panorame.
+
+properties:
+  compatible:
+    enum:
+      - mediatek,mt8195-mdp3-stitch
+
+  reg:
+    maxItems: 1
+
+  mediatek,gce-client-reg:
+    description:
+      The register of display function block to be set by gce. There are 4 arguments,
+      such as gce node, subsys id, offset and register size. The subsys id that is
+      mapping to the register of display function blocks is defined in the gce header
+      include/dt-bindings/gce/<chip>-gce.h of each chips.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      items:
+        - description: phandle of GCE
+        - description: GCE subsys id
+        - description: register offset
+        - description: register size
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - mediatek,gce-client-reg
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt8195-clk.h>
+    #include <dt-bindings/gce/mt8195-gce.h>
+
+    display@14003000 {
+        compatible = "mediatek,mt8195-mdp3-stitch";
+        reg = <0x14003000 0x1000>;
+        mediatek,gce-client-reg = <&gce1 SUBSYS_1400XXXX 0x3000 0x1000>;
+        clocks = <&vppsys0 CLK_VPP0_STITCH>;
+    };
-- 
2.18.0


