Return-Path: <devicetree+bounces-12085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9C47D7DA2
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 09:29:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83EFC1C20D85
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 07:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 094A815ADD;
	Thu, 26 Oct 2023 07:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E0215AD0
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:29:02 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BD321AC;
	Thu, 26 Oct 2023 00:29:00 -0700 (PDT)
Received: from kwepemm000013.china.huawei.com (unknown [172.30.72.55])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4SGHPZ10TJzVlpx;
	Thu, 26 Oct 2023 15:25:06 +0800 (CST)
Received: from huawei.com (10.175.112.208) by kwepemm000013.china.huawei.com
 (7.193.23.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Thu, 26 Oct
 2023 15:28:57 +0800
From: Guo Mengqi <guomengqi3@huawei.com>
To: <vkoul@kernel.org>, <dmaengine@vger.kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>
CC: <xuqiang36@huawei.com>, <chenweilong@huawei.com>, <guomengqi3@huawei.com>
Subject: [PATCH v6 2/2] dt-bindings: dma: HiSilicon: Add bindings for HiSilicon Ascend sdma
Date: Thu, 26 Oct 2023 15:25:49 +0800
Message-ID: <20231026072549.103102-3-guomengqi3@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231026072549.103102-1-guomengqi3@huawei.com>
References: <20231026072549.103102-1-guomengqi3@huawei.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
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


