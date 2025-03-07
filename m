Return-Path: <devicetree+bounces-155323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AB2A56383
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 10:19:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15E173B3C9A
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 09:19:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEEF21FDE2E;
	Fri,  7 Mar 2025 09:19:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-37.sinamail.sina.com.cn (mail78-37.sinamail.sina.com.cn [219.142.78.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DB21FC7CB
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 09:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741339174; cv=none; b=ZqfP2OGEEDaT5MWTwLOQcGZbewavVc5m8xkf1/Gu+o1w7Rf3z0pKFYM++OjfAg9/94gUwkZIFUhZelgwxyAH0hgNKoq1/z2W+Kh0vCowZ+9aTfVdSVhMU+pazlipMWnKANnu896PL3b/7NmvmJzNG3aRH4PpObFsy31qV85hbXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741339174; c=relaxed/simple;
	bh=EaqZroNrajfsDoZLAmk+2BuuAgDA4cJ8IjLDOVAYics=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=UCkvIbpnziuawBfcZHfQA1gw4Gpt53bxJfx+kpUetmtlnqZjTz10yrG9peoNGODxgutlII5az1Ttwa4mgVfvQ4HJitGYwzShfUXxPq/2592TWY9t96DWM2ztu7k3C518ixgK9aKMxNK61TpAdOQA/gMgDYNo9O25k61DuF71cQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.31) with ESMTP
	id 67CABA1500000B5C; Fri, 7 Mar 2025 17:19:21 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: D026B0AAB1FE4A218283534808FC78C5
X-SMAIL-UIID: D026B0AAB1FE4A218283534808FC78C5-20250307-171921
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH v5 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
Date: Fri,  7 Mar 2025 17:19:16 +0800
Message-Id: <20250307091916.100164-3-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250307091916.100164-1-zhangyi@everest-semi.com>
References: <20250307091916.100164-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add device tree binding documentation for Everest ES8389 which
is different from ES8388

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 .../bindings/sound/everest,es8389.yaml        | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8389.yaml

diff --git a/Documentation/devicetree/bindings/sound/everest,es8389.yaml b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
new file mode 100644
index 000000000000..a673df485ab3
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/everest,es8389.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Everest ES8389 audio CODEC
+
+maintainers:
+  - Michael Zhang <zhangyi@everest-semi.com>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: everest,es8389
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: clock for master clock (MCLK)
+
+  clock-names:
+    items:
+      - const: mclk
+
+  "#sound-dai-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#sound-dai-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      es8389: codec@10 {
+        compatible = "everest,es8389";
+        reg = <0x10>;
+        #sound-dai-cells = <0>;
+      };
+    };
-- 
2.17.1


