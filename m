Return-Path: <devicetree+bounces-168487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA99A93375
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 09:31:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0DC3619E3021
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 07:31:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5315726A0CA;
	Fri, 18 Apr 2025 07:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=huaqian.li@siemens.com header.b="IsWipH/w"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-225.siemens.flowmailer.net (mta-64-225.siemens.flowmailer.net [185.136.64.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2552512CA
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 07:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744961469; cv=none; b=SxvFWIzQxdp8UQG3AWhQTOf4Q1CcOiESBXgjZcLG15KmOwu30+GtZ7Z65G4P1C7BTwrdfMxCOwne2PgU5Io/SXYHCJ6FoGh54wldlJDJ8c8lfutuaynQQIajtzWUzbnnyWHYAC/yaEPGtSlFyl4PRa/elfVh5Ph34+pWPn5p/Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744961469; c=relaxed/simple;
	bh=CZ9uiotzsIB9HL2IAZsQZTVmDMklLp6QxZpVCMH+R5w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eiw1Xw0PKBws6TAUBsMQLXwFxMlzfdMgkdDttrGqOXX+WxN7aZgTFf04dyWJnqNsBKwGrTfKoCEz+jvwneTVsDlYgNPlJymgBc4mZhoc+sKhdy2GLri9iMRS5PU9RESGpmXshCOS12DjmCNpLa7/i78Q235JX8RX4ZGja9yYhdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=huaqian.li@siemens.com header.b=IsWipH/w; arc=none smtp.client-ip=185.136.64.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 2025041807310315f5c986fa8cba03d0
        for <devicetree@vger.kernel.org>;
        Fri, 18 Apr 2025 09:31:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=huaqian.li@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=81MJsMNbogkYe+Rx2MtdDb/7nc44T96h+II7KVTEBl0=;
 b=IsWipH/wzFhscWMIqwaXxolbV74wP/+NY7hss/R3C8wsYGt41Hiphe3S7tzd1EJ/pwe9jG
 GsTEZz5Mtv5Iv9mtDwJoxrj3OXcHZK7qq8eLaBaD0rXMOxS3PyberjS4K1ag2nG5uwkL3JhG
 1VJGW/XUT3L/K+PFrZYvYxWbVMrGJypFBwO8z2Q3TIXm6c4y0vXxDGybeiqAlbmFBY3Yi4b2
 ChcqgcTmdNbqqyWVOhoq7uG/ajQr95j8kHJzxg6q43ePGEp1Ndhk4I3vsdg1KdsfPOYe6PF2
 DVzbZo0lapcKtHfs/OMQ5yQa8hpqz+fgrm/D9SDJPpGttz+6+c7yNLug==;
From: huaqian.li@siemens.com
To: helgaas@kernel.org,
	m.szyprowski@samsung.com,
	robin.murphy@arm.com
Cc: baocheng.su@siemens.com,
	bhelgaas@google.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	diogo.ivo@siemens.com,
	huaqian.li@siemens.com,
	jan.kiszka@siemens.com,
	kristo@kernel.org,
	krzk+dt@kernel.org,
	kw@linux.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	lpieralisi@kernel.org,
	nm@ti.com,
	robh@kernel.org,
	s-vadapalli@ti.com,
	ssantosh@kernel.org,
	vigneshr@ti.com,
	iommu@lists.linux.dev,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 2/8] dt-bindings: PCI: ti,am65: Extend for use with PVU
Date: Fri, 18 Apr 2025 15:30:20 +0800
Message-Id: <20250418073026.2418728-3-huaqian.li@siemens.com>
In-Reply-To: <20250418073026.2418728-1-huaqian.li@siemens.com>
References: <20241030205703.GA1219329@bhelgaas>
 <20250418073026.2418728-1-huaqian.li@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-959203:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

The PVU on the AM65 SoC is capable of restricting DMA from PCIe devices
to specific regions of host memory. Add the optional property
"memory-regions" to point to such regions of memory when PVU is used.

Since the PVU deals with system physical addresses, utilizing the PVU
with PCIe devices also requires setting up the VMAP registers to map the
Requester ID of the PCIe device to the CBA Virtual ID, which in turn is
mapped to the system physical address. Hence, describe the VMAP
registers which are optional unless the PVU shall be used for PCIe.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Li Hua Qian <huaqian.li@siemens.com>
---
 .../bindings/pci/ti,am65-pci-host.yaml        | 34 +++++++++++++++++--
 1 file changed, 31 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml b/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml
index 0a9d10532cc8..7916325e0b39 100644
--- a/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml
+++ b/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml
@@ -20,14 +20,18 @@ properties:
       - ti,keystone-pcie
 
   reg:
-    maxItems: 4
+    minItems: 4
+    maxItems: 6
 
   reg-names:
+    minItems: 4
     items:
       - const: app
       - const: dbics
       - const: config
       - const: atu
+      - const: vmap_lp
+      - const: vmap_hp
 
   interrupts:
     maxItems: 1
@@ -69,6 +73,15 @@ properties:
     items:
       pattern: '^pcie-phy[0-1]$'
 
+  memory-region:
+    maxItems: 1
+    description: |
+      phandle to a restricted DMA pool to be used for all devices behind
+      this controller. The regions should be defined according to
+      reserved-memory/shared-dma-pool.yaml.
+      Note that enforcement via the PVU will only be available to
+      ti,am654-pcie-rc devices.
+
 required:
   - compatible
   - reg
@@ -89,6 +102,19 @@ then:
     - power-domains
     - msi-map
     - num-viewport
+    - memory-region
+  properties:
+    reg:
+      minItems: 6
+    reg-names:
+      minItems: 6
+else:
+  properties:
+    reg:
+      maxItems: 4
+
+    reg-names:
+      maxItems: 4
 
 unevaluatedProperties: false
 
@@ -104,8 +130,10 @@ examples:
         reg =  <0x5500000 0x1000>,
                <0x5501000 0x1000>,
                <0x10000000 0x2000>,
-               <0x5506000 0x1000>;
-        reg-names = "app", "dbics", "config", "atu";
+               <0x5506000 0x1000>,
+               <0x2900000 0x1000>,
+               <0x2908000 0x1000>;
+        reg-names = "app", "dbics", "config", "atu", "vmap_lp", "vmap_hp";
         power-domains = <&k3_pds 120 TI_SCI_PD_EXCLUSIVE>;
         #address-cells = <3>;
         #size-cells = <2>;
-- 
2.34.1


