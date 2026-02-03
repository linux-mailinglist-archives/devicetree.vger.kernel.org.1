Return-Path: <devicetree+bounces-261971-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFj1IaQ/gWl6FAMAu9opvQ
	(envelope-from <devicetree+bounces-261971-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 01:21:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EABD2E7E
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 01:21:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6D2CC30069BB
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 00:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15CB01A0712;
	Tue,  3 Feb 2026 00:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="W7r5iL5h"
X-Original-To: devicetree@vger.kernel.org
Received: from out-180.mta0.migadu.com (out-180.mta0.migadu.com [91.218.175.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C03E199252
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 00:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770078111; cv=none; b=NiG/u3TxOuQZO63MerhN6ZaYjBajDhpma9TdPJSLcJ8DMeb+XzB2cevtteqVWUaReU/LsjZjLpLskbrxY3Jx+F66FOocnbjc6uQQ3RTMl1UxfoyKDMRa97qwZeJNW8uyJHdDSH0LoP4sznhTAqNIPydbYDDqihTBGz6YYJ6hzPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770078111; c=relaxed/simple;
	bh=Qg515vPUC3kcI00i4qvUjLj97sIrt0kOOoiol4VVZXs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EFN577ySe9cm6YNC57QZkHiAi9SBgIMgJpVNVA423GaVv1D+nEbKKTgUu2/+gc/WR7HqwKNfXcYNH5hH63zjA1h25GeCCsz/ANkuPGCEFrWWyY1izEY43pyr0RmfLl4wjf0bcfw9tEfYHb00E+NFUc274hbWCwZZ4jWdgGnGRI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=W7r5iL5h; arc=none smtp.client-ip=91.218.175.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1770078107;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cuOWsCVIuR/WP5JRTGWbVJdWhDaeD5ZnnFP7ct7wKpA=;
	b=W7r5iL5hkTeQqW8Tiz4WLikSlkj4xcLTE/siInq6WUpr63vnkN3X7yN6abAqkxH0s5s6Ax
	oGrpdEON//phRH0Qy8HTJ5YB7JGd95fAeoarSq3vpBpn/QjbLoxjZderDJpwRRB5z0nPZH
	m+9cFfB2Ofzw3aDCUV7etEuM9laF1T8=
From: Sean Anderson <sean.anderson@linux.dev>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Cc: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>,
	linux-kernel@vger.kernel.org,
	Michal Simek <michal.simek@amd.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Sean Anderson <sean.anderson@linux.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/8] dt-bindings: pci: xilinx-nwl: Add resets
Date: Mon,  2 Feb 2026 19:21:21 -0500
Message-Id: <20260203002128.935842-2-sean.anderson@linux.dev>
In-Reply-To: <20260203002128.935842-1-sean.anderson@linux.dev>
References: <20260203002128.935842-1-sean.anderson@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-261971-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sean.anderson@linux.dev,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linux.dev:email,linux.dev:dkim,linux.dev:mid]
X-Rspamd-Queue-Id: F3EABD2E7E
X-Rspamd-Action: no action

Add resets so we can hold the bridge in reset while we perform phy
calibration.

Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
---

 .../devicetree/bindings/pci/xlnx,nwl-pcie.yaml  | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml b/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
index 9de3c09efb6e..7efb3dd9955f 100644
--- a/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
@@ -69,6 +69,18 @@ properties:
   power-domains:
     maxItems: 1
 
+  resets:
+    maxItems: 3
+
+  reset-names:
+    items:
+      - description: APB register block reset
+        const: cfg
+      - description: AXI-PCIe bridge reset
+        const: bridge
+      - description: PCIe MAC reset
+        const: ctrl
+
   iommus:
     maxItems: 1
 
@@ -117,6 +129,7 @@ examples:
     #include <dt-bindings/interrupt-controller/irq.h>
     #include <dt-bindings/phy/phy.h>
     #include <dt-bindings/power/xlnx-zynqmp-power.h>
+    #include <dt-bindings/reset/xlnx-zynqmp-resets.h>
     soc {
         #address-cells = <2>;
         #size-cells = <2>;
@@ -146,6 +159,10 @@ examples:
             msi-parent = <&nwl_pcie>;
             phys = <&psgtr 0 PHY_TYPE_PCIE 0 0>;
             power-domains = <&zynqmp_firmware PD_PCIE>;
+            resets = <&zynqmp_reset ZYNQMP_RESET_PCIE_CFG>,
+                     <&zynqmp_reset ZYNQMP_RESET_PCIE_BRIDGE>,
+                     <&zynqmp_reset ZYNQMP_RESET_PCIE_CTRL>;
+            reset-names = "cfg", "bridge", "ctrl";
             iommus = <&smmu 0x4d0>;
             pcie_intc: legacy-interrupt-controller {
                 interrupt-controller;
-- 
2.35.1.1320.gc452695387.dirty


