Return-Path: <devicetree+bounces-66528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE298C370E
	for <lists+devicetree@lfdr.de>; Sun, 12 May 2024 17:28:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 231D71F21037
	for <lists+devicetree@lfdr.de>; Sun, 12 May 2024 15:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAA473E47E;
	Sun, 12 May 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jtw7iBaT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96BB2381DA
	for <devicetree@vger.kernel.org>; Sun, 12 May 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715527696; cv=none; b=JGnkUngHKzHASB3XOGX44GGbAz4KX882AjPSYlEfDFOWwA9WNVq62ybk1W7B6cbnCwyYT27v/pCvmyDi6PtDSFTlF/1clZqhNkZZnbtgnTDja69rQ/NcxoOsV2C4dlG3t5OxYZZ40giZGIDkkISplv2EU7BenMEdtXoCfsTLTKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715527696; c=relaxed/simple;
	bh=R5RXj1vs4tCFOTf3Chodz6fjxKnCyLnx9GFDlSS3+OY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Nn7IuW4EAUS9es5i0OwauKlK4yYOs/qYc+uSuZrIAcv13voIrj3CSI6CXe2PR4++Rb2iDJRnnnmLwF/fy0dCt2XDcSU9hq1NuBKpOL40SP2reZW2BE6qr3vAuPPTGI3WY+o5qWmS+LoqJdtLNeuSG2U3sYyEKDgn1kYrL2lc6f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jtw7iBaT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2825C116B1;
	Sun, 12 May 2024 15:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715527696;
	bh=R5RXj1vs4tCFOTf3Chodz6fjxKnCyLnx9GFDlSS3+OY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Jtw7iBaTS6VyAYb7C13KUs9wopxIBMXa0X/vA91VtQoizHa1IhFQmNl/xymFqHjMS
	 fnpjQLBqZDE7G0XlxsopiNk/Dy4EmsjnHsy8vQR1uFB1kQ/imi1vPZ6kUYPiZBAguI
	 luCpZh2g3XT5WHAnro5u9GzxJRS2lbU8JVGN+siqd9EHkw9emy0XiFtzdham1nfrtr
	 8zNf0yRwTwSMMnXHEv+8+oyYkhzRu/E6kG2KIsa4V5LKLLtVdGtsTY5bHStq3AG2hS
	 tywIXBI5ub6XgdiO6+NFc5R3fQmimPLhZU9p51DkVRrJUURsF1lGGWuS/h9Z2cuJDY
	 EESBCR83b+U+g==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	lorenzo.bianconi83@gmail.com,
	conor@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH 1/3] dt-bindings: phy: airoha: Add binding doc for PCIe PHY driver
Date: Sun, 12 May 2024 17:27:38 +0200
Message-ID: <7b60943ea9814a1a9a3d8b273157b338f9130174.1715527166.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <cover.1715527166.git.lorenzo@kernel.org>
References: <cover.1715527166.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce device-tree binding documentation for Airoha EN7581 PCIe PHY
driver.

Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../bindings/phy/airoha,pcie-phy.yaml         | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
new file mode 100644
index 000000000000..443d7e717296
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha PCIe PHY
+
+maintainers:
+  - Lorenzo Bianconi <lorenzo@kernel.org>
+
+description: |
+  The PCIe PHY supports physical layer functionality for PCIe Gen2/Gen3 port.
+
+properties:
+  compatible:
+    const: airoha,en7581-pcie-phy
+
+  reg:
+    maxItems: 3
+
+  reg-names:
+    items:
+      - const: csr_2l
+      - const: pma0
+      - const: pma1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/phy/phy.h>
+
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        phy@11e80000 {
+            compatible = "airoha,en7581-pcie-phy";
+            #phy-cells = <0>;
+            reg = <0x0 0x1fa5a000 0x0 0xfff>,
+                  <0x0 0x1fa5b000 0x0 0xfff>,
+                  <0x0 0x1fa5c000 0x0 0xfff>;
+            reg-names = "csr_2l", "pma0", "pma1";
+        };
+    };
-- 
2.45.0


