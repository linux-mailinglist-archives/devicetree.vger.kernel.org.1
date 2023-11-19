Return-Path: <devicetree+bounces-16914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0367F0665
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 14:26:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE5401C2087E
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 13:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78FB4748F;
	Sun, 19 Nov 2023 13:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFFfua7e"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3B0101FE
	for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 13:25:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B534C433C9;
	Sun, 19 Nov 2023 13:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700400357;
	bh=EAoI1oPVY8eW/ZcDNqHuO5UMxZXaN5+c4qTncpj4H+c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UFFfua7e9Mb5DN9dWT4E5HE4L3nheij1HYoo6gzkEEGODsAmMsK1TbnTR/xwe1NFl
	 q88cK0bU3qLLGYlP3fcE5ob0rTvm7IWzlJpdu9mA6qQQ+nrpk/teL4F/EZqDSQ15Ut
	 nx5CMSChPY7E6cZkYW5k/NO4T5TjRj82VOsxUOVlZynpl9vwexAjctqef815jghD62
	 Jv1KrffsfGR195TNCZbR/sOFd6C+FuJ/KqeejGG2eAjlQZVqG/DqPjNLW1cNtZiBH0
	 w8pHEyHZ2CHVtRQ+VN7oDIYIVlT1RIcpvGsuJ+FOwm1sgD4GM45yblUByAK7mj6pJF
	 ahW/wTrbz487w==
From: Jisheng Zhang <jszhang@kernel.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>
Subject: [PATCH 1/2] dt-bindings: nvmem: Add sophgo,efuses
Date: Sun, 19 Nov 2023 21:13:31 +0800
Message-Id: <20231119131332.999-2-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20231119131332.999-1-jszhang@kernel.org>
References: <20231119131332.999-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Sophgo SoCs such as CV1800B come with eFuses used to store
factory-programmed data such as calibration settings for the built-in
ethernet PHY.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 .../bindings/nvmem/sophgo,efuse.yaml          | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/sophgo,efuse.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/sophgo,efuse.yaml b/Documentation/devicetree/bindings/nvmem/sophgo,efuse.yaml
new file mode 100644
index 000000000000..e4ae81a1742a
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/sophgo,efuse.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/sophgo,efuse.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sophgo SoC eFuse-based NVMEM
+
+description: |
+  Sophgo SoCs such as the CV1800B contain factory-programmed eFuses used to e.g. store
+  calibration data for the built-in ethernet PHY.
+maintainers:
+  - Jisheng Zhang <jszhang@kernel.org>
+
+allOf:
+  - $ref: nvmem.yaml#
+  - $ref: nvmem-deprecated-cells.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - sophgo,cv1800b-efuse
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    description:
+      eFuse clock id.
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    efuse@3050000 {
+        compatible = "sophgo,cv1800b-efuse";
+        reg = <0x3050000 0x1000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        clocks = <&clk 1>;
+
+        ephy_txitune: ephy-txitune@24 {
+            reg = <0x24 0x4>;
+        };
+    };
+
+...
-- 
2.42.0


