Return-Path: <devicetree+bounces-45740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6305886692E
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 05:10:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BD1DCB229F0
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 04:09:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C5A51B80F;
	Mon, 26 Feb 2024 04:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="FIN4jGy0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215B61A5AC
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 04:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708920555; cv=none; b=eBaHYT5Ob5LTAXY4Y8InhH5SdOhK3IIqKi1t00N4Mf2TlXzjFDXjOI0/kwBKrGKkh61bhSmy+pXouGcZv4fi6kUwlARc0mQsoUW64sc74ZC8g0CWOjTm76Mb7kvTTzoTpuFhxnsfBX1ir/8/x7jrDU9RDs+t0lvimVIDE/DGUBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708920555; c=relaxed/simple;
	bh=6ldkn/NLN5Vok7/3YlbAjD/lx6DIcA8TyTnQ2yT4OV4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fbbXVvkXAwKhfT57e7Jy5FqqYYwa/TZ2facN8Cl0iDJ91f4nO5NEFqClpUCf64FAkY0IJzl5zX9KAyjRd39QWP+3OwkEuArAtL9Q9UDDC3SqhPtEo4AZTzVEVLwIXMR6cJfWagsSw7iJbE/6YZuvks+RirH1A92b/+jXCrFI+uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=FIN4jGy0; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1dc0d11d1b7so18751625ad.2
        for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 20:09:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708920552; x=1709525352; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e2jsLyFwepKDrwIr/uWJV0RdUuyknGyf55lcJyFTRiQ=;
        b=FIN4jGy0WhUSHOlyoEWYN/Y62yHv171dMKZ9AiPlRnbhkQs1QG8AaRzUQKAGWFVPj0
         ddsQRuFSalVGNs8mfFCjl7F/uiPfYfGp36tQzAUvu5aVdpojk6LjZT4VgblxJRqU4wCB
         mUMAig5XVfi2pV0+2Zo5cXvqm5Ic+ae2tEZ9UBsCrI9VobDieAZ3N0IHDuP5u+FE056a
         tgFgC73PmcZjVThQXa8Wb8hTzdiY8tx7LmEwyKSe8LGWAksRTumCSsgffL3FaQ0pJ+8O
         haPFMihw68++5MD9COX57ILKEAqtJ+VDAxZt36X+nicmA2IY9A6xaEdMgizibkRN/rSX
         PIFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708920552; x=1709525352;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e2jsLyFwepKDrwIr/uWJV0RdUuyknGyf55lcJyFTRiQ=;
        b=mtDMMDuQCk8r5u+u3CLqyBsc89D6kKpMdO5KZdVHhzL0TSkOnbBE7pcI2UlFVdvBC8
         oE+w4nMlqwmzJrYZ5SGhCdKHBe3+Y81jfKEdmO5u/SuvwO1Rg1YNRVGJDL8DzRLzbXVz
         NMj2BwpYGqDj1TBK7qgK0F3yvPrE1tzTcfqWyH2RDyo9Q0Kfzgh94gyfOPSULdMimujR
         xbocnDZ1bCYKO666rmCpWtGnmQN7o6EApRj9jkEBPICgP58bN0tNT2ccZMtYiIrTrPKM
         zglEMFx94nI3b9V8cpni/E7NdM0WGLMXeZkpBtAo5G3PMYzaQZNOLglkyzLZyvffWMIX
         neVA==
X-Forwarded-Encrypted: i=1; AJvYcCVS85VJ2iQE+QHG8NkCuNoPGHn06DGA/62XPsZWuuI7kVtuoLNnHyhSyqpcoInmn9eAlWC8TxUroU3Ygy3CiNwN3CzrOdIpkJHFvA==
X-Gm-Message-State: AOJu0Yxmx+gWE0lmvqOyjnFxpWXDxr5vaYCRoMFhlLVl0dP3vhfpOBe2
	kL8Vh60Xvhylc171YsiK1TTW+nYQSnVvGPtSIAxeNjxiBXOSA9FnZnHuh8ZyseI=
X-Google-Smtp-Source: AGHT+IFdbFuOxj7eqzNgiB/+tjhCIIthj8Qjr/Jxg9f89eTsuPFgLVtfapTTKemsB/XkyeJLM3G+9Q==
X-Received: by 2002:a17:903:2409:b0:1dc:81b8:cc1e with SMTP id e9-20020a170903240900b001dc81b8cc1emr5101477plo.60.1708920552408;
        Sun, 25 Feb 2024 20:09:12 -0800 (PST)
Received: from localhost.localdomain ([171.76.86.62])
        by smtp.gmail.com with ESMTPSA id d11-20020a170902654b00b001dc6f7e794dsm3023258pln.16.2024.02.25.20.09.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 20:09:12 -0800 (PST)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v15 02/10] dt-bindings: interrupt-controller: Add RISC-V incoming MSI controller
Date: Mon, 26 Feb 2024 09:37:38 +0530
Message-Id: <20240226040746.1396416-3-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240226040746.1396416-1-apatel@ventanamicro.com>
References: <20240226040746.1396416-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add DT bindings document for the RISC-V incoming MSI controller (IMSIC)
defined by the RISC-V advanced interrupt architecture (AIA) specification.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../interrupt-controller/riscv,imsics.yaml    | 172 ++++++++++++++++++
 1 file changed, 172 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
