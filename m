Return-Path: <devicetree+bounces-101130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C869708F8
	for <lists+devicetree@lfdr.de>; Sun,  8 Sep 2024 19:32:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D451F281EC9
	for <lists+devicetree@lfdr.de>; Sun,  8 Sep 2024 17:32:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 007BE158A36;
	Sun,  8 Sep 2024 17:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="ibJ98p/x"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-225.siemens.flowmailer.net (mta-64-225.siemens.flowmailer.net [185.136.64.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CCF5176246
	for <devicetree@vger.kernel.org>; Sun,  8 Sep 2024 17:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725816766; cv=none; b=uBS3UGN0T1gBp5mjxgqYtSqzGkhTcs+iRk9yHYTnoAbyye3d3rGJG92TPTAOu4hZ0AK0f8ti3S7ZrrfRnjgCbcRpdDRTQEaclbJT3ROuQtyK0C/Hpqw5Hsfx5DUg9Ph3dMSO+0Ozulss6kxWzwvhQr6q+Kq0Ruw+bvRX6jeYAGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725816766; c=relaxed/simple;
	bh=nA7OrD55DWADTycCQzj+qgY8P/JDYY4XE91hoTgicEQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=R26DtM1knuKXd2+o2iF9s0ygjmeYMnijCdPcPAPOJWOxiVhxPKPMmSjjtLO0IDPKvnMrEix6oe9b9699uTRx7qUKI+vU5w6TuOWifaYrhfWNnUKD9dDBaVGYEroEihHDiQWMoKS3STJqcjDLIeqSQ0tFePHCIXtmFUFJj2X/PUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=ibJ98p/x; arc=none smtp.client-ip=185.136.64.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 202409081732367f44721e77c899aefb
        for <devicetree@vger.kernel.org>;
        Sun, 08 Sep 2024 19:32:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=xh5qkc0c1+MDM8uSvx3tNtBQFpLWdYTXf/RSsVtEdy4=;
 b=ibJ98p/xG9+0uKRwbXrpftDDuC3NOwllC2IbqCSkizfOqjw3ImVvbkdLNsMVEIuTfH+Xkr
 EyddHfiXA5PkIqwfFYC363dKbq/hKMK8fc5HAHRPDJQsvjrASOlT9lecE9pDabwzLgMEgZKr
 Ip/jKF6OcqPnn/JfLboBTXF55s5ylKGAsfJbeotcnwPDf/e5Nw+vfq43I/+tgwgk/2pS8BFI
 AsvUXcZwv6+P4zVc5sW5pgQeRNRo5bqGgc2S+JhffeQVTGFH/np32q50iW/5Gp78SdmcNcQZ
 a+Gre+vZlf5IBW4/bA9b2uEwzmpVOpKlWn8RcsMxNd/chbqQ6zHNv+iw==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Hua Qian Li <huaqian.li@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v5 2/7] dt-bindings: PCI: ti,am65: Extend for use with PVU
Date: Sun,  8 Sep 2024 19:32:28 +0200
Message-ID: <33d08f61fe9bd692da0eceab91209832bf16e804.1725816753.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1725816753.git.jan.kiszka@siemens.com>
References: <cover.1725816753.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

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
---
CC: Lorenzo Pieralisi <lpieralisi@kernel.org>
CC: "Krzysztof Wilczyński" <kw@linux.com>
CC: Bjorn Helgaas <bhelgaas@google.com>
CC: linux-pci@vger.kernel.org
---
 .../bindings/pci/ti,am65-pci-host.yaml        | 29 +++++++++++++++++--
 1 file changed, 26 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml b/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml
index 0a9d10532cc8..0c297d12173c 100644
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
@@ -83,13 +87,30 @@ if:
     compatible:
       enum:
         - ti,am654-pcie-rc
+
 then:
+  properties:
+    memory-region:
+      maxItems: 1
+      description: |
+        phandle to a restricted DMA pool to be used for all devices behind
+        this controller. The regions should be defined according to
+        reserved-memory/shared-dma-pool.yaml.
+
   required:
     - dma-coherent
     - power-domains
     - msi-map
     - num-viewport
 
+else:
+  properties:
+    reg:
+      maxItems: 4
+
+    reg-names:
+      maxItems: 4
+
 unevaluatedProperties: false
 
 examples:
@@ -104,8 +125,10 @@ examples:
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
2.43.0


