Return-Path: <devicetree+bounces-3477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8361D7AF014
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 17:56:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 31FFB281551
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 15:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B005830D15;
	Tue, 26 Sep 2023 15:56:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D48830D13
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 15:56:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBE57C433C7;
	Tue, 26 Sep 2023 15:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695743806;
	bh=sz3LleGIgkDcRxsY10cRbgEtugt9GVhiu7ELFn1C6PM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pQ0bxYsFFW6f3k8Mm9YI6BmpG2prf+7jIv4S+F1z1386cIVcJob8goJ79mN/ygtGn
	 LwBrPO/JVUlO2j/UqOLwnuLiiuNReUALoxduWfNpBG+Vutf0qrLwcNG8vPlPi089J5
	 IO1Pi7q35HxGeadWPmr72WV1Ws73n6gXn2qQWFHUVYiGDyDUlXRp/CiPJQG9JD8O5/
	 zoYNs+M/fzB/ue4ZgOpi5QCQU2NOWZXT3GqxctlK2SWJCTzPh8cxzrPoziiWg7AtX1
	 01nGw9jArczGNVvuYj9s3xXZjLKyxdmORBTQayk4tcv57YsVKpqLXfOQpBdBZcDVQO
	 wq2vZyE2CDYwA==
Received: (nullmailer pid 34714 invoked by uid 1000);
	Tue, 26 Sep 2023 15:56:43 -0000
From: Rob Herring <robh@kernel.org>
To: Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: Ray Jui <ray.jui@broadcom.com>, Scott Branden <scott.branden@broadcom.com>, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] dt-bindings: PCI: brcm,iproc-pcie: Fix 'msi' child node schema
Date: Tue, 26 Sep 2023 10:56:09 -0500
Message-Id: <20230926155613.33904-3-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230926155351.31117-1-robh@kernel.org>
References: <20230926155351.31117-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The 'msi' child node schema is missing constraints on additional properties.
It turns out it is incomplete and properties for it are documented in the
parent node by mistake. Move the reference to msi-controller.yaml and
the custom properties to the 'msi' node. Adding 'unevaluatedProperties'
ensures all the properties in the 'msi' node are documented.

With the schema corrected, a minimal interrupt controller node is needed
to properly decode the interrupt properties since the example has
multiple interrupt parents.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../bindings/pci/brcm,iproc-pcie.yaml         | 24 ++++++++++++-------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml
index 6730d68fedc7..0e07ab61a48d 100644
--- a/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml
@@ -12,7 +12,6 @@ maintainers:
 
 allOf:
   - $ref: /schemas/pci/pci-bus.yaml#
-  - $ref: /schemas/interrupt-controller/msi-controller.yaml#
 
 properties:
   compatible:
@@ -63,20 +62,24 @@ properties:
 
   msi:
     type: object
+    $ref: /schemas/interrupt-controller/msi-controller.yaml#
+    unevaluatedProperties: false
+
     properties:
       compatible:
         items:
           - const: brcm,iproc-msi
 
-  msi-parent: true
+      interrupts:
+        maxItems: 4
 
-  msi-controller: true
+      brcm,pcie-msi-inten:
+        type: boolean
+        description:
+          Needs to be present for some older iProc platforms that require the
+          interrupt enable registers to be set explicitly to enable MSI
 
-  brcm,pcie-msi-inten:
-    type: boolean
-    description: >
-      Needs to be present for some older iProc platforms that require the
-      interrupt enable registers to be set explicitly to enable MSI
+  msi-parent: true
 
 dependencies:
   brcm,pcie-ob-axi-offset: ["brcm,pcie-ob"]
@@ -104,6 +107,11 @@ examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
 
+    gic: interrupt-controller {
+        interrupt-controller;
+        #interrupt-cells = <3>;
+    };
+
     pcie@18012000 {
         compatible = "brcm,iproc-pcie";
         reg = <0x18012000 0x1000>;
-- 
2.40.1


