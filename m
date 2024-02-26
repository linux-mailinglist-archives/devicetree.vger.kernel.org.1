Return-Path: <devicetree+bounces-45879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 998F0867351
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 12:37:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 428DDB36842
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 10:54:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 461FC4EB5D;
	Mon, 26 Feb 2024 10:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="7m+vXXzy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5820F4EB45;
	Mon, 26 Feb 2024 10:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708944587; cv=none; b=IRA8W4WIp1Q8/MlKKy7qldnA4+75YRwjk0HLOLeb7eS2hRPorYeVTwM0/uDK5QZwCkNzgM3JHC6U+xCwX4fOeI7BtsF7v7JfGVS0E3GaCY2agviO4dwQcUDbr9R6sjcc4ETS3BqQ9I7pXGqDdfBhiImar1skUmQubwGtnAWWBdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708944587; c=relaxed/simple;
	bh=twuwkRyRHslPFywmVO+y38lM6opxhSMBvIUj8FgdjtU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=k9LlFfhEhK7Jsm6IYqI5S5UfYOM9YSidX45UMtHl+xOIDGXJWkA6905KeOoZCdwQF9tqvmxCNsOe8uryU7hbPc81LQCreev2xJh981yV/S6FuFSyHer8h6KADY31CbNwPTmqTTYN2uZyybU6Q8Carpv//b5Od1VOv/Hx/m4CjT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=7m+vXXzy; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41QALFRK004526;
	Mon, 26 Feb 2024 11:49:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:date:subject:mime-version:content-type
	:content-transfer-encoding:message-id:references:in-reply-to:to
	:cc; s=selector1; bh=LS0fC07Uerxobb1Hl9X+Or5HXmC5pJ+PVXGLcG2X85I
	=; b=7m+vXXzyeFnQa8iAl3RxC71EJ0r/V84QTpMiBXdhcDL2BWP0eNPg82zi+Tl
	BB9XmFGdjEoB9on+yUyMSSE652EU7pUt8ANI0bRsZ5/JJ4JuOW6CwyW47o2bbyzJ
	mIyVZvEC7AF3wBiWnCerhEwEAYlWzglUI1RMVJ7vo3xuIEoRQBmq+1YpBKcbY5kU
	g4Q+7+mn22ucu/uFMvl1nyOPOL7PrIHtjMTYxiJB3g3JhDypnrV0FiQU5G0MRP8U
	fMLXs8DcC69zfhKjIxguMlaVsor8/asgf0qNIIn8bj05B70EfG2uogPDonjPwdRO
	I5nTdBqFfSx1G1X6uDbslNtqeIQ==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3wf6rkeyc9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 Feb 2024 11:49:17 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id EA29840047;
	Mon, 26 Feb 2024 11:49:12 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 80B93265EF5;
	Mon, 26 Feb 2024 11:48:09 +0100 (CET)
Received: from localhost (10.252.9.163) by SHFDAG1NODE2.st.com (10.75.129.70)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 26 Feb
 2024 11:48:09 +0100
From: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
Date: Mon, 26 Feb 2024 11:48:05 +0100
Subject: [PATCH v6 1/3] dt-bindings: display: add STM32 LVDS device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20240226-lvds-v6-1-15e3463fbe70@foss.st.com>
References: <20240226-lvds-v6-0-15e3463fbe70@foss.st.com>
In-Reply-To: <20240226-lvds-v6-0-15e3463fbe70@foss.st.com>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Yannick Fertre <yannick.fertre@foss.st.com>,
        Philippe Cornu <philippe.cornu@foss.st.com>,
        Philipp Zabel
	<p.zabel@pengutronix.de>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
        Conor Dooley
	<conor.dooley@microchip.com>
X-Mailer: b4 0.12.4
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-26_07,2024-02-26_01,2023-05-22_02

Add "st,stm32mp25-lvds" compatible.

Signed-off-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
Depends on: "dt-bindings: stm32: add clocks and reset binding for
	    stm32mp25 platform" by Gabriel Fernandez

