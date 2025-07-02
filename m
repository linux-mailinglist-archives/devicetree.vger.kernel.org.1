Return-Path: <devicetree+bounces-191841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3385BAF0A3B
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 07:14:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1DC373A7E01
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 05:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE3FF1F3FEC;
	Wed,  2 Jul 2025 05:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="CUEbXs1w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2563A1F3BBB
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 05:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751433256; cv=none; b=B+HZ3LQQIOgOHIbMs5S2TpaHW4aRoqLkSNi4h4K+lkfghs8Py9Eilv0auM3M/aLUp71mW1vG9UHE7Quk5OFRGbCq+bSfWRfJ3ERwTfI8nLQ2PbuklZOe/XvQ7XfC4vRYtCP2MpUjzNoSRZC57QF6MdDtYGqC0M9woTDQzRnm+zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751433256; c=relaxed/simple;
	bh=B3l9G9xHfhvz8EaPHO3ldfTP94vcz4sc4fSmpOQNlnQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CwPrAhGRzbbj7na2n2Jlm8P/0atv+zYFluW9eUjrJe64CB6fUKz+UHmXHiz8TXN/AEhfmY+QN+ubox8pbenqPlyqbm6hXR9243RUUWpiQwA2VkXvSPNkbxLgUB9rz7hNdF/zCo5+q2rROpjBv4OV3s9pImfrWMgINR4kRIovDoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=CUEbXs1w; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-237311f5a54so36406935ad.2
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 22:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751433254; x=1752038054; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ziNNelNAtU8Lu0O2/2Qc6bW/trdK9/SPi3ZGrwyyiyE=;
        b=CUEbXs1wfPVpM5SlMDp6JSbwtfqmuKO5QY0gW/x9Q84ErxhUZ/j+nCSsTzoOJQ/7eC
         OKnxh7Xu4nVxy6C1CIr3farra+tXG7q5z9v3TuqH3pFAbv/ViQ6SuSbrCDkxTupcbbdX
         67/sXNCd3rNMUnMmRuqPaPKmlbwQ2TLuzmTI/b2fULZQ8uKFsDPNuc1ZjT1KQjMVc/ea
         sOEIfbei5e7wu3hzo4DWWqDP+qhQthRagePdeO2lFQ6iJzfEZXTSmwgwsTVhKN67Kkmx
         1g5FW+THzXQ9hDIS5t9P146cKmaivU5Mq5UYhgR6QU0/o6iS/RX3UvZGtZJhAGkuYZLL
         cOzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751433254; x=1752038054;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ziNNelNAtU8Lu0O2/2Qc6bW/trdK9/SPi3ZGrwyyiyE=;
        b=aDICcGm3xUr0FXjDv9nX+U6M2BAmsuXk7/yRftnsXSTxTOjW7cTTbiE8YXqoMCCaNl
         iFcAI4etfySjhI4cWPUZLDuvgBcEMd6CN4XLhC3o63Q+8xNNS9x1+UdKgm9kPteNhc5J
         xHSmFqBfZtiIAWPC9PNirSylCDSZ065v5mEMo7jP5mGFx6xrBRzgQrS1FL8j6IgjDfK+
         O1HZO8BBZF20kb4fUTQYwxM3mVaW1mmSFwtboRXJi3V7JzeKxK9MzO0WKdA58EjWmqkX
         BvabMpYQKzHlqm+uHAF6ZcCdvRvIAfJScQ5fb2FsAM82vxSctde4uzbRBg51quAQXzEN
         sDtw==
X-Forwarded-Encrypted: i=1; AJvYcCUalAhrb6Mg8hCn2SdAI6nKZnBXpvG2npXzLnaypNX5M7O2AOb07ctN0SuaXlqOyeB394fK10vJSIzG@vger.kernel.org
X-Gm-Message-State: AOJu0YxGfeKl57AxGCuq9+nxf744mfTHwRUGVJUUOa991ysA/jR+qvp/
	/4U+tksSYcfxN3IctIOwj/x2Px/KAxl69UJz+84nR/+eqD6LQwwibNHwhyk5UMsvX9U=
X-Gm-Gg: ASbGncsjUk6DDJZUVQRqwPoR17EAk6PgzaCDQC4URBU4jz8+Cjy8hJgB+1bYya5tWF9
	H1PM8fUROC3oDfCgbYs7NsldoV5uwNEfEPZ/vo5Wy4VDzoBdp2IdMVGRcxjmy/8Y/Xt5Grtiyex
	j3m8RudVealSESdWnG0WT/dzEAV+1PWyiztG5OcDVkdLhTrdF/fRGrsPY7qCG0vKqQMwaOi5cE2
	iMmsd9sMRkjZ7JhzYsVabpiOxmnbIWqalmksUvaiNQat27OP/1LIIK6/7KLIxlIJakbK1eKI4Fo
	Gc2eBpI/0/jGog57HY5TBTqCaSRQnl/7mxPwKDggtfCKlFsw5w3PWyE8gJAgoPwOY8si051HTbi
	bUtipqNhexMO8U8gF
X-Google-Smtp-Source: AGHT+IH1zQLMeLZCjz953CYwcFQdb4n2Jpuxqc1/A4tWexX1v4V8AZfDafl9hgJbDhtKkT2fEqefSw==
X-Received: by 2002:a17:903:1aee:b0:21f:4649:fd49 with SMTP id d9443c01a7336-23c6e5e0440mr23121485ad.49.1751433254208;
        Tue, 01 Jul 2025 22:14:14 -0700 (PDT)
Received: from localhost.localdomain ([14.141.91.70])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23c6fe31933sm4719595ad.220.2025.07.01.22.14.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 22:14:13 -0700 (PDT)
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
Subject: [PATCH v7 01/24] dt-bindings: mailbox: Add bindings for RPMI shared memory transport
Date: Wed,  2 Jul 2025 10:43:22 +0530
Message-ID: <20250702051345.1460497-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250702051345.1460497-1-apatel@ventanamicro.com>
References: <20250702051345.1460497-1-apatel@ventanamicro.com>
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


