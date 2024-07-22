Return-Path: <devicetree+bounces-87198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30899938C7F
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 11:51:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8BBA4B227FB
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 09:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C8551741D5;
	Mon, 22 Jul 2024 09:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=kalrayinc.com header.i=@kalrayinc.com header.b="Tf8BNw8G"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout149.security-mail.net (smtpout149.security-mail.net [85.31.212.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC92716C86E
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 09:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.31.212.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721641510; cv=none; b=H5NGIbEPDCh4ehutFyGB/Fdad5g1PAUvJbVtT1LZpWqgloevQhce4cQgbUGqfvmsFPMv6NCRgc9aqexh9yCe4i5mwZaQGXISs55tuf5cFyFObtlUOd8MqSND+vIoBn1dtiEEznASUeMEvfmwuk78PFbRnt5Lq13861JgUzY8g6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721641510; c=relaxed/simple;
	bh=egooQkmj99pm83DC9gb6KlvkhnjktH8O6Q/DT11oDZE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TLlY7s6tCnDxJFSgeU49cjOPYUrfbU/K8JXJt8tqYw8rNMy5x+2HvgeJGsjW6dc5e+0l1+rh7F7LYKQNW2aOho4B4S0W22v5XIH6D9kYOhf3qvefyStX1Lduf4ml3IbWPJzwpytbUlXmrmozxiPSeVfFf+0lgs6yoY4SB0juDbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kalrayinc.com; spf=pass smtp.mailfrom=kalrayinc.com; dkim=pass (1024-bit key) header.d=kalrayinc.com header.i=@kalrayinc.com header.b=Tf8BNw8G; arc=none smtp.client-ip=85.31.212.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kalrayinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kalrayinc.com
Received: from localhost (fx409.security-mail.net [127.0.0.1])
	by fx409.security-mail.net (Postfix) with ESMTP id 0AA9A349982
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 11:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1721641400;
	bh=egooQkmj99pm83DC9gb6KlvkhnjktH8O6Q/DT11oDZE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Tf8BNw8GrmoyXRj9UeuC9+b+a5zVzgm9veiBVvunuNxGZXP5wA+4tGEmhuYAKQO6S
	 VkfvaLZ7vmEDA7P2DkZHdCP5/1Y00GfTxsFD6zFyos/9eoWqjhzyXO9cIcpsw/g7kC
	 xg5AeylTXLm3XJt7xvon4FRyo2XZucjJ5SW1N4oY=
Received: from fx409 (fx409.security-mail.net [127.0.0.1]) by
 fx409.security-mail.net (Postfix) with ESMTP id D79F03498B7; Mon, 22 Jul
 2024 11:43:19 +0200 (CEST)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx409.security-mail.net (Postfix) with ESMTPS id 5DCD3349888; Mon, 22 Jul
 2024 11:43:19 +0200 (CEST)
Received: from junon.lan.kalrayinc.com (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPS id 3299240317; Mon, 22 Jul
 2024 11:43:19 +0200 (CEST)
X-Quarantine-ID: <YxOY1GuPFezb>
X-Secumail-id: <806d.669e29b7.5bd88.0>
From: ysionneau@kalrayinc.com
To: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Jonathan
 Borne <jborne@kalrayinc.com>, Julian Vetter <jvetter@kalrayinc.com>, Yann
 Sionneau <ysionneau@kalrayinc.com>
Cc: devicetree@vger.kernel.org
Subject: [RFC PATCH v3 10/37] dt-bindings: kalray: Add CPU bindings for
 Kalray kvx
Date: Mon, 22 Jul 2024 11:41:21 +0200
Message-ID: <20240722094226.21602-11-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240722094226.21602-1-ysionneau@kalrayinc.com>
References: <20240722094226.21602-1-ysionneau@kalrayinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done

From: Yann Sionneau <ysionneau@kalrayinc.com>

Add Kalray kvx CPU bindings.

Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
---

Notes:

V2 -> V3: New patch
---
 .../devicetree/bindings/kalray/cpus.yaml      | 105 ++++++++++++++++++
 1 file changed, 105 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/kalray/cpus.yaml

diff --git a/Documentation/devicetree/bindings/kalray/cpus.yaml b/Documentation/devicetree/bindings/kalray/cpus.yaml
new file mode 100644
index 0000000000000..cdf1f10573da7
--- /dev/null
+++ b/Documentation/devicetree/bindings/kalray/cpus.yaml
@@ -0,0 +1,105 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/kalray/cpus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Kalray CPUs
+
+maintainers:
+  - Jonathan Borne <jborne@kalrayinc.com>
+  - Julian Vetter <jvetter@kalrayinc.com>
+  - Yann Sionneau <ysionneau@kalrayinc.com>
+
+allOf:
+  - $ref: /schemas/cpu.yaml#
+
+properties:
+  reg:
+    maxItems: 1
+    description: |
+      Contains the CPU number.
+
+  compatible:
+    oneOf:
+      - items:
+          - const: kalray,kv3-1-pe
+          - const: kalray,kv3-pe
+
+  clocks:
+    maxItems: 1
+
+  enable-method:
+    const: "kalray,coolidge-pwr-ctrl"
+
+  interrupt-controller:
+    type: object
+    additionalProperties: false
+    description: Describes the CPU's local interrupt controller
+
+    properties:
+      '#interrupt-cells':
+        const: 1
+
+      compatible:
+        const: kalray,kv3-1-intc
+
+      interrupt-controller: true
+
+      '#address-cells':
+        const: 0
+
+    required:
+      - compatible
+      - '#interrupt-cells'
+      - '#address-cells'
+      - interrupt-controller
+
+if:
+  properties:
+    reg:
+      const: 0
+then:
+  required:
+    - clocks
+
+required:
+  - reg
+  - compatible
+  - interrupt-controller
+
+unevaluatedProperties: false
+
+examples:
+  - |
+
+    cpus {
+        #size-cells = <0>;
+        #address-cells = <1>;
+
+       cpu@0 {
+         compatible = "kalray,kv3-1-pe";
+         device_type = "cpu";
+         reg = <0>;
+         clocks = <&core_clk>;
+         cpu_intc0: interrupt-controller {
+           compatible = "kalray,kv3-1-intc";
+           #interrupt-cells = <1>;
+           #address-cells = <0>;
+           interrupt-controller;
+         };
+       };
+
+
+       cpu@1 {
+         compatible = "kalray,kv3-1-pe";
+         device_type = "cpu";
+         reg = <1>;
+         cpu_intc1: interrupt-controller {
+           compatible = "kalray,kv3-1-intc";
+           #interrupt-cells = <1>;
+           #address-cells = <0>;
+           interrupt-controller;
+         };
+       };
+    };
-- 
2.45.2






