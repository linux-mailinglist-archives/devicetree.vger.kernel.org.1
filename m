Return-Path: <devicetree+bounces-9568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7888A7CD746
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 10:57:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 185C6B21381
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 08:57:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6297F16425;
	Wed, 18 Oct 2023 08:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45328168BB
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 08:57:07 +0000 (UTC)
Received: from relmlie6.idc.renesas.com (relmlor2.renesas.com [210.160.252.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id B87319D;
	Wed, 18 Oct 2023 01:57:04 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="6.03,234,1694703600"; 
   d="scan'208";a="183503689"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 18 Oct 2023 17:57:01 +0900
Received: from localhost.localdomain (unknown [10.166.15.32])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 74DA340116A7;
	Wed, 18 Oct 2023 17:57:01 +0900 (JST)
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: lpieralisi@kernel.org,
	kw@linux.com,
	robh@kernel.org,
	bhelgaas@google.com,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jingoohan1@gmail.com,
	gustavo.pimentel@synopsys.com,
	mani@kernel.org
Cc: marek.vasut+renesas@gmail.com,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v25 09/15] dt-bindings: PCI: dwc: Update maxItems of reg and reg-names
Date: Wed, 18 Oct 2023 17:56:25 +0900
Message-Id: <20231018085631.1121289-10-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231018085631.1121289-1-yoshihiro.shimoda.uh@renesas.com>
References: <20231018085631.1121289-1-yoshihiro.shimoda.uh@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Update maxItems of reg and reg-names on both host and endpoint
for supporting Renesas R-Car Gen4 PCIe controllers later.

Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Manivannan Sadhasivam <mani@kernel.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/pci/snps,dw-pcie-common.yaml          | 4 ++--
 Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml    | 4 ++--
 Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml       | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie-common.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie-common.yaml
index d87e13496834..dc05761c5cf9 100644
--- a/Documentation/devicetree/bindings/pci/snps,dw-pcie-common.yaml
+++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie-common.yaml
@@ -33,11 +33,11 @@ properties:
       specific for each activated function, while the rest of the sub-spaces
       are common for all of them (if there are more than one).
     minItems: 2
-    maxItems: 6
+    maxItems: 7
 
   reg-names:
     minItems: 2
-    maxItems: 6
+    maxItems: 7
 
   interrupts:
     description:
diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
index 8fc2151691a4..bbdb01d22848 100644
--- a/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
@@ -33,11 +33,11 @@ properties:
       normal controller functioning. iATU memory IO region is also required
       if the space is unrolled (IP-core version >= 4.80a).
     minItems: 2
-    maxItems: 5
+    maxItems: 7
 
   reg-names:
     minItems: 2
-    maxItems: 5
+    maxItems: 7
     items:
       oneOf:
         - description:
diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
index 8bbdeb8821f8..022055edbf9e 100644
--- a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
@@ -42,11 +42,11 @@ properties:
       are required for the normal controller work. iATU memory IO region is
       also required if the space is unrolled (IP-core version >= 4.80a).
     minItems: 2
-    maxItems: 5
+    maxItems: 7
 
   reg-names:
     minItems: 2
-    maxItems: 5
+    maxItems: 7
     items:
       oneOf:
         - description:
-- 
2.25.1


