Return-Path: <devicetree+bounces-80532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 65443919E4B
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 06:34:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 110C11F24B90
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 04:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB46546521;
	Thu, 27 Jun 2024 04:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="lrnZL75H"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9406D1CD1F
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 04:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719462812; cv=none; b=Sjs+PvlCHAS8ghi+rR08Ze2566HAkJdBLpRZlZHPuYvS4+t8CTYCpxpDPGR1kwn5SZ7iI9GcuIASIa6bULq47wiCB3l3HjsnBaYzMWyCGy+f/axFhe0CGqp+xJVL4iIWDQDgtFp5MitzqfOpEoSBVtmtr6jh8PiiKbtcYS37KD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719462812; c=relaxed/simple;
	bh=jYZM1xatOiLwT5jhGkQtuGm8c4KLUB3IilRgDN92hvM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FLMF1J7ThAyFVhmwffH3Ve1jDXbe4RlkbdBkp7b+i0xqilA2Qukka50zCbj3WXj1Kv+1O0uKH1LyfQ+bzxi/Gi6NhpvYPMgqOroARaVJ9pmIoGYzG7gQ+9lNvlYEcnvHoM8op0dz3az5uLzU7Oc1iQv5CG2OmW9oMqu0OjIZjYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=lrnZL75H; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id C6F5B2C0861;
	Thu, 27 Jun 2024 16:33:22 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1719462802;
	bh=38rbN0zRUJYTT11wA5vuTQE8ttsPebHXRPA3KedOVf8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lrnZL75HX/374MEIUDqZUcsBgdbLOLxSJRhUJpLB5sN3f4rKq7ZthEZG1Q+MNstYJ
	 d8iQYJ7BPOxJWLTmMsTVYTDpjLo63RVb+U2ddAx8yIX+v569DW6s1sY+ZaFVRHSHlh
	 Dohga6um/dDbbru43hfcTU9xazqvHBA8Cix/tH4U9WzI/B0JVdHuDkXThhttFDzZLB
	 xJvYYzVuwnWN8F2KbPYnbejeZBoa1a8IomfnFZ5uymBUXE947QvGXEqIqxcAA2Z2DO
	 7bbzwDcvv5foMjotejyh3PUvoz80mO3c74ekHsVK6GbQctotGiS0hLZhuam62CmwM/
	 z6JQiIWB/iZSA==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B667ceb910005>; Thu, 27 Jun 2024 16:33:22 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id F0BF913EE8E;
	Thu, 27 Jun 2024 16:33:21 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id EDC1528078C; Thu, 27 Jun 2024 16:33:21 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: tglx@linutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tsbogend@alpha.franken.de,
	daniel.lezcano@linaro.org,
	paulburton@kernel.org,
	peterz@infradead.org,
	mail@birger-koblitz.de,
	bert@biot.com,
	john@phrozen.org,
	sander@svanheule.net
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mips@vger.kernel.org,
	kabel@kernel.org,
	ericwouds@gmail.com,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v3 5/9] dt-bindings: timer: Add schema for realtek,otto-timer
Date: Thu, 27 Jun 2024 16:33:13 +1200
Message-ID: <20240627043317.3751996-6-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240627043317.3751996-1-chris.packham@alliedtelesis.co.nz>
References: <20240627043317.3751996-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=CvQccW4D c=1 sm=1 tr=0 ts=667ceb92 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=T1WGqf2p2xoA:10 a=gEfo2CItAAAA:8 a=2AJCWd3gv_sDiQv9-YsA:9 a=3ZKOabzyN94A:10 a=7p-po5nT6doXOX8LVc8m:22 a=sptkURWiP4Gy88Gu7hUp:22
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

Add the devicetree schema for the realtek,otto-timer present on a number
of Realtek SoCs.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v3:
    - Use items to describe regs and interrupt properties
    - Remove minItems condition
    Changes in v2:
    - Use specific compatible (rtl9302-timer instead of rtl930x-timer)
    - Remove unnecessary label
    - Remove unused irq flags (interrupt controller is one-cell)
    - Set minItems for reg and interrupts based on compatible

 .../bindings/timer/realtek,otto-timer.yaml    | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/realtek,otto-=
timer.yaml

diff --git a/Documentation/devicetree/bindings/timer/realtek,otto-timer.y=
aml b/Documentation/devicetree/bindings/timer/realtek,otto-timer.yaml
new file mode 100644
index 000000000000..7b6ec2c69484
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/realtek,otto-timer.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/realtek,otto-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek Otto SoCs Timer/Counter
+
+description:
+  Realtek SoCs support a number of timers/counters. These are used
+  as a per CPU clock event generator and an overall CPU clocksource.
+
+maintainers:
+  - Chris Packham <chris.packham@alliedtelesis.co.nz>
+
+properties:
+  $nodename:
+    pattern: "^timer@[0-9a-f]+$"
+
+  compatible:
+    items:
+      - enum:
+          - realtek,rtl9302-timer
+      - const: realtek,otto-timer
+
+  reg:
+    items:
+      - description: timer0 registers
+      - description: timer1 registers
+      - description: timer2 registers
+      - description: timer3 registers
+      - description: timer4 registers
+
+  clocks:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: timer0 interrupt
+      - description: timer1 interrupt
+      - description: timer2 interrupt
+      - description: timer3 interrupt
+      - description: timer4 interrupt
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    timer@3200 {
+      compatible =3D "realtek,rtl9302-timer", "realtek,otto-timer";
+      reg =3D <0x3200 0x10>, <0x3210 0x10>, <0x3220 0x10>,
+            <0x3230 0x10>, <0x3240 0x10>;
+
+      interrupt-parent =3D <&intc>;
+      interrupts =3D <7>, <8>, <9>, <10>, <11>;
+      clocks =3D <&lx_clk>;
+    };
--=20
2.45.2