new file mode 100644
index 000000000000..84976f17a4a1
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
@@ -0,0 +1,172 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/riscv,imsics.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V Incoming MSI Controller (IMSIC)
+
+maintainers:
+  - Anup Patel <anup@brainfault.org>
+
+description: |
+  The RISC-V advanced interrupt architecture (AIA) defines a per-CPU incoming
+  MSI controller (IMSIC) for handling MSIs in a RISC-V platform. The RISC-V
+  AIA specification can be found at https://github.com/riscv/riscv-aia.
+
+  The IMSIC is a per-CPU (or per-HART) device with separate interrupt file
+  for each privilege level (machine or supervisor). The configuration of
+  a IMSIC interrupt file is done using AIA CSRs and it also has a 4KB MMIO
+  space to receive MSIs from devices. Each IMSIC interrupt file supports a
+  fixed number of interrupt identities (to distinguish MSIs from devices)
+  which is same for given privilege level across CPUs (or HARTs).
+
+  The device tree of a RISC-V platform will have one IMSIC device tree node
+  for each privilege level (machine or supervisor) which collectively describe
+  IMSIC interrupt files at that privilege level across CPUs (or HARTs).
+
+  The arrangement of IMSIC interrupt files in MMIO space of a RISC-V platform
+  follows a particular scheme defined by the RISC-V AIA specification. A IMSIC
+  group is a set of IMSIC interrupt files co-located in MMIO space and we can
+  have multiple IMSIC groups (i.e. clusters, sockets, chiplets, etc) in a
+  RISC-V platform. The MSI target address of a IMSIC interrupt file at given
+  privilege level (machine or supervisor) encodes group index, HART index,
+  and guest index (shown below).
+
+  XLEN-1            > (HART Index MSB)                  12    0
+  |                  |                                  |     |
+  -------------------------------------------------------------
+  |xxxxxx|Group Index|xxxxxxxxxxx|HART Index|Guest Index|  0  |
+  -------------------------------------------------------------
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+  - $ref: /schemas/interrupt-controller/msi-controller.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - qemu,imsics
+      - const: riscv,imsics
+
+  reg:
+    minItems: 1
+    maxItems: 16384
+    description:
+      Base address of each IMSIC group.
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 0
+
+  msi-controller: true
+
+  "#msi-cells":
+    const: 0
+
+  interrupts-extended:
+    minItems: 1
+    maxItems: 16384
+    description:
+      This property represents the set of CPUs (or HARTs) for which given
+      device tree node describes the IMSIC interrupt files. Each node pointed
+      to should be a riscv,cpu-intc node, which has a CPU node (i.e. RISC-V
+      HART) as parent.
+
+  riscv,num-ids:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 63
+    maximum: 2047
+    description:
+      Number of interrupt identities supported by IMSIC interrupt file.
+
+  riscv,num-guest-ids:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 63
+    maximum: 2047
+    description:
+      Number of interrupt identities are supported by IMSIC guest interrupt
+      file. When not specified it is assumed to be same as specified by the
+      riscv,num-ids property.
+
+  riscv,guest-index-bits:
+    minimum: 0
+    maximum: 7
+    default: 0
+    description:
+      Number of guest index bits in the MSI target address.
+
+  riscv,hart-index-bits:
+    minimum: 0
+    maximum: 15
+    description:
+      Number of HART index bits in the MSI target address. When not
+      specified it is calculated based on the interrupts-extended property.
+
+  riscv,group-index-bits:
+    minimum: 0
+    maximum: 7
+    default: 0
+    description:
+      Number of group index bits in the MSI target address.
+
+  riscv,group-index-shift:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 55
+    default: 24
+    description:
+      The least significant bit position of the group index bits in the
+      MSI target address.
+
+required:
+  - compatible
+  - reg
+  - interrupt-controller
+  - msi-controller
+  - "#msi-cells"
+  - interrupts-extended
+  - riscv,num-ids
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    // Example 1 (Machine-level IMSIC files with just one group):
+
+    interrupt-controller@24000000 {
+      compatible = "qemu,imsics", "riscv,imsics";
+      interrupts-extended = <&cpu1_intc 11>,
+                            <&cpu2_intc 11>,
+                            <&cpu3_intc 11>,
+                            <&cpu4_intc 11>;
+      reg = <0x28000000 0x4000>;
+      interrupt-controller;
+      #interrupt-cells = <0>;
+      msi-controller;
+      #msi-cells = <0>;
+      riscv,num-ids = <127>;
+    };
+
+  - |
+    // Example 2 (Supervisor-level IMSIC files with two groups):
+
+    interrupt-controller@28000000 {
+      compatible = "qemu,imsics", "riscv,imsics";
+      interrupts-extended = <&cpu1_intc 9>,
+                            <&cpu2_intc 9>,
+                            <&cpu3_intc 9>,
+                            <&cpu4_intc 9>;
+      reg = <0x28000000 0x2000>, /* Group0 IMSICs */
+            <0x29000000 0x2000>; /* Group1 IMSICs */
+      interrupt-controller;
+      #interrupt-cells = <0>;
+      msi-controller;
+      #msi-cells = <0>;
+      riscv,num-ids = <127>;
+      riscv,group-index-bits = <1>;
+      riscv,group-index-shift = <24>;
+    };
+...
-- 
2.34.1


