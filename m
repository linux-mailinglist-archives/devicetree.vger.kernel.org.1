Return-Path: <devicetree+bounces-244447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBA8CA50DD
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 20:03:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DA4543130289
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 18:59:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAE7330FC18;
	Thu,  4 Dec 2025 18:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="YfSGQjGU"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C7F27E040;
	Thu,  4 Dec 2025 18:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.155.224.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764874743; cv=none; b=TukJ/KVRylHC/lSyznrwa1ZcBrgeGsMjG3yF0ekoW0lB1V3cC2E/j/5CbeGa//fbCinP7XpYlV3+X+DI49xpUEl4OdD+DwMwUgeudia9DB00ysoI38MkhkRoeJgEaf/CRwFAIpYx+9t0xxtk57SUV9SXf2YIFdMceVSMOIjM5GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764874743; c=relaxed/simple;
	bh=xFxprefAWQTcSF7QQk9syq+5+NnBwTtC0qaxT2WCYPc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=U+uA8ebfbSGCSD1q+30HJLvlbv6rM2JF6bGDgBesBXnVJmnoF+AnMc1NVr12kAaCZIqTLCgocVmx/+VQhs0eWNkakeDJJJZY6Uw8h6gUjCev/WnuKk2n77PbwlnNDbdYpQnJTYuzBVn6Wh6w3gFGvKoy+SAMK9ZMjlFSin3DHX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com; spf=pass smtp.mailfrom=raptorengineering.com; dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b=YfSGQjGU; arc=none smtp.client-ip=23.155.224.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raptorengineering.com
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id B0BF87790E4C;
	Thu,  4 Dec 2025 12:50:24 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id lncxCxEq4Beh; Thu,  4 Dec 2025 12:50:24 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 074A37790ED4;
	Thu,  4 Dec 2025 12:50:24 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com 074A37790ED4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1764874224; bh=o9V5Y3tJ/pQ7jZEtmyOwdxqnNBF+UTKYTGUEGGTHgOI=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=YfSGQjGU/jLIGIBJnLclfKlbiKdlknmoxjfCCS3DOQ9XynGJBndZyakmYvdOCLGf7
	 JeKHiN/oT/T24GKj2+h0KDm1+gTFMSX8dI4Xd1/ni7uJTuSzXvc1O+WvqTmiWx3pLF
	 3dd3M0diIpaFFAvTYFWZngzAm+EP8QEod+5+sH2s=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 5ID1wpa1puMq; Thu,  4 Dec 2025 12:50:23 -0600 (CST)
Received: from rcs-ewks-005.starlink.edu (unknown [192.168.20.42])
	by mail.rptsys.com (Postfix) with ESMTPSA id D593D7790E4C;
	Thu,  4 Dec 2025 12:50:23 -0600 (CST)
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
Subject: [PATCH v5 1/4] dt-bindings: mfd: Add sony,cronos-smc
Date: Thu,  4 Dec 2025 12:50:12 -0600
Message-Id: <20251204185015.1364439-2-tpearson@raptorengineering.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251204185015.1364439-1-tpearson@raptorengineering.com>
References: <20251204185015.1364439-1-tpearson@raptorengineering.com>
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
 .../bindings/mfd/sony,cronos-smc.yaml         | 115 ++++++++++++++++++
 1 file changed, 115 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/sony,cronos-smc=
.yaml

diff --git a/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml b=
/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
new file mode 100644
index 000000000000..288ef3343c51
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
@@ -0,0 +1,115 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2025 Raptor Engineering, LLC
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
+        $ref: leds-class-multicolor.yaml#
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
+required:
+  - compatible
+  - reg
+
+allOf:
+  - $ref: /schemas/watchdog/watchdog.yaml
+
+unevaluatedProperties: false
+
+examples:
+  - |
+
+    #include <dt-bindings/leds/common.h>
+
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
\ No newline at end of file
--=20
2.39.5


