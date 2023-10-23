Return-Path: <devicetree+bounces-11040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DADD67D3DAC
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:29:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 090961C20381
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:29:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A2EF20B1C;
	Mon, 23 Oct 2023 17:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="VZrHxlzg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5151D208D2
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:29:14 +0000 (UTC)
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72AF01700
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:29:02 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-5ab94fc098cso1925326a12.1
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698082141; x=1698686941; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TYQsgV6mmNiNxm7fkk00HaM0IkP9BeYIjrigTOut9Eg=;
        b=VZrHxlzgKisIWtxm54LawilI7DPNevOtCwZnk8x3KEXTyu3PKVL37k49iiWV2W60n/
         DDT6MrHl4RLGkjnpQF9fb53ptasjtfbNDHk8hE6kmeGgd3DTT4JFxDONbRdAVBA8jO5X
         thbHMAWu+IErt8rxmYvF97yi+2+pNy1TDVDO4m/dWJ+UgOqrkwdJ4xlU82oZBvdnbWS0
         xzw/Y9lyZ3io06vekYblOmOkCn/e5i8+1hDcqgRZYkC+B2sxlF+GE8Hm83cC+MtuUvg8
         ZF0A9JmAVWyhYTcCHwCKGYxF3JfdLbJ4vKa8tAFBDA42kvyKOMowTuGOIz+4cllIQuHx
         4Q+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698082141; x=1698686941;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TYQsgV6mmNiNxm7fkk00HaM0IkP9BeYIjrigTOut9Eg=;
        b=kBWd2IpoY34rg8P30SXOd1Sbgf2JcL8tRuKQCPIrk03laCYTtSj3MnU73jjCbveR/G
         wydmfBZUvdDDgA7xExdS3HWQLbjr0GeFCFtMYRzNvd+1zlWWUgNkdgaHeTIBt4yf5a5i
         O0pDqt9RuA5DDMQaGRvLR0vHi+jipOkn1dDkZ8Sonj7HD610shySE5/kDwHIzIMS5i5I
         3tIfmahKw55xcrwRJCc4bPNdn+Hk7FYP8d3azBPUticIS7TKyBSwafJ3yjT6QrsEOYBX
         XDUBLKpWF94DklkkKV/xbo3MRGPlbTYFpbY1cLTwQUtExavu34ypWuqH985JuYSD8IPp
         fs8g==
X-Gm-Message-State: AOJu0YzPYprS4v1hhR7axziTiilyIOVo+WvBNWEpXGbZgpPl0uQvNgPk
	kurjZ7aF29hpAPR1QyVD099yUA==
X-Google-Smtp-Source: AGHT+IGIMMkux1pvjImjEqS+sMopDtwHWxzAnrn7oLU2p4uCjlajJOajjhDsnKb13Bpb3rj8Rhtiww==
X-Received: by 2002:a05:6a20:7da0:b0:16b:7fcb:4257 with SMTP id v32-20020a056a207da000b0016b7fcb4257mr296169pzj.4.1698082141164;
        Mon, 23 Oct 2023 10:29:01 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.9])
        by smtp.gmail.com with ESMTPSA id g5-20020aa79f05000000b006be055ab117sm6473194pfr.92.2023.10.23.10.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 10:29:00 -0700 (PDT)
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
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v11 10/14] dt-bindings: interrupt-controller: Add RISC-V advanced PLIC
Date: Mon, 23 Oct 2023 22:57:56 +0530
Message-Id: <20231023172800.315343-11-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231023172800.315343-1-apatel@ventanamicro.com>
References: <20231023172800.315343-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We add DT bindings document for RISC-V advanced platform level interrupt
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


