Return-Path: <devicetree+bounces-124007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6619D76EB
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 18:53:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2503EC42AC7
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 15:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D774E1922E4;
	Sun, 24 Nov 2024 14:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="DT7NAU2g"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta1.migadu.com (out-189.mta1.migadu.com [95.215.58.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3387A194C67
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 14:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732459035; cv=none; b=pGfUpB86UpQapWMaOoNLk700LjD0EYLUVVScCALRT+2PRjZmjKwswDwL+j0hwY8IWmuCDh2+IrjwfTjNYCXDM4hJBLxBinYXfRMSvfsT3DQNv/NK1qlMNXNjMo2S7otJ6+Q/seWb6sH8k1UAl+P24oIWOzRwDqFlz4gBd9TrkqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732459035; c=relaxed/simple;
	bh=RJ3+FYcGZLUzGVfk+aTl6HxIbPnNcYc876aSSFlrYSQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nHR11/E7WIaEKjuCcK92DoShUndB2w50S3u6y3o2ECyTJ5ZUX06TBKyVOuqk/G6NPEyFNGE1t+gR2rnkzbVC3PrpljWU7t/1i3AjR9RDkbuM95OcOAyyA0iw9+OIsA1H7eQFAYxXPl7UCV+FMSQXRSSN0FP56aqqSHE4ZlUkB14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=DT7NAU2g; arc=none smtp.client-ip=95.215.58.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1732459031;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8RLbQjFauCxl9I9c9xWj5JbBpkIyX3I7JpPsS0aYm64=;
	b=DT7NAU2gRK6ZFDEDyBHaFcq7gjQqXio48PQKdGf63W2biWDWQ42HfjNlEcU/urpPOfEvnJ
	zHlTDc9zASuQNlNgSlC3sUbSc5vNfX9x6iWFTia6EdOWKLg21sVUCE/m4FYwrzH2DWPlK6
	P7w9BBpQMEsSxug5r6kQWNLkULXfUIw=
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Jyri Sarha <jyri.sarha@iki.fi>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Devarsh Thakkar <devarsht@ti.com>,
	Praneeth Bajjuri <praneeth@ti.com>,
	Udit Kumar <u-kumar1@ti.com>,
	Jayesh Choudhary <j-choudhary@ti.com>,
	Francesco Dolcini <francesco@dolcini.it>,
	Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Max Krummenacher <max.oss.09@gmail.com>,
	DRI Development List <dri-devel@lists.freedesktop.org>,
	Devicetree List <devicetree@vger.kernel.org>,
	Linux Kernel List <linux-kernel@vger.kernel.org>,
	Aradhya Bhatia <aradhya.bhatia@linux.dev>
Subject: [PATCH v4 2/3] dt-bindings: display: ti: Add schema for AM625 OLDI Transmitter
Date: Sun, 24 Nov 2024 20:06:48 +0530
Message-Id: <20241124143649.686995-3-aradhya.bhatia@linux.dev>
In-Reply-To: <20241124143649.686995-1-aradhya.bhatia@linux.dev>
References: <20241124143649.686995-1-aradhya.bhatia@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

From: Aradhya Bhatia <a-bhatia1@ti.com>

The OLDI transmitters (TXes) do not have registers of their own, and are
dependent on the source video-ports (VPs) from the DSS to provide
configuration data. This hardware doesn't directly sit on the internal
bus of the SoC, but does so via the DSS. Hence, the OLDI TXes are
supposed to be child nodes under the DSS, and not independent devices.

Two of the OLDI TXes can function in tandem to output dual-link OLDI
output, or cloned single-link outputs. In these cases, one OLDI will be
the primary OLDI, and the other one, a companion. The following diagram
represents such a configuration.

+-----+-----+         +-------+
|     |     |         |       |
|     | VP1 +----+--->+ OLDI0 |  (Primary - may need companion)
|     |     |    |    |       |
| DSS +-----+    |    +-------+
|     |     |    |
|     | VP2 |    |    +-------+
|     |     |    |    |       |
+-----+-----+    +--->+ OLDI1 |  (Companion OLDI)
                      |       |
                      +-------+

The DSS in AM625 SoC has a configuration like the one above. The AM625
DSS VP1 (port@0) can connect and control 2 OLDI TXes, to use them in
dual-link or cloned single-link OLDI modes. It is only the VP1 that can
connect to either OLDI TXes for the AM625 DSS, and not the VP2.

Alternatively, on some future TI SoCs, along with the above
configuration, the OLDI TX can _also_ connect to separate video sources,
making them work entirely independent of each other. In this case,
neither of the OLDIs are "companion" or "secondary" OLDIs, and nor do
they require one. They both are independent and primary OLDIs. The
following diagram represents such a configuration.

+-----+-----+               +-------+
|     |     |               |       |
|     | VP1 +--+----------->+ OLDI0 |  (Primary - may need companion)
|     |     |  |            |       |
|     +-----+  |            +-------+
|     |     |  |
|     | VP2 |  |
|     |     |  |
| DSS +-----+  |   +---+    +-------+
|     |     |  +-->+ M |    |       |
|     | VP3 +----->+ U +--->+ OLDI1 |  (Companion or Primary)
|     |     |      | X |    |       |
|     +-----+      +---+    +-------+
|     |     |
|     | VP4 |
|     |     |
+-----+-----+

Note that depending on the mux configuration, the OLDIs can either be
working together in tandem - sourced by VP1, OR, they could be working
independently sourced by VP1 and VP3 respectively.
The idea is to support all the configurations with this OLDI TX schema.

The OLDI functionality is further supported by a system-control module,
which contains a few registers to control OLDI IO power and other
electrical characteristics of the IO lanes.

Add devicetree binding schema for the OLDI TXes to support various
configurations, and extend their support to the AM625 DSS.

Signed-off-by: Aradhya Bhatia <a-bhatia1@ti.com>
Signed-off-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
---
 .../bindings/display/ti/ti,am625-oldi.yaml    | 119 ++++++++++++++
 .../bindings/display/ti/ti,am65x-dss.yaml     | 153 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 3 files changed, 273 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml

diff --git a/Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml b/Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml
new file mode 100644
index 000000000000..51b24db04e89
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml
@@ -0,0 +1,119 @@
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
+  - Aradhya Bhatia <aradhya.bhatia@linux.dev>
+
+description:
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
+    const: serial
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
+    description:
+      Boolean property to mark the OLDI transmitter as the secondary one, when the
+      OLDI hardware is expected to run as a companion HW, in cases of dual-lvds
+      mode or clone mode. The primary OLDI hardware is responsible for all the
+      hardware configuration.
+
+  ti,oldi-io-ctrl:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle to syscon device node mapping OLDI IO_CTRL registers found in the
+      control MMR region. These registers are required to toggle the I/O lane
+      power, and control its electrical characteristics.
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
+      required:
+        - ti,secondary-oldi
+    then:
+      properties:
+        ti,companion-oldi: false
+
+required:
+  - reg
+  - clocks
+  - clock-names
+  - ti,oldi-io-ctrl
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/soc/ti,sci_pm_domain.h>
+
+    oldi-transmitters {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        oldi: oldi@0 {
+            reg = <0>;
+            clocks = <&k3_clks 186 0>;
+            clock-names = "serial";
+            ti,oldi-io-ctrl = <&dss_oldi_io_ctrl>;
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                port@0 {
+                    reg = <0>;
+                    oldi_in: endpoint {
+                        remote-endpoint = <&dpi_out>;
+                    };
+                };
+                port@1 {
+                    reg = <1>;
+                    oldi_out: endpoint {
+                        remote-endpoint = <&panel_in>;
+                    };
+                };
+            };
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
index 399d68986326..eb6a65f9970d 100644
--- a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
+++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
@@ -91,6 +91,24 @@ properties:
           For AM625 DSS, the internal DPI output port node from video
           port 1.
           For AM62A7 DSS, the port is tied off inside the SoC.
+        properties:
+          endpoint@0:
+            $ref: /schemas/graph.yaml#/properties/endpoint
+            description:
+              For AM625 DSS, VP Connection to OLDI0.
+              For AM65X DSS, OLDI output from the SoC.
+
+          endpoint@1:
+            $ref: /schemas/graph.yaml#/properties/endpoint
+            description:
+              For AM625 DSS, VP Connection to OLDI1.
+
+        anyOf:
+          - required:
+              - endpoint
+          - required:
+              - endpoint@0
+              - endpoint@1
 
       port@1:
         $ref: /schemas/graph.yaml#/properties/port
@@ -112,6 +130,26 @@ properties:
       Input memory (from main memory to dispc) bandwidth limit in
       bytes per second
 
+  oldi-transmitters:
+    description:
+      Child node under the DSS, to describe all the OLDI transmitters connected
+      to the DSS videoports.
+    type: object
+    additionalProperties: false
+    properties:
+      "#address-cells":
+        const: 1
+
+      "#size-cells":
+        const: 0
+
+    patternProperties:
+      '^oldi@[0-1]$':
+        type: object
+        $ref: ti,am625-oldi.yaml#
+        unevaluatedProperties: false
+        description: OLDI transmitters connected to the DSS VPs
+
 allOf:
   - if:
       properties:
@@ -123,6 +161,19 @@ allOf:
         ports:
           properties:
             port@0: false
+            oldi-transmitters: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: ti,am65x-dss
+    then:
+      properties:
+        oldi-transmitters: false
+        port@0:
+          properties:
+            endpoint@1: false
 
 required:
   - compatible
@@ -171,3 +222,105 @@ examples:
             };
         };
     };
