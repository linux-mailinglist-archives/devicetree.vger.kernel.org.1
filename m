Return-Path: <devicetree+bounces-275096-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6J9hKnbis2mxcgAAu9opvQ
	(envelope-from <devicetree+bounces-275096-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:09:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB3A2812AE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:09:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E390E30BBF90
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D981E38C42D;
	Fri, 13 Mar 2026 10:08:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A390F38423D;
	Fri, 13 Mar 2026 10:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773396498; cv=none; b=gU/L3jkI/8zrzAq329Uv3XgnTtY7wLgakzjRS+FSpPfgGry/f5gMzk+MP1vouYrHYjqXZdIYUXP2hgA+2w8ISBEDiQNLBWlsbpv9fg/Pju9hmPfgomC9oq5CYluQ7mc9vSLXFD5edsfWsgKShQuGu6wHFNAFddeTgfHV1TLGXbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773396498; c=relaxed/simple;
	bh=cX0+TYSUBKoylJRqFstuVfh4bOO8RZJolgiew1xGVtM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=kGKTqXmt5sJBZ2S81qrHnCIpPcfGv0+UqiMiX9O0rff+FDKdbObRhmUHnru8TxacAmtMGG2F3eMoA81FouMlBO54fHm4VWSRG028z4vsiBxVyeHCwWfr83VaWmBK8jiBBpEqu7flxHNiWcQm3nmWCfB67AzsgjwAKsVK3qbwPHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Fri, 13 Mar
 2026 18:08:12 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Fri, 13 Mar 2026 18:08:12 +0800
From: aspeedyh <yh_chung@aspeedtech.com>
Date: Fri, 13 Mar 2026 18:07:36 +0800
Subject: [PATCH 1/7] dt-bindings: soc: aspeed: Add AST2600 eSPI controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260313-upstream_espi-v1-1-9504428e1f43@aspeedtech.com>
References: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
In-Reply-To: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@codeconstruct.com.au>, Ryan Chen <ryan_chen@aspeedtech.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
	<openbmc@lists.ozlabs.org>, <maciej.lawniczak@intel.com>, aspeedyh
	<yh_chung@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773396491; l=2633;
 i=yh_chung@aspeedtech.com; s=20260313; h=from:subject:message-id;
 bh=cX0+TYSUBKoylJRqFstuVfh4bOO8RZJolgiew1xGVtM=;
 b=PUEJ+M2Nits91wx+TswvF6gJSlfKAGjDKkzDIcVwArjw8jrWaV+Qx8qHXzgwlBTNIAeAVoX78
 8knw1gDRx/oA4BXT+fpRLDOVbo/5ZHo24B5cj88KAVBN4vOp/TH3apZ
X-Developer-Key: i=yh_chung@aspeedtech.com; a=ed25519;
 pk=o71dz0J8lpN+v0f3Mk4gT9PfVngADPC1Pex4aK6VigM=
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[aspeedtech.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275096-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yh_chung@aspeedtech.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.941];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aspeedtech.com:email,aspeedtech.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,1e6ee000:email,devicetree.org:url]
X-Rspamd-Queue-Id: 3EB3A2812AE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce the device-tree bindings for the Enhanced Serial
Peripheral Interface (eSPI) controller found on AST2600
BMC SoCs.

The controller operates as the BMC-side eSPI slave and provides the
peripheral, virtual wire, out-of-band, and flash channels used for
host-BMC communication.

Signed-off-by: aspeedyh <yh_chung@aspeedtech.com>
---
 .../bindings/soc/aspeed/aspeed,ast2600-espi.yaml   | 74 ++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/aspeed/aspeed,ast2600-espi.yaml b/Documentation/devicetree/bindings/soc/aspeed/aspeed,ast2600-espi.yaml
new file mode 100644
index 000000000000..e22a10111138
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/aspeed/aspeed,ast2600-espi.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) 2026 Aspeed Technology Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/aspeed/aspeed,ast2600-espi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ASPEED AST2600 eSPI Controller
+
+maintainers:
+  - Yun-Hsuan Chung <yh_chung@aspeedtech.com>
+  - Ryan Chen <ryan_chen@aspeedtech.com>
+
+description: |
+  The ASPEED AST2600 BMC SoC provides an Enhanced Serial Peripheral
+  Interface (eSPI) controller used for host-BMC communication.
+
+  The controller supports the eSPI channels used for peripheral,
+  virtual wire, out-of-band, and flash communication.
+
+properties:
+  compatible:
+    const: aspeed,ast2600-espi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+    description:
+      Interrupt from the GIC for the eSPI controller.
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  pinctrl-names:
+    const: default
+
+  pinctrl-0:
+    maxItems: 1
+
+  aspeed,flash-dma-mode:
+    type: boolean
+    description:
+      Enable DMA support for eSPI flash channel
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+  - pinctrl-names
+  - pinctrl-0
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/aspeed-clock.h>
+    espi: espi@1e6ee000 {
+        compatible = "aspeed,ast2600-espi";
+        reg = <0x1e6ee000 0x1000>;
+        interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&syscon ASPEED_CLK_GATE_ESPICLK>;
+        resets = <&syscon 57>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&pinctrl_espi_default>;
+        aspeed,flash-dma-mode;
+    };

-- 
2.34.1


