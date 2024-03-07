Return-Path: <devicetree+bounces-49153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F81A875145
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 15:06:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B26B328752B
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 14:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C02B212EBEB;
	Thu,  7 Mar 2024 14:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="HDFuKBq+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1972B12FF92
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 14:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709820231; cv=none; b=UyHq8oQgYkesw/PSfuz4gNGod4Yg1ulXyT7+8I/nhMev4caqsjqeR94lCh9TjiwHg4jSc9cu0MHP3HbOllqa5DLeuN2+KyND8fRGtf/JdgOgnizmlbD1duNdtjZh4tEhUVu+FUHwZDX9SbrlZkdBR3c3x5BTWF8+r7c/YmDGf1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709820231; c=relaxed/simple;
	bh=UEqf02ho8KoC5uUf94NdYj/8svBvRgvzCWxf0JoVQU0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RoyoSMiYi7cRlsqM0yfy76ti46AbEPRw9NNFHqmi0lsBR8iE15CKWyZFHPSMgJQaMTxPXV1Tk5qh4kQt/WuJ59kHyCUWGdHdz6icFNIBplMyPx0k69uRUx7JmQqDZhQBjeuHjS53VTq/tVKn33kw/JTtuM69/pgkH0Hpm3MDI6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=HDFuKBq+; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1dd2c8f1204so6590695ad.1
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 06:03:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1709820229; x=1710425029; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zlSSXeqmMrWeTCyKtywicMr25YT1KxbVoTbJX7XSN9g=;
        b=HDFuKBq+imwf4yG7G5aQQ0UvEEuWn3P0v6wXPEG7ZJTMlFw5tkHi5V00kc3LmppKZe
         5q0y3JzxROeKHjtTaEMM4fXmutKDu+0huwxkFx93//bC08DShneiddKf4FUh/RAp34cd
         ggKQVfSacdtfNNF1OQkcoamkrkT71iK7gdm6gGaTUB/02y7fH6WZuRihmhUrlQ/0eidZ
         H8Ove4ehpI7fG38g75O+OSF5XCcl1Kgbj1rp9wtGsxKowzBoIIj1rSGBSsy13jp9YByP
         F4JaNeFSuqJDlkvroJ5+AbzYXmWVlh44vhLkg8VpBLmEEUQL/gNu8GdirnII+wcxDuLB
         ESVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709820229; x=1710425029;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zlSSXeqmMrWeTCyKtywicMr25YT1KxbVoTbJX7XSN9g=;
        b=JsSeDP2xnQ1D00FbQOEBjwPNyQugkJ/6+qwqxGrNhF/bqGKUq7NVc7tOpzESV9nxTU
         kiE4D6HOXMteFVts2t9yTbNU8pqFb2yVFv7odxUXDF2d1UrnUlqSYwR24ZVMjI6bY26f
         g32y0TCZE4QZdGjl9j4aTkyGWjOYi/OVomi9mu5jivoGWv5bwRsabNDm9ySyd9cFATxZ
         3YqsyNd1jDcRO8oCY67H5RSa/M2kGMNKVxgtvJCUVfs8bxbwbf+BUzk9Bgn6iRaTCp7K
         Y9TEQcjeIqfJWFAzyUzMjQXXBGEJ7uuKA8aWvFzQ5CwG11w0leQvdXg4DhyfO/PCloGk
         kcVw==
X-Forwarded-Encrypted: i=1; AJvYcCVPmiSt3b1pspivNEA7PZV/lji3r5eT6eTgdgSpzzMiFCNE+08s58EvdiXG+uSSyAYWzjSWWFYomIDv2k6/eS/6LiLychxUOUv4Hg==
X-Gm-Message-State: AOJu0YyEUP+H5G6u9vxTmnd4jrKxF0xQY/qeoel1RUKP9tO2hJbnes7I
	lcCI/jiGjW+MxyiIYp/vqcfMEjcxuLCd12MoiMNPCPalUAyTt078UTm9jerJ4S8=
X-Google-Smtp-Source: AGHT+IEetsvrsALrjODyJ2qJwA+TW4Rzu1JjlSxDVd8F/hiCc23jE8KqiYp9J9Wy1ZM/+I8/Lx7NYw==
X-Received: by 2002:a17:903:1245:b0:1dc:abeb:22fe with SMTP id u5-20020a170903124500b001dcabeb22femr9617182plh.65.1709820229184;
        Thu, 07 Mar 2024 06:03:49 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.84.79])
        by smtp.gmail.com with ESMTPSA id w1-20020a1709026f0100b001dd6174c651sm386228plk.149.2024.03.07.06.03.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 06:03:48 -0800 (PST)
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
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v16 5/9] dt-bindings: interrupt-controller: Add RISC-V advanced PLIC
Date: Thu,  7 Mar 2024 19:33:03 +0530
Message-Id: <20240307140307.646078-6-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240307140307.646078-1-apatel@ventanamicro.com>
References: <20240307140307.646078-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add DT bindings document for RISC-V advanced platform level interrupt
controller (APLIC) defined by the RISC-V advanced interrupt architecture
(AIA) specification.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../interrupt-controller/riscv,aplic.yaml     | 172 ++++++++++++++++++
 1 file changed, 172 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