+
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/soc/ti,sci_pm_domain.h>
+
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        dss1: dss@30200000 {
+            compatible = "ti,am625-dss";
+            reg = <0x00 0x30200000 0x00 0x1000>, /* common */
+                  <0x00 0x30202000 0x00 0x1000>, /* vidl1 */
+                  <0x00 0x30206000 0x00 0x1000>, /* vid */
+                  <0x00 0x30207000 0x00 0x1000>, /* ovr1 */
+                  <0x00 0x30208000 0x00 0x1000>, /* ovr2 */
+                  <0x00 0x3020a000 0x00 0x1000>, /* vp1 */
+                  <0x00 0x3020b000 0x00 0x1000>, /* vp2 */
+                  <0x00 0x30201000 0x00 0x1000>; /* common1 */
+            reg-names = "common", "vidl1", "vid",
+                        "ovr1", "ovr2", "vp1", "vp2", "common1";
+            power-domains = <&k3_pds 186 TI_SCI_PD_EXCLUSIVE>;
+            clocks =        <&k3_clks 186 6>,
+                            <&vp1_clock>,
+                            <&k3_clks 186 2>;
+            clock-names = "fck", "vp1", "vp2";
+            interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+            oldi-transmitters {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                oldi0: oldi@0 {
+                    reg = <0>;
+                    clocks = <&k3_clks 186 0>;
+                    clock-names = "serial";
+                    ti,companion-oldi = <&oldi1>;
+                    ti,oldi-io-ctrl = <&dss_oldi_io_ctrl>;
+                    ports {
+                        #address-cells = <1>;
+                        #size-cells = <0>;
+                        port@0 {
+                            reg = <0>;
+                            oldi0_in: endpoint {
+                                remote-endpoint = <&dpi0_out0>;
+                            };
+                        };
+                        port@1 {
+                            reg = <1>;
+                            oldi0_out: endpoint {
+                                remote-endpoint = <&panel_in0>;
+                            };
+                        };
+                    };
+                };
+                oldi1: oldi@1 {
+                    reg = <1>;
+                    clocks = <&k3_clks 186 0>;
+                    clock-names = "serial";
+                    ti,secondary-oldi;
+                    ti,oldi-io-ctrl = <&dss_oldi_io_ctrl>;
+                    ports {
+                        #address-cells = <1>;
+                        #size-cells = <0>;
+                        port@0 {
+                            reg = <0>;
+                            oldi1_in: endpoint {
+                                remote-endpoint = <&dpi0_out1>;
+                            };
+                        };
+                        port@1 {
+                            reg = <1>;
+                            oldi1_out: endpoint {
+                                remote-endpoint = <&panel_in1>;
+                            };
+                        };
+                    };
+                };
+            };
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                port@0 {
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+                    reg = <0>;
+                    dpi0_out0: endpoint@0 {
+                        reg = <0>;
+                        remote-endpoint = <&oldi0_in>;
+                    };
+                    dpi0_out1: endpoint@1 {
+                        reg = <1>;
+                        remote-endpoint = <&oldi1_in>;
+                    };
+                };
+                port@1 {
+                    reg = <1>;
+                    dpi1_out: endpoint {
+                        remote-endpoint = <&hdmi_bridge>;
+                    };
+                };
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 93415153247b..d47a56c4d276 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7817,6 +7817,7 @@ M:	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
 L:	dri-devel@lists.freedesktop.org
 S:	Maintained
 T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
+F:	Documentation/devicetree/bindings/display/ti/ti,am625-oldi.yaml
 F:	Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
 F:	Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml
 F:	Documentation/devicetree/bindings/display/ti/ti,k2g-dss.yaml
-- 
2.34.1


