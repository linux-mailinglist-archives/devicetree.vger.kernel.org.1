Return-Path: <devicetree+bounces-278859-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MDUJZrewGn6NQQAu9opvQ
	(envelope-from <devicetree+bounces-278859-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 07:32:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD612ED177
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 07:32:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DA3C33051AAC
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 06:28:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B93E2D94B0;
	Mon, 23 Mar 2026 06:28:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EA62DCC05;
	Mon, 23 Mar 2026 06:27:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774247281; cv=none; b=R3ui/Asaa5xUZ19196+yhYb9MR9fGuGciWfL8O/oOLG1rHoUk68IvIeiDcpc+5tQV3Mm1L6BiESi7mxS204SfKTQQ3syyueu0B8kg8TvhWSrJ8jGHIKjt+l+YkzGm4TXXy/PuUpuw0G/BWOfW+1toJ2ic0ufkuqO07iu2lGMezg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774247281; c=relaxed/simple;
	bh=4oKh7NNuayo1fc5fpV2LG2GVvp6MgL7U2TbxSssuz08=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bj2MuCzSAI89wrf6bK8EXMzUpGwsw7SwJlknKNSTQV4+r2jh9Hbb8A6Yg4cCpz7eumKxFANaKhX/oWfnpi0FMiY2CdFxV9YgIxR+R2cUewQlUEVNAZdBRUmnkX5Ir3J1Sc1HBTf/xVymyjh5kI1xQ0mSgl2IMeyl39M5jhuoHBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D465E200A5B;
	Mon, 23 Mar 2026 07:27:48 +0100 (CET)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9CD17200A5A;
	Mon, 23 Mar 2026 07:27:48 +0100 (CET)
Received: from lsv03900.swis.in-blr01.nxp.com (lsv03900.swis.in-blr01.nxp.com [10.12.177.15])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 573D618000A4;
	Mon, 23 Mar 2026 14:27:47 +0800 (+08)
From: Lakshay Piplani <lakshay.piplani@nxp.com>
To: linux-kernel@vger.kernel.org,
	linux-i3c@lists.infradead.org,
	alexandre.belloni@bootlin.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lee@kernel.org,
	Frank.Li@nxp.com,
	lgirdwood@gmail.com
Cc: vikash.bansal@nxp.com,
	priyanka.jain@nxp.com,
	aman.kumarpandey@nxp.com,
	lakshay.piplani@nxp.com
Subject: [PATCH v8 3/7] dt-bindings: i3c: Add NXP P3H2x4x i3c-hub support
Date: Mon, 23 Mar 2026 11:57:33 +0530
Message-Id: <20260323062737.886728-4-lakshay.piplani@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260323062737.886728-1-lakshay.piplani@nxp.com>
References: <20260323062737.886728-1-lakshay.piplani@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278859-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,lists.infradead.org,bootlin.com,kernel.org,nxp.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[lakshay.piplani@nxp.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.70:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.2:email,infradead.org:email,0.0.0.1:email,nxp.com:email,nxp.com:mid,devicetree.org:url,carnegierobotics.com:email]
X-Rspamd-Queue-Id: EBD612ED177
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Aman Kumar Pandey <aman.kumarpandey@nxp.com>

Add bindings for the NXP P3H2x4x (P3H2440/P3H2441/P3H2840/P3H2841)
multiport I3C hub family. These devices connect to a host via
I3C/I2C/SMBus and allow communication with multiple downstream
peripherals.

Signed-off-by: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
Signed-off-by: Vikash Bansal <vikash.bansal@nxp.com>

---
Changes in v8:
 - Add compatible in i3c example

Changes in v7:
 - Fix schema validation issues
 - Adjust required properties
 - Add I2C example

Changes in v6:
 - Use a vendor prefix for the attributes

Changes in v5:
 - Removed SW properties: cp0-ldo-microvolt,cp1-ldo-microvolt,
   tp0145-ldo-microvolt, tp2367-ldo-microvolt
 - Changed supply entries and its descriptions

Changes in v4:
 - Fixed DT binding check warning
 - Removed SW properties: ibi-enable, local-dev, and always-enable

Changes in v3:
 - Added MFD (Multi-Function Device) support for I3C hub and on-die regulator
 - Added Regulator supply node

Changes in v2:
 - Fixed DT binding check warning
 - Revised logic for parsing DTS nodes
---
---
 .../devicetree/bindings/i3c/nxp,p3h2840.yaml  | 304 ++++++++++++++++++
 MAINTAINERS                                   |   8 +
 2 files changed, 312 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i3c/nxp,p3h2840.yaml

diff --git a/Documentation/devicetree/bindings/i3c/nxp,p3h2840.yaml b/Documentation/devicetree/bindings/i3c/nxp,p3h2840.yaml
new file mode 100644
index 000000000000..f588fd8318a0
--- /dev/null
+++ b/Documentation/devicetree/bindings/i3c/nxp,p3h2840.yaml
@@ -0,0 +1,304 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2025 NXP
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i3c/nxp,p3h2840.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP P3H2X4X I3C HUB
+
+maintainers:
+  - Aman Kumar Pandey <aman.kumarpandey@nxp.com>
+  - Vikash Bansal <vikash.bansal@nxp.com>
+
+description: |
+  P3H2x4x (P3H2440/P3H2441/P3H2840/P3H2841) is a family of multiport I3C
+  hub devices that connect to:-
+  1. A host CPU via I3C/I2C/SMBus bus on upstream side and connect to multiple
+     peripheral devices on the downstream  side.
+  2. Have two Controller Ports which can support either
+     I2C/SMBus or I3C buses and connect to a CPU, BMC or SOC.
+  3. P3H2840/ P3H2841 are 8 port I3C hub with eight I3C/I2C Target Port.
+  4. P3H2440/ P3H2441 are 4 port I3C hub with four I3C/I2C Target Port.
+     Target ports can be configured as I2C/SMBus, I3C or GPIO and connect to
+     peripherals.
+
+properties:
+  compatible:
+    const: nxp,p3h2840
+
+  reg:
+    maxItems: 1
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  assigned-address:
+    maximum: 0x7f
+
+  nxp,tp0145-pullup-ohms:
+    description:
+      Selects the pull up resistance for target Port 0/1/4/5, in ohms.
+    enum: [250, 500, 1000, 2000]
+    default: 500
+
+  nxp,tp2367-pullup-ohms:
+    description:
+      Selects the pull up resistance for target Port 2/3/6/7, in ohms.
+    enum: [250, 500, 1000, 2000]
+    default: 500
+
+  nxp,cp0-io-strength-ohms:
+    description:
+      Selects the IO drive strength for controller Port 0, in ohms.
+    enum: [20, 30, 40, 50]
+    default: 20
+
+  nxp,cp1-io-strength-ohms:
+    description:
+      Selects the IO drive strength for controller Port 1, in ohms.
+    enum: [20, 30, 40, 50]
+    default: 20
+
+  nxp,tp0145-io-strength-ohms:
+    description:
+      Selects the IO drive strength for target port 0/1/4/5, in ohms.
+    enum: [20, 30, 40, 50]
+    default: 20
+
+  nxp,tp2367-io-strength-ohms:
+    description:
+      Selects the IO drive strength for target port 2/3/6/7, in ohms.
+    enum: [20, 30, 40, 50]
+    default: 20
+
+  vcc1-supply:
+    description: Controller port 0 power supply.
+
+  vcc2-supply:
+    description: Controller port 1 power supply.
+
+  vcc3-supply:
+    description: Target port 0/1/4/5 power supply.
+
+  vcc4-supply:
+    description: Target port 2/3/6/7 power supply.
+
+  regulators:
+    type: object
+    additionalProperties: false
+
+    properties:
+      ldo-cp0:
+        type: object
+        $ref: /schemas/regulator/regulator.yaml#
+        unevaluatedProperties: false
+
+      ldo-cp1:
+        type: object
+        $ref: /schemas/regulator/regulator.yaml#
+        unevaluatedProperties: false
+
+      ldo-tpg0:
+        type: object
+        $ref: /schemas/regulator/regulator.yaml#
+        unevaluatedProperties: false
+
+      ldo-tpg1:
+        type: object
+        $ref: /schemas/regulator/regulator.yaml#
+        unevaluatedProperties: false
+
+required:
+  - reg
+
+patternProperties:
+  "^i3c@[0-7]$":
+    type: object
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        description:
+          The I3C HUB Target Port number.
+        maximum: 7
+
+      '#address-cells':
+        const: 3
+
+      '#size-cells':
+        const: 0
+
+      nxp,pullup-enable:
+        type: boolean
+        description:
+          Enables the on-die pull-up for Target Port.
+
+    required:
+      - reg
+      - "#address-cells"
+      - "#size-cells"
+
+  "^(i2c|smbus)@[0-7]$":
+    type: object
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        description:
+          The I3C HUB Target Port number.
+        maximum: 7
+
+      '#address-cells':
+        const: 1
+
+      '#size-cells':
+        const: 0
+
+      nxp,pullup-enable:
+        type: boolean
+        description:
+          Enables the on-die pull-up for Target Port.
+
+    required:
+      - reg
+      - "#address-cells"
+      - "#size-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i3c {
+        #address-cells = <3>;
+        #size-cells = <0>;
+
+        hub@70,236153000c2 {
+            reg = <0x70 0x236 0x3000c2>;
+            compatible = "nxp,p3h2840";
+            #address-cells = <1>;
+            #size-cells = <0>;
+            assigned-address = <0x50>;
+
+            nxp,tp0145-pullup-ohms = <1000>;
+            nxp,tp2367-pullup-ohms = <1000>;
+            nxp,cp0-io-strength-ohms = <50>;
+            nxp,cp1-io-strength-ohms = <50>;
+            nxp,tp0145-io-strength-ohms = <50>;
+            nxp,tp2367-io-strength-ohms = <50>;
+            vcc3-supply = <&reg_tpg0>;
+            vcc4-supply = <&reg_tpg1>;
+
+            regulators {
+                reg_cp0: ldo-cp0 {
+                    regulator-name = "ldo-cp0";
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                };
+
+                reg_cp1: ldo-cp1 {
+                    regulator-name = "ldo-cp1";
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                };
+
+                reg_tpg0: ldo-tpg0 {
+                    regulator-name = "ldo-tpg0";
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                };
+
+                reg_tpg1: ldo-tpg1 {
+                    regulator-name = "ldo-tpg1";
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                };
+            };
+
+            smbus@0 {
+                reg = <0x0>;
+                #address-cells = <1>;
+                #size-cells = <0>;
+                nxp,pullup-enable;
+            };
+
+            i2c@1 {
+                reg = <0x1>;
+                #address-cells = <1>;
+                #size-cells = <0>;
+                nxp,pullup-enable;
+            };
+
+            i3c@2 {
+                reg = <0x2>;
+                #address-cells = <3>;
+                #size-cells = <0>;
+                nxp,pullup-enable;
+            };
+        };
+    };
+
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        hub@70 {
+            reg = <0x70>;
+            compatible = "nxp,p3h2840";
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            nxp,tp0145-pullup-ohms = <1000>;
+            nxp,tp2367-pullup-ohms = <1000>;
+            nxp,cp0-io-strength-ohms = <50>;
+            nxp,cp1-io-strength-ohms = <50>;
+            nxp,tp0145-io-strength-ohms = <50>;
+            nxp,tp2367-io-strength-ohms = <50>;
+            vcc3-supply = <&reg_tpg0_i2c>;
+            vcc4-supply = <&reg_tpg1_i2c>;
+
+            regulators {
+                reg_cp0_i2c: ldo-cp0 {
+                    regulator-name = "ldo-cp0";
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                };
+
+                reg_cp1_i2c: ldo-cp1 {
+                    regulator-name = "ldo-cp1";
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                };
+
+                reg_tpg0_i2c: ldo-tpg0 {
+                    regulator-name = "ldo-tpg0";
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                };
+
+                reg_tpg1_i2c: ldo-tpg1 {
+                    regulator-name = "ldo-tpg1";
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                };
+            };
+
+            smbus@0 {
+                reg = <0x0>;
+                #address-cells = <1>;
+                #size-cells = <0>;
+                nxp,pullup-enable;
+            };
+
+            i2c@1 {
+                reg = <0x1>;
+                #address-cells = <1>;
+                #size-cells = <0>;
+                nxp,pullup-enable;
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 96ea84948d76..c72976dbdf31 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19094,6 +19094,14 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/ptp/nxp,ptp-netc.yaml
 F:	drivers/ptp/ptp_netc.c
 
+NXP P3H2X4X I3C-HUB DRIVER
+M:	Vikash Bansal <vikash.bansal@nxp.com>
+M:	Aman Kumar Pandey <aman.kumarpandey@nxp.com>
+L:	linux-kernel@vger.kernel.org
+L:	linux-i3c-owner@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/i3c/nxp,p3h2840.yaml
+
 NXP PF5300/PF5301/PF5302 PMIC REGULATOR DEVICE DRIVER
 M:	Woodrow Douglass <wdouglass@carnegierobotics.com>
 S:	Maintained
-- 
2.25.1


