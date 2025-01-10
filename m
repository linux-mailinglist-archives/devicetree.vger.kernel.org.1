Return-Path: <devicetree+bounces-137432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E29E2A090A3
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:39:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D59BB169F92
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 12:39:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A23B20E022;
	Fri, 10 Jan 2025 12:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="qAIF2d1C"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BEF220D4EF;
	Fri, 10 Jan 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736512735; cv=none; b=lg15xQ9e+IJtQc+/hOFgUcKkein67wDdx76KyVZyGFfR7+gBdS9dq+0eRhlIPBMVnxDDCKlbVl8mUs/47oI/r/pBwUkrJ+DChsjHUqvp7lIexgT55xqRQxUbKhwqIqKnFUqdYs5px6UXUQ8B967vOWYvwnOJr2EtFQDSi5gjkEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736512735; c=relaxed/simple;
	bh=T8inuxYX1whuYWlYjXquV3Uq/JVSWvqqQLDjScljKfM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hqWbKz9BAwrWXxY+UPKuICEBF9f9tVsnuMyMcDx54+dKl3ZQh9aUHeDu9PMcdxXUXgrx1drBV/wSVgtnpes2UThf8L9/ziKBDoI6toml5h7XcEIBp5sh6F1pVIID3S8sjfRMGg0tEo92YukqcuPpYS6UxAgtT14E3V4ogAmHTEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=qAIF2d1C; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: d5be8e68cf4f11efbd192953cf12861f-20250110
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=MGyQBUwYYEO4oshPjes0yXd0Yo2H13I9Vf3yrjfUpO4=;
	b=qAIF2d1CUJ8BZvpQ2xJov7yP5ov+1tsisqMuWq79Iz9tttdxK9iDGV3iog50PfPOjZ3eeTgybwQ3VyDpZJ2DCNJSsqvINJk5yUU5InMBYha5j9Wj5GXklz3+DrKDz45hUw7d9WIbVB3waY3g89Ra1ir4B7iBSNhbllsvl43rpTI=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:43bd1e08-2ef4-41d5-b1f7-96f43eb90ed4,IP:0,U
	RL:25,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTI
	ON:release,TS:0
X-CID-META: VersionHash:60aa074,CLOUDID:b66f4e13-8831-4185-8e40-f83b1917e828,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102,TC:nil,Content:0|50,EDM:-3
	,IP:nil,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0
	,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: d5be8e68cf4f11efbd192953cf12861f-20250110
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw02.mediatek.com
	(envelope-from <paul-pl.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 432231468; Fri, 10 Jan 2025 20:38:46 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 10 Jan 2025 20:38:46 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 10 Jan 2025 20:38:46 +0800
From: paul-pl.chen <paul-pl.chen@mediatek.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<chunkuang.hu@kernel.org>, <angelogioacchino.delregno@collabora.com>
CC: <matthias.bgg@gmail.com>, <p.zabel@pengutronix.de>,
	<jason-jh.lin@mediatek.com>, <nancy.lin@mediatek.com>,
	<singo.chang@mediatek.com>, <xiandong.wang@mediatek.com>,
	<sirius.wang@mediatek.com>, <paul-pl.chen@mediatek.com>,
	<sunny.shen@mediatek.com>, <fshao@chromium.org>, <treapking@chromium.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: [PATCH 05/12] dt-bindings: display: mediatek: add OUTPROC yaml for MT8196
Date: Fri, 10 Jan 2025 20:34:01 +0800
Message-ID: <20250110123835.2719824-7-paul-pl.chen@mediatek.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110123835.2719824-1-paul-pl.chen@mediatek.com>
References: <20250110123835.2719824-1-paul-pl.chen@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: "Paul-pl.Chen" <paul-pl.chen@mediatek.com>

Add mediate,outproc.yaml to support OUTPROC for MT8196.

Signed-off-by: Paul-pl.Chen <paul-pl.chen@mediatek.com>
---
The header used in examples: 
#include <dt-bindings/clock/mt8196-clk.h>
is not upstreamed yet. 

It will be sent by related owner soon.
---
 .../display/mediatek/mediatek,outproc.yaml    | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,outproc.yaml

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,outproc.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,outproc.yaml
new file mode 100644
index 000000000000..b304ae41420f
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,outproc.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mediatek/mediatek,outproc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek display overlap output processor
+
+maintainers:
+  - Chun-Kuang Hu <chunkuang.hu@kernel.org>
+  - Philipp Zabel <p.zabel@pengutronix.de>
+
+description: |
+  MediaTek display overlap output processor, namely OVL_OUTPROC or OUTPROC,
+  handles the post-stage of pixel processing in the overlapping procedure.
+  OVL_OUTPROC manages pixels for gamma correction and ensures that pixel
+  values are within the correct range.
+
+properties:
+  compatible:
+    const: mediatek,mt8196-outproc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Overlap Output Processor Clock
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt8196-clk.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        disp_ovl0_outproc0: outproc@32970000 {
+            compatible = "mediatek,mt8196-outproc";
+            reg = <0 0x32970000 0 0x1000>;
+            clocks = <&ovlsys_config_clk CLK_OVL_OUTPROC0_DISP>;
+            interrupts = <GIC_SPI 450 IRQ_TYPE_LEVEL_HIGH 0>;
+        };
+    };
-- 
2.34.1


