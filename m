Return-Path: <devicetree+bounces-6872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EFD7BD5A3
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 10:50:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C5ADA1C20860
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 08:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DA6C1FA8;
	Mon,  9 Oct 2023 08:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="m+HDPCGU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052631C06
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 08:50:22 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F1A5AC;
	Mon,  9 Oct 2023 01:50:18 -0700 (PDT)
X-UUID: dafcaa4c668011ee8051498923ad61e6-20231009
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=P3szfno1UBqprufN7RQz06YJGyjjH2OZ/gzFz/4X1ss=;
	b=m+HDPCGUeEwKHZW6yEOUOFkHnAj6nU0s60PGZAwGSuMTTLGdA2+rqAGS9zYOObfbZRaLBIZl7SnoznC04fQx/xDyXtMcNGNhzANXoUz+E1MkiILGySEzTmnK4TX5gToFRe9HhLZcwkCgMAeH17I7404+016NU4WkNy4RBzX9xws=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:94b268d8-3944-419c-92ce-3a9f7b29f119,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:a527d514-4929-4845-9571-38c601e9c3c9,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: dafcaa4c668011ee8051498923ad61e6-20231009
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw02.mediatek.com
	(envelope-from <jian.yang@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1762489106; Mon, 09 Oct 2023 16:50:11 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 9 Oct 2023 16:50:09 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 9 Oct 2023 16:50:08 +0800
From: Jian Yang <jian.yang@mediatek.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi
	<lpieralisi@kernel.org>, =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?=
	<kw@linux.com>, Matthias Brugger <matthias.bgg@gmail.com>, Jianjun Wang
	<jianjun.wang@mediatek.com>, Rob Herring <robh@kernel.org>
CC: <linux-pci@vger.kernel.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<Chuanjia.Liu@mediatek.com>, <Jieyy.Yang@mediatek.com>,
	<Qizhong.Cheng@mediatek.com>, jian.yang <jian.yang@mediatek.com>
Subject: [PATCH v3 1/2] dt-bindings: PCI: mediatek-gen3: Add support for controlling power and reset
Date: Mon, 9 Oct 2023 16:49:56 +0800
Message-ID: <20231009084957.18536-2-jian.yang@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231009084957.18536-1-jian.yang@mediatek.com>
References: <20231009084957.18536-1-jian.yang@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,RDNS_NONE,SPF_HELO_PASS,SPF_PASS,
	UNPARSEABLE_RELAY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: "jian.yang" <jian.yang@mediatek.com>

Add new properties to support control power supplies and reset pin of
a downstream component.

Signed-off-by: jian.yang <jian.yang@mediatek.com>
---
 .../bindings/pci/mediatek-pcie-gen3.yaml      | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
index 7e8c7a2a5f9b..eb4ad98549d1 100644
--- a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
+++ b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
@@ -84,6 +84,26 @@ properties:
     items:
       enum: [ phy, mac ]
 
+  pcie1v8-supply:
+    description:
+      The regulator phandle that provides 1.8V power from root port to a
+      downstream component.
+
+  pcie3v3-supply:
+    description:
+      The regulator phandle that provides 3.3V power from root port to a
+      downstream component.
+
+  pcie12v-supply:
+    description:
+      The regulator phandle that provides 12V power from root port to a
+      downstream component.
+
+  dsc-reset-gpios:
+    description:
+      The extra reset pin other than PERST# required by a downstream component.
+    maxItems: 1
+
   clocks:
     minItems: 4
     maxItems: 6
@@ -238,5 +258,15 @@ examples:
                       #interrupt-cells = <1>;
                       interrupt-controller;
             };
+
+            pcie@0 {
+                device_type = "pci";
+                reg = <0x0 0x0 0x0 0x0 0x0>;
+                pcie-3v3-supply = <&pcie3v3_regulator>;
+
+                #address-cells = <3>;
+                #size-cells = <2>;
+                ranges;
+            };
         };
     };
-- 
2.18.0


