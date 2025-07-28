Return-Path: <devicetree+bounces-200132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5293FB137B5
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 11:41:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51C463BB20E
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 09:40:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB4CD25393C;
	Mon, 28 Jul 2025 09:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="P9SRYLmP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281387DA93
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753695670; cv=none; b=lh5XbuYj6+LcUh4IziMuzUoIDG7JLp1LnrujZu6gJpj3mQBKBjLb9I4Fnun1WWSnAbCxmcge+FnTtx6w3TZJkDdLihYXGshyPM7qfNxQMyV8UdybIbKuIfU1JgTHJSuqXMs4D0FMrfFs26vil5v8XB5BXSrgAeZRAAZYfCezncc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753695670; c=relaxed/simple;
	bh=B3l9G9xHfhvz8EaPHO3ldfTP94vcz4sc4fSmpOQNlnQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CT2rViiifUkGNVCl4q3WV8xYPL544MKgYLwcdwyFd5n5XQrPLkdaqKL24R8FL5an2YZkEEaKGJQpGhvQYIQGpuS4mtu+GqnBP5KZio+URq6cJAsRx0bqpsrxLIjMDZcM0rbj3J76ieruA/ZzeELMMjqvGIyzyrdGxGx8drGyPyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=P9SRYLmP; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-3190fbe8536so3781910a91.3
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 02:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1753695668; x=1754300468; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ziNNelNAtU8Lu0O2/2Qc6bW/trdK9/SPi3ZGrwyyiyE=;
        b=P9SRYLmPNTb9GFAgQQVRm0jb+9WOQlbv4/GstcEDwi9/3ox6m5tIgXWEsJnq54LVc0
         uBlYXqg8VZOyM3ui26gGD6LSOdTCJ9ItCeZzgDRrSz2eXGzp3tuevL6Inb0/Y7wvU9fm
         iY1b0A7/gpkp4l62E5RB6BqeRUpOz1fM9ZcEwQ6FB3ZqtvImsXjoXRqI//0XGKVlAv6z
         rXn7ME/xf3hNdWK8mXBa0IUAGUaKkYjen+Ep4FP3PMyKNLInm8bVs9gm3U+3yncg6Qcn
         T74XIcMc2mt/YC/lMyYQA6TFc2X6V63re4BW7SseEQax9Czdic1i9PRrd2TEIedoRdqL
         37GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753695668; x=1754300468;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ziNNelNAtU8Lu0O2/2Qc6bW/trdK9/SPi3ZGrwyyiyE=;
        b=kbPp4QrYmsFvvAdNzXceAwaY+etA53aTsxXSOCVPdwTcAd2LDWL4/m2+cI6KOXa7Pm
         JBatXWWN9ekt1ZoqxA3pzusTR43Q/gpzDRc1AHOfwJzeUNk7w0yn/xwc+XZpuCbBRbb3
         qqAM5r8SqzYQc6ifVlPzBhW6ixmikP85dsEzTCb1h4WOECnNawuNAMvAl9/q4fa5lfKA
         FwSErJikSZ1ihr/AfZcmx8YFgS2rM91UWJCIpX/d1cvgc6QjsNvJhbyAclY6cPdu10HE
         IayujjTvDEwgE6RGOvl8hUaUlN8Q3+AJdk9xmd/mw86J8yfgeOZjd21VHZQzfA8lx+mW
         OjNg==
X-Forwarded-Encrypted: i=1; AJvYcCUxtZPpRCNg9RqEC630Cl0v5j15GLbXEq6IQbuOwYPiHmK5bh+T9svU5xPupqL0x9YA2gKoQljd+g87@vger.kernel.org
X-Gm-Message-State: AOJu0YzVuxF7JiB6oDpWxKMGAOP1GYSQzKdJvXr1qKCNHCko3srTO3Hw
	m1gLoD+WPIv/bUg6X1ZuAqYYM7FBTJ6OXOWdCfMZINWSa79FS5jRVNUDC4W4ulzxPCY=
X-Gm-Gg: ASbGncupQDRoDrl39P7VMmKNGN7xOYnB7S40htg7BXMKrxRM4mhijVUdkaMVfaEnJoU
	9aPntK0601gRFZabLwBsUjo/ul5qIjyKtvZMfbQvNWHFIhHI91HBK/PocVS488wecZOsYZcf7iH
	PCOsNdkGy+A0zXchDqtwmSLNyMyrp9Cjr6Y4y2lp5SxvTAhQI2qrCEt+weB3UzhYAULm8oA7Qg2
	t9kpZz1Nh2ozlxuYi741QjbsGldvYRjEoDiHmrnUyOuRSNHiOhGORGLI8Rlihn76gFBW5aC3DsA
	IqQTXTpjzGcWu3kGodEbefHCYULx9i1ETCjxFOX5Ok7yVAyM6fRsXx0tTFkBY3mEBcElWDZN4cX
	IQ2Zzh9fa4EJrxioPQKZ4Wo8tuJpAMVP6r+fa5FAK7Rfivle0G2Jy4qkdtCyd/w2VqMEojm0=
X-Google-Smtp-Source: AGHT+IHEr8CG7nl3bZOzKIacTPyWTw/OgW8BgxiKylSqn49CvgsxlgWeDnJe16LwuelGnGiskjDCEg==
X-Received: by 2002:a17:90b:4e84:b0:31f:1715:a6e2 with SMTP id 98e67ed59e1d1-31f1715ae77mr387658a91.21.1753695667978;
        Mon, 28 Jul 2025 02:41:07 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.19.28])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31e832fbf99sm5396230a91.1.2025.07.28.02.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 02:41:07 -0700 (PDT)
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
Subject: [PATCH v9 01/24] dt-bindings: mailbox: Add bindings for RPMI shared memory transport
Date: Mon, 28 Jul 2025 15:10:09 +0530
Message-ID: <20250728094032.63545-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250728094032.63545-1-apatel@ventanamicro.com>
References: <20250728094032.63545-1-apatel@ventanamicro.com>
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


