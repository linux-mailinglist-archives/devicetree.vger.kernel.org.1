Return-Path: <devicetree+bounces-87196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 947F6938C79
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 11:51:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50F02281D4C
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 09:51:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB3E2173332;
	Mon, 22 Jul 2024 09:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=kalrayinc.com header.i=@kalrayinc.com header.b="M43fM3c9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout43.security-mail.net (smtpout43.security-mail.net [85.31.212.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03F316C6BA
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 09:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.31.212.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721641508; cv=none; b=NMexD6suT3cWqE/kB34n9mUOpF95iMdnx7Bl7ebWD7O8jPfLc5Tgl4MQ6rlrsEFjcRhn3nJnlZagoCDjPGM2GuaNrJulVpwv7zJfOl2grE1Yqk/OVy8iM9J3flYS+o9snlW1Vz5BNaRjHEILl2LykvVXg0bJZvYdnaxSQLnVj4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721641508; c=relaxed/simple;
	bh=I96rfEW8ScQ10PPJ++fzpMrvWRQP0sxu3gDqH2P0U8Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OI+3WtcT4lyOQrHL6EN1JkMyBRk+83VLLY7WM2F9l/E6LAm26gnTKXMDcvo9spzR/f38KLWSdYNMs5khe2g/u6EaaFxnbBYFDVH5V0KTrt/ru9iDbDAIuZ3w5UsZdZh0nmLB1nW9QOvowmkzA04d025NkmJIMWtHjZlykAhtGco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kalrayinc.com; spf=pass smtp.mailfrom=kalrayinc.com; dkim=pass (1024-bit key) header.d=kalrayinc.com header.i=@kalrayinc.com header.b=M43fM3c9; arc=none smtp.client-ip=85.31.212.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kalrayinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kalrayinc.com
Received: from localhost (fx303.security-mail.net [127.0.0.1])
	by fx303.security-mail.net (Postfix) with ESMTP id 0466C30F01C
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 11:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1721641398;
	bh=I96rfEW8ScQ10PPJ++fzpMrvWRQP0sxu3gDqH2P0U8Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=M43fM3c9YgLjTwko9c0KZjCFPiCmxBmk8Ipc25+cwBTOs2TSrxvdJzWk9KyDfu4W9
	 4DpyNn370BvQmKuv0/qCh9IiuASXC07QJfCH2nGo2ZQhR7pqAULaNY+LL7uuAWNDrr
	 jDV4CHwYJhgUKoPBubTygjgEiqXFzYELBvKVd7Vg=
Received: from fx303 (fx303.security-mail.net [127.0.0.1]) by
 fx303.security-mail.net (Postfix) with ESMTP id BFFC530EFB0; Mon, 22 Jul
 2024 11:43:17 +0200 (CEST)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx303.security-mail.net (Postfix) with ESMTPS id 0884030ED15; Mon, 22 Jul
 2024 11:43:17 +0200 (CEST)
Received: from junon.lan.kalrayinc.com (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPS id D236040317; Mon, 22 Jul
 2024 11:43:16 +0200 (CEST)
X-Quarantine-ID: <JgOEEzZdZjTS>
X-Secumail-id: <10d66.669e29b5.6079.0>
From: ysionneau@kalrayinc.com
To: linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Jonathan Borne <jborne@kalrayinc.com>, Julian
 Vetter <jvetter@kalrayinc.com>, Yann Sionneau <ysionneau@kalrayinc.com>
Cc: Jules Maselbas <jmaselbas@zdiv.net>, devicetree@vger.kernel.org
Subject: [RFC PATCH v3 05/37] dt-bindings: Add binding for
 kalray,coolidge-apic-mailbox
Date: Mon, 22 Jul 2024 11:41:16 +0200
Message-ID: <20240722094226.21602-6-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240722094226.21602-1-ysionneau@kalrayinc.com>
References: <20240722094226.21602-1-ysionneau@kalrayinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done

From: Yann Sionneau <ysionneau@kalrayinc.com>

Add binding for Kalray Coolidge APIC Mailbox interrupt-controller.

Co-developed-by: Jules Maselbas <jmaselbas@zdiv.net>
Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
---

Notes:

V2 -> V3: Fixed bindings to adhere to dt-schema
---
 .../kalray,coolidge-apic-mailbox.yaml         | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/kalray,coolidge-apic-mailbox.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/kalray,coolidge-apic-mailbox.yaml b/Documentation/devicetree/bindings/interrupt-controller/kalray,coolidge-apic-mailbox.yaml
new file mode 100644
index 0000000000000..334b816b80583
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/kalray,coolidge-apic-mailbox.yaml
@@ -0,0 +1,90 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/kalray,coolidge-apic-mailbox.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Kalray Coolidge APIC-Mailbox
+
+maintainers:
+  - Jonathan Borne <jborne@kalrayinc.com>
+  - Julian Vetter <jvetter@kalrayinc.com>
+  - Yann Sionneau <ysionneau@kalrayinc.com>
+
+description: |
+  Each cluster in the Coolidge SoC includes an Advanced Programmable Interrupt
+  Controller (APIC) which is split in two part:
+    - a Generic Interrupt Controller (referred as APIC-GIC)
+    - a Mailbox Controller           (referred as APIC-Mailbox)
+  The APIC-Mailbox contains 128 mailboxes of 8 bytes (size of a word),
+  this hardware block is basically a 1 KB of smart memory space.
+  Each mailbox can be independently configured with a trigger condition
+  and an input mode function.
+
+  Input mode are:
+   - write
+   - bitwise OR
+   - add
+
+  Interrupts are generated on a write when the mailbox content value
+  match the configured trigger condition.
+  Available conditions are:
+   - doorbell: always raise interruption on write
+   - match: when the mailbox's value equal the configured trigger value
+   - barrier: same as match but the mailbox's value is cleared on trigger
+   - threshold: when the mailbox's value is greater than, or equal to, the
+     configured trigger value
+
+  Since this hardware block generates IRQs based on writes to some memory
+  locations, it is both an interrupt controller and an MSI controller.
+
+properties:
+  compatible:
+    const: kalray,coolidge-apic-mailbox
+
+  reg:
+    maxItems: 1
+
+  "#interrupt-cells":
+    const: 0
+    description:
+      The IRQ number.
+
+  "#address-cells":
+    const: 0
+
+  interrupt-controller: true
+
+  interrupts:
+    maxItems: 128
+    minItems: 1
+    description: |
+     Specifies the interrupt line(s) in the interrupt-parent controller node;
+     valid values depend on the type of parent interrupt controller
+
+  msi-controller: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - "#interrupt-cells"
+  - "#address-cells"
+  - interrupt-controller
+  - interrupts
+  - msi-controller
+
+examples:
+  - |
+    apic_mailbox: interrupt-controller@a00000 {
+        compatible = "kalray,coolidge-apic-mailbox";
+        reg = <0 0xa00000 0 0x0f200>;
+        #interrupt-cells = <0>;
+        interrupt-controller;
+        interrupt-parent = <&apic_gic>;
+        interrupts = <0>, <1>, <2>, <3>, <4>, <5>, <6>, <7>, <8>, <9>;
+        msi-controller;
+    };
+
+...
-- 
2.45.2






