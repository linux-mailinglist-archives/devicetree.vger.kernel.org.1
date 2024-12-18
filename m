Return-Path: <devicetree+bounces-132112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9E69F5DAD
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 04:59:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A730916A929
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 03:59:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4D9514A62B;
	Wed, 18 Dec 2024 03:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="DRuOHp4R"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE78135963;
	Wed, 18 Dec 2024 03:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734494370; cv=none; b=opHeXWVfKhY2tFpZxz0BO72KESDTgNVpL79qfkHrvGuoRhRcC8L0khbpzJzD8OIA0If1wMD0xT0sgHM2sD27e7wGV/BfQZ7JFZ74ZCDIHyu1ADPzU6rK1UgrTzr3FtqXT29akqATks70M27ZBGx1VCFZGcg8PPaPXv9Dy0+Kcho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734494370; c=relaxed/simple;
	bh=StsdnWYHV32T75XIBYHABEf0plWnrpE74s1rgUtfdfw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:To:CC; b=cj4TyX9rWT8jfOZ/oK88sgEB3kM8gkUjIqPeb/UPpDCp7AI0NKlgjdGFdB65GmWLGeMWYLYhYIOjRWsd1g15Qt1c3cs36j/DUYBQCsH9oi/kE2gYWUzHXM2fsX5ZpyLJcKOR+J33dzw5D95r/z7eR0Aj99Wx2ro5090NmNOarzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=DRuOHp4R; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1734494368; x=1766030368;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:to:cc;
  bh=StsdnWYHV32T75XIBYHABEf0plWnrpE74s1rgUtfdfw=;
  b=DRuOHp4Rm4Wcsj2z/q+uj6109SzYK6IhUWXDajIewvXJK2tOl5B70PsB
   eUJjbzef4bjMq3c2e1PZbSXJ7wRjA6YpZ/7ilOIKOjSx80PlLyWLsSQBp
   ZeRwfYZ1L3dVMnw1qG/4RVuNTmvQzl8TyNhjvoXBkBQca5MJ9h5ehz1SF
   k3zswpRqCnY4HENV+SnUa4PVchKYhIdfdRP0bY4QRNRcfsNM1vztA7inr
   18plqEtNrZms7orCdhv++nkTa3EpJ0xAU6xoN6QxU82G+CU+vb4pLqEJT
   xG5Tz/cSleczhccVHVLce/4gENYn19m2eJj/KpXPcyHaf50Xvnx1HNbyq
   Q==;
X-CSE-ConnectionGUID: 1K4hxExYRu+9DzMqcOCcBQ==
X-CSE-MsgGUID: 5nSihg91QYWZhSWt6QclKA==
X-IronPort-AV: E=Sophos;i="6.12,243,1728975600"; 
   d="scan'208";a="39410548"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 17 Dec 2024 20:59:26 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 17 Dec 2024 20:58:54 -0700
Received: from [127.0.0.1] (10.10.85.11) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Tue, 17 Dec 2024 20:58:51 -0700
From: Charan Pedumuru <charan.pedumuru@microchip.com>
Date: Wed, 18 Dec 2024 09:24:54 +0530
Subject: [PATCH v2] dt-bindings: mfd: atmel,at91sam9260: Convert to json
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20241218-matrix-v2-1-f3a8809ee5cd@microchip.com>
X-B4-Tracking: v=1; b=H4sIAI1HYmcC/zXMQQrDIBCF4auEWdcyY1ILXfUeIQtrtc7CGDRIS
 vDutYEs/8fj2yHbxDbDo9sh2cKZ49xCXjowXs8fK/jdGiTKgSShCHpNvIkeUZK6K/dSDtp5Sdb
 xdkDj1NpzXmP6Hm6h/3oSdBKFBImbdUg46F674RnYpGg8L1cTA0y11h9JEeeioAAAAA==
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Nicolas
 Ferre" <nicolas.ferre@microchip.com>, Alexandre Belloni
	<alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Charan Pedumuru
	<charan.pedumuru@microchip.com>
