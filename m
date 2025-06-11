Return-Path: <devicetree+bounces-184589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3686CAD4B87
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 08:25:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AEB5D17A1C7
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 06:25:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8BA6230BDC;
	Wed, 11 Jun 2025 06:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="BQURl9rx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434792309B1
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 06:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749623063; cv=none; b=M13MptqZOZKoZjsVU9pJDw8cDB3/uj9r8Gs1Xd/wq5FHWW3YIUT97k1TGZE7pHJoV8zW2nSL15d4xy/qtZDWVGkv8txJY2NVIC0NaU1UP3XWJHv6XeyaLZGeCs48FtkM2XwxYw1hdp+KWNT+Bx54OOOaZYi4sd2WSkBCAANmiNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749623063; c=relaxed/simple;
	bh=mi0izh3V1w9zIu9t+K/AZ06nOfi2ewD/Fyi9Z/NlWW8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HGkHEe1v6nGBeYv43wqzV+rZ0r43G3pwburyJeaLk76ShV+1zNgwVmiEivyTl7hoAYZykFIAiGvWsFfLRcY4YeTtj42bMv0UTYNPKbVi2xZMsrjoFb9Gqweu7yixzdz25/N82X47pUiRZyXuYEXx65as7Grgj50Rd0bzL7FMgwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=BQURl9rx; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-313154270bbso6498067a91.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 23:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1749623061; x=1750227861; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ouV1lfFQuaSRkTiMApd+jhohkzp55I7SRD5LPqlFAqQ=;
        b=BQURl9rxH41i8jWffVV62xJwi0LH0e93chV92Nwbv8C6uKn5BGyPPqW9GveJAFfVh4
         1uzcI0mAEecmCtkFbLMTAam3tWip1swqn4kl45h+d2aEFvcyMm1c6WqeJKTiYFxwIxME
         Lq+yotyqOzsH3ntxdemRijB866dWHv3Jmvjul/xKQ7RZg1KyJ5AC6p1RYqFIZVngGc1a
         XwXWkM3pqZSE0z1zRgJlTSm4YzYKQjXfg9EJgNaCfJ5VWdi4GquZYmyC1eT9GKWnIQIB
         PraHXFXgfV4ihkDQIrZjh6W/TWQ2oHsyk5tOQ5XrI5ne/ypRX9luz4RmGiehvBZ3LHvU
         7BmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749623062; x=1750227862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ouV1lfFQuaSRkTiMApd+jhohkzp55I7SRD5LPqlFAqQ=;
        b=feCfEQC/nJgiNc/V8CjZJ1vH+TL+Gvqvptytj2qk9N5Sm+KozI6dtfgqIV3KRsZ8/Z
         BVl6D2HnulCrylN62bYU9ce749yJoLrdz71fBapZBv3nYS5vH21dv8CSkDlxsJQta3r4
         nnHBpdgoOoDQbdapP6yZDv9siy7pq8JLlwq8YBVq1+nQYbxN2EcmKe9ArIPHRwkGCMSf
         RYbDRAo1smG17i5JzzGRqv76s/QEaqOJpeuHwGetc68oUeGM4YMCWFo1+EfIEnkUIQ1o
         k1YsxuT2FUDn7Mmyq4M2kJl39cMAZEBd2cmJZFuG/iXVqexCJZVpZh5a3jX+vD7jjo4r
         ML+w==
X-Forwarded-Encrypted: i=1; AJvYcCVIIdki3EJ/3Uu3C9UQN4naRMVu1hbQKGKDF5shWpIaQI8gg3VG26UCnUhdB21ToZhm168msdEOIdq+@vger.kernel.org
X-Gm-Message-State: AOJu0Ywqthpgovv7su2gQKACV5Jvdbg5CNp69ojnYfLz/XBIiumeUNWq
	4St1u7TY2fkTA0bsczuqXLPJDkpN//rS0Pa4gM2amVHxQK6VCPg8r2bfTkf1+FVNq1A=
