Return-Path: <devicetree+bounces-66476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6379A8C3378
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 21:31:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17D0528182A
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 19:31:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B6691CD32;
	Sat, 11 May 2024 19:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="HyLkQh1O"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E4E1B974;
	Sat, 11 May 2024 19:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.249
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715455883; cv=none; b=gQkKsI1MaSBMUzAtxFZlaL9Kg8UFNmbP1HeYajzEBqmrDaAjU3Sy0oWNdLtADURk/gJPJDzeBvcCA3HDlVKrpn6HUbaVkPhzwoHTpkg+nDm+nHuXmLIklB5XEWVNG9s2Iubh5z37IQr8BkaLRDEQTTznE4C+I+MvsxU5VfI4W2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715455883; c=relaxed/simple;
	bh=1ZWeLt5rU9IGNeY+Ny6xIyFTccxB8MeJiInKCPQsGJw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DTw0mS0m+SgGnZNa3RmCJ3F3dzrZPNIaHuAJBTEgM8YInfi/rSCyY23ochvZ/X+iHX8TijhyAKnOV7GN/41WCY4y2m6m+VtUq2Zo6WiuWgUCh7T+lE7IVRDX61Sd6NzBhHIGSwI52z051H2TiEVqYdlzIb4v+GAbcqWkM9U3jls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=HyLkQh1O; arc=none smtp.client-ip=198.47.23.249
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 44BJV0N2064348;
	Sat, 11 May 2024 14:31:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1715455860;
	bh=VfWUnTeO2rYGeiEbDD7huiAGpzBItDAbqZM1gu5JMxk=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=HyLkQh1OyMDTWoNi+73S994YGT/rteyt6/F408mAmiJ7+l8+obf+Gga/XkxIWthAs
	 BjoneRb+HJRvaj0GK1kdGjbTBYqwyDbI9RoY09HVGwGHMnVtPIli16Cixa4DlZ4RLV
	 BsNXGIDqm8rUy10DvgrkA6K7o32rH1lBcXXUj+PI=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 44BJV0cn073078
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sat, 11 May 2024 14:31:00 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Sat, 11
 May 2024 14:31:00 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Sat, 11 May 2024 14:31:00 -0500
Received: from localhost (uda0496377.dhcp.ti.com [172.24.227.31])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 44BJUxju035635;
	Sat, 11 May 2024 14:30:59 -0500
From: Aradhya Bhatia <a-bhatia1@ti.com>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
        Jyri Sarha
	<jyri.sarha@iki.fi>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Laurent Pinchart
	<Laurent.pinchart@ideasonboard.com>,
        David Airlie <airlied@gmail.com>, Daniel
 Vetter <daniel@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: DRI Development List <dri-devel@lists.freedesktop.org>,
        Devicetree List
	<devicetree@vger.kernel.org>,
        Linux Kernel List
	<linux-kernel@vger.kernel.org>,
        Nishanth Menon <nm@ti.com>, Vignesh
 Raghavendra <vigneshr@ti.com>,
        Praneeth Bajjuri <praneeth@ti.com>, Udit Kumar
	<u-kumar1@ti.com>,
        Francesco Dolcini <francesco@dolcini.it>,
        Alexander
 Sverdlin <alexander.sverdlin@siemens.com>,
        Randolph Sapp <rs@ti.com>, Devarsh
 Thakkar <devarsht@ti.com>,
        Jayesh Choudhary <j-choudhary@ti.com>, Jai Luthra
	<j-luthra@ti.com>,
        Aradhya Bhatia <a-bhatia1@ti.com>
Subject: [PATCH 2/4] dt-bindings: display: ti: Add schema for AM625 OLDI Transmitter
Date: Sun, 12 May 2024 01:00:53 +0530
Message-ID: <20240511193055.1686149-3-a-bhatia1@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240511193055.1686149-1-a-bhatia1@ti.com>
References: <20240511193055.1686149-1-a-bhatia1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Add devicetree binding schema for AM625 OLDI Transmitters.

