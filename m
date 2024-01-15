Return-Path: <devicetree+bounces-32032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BD682D9F6
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 14:21:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93F13B20EFE
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 13:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23F2A17544;
	Mon, 15 Jan 2024 13:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="6WWzFpst"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22210171A3;
	Mon, 15 Jan 2024 13:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40FDGOsn031019;
	Mon, 15 Jan 2024 14:20:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=M9u8psSbfiMyxIaaZp+okYX6lH1MFdnEeutd9kjlEnw=; b=6W
	WzFpstXKuHA2Ye1GsnEccjtHYaVLYMSjPvTrvVpU5+pFk/3RXKm1wseeHVAVeOpQ
	2Z9l2QmVEpZ0o7Li/9hFuUoUk7zPq3syrsmC/nRIeOINl9ho61XRW/ooY4t6UQV+
	m27FztcD7fI6CknCg8Bdcqsyt7Nd8YT4LM7Jc2T/OB5WxO2vxL3Tc4s7LP5VHvob
	FQamraYwWbZA9SGy5Os++7c30wXNOws7PSWD2r0gFcQSHz1WdcFLWeaiJJ/TiTLM
	iwZz4mSYbwBIyNJk28qJtCiow8a0oWTKxLqbwrsPtOoLHLENslGvEcNDCjcqvxJM
	Xw4WdYPpydtaFDjWRaGw==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3vkmbh0mu1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 Jan 2024 14:20:25 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DA712100057;
	Mon, 15 Jan 2024 14:20:22 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CEC652831A3;
	Mon, 15 Jan 2024 14:20:22 +0100 (CET)
Received: from localhost (10.129.178.37) by SHFDAG1NODE2.st.com (10.75.129.70)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 15 Jan
 2024 14:20:22 +0100
From: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
To: Yannick Fertre <yannick.fertre@foss.st.com>,
        Raphael Gallais-Pou
	<raphael.gallais-pou@foss.st.com>,
        Philippe Cornu
	<philippe.cornu@foss.st.com>,
        David Airlie <airlied@gmail.com>, Daniel Vetter
	<daniel@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 1/6] dt-bindings: display: add dt-bindings for STM32 LVDS device
Date: Mon, 15 Jan 2024 14:20:04 +0100
Message-ID: <20240115132009.101718-2-raphael.gallais-pou@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240115132009.101718-1-raphael.gallais-pou@foss.st.com>
References: <20240115132009.101718-1-raphael.gallais-pou@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-05_08,2024-01-05_01,2023-05-22_02

Add "st,stm32mp25-lvds" compatible.

Signed-off-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
---
Depends on: "dt-bindings: stm32: add clocks and reset binding for
	    stm32mp25 platform" by Gabriel Fernandez

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
 .../bindings/display/st,stm32-lvds.yaml       | 119 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 2 files changed, 120 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/st,stm32-lvds.yaml

diff --git a/Documentation/devicetree/bindings/display/st,stm32-lvds.yaml b/Documentation/devicetree/bindings/display/st,stm32-lvds.yaml
new file mode 100644
index 000000000000..a6383858cd2c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/st,stm32-lvds.yaml
@@ -0,0 +1,119 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/st,stm32-lvds.yaml#
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
+        compatible = "st,stm32-lvds";
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
index 9d959a6881f7..0b6ec5347195 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7193,6 +7193,7 @@ L:	dri-devel@lists.freedesktop.org
 S:	Maintained
 T:	git git://anongit.freedesktop.org/drm/drm-misc
 F:	Documentation/devicetree/bindings/display/st,stm32-ltdc.yaml
+F:	Documentation/devicetree/bindings/display/st,stm32-lvds.yaml
 F:	drivers/gpu/drm/stm
 
 DRM DRIVERS FOR TI KEYSTONE
-- 
2.25.1


