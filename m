Return-Path: <devicetree+bounces-96864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3953F95FC1D
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 23:50:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AEFE1B21176
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 21:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA6E919D886;
	Mon, 26 Aug 2024 21:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="GOVQzMZd"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-228.siemens.flowmailer.net (mta-64-228.siemens.flowmailer.net [185.136.64.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410FA199392
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 21:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724709015; cv=none; b=jxPP3nPFDQfzJkyuhz9+Q9m0e29WmzSNIPcpcZ8CJjowSVNDavG/doDyHnXOveJYlt+o0dQiB2S321UmRiZtv1cyfV3+3CPWmcjbfD3pV1tBeaRMc15NuppyKuw9XhF3fP60yz4jxqUqMMXpXx3XqfgVr1sH40bNtCga1w+b/b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724709015; c=relaxed/simple;
	bh=qdq5vGiiOybA24Cm3w+q2RH2ru9lwvmnTnhPBbu3xsI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YUIgSokBXRT7+n+7hXrJ+W9qR1CZroVs+gocKeuJ21b1eRlQh21RYMDydC0bJ8N4ivzbYtuwzdtsxvjMAnNzX40xzrYUh3fFNTWYgcGVJDjE5K78UoOxuEh/waVI+t00g+hLiS8nw2pRt5/p8AdrGiHoibz/th7RP72OGDe3SUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=GOVQzMZd; arc=none smtp.client-ip=185.136.64.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id 20240826215009b4140d5ee808c6f262
        for <devicetree@vger.kernel.org>;
        Mon, 26 Aug 2024 23:50:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=bWPNoWMVESBUTCke6xVnHcukgvVbb6weNuBU8N9F0/o=;
 b=GOVQzMZdmdG67wFXtsmGmM+ufZPaA8JGnjEeof29m9MHNttf3rU0QxZk8bkvM+LL2KDOdR
 xbfSNrjFq0jAXHL7LqJW4U552/VqCMg0sLCgYgOHzCfKbaTUqEhbLwKgWOPtXaxOI8gUteZR
 qjkIcXpC4mjpFUTiRw5/T6gr+yg+RKFzxPxPxaNVsZKswaQc2nhSDVbFW226vISkbZUBSs44
 7s6hNPJVbYyswLWvRt7YjAmXlcP1bxQGb7cLJjwj2VFjj50nS/GytwRTUvle4LEZoxPHXUex
 qEt1CBR61u9264kNGbscGxt4xVrLyr5ZDjMGsIdR3vAWCD9ZMchX8WOA==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Hua Qian Li <huaqian.li@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>
Subject: [PATCH v2 1/6] dt-bindings: soc: ti: Add AM65 peripheral virtualization unit
Date: Mon, 26 Aug 2024 23:50:02 +0200
Message-ID: <a167791956834ca40c39acde8a55a1de41809b36.1724709007.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1724709007.git.jan.kiszka@siemens.com>
References: <cover.1724709007.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

The PVU allows to define a limited set of mappings for incoming DMA
requests to the system memory. It is not a real IOMMU, thus hooked up
under the TI SoC bindings.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 .../bindings/soc/ti/ti,am654-pvu.yaml         | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/ti/ti,am654-pvu.yaml

diff --git a/Documentation/devicetree/bindings/soc/ti/ti,am654-pvu.yaml b/Documentation/devicetree/bindings/soc/ti/ti,am654-pvu.yaml
new file mode 100644
index 000000000000..fd0f86fa27b0
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/ti/ti,am654-pvu.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) Siemens AG, 2024
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/ti/ti,am654-pvu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI AM654 Peripheral Virtualization Unit
+
+maintainers:
+  - Jan Kiszka <jan.kiszka@siemens.com>
+
+properties:
+  compatible:
+    enum:
+      - ti,am654-pvu
+
+  reg:
+    minItems: 2
+
+  reg-names:
+    items:
+      - const: cfg
+      - const: tlbif
+
+  interrupts:
+    items:
+      - description: fault interrupt
+
+  interrupt-names:
+    items:
+      - const: pvu
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+
+additionalProperties: false
+
+examples:
+  - |
+    ti-pvu@30f80000 {
+        compatible = "ti,am654-pvu";
+        reg = <0x30f80000 0x1000>,
+              <0x36000000 0x100000>;
+        reg-names = "cfg", "tlbif";
+        interrupts-extended = <&intr_main_navss 390>;
+        interrupt-names = "pvu";
+    };
-- 
2.43.0


