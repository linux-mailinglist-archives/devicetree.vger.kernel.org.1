Return-Path: <devicetree+bounces-4572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5707B32A3
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:34:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 1D0781C20AAD
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 12:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD64C14A93;
	Fri, 29 Sep 2023 12:34:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FFD6FB5
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 12:34:02 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E585B1AB
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:33:58 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1qmCgq-0008Sd-Fe; Fri, 29 Sep 2023 14:33:52 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1qmCgp-009oFR-GS; Fri, 29 Sep 2023 14:33:51 +0200
Received: from localhost ([::1] helo=dude03.red.stw.pengutronix.de)
	by dude03.red.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1qmCgp-009S7x-7E; Fri, 29 Sep 2023 14:33:51 +0200
From: Johannes Zink <j.zink@pengutronix.de>
Date: Fri, 29 Sep 2023 14:33:31 +0200
Subject: [PATCH v5 1/3] dt-bindings: display: move LVDS data-mapping
 definition to separate file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230523-simplepanel_support_nondefault_datamapping-v5-1-0d7928edafab@pengutronix.de>
References: <20230523-simplepanel_support_nondefault_datamapping-v5-0-0d7928edafab@pengutronix.de>
In-Reply-To: <20230523-simplepanel_support_nondefault_datamapping-v5-0-0d7928edafab@pengutronix.de>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Cc: kernel test robot <lkp@intel.com>, Dan Carpenter <error27@gmail.com>, 
 patchwork-jzi@pengutronix.de, kernel@pengutronix.de, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Johannes Zink <j.zink@pengutronix.de>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: j.zink@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

As the LVDS data-mapping property is required in multiple bindings: move
it to separate file and include instead of duplicating it.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---

Changes:

v4 -> v5: none, but are-dded the reviewed-bys from v2, that were missing in

v3 -> v4: none

v2 -> v3: worked in Conor's and Laurent's review findings (thank you
          for reviewing my work): drop +| on description

v1 -> v2: worked in Rob's review findings (thank you for reviewing my
          work): extract common properties to
          file and include it instead of duplicating it
---
 .../bindings/display/lvds-data-mapping.yaml        | 84 ++++++++++++++++++++++
 .../devicetree/bindings/display/lvds.yaml          | 77 +++-----------------
 2 files changed, 93 insertions(+), 68 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/lvds-data-mapping.yaml b/Documentation/devicetree/bindings/display/lvds-data-mapping.yaml
new file mode 100644
index 000000000000..d68982fe2e9b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/lvds-data-mapping.yaml
@@ -0,0 +1,84 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/lvds-data-mapping.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LVDS Data Mapping
+
+maintainers:
+  - Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
+  - Thierry Reding <thierry.reding@gmail.com>
+
+description: |
+  LVDS is a physical layer specification defined in ANSI/TIA/EIA-644-A. Multiple
+  incompatible data link layers have been used over time to transmit image data
+  to LVDS devices. This bindings supports devices compatible with the following
+  specifications.
+
+  [JEIDA] "Digital Interface Standards for Monitor", JEIDA-59-1999, February
+  1999 (Version 1.0), Japan Electronic Industry Development Association (JEIDA)
+  [LDI] "Open LVDS Display Interface", May 1999 (Version 0.95), National
+  Semiconductor
+  [VESA] "VESA Notebook Panel Standard", October 2007 (Version 1.0), Video
+  Electronics Standards Association (VESA)
+
+  Device compatible with those specifications have been marketed under the
+  FPD-Link and FlatLink brands.
+
+properties:
+  data-mapping:
+    enum:
+      - jeida-18
+      - jeida-24
+      - vesa-24
+    description: |
+      The color signals mapping order.
+
+      LVDS data mappings are defined as follows.
+
+      - "jeida-18" - 18-bit data mapping compatible with the [JEIDA], [LDI] and
+        [VESA] specifications. Data are transferred as follows on 3 LVDS lanes.
+
+      Slot          0       1       2       3       4       5       6
+                ________________                         _________________
+      Clock                     \_______________________/
+                  ______  ______  ______  ______  ______  ______  ______
+      DATA0     ><__G0__><__R5__><__R4__><__R3__><__R2__><__R1__><__R0__><
+      DATA1     ><__B1__><__B0__><__G5__><__G4__><__G3__><__G2__><__G1__><
+      DATA2     ><_CTL2_><_CTL1_><_CTL0_><__B5__><__B4__><__B3__><__B2__><
+
+      - "jeida-24" - 24-bit data mapping compatible with the [DSIM] and [LDI]
+        specifications. Data are transferred as follows on 4 LVDS lanes.
+
+      Slot          0       1       2       3       4       5       6
+                ________________                         _________________
+      Clock                     \_______________________/
+                  ______  ______  ______  ______  ______  ______  ______
+      DATA0     ><__G2__><__R7__><__R6__><__R5__><__R4__><__R3__><__R2__><
+      DATA1     ><__B3__><__B2__><__G7__><__G6__><__G5__><__G4__><__G3__><
+      DATA2     ><_CTL2_><_CTL1_><_CTL0_><__B7__><__B6__><__B5__><__B4__><
+      DATA3     ><_CTL3_><__B1__><__B0__><__G1__><__G0__><__R1__><__R0__><
+
+      - "vesa-24" - 24-bit data mapping compatible with the [VESA] specification.
+        Data are transferred as follows on 4 LVDS lanes.
+
+      Slot          0       1       2       3       4       5       6
+                ________________                         _________________
+      Clock                     \_______________________/
+                  ______  ______  ______  ______  ______  ______  ______
+      DATA0     ><__G0__><__R5__><__R4__><__R3__><__R2__><__R1__><__R0__><
+      DATA1     ><__B1__><__B0__><__G5__><__G4__><__G3__><__G2__><__G1__><
+      DATA2     ><_CTL2_><_CTL1_><_CTL0_><__B5__><__B4__><__B3__><__B2__><
+      DATA3     ><_CTL3_><__B7__><__B6__><__G7__><__G6__><__R7__><__R6__><
+
+      Control signals are mapped as follows.
+
+      CTL0: HSync
+      CTL1: VSync
+      CTL2: Data Enable
+      CTL3: 0
+
+additionalProperties: true
+
+...
diff --git a/Documentation/devicetree/bindings/display/lvds.yaml b/Documentation/devicetree/bindings/display/lvds.yaml
index 7cd2ce7e9c33..224db4932011 100644
--- a/Documentation/devicetree/bindings/display/lvds.yaml
+++ b/Documentation/devicetree/bindings/display/lvds.yaml
@@ -6,83 +6,24 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: LVDS Display Common Properties
 