X-Gm-Gg: ASbGncumZ8yHh35x1LT0zvhVkCbh687VKpThXEHNQrnSig3DjeUbNsbcjuuNOPzTSr5
	RS6rayok5oJiKIa2+nH0GpLRSy1qZ1345Np/ENl8COofx0NkB7LpEsfu6qtGTas8zzxoRs3RC2K
	W3XjxmjvqLdnX0BqikljbbyAt71GA+yBWS4aGftDj+CxybLfbre27qDnrGSo93isa4BEK7r1Mbt
	I+mz25m8ibM1uyZMMp3febJFDJvSZCb307G33MjEVCjszLtFHFVCSjiLwBCn0qERpi5qNa8Gs8u
	ww0cSki/9PwHwK+IUarGzDNeWjiGY+tD+FWg9sCv9jhPPvfp3CcB8rUQmbWcNDdZ2xFUzdlt4i6
	zLrYeaRxqorCbsgT/0KcKWfAf8A==
X-Google-Smtp-Source: AGHT+IF5xkQyWQjwsl09XW4wn7LAnApaVtCZljCguqKxttJEhx2sYRFEJxu4xU+pC+wX1ttAHSWSbA==
X-Received: by 2002:a17:90b:1dcf:b0:311:d28a:73ef with SMTP id 98e67ed59e1d1-313b1ef5898mr2232034a91.10.1749623061442;
        Tue, 10 Jun 2025 23:24:21 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603092677sm79976295ad.64.2025.06.10.23.24.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 23:24:20 -0700 (PDT)
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
	Anup Patel <apatel@ventanamicro.com>,
	Atish Patra <atishp@rivosinc.com>
Subject: [PATCH v5 10/23] dt-bindings: Add RPMI system MSI message proxy bindings
Date: Wed, 11 Jun 2025 11:52:25 +0530
Message-ID: <20250611062238.636753-11-apatel@ventanamicro.com>
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

Add device tree bindings for the RPMI system MSI service group
based message proxy implemented by the SBI implementation (machine
mode firmware or hypervisor).

The RPMI system MSI service group is defined by the RISC-V
platform management interface (RPMI) specification.

Reviewed-by: Atish Patra <atishp@rivosinc.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 .../riscv,rpmi-mpxy-system-msi.yaml           | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-mpxy-system-msi.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-mpxy-system-msi.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-mpxy-system-msi.yaml
new file mode 100644
index 000000000000..1991f5c7446a
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-mpxy-system-msi.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/riscv,rpmi-mpxy-system-msi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V RPMI system MSI service group based message proxy
+
+maintainers:
+  - Anup Patel <anup@brainfault.org>
+
+description: |
+  The RISC-V Platform Management Interface (RPMI) [1] defines a
+  messaging protocol which is modular and extensible. The supervisor
+  software can send/receive RPMI messages via SBI MPXY extension [2]
+  or some dedicated supervisor-mode RPMI transport.
+
+  The RPMI specification [1] defines system MSI service group which
+  allow application processors to receive MSIs upon system events
+  such as P2A doorbell, graceful shutdown/reboot request, CPU hotplug
+  event, memory hotplug event, etc from the platform microcontroller.
+  The SBI implementation (machine mode firmware or hypervisor) can
+  implement an SBI MPXY channel to allow RPMI system MSI service
+  group access to the supervisor software.
+
+  ===========================================
+  References
+  ===========================================
+
+  [1] RISC-V Platform Management Interface (RPMI) v1.0 (or higher)
+      https://github.com/riscv-non-isa/riscv-rpmi/releases
+
+  [2] RISC-V Supervisor Binary Interface (SBI) v3.0 (or higher)
+      https://github.com/riscv-non-isa/riscv-sbi-doc/releases
+
+properties:
+  compatible:
+    description:
+      Intended for use by the SBI implementation.
+    const: riscv,rpmi-mpxy-system-msi
+
+  mboxes:
+    maxItems: 1
+    description:
+      Mailbox channel of the underlying RPMI transport.
+
+  riscv,sbi-mpxy-channel-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The SBI MPXY channel id to be used for providing RPMI access to
+      the supervisor software.
+
+required:
+  - compatible
+  - mboxes
+  - riscv,sbi-mpxy-channel-id
+
+additionalProperties: false
+
+examples:
+  - |
+    interrupt-controller {
+        compatible = "riscv,rpmi-mpxy-system-msi";
+        mboxes = <&rpmi_shmem_mbox 0x2>;
+        riscv,sbi-mpxy-channel-id = <0x2000>;
+    };
+...
-- 
2.43.0