Changes in v6:
	- Added Conor's Reviewed-by

Changes in v5:
	- Fixed path in MAINTAINERS

Changes in v4:
	- Align filename to compatible
	- Fix compatible in the example
	- Remove redundant word in the subject

Changes in v3:
	- Clarify commit dependency
	- Fix includes in the example
	- Fix YAML
	- Add "clock-cells" description
	- s/regroups/is composed of/
	- Changed compatible to show SoC specificity

Changes in v2:
	- Switch compatible and clock-cells related areas
	- Remove faulty #include in the example.
	- Add entry in MAINTAINERS
---
 .../bindings/display/st,stm32mp25-lvds.yaml        | 119 +++++++++++++++++++++
 MAINTAINERS                                        |   1 +
 2 files changed, 120 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/st,stm32mp25-lvds.yaml b/Documentation/devicetree/bindings/display/st,stm32mp25-lvds.yaml
new file mode 100644
index 000000000000..6736f93256b5
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/st,stm32mp25-lvds.yaml
@@ -0,0 +1,119 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/st,stm32mp25-lvds.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 LVDS Display Interface Transmitter
+
+maintainers:
+  - Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
+  - Yannick Fertre <yannick.fertre@foss.st.com>
+
+description: |
+  The STMicroelectronics STM32 LVDS Display Interface Transmitter handles the
+  LVDS protocol: it maps the pixels received from the upstream Pixel-DMA (LTDC)
+  onto the LVDS PHY.
+
+  It is composed of three sub blocks:
+    - LVDS host: handles the LVDS protocol (FPD / OpenLDI) and maps its input
+      pixels onto the data lanes of the PHY
+    - LVDS PHY: parallelize the data and drives the LVDS data lanes
+    - LVDS wrapper: handles top-level settings
+
+  The LVDS controller driver supports the following high-level features:
+    - FDP-Link-I and OpenLDI (v0.95) protocols
+    - Single-Link or Dual-Link operation
+    - Single-Display or Double-Display (with the same content duplicated on both)
+    - Flexible Bit-Mapping, including JEIDA and VESA
+    - RGB888 or RGB666 output
+    - Synchronous design, with one input pixel per clock cycle
+
+properties:
+  compatible:
+    const: st,stm32mp25-lvds
+
+  "#clock-cells":
+    const: 0
+    description:
+      Provides the internal LVDS PHY clock to the framework.
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: APB peripheral clock
+      - description: Reference clock for the internal PLL
+
+  clock-names:
+    items:
+      - const: pclk
+      - const: ref
+
+  resets:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          LVDS input port node, connected to the LTDC RGB output port.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          LVDS output port node, connected to a panel or bridge input port.
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - "#clock-cells"
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/st,stm32mp25-rcc.h>
+    #include <dt-bindings/reset/st,stm32mp25-rcc.h>
+
+    lvds: lvds@48060000 {
+        compatible = "st,stm32mp25-lvds";
+        reg = <0x48060000 0x2000>;
+        #clock-cells = <0>;
+        clocks = <&rcc CK_BUS_LVDS>, <&rcc CK_KER_LVDSPHY>;
+        clock-names = "pclk", "ref";
+        resets = <&rcc LVDS_R>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                lvds_in: endpoint {
+                   remote-endpoint = <&ltdc_ep1_out>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+                lvds_out0: endpoint {
+                   remote-endpoint = <&lvds_panel_in>;
+                };
+            };
+        };
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 3527a2ece6cd..ff5c945f206e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7240,6 +7240,7 @@ L:	dri-devel@lists.freedesktop.org
 S:	Maintained
 T:	git git://anongit.freedesktop.org/drm/drm-misc
 F:	Documentation/devicetree/bindings/display/st,stm32-ltdc.yaml
+F:	Documentation/devicetree/bindings/display/st,stm32mp25-lvds.yaml
 F:	drivers/gpu/drm/stm
 
 DRM DRIVERS FOR TI KEYSTONE

-- 
2.25.1


