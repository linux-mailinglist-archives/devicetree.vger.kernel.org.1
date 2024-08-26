Return-Path: <devicetree+bounces-96860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D597995FC16
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 23:50:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 48EF9B23E33
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 21:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA95519CD1D;
	Mon, 26 Aug 2024 21:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="fnarD7u1"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-228.siemens.flowmailer.net (mta-65-228.siemens.flowmailer.net [185.136.65.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B933D19CCEA
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 21:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724709014; cv=none; b=B1hYvSmSta/kz4CffKGC2aqzLGSG4MDEKMUTKMu0l2mUEaY/aIeoXTmCTXtxlXplOLlUlS6kNpR2laXa0PB5bG+jEWtZKeGdnZ6LA6oJHt7FK3cOm7ltdin1L7cJMk12qhyWoD5jcSZucoLBf4qtYwM3EW5wrsCKmWfH3PGyri0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724709014; c=relaxed/simple;
	bh=aM4DaooTUSoYir0+Z2YazI9xsfO4KaO2e/vY437EiL0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Y6mj2sVsA7wiaHkUQAzgyXESQEh4BUziCh5aP/H2XyfHSxZ3TL4X/KCbRgn3C0uiJyN+HIvi29Ouiv80WQHq3flBcleocWyxsSqDpHpvLP/8jzC9JiyY4eIp+w2ZwOb3a/e+J8h5KBa5PuXue3GZ25jOd5+R3dJu50lF7CARXu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=fnarD7u1; arc=none smtp.client-ip=185.136.65.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-228.siemens.flowmailer.net with ESMTPSA id 20240826215010ccd07652f4d6233805
        for <devicetree@vger.kernel.org>;
        Mon, 26 Aug 2024 23:50:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=6/GDVNBtyr0vWKsc7M0zWXQJJOo3rWBfcV780bUMQOM=;
 b=fnarD7u1PLvIL3xZbzs4PyCXDCZEQAUGx3EeFiVVAqfb6V/ObjLrDjiR7quELIDrkJMgCy
 kyU/ztxWjiKND8DMI2r4Hap/pM6Ge+cY08MbV3uW2QkgUqFrOHv08jSbQss1yx+DFw/BTuAM
 UaAp6ltckrqRG5Om4rhuTNq5yXngOnn6klWQe313k325z3/RTk4ZbJhuersqP15Buq1fhgeV
 WoERmJpZHj+DrYjaPjFfqdjmc8xjHgDrWc+P9xoqGoIrmjVRR5Yr2VMKbXz/KO656hCeB4o+
 igLBaXIciCmcX5F+H9zXhTHzA25j/uBwCzpxmwpZt/hUtDK+Da6wkmsg==;
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
Subject: [PATCH v2 3/6] dt-bindings: PCI: ti,am65: Extend for use with PVU
Date: Mon, 26 Aug 2024 23:50:04 +0200
Message-ID: <82ac9e266f6aca42699ec4a3c8f10887789ee6bf.1724709007.git.jan.kiszka@siemens.com>
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

Describe also the VMAP registers which are needed in order to make use
of the PVU with this PCI host. Furthermore, permit to specify a
restricted DMA pool by phandle.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 .../devicetree/bindings/pci/ti,am65-pci-host.yaml   | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml b/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml
index 0a9d10532cc8..72f78f21e1e8 100644
--- a/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml
+++ b/Documentation/devicetree/bindings/pci/ti,am65-pci-host.yaml
@@ -20,7 +20,7 @@ properties:
       - ti,keystone-pcie
 
   reg:
-    maxItems: 4
+    maxItems: 6
 
   reg-names:
     items:
@@ -28,6 +28,8 @@ properties:
       - const: dbics
       - const: config
       - const: atu
+      - const: vmap_lp
+      - const: vmap_hp
 
   interrupts:
     maxItems: 1
@@ -69,6 +71,9 @@ properties:
     items:
       pattern: '^pcie-phy[0-1]$'
 
+  memory-region:
+    description: phandle to restricted DMA pool to be used for all devices behind this controller
+
 required:
   - compatible
   - reg
@@ -104,8 +109,10 @@ examples:
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


