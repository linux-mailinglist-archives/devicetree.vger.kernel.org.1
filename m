Return-Path: <devicetree+bounces-67618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7755D8C909E
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 13:32:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 20D83B21102
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 11:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7877A23746;
	Sat, 18 May 2024 11:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pz7Rrw69"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547FD2556F
	for <devicetree@vger.kernel.org>; Sat, 18 May 2024 11:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716031949; cv=none; b=k1sbqKFwR9esigF43YGHVSryiSON8jq/7AZPZ02qTe/blvNLF0xUhnFOfRPFMQNjPiHBit5P/wXfHEx3Sh+3TFNXIqIO4u4hj7nrvYzY3+QCA1Me7snNk0TPBTlIUlQQgVDYeMVub9GZIU2kLQGqAMxbF2iE2IQTW1/LPdkIexQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716031949; c=relaxed/simple;
	bh=GpTGAjreFqQ3oD/10QY9h+IcnNMYrC6wr2HxnYrBbPE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GySM5xyzLAronO6lVT0xAEnk+5y+Shm+fAAuitfmj6R6CPgqhUtc1MhzC5a3tmN42btmWkfgzxjxIUgIx00/tRjGuBnQNoBfOeb5ZqnL7E+LTv80eDNDQzhuO2afG9C8VXbyrwFBAHHfc/xkK4TGViWJx8CDB6sBSeQpZMTiGdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pz7Rrw69; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EB80C113CC;
	Sat, 18 May 2024 11:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716031948;
	bh=GpTGAjreFqQ3oD/10QY9h+IcnNMYrC6wr2HxnYrBbPE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Pz7Rrw69LJ1qQiQSRXjwgh6ukRi+F6sNjgzy3+xAp5lMZ6YbT7M+LqqBPHDV2Tt3l
	 +O2sDigJEruFHmbxvM8A7R3SdUSV4tW6hBOlkaV7NyDrN9nVwZRSjf6+wTuzsyJo7m
	 8BMYwvn41JriZi914Xt0SAkjR6TEe2DoRRe9vusTJngKKufSiChU8QRxyoozO7Q0hd
	 Gze60MPgqmemumKlOxXwPxR5oq2ikMfWOYIprFMaRQbM0540YuyEzd7kioNeF0T4zb
	 7ho23BhtIooNxpNxiCqUz6+yIp0q1Iu14H5gCzwfiPZItZscr7HxMJ14oT4eZ1oj1C
	 zNgGjEW01uyZQ==
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
Subject: [PATCH v3 1/4] dt-bindings: phy: airoha: Add binding doc for PCIe PHY driver
Date: Sat, 18 May 2024 13:31:41 +0200
Message-ID: <82688bbe03ae2d68af838c2bc7fd20491a7d42b1.1716031610.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <cover.1716031610.git.lorenzo@kernel.org>
References: <cover.1716031610.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce device-tree binding documentation for Airoha EN7581 PCIe PHY
driver.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
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


