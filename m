Return-Path: <devicetree+bounces-87200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC56938C84
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 11:52:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25FD52854B7
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 09:52:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA853176222;
	Mon, 22 Jul 2024 09:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=kalrayinc.com header.i=@kalrayinc.com header.b="W4sT0RvZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout148.security-mail.net (smtpout148.security-mail.net [85.31.212.148])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E849616CD24
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 09:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.31.212.148
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721641513; cv=none; b=eeL1c5Ud3pzHR7hn5aeBWBV0IriO5FtycJzLsQpEh2d72m/q6qaUazCZ97PbCGxDeFR/YVPBIcbAHE1eLfnaWQwOmSFuxqxdwiycGqudeLUWyUmILuKH89P81wle7GSZQ3noF/0VlJRwDfS75DOl0RzbPQOGtzpXTNgLysONJt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721641513; c=relaxed/simple;
	bh=F4Ckw+wQ+B9Cs3b3OLCJtfGqDkXrq2CumL7xBdOz9ZQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mU3W1sh74GmhAAKi90H8E6XIFKdnLI83bfuaq//qf+Mtaw1DgI8p8DZSKmbFHj6oTfaajEi46AFtoslQOKGyJ3V+s2UgANWZaDibKqn4stoLMHKzp6PqgWQ7ofjFkVzT+X0r5ioo1glo6tIqJ559bX7yyUeI6f2IJqZBnSOHC40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kalrayinc.com; spf=pass smtp.mailfrom=kalrayinc.com; dkim=pass (1024-bit key) header.d=kalrayinc.com header.i=@kalrayinc.com header.b=W4sT0RvZ; arc=none smtp.client-ip=85.31.212.148
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kalrayinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kalrayinc.com
Received: from localhost (fx408.security-mail.net [127.0.0.1])
	by fx408.security-mail.net (Postfix) with ESMTP id 3A12D322609
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 11:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1721641398;
	bh=F4Ckw+wQ+B9Cs3b3OLCJtfGqDkXrq2CumL7xBdOz9ZQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=W4sT0RvZo8fpiP16Ag4kfqghesHbbACn2GH9TsXjiesrrH5AappJzuNtUqqWqwI1F
	 TGgj8ifQR+Cwb0lbU4PWhxxE1TymUWD17Er7bY5EvOVTvga1YRzaUlIMheofH0+sC5
	 uvfXpWtQG8jPA71c0+okZPc7DQiFrSRhEZzEqA2s=
Received: from fx408 (fx408.security-mail.net [127.0.0.1]) by
 fx408.security-mail.net (Postfix) with ESMTP id 1094432259D; Mon, 22 Jul
 2024 11:43:18 +0200 (CEST)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx408.security-mail.net (Postfix) with ESMTPS id 7A0B3322398; Mon, 22 Jul
 2024 11:43:17 +0200 (CEST)
Received: from junon.lan.kalrayinc.com (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPS id 4B91440317; Mon, 22 Jul
 2024 11:43:17 +0200 (CEST)
X-Quarantine-ID: <KDEnAgmoXBI1>
X-Secumail-id: <12a7a.669e29b5.780ab.0>
From: ysionneau@kalrayinc.com
To: linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Jonathan Borne <jborne@kalrayinc.com>, Julian
 Vetter <jvetter@kalrayinc.com>, Yann Sionneau <ysionneau@kalrayinc.com>
Cc: Jules Maselbas <jmaselbas@zdiv.net>, devicetree@vger.kernel.org
Subject: [RFC PATCH v3 06/37] dt-bindings: Add binding for
 kalray,coolidge-itgen
Date: Mon, 22 Jul 2024 11:41:17 +0200
Message-ID: <20240722094226.21602-7-ysionneau@kalrayinc.com>
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

Add binding for Kalray Coolidge Interrupt Generator.

Co-developed-by: Jules Maselbas <jmaselbas@zdiv.net>
Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
---

Notes:

V2 -> V3: Fixed bindings to adhere to dt-schema
---
 .../kalray,coolidge-itgen.yaml                | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/kalray,coolidge-itgen.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/kalray,coolidge-itgen.yaml b/Documentation/devicetree/bindings/interrupt-controller/kalray,coolidge-itgen.yaml
new file mode 100644
index 0000000000000..222cacb5cbea4
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/kalray,coolidge-itgen.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/kalray,coolidge-itgen.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Kalray Coolidge SoC Interrupt Generator (ITGEN)
+
+maintainers:
+  - Jonathan Borne <jborne@kalrayinc.com>
+  - Julian Vetter <jvetter@kalrayinc.com>
+  - Yann Sionneau <ysionneau@kalrayinc.com>
+
+description: |
+  The Interrupt Generator (ITGEN) is an interrupt controller block.
+  It's purpose is to convert IRQ lines coming from SoC peripherals into writes
+  on the AXI bus. The ITGEN intended purpose is to write into the APIC mailboxes.
+
+properties:
+  compatible:
+    const: kalray,coolidge-itgen
+
+  reg:
+    maxItems: 1
+
+  "#interrupt-cells":
+    const: 2
+    description: |
+      - 1st cell is for the IRQ number
+      - 2nd cell is for the trigger type as defined dt-bindings/interrupt-controller/irq.h
+
+  interrupt-controller: true
+
+  msi-parent: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - "#interrupt-cells"
+  - interrupt-controller
+  - msi-parent
+
+examples:
+  - |
+    itgen: interrupt-controller@27000000 {
+        compatible = "kalray,coolidge-itgen";
+        reg = <0 0x27000000 0 0x1104>;
+        #interrupt-cells = <2>;
+        interrupt-controller;
+        msi-parent = <&apic_mailbox>;
+    };
+
+...
-- 
2.45.2






