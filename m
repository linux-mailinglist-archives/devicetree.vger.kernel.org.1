Return-Path: <devicetree+bounces-184579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D7DAD4B6E
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 08:23:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F6F31885676
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 06:23:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C603227EBB;
	Wed, 11 Jun 2025 06:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="C8GQq+W+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB7317A58F
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 06:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749622984; cv=none; b=XaD6sBbX4iNNPEmthkQJuwAmnlnBvPMu2NZ2p4nvwv7qrm03CNBUNOzu3MGW8BjwNAaADLCJa/ayQ4BAgjF321xpTCmvaBRl1XqAQ5Dh7frl5E7HpIUymy5nadmeAcKBA4zEVswS9ehSF/tFniXMWaAYZc/dEwjMwrbnGPNVdmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749622984; c=relaxed/simple;
	bh=8d/8mwsmm2Bj8oUzbynlYQ99Qu9ru7hjPXyeNTbxR2o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BItyCHy17gydGLtkUVAiRWVJVQTd0rz96kf62SYHKANyfUjuzJOlwxqnI+Vyici5QtZKz9UOwsn0rI6VxDe3L9zZYeR4cLpIM9LYnsx4/3avOJc7GUy8EpBAXmlMm5O51wFMA3oWEbJuC+TamQWoTH3phoWCtQDNluDid+YxT/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=C8GQq+W+; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2345c60507bso44282555ad.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 23:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1749622982; x=1750227782; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FCnkfIAKufTtsXTirgU1KTm9z6frMQCb5vfgSfK41j8=;
        b=C8GQq+W+Z7V+j+Qzx3kBTT3M8nxyp1d8bx/gv0rQc84oxbx2uHB10qv0s2yqG7BlXS
         prnyDwqIAuJqx1o73SAw1JyKPhwEB2Mf7YciRmAgMrfC4TEGjP5CN/eEtz82nPU5XU0M
         NsZVOqIFvauq/O+ejdLYDM/6FPYSiBgs4BByYE5HMCMNSQrHo/v2eJCjxGr+iqtZOz2D
         J3xBBkIgYLYfT/NO8OQvyVMohvw1/9N+FuU2ql/D7+25EQObuEO1OoJ5yx/mnMzDCf1d
         EXKiI/v6X/0/m8KAL5dIXIxTLo6xWPYNwCwIMMF5GrnehLYkKEpfj9WaHpPBMFyjcQk8
         eEeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749622982; x=1750227782;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FCnkfIAKufTtsXTirgU1KTm9z6frMQCb5vfgSfK41j8=;
        b=maGa+E9iEt2R/52cADIZ/Am94DuT3HWs4L9G+88NvNzFqbyp7NnIDWJqZVV2sL6ieC
         AK9zqbRmQyAzHb7HR6CHUfG2rN+vtP7Ndoun0Zrd25AxCXOA430P4sFO6IsteqoF7Mub
         pgTD88koe/gtbG0z8i7tVtIMBqCaUxLTD1cga8bPyRw1nP1ubBeKkVhhLp9rXJQMRKyt
         +h3LmfUiJGJy0DHzsSz3qaLdJv2gLqaHr+rcISwrqmEa7N6Fx1ezKYFQgg+Mf0+Hec3R
         Z0OI8Uypq64/lfH9WhluECssaH1jClb9fVl+Yp4eMJkK0KGsqoxeytB2B9PzBoGvPRB/
         21Ew==
X-Forwarded-Encrypted: i=1; AJvYcCVwu/iAbzAZzHuQ17wHVcPfLLaFrEDQQpYZRNOY9p7WKRacpt/szNHhYAgEzzj4DBo9rcJpJIEZ7owY@vger.kernel.org
X-Gm-Message-State: AOJu0YwlUthVIllasKe7kr5nsjIUqz8/KL7+E+F9iCLjbOHu7eBjMjfX
	ngBPdLQJCFWKRcZcJn/v2+IfipRp686ZZMylr3Wh3ROZ+AQzd2bsrd4W+ZnYxsucIpI=
X-Gm-Gg: ASbGncuO3efjS+yG+A1x7caH6Qz9wVHi5GXxuSq+MTO2b3c858dqykIE6F6OQcMfeql
	PKPOkRtXAbLiIAGEnAgXi+jDvfVAvhHu4pYuMzgbtv9RJTzyuHiCdM4xo5lsYwTyspbG5Oq3cHG
	g4zAk7Ukhbo2w8YvTe+afUAZdbMBf0ngnFX11SJWdToQuxU+laVxps4ex8aRn865BNgywoc/fl2
	O/YCc7RZry51oHBMNmM5QIPo6/yqH8POFByiL6KKHBz69RjnOvkhQa4haXZER1glODfNgNOUfal
	Kw0n22tQSfE5Vg8qTjf8WY/kjN970aYdORnexiC+RH4JfwNaC69UdhXbHOjGgcEFq65XUMeuz2p
	FzqsEaJAfNIB2x/vFGYiElkQKxA==
X-Google-Smtp-Source: AGHT+IFflCobAzZ7DXGfkuM4PqfzrltZgkya36IU2M6LH+WC7zfTuPjuPy+rud5tVoTqrkTwZZw4yA==
X-Received: by 2002:a17:902:d4c1:b0:235:ef87:bd50 with SMTP id d9443c01a7336-23641b16639mr27978465ad.45.1749622981638;
        Tue, 10 Jun 2025 23:23:01 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603092677sm79976295ad.64.2025.06.10.23.22.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 23:23:01 -0700 (PDT)
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
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v5 01/23] dt-bindings: mailbox: Add bindings for RPMI shared memory transport
Date: Wed, 11 Jun 2025 11:52:16 +0530
Message-ID: <20250611062238.636753-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250611062238.636753-1-apatel@ventanamicro.com>
References: <20250611062238.636753-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for the common RISC-V Platform Management
Interface (RPMI) shared memory transport as a mailbox controller.

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