new file mode 100644
index 000000000000..190a6499c932
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
@@ -0,0 +1,172 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/riscv,aplic.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V Advanced Platform Level Interrupt Controller (APLIC)
+
+maintainers:
+  - Anup Patel <anup@brainfault.org>
+
+description:
+  The RISC-V advanced interrupt architecture (AIA) defines an advanced
+  platform level interrupt controller (APLIC) for handling wired interrupts
+  in a RISC-V platform. The RISC-V AIA specification can be found at
+  https://github.com/riscv/riscv-aia.
+
+  The RISC-V APLIC is implemented as hierarchical APLIC domains where all
+  interrupt sources connect to the root APLIC domain and a parent APLIC
+  domain can delegate interrupt sources to it's child APLIC domains. There
+  is one device tree node for each APLIC domain.
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - qemu,aplic
+      - const: riscv,aplic
+
+  reg:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 2
+
+  interrupts-extended:
+    minItems: 1
+    maxItems: 16384
+    description:
+      Given APLIC domain directly injects external interrupts to a set of
+      RISC-V HARTS (or CPUs). Each node pointed to should be a riscv,cpu-intc
+      node, which has a CPU node (i.e. RISC-V HART) as parent.
+
+  msi-parent:
+    description:
+      Given APLIC domain forwards wired interrupts as MSIs to a AIA incoming
+      message signaled interrupt controller (IMSIC). If both "msi-parent" and
+      "interrupts-extended" properties are present then it means the APLIC
+      domain supports both MSI mode and Direct mode in HW. In this case, the
+      APLIC driver has to choose between MSI mode or Direct mode.
+
+  riscv,num-sources:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 1023
+    description:
+      Specifies the number of wired interrupt sources supported by this
+      APLIC domain.
+
+  riscv,children:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    minItems: 1
+    maxItems: 1024
+    items:
+      maxItems: 1
+    description:
+      A list of child APLIC domains for the given APLIC domain. Each child
+      APLIC domain is assigned a child index in increasing order, with the
+      first child APLIC domain assigned child index 0. The APLIC domain child
+      index is used by firmware to delegate interrupts from the given APLIC
+      domain to a particular child APLIC domain.
+
+  riscv,delegation:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    minItems: 1
+    maxItems: 1024
+    items:
+      items:
+        - description: child APLIC domain phandle
+        - description: first interrupt number of the parent APLIC domain (inclusive)
+        - description: last interrupt number of the parent APLIC domain (inclusive)
+    description:
+      A interrupt delegation list where each entry is a triple consisting
+      of child APLIC domain phandle, first interrupt number of the parent
+      APLIC domain, and last interrupt number of the parent APLIC domain.
+      Firmware must configure interrupt delegation registers based on
+      interrupt delegation list.
+
+dependencies:
+  riscv,delegation: [ "riscv,children" ]
+
+required:
+  - compatible
+  - reg
+  - interrupt-controller
+  - "#interrupt-cells"
+  - riscv,num-sources
+
+anyOf:
+  - required:
+      - interrupts-extended
+  - required:
+      - msi-parent
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    // Example 1 (APLIC domains directly injecting interrupt to HARTs):
+
+    interrupt-controller@c000000 {
+      compatible = "qemu,aplic", "riscv,aplic";
+      interrupts-extended = <&cpu1_intc 11>,
+                            <&cpu2_intc 11>,
+                            <&cpu3_intc 11>,
+                            <&cpu4_intc 11>;
+      reg = <0xc000000 0x4080>;
+      interrupt-controller;
+      #interrupt-cells = <2>;
+      riscv,num-sources = <63>;
+      riscv,children = <&aplic1>, <&aplic2>;
+      riscv,delegation = <&aplic1 1 63>;
+    };
+
+    aplic1: interrupt-controller@d000000 {
+      compatible = "qemu,aplic", "riscv,aplic";
+      interrupts-extended = <&cpu1_intc 9>,
+                            <&cpu2_intc 9>;
+      reg = <0xd000000 0x4080>;
+      interrupt-controller;
+      #interrupt-cells = <2>;
+      riscv,num-sources = <63>;
+    };
+
+    aplic2: interrupt-controller@e000000 {
+      compatible = "qemu,aplic", "riscv,aplic";
+      interrupts-extended = <&cpu3_intc 9>,
+                            <&cpu4_intc 9>;
+      reg = <0xe000000 0x4080>;
+      interrupt-controller;
+      #interrupt-cells = <2>;
+      riscv,num-sources = <63>;
+    };
+
+  - |
+    // Example 2 (APLIC domains forwarding interrupts as MSIs):
+
+    interrupt-controller@c000000 {
+      compatible = "qemu,aplic", "riscv,aplic";
+      msi-parent = <&imsic_mlevel>;
+      reg = <0xc000000 0x4000>;
+      interrupt-controller;
+      #interrupt-cells = <2>;
+      riscv,num-sources = <63>;
+      riscv,children = <&aplic3>;
+      riscv,delegation = <&aplic3 1 63>;
+    };
+
+    aplic3: interrupt-controller@d000000 {
+      compatible = "qemu,aplic", "riscv,aplic";
+      msi-parent = <&imsic_slevel>;
+      reg = <0xd000000 0x4000>;
+      interrupt-controller;
+      #interrupt-cells = <2>;
+      riscv,num-sources = <63>;
+    };
+...
-- 
2.34.1


