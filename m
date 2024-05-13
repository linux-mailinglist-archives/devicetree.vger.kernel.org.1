Return-Path: <devicetree+bounces-66566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0A18C3BEA
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 09:25:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DDEC5B20E22
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 07:24:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F19A146D49;
	Mon, 13 May 2024 07:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="K0v7bOAk"
X-Original-To: devicetree@vger.kernel.org
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB85146A76;
	Mon, 13 May 2024 07:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.200
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715585083; cv=none; b=pkj1krswnoGUS3lmGfYEJXwPpWtHjNVtcJ4Sy2fwdO0dFLA7l51xK9PotgteucdqUz8bs0+DNSOdUxmKrwVNuXeMFWBHx4XVH9OSriVs79TRPQImmb74iUCYmjH4qAJ/TpOHI8d0KbXX9rB5AxDekOoy/QBSmajwX66KpiPXBN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715585083; c=relaxed/simple;
	bh=8ENOqewMW99QWcS2EvbxlHeThnWJBf0dwQB/ui5W9gg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g/RvoDBx5AIEo6fm+8adqMl+D6Fx4+npx7RGqBBRbqERtfxj8SSOX0G7uqpMZr9LfptqEpZ8X7cmJTBP5IsO9I4k5tahzh7REMV4Y50EMDBFgtPxMKaUpDS2euji9K3AouEZRDaj+WQi599aDGsMPK0fl9eflpQV2vMPqqxcyEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=K0v7bOAk; arc=none smtp.client-ip=217.70.183.200
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9000220005;
	Mon, 13 May 2024 07:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1715585079;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eXa4EdnQqRxUOEPvkBPgsUUIstZOOeI7Xe83F05iy1I=;
	b=K0v7bOAkyqUdiR1TrpLCyAb1b0CaCjfLagtr3Q3aw897Lw8gveJ2uKHP9NbNcHuSwkecpJ
	xwtJmR+SXTIOpT2pxqPOtTpoE3EqVeD4bf9VO1s8bt9ykJSCoIwdKXwe3OOg28gwHd/nxi
	BBA9ULxqFBx4vk/0JyESXxGVEooE/2Bwev9Tb4z3RVlO9O+TxfcwB++7B2XEOd+UEDsQLA
	y4/g0qkTSWqdjAPYkm8of+BmLq5f/HmG61ILwCVLNZMWY8BM15SEIjewcNtWADmle7YDBd
	wLr0IloSd4ThT3zQjULgJD+TK31PIkGkRLEFBFsYArW0RV0yuehEOei3W+SzrQ==
From: Romain Gantois <romain.gantois@bootlin.com>
Date: Mon, 13 May 2024 09:25:12 +0200
Subject: [PATCH net-next v7 1/7] dt-bindings: net: renesas,rzn1-gmac:
 Document RZ/N1 GMAC support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240513-rzn1-gmac1-v7-1-6acf58b5440d@bootlin.com>
References: <20240513-rzn1-gmac1-v7-0-6acf58b5440d@bootlin.com>
In-Reply-To: <20240513-rzn1-gmac1-v7-0-6acf58b5440d@bootlin.com>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Jose Abreu <joabreu@synopsys.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <clement.leger@bootlin.com>, 
 Serge Semin <fancer.lancer@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 Romain Gantois <romain.gantois@bootlin.com>
X-Mailer: b4 0.13.0
X-GND-Sasl: romain.gantois@bootlin.com

From: Clément Léger <clement.leger@bootlin.com>

The RZ/N1 series of MPUs feature up to two Gigabit Ethernet controllers.
These controllers are based on Synopsys IPs. They can be connected to
RZ/N1 RGMII/RMII converters.

Add a binding that describes these GMAC devices.

Signed-off-by: Clément Léger <clement.leger@bootlin.com>
[rgantois: commit log]
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
 .../devicetree/bindings/net/renesas,rzn1-gmac.yaml | 66 ++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.yaml b/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.yaml
new file mode 100644
index 0000000000000..d9a8d586e260c
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/renesas,rzn1-gmac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas GMAC
+
+maintainers:
+  - Romain Gantois <romain.gantois@bootlin.com>
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - renesas,r9a06g032-gmac
+          - renesas,rzn1-gmac
+  required:
+    - compatible
+
+allOf:
+  - $ref: snps,dwmac.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - renesas,r9a06g032-gmac
+      - const: renesas,rzn1-gmac
+      - const: snps,dwmac
+
+  pcs-handle:
+    description:
+      phandle pointing to a PCS sub-node compatible with
+      renesas,rzn1-miic.yaml#
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/r9a06g032-sysctrl.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    ethernet@44000000 {
+      compatible = "renesas,r9a06g032-gmac", "renesas,rzn1-gmac", "snps,dwmac";
+      reg = <0x44000000 0x2000>;
+      interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
+                   <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>,
+                   <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+      interrupt-names = "macirq", "eth_wake_irq", "eth_lpi";
+      clock-names = "stmmaceth";
+      clocks = <&sysctrl R9A06G032_HCLK_GMAC0>;
+      power-domains = <&sysctrl>;
+      snps,multicast-filter-bins = <256>;
+      snps,perfect-filter-entries = <128>;
+      tx-fifo-depth = <2048>;
+      rx-fifo-depth = <4096>;
+      pcs-handle = <&mii_conv1>;
+      phy-mode = "mii";
+    };
+
+...

-- 
2.44.0


