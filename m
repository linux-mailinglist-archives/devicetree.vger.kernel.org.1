Return-Path: <devicetree+bounces-149356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C4FA3F208
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 11:29:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1BFD16F676
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 10:29:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 566772080FE;
	Fri, 21 Feb 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJq+YANI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD28205AA9;
	Fri, 21 Feb 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740133733; cv=none; b=TqPSJRwMRfdm0kt1ejpH6eSXiu9HkG8PCNYMvllPkpf1Yo/hOe+C2zXsg2vc3Vy5RQtSPq4sX6+wkaHFzsqZPY0b0Hhxpceo4jq4xdPTl12rAMETBSY4HQLScvSMK4H9YVJf1sCInAvvqoPODC+4rpks7hgwhQlJ3HKjAXzqbEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740133733; c=relaxed/simple;
	bh=hNiq4VQ4l2nodOzFA4bxlJ9b6KGz4dBXXOthlUMOuVU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mjpZJWNuEEo9EF7HGHKSVvuqdUDIxwfwn9N409hbQWa5nrMqm1AZMGTC34t8VAStXfN8ZCT59X2T0Z2qNB3lvz8RPSu4LUyxXZ1CjuSd4fgWq5ktET685MUh5pmDdX7b8uEIg59/i4Zf43+rVQls17N19g8lynZx0d6GSVCT/ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJq+YANI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F2D2C4CED6;
	Fri, 21 Feb 2025 10:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740133733;
	bh=hNiq4VQ4l2nodOzFA4bxlJ9b6KGz4dBXXOthlUMOuVU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=qJq+YANIN85MfYMQcRvvcIX4IS45pFh+nrJdTIYCH7l9MrptSwyVoEIA4mclRhyJq
	 4Q+qpjiLIN1jpvLDwq5Zs+F9dfJQnHQZyaEVXsXwUa9AQXnxe9gxbXJtEdtkMaKb3z
	 GhRxEKB3viZhavOdu+rmBwcAXd5A+DL/Zc8JLARfqvdHp14PHa/ch2a1Fzb1s7s3fj
	 hXS52dpcj7L+x/jWhHRmpk4rHziw28QFlFqSQC/UdRBX0CNji+EXWfT/4Hj+dLGMbI
	 6kDd8HWoBHEOQaG/0T5pyS4K8nWF/+gwOOtT9h6oKAs9jXxXrLaFTK+zFjVNFugpNa
	 JTOGNrD1zq8Sg==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Fri, 21 Feb 2025 11:28:11 +0100
Subject: [PATCH net-next v6 10/15] dt-bindings: net: airoha: Add the NPU
 node for EN7581 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-airoha-en7581-flowtable-offload-v6-10-d593af0e9487@kernel.org>
References: <20250221-airoha-en7581-flowtable-offload-v6-0-d593af0e9487@kernel.org>
In-Reply-To: <20250221-airoha-en7581-flowtable-offload-v6-0-d593af0e9487@kernel.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Felix Fietkau <nbd@nbd.name>, Sean Wang <sean.wang@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>, 
 "Chester A. Unal" <chester.a.unal@arinc9.com>, 
 Daniel Golle <daniel@makrotopia.org>, DENG Qingfang <dqfext@gmail.com>, 
 Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>
Cc: netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 upstream@airoha.com, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

This patch adds the NPU document binding for EN7581 SoC.
The Airoha Network Processor Unit (NPU) provides a configuration interface
to implement wired and wireless hardware flow offloading programming Packet
Processor Engine (PPE) flow table.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../devicetree/bindings/net/airoha,en7581-npu.yaml | 72 ++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/airoha,en7581-npu.yaml b/Documentation/devicetree/bindings/net/airoha,en7581-npu.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..414e5c0615b8a8db487c23978a283b0254b2b63c
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/airoha,en7581-npu.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/airoha,en7581-npu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha Network Processor Unit for EN7581 SoC
+
+maintainers:
+  - Lorenzo Bianconi <lorenzo@kernel.org>
+
+description:
+  The Airoha Network Processor Unit (NPU) provides a configuration interface
+  to implement wired and wireless hardware flow offloading programming Packet
+  Processor Engine (PPE) flow table.
+
+properties:
+  compatible:
+    enum:
+      - airoha,en7581-npu
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: mbox host irq line
+      - description: watchdog0 irq line
+      - description: watchdog1 irq line
+      - description: watchdog2 irq line
+      - description: watchdog3 irq line
+      - description: watchdog4 irq line
+      - description: watchdog5 irq line
+      - description: watchdog6 irq line
+      - description: watchdog7 irq line
+
+  memory-region:
+    maxItems: 1
+    description:
+      Memory used to store NPU firmware binary.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - memory-region
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      npu@1e900000 {
+        compatible = "airoha,en7581-npu";
+        reg = <0 0x1e900000 0 0x313000>;
+        interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
+        memory-region = <&npu_binary>;
+      };
+    };

-- 
2.48.1


