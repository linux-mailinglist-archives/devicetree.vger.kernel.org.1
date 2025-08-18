Return-Path: <devicetree+bounces-205568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7E2B297B3
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 06:10:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C02FA3BBA16
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 04:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 321C626159E;
	Mon, 18 Aug 2025 04:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="B+u3T5/X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824A125EFBC
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 04:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755490216; cv=none; b=nICQaT5KTNj24XLVBUOcdK3xnOxWfn64Ge36yIFEb5mF2fbf/LbP1jvBXvwBU+JCBJpoFvPTRNbjNQRP1Aomm8DYAfJWebcld+rKQnNV3E4B0je5jDCUNk5WXrI0f2fM0N8cKbNB1qYTGp3iDsjwQIRLCOodIQR5FkKsZWMABlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755490216; c=relaxed/simple;
	bh=B3l9G9xHfhvz8EaPHO3ldfTP94vcz4sc4fSmpOQNlnQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NYS2u2RfoZjPFjDASFWzlJKJoOLnDC1MH/eoCSgJ4g3kiWGWjyRoyzSW7yhIYDvnexHI5MLM7zTKx/mxNhOFiX5QJut80zPUcxcbsvuPVdDtXcqhVxfWADS+PFczDi+t5lqGpGe93yKu3cOAxS5aX+JSXyUz5puLnEj/wc9d8YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=B+u3T5/X; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-32326e202e0so2833860a91.2
        for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 21:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1755490214; x=1756095014; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ziNNelNAtU8Lu0O2/2Qc6bW/trdK9/SPi3ZGrwyyiyE=;
        b=B+u3T5/XSaigjDCpYmttYhPtbyFVQRN4oUwnwVHCSzM3YIMn6JqsvEZ6cSkNRDUb1d
         PyM6LKmZh709mx5pU/cE12uFDNvBc1m6/RCcTk+k9E9Qg+AwzEcr6mHhaK59EkB/kgWu
         hWV5CfvZComAUrG5bOmgYlwIj+qsLQC8QsUmd+kjKcYyC96liNkuBpDgS7X3jyrj4t7K
         JDa4dxNKH2AD2x9+fd9O7r9luDLwkPYbuK+ykIdafeP8IAY2pFesJwwkvPH4Hxy5gYij
         x4gLUx/gYnOzmNa4202+JgAHKSz4hfFITm7yTBnNjbv/+I4BgKcRFfvHZKMFeZAIcqkz
         6kxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755490214; x=1756095014;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ziNNelNAtU8Lu0O2/2Qc6bW/trdK9/SPi3ZGrwyyiyE=;
        b=BVHQqFmD3EMizG9GMnker+d7N2p0EIUaHV0UcbzQzwYZI/e524oD69DYfrQADwmn1V
         hmudegqhS15mEvCgNLbL/SCMeAqa64RJhKkZ9D8ApEJmiNktVm1jEDsVrm0H6S+0y5d4
         vXifDEQ7jRFH2qKgO3I1nxLbAEn+wEbQohaQibx9FW4cALqQKo7yq74NhB54zX5wXCsM
         hYop0Duhmp5mv8rK3NGJHqSX+9qNtvA1fNuNCa8Mbx54Z86EcLqact/kkY9FqeTsV41w
         JnJXPucW1/c9FWRiIUU5N+89n7ntUmvjdd1eBS8jIKgaRtoySEEajs1M5PtFvavzJBq2
         AnTA==
X-Forwarded-Encrypted: i=1; AJvYcCUkmHRYFyLzs7m+nORwuWrQWSRsZzlT8d4h/NloqBpPit/cRLbSSU5EM76sbBdfD9wPNtMcFVGPPEld@vger.kernel.org
X-Gm-Message-State: AOJu0YzS25JEb2uTZmzxYJaXIb3vtxLwHraFwKjj3Pp3seS2aLERiXAc
	bDbPcJi0B61R+tmr6FrMdvx0ftUgsq3rXimyDY7P7p3L0yrW5QXSyUtmSTYpBvMaSOWHGG/y2y8
	J8z4M
X-Gm-Gg: ASbGnctRc2MfeOCfM656vx6pR59Ft2YikUOAZaUKmLrsoS/CJTBTQkQGT7+rYnSLe9G
	2zIY5grdMWjCBVK39clNuZOLEjGdN2z5oWBdxctmLOk5mixKFW+F8NixnRNL3Q9EkDV4vdPdgMr
	NbcqlDqT9yuDsSqBJDBzpeJtD7D0eyXR3lYVZ71iClxnIrbIpx4m5fMj1R9Qp3KKLBTRfK5/VnE
	JEYPlHH9Q/iH3UJy8d+dnIKXlzb6Zhuiixb+7FPs7Dm+5QBLWjAXym2jKcruuGAdDQRT6MDIMPP
	htdHjpacdxHbL7CI010tpo6UIN3jM0yUE/AY5P1jfUUfzi7tPJI4a0EqpQEYQJbXn5KeWM+EWcz
	kv+BKkAvMRyWfvAjTGr/o3BjIpKHCUilB04w3RVI73NJqEDrzqsnTlg==
