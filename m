Return-Path: <devicetree+bounces-252128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECB1CFB79D
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 01:31:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 181E13053F8C
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 00:29:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDB7A1E376C;
	Wed,  7 Jan 2026 00:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="tS8Fa60k"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8011D9346;
	Wed,  7 Jan 2026 00:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.155.224.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767745790; cv=none; b=TGpO/slFGPdrkQnlYQBuQBznhZBXJa86E1Pks/4+pwaTOQaJ+3fgzoabcDc5xWspEIz3CVS5WvMo2G2JGqinczgi9hAZ8LYfp+GxD9mzmKMbzcf/z4VWQKnSdXrMiAtM5sygjzIKVCrB8JpIWVhhCn/btUp6rIk42zCOq6dNVeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767745790; c=relaxed/simple;
	bh=IGPIfpZGR/46Q4/1e4C1wzl43JL0eBSE58oALqFxTFw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WUtUET9W0hd7TVVvtF3uIBGhZrSueZOWtLDt0zmW9GHlt10nThJHDFj/whR96OodBTNGOVC9nWjtDBfKVMATW51neaZX3CPSMT2AlFZZhzZrkcC2877Gi2uck65h8o7LGK4TOE7N/T7LQhnRG4TUZGc47jrvxv/9wNZvskkWV7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com; spf=pass smtp.mailfrom=raptorengineering.com; dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b=tS8Fa60k; arc=none smtp.client-ip=23.155.224.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raptorengineering.com
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id E953F7790EFD;
	Tue,  6 Jan 2026 18:21:46 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id rAgBSP4LZbUf; Tue,  6 Jan 2026 18:21:46 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 1F5047790ECC;
	Tue,  6 Jan 2026 18:21:46 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com 1F5047790ECC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1767745306; bh=VM/Z9aNZ88exD7vwy9/smksPXM7Jr7QK6Agvj8TutWs=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=tS8Fa60k7DqQ+2+TWjA17kKzio/toQR/5yh+Cz99ObMm71rSi5KojljRBDaz8i7fT
	 umoWN0dql9ar4PeZtNdZt73rZ+jC6ncSXIos9jQFZfVa0rIVBQVatRu9Qo7j8kYBxG
	 MPln32gPSz9R1EZmaw/sJdMB1uI2hlaXEoaEQgKo=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id SfMBqXPBWQBc; Tue,  6 Jan 2026 18:21:46 -0600 (CST)
Received: from rcs-ewks-005.starlink.edu (unknown [192.168.20.42])
	by mail.rptsys.com (Postfix) with ESMTPSA id EA6F97790ECB;
	Tue,  6 Jan 2026 18:21:45 -0600 (CST)
From: Timothy Pearson <tpearson@raptorengineering.com>
To: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	lee@kernel.org,
	Georgy.Yakovlev@sony.com,
	sanastasio@raptorengineering.com,
	Timothy Pearson <tpearson@raptorengineering.com>
Subject: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
Date: Tue,  6 Jan 2026 18:21:33 -0600
Message-Id: <20260107002136.3121607-2-tpearson@raptorengineering.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260107002136.3121607-1-tpearson@raptorengineering.com>
References: <20260107002136.3121607-1-tpearson@raptorengineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Shawn Anastasio <sanastasio@raptorengineering.com>

The Sony Cronos Platform Controller is a multi-purpose platform controlle=
r
that provides both a watchdog timer and an LED controller for the Sony
Interactive Entertainment Cronos x86 server platform. As both functions
are provided by the same CPLD, a multi-function device is exposed as the
parent of both functions.

Add a DT binding for this device.

Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
---
 .../bindings/mfd/sony,cronos-smc.yaml         | 128 ++++++++++++++++++
 1 file changed, 128 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/sony,cronos-smc=
.yaml

diff --git a/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml b=
/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
new file mode 100644
index 000000000000..34ccd27e2996
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
@@ -0,0 +1,128 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2025-2026 Raptor Engineering, LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/sony,cronos-smc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sony Cronos Platform Controller CPLD multi-function device
+
+maintainers:
+  - Georgy Yakovlev <Georgy.Yakovlev@sony.com>
+
+description:
+  The Sony Cronos Platform Controller CPLD is a multi-purpose platform
+  controller that provides both a watchdog timer and an LED controller f=
or the
+  Sony Interactive Entertainment Cronos x86 server platform. As both fun=
ctions
+  are provided by the same CPLD, a multi-function device is exposed as t=
he
+  parent of both functions.
+
+properties:
+  compatible:
+    const: sony,cronos-smc
+
+  reg:
+    maxItems: 1
+
+  leds:
+    type: object
+    $ref: /schemas/leds/common.yaml#
+    additionalProperties: false
+    description: |
+      The Cronos LED controller is a subfunction of the Cronos platform
+      controller, which is a multi-function device.
+
+      Each led is represented as a child node of sony,cronos-led. Fiftee=
n RGB
+      LEDs are supported by the platform.
+
+    properties:
+      compatible:
+        const: sony,cronos-led
+
+      reg:
+        maxItems: 1
+
+      "#address-cells":
+        const: 1
+
+      "#size-cells":
+        const: 0
+
+    patternProperties:
+      "^multi-led@[0-9a-f]$":
+        type: object
+        $ref: /schemas/leds/leds-class-multicolor.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          reg:
+            description:
+              LED channel number (0..14)
+            minimum: 0
+            maximum: 14
+
+        required:
+          - reg
+
+    required:
+      - compatible
+      - "#address-cells"
+      - "#size-cells"
+
+  watchdog:
+    type: object
+
+    $ref: /schemas/watchdog/watchdog.yaml
+
+    properties:
+      compatible:
+        const: sony,cronos-watchdog
+
+      timeout-sec: true
+
+    required:
+      - compatible
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/leds/common.h>
+    i2c {
+        #address-cells =3D <1>;
+        #size-cells =3D <0>;
+
+        smc@3f {
+            compatible =3D "sony,cronos-smc";
+            reg =3D <0x3f>;
+
+            timeout-sec =3D <20>;
+
+            watchdog {
+                compatible =3D "sony,cronos-watchdog";
+            };
+
+            leds {
+                compatible =3D "sony,cronos-led";
+                #address-cells =3D <1>;
+                #size-cells =3D <0>;
+
+                multi-led@0 {
+                    /*
+                     * No subnodes are needed, this controller only supp=
orts RGB
+                     * LEDs.
+                     */
+                    reg =3D <0>;
+                    color =3D <LED_COLOR_ID_MULTI>;
+                    function =3D LED_FUNCTION_STATUS;
+                };
+            };
+        };
+    };
+
--=20
2.39.5