Signed-off-by: Aradhya Bhatia <a-bhatia1@ti.com>
---
 .../bindings/display/ti/ti,am625-oldi.yaml    | 153 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 2 files changed, 154 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml

diff --git a/Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml b/Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml
new file mode 100644
index 000000000000..0a96e600bc0b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml
@@ -0,0 +1,153 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/ti/ti,am625-oldi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments AM625 OLDI Transmitter
+
+maintainers:
+  - Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
+  - Aradhya Bhatia <a-bhatia1@ti.com>
+
+description: |
+  The AM625 TI Keystone OpenLDI transmitter (OLDI TX) supports serialized RGB
+  pixel data transmission between host and flat panel display over LVDS (Low
+  Voltage Differential Sampling) interface. The OLDI TX consists of 7-to-1 data
+  serializers, and 4-data and 1-clock LVDS outputs. It supports the LVDS output
+  formats "jeida-18", "jeida-24" and "vesa-18", and can accept 24-bit RGB or
+  padded and un-padded 18-bit RGB bus formats as input.
+
+properties:
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+    description: serial clock input for the OLDI transmitters
+
+  clock-names:
+    const: s_clk
+
+  ti,companion-oldi:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle to companion OLDI transmitter. This property is mandatory for the
+      primarty OLDI TX if the OLDI TXes are expected to work either in dual-lvds
+      mode or in clone mode. This property should point to the secondary OLDI
+      TX.
+
+  ti,secondary-oldi:
+    type: boolean
+    description: Boolean property to mark an OLDI TX as secondary node.
+
+  ti,oldi-io-ctrl:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle to syscon device node mapping OLDI IO_CTRL registers found in the
+      control MMR region. This property is needed for OLDI interface to work.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Parallel RGB input port
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: LVDS output port
+
+    required:
+      - port@0
+      - port@1
+
+allOf:
+  - if:
+      properties:
+        ti,secondary-oldi: true
+    then:
+      properties:
+        ti,companion-oldi: false
+        ti,oldi-io-ctrl: false
+        clocks: false
+        clock-names: false
+
+    else:
+      required:
+        - ti,oldi-io-ctrl
+        - clocks
+        - clock-names
+
+required:
+  - reg
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/soc/ti,sci_pm_domain.h>
+
+    oldi_txes {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        oldi: oldi@0 {
+            reg = <0>;
+            clocks = <&k3_clks 186 0>;
+            clock-names = "s_clk";
+            ti,oldi-io-ctrl = <&dss_oldi_io_ctrl>;
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                port@0 {
+                    reg = <0>;
+                    oldi_in: endpoint {
+                        remote-endpoint = <&dpi0_out>;
+                    };
+                };
+            };
+        };
+    };
+
+  - |
+    #include <dt-bindings/soc/ti,sci_pm_domain.h>
+
+    oldi_txes {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        oldi0: oldi@0 {
+            reg = <0>;
+            clocks = <&k3_clks 186 0>;
+            clock-names = "s_clk";
+            ti,companion-oldi = <&oldi1>;
+            ti,oldi-io-ctrl = <&dss_oldi_io_ctrl>;
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                port@0 {
+                    reg = <0>;
+                    oldi0_in: endpoint {
+                        remote-endpoint = <&dpi0_out0>;
+                    };
+                };
+            };
+        };
+        oldi1: oldi@1 {
+            reg = <1>;
+            ti,secondary-oldi;
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                port@0 {
+                    reg = <0>;
+                    oldi1_in: endpoint {
+                        remote-endpoint = <&dpi0_out1>;
+                    };
+                };
+            };
+        };
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index c675fc296b19..4426c4d41a7f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7480,6 +7480,7 @@ M:	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
 L:	dri-devel@lists.freedesktop.org
 S:	Maintained
 T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
+F:	Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml
 F:	Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
 F:	Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml
 F:	Documentation/devicetree/bindings/display/ti/ti,k2g-dss.yaml
-- 
2.34.1


