Return-Path: <devicetree+bounces-137434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6FDA090A8
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:39:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D05513A5C6E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 12:39:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C10AA20E33B;
	Fri, 10 Jan 2025 12:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="RoiLabX8"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 904CD20DD52;
	Fri, 10 Jan 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736512736; cv=none; b=YqwtYzQSo4rVZT/o9Dt9Ae/s92qoUODPpESrT/bxNt7n4loQ2kNtbiLzvb/GRNC3RAWIvtJFIdYaYRRfaCxo2sxAZ7BIymrBjzHXon+u+ulw6mbOqgKztPpgJWZ6gKZ9TqdlV6Y6yyFPLktk2goKPL/LpEsnAOrYplCDXhVeWro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736512736; c=relaxed/simple;
	bh=qbhifUig9ecFUJEmf508iRFBt2Jwkuhh6ZM3lmX2kg0=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Bv7Jdb79KinCItcBsUbhRpsn7HXX25CLn5SV87ePOxtBX0m78lpRPm+EVuRfU31MTA/qY6ixdHk0bNrOCS6sRKRpCa8olf/8aqYEJP/fH6/gzRlxkCYPxhoFmJDWpQXdlDl4vyJxAhNw87QMwFjHBuwS3A0hxVUI+qJ9tnHzt3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=RoiLabX8; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: d618e4b2cf4f11ef99858b75a2457dd9-20250110
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=iCYptYbHTJCtMnIRVZL/ESgJRF5lpqvKVREozV6dumE=;
	b=RoiLabX8Ax/QwYCoBNQy25HxuDvCjY5UHKt80ntcIU5+cNKJ4tRIv+k1tRpl6so6Bc1saBYnperVhmdzjNIZgWquMDM+a1aiD6a9vCXs6HbllJKB2pbFnH20YHZ30PK/aB2IiKGo9diKO0U7PsvqZiC/fQfo3OAZKk/crzJ8Ujs=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:4b07122d-e74d-43fc-8cad-4472fdee44d3,IP:0,U
	RL:25,TC:0,Content:-25,EDM:-25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,AC
	TION:release,TS:-25
X-CID-META: VersionHash:60aa074,CLOUDID:a86f4e13-8831-4185-8e40-f83b1917e828,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102,TC:nil,Content:0|50,EDM:1,
	IP:nil,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,
	AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: d618e4b2cf4f11ef99858b75a2457dd9-20250110
Received: from mtkmbs09n2.mediatek.inc [(172.21.101.94)] by mailgw01.mediatek.com
	(envelope-from <paul-pl.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 750545487; Fri, 10 Jan 2025 20:38:47 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 10 Jan 2025 20:38:45 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 10 Jan 2025 20:38:45 +0800
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
Subject: [PATCH 03/12] dt-bindings: display: mediatek: add EXDMA yaml for MT8196
Date: Fri, 10 Jan 2025 20:33:59 +0800
Message-ID: <20250110123835.2719824-5-paul-pl.chen@mediatek.com>
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

Add mediatek,exdma.yaml to support EXDMA for MT8196.

Signed-off-by: Paul-pl.Chen <paul-pl.chen@mediatek.com>
---
The header used in examples:
#include <dt-bindings/clock/mt8196-clk.h>
#include <dt-bindings/power/mt8196-power.h>
are not upstreamed yet.
It will be sent by related owner soon.
---
 .../display/mediatek/mediatek,exdma.yaml      | 77 +++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,exdma.yaml

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,exdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,exdma.yaml
new file mode 100644
index 000000000000..385f5549dfaa
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,exdma.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mediatek/mediatek,exdma.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek EXDMA
+
+maintainers:
+  - Chun-Kuang Hu <chunkuang.hu@kernel.org>
+  - Philipp Zabel <p.zabel@pengutronix.de>
+
+description:
+  The MediaTek display overlap extended DMA engine, namely OVL_EXDMA or EXDMA,
+  primarily functions as a DMA engine for reading data from DRAM with various
+  DRAM footprints and data formats. For input sources in certain color formats
+  and color domains, OVL_EXDMA also includes a color transfer function
+  to process pixels into a consistent color domain.
+
+properties:
+  compatible:
+    const: mediatek,mt8196-exdma
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: EXDMA Clock
+
+  power-domains:
+    maxItems: 1
+
+  mediatek,larb:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    maxItems: 1
+    items:
+      maxItems: 1
+    description: |
+      A phandle to the local arbiters node in the current SoCs.
+      Refer to bindings/memory-controllers/mediatek,smi-larb.yaml.
+
+  iommus:
+    maxItems: 1
+
+  '#dma-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - power-domains
+  - mediatek,larb
+  - iommus
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt8196-clk.h>
+    #include <dt-bindings/power/mt8196-power.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        disp_ovl0_exdma2: dma-controller@32850000 {
+            compatible = "mediatek,mt8196-exdma";
+            reg = <0 0x32850000 0 0x1000>;
+            clocks = <&ovlsys_config_clk CLK_OVL_EXDMA2_DISP>;
+            power-domains = <&hfrpsys MT8196_POWER_DOMAIN_OVL0_DORMANT>;
+            mediatek,larb = <&smi_larb0>;
+            iommus = <&mm_smmu 144>;
+            #dma-cells = <1>;
+        };
+    };
-- 
2.34.1