+allOf:
+  - $ref: lvds-data-mapping.yaml#
+
 maintainers:
   - Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
   - Thierry Reding <thierry.reding@gmail.com>
 
-description: |+
-  LVDS is a physical layer specification defined in ANSI/TIA/EIA-644-A. Multiple
-  incompatible data link layers have been used over time to transmit image data
-  to LVDS devices. This bindings supports devices compatible with the following
-  specifications.
-
-  [JEIDA] "Digital Interface Standards for Monitor", JEIDA-59-1999, February
-  1999 (Version 1.0), Japan Electronic Industry Development Association (JEIDA)
-  [LDI] "Open LVDS Display Interface", May 1999 (Version 0.95), National
-  Semiconductor
-  [VESA] "VESA Notebook Panel Standard", October 2007 (Version 1.0), Video
-  Electronics Standards Association (VESA)
-
-  Device compatible with those specifications have been marketed under the
-  FPD-Link and FlatLink brands.
+description:
+  This binding extends the data mapping defined in lvds-data-mapping.yaml.
+  It supports reversing the bit order on the formats defined there in order
+  to accomodate for even more specialized data formats, since a variety of
+  data formats and layouts is used to drive LVDS displays.
 
 properties:
-  data-mapping:
-    enum:
-      - jeida-18
-      - jeida-24
-      - vesa-24
-    description: |
-      The color signals mapping order.
-
-      LVDS data mappings are defined as follows.
-
-      - "jeida-18" - 18-bit data mapping compatible with the [JEIDA], [LDI] and
-        [VESA] specifications. Data are transferred as follows on 3 LVDS lanes.
-
-      Slot          0       1       2       3       4       5       6
-                ________________                         _________________
-      Clock                     \_______________________/
-                  ______  ______  ______  ______  ______  ______  ______
-      DATA0     ><__G0__><__R5__><__R4__><__R3__><__R2__><__R1__><__R0__><
-      DATA1     ><__B1__><__B0__><__G5__><__G4__><__G3__><__G2__><__G1__><
-      DATA2     ><_CTL2_><_CTL1_><_CTL0_><__B5__><__B4__><__B3__><__B2__><
-
-      - "jeida-24" - 24-bit data mapping compatible with the [DSIM] and [LDI]
-        specifications. Data are transferred as follows on 4 LVDS lanes.
-
-      Slot          0       1       2       3       4       5       6
-                ________________                         _________________
-      Clock                     \_______________________/
-                  ______  ______  ______  ______  ______  ______  ______
-      DATA0     ><__G2__><__R7__><__R6__><__R5__><__R4__><__R3__><__R2__><
-      DATA1     ><__B3__><__B2__><__G7__><__G6__><__G5__><__G4__><__G3__><
-      DATA2     ><_CTL2_><_CTL1_><_CTL0_><__B7__><__B6__><__B5__><__B4__><
-      DATA3     ><_CTL3_><__B1__><__B0__><__G1__><__G0__><__R1__><__R0__><
-
-      - "vesa-24" - 24-bit data mapping compatible with the [VESA] specification.
-        Data are transferred as follows on 4 LVDS lanes.
-
-      Slot          0       1       2       3       4       5       6
-                ________________                         _________________
-      Clock                     \_______________________/
-                  ______  ______  ______  ______  ______  ______  ______
-      DATA0     ><__G0__><__R5__><__R4__><__R3__><__R2__><__R1__><__R0__><
-      DATA1     ><__B1__><__B0__><__G5__><__G4__><__G3__><__G2__><__G1__><
-      DATA2     ><_CTL2_><_CTL1_><_CTL0_><__B5__><__B4__><__B3__><__B2__><
-      DATA3     ><_CTL3_><__B7__><__B6__><__G7__><__G6__><__R7__><__R6__><
-
-      Control signals are mapped as follows.
-
-      CTL0: HSync
-      CTL1: VSync
-      CTL2: Data Enable
-      CTL3: 0
-
   data-mirror:
     type: boolean
     description:
-      If set, reverse the bit order described in the data mappings below on all
+      If set, reverse the bit order described in the data mappings on all
       data lanes, transmitting bits for slots 6 to 0 instead of 0 to 6.
 
 additionalProperties: true

-- 
2.39.2


