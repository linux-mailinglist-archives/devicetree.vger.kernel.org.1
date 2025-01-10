Return-Path: <devicetree+bounces-137431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22ECCA090A0
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:39:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E207E7A173D
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 12:39:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBB6220DD66;
	Fri, 10 Jan 2025 12:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="Uc40krZG"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DFF120D4E0;
	Fri, 10 Jan 2025 12:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736512734; cv=none; b=u2HqpXc83YN61+L+QM+DSi+5SAEOntuONGg1+pbOGovKKjEJe8QwRBDB2DvEaidmTzmGPORvn3lRWjHlZi6ZrbLS8k634FVEwWcUo5ClXk8rOtg8QwdOvDRCZZDj9e7aRFmWFP0MN5KnwfW8Zj66rZHOlYOm9IJKgTJ/qoxGCBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736512734; c=relaxed/simple;
	bh=fEpqzuh5C8IZI2ZNwzHxpDzKslO9ScwANQ/uQfVSKWw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pD8+mgR8VTi8eLqMN+JRNhwAGonNL855g1E/m6djjDtXq1QJLDw2PZXVA++qCx0yUoI0FnYBrR9GI7fsiW7q6d8U4D7K7/nNnnaKOKi8vVkf2IrFcJ8mdSlQEe3IWYGVWRIf2N2PjVuzg+uafvOy+MJdnCtp+HwSbCQRzBTihMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=Uc40krZG; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: d6207c90cf4f11ef99858b75a2457dd9-20250110
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=JTkw/bYI3FoWPDuynXYp3ubicrDehWsU7Vu3Mi1fiwg=;
	b=Uc40krZGJA62tbmeNl5oV/XBqqm79BaeIn6Bka8q5I1XHN8+QOx6lyWEokcIk9p4uVqQSkF1EMOT6bVEfjZz7JOsiWlAPz3Dx34Uonr2YI9b7DVkMWZJwjVqrh+bsv7zs6AeJDq17H66WIVam4QxemhnrZM69wVMHN3nTPWUszw=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:592603c0-c5bf-43c4-8da2-35ed2d13fa2f,IP:0,U
	RL:25,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:25
X-CID-META: VersionHash:60aa074,CLOUDID:053cb20e-078a-483b-8929-714244d25c49,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102,TC:nil,Content:0|50,EDM:-3
	,IP:nil,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0
	,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: d6207c90cf4f11ef99858b75a2457dd9-20250110
Received: from mtkmbs09n2.mediatek.inc [(172.21.101.94)] by mailgw01.mediatek.com
	(envelope-from <paul-pl.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1484506307; Fri, 10 Jan 2025 20:38:47 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
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
Subject: [PATCH 04/12] dt-bindings: display: mediatek: add BLENDER yaml for MT8196
Date: Fri, 10 Jan 2025 20:34:00 +0800
Message-ID: <20250110123835.2719824-6-paul-pl.chen@mediatek.com>
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

Add mediatek,blender.yaml to support BLENDER for MT8196.

Signed-off-by: Paul-pl.Chen <paul-pl.chen@mediatek.com>
---
The header used in examples: 
#include <dt-bindings/clock/mt8196-clk.h>
is not upstreamed yet. 
It will be sent by related owner soon.
---
 .../display/mediatek/mediatek,blender.yaml    | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,blender.yaml

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,blender.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,blender.yaml
new file mode 100644
index 000000000000..0bcc1a797f71
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,blender.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mediatek/mediatek,blender.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek Display Overlap Blender
+
+maintainers:
+  - Chun-Kuang Hu <chunkuang.hu@kernel.org>
+  - Philipp Zabel <p.zabel@pengutronix.de>
+
+description:
+  MediaTek display overlap blender, namely OVL_BLENDER or BLENDER,
+  executes the alpha blending function for overlapping layers
+  from different sources. This is the primary function of the
+  overlapping system.
+
+properties:
+  compatible:
+    const: mediatek,mt8196-blender
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Overlap Blender Clock
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt8196-clk.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        disp_ovl0_blender0: blender@328d0000 {
+            compatible = "mediatek,mt8196-blender";
+            reg = <0 0x328d0000 0 0x1000>;
+            clocks = <&ovlsys_config_clk CLK_OVL_BLENDER0_DISP>;
+        };
+    };
-- 
2.34.1


