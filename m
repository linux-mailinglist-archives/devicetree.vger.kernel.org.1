Return-Path: <devicetree+bounces-79381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E13D3915118
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:57:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0FBB01C24633
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 14:57:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7425B19D89D;
	Mon, 24 Jun 2024 14:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmb9ihPT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A6619D897
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 14:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719240863; cv=none; b=dT0+Mdo9Zv7O+pd1sgo4RQi8AP43P4iT3vnRO/c04wP/DiJEMfkF6drUJ4EKlbGkVVQXcItl6VbHRBqlbwtTdqANEcO9pv+J0SRw55YYfwKgUDxbHpAu5ZwU/hkuowRAio0t1PKDhNdlWOiEsuec+Zp8W+Zqy1m2jydT9/50qoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719240863; c=relaxed/simple;
	bh=LZEqFfpmjMqfmTtignQSW0nEmvz3KJ0wK4kDIt7qkho=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lYd7Ywq2/na4yM8ZM6QrvwHeRBM1qxACKmkJJwVKo/8IPLgUoIibroj9WUAoq2AxrwboFGKghvm4tA2uwyaErFTjwz6jL9KI6A8D4GkdMEKDd/AT53TbQLhqSQQrAwbcFxTnqFQBPRmRt4zg4YgchOnbtRT5411TtkmA8116iXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmb9ihPT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 811F3C32789;
	Mon, 24 Jun 2024 14:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719240862;
	bh=LZEqFfpmjMqfmTtignQSW0nEmvz3KJ0wK4kDIt7qkho=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cmb9ihPTOePnjIFkV0sSefcVDq/Dz6+c6PryMar03K0rN5dwKWoIA1WG86rYahP9R
	 7otUhJo6oIklRsSlgz26wrYx94HURoOTiWkfbSXoa07K84Vee8v1gtdWqDNpPN+yN/
	 GcojLixaBwP3/lXWtpli4itXfYlez9zPNnXmQ/F/QQUoF/2HJP+uI9fDq+ChUgLJHv
	 n9ktPFkuWrBHtJXDRzAVjHyeoDgWPbHZ487I2UMfvrOnnsYXs2eZNlbzhIXQpBkDc4
	 WxXa/JyDjrlGUbaaQDXbnhhdkGEQCu3mYpHvuKpmnwI5PayNIUeqBMwjZIqWUWya+R
	 v1mcKIMLHuYUQ==
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
Subject: [PATCH v2 2/2] dt-bindings: interrupt-controller: convert marvell,mpic binding to YAML
Date: Mon, 24 Jun 2024 16:53:55 +0200
Message-ID: <20240624145355.8034-3-kabel@kernel.org>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624145355.8034-1-kabel@kernel.org>
References: <20240624145355.8034-1-kabel@kernel.org>
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
 .../marvell,armada-370-xp-mpic.txt            | 38 -----------
 .../interrupt-controller/marvell,mpic.yaml    | 63 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 3 files changed, 64 insertions(+), 38 deletions(-)
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
index 000000000000..616a41c87352
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/marvell,mpic.yaml
@@ -0,0 +1,63 @@
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
+  - '#interrupt-cells'
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
index 2ca8f35dfe03..17f1ea1eacf3 100644
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


