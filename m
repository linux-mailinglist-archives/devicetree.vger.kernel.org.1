Return-Path: <devicetree+bounces-163663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 24939A7DBFD
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 13:15:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B5C01891EE6
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 11:15:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B577923A9B6;
	Mon,  7 Apr 2025 11:13:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1049B23AE8B
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 11:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744024432; cv=none; b=Bljnli6Tnw8/Fk8gz66EhvwnuxHwAcwX6ul0qfF58xbCtNKrtN6TF5q/CP9RtwP+t+VQpwh9PxTsyFVeBpqr0xMZL3G22egi+i0kd+pjzDuSQXqI42C5HErwBr3CcwPvR4eD1voSBbE2n3s1n9Gm3SMbNwR4SF1VoMCR6aVDyfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744024432; c=relaxed/simple;
	bh=vpop9K5aY7aPnZzRjaWQEaDIOUvcef1dbOk4SQq3ey8=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rMoqP4SOCMfc4DBWZNv/Vtp1KwLGrHvpOwFIqlLftQHLUuI9mSvvpdypJRtyVjnO+13z0wr8L3zJS9Vn8v18Y/L23bAQFtSqwKZNleiggrfYfJklnmQfLp+ZPcDQowW97qgo0t5Rh94P4tNH5rvo4iYW5mbtx3dV3HIu3crkaaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from Atcsqr.andestech.com (localhost [127.0.0.2] (may be forged))
	by Atcsqr.andestech.com with ESMTP id 537AobsF002369
	for <devicetree@vger.kernel.org>; Mon, 7 Apr 2025 18:50:37 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTPS id 537Anlbj001623
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 7 Apr 2025 18:49:47 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS31.andestech.com
 (10.0.1.89) with Microsoft SMTP Server id 14.3.498.0; Mon, 7 Apr 2025
 18:49:46 +0800
From: Ben Zong-You Xie <ben717@andestech.com>
To: <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
CC: <paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
        <alex@ghiti.fr>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <tglx@linutronix.de>,
        <daniel.lezcano@linaro.org>, <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        <tim609@andestech.com>, "Ben
 Zong-You Xie" <ben717@andestech.com>
Subject: [PATCH 5/9] dt-bindings: timer: add Andes machine timer
Date: Mon, 7 Apr 2025 18:49:33 +0800
Message-ID: <20250407104937.315783-6-ben717@andestech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250407104937.315783-1-ben717@andestech.com>
References: <20250407104937.315783-1-ben717@andestech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-DKIM-Results: atcpcs31.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 537AobsF002369

Add the DT binding documentation for Andes machine timer.

The RISC-V architecture defines a machine timer that provides a real-time
counter and generates timer interrupts. Andes machiner timer (PLMT0) is
the implementation of the machine timer, and it contains memory-mapped
registers (mtime and mtimecmp). This device supports up to 32 cores.

Signed-off-by: Ben Zong-You Xie <ben717@andestech.com>
---
 .../bindings/timer/andestech,plmt0.yaml       | 42 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 43 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/andestech,plmt0.yaml

diff --git a/Documentation/devicetree/bindings/timer/andestech,plmt0.yaml b/Documentation/devicetree/bindings/timer/andestech,plmt0.yaml
new file mode 100644
index 000000000000..e0ea3ce86b76
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/andestech,plmt0.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/andestech,plmt0.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Andes machine timer
+
+maintainers:
+  - Ben Zong-You Xie <ben717@andestech.com>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - andestech,qilai-aclint-mtimer
+      - const: andestech,plmt0
+
+  reg:
+    maxItems: 1
+
+  interrupts-extended:
+    minItems: 1
+    maxItems: 32
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts-extended
+
+examples:
+  - |
+    interrupt-controller@100000 {
+      compatible = "andestech,qilai-aclint-mtimer", "andestech,plmt0";
+      reg = <0x100000 0x100000>;
+      interrupts-extended = <&cpu0intc 7>,
+                            <&cpu1intc 7>,
+                            <&cpu2intc 7>,
+                            <&cpu3intc 7>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 645d7137cb07..d1e1b98dfe7b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20730,6 +20730,7 @@ M:	Ben Zong-You Xie <ben717@andestech.com>
 S:	Maintained
 F:	Documentation/devicetree/bindings/interrupt-controller/andestech,plicsw.yaml
 F:	Documentation/devicetree/bindings/riscv/andes.yaml
+F:	Documentation/devicetree/bindings/timer/andestech,plmt0.yaml
 
 RISC-V ARCHITECTURE
 M:	Paul Walmsley <paul.walmsley@sifive.com>
-- 
2.34.1


