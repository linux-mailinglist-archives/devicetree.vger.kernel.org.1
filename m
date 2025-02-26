Return-Path: <devicetree+bounces-151695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6FEA46931
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 19:13:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9518E188D61A
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 18:13:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BC9C22A7EE;
	Wed, 26 Feb 2025 18:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="b5lZwF4/"
X-Original-To: devicetree@vger.kernel.org
Received: from out-183.mta0.migadu.com (out-183.mta0.migadu.com [91.218.175.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64EE22A7F0
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 18:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740593609; cv=none; b=O2TyVNKc4oCGr6lR44YAeLb4+jAru79wSm5kf19PfZ+dTAk0Uy/uHH7UZxCc4vexr7FJXLftgcHHxxLJNwudXAgxQCTLE8VAjWNRtQBs92DjuKB4gV1mF3ofAF70IbDAvvCXHirub224TGxkPiAqembCZkVU+Q1w3w4e2jKEhF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740593609; c=relaxed/simple;
	bh=wW4Yb4k811hfOMyG74Ap9zlXELETQEvn4l8NRQymTxQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DWuld4HJVD2OhNrCUpSqED7gWvRBtUNLBXAvs8TtGzaPHfmMuM3rOE4dWnWIBK1/DABJjf7KduB8obPNwGY+lZs5DFdB8myFpCKu8//kqRsATCIpIdkOEtdhOmpjophvq92CWS+POME/J9jNjfXZRUeAMhVz+VwsdopY6VP49JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=b5lZwF4/; arc=none smtp.client-ip=91.218.175.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1740593604;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VxBUkk1DvFLkx89NqB/B8hcpjG+LAFccllAcdC+VY7E=;
	b=b5lZwF4/BZ8sSjHh57JPsZu4p/8IAdaWPj9O1b8XpEpYKiOBVVgYS2BHQppLaEol/4d+N7
	rqu2zVFNk84K/mHv2waX3KrIlggpIrw51P+oeGmZUvZfcunBikW2qOF1uJrauPIG2xaMkj
	qJH1ABddleCBxhCewQntsauzj04v/4s=
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Jyri Sarha <jyri.sarha@iki.fi>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Simona Vetter <simona@ffwll.ch>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Devarsh Thakkar <devarsht@ti.com>,
	Praneeth Bajjuri <praneeth@ti.com>,
	Udit Kumar <u-kumar1@ti.com>,
	Jayesh Choudhary <j-choudhary@ti.com>,
	Francesco Dolcini <francesco@dolcini.it>,
	DRI Development List <dri-devel@lists.freedesktop.org>,
	Devicetree List <devicetree@vger.kernel.org>,
	Linux Kernel List <linux-kernel@vger.kernel.org>,
	Aradhya Bhatia <aradhya.bhatia@linux.dev>
Subject: [PATCH v6 1/4] dt-bindings: display: ti,am65x-dss: Re-indent the example
Date: Wed, 26 Feb 2025 23:42:57 +0530
Message-Id: <20250226181300.756610-2-aradhya.bhatia@linux.dev>
In-Reply-To: <20250226181300.756610-1-aradhya.bhatia@linux.dev>
References: <20250226181300.756610-1-aradhya.bhatia@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

From: Aradhya Bhatia <a-bhatia1@ti.com>

Reduce tab size from 8 spaces to 4 spaces to make the bindings
consistent, and easy to expand.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Signed-off-by: Aradhya Bhatia <a-bhatia1@ti.com>
Signed-off-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
---
 .../bindings/display/ti/ti,am65x-dss.yaml     | 54 +++++++++----------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
index 31c4ffcb599c..07c3b792ff5a 100644
--- a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
+++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
@@ -142,32 +142,32 @@ examples:
     #include <dt-bindings/soc/ti,sci_pm_domain.h>
 
     dss: dss@4a00000 {
-            compatible = "ti,am65x-dss";
-            reg =   <0x04a00000 0x1000>, /* common */
-                    <0x04a02000 0x1000>, /* vidl1 */
-                    <0x04a06000 0x1000>, /* vid */
-                    <0x04a07000 0x1000>, /* ovr1 */
-                    <0x04a08000 0x1000>, /* ovr2 */
-                    <0x04a0a000 0x1000>, /* vp1 */
-                    <0x04a0b000 0x1000>, /* vp2 */
-                    <0x04a01000 0x1000>; /* common1 */
-            reg-names = "common", "vidl1", "vid",
-                    "ovr1", "ovr2", "vp1", "vp2", "common1";
-            ti,am65x-oldi-io-ctrl = <&dss_oldi_io_ctrl>;
-            power-domains = <&k3_pds 67 TI_SCI_PD_EXCLUSIVE>;
-            clocks =        <&k3_clks 67 1>,
-                            <&k3_clks 216 1>,
-                            <&k3_clks 67 2>;
-            clock-names = "fck", "vp1", "vp2";
-            interrupts = <GIC_SPI 166 IRQ_TYPE_EDGE_RISING>;
-            ports {
-                    #address-cells = <1>;
-                    #size-cells = <0>;
-                    port@0 {
-                            reg = <0>;
-                            oldi_out0: endpoint {
-                                    remote-endpoint = <&lcd_in0>;
-                            };
-                    };
+        compatible = "ti,am65x-dss";
+        reg = <0x04a00000 0x1000>, /* common */
+              <0x04a02000 0x1000>, /* vidl1 */
+              <0x04a06000 0x1000>, /* vid */
+              <0x04a07000 0x1000>, /* ovr1 */
+              <0x04a08000 0x1000>, /* ovr2 */
+              <0x04a0a000 0x1000>, /* vp1 */
+              <0x04a0b000 0x1000>, /* vp2 */
+              <0x04a01000 0x1000>; /* common1 */
+        reg-names = "common", "vidl1", "vid",
+                "ovr1", "ovr2", "vp1", "vp2", "common1";
+        ti,am65x-oldi-io-ctrl = <&dss_oldi_io_ctrl>;
+        power-domains = <&k3_pds 67 TI_SCI_PD_EXCLUSIVE>;
+        clocks =        <&k3_clks 67 1>,
+                        <&k3_clks 216 1>,
+                        <&k3_clks 67 2>;
+        clock-names = "fck", "vp1", "vp2";
+        interrupts = <GIC_SPI 166 IRQ_TYPE_EDGE_RISING>;
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+            port@0 {
+                reg = <0>;
+                oldi_out0: endpoint {
+                    remote-endpoint = <&lcd_in0>;
+                };
             };
+        };
     };
-- 
2.34.1


