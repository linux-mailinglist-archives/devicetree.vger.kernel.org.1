Return-Path: <devicetree+bounces-15707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E213A7EB69E
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 19:56:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 831E0B20A98
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 18:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8F8C1385;
	Tue, 14 Nov 2023 18:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="eA89+zzt"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81EFA1FD3
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 18:56:32 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27983FA;
	Tue, 14 Nov 2023 10:56:30 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AEIuQot041016;
	Tue, 14 Nov 2023 12:56:26 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1699988186;
	bh=AwkICT+mXsIzuLGUx+yuxWjPUZb00DH8CFIQz+S2WuA=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=eA89+zztsWiZaLTyj08fBY3pHeKIPv9XQJKR9JSg+2zwhOZaGBGanmr/QJlVh06Oy
	 y0LWHVbz4CJIgWKb9Rmg9XfTnWlDhNEcoiuVOQHkD8SjNNXZML7v3gl/7ceScAPTVx
	 MhglkWgCZZpXfwRREFETpDcUN/RN2jf9qggNxqS8=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AEIuQJL039088
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 14 Nov 2023 12:56:26 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 14
 Nov 2023 12:56:25 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 14 Nov 2023 12:56:25 -0600
Received: from lelv0327.itg.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AEIuOAL088527;
	Tue, 14 Nov 2023 12:56:25 -0600
From: Andrew Davis <afd@ti.com>
To: Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Andrew Davis
	<afd@ti.com>
Subject: [PATCH 2/4] dt-bindings: clock: Convert keystone-gate.txt to YAML
Date: Tue, 14 Nov 2023 12:56:11 -0600
Message-ID: <20231114185613.322570-2-afd@ti.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231114185613.322570-1-afd@ti.com>
References: <20231114185613.322570-1-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Convert keystone-gate.txt to ti,keystone,psc-clock.yaml.

Signed-off-by: Andrew Davis <afd@ti.com>
---
 .../bindings/clock/keystone-gate.txt          | 29 ---------
 .../bindings/clock/ti,keystone,psc-clock.yaml | 59 +++++++++++++++++++
 2 files changed, 59 insertions(+), 29 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/keystone-gate.txt
 create mode 100644 Documentation/devicetree/bindings/clock/ti,keystone,psc-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/keystone-gate.txt b/Documentation/devicetree/bindings/clock/keystone-gate.txt
deleted file mode 100644
index c5aa187026e3a..0000000000000
--- a/Documentation/devicetree/bindings/clock/keystone-gate.txt
+++ /dev/null
@@ -1,29 +0,0 @@
-Status: Unstable - ABI compatibility may be broken in the future
-
-Binding for Keystone gate control driver which uses PSC controller IP.
-
-This binding uses the common clock binding[1].
-
-[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
-
-Required properties:
-- compatible : shall be "ti,keystone,psc-clock".
-- #clock-cells : from common clock binding; shall be set to 0.
-- clocks : parent clock phandle
-- reg :	psc control and domain address address space
-- reg-names : psc control and domain registers
-- domain-id : psc domain id needed to check the transition state register
-
-Optional properties:
-- clock-output-names : From common clock binding to override the
-			default output clock name
-Example:
-	clkusb: clkusb {
-		#clock-cells = <0>;
-		compatible = "ti,keystone,psc-clock";
-		clocks = <&chipclk16>;
-		clock-output-names = "usb";
-		reg = <0x02350008 0xb00>, <0x02350000 0x400>;
-		reg-names = "control", "domain";
-		domain-id = <0>;
-	};
diff --git a/Documentation/devicetree/bindings/clock/ti,keystone,psc-clock.yaml b/Documentation/devicetree/bindings/clock/ti,keystone,psc-clock.yaml
new file mode 100644
index 0000000000000..3da5cdc2affa9
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/ti,keystone,psc-clock.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/ti,keystone,psc-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Keystone gate control driver which uses PSC controller IP
+
+maintainers:
+  - Andrew Davis <afd@ti.com>
+
+properties:
+  compatible:
+    const: ti,keystone,psc-clock
+
+  reg:
+    items:
+      - description: PSC control registers
+      - description: Domain registers
+
+  reg-names:
+    items:
+      - const: control
+      - const: domain
+
+  domain-id:
+    description: PSC domain id needed to check the transition state register
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  clocks:
+    maxItems: 1
+
+  clock-output-names:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - domain-id
+  - clocks
+  - "#clock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    clkusb: clkusb {
+        compatible = "ti,keystone,psc-clock";
+        reg = <0x02350008 0xb00>, <0x02350000 0x400>;
+        reg-names = "control", "domain";
+        domain-id = <0>;
+        clocks = <&chipclk16>;
+        clock-output-names = "usb";
+        #clock-cells = <0>;
+    };
-- 
2.39.2


