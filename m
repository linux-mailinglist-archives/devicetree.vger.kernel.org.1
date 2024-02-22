Return-Path: <devicetree+bounces-44703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 808CD85F4CB
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 10:44:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A43CD1C230C7
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:44:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1006344C84;
	Thu, 22 Feb 2024 09:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="QF6asOKp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4C13BB3A
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 09:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708594932; cv=none; b=UmejXVgxVOUekL06sRb8alsxoaEwIsNdEyUNICKgqC5o92A6bYbeQtA7KHK9Va1PISM/hfGHrqgbC15Rltxf0BXPSsQ0Ka4KqBCahzVVuW2yUaYr/SGJ1qETM7/LxM4/6EWCh5u3kCoGyViY/sIRgUasVV+VGUyp8bUj6CBcBjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708594932; c=relaxed/simple;
	bh=UEqf02ho8KoC5uUf94NdYj/8svBvRgvzCWxf0JoVQU0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PfQ6oQJuPTNACmGT9qh4hWS6mq64m4xnWRs9Px4tVQl2qlTybgaSaQd2aX0D0SwhToVF8OSJiB+BX0GEyxrlDGIrEEtpDyQgV67DJhZjt96OXzu3gZKaxMCkm2enQ7cqQn9HEF+LqZqXqT4/pFKB7v/Mqezppp6gR8S5uPnRKsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=QF6asOKp; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3c134813841so277477b6e.0
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 01:42:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708594929; x=1709199729; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zlSSXeqmMrWeTCyKtywicMr25YT1KxbVoTbJX7XSN9g=;
        b=QF6asOKp9eyFKTtwvfKq740bVQbJ9ZdNizaAC3Eq2pj6naJNTqLbQ4xMollUSI+3iV
         UR9l+lJcR18pU7yaWNYU4qu4qoeK1IsF6n7MzDZrnJVW3WGJuc8lOSpjRgc9nQq6A5GG
         eQlzoFoQa8HzzOx0L42vOKIocjLCWP7t/URQDWdzBc05ewa8LsYJiGEWpHs4YOaPEmye
         DchdDgUhj+w+klOffLeiZwHzOqTLvjvTklCKaU8W3Sg8KvMGVkh668a7n5RXFuyih5jH
         EyxYGsoZxa9K/rwMvXGa6aGbrjkvorhb//6XinRWbwqn5OEOc2+Um9VyOqRoXAlTIu6X
         aTcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708594929; x=1709199729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zlSSXeqmMrWeTCyKtywicMr25YT1KxbVoTbJX7XSN9g=;
        b=ShrSUM1f4L1tF1Dgep5D2XimAM/NtmDvdHvJPbaFAFBZ/7x2kTrztpuyAIY+o8w3T+
         xYXcfHslSVd7XFDz1WQAwj+lMiGCgsrgpaSzJGQr4yjNcmnvBGiw7hdEYLWbGcdjNV0z
         GRwBj6kQ4N/jHIlMphOi+yP3elUQcnJB6vtRRRRYgbquk/at2+lch+uWqVLa4k8zisML
         8jS7py9JbpMqPiY4C60gZ04/JcDrS4w5/ln0N7IgbGemZWQS5goSO91CLveb28+ns6yQ
         iU7o3mRwLV0Qx0BU+aQ40c9MDSrdM5rOYQtB10/zE4flnvBFRPOSjOu++O/eW5JVTVCp
         SI9g==
X-Forwarded-Encrypted: i=1; AJvYcCUqp8tqEZmKPDgCNMqJPykBH66viByr/bkspMZxqdiPiLbIzUEmR0owvRzC+PU2IisfwxDQiSMn73kb7gAIZDCDQLqtje9D8cOkAg==
X-Gm-Message-State: AOJu0YwFAP5Fd8nE7kOgo36QFW0w7hly5+zZ4iSkc6ZTyGrN18t9AuEz
	o887gW0ZHGtBkH2SnKf/Z2ciAzNnN3f1e375738Fr0bkxvp/7Lf71jCSDbugn1s=
X-Google-Smtp-Source: AGHT+IH60qk2up8SoNuFYicHp2OgEukebWkZ28t+HKjXTEWoNON75/p++LR0O3E6sh804ZtgACfvRA==
X-Received: by 2002:a05:6808:118c:b0:3c1:57a2:21ef with SMTP id j12-20020a056808118c00b003c157a221efmr973715oil.23.1708594929180;
        Thu, 22 Feb 2024 01:42:09 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id n15-20020a05680803af00b003c17c2b8d09sm130699oie.31.2024.02.22.01.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 01:42:08 -0800 (PST)
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
Subject: [PATCH v14 14/18] dt-bindings: interrupt-controller: Add RISC-V advanced PLIC
Date: Thu, 22 Feb 2024 15:10:02 +0530
Message-Id: <20240222094006.1030709-15-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240222094006.1030709-1-apatel@ventanamicro.com>
References: <20240222094006.1030709-1-apatel@ventanamicro.com>
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


