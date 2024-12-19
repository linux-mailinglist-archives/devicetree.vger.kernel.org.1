Return-Path: <devicetree+bounces-132465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F8C9F741B
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 06:44:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 89BFF7A3A9F
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 05:44:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C97C32165ED;
	Thu, 19 Dec 2024 05:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="DL6TDdZm"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E271FA16B;
	Thu, 19 Dec 2024 05:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734587014; cv=none; b=W6VKBcBx/tS3mgm1ooDsEB4wEGB0ZmAuOVcqeY+KWr6vdeCY870xnycZDeACIjFdSQP3/0QJ0vyxL6tINW4OwXbYCC+uOIzmCttZq0J3TECNByireCaMlPFHF3CQnUnd4W3zLxHjraocELh8In/1TmUwsou2itT67Gujq3/Br+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734587014; c=relaxed/simple;
	bh=HtvxuCvfR1+WAuH51wmAgJepZtVKamVQJfF0Nl56tY0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:To:CC; b=s8uIcw3tHuoKBZwX6Ovk/tV2v90oAjeJVThTea07s7547cEY4Mm5Uk8cSSrMRSQrUv3BRlsMdMA7oBfsAaBviLIMQ/kv/RcwF7U9qvjD0bpGUG93xHz+IjppOfPdmknXd5xT4Bh4MgFf9U3Lzh8+vYXm0OWmVS66BCXWA1igOdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=DL6TDdZm; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1734587013; x=1766123013;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:to:cc;
  bh=HtvxuCvfR1+WAuH51wmAgJepZtVKamVQJfF0Nl56tY0=;
  b=DL6TDdZmzWp8w5R5xf6eu1kuLxegKQNlfmadEFdEwU8bIOCJzBzjTbDV
   yyAQW8wE1RqlRFFacx7AsmDzycAVPE4okLNoq6G2B6w4XB0RXsSkoBuMM
   +1Fbz7vL1iePHPnGtJ9jp+dABNfoceQz2jMcl5Sjta9bOt1bzykOX8FVk
   oLIMAaPf/SmexNkoeiImd330WlgmRQuyb082C4b4Urv9Wz4SBK3pfPHq1
   JpginTt7nbwic76T98nuZ74jYvZ2DO4miejvEA+LB8/VZ3xv2KOXZMIxb
   XP9zAmnW6cjhSKY31uIyMWZDzk13wKVxteGIZPyghiLGAlbBqR0yOom+y
   g==;
X-CSE-ConnectionGUID: hU4v6kOuSsqVI5vwQceH6A==
X-CSE-MsgGUID: bZlwIm3LQBKFdgmbK5AFLw==
X-IronPort-AV: E=Sophos;i="6.12,246,1728975600"; 
   d="scan'208";a="266956083"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Dec 2024 22:43:32 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 18 Dec 2024 22:43:31 -0700
Received: from [127.0.0.1] (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Wed, 18 Dec 2024 22:43:26 -0700
From: Charan Pedumuru <charan.pedumuru@microchip.com>
Date: Thu, 19 Dec 2024 11:12:50 +0530
Subject: [PATCH] dt-bindings: mfd: atmel: Convert to json schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20241219-gpbr-v1-1-e19a562ebf81@microchip.com>
X-B4-Tracking: v=1; b=H4sIAFmyY2cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDI0ND3fSCpCJdI5PEZAMLI+PklFRTJaDSgqLUtMwKsDHRsbW1AGrrreB
 WAAAA
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
The text binding is misleading, add a fallback `atmel,at91sam9260-gpbr`
for both `microchip,sam9x60-gpbr` and `microchip,sam9x7-gpbr` which is
missing in old binding and `microchip,sam9x60-gpbr` is not a fallback
for `microchip,sam9x7-gpbr`.

Signed-off-by: Charan Pedumuru <charan.pedumuru@microchip.com>
---
 .../bindings/mfd/atmel,at91sam9260-gpbr.yaml       | 44 ++++++++++++++++++++++
 .../devicetree/bindings/mfd/atmel-gpbr.txt         | 18 ---------
 2 files changed, 44 insertions(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/atmel,at91sam9260-gpbr.yaml b/Documentation/devicetree/bindings/mfd/atmel,at91sam9260-gpbr.yaml
new file mode 100644
index 000000000000..f805545aa62a
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/atmel,at91sam9260-gpbr.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/atmel,at91sam9260-gpbr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip AT91 General Purpose Backup Registers
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+
+description:
+  The system controller embeds 256 bits of General Purpose Backup
+  registers organized as 8 32-bit registers.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - atmel,at91sam9260-gpbr
+          - const: syscon
+      - items:
+          - enum:
+              - microchip,sam9x60-gpbr
+              - microchip,sam9x7-gpbr
+          - const: atmel,at91sam9260-gpbr
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
+    syscon@fffffd50 {
+        compatible = "atmel,at91sam9260-gpbr", "syscon";
+        reg = <0xfffffd50 0x10>;
+    };
diff --git a/Documentation/devicetree/bindings/mfd/atmel-gpbr.txt b/Documentation/devicetree/bindings/mfd/atmel-gpbr.txt
deleted file mode 100644
index 3c989d1760a2..000000000000
--- a/Documentation/devicetree/bindings/mfd/atmel-gpbr.txt
+++ /dev/null
@@ -1,18 +0,0 @@
-* Device tree bindings for Atmel GPBR (General Purpose Backup Registers)
-
-The GPBR are a set of battery-backed registers.
-
-Required properties:
-- compatible:		Should be one of the following:
-			"atmel,at91sam9260-gpbr", "syscon"
-			"microchip,sam9x60-gpbr", "syscon"
-			"microchip,sam9x7-gpbr", "microchip,sam9x60-gpbr", "syscon"
-- reg:			contains offset/length value of the GPBR memory
-			region.
-
-Example:
-
-gpbr: gpbr@fffffd50 {
-	compatible = "atmel,at91sam9260-gpbr", "syscon";
-	reg = <0xfffffd50 0x10>;
-};

---
base-commit: 91e71d606356e50f238d7a87aacdee4abc427f07
change-id: 20241211-gpbr-24ac0823cde5

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@microchip.com>


