Return-Path: <devicetree+bounces-76081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B63B59099FA
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 23:16:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FF95281DC4
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 21:16:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E47FD1B28D;
	Sat, 15 Jun 2024 21:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7pQH8u+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF584637
	for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 21:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718486173; cv=none; b=by57KfZbHXWL+7K4xyRDuQ2MiQ7LZ2Y9LiJ4+7EXBpp9VLCZlZjgTvsHIFIdagUbirDRZ5NzPuPCJOJAg4LpIbL5b1quVU6KbDzSsCdMUnmlHcSHrAOznimvyWlurUM/snYUMtFlQJeBkOVk+662FvredC3dBzLXg8usTjJ3fsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718486173; c=relaxed/simple;
	bh=evIn7xh6SdBE2cvkryisKc7x+EBS3bwMxyMotTSXgqc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mpWmJGFWU9fEKTRMv5w4wy2pKyvfQBfvS7fqkSJfRgGzGdhsEc/uFp6mXnUzvb5ncA/fcdwfFhavvI1VRSuE+EpC4Rnqa5NHLdD/rWUPZu26vxIZGcKoqJgdwt8mL3vKgrVGfHxEVnA8lVuqn1GhEdxCbF6BbCQfvYBsgyAKHyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7pQH8u+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6A0CC116B1;
	Sat, 15 Jun 2024 21:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718486173;
	bh=evIn7xh6SdBE2cvkryisKc7x+EBS3bwMxyMotTSXgqc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=F7pQH8u+JVLPZnkehFllDOjNZhxr/KtiiL5PKbBt1+WIBLEEIfvUCtuCjL9VPgP5F
	 G8be9n+T1f1nYjT8xiI7v3TrY8jqgSw58n87rhB+TxsCANblAE1JZIdumHrxbIj9yO
	 oM6djr34ge0IQ5sxl30T0o6BIT1+TxGbW+ZrFDgea4mDszHjhkSzde7RG88ZSMbeeT
	 4po/pkqWOtjUQqy/dlrjL0oq0ZuWEbCWPWaGOaD2eRKedGv/3BP+nRuKxf/S9RXhhN
	 xPVesKlkpCO63XEJFYsQTSD3iGt2sQULKZvTVe2wAMc9GoXE7Gps48Fn5VOs6NdloL
	 9FQkzYYNxLDgw==
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
Subject: [PATCH v4 1/3] dt-bindings: phy: airoha: Add PCIe PHY controller
Date: Sat, 15 Jun 2024 23:15:41 +0200
Message-ID: <656133f865433c1d02f00a3abbb1aa9312d2a24e.1718485860.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <cover.1718485860.git.lorenzo@kernel.org>
References: <cover.1718485860.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce device-tree binding documentation for Airoha EN7581 PCIe PHY
controller.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../bindings/phy/airoha,en7581-pcie-phy.yaml  | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
new file mode 100644
index 000000000000..e26c30d17ff0
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
@@ -0,0 +1,58 @@
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
+    items:
+      - description: PCIE analog base address
+      - description: PCIE lane0 base address
+      - description: PCIE lane1 base address
+
+  reg-names:
+    items:
+      - const: csr-2l
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
+            reg-names = "csr-2l", "pma0", "pma1";
+        };
+    };
-- 
2.45.1


