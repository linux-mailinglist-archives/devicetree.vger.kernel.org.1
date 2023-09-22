Return-Path: <devicetree+bounces-2468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA367AAEBA
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 11:50:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 963401C2096D
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 09:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99E041E52D;
	Fri, 22 Sep 2023 09:50:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DE71E527
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 09:50:16 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A34B7192;
	Fri, 22 Sep 2023 02:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695376215; x=1726912215;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=lacmBtTBGbdaCOwsWzi6JZgwiP0fwtmzcKJKP/0c+uQ=;
  b=h7ijL6EDe0XKspXebINGepEqKw3tnXVz1wRXWoV86tNnOFxyvz3szOpc
   Lx5Ka1EFhfENadcxJXvEBXTSFiFlMyO9BsTdDqAQOXJTAsPPoCrVmkRJU
   ncV2gm//KKvYW389qIR7hJdVg6Vqwa787a2ASGkRFFxVNysOeeBgMryjS
   K0oO21sILcxr8ccSF21cIg0MNYO31sXOLplgPDNoi9vZtPc5RZtTNtUcw
   5ZBw5tGDwxhEIfbr6qQxgDgMiZqp8BNd5NapkQis04vhg5tg81LBUI3tf
   K32WN/VsMCXtK9HvJkUZs6CZGWYJ3pqlZXpaNbiKqajp1jOCmNsGONwxJ
   Q==;
X-CSE-ConnectionGUID: fQsQIPFwSuS+RkzQs9lxqw==
X-CSE-MsgGUID: RZFDWMWZQ7qxjkETvSSgcQ==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; 
   d="scan'208";a="236602659"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 22 Sep 2023 02:50:14 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 22 Sep 2023 02:50:12 -0700
Received: from microchip1-OptiPlex-9020.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.21 via Frontend Transport; Fri, 22 Sep 2023 02:50:07 -0700
From: shravan chippa <shravan.chippa@microchip.com>
To: <green.wan@sifive.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <palmer@dabbelt.com>,
	<paul.walmsley@sifive.com>, <conor+dt@kernel.org>, <palmer@sifive.com>
CC: <dmaengine@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<nagasuresh.relli@microchip.com>, <praveen.kumar@microchip.com>,
	<shravan.chippa@microchip.com>, Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v1 2/3] dt-bindings: dma: sf-pdma: add new compatible name
Date: Fri, 22 Sep 2023 15:20:38 +0530
Message-ID: <20230922095039.74878-3-shravan.chippa@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230922095039.74878-1-shravan.chippa@microchip.com>
References: <20230922095039.74878-1-shravan.chippa@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS,SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Shravan Chippa <shravan.chippa@microchip.com>

add new compatible name microchip,mpfs-pdma to support out of order dma
transfers this will improve the dma throughput for mem-to-mem transfer

Signed-off-by: Shravan Chippa <shravan.chippa@microchip.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/dma/sifive,fu540-c000-pdma.yaml         | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
index a1af0b906365..974467c4bacb 100644
--- a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
+++ b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
@@ -27,10 +27,14 @@ allOf:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - sifive,fu540-c000-pdma
-      - const: sifive,pdma0
+    oneOf:
+      - items:
+          - const: microchip,mpfs-pdma # Microchip out of order DMA transfer
+          - const: sifive,fu540-c000-pdma # Sifive in-order DMA transfer
+      - items:
+          - enum:
+              - sifive,fu540-c000-pdma
+          - const: sifive,pdma0
     description:
       Should be "sifive,<chip>-pdma" and "sifive,pdma<version>".
       Supported compatible strings are -
-- 
2.34.1


