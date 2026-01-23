Return-Path: <devicetree+bounces-258885-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONgSAJFNc2lDugAAu9opvQ
	(envelope-from <devicetree+bounces-258885-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 11:29:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5858574569
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 11:29:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7ADD730090A8
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E91F37AA94;
	Fri, 23 Jan 2026 10:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b="G0Mp+95W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49235.qiye.163.com (mail-m49235.qiye.163.com [45.254.49.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 936F2324B10;
	Fri, 23 Jan 2026 10:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769164169; cv=none; b=e11c8rpw6so3BYGaQUcNxdKlrtY3Fyel/GzOnnmp73G6pKpUWQDAugfKJgYLNrVtgZqCDXf/eTrxl9tPpaioL1TPhB7d5JDEsVYtV4ob3YtQalsxawhWNMe6WueBODga0VBJ4k8L1rffRdlEZaaaCZbE+B64mfqv9EQr8vxQHN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769164169; c=relaxed/simple;
	bh=G9kSOeRdG80AqV09qDQiqWxjA4BgykgzjBvnImH2LEg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cUQgvVlLp6BKuVChXlHKYdWSdpVziBYOCAJK/65DOKj6OMYxDx6txgJf/vexdv7IhYIavZkFmTQSBMitdQK2rvj6WYYQoMiZjnm+LIwH/rx552n+q4GwJiyDcRmhyGNbPDfAIc6w+wXrbXkh6Q8XUNFkTiksSWY+r9we9NOBfm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com; spf=pass smtp.mailfrom=thundersoft.com; dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b=G0Mp+95W; arc=none smtp.client-ip=45.254.49.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thundersoft.com
Received: from albert-OptiPlex-7080.. (unknown [112.65.126.162])
	by smtp.qiye.163.com (Hmail) with ESMTP id 31bc9a762;
	Fri, 23 Jan 2026 17:53:51 +0800 (GMT+08:00)
From: Albert Yang <yangzh0906@thundersoft.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ge Gordon <gordon.ge@bst.ai>,
	Arnd Bergmann <arnd@arndb.de>
Cc: BST Linux Kernel Upstream Group <bst-upstream@bstai.top>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Albert Yang <yangzh0906@thundersoft.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/6] dt-bindings: mmc: add binding for BST DWCMSHC SDHCI controller
Date: Fri, 23 Jan 2026 17:53:37 +0800
Message-ID: <20260123095342.272505-2-yangzh0906@thundersoft.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260123095342.272505-1-yangzh0906@thundersoft.com>
References: <20260123095342.272505-1-yangzh0906@thundersoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9bea46407509cckunm2b675df11c3d92
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDTU1DVkxLTEsaSxhOSR4ZGFYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKSklVTU5VSklNVUpNSVlXWRYaDxIVHRRZQVlPS0hVSktJT09PSFVKS0
	tVSkJLS1kG
DKIM-Signature: a=rsa-sha256;
	b=G0Mp+95WLthVROKr3d15RQfSVmDxgMA+rddZtpSIqwfoTEiyB8f5WuTqV1ww8dNuCphKsZh26PEk3K0mqzdYVqJRXpIUe9BVUBXqwXnpvtdDpnT5XMhz+3BGxzl9oHTdBq2CHVbD4hTvvdT4hs5d9nVfUabqxdCIK8ernzoDEQA=; c=relaxed/relaxed; s=default; d=thundersoft.com; v=1;
	bh=dt7SFNpRRmwCzfAPdXJL6wTGemkfb+ijvHXnv/nSzY0=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[thundersoft.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[thundersoft.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-258885-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yangzh0906@thundersoft.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[thundersoft.com:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,1.82.190.192:email,bst.ai:email,linaro.org:email]
X-Rspamd-Queue-Id: 5858574569
X-Rspamd-Action: no action

Add device tree bindings for the Black Sesame Technologies
DWCMSHC SDHCI controller used in C1200 SoC.

The binding describes a Synopsys DesignWare Cores Mobile Storage
Host Controller with BST-specific extensions including:
- Two register regions (core SDHCI and CRM registers)
- Optional memory-region for bounce buffer support
- Fixed clock input

Signed-off-by: Ge Gordon <gordon.ge@bst.ai>
Signed-off-by: Albert Yang <yangzh0906@thundersoft.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---
Changes for v5:
- Rename file from bst,dwcmshc-sdhci.yaml to bst,c1200-sdhci.yaml
- Fix example compatible string to match property definition
- Split from platform series per Arnd's feedback

Changes for v4:
- Change \$ref to sdhci-common.yaml#
- Change compatible to bst,c1200-sdhci

Changes for v3:
- Switch reg schema to explicit items with descriptions
- Improve example with bus node wrapper

Changes for v2:
- Simplify description, correct compatible string
---
 .../bindings/mmc/bst,c1200-sdhci.yaml         | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/bst,c1200-sdhci.yaml

diff --git a/Documentation/devicetree/bindings/mmc/bst,c1200-sdhci.yaml b/Documentation/devicetree/bindings/mmc/bst,c1200-sdhci.yaml
new file mode 100644
index 000000000000..8358bb70c333
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/bst,c1200-sdhci.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/bst,c1200-sdhci.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Black Sesame Technologies DWCMSHC SDHCI Controller
+
+maintainers:
+  - Ge Gordon <gordon.ge@bst.ai>
+
+allOf:
+  - $ref: sdhci-common.yaml#
+
+properties:
+  compatible:
+    const: bst,c1200-sdhci
+
+  reg:
+    items:
+      - description: Core SDHCI registers
+      - description: CRM registers
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: core
+
+  memory-region:
+    maxItems: 1
+
+  dma-coherent: true
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        mmc@22200000 {
+            compatible = "bst,c1200-sdhci";
+            reg = <0x0 0x22200000 0x0 0x1000>,
+                  <0x0 0x23006000 0x0 0x1000>;
+            interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&clk_mmc>;
+            clock-names = "core";
+            memory-region = <&mmc0_reserved>;
+            max-frequency = <200000000>;
+            bus-width = <8>;
+            non-removable;
+            dma-coherent;
+        };
+    };
-- 
2.43.0


