Return-Path: <devicetree+bounces-10520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F29CA7D1C28
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 11:38:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EFE0AB21417
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 09:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06CB4613D;
	Sat, 21 Oct 2023 09:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB59353A6
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 09:38:03 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 416121A4;
	Sat, 21 Oct 2023 02:37:59 -0700 (PDT)
Received: from kwepemm000013.china.huawei.com (unknown [172.30.72.57])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4SCGVJ32xtzMlpT;
	Sat, 21 Oct 2023 17:33:44 +0800 (CST)
Received: from huawei.com (10.175.112.208) by kwepemm000013.china.huawei.com
 (7.193.23.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Sat, 21 Oct
 2023 17:37:52 +0800
From: Guo Mengqi <guomengqi3@huawei.com>
To: <vkoul@kernel.org>, <dmaengine@vger.kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>
CC: <xuqiang36@huawei.com>, <chenweilong@huawei.com>, <guomengqi3@huawei.com>
Subject: [PATCH v5 2/2] dt-bindings: dma: HiSilicon: Add bindings for HiSilicon Ascend sdma
Date: Sat, 21 Oct 2023 17:34:53 +0800
Message-ID: <20231021093454.39822-3-guomengqi3@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231021093454.39822-1-guomengqi3@huawei.com>
References: <20231021093454.39822-1-guomengqi3@huawei.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemm000013.china.huawei.com (7.193.23.81)
X-CFilter-Loop: Reflected

Add device-tree binding documentation for sdma hardware on
HiSilicon Ascend SoC families.

Signed-off-by: Guo Mengqi <guomengqi3@huawei.com>
---
 .../bindings/dma/hisilicon,ascend-sdma.yaml   | 73 +++++++++++++++++++
 1 file changed, 73 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml

diff --git a/Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml b/Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml
new file mode 100644
index 000000000000..7b452b54fe0c
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/hisilicon,ascend-sdma.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: HiSilicon Ascend System DMA (SDMA) controller
+
+description: |
+  The Ascend SDMA controller is used for transferring data
+  in system memory.
+
+maintainers:
+  - Guo Mengqi <guomengqi3@huawei.com>
+
+allOf:
+  - $ref: dma-controller.yaml#
+
+properties:
+  compatible:
+    enum:
+      - hisilicon,ascend310-sdma
+      - hisilicon,ascend910-sdma
+
+  reg:
+    maxItems: 1
+
+  '#dma-cells':
+    const: 1
+    description:
+      Clients specify a single cell with channel number.
+
+  dma-channel-mask:
+    minItems: 1
+    maxItems: 2
+
+  iommus:
+    maxItems: 1
+
+  pasid-num-bits:
+    description: |
+      This tells smmu that this device supports iommu-sva feature.
+      This determines the maximum number of digits in the pasid.
+    maximum: 0x10
+
+  dma-coherent: true
+
+  dma-can-stall: true
+
+required:
+  - compatible
+  - reg
+  - dma-channel-mask
+  - '#dma-cells'
+  - iommus
+  - pasid-num-bits
+
+additionalProperties: false
+
+examples:
+  - |
+    dma-controller@880e0000 {
+        compatible = "hisilicon,ascend310-sdma";
+        reg = <0x880e0000 0x10000>;
+        dma-channel-mask = <0xff00>;
+        iommus = <&smmu 0x7f46>;
+        pasid-num-bits = <0x10>;
+        dma-coherent;
+        dma-can-stall;
+        #dma-cells = <1>;
+    };
+
+...
-- 
2.17.1