X-Mailer: b4 0.14.1

Convert old text based binding to json schema.
Changes during conversion:
Add a missing fallback `atmel,at91sam9x5-matrix` for
`microchip,sam9x60-matrix` which is not defined in the text binding.

Signed-off-by: Charan Pedumuru <charan.pedumuru@microchip.com>
---
Changes in v2:
- Modified the commit messsage.
- Replaced `anyOf` with `oneOf` in compatible under properties.
- Removed additional items group and added both `microchip,sam9x60-matrix` and 
  `microchip,sam9x7-matrix` as an enum under one items group
- Replaced `matrix@` with `syscon@` in examples.
- Link to v1: https://lore.kernel.org/r/20241211-matrix-v1-1-5ef0104a3af4@microchip.com
---
 .../bindings/mfd/atmel,at91sam9260-matrix.yaml     | 52 ++++++++++++++++++++++
 .../devicetree/bindings/mfd/atmel-matrix.txt       | 26 -----------
 2 files changed, 52 insertions(+), 26 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/atmel,at91sam9260-matrix.yaml b/Documentation/devicetree/bindings/mfd/atmel,at91sam9260-matrix.yaml
new file mode 100644
index 000000000000..447b3a3edbfc
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/atmel,at91sam9260-matrix.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/atmel,at91sam9260-matrix.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip AT91 Bus Matrix
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+
+description:
+  The Bus Matrix (MATRIX) implements a multi-layer AHB, based on the
+  AHB-Lite protocol, that enables parallel access paths between multiple
+  masters and slaves in a system, thus increasing the overall bandwidth.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - atmel,at91sam9260-matrix
+              - atmel,at91sam9261-matrix
+              - atmel,at91sam9263-matrix
+              - atmel,at91sam9rl-matrix
+              - atmel,at91sam9g45-matrix
+              - atmel,at91sam9n12-matrix
+              - atmel,at91sam9x5-matrix
+              - atmel,sama5d3-matrix
+          - const: syscon
+      - items:
+          - enum:
+              - microchip,sam9x60-matrix
+              - microchip,sam9x7-matrix
+          - const: atmel,at91sam9x5-matrix
+          - const: syscon
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon@ffffec00 {
+        compatible = "atmel,sama5d3-matrix", "syscon";
+        reg = <0xffffec00 0x200>;
+    };
diff --git a/Documentation/devicetree/bindings/mfd/atmel-matrix.txt b/Documentation/devicetree/bindings/mfd/atmel-matrix.txt
deleted file mode 100644
index 6e5f83614e83..000000000000
--- a/Documentation/devicetree/bindings/mfd/atmel-matrix.txt
+++ /dev/null
@@ -1,26 +0,0 @@
-* Device tree bindings for Atmel Bus Matrix
-
-The Bus Matrix registers are used to configure Atmel SoCs internal bus
-behavior (master/slave priorities, undefined burst length type, ...)
-
-Required properties:
-- compatible:		Should be one of the following
-			"atmel,at91sam9260-matrix", "syscon"
-			"atmel,at91sam9261-matrix", "syscon"
-			"atmel,at91sam9263-matrix", "syscon"
-			"atmel,at91sam9rl-matrix", "syscon"
-			"atmel,at91sam9g45-matrix", "syscon"
-			"atmel,at91sam9n12-matrix", "syscon"
-			"atmel,at91sam9x5-matrix", "syscon"
-			"atmel,sama5d3-matrix", "syscon"
-			"microchip,sam9x60-matrix", "syscon"
-			"microchip,sam9x7-matrix", "atmel,at91sam9x5-matrix", "syscon"
-- reg:			Contains offset/length value of the Bus Matrix
-			memory region.
-
-Example:
-
-matrix: matrix@ffffec00 {
-	compatible = "atmel,sama5d3-matrix", "syscon";
-	reg = <0xffffec00 0x200>;
-};

---
base-commit: 1b2ab8149928c1cea2d7eca30cd35bb7fe014053
change-id: 20241210-matrix-30021676fb6f

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@microchip.com>


