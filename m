Return-Path: <devicetree+bounces-15752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC867EB8A4
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 22:29:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECA0D1C20B06
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 21:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EBB92FC59;
	Tue, 14 Nov 2023 21:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="iaoBoPkq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B45B2FC4D
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 21:29:27 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19552C8;
	Tue, 14 Nov 2023 13:29:24 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AELTJCS126721;
	Tue, 14 Nov 2023 15:29:19 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1699997359;
	bh=/4c2N5t9I3hWBgOVZsN2TxhLvsFOghspUzXMl1NeKnM=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=iaoBoPkqULFx9+z5IW9ZSePwrnN+L+BMkuCa+ihlLwJvEZeEMzrorlGNw+c/WWSHo
	 kcf0g0q74tPayFmIuWp6x2iw64vY5+NAY4fodTu1RKV1jXh8tx0jG5EjgA5L7zCORO
	 b1WYLIrVRM49B6wyJhKwOp7Q0lm2Ds8yFcIDF5/Y=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AELTJvI054419
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 14 Nov 2023 15:29:19 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 14
 Nov 2023 15:29:19 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 14 Nov 2023 15:29:19 -0600
Received: from fllv0039.itg.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AELTIwp088933;
	Tue, 14 Nov 2023 15:29:19 -0600
From: Andrew Davis <afd@ti.com>
To: Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Andrew Davis
	<afd@ti.com>
Subject: [PATCH v2 3/4] dt-bindings: arm: keystone: Convert keystone.txt to YAML
Date: Tue, 14 Nov 2023 15:29:10 -0600
Message-ID: <20231114212911.429951-3-afd@ti.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231114212911.429951-1-afd@ti.com>
References: <20231114212911.429951-1-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Convert keystone.txt to ti,keystone.yaml.

Signed-off-by: Andrew Davis <afd@ti.com>
---
 Documentation/arch/arm/keystone/overview.rst  |  2 +-
 .../bindings/arm/keystone/keystone.txt        | 42 ---------------
 .../bindings/arm/keystone/ti,keystone.yaml    | 53 +++++++++++++++++++
 3 files changed, 54 insertions(+), 43 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/keystone/keystone.txt
 create mode 100644 Documentation/devicetree/bindings/arm/keystone/ti,keystone.yaml

diff --git a/Documentation/arch/arm/keystone/overview.rst b/Documentation/arch/arm/keystone/overview.rst
index cd90298c493c7..6d8896ba9a6e2 100644
--- a/Documentation/arch/arm/keystone/overview.rst
+++ b/Documentation/arch/arm/keystone/overview.rst
@@ -65,7 +65,7 @@ specified through DTS. Following are the DTS used:
 
 The device tree documentation for the keystone machines are located at
 
-        Documentation/devicetree/bindings/arm/keystone/keystone.txt
+        Documentation/devicetree/bindings/arm/keystone/ti,keystone.yaml
 
 Document Author
 ---------------
diff --git a/Documentation/devicetree/bindings/arm/keystone/keystone.txt b/Documentation/devicetree/bindings/arm/keystone/keystone.txt
deleted file mode 100644
index f310bad044830..0000000000000
--- a/Documentation/devicetree/bindings/arm/keystone/keystone.txt
+++ /dev/null
@@ -1,42 +0,0 @@
-TI Keystone Platforms Device Tree Bindings
------------------------------------------------
-
-Boards with Keystone2 based devices (TCI66xxK2H) SOC shall have the
-following properties.
-
-Required properties:
- - compatible: All TI specific devices present in Keystone SOC should be in
-   the form "ti,keystone-*". Generic devices like gic, arch_timers, ns16550
-   type UART should use the specified compatible for those devices.
-
-SoC families:
-
-- Keystone 2 generic SoC:
-   compatible = "ti,keystone"
-
-SoCs:
-
-- Keystone 2 Hawking/Kepler
-   compatible = "ti,k2hk", "ti,keystone"
-- Keystone 2 Lamarr
-   compatible = "ti,k2l", "ti,keystone"
-- Keystone 2 Edison
-   compatible = "ti,k2e", "ti,keystone"
-- K2G
-   compatible = "ti,k2g", "ti,keystone"
-
-Boards:
--  Keystone 2 Hawking/Kepler EVM
-   compatible = "ti,k2hk-evm", "ti,k2hk", "ti,keystone"
-
--  Keystone 2 Lamarr EVM
-   compatible = "ti,k2l-evm", "ti, k2l", "ti,keystone"
-
--  Keystone 2 Edison EVM
-   compatible = "ti,k2e-evm", "ti,k2e", "ti,keystone"
-
--  K2G EVM
-   compatible = "ti,k2g-evm", "ti,k2g", "ti-keystone"
-
--  K2G Industrial Communication Engine EVM
-   compatible = "ti,k2g-ice", "ti,k2g", "ti-keystone"
diff --git a/Documentation/devicetree/bindings/arm/keystone/ti,keystone.yaml b/Documentation/devicetree/bindings/arm/keystone/ti,keystone.yaml
new file mode 100644
index 0000000000000..60af461af5ff9
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/keystone/ti,keystone.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/keystone/ti,keystone.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments Keystone SoC architecture
+
+maintainers:
+  - Andrew Davis <afd@ti.com>
+
+description: |
+  Platforms based on Texas Instruments Keystone2 Multicore SoC architecture
+  shall have the following properties.
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+
+      - description: Keystone 2 Hawking/Kepler
+        items:
+          - enum:
+              - ti,k2hk-evm # Keystone 2 Hawking/Kepler EVM
+          - const: ti,k2hk
+          - const: ti,keystone
+
+      - description: Keystone 2 Lamarr
+        items:
+          - enum:
+              - ti,k2l-evm # Keystone 2 Lamarr EVM
+          - const: ti,k2l
+          - const: ti,keystone
+
+      - description: Keystone 2 Edison
+        items:
+          - enum:
+              - ti,k2e-evm # Keystone 2 Edison EVM
+          - const: ti,k2e
+          - const: ti,keystone
+
+      - description: K2G
+        items:
+          - enum:
+              - ti,k2g-evm # K2G EVM
+              - ti,k2g-ice # K2G Industrial Communication Engine EVM
+          - const: ti,k2g
+          - const: ti,keystone
+
+additionalProperties: true
+
+...
-- 
2.39.2


