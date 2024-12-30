Return-Path: <devicetree+bounces-134649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F399FE24F
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 04:47:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E0A93A1DE7
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 03:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 361E717838C;
	Mon, 30 Dec 2024 03:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="gdrBUr8p"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291CA15B984;
	Mon, 30 Dec 2024 03:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735530404; cv=none; b=T4zU6p6wvTds+U2jOgu1EXE4rgCj0UxfPH4gHEjXY+PkITUmoZElgWNb4CkI7yXuRlSkcwaGGASy5CYTjThiy8ErDxc06hXXtkXm69TrsZHPi+DUt+rNIHmmAmy/AqITUwaqKgatJIfZdPdYD4Az39DTLfG9OEM8cMGDl4PpNGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735530404; c=relaxed/simple;
	bh=xrFUgOtUF5KCEwtf5DsUtsBBPRcPNPltaWqnQ0pf+J4=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hJ/xYvzALoVG++aZB0nKwl8qp7uYlUhjrDYfWL2dw2UV+H7ppvpR22C+74LwVWndlVgGb92cOJYdfNzjd+kBtESSKLjXcI1f57Sdo13lol26jKatX4OTQAuBfLlUZyiz4xKEgmWYuxHuMIyRbQXGqwGIjFXVYORnCNpPv3CAYXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=gdrBUr8p; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: a8dbe686c66011ef99858b75a2457dd9-20241230
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=K2BfXDrGZ7RvRP4Ca4D5lZ3ETGg9zyB/1qmZRsOCQzA=;
	b=gdrBUr8pyMIJtfU8NbkRJAkzR7EfaGfgw/Eg385LurzBxeDPjfJIBtzKG7q41W+bvKW7qSiJMhk/Wl4jAdClJj+Qld1ENOkpMW5xFq+X5GbokmeqwunsS4LpOFE4xe2awah1+6NLB55HQba1iSLwf93+9MvRqhsapK7rmyKx2kA=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:56cebf41-657b-4164-96a7-3c29ab013398,IP:0,U
	RL:25,TC:0,Content:100,EDM:-25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,AC
	TION:release,TS:100
X-CID-META: VersionHash:60aa074,CLOUDID:0ef26125-8650-4337-bf57-045b64170f0c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|801,TC:nil,Content:3|50,ED
	M:1,IP:nil,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OS
	A:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: a8dbe686c66011ef99858b75a2457dd9-20241230
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw01.mediatek.com
	(envelope-from <karl.li@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 114693744; Mon, 30 Dec 2024 11:46:32 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 30 Dec 2024 11:46:30 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 30 Dec 2024 11:46:30 +0800
From: Karl.Li <karl.li@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Karl Li <Karl.Li@mediatek.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	Chungying Lu <chungying.lu@mediatek.com>, Chien-Chih Tseng
	<Chien-Chih.Tseng@mediatek.com>, Andy Teng <Andy.Teng@mediatek.com>, Chen-Yu
 Tsai <wenst@chromium.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, Karl Li
	<karl.li@mediatek.com>
Subject: [PATCH v2 1/3] dt-bindings: mailbox: mediatek: Add apu-mailbox dt-bindings
Date: Mon, 30 Dec 2024 11:43:35 +0800
Message-ID: <20241230034446.1195728-2-karl.li@mediatek.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241230034446.1195728-1-karl.li@mediatek.com>
References: <20241230034446.1195728-1-karl.li@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Karl Li <karl.li@mediatek.com>

Add devicetree binding for apu-mailbox.

MediaTek APU (AI Processing Unit) is a microcontroller unit
designed for AI acceleration tasks. The MediaTek APU-Mailbox
facilitates communication with the APU microcontroller.

Signed-off-by: Karl Li <karl.li@mediatek.com>
---
 .../mailbox/mediatek,apu-mailbox.yaml         | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/mediatek,apu-mailbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/mediatek,apu-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/mediatek,apu-mailbox.yaml
new file mode 100644
index 000000000000..fdb0dec5fb78
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/mediatek,apu-mailbox.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/mediatek,apu-mailbox.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek APU mailbox
+
+maintainers:
+  - Karl Li <Karl.Li@mediatek.com>
+
+description:
+  MediaTek APU (AI Processing Unit) is a microcontroller unit
+  designed for AI acceleration tasks. The MediaTek APU-Mailbox
+  facilitates communication with the APU microcontroller.
+  Within the MediaTek APU subsystem, a message passing mechanism is
+  built on top of the mailbox system. The mailbox only has limited
+  space for each message. The firmware expects the message header
+  from the mailbox, while the message body is passed through some
+  fixed shared memory.
+
+properties:
+  compatible:
+    const: mediatek,mt8196-apu-mailbox
+
+  "#mbox-cells":
+    const: 1
+    description:
+      The cell describe which channel the device will use.
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - "#mbox-cells"
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      mailbox@4c200000 {
+        compatible = "mediatek,mt8196-apu-mailbox";
+        reg = <0 0x4c200000 0 0xfffff>;
+        interrupts = <GIC_SPI 638 IRQ_TYPE_LEVEL_HIGH 0>;
+        #mbox-cells = <1>;
+      };
+    };
-- 
2.18.0


