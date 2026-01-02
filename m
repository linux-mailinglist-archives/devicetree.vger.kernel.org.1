Return-Path: <devicetree+bounces-251136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C872CEF3CD
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 20:32:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C31FF3012765
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 19:32:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BA69222599;
	Fri,  2 Jan 2026 19:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="KIZ5YjE0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C162A1BB;
	Fri,  2 Jan 2026 19:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767382351; cv=none; b=qOHWzIjN58MMH2NxcnG+wvjinxJ7ix+dDBiSXJQglWh/CsjxoD4xYYXQPnAGJZDn7vlsDV9RqwhL88fbtVqag3rNFoEJUiGfRg/iFVkfX52jeH7lB5S56gEMN6aJc48qKz1P+EzPpg8+pF5R1O55vjASh/mF9r3LgWpiEIB2ZBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767382351; c=relaxed/simple;
	bh=lmPF0iddId1/qY4rYJZcEtp7BIPoSMS626kN+HYmAN8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=aHF70/iFIaY68QGF6Rkz24VPsrAtA2tW1p3LaRv6ahmOVpKOEKSE3SYsFXN9KmA+B5gc/rPPUl/iqjsXDuUNe0opiaSI5x/r4S89ZDJubhusgUmSjo4aO+3DKSzssetOXV+hCGEvoslm14VT7+D+4hKjrOfH/erZ1k0jf4I66N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=KIZ5YjE0; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=Cc:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=H5twwqaiOtdPQtRuq0pyTONOMMi+2Vvf7vhS4WEd7ig=; b=KIZ5YjE0IIJllzsRmLF8Nz3Vow
	1B4mw7R9+UISZqBDdCybOMRx9FHEW3bh8vLTxMBZKDzJpyKq10/zxnJku8Q5csqLGRY4GBB122/l6
	CHSD1v6m3GEwmtVFp8WbXg69bI/ZQlslzgLO2xVQ/YOt6HujXRIFH35YxhPqs2J9OzOSV3etTiZm3
	BDZjKowi3/nAFeWtGXGx6QkpwuJFqmJE6sOYMykiQbIwCINhIdqdPPmljiuDo5MiDWqxFxbvCTCAN
	HIaKagNQIoP/D6TxEaLYGMgk5WN69JL6UWeS6YxagwvVsvX6n8qa6K07HorcUfefpJpTOl4W/RBN8
	OY8lvVmw==;
From: Andreas Kemnade <andreas@kemnade.info>
Date: Fri, 02 Jan 2026 20:32:15 +0100
Subject: [PATCH] dt-bindings: omap: ti,prm-inst: Convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260102-prm-inst-v1-1-e85402b86885@kemnade.info>
X-B4-Tracking: v=1; b=H4sIAD8dWGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQwMj3YKiXN3MvOIS3USTJEujVAszo6REAyWg8oKi1LTMCrBR0bG1tQC
 dnTnNWgAAAA==
X-Change-ID: 20260102-prm-inst-a4b92e862ba0
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
 Tony Lindgren <tony@atomide.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Andreas Kemnade <andreas@kemnade.info>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3436; i=andreas@kemnade.info;
 h=from:subject:message-id; bh=lmPF0iddId1/qY4rYJZcEtp7BIPoSMS626kN+HYmAN8=;
 b=owGbwMvMwCUm/rzkS6lq2x3G02pJDJkRsu7OEQ3XczfcTfebZP7n1zu+U2ZcU0wLNq1UfL313
 qqFVtbZHaUsDGJcDLJiiiy/rBXcPqk8yw2eGmEPM4eVCWQIAxenAEzkZQ3D/3zOf+br9X+fmx/a
 +nbPrZnfZ4V9CDn1lo3BqTlapjZlRhIjw8ZJn+7m3bDTzNveHPZ5oeKkJ53vjE9IfjwyL/97SoQ
 LBw8A
X-Developer-Key: i=andreas@kemnade.info; a=openpgp;
 fpr=EEC0DB858E66C0DA70620AC07DBD6AC74DE29324

Convert prm-inst binding to DT schema. Use the closest matching standard
node name in the example.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 .../devicetree/bindings/arm/omap/prm-inst.txt      | 31 ------------
 .../devicetree/bindings/arm/omap/ti,prm-inst.yaml  | 55 ++++++++++++++++++++++
 2 files changed, 55 insertions(+), 31 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
deleted file mode 100644
index 42db138e091a..000000000000
--- a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
+++ /dev/null
@@ -1,31 +0,0 @@
-OMAP PRM instance bindings
-
-Power and Reset Manager is an IP block on OMAP family of devices which
-handle the power domains and their current state, and provide reset
-handling for the domains and/or separate IP blocks under the power domain
-hierarchy.
-
-Required properties:
-- compatible:	Must contain one of the following:
-		"ti,am3-prm-inst"
-		"ti,am4-prm-inst"
-		"ti,omap4-prm-inst"
-		"ti,omap5-prm-inst"
-		"ti,dra7-prm-inst"
-		and additionally must contain:
-		"ti,omap-prm-inst"
-- reg:		Contains PRM instance register address range
-		(base address and length)
-
-Optional properties:
-- #power-domain-cells:	Should be 0 if the instance is a power domain provider.
-- #reset-cells:	Should be 1 if the PRM instance in question supports resets.
-
-Example:
-
-prm_dsp2: prm@1b00 {
-	compatible = "ti,dra7-prm-inst", "ti,omap-prm-inst";
-	reg = <0x1b00 0x40>;
-	#power-domain-cells = <0>;
-	#reset-cells = <1>;
-};
diff --git a/Documentation/devicetree/bindings/arm/omap/ti,prm-inst.yaml b/Documentation/devicetree/bindings/arm/omap/ti,prm-inst.yaml
new file mode 100644
index 000000000000..1b59325daafe
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/omap/ti,prm-inst.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/omap/ti,prm-inst.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: OMAP PRM instances
+
+maintainers:
+  - Aaro Koskinen <aaro.koskinen@iki.fi>
+  - Andreas Kemnade <andreas@kemnade.info>
+  - Kevin Hilman <khilman@baylibre.com>
+  - Roger Quadros <rogerq@kernel.org>
+  - Tony Lindgren <tony@atomide.com>
+
+description:
+  Power and Reset Manager is an IP block on OMAP family of devices which
+  handle the power domains and their current state, and provide reset
+  handling for the domains and/or separate IP blocks under the power domain
+  hierarchy.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - ti,am3-prm-inst
+          - ti,am4-prm-inst
+          - ti,omap4-prm-inst
+          - ti,omap5-prm-inst
+          - ti,dra7-prm-inst
+      - const: ti,omap-prm-inst
+
+  reg:
+    maxItems: 1
+
+  "#power-domain-cells":
+    const: 0
+
+  "#reset-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    reset-controller@1b00 {
+        compatible = "ti,dra7-prm-inst", "ti,omap-prm-inst";
+        reg = <0x1b00 0x40>;
+        #power-domain-cells = <0>;
+        #reset-cells = <1>;
+    };

---
base-commit: f8f9c1f4d0c7a64600e2ca312dec824a0bc2f1da
change-id: 20260102-prm-inst-a4b92e862ba0

Best regards,
--  
Andreas Kemnade <andreas@kemnade.info>