X-Google-Smtp-Source: AGHT+IHMNebFrKVgEbBD6mfihQGB/VR29QLpmoagvRz83lEg7IdszC5949YqyCiOGwslywTtFiY3Kg==
X-Received: by 2002:a17:90b:53c3:b0:31f:134:94ae with SMTP id 98e67ed59e1d1-3234db8e252mr10650482a91.11.1755490213616;
        Sun, 17 Aug 2025 21:10:13 -0700 (PDT)
Received: from localhost.localdomain ([122.171.17.53])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32343c70356sm6560972a91.25.2025.08.17.21.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Aug 2025 21:10:13 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Len Brown <lenb@kernel.org>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-acpi@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v10 01/24] dt-bindings: mailbox: Add bindings for RPMI shared memory transport
Date: Mon, 18 Aug 2025 09:38:57 +0530
Message-ID: <20250818040920.272664-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250818040920.272664-1-apatel@ventanamicro.com>
References: <20250818040920.272664-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for the common RISC-V Platform Management
Interface (RPMI) shared memory transport as a mailbox controller.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 .../mailbox/riscv,rpmi-shmem-mbox.yaml        | 124 ++++++++++++++++++
 1 file changed, 124 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/riscv,rpmi-shmem-mbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/riscv,rpmi-shmem-mbox.yaml b/Documentation/devicetree/bindings/mailbox/riscv,rpmi-shmem-mbox.yaml
new file mode 100644
index 000000000000..3aabc52a0c03
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/riscv,rpmi-shmem-mbox.yaml
@@ -0,0 +1,124 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/riscv,rpmi-shmem-mbox.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V Platform Management Interface (RPMI) shared memory mailbox
+
+maintainers:
+  - Anup Patel <anup@brainfault.org>
+
+description: |
+  The RISC-V Platform Management Interface (RPMI) [1] defines a common shared
+  memory based RPMI transport. This RPMI shared memory transport integrates as
+  mailbox controller in the SBI implementation or supervisor software whereas
+  each RPMI service group is mailbox client in the SBI implementation and
+  supervisor software.
+
+  ===========================================
+  References
+  ===========================================
+
+  [1] RISC-V Platform Management Interface (RPMI) v1.0 (or higher)
+      https://github.com/riscv-non-isa/riscv-rpmi/releases
+
+properties:
+  compatible:
+    const: riscv,rpmi-shmem-mbox
+
+  reg:
+    minItems: 2
+    items:
+      - description: A2P request queue base address
+      - description: P2A acknowledgment queue base address
+      - description: P2A request queue base address
+      - description: A2P acknowledgment queue base address
+      - description: A2P doorbell address
+
+  reg-names:
+    minItems: 2
+    items:
+      - const: a2p-req
+      - const: p2a-ack
+      - enum: [ p2a-req, a2p-doorbell ]
+      - const: a2p-ack
+      - const: a2p-doorbell
+
+  interrupts:
+    maxItems: 1
+    description:
+      The RPMI shared memory transport supports P2A doorbell as a wired
+      interrupt and this property specifies the interrupt source.
+
+  msi-parent:
+    description:
+      The RPMI shared memory transport supports P2A doorbell as a system MSI
+      and this property specifies the target MSI controller.
+
+  riscv,slot-size:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 64
+    description:
+      Power-of-2 RPMI slot size of the RPMI shared memory transport.
+
+  riscv,a2p-doorbell-value:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0x1
+    description:
+      Value written to the 32-bit A2P doorbell register.
+
+  riscv,p2a-doorbell-sysmsi-index:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The RPMI shared memory transport supports P2A doorbell as a system MSI
+      and this property specifies system MSI index to be used for configuring
+      the P2A doorbell MSI.
+
+  "#mbox-cells":
+    const: 1
+    description:
+      The first cell specifies RPMI service group ID.
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - riscv,slot-size
+  - "#mbox-cells"
+
+anyOf:
+  - required:
+      - interrupts
+  - required:
+      - msi-parent
+
+additionalProperties: false
+
+examples:
+  - |
+    // Example 1 (RPMI shared memory with only 2 queues):
+    mailbox@10080000 {
+        compatible = "riscv,rpmi-shmem-mbox";
+        reg = <0x10080000 0x10000>,
+              <0x10090000 0x10000>;
+        reg-names = "a2p-req", "p2a-ack";
+        msi-parent = <&imsic_mlevel>;
+        riscv,slot-size = <64>;
+        #mbox-cells = <1>;
+    };
+  - |
+    // Example 2 (RPMI shared memory with only 4 queues):
+    mailbox@10001000 {
+        compatible = "riscv,rpmi-shmem-mbox";
+        reg = <0x10001000 0x800>,
+              <0x10001800 0x800>,
+              <0x10002000 0x800>,
+              <0x10002800 0x800>,
+              <0x10003000 0x4>;
+        reg-names = "a2p-req", "p2a-ack", "p2a-req", "a2p-ack", "a2p-doorbell";
+        msi-parent = <&imsic_mlevel>;
+        riscv,slot-size = <64>;
+        riscv,a2p-doorbell-value = <0x00008000>;
+        #mbox-cells = <1>;
+    };
-- 
2.43.0


