Return-Path: <devicetree+bounces-65231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B80A68BD246
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 18:16:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF0EFB224EF
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 16:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B50815697B;
	Mon,  6 May 2024 16:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="OQ6tviJw"
X-Original-To: devicetree@vger.kernel.org
Received: from out-182.mta0.migadu.com (out-182.mta0.migadu.com [91.218.175.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0A09156676
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 16:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715012131; cv=none; b=a2Vg9QA+m3ef5ya6WpFriMtHVBFx2dYLm7ylctrRQ9UOB7Oixp+Fvcmt4vl3sCJipXJ65mcgFkRMBejWKdsxaZGeedqsCxZmiugCQDIfvqTY9h/IHbpZHMLgN1m3g2Tx6YgJtVo96dg3pbk/Lk6PWmALCb0wFPPxoO1g72kwZUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715012131; c=relaxed/simple;
	bh=TyVattB9P0e8t5wNQ0gFDVFIeSr9GsPdV2eaRo2WGrE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qikCN4ju3ZuO6o5IoKYwH40DhdfJYUduOsfv/2zSBExeDbpnFr8fPlDebSajsqosrtzdqQt99kd8SXRQf1qTe8lTOgAhr5iG5o6mkE3snUtT2KINOL0vzz6Qz0jZxddULFG9XJF09jNdwam7bqGo+sot68LuztPbDt0RQsR2B3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=OQ6tviJw; arc=none smtp.client-ip=91.218.175.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1715012127;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=b+3dT2d6ER0IlCAsSUbORGIL1TSfGEpzpmkwOt0cz4c=;
	b=OQ6tviJwGSEY0TWJ3+kEBSIEDqs2zfHC3tbET9g3HdLstFkr1B1N2IrDSCopVx2fYtmlZv
	nHrXvRullyq92bsuUKlc0EnRNiFjKgqFNPxlAUUGjQJ8RJ5ifkBqzq5DmSoFCAQtU9JpH9
	2CHk6kpLFtpSAzPU/iSHqDbCfsr0U/k=
From: Sean Anderson <sean.anderson@linux.dev>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	linux-pci@vger.kernel.org
Cc: Michal Simek <michal.simek@amd.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sean Anderson <sean.anderson@linux.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/7] dt-bindings: pci: xilinx-nwl: Add phys
Date: Mon,  6 May 2024 12:15:04 -0400
Message-Id: <20240506161510.2841755-2-sean.anderson@linux.dev>
In-Reply-To: <20240506161510.2841755-1-sean.anderson@linux.dev>
References: <20240506161510.2841755-1-sean.anderson@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Add phys properties so Linux can power-on/configure the GTR
transcievers.

Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
---

Changes in v2:
- Remove phy-names
- Add an example

 Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml b/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
index 426f90a47f35..693b29039a9b 100644
--- a/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
@@ -61,6 +61,10 @@ properties:
   interrupt-map:
     maxItems: 4
 
+  phys:
+    minItems: 1
+    maxItems: 4
+
   power-domains:
     maxItems: 1
 
@@ -110,6 +114,7 @@ examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/phy/phy.h>
     #include <dt-bindings/power/xlnx-zynqmp-power.h>
     soc {
         #address-cells = <2>;
@@ -138,6 +143,7 @@ examples:
                             <0x0 0x0 0x0 0x3 &pcie_intc 0x3>,
                             <0x0 0x0 0x0 0x4 &pcie_intc 0x4>;
             msi-parent = <&nwl_pcie>;
+            phys = <&psgtr 0 PHY_TYPE_PCIE 0 0>;
             power-domains = <&zynqmp_firmware PD_PCIE>;
             iommus = <&smmu 0x4d0>;
             pcie_intc: legacy-interrupt-controller {
-- 
2.35.1.1320.gc452695387.dirty


