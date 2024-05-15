Return-Path: <devicetree+bounces-67023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6688C650F
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 12:45:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0BE8EB21CB3
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 10:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F4675EE67;
	Wed, 15 May 2024 10:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Onm1lSeo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5DD17578
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 10:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715769901; cv=none; b=Dxco1S4+SZln6uFkZGVj9noiSTIzlrtvAnsiXzGLnrSuIhjc0lHF1lWgeQg5jdMOFUuV6R3XYj4X2SXjl244MaISyN3dRNQk0u6jIkLSthBVzvGfxou43lYFGFZQRDXaqq7GYCipTI9iWzzlWpCyPb0Wq8WRQvpoyl0mzk15EAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715769901; c=relaxed/simple;
	bh=/K0UiVi3rhFcrGRRkM+gRZbwIYpCEqjchJIyOiKbcPs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H9DGueLQi7IvUQkxPd9alsW36fTCnku4usL4qWfBSQUw3SqyYGhlQHDU4luVxSKhAOPx/zANwDOepSqX7GeWkQhCNqdxmkJsx69INzkvvbwH+397NOET4yfqPoDFAg400E9uSh5XZFV/saXiSWJae3tPMqN93oM0kZCTy6TRh+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Onm1lSeo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D3FDC116B1;
	Wed, 15 May 2024 10:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715769900;
	bh=/K0UiVi3rhFcrGRRkM+gRZbwIYpCEqjchJIyOiKbcPs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Onm1lSeo4dIwYF7SKJlQO4dhq7pODzIv8vWbeU5REzkt5e4JKzLx+IPnV082luFJg
	 h2sZHTYMrId3yzl13gMKrKF2Rghsu/VJMquZRrAsSovklcDdo72mXvCOX86yLRiH+p
	 tT5DdpIFGspONOhIgDuIdSnA7NtY4O3P/d5tdrqsSTYPf2Zq3w6k/2mNakKn1jybF1
	 b21cbsJPmQ1z8AR6ju9gSFqy4PfRm48FhyoRk8DGc7KxG6x8EVAR/rkxGMN7eaZkua
	 MeADLQm0yKik1BWchlGBXIT+iwsWaeavRyegnht3M+Xd56CBo+jFjj40mDyUxUUgNZ
	 uovdZUMoO6vgw==
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
	angelogioacchino.delregno@collabora.com,
	amitsinght@marvell.com
Subject: [PATCH v2 1/4] dt-bindings: phy: airoha: Add binding doc for PCIe PHY driver
Date: Wed, 15 May 2024 12:44:45 +0200
Message-ID: <0807ee3023a771fbb35fff5c65839120959486d3.1715769325.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <cover.1715769325.git.lorenzo@kernel.org>
References: <cover.1715769325.git.lorenzo@kernel.org>
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
 .../bindings/phy/airoha,en7581-pcie-phy.yaml  | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
new file mode 100644
index 000000000000..4ab04b501129
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,en7581-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha EN7581 PCI-Express PHY
+
+maintainers:
+  - Lorenzo Bianconi <lorenzo@kernel.org>
+
+description:
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
+    soc {
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


