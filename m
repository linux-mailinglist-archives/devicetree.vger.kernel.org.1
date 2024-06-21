Return-Path: <devicetree+bounces-78328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E32C911E94
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 10:23:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC83E2825CF
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 08:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B791155C82;
	Fri, 21 Jun 2024 08:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BY/5yKC6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4783712D210
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 08:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718958200; cv=none; b=Tv625wMzM6WixFa1bcK2iY9hVBdEuijgKfnrhZzzTM1VYa8vZGQwKb6uogl/9IWcqOH/CGl+qY97JEIhYCYyvrQfkHBnoSOXF5zal34pF3EwrMATkbjgjleekq9+G8J2W0ZwWk/24Vd+zN+YkgamWO4+qM8ZVZ/tiI68lCVsvUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718958200; c=relaxed/simple;
	bh=6OAO8od/+Z5WA17/lFyMhf6eWCujfX1iV3HKhszXrVc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=U0tgj8Le6+7NPT8V3O41ipJ4C134UXjtsFEgTUtPD1DQ8cXrBhxlAhFS3o1DG8rhME4iVclf7cbtRAxDBOeqinSvKdh6RkmVdI166cnwF4YlchDEBKg4isfSh6NOmsuPr7hqDqxzrPlIzX0YThAaqdzceTSr6DWxPeMsKgXuL+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BY/5yKC6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53281C32781;
	Fri, 21 Jun 2024 08:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718958199;
	bh=6OAO8od/+Z5WA17/lFyMhf6eWCujfX1iV3HKhszXrVc=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BY/5yKC6C/WPaR4MyqUPnBX7hjZOj5KdU6opuUMilYLce5nRAojZo5ROGhmMU370U
	 dlYkrsgylYRKzu1WOHJJOPcELdzSpv6Dc7KjC3y5YxkYy9JpMx8eUG67IIvlZXpvBQ
	 KPyC0MeKmasjdl1mPyzZkqIQmJmFXMGcHL4xbUkvc0J3L7yn7OnMtyKzoWMaFtXi3I
	 6HgW2Z3v/w65WR9/tDoTPTK61LQPWrSEkjwts5wEvoG/d8uzawQg/7tTfykrpcWQ1M
	 pfJs8v+Zp7DLfiAJSyCAb64xo/HbPnzJ/Eqb1uph1OYrkvjtLbEfW5Xymx6NSHAxB/
	 C2S83Mp5TeM5Q==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	soc@kernel.org,
	Thomas Gleixner <tglx@linutronix.de>
Cc: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH 2/2] dt-bindings: interrupt-controller: convert marvell,mpic binding to YAML
Date: Fri, 21 Jun 2024 10:23:13 +0200
Message-ID: <20240621082313.6605-1-kabel@kernel.org>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240621080719.20380-1-kabel@kernel.org>
References: 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Convert the marvell,mpic device-tree binding to YAML. Add myself as
maintainer.

Signed-off-by: Marek Behún <kabel@kernel.org>
---
 .../marvell,armada-370-xp-mpic.txt            | 38 ------------
 .../interrupt-controller/marvell,mpic.yaml    | 62 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 3 files changed, 63 insertions(+), 38 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/marvell,armada-370-xp-mpic.txt
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/marvell,mpic.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/marvell,armada-370-xp-mpic.txt b/Documentation/devicetree/bindings/interrupt-controller/marvell,armada-370-xp-mpic.txt
deleted file mode 100644
index 5fc03134a999..000000000000
--- a/Documentation/devicetree/bindings/interrupt-controller/marvell,armada-370-xp-mpic.txt
+++ /dev/null
@@ -1,38 +0,0 @@
-Marvell Armada 370, 375, 38x, XP Interrupt Controller
------------------------------------------------------
-
-Required properties:
-- compatible: Should be "marvell,mpic"
-- interrupt-controller: Identifies the node as an interrupt controller.
-- msi-controller: Identifies the node as an PCI Message Signaled
-  Interrupt controller.
-- #interrupt-cells: The number of cells to define the interrupts. Should be 1.
-  The cell is the IRQ number
-
-- reg: Should contain PMIC registers location and length. First pair
-  for the main interrupt registers, second pair for the per-CPU
-  interrupt registers. For this last pair, to be compliant with SMP
-  support, the "virtual" must be use (For the record, these registers
-  automatically map to the interrupt controller registers of the
-  current CPU)
-
-Optional properties:
-
-- interrupts: If defined, then it indicates that this MPIC is
-  connected as a slave to another interrupt controller. This is
-  typically the case on Armada 375 and Armada 38x, where the MPIC is
-  connected as a slave to the Cortex-A9 GIC. The provided interrupt
-  indicate to which GIC interrupt the MPIC output is connected.
-
-Example:
-
-        mpic: interrupt-controller@d0020000 {
-              compatible = "marvell,mpic";
-              #interrupt-cells = <1>;
-              #address-cells = <1>;
-              #size-cells = <1>;
-              interrupt-controller;
-              msi-controller;
-              reg = <0xd0020a00 0x1d0>,
-                    <0xd0021070 0x58>;
-        };
diff --git a/Documentation/devicetree/bindings/interrupt-controller/marvell,mpic.yaml b/Documentation/devicetree/bindings/interrupt-controller/marvell,mpic.yaml
new file mode 100644
index 000000000000..5318d4a7716a
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/marvell,mpic.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/marvell,mpic.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Armada 370, 375, 38x, 39x, XP Interrupt Controller
+
+maintainers:
+  - Marek Behún <kabel@kernel.org>
+
+description: |
+  The top-level interrupt controller on Marvell Armada 370 and XP. On these
+  platforms it also provides inter-processor interrupts.
+
+  On Marvell Armada 375, 38x and 39x this controller is wired under ARM GIC.
+
+  Provides MSI handling for the PCIe controllers.
+
+properties:
+  compatible:
+    const: marvell,mpic
+
+  reg:
+    items:
+      - description: main registers
+      - description: per-cpu registers
+
+  interrupts:
+    items:
+      - description: |
+          Parent interrupt on platforms where MPIC is not the top-level
+          interrupt controller.
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 1
+
+  msi-controller: true
+
+required:
+  - compatible
+  - reg
+  - interrupt-controller
+  - msi-controller
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    interrupt-controller@20a00 {
+        compatible = "marvell,mpic";
+        reg = <0x20a00 0x2d0>, <0x21070 0x58>;
+        interrupts = <GIC_PPI 15 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-controller;
+        #interrupt-cells = <1>;
+        msi-controller;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index b68c8b25bb93..5506e3141d92 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2211,6 +2211,7 @@ F:	Documentation/ABI/testing/sysfs-firmware-turris-mox-rwtm
 F:	Documentation/devicetree/bindings/bus/moxtet.txt
 F:	Documentation/devicetree/bindings/firmware/cznic,turris-mox-rwtm.txt
 F:	Documentation/devicetree/bindings/gpio/gpio-moxtet.txt
+F:	Documentation/devicetree/bindings/interrupt-controller/marvell,mpic.yaml
 F:	Documentation/devicetree/bindings/leds/cznic,turris-omnia-leds.yaml
 F:	Documentation/devicetree/bindings/watchdog/armada-37xx-wdt.txt
 F:	drivers/bus/moxtet.c
-- 
2.44.2


