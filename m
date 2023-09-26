Return-Path: <devicetree+bounces-3475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3289D7AF008
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 17:54:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D879F281A2C
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 15:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A890230D0D;
	Tue, 26 Sep 2023 15:54:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 974C026E2A
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 15:54:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A87CDC433C7;
	Tue, 26 Sep 2023 15:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695743660;
	bh=a0yWQ4vIBE8N4N1i6VC7OsRaMv2o6zjb5hCiz+yfCDg=;
	h=From:To:Cc:Subject:Date:From;
	b=u8XvF9TNvYBIvrKGre6i0T5K/DxCKJ68oIb6JbO8VGJGPKPUtxj2iQV0QAlrQmQMl
	 Bt/H5gf0wWHzL4UZiKV6SlC1INMtcUIQNo+ws9TsR4vPogc6mJCuIq01pzcOH/FcQO
	 7lbfPQXpttXVAI7h7Ds6HVt9Czq16CePiSqFtI/iy/erHiz3I1Wosqwqbcc1Vdf0dG
	 raDlRaAtChbAc5Fa2llBkCd2kw3SZBNIsNgaR25fItAhCPnxrWlTbBf46ycs1jlrRk
	 MgxL71snrZUpfA3A0gS8xU8+P5f9ay/d9BB33I1yvjRYjoHmRLCj6uYTudPpqcoA02
	 bVhve0ve4Pd9g==
Received: (nullmailer pid 31792 invoked by uid 1000);
	Tue, 26 Sep 2023 15:54:17 -0000
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: Ray Jui <ray.jui@broadcom.com>, Scott Branden <scott.branden@broadcom.com>, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: PCI: brcm,iproc-pcie: Fix example indentation
Date: Tue, 26 Sep 2023 10:53:40 -0500
Message-Id: <20230926155351.31117-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The example's indentation is off. While fixing this, the 'bus' node
is unnecessary and can be dropped. It is also preferred to split up
unrelated examples to their own entries.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../bindings/pci/brcm,iproc-pcie.yaml         | 124 +++++++++---------
 1 file changed, 60 insertions(+), 64 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml
index 0972868735fc..0cb5bd6cffa1 100644
--- a/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.yaml
@@ -117,68 +117,64 @@ unevaluatedProperties: false
 
 examples:
   - |
-   #include <dt-bindings/interrupt-controller/arm-gic.h>
-
-   bus {
-      #address-cells = <1>;
-      #size-cells = <1>;
-           pcie0: pcie@18012000 {
-              compatible = "brcm,iproc-pcie";
-              reg = <0x18012000 0x1000>;
-
-              #interrupt-cells = <1>;
-              interrupt-map-mask = <0 0 0 0>;
-              interrupt-map = <0 0 0 0 &gic GIC_SPI 100 IRQ_TYPE_NONE>;
-
-              linux,pci-domain = <0>;
-
-              bus-range = <0x00 0xff>;
-
-              #address-cells = <3>;
-              #size-cells = <2>;
-              device_type = "pci";
-              ranges = <0x81000000 0 0     0x28000000 0 0x00010000>,
-                   <0x82000000 0 0x20000000 0x20000000 0 0x04000000>;
-
-              phys = <&phy 0 5>;
-              phy-names = "pcie-phy";
-
-              brcm,pcie-ob;
-              brcm,pcie-ob-axi-offset = <0x00000000>;
-
-              msi-parent = <&msi0>;
-
-              /* iProc event queue based MSI */
-              msi0: msi {
-                 compatible = "brcm,iproc-msi";
-                 msi-controller;
-                 interrupt-parent = <&gic>;
-                 interrupts = <GIC_SPI 96 IRQ_TYPE_NONE>,
-                         <GIC_SPI 97 IRQ_TYPE_NONE>,
-                         <GIC_SPI 98 IRQ_TYPE_NONE>,
-                         <GIC_SPI 99 IRQ_TYPE_NONE>;
-              };
-           };
-
-           pcie1: pcie@18013000 {
-              compatible = "brcm,iproc-pcie";
-              reg = <0x18013000 0x1000>;
-
-              #interrupt-cells = <1>;
-              interrupt-map-mask = <0 0 0 0>;
-              interrupt-map = <0 0 0 0 &gic GIC_SPI 106 IRQ_TYPE_NONE>;
-
-              linux,pci-domain = <1>;
-
-              bus-range = <0x00 0xff>;
-
-              #address-cells = <3>;
-              #size-cells = <2>;
-              device_type = "pci";
-              ranges = <0x81000000 0 0     0x48000000 0 0x00010000>,
-                   <0x82000000 0 0x40000000 0x40000000 0 0x04000000>;
-
-              phys = <&phy 1 6>;
-              phy-names = "pcie-phy";
-           };
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    pcie@18012000 {
+        compatible = "brcm,iproc-pcie";
+        reg = <0x18012000 0x1000>;
+
+        #interrupt-cells = <1>;
+        interrupt-map-mask = <0 0 0 0>;
+        interrupt-map = <0 0 0 0 &gic GIC_SPI 100 IRQ_TYPE_NONE>;
+
+        linux,pci-domain = <0>;
+
+        bus-range = <0x00 0xff>;
+
+        #address-cells = <3>;
+        #size-cells = <2>;
+        device_type = "pci";
+        ranges = <0x81000000 0          0 0x28000000 0 0x00010000>,
+                 <0x82000000 0 0x20000000 0x20000000 0 0x04000000>;
+
+        phys = <&phy 0 5>;
+        phy-names = "pcie-phy";
+
+        brcm,pcie-ob;
+        brcm,pcie-ob-axi-offset = <0x00000000>;
+
+        msi-parent = <&msi0>;
+
+        /* iProc event queue based MSI */
+        msi0: msi {
+            compatible = "brcm,iproc-msi";
+            msi-controller;
+            interrupt-parent = <&gic>;
+            interrupts = <GIC_SPI 96 IRQ_TYPE_NONE>,
+                    <GIC_SPI 97 IRQ_TYPE_NONE>,
+                    <GIC_SPI 98 IRQ_TYPE_NONE>,
+                    <GIC_SPI 99 IRQ_TYPE_NONE>;
+        };
+    };
+  - |
+    pcie@18013000 {
+        compatible = "brcm,iproc-pcie";
+        reg = <0x18013000 0x1000>;
+
+        #interrupt-cells = <1>;
+        interrupt-map-mask = <0 0 0 0>;
+        interrupt-map = <0 0 0 0 &gic GIC_SPI 106 IRQ_TYPE_NONE>;
+
+        linux,pci-domain = <1>;
+
+        bus-range = <0x00 0xff>;
+
+        #address-cells = <3>;
+        #size-cells = <2>;
+        device_type = "pci";
+        ranges = <0x81000000 0          0 0x48000000 0 0x00010000>,
+                 <0x82000000 0 0x40000000 0x40000000 0 0x04000000>;
+
+        phys = <&phy 1 6>;
+        phy-names = "pcie-phy";
     };
-- 
2.40.1


