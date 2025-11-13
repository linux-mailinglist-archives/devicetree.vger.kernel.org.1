Return-Path: <devicetree+bounces-237895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B65C555B3
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:54:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A20F93B9192
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6059F2F5467;
	Thu, 13 Nov 2025 01:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="nbZev6N0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB432F3624
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998450; cv=none; b=KNqAmYxZ0E+k5crhh4vWPqzI/ZZU6wztoJ8EQTnZqAz+11diRSzD8wUkQmZ9mHCnzV4UnVTAjzheeoMverLmL0Qr9cYZ/6v0N4hHrPLDGv2eitIFz9th8O/yktQDwDJoDilKjimpTPgJaiJw3+iJQPue7ZgGv8doFusjwEINHIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998450; c=relaxed/simple;
	bh=EeiR5aA490hV6LpATsKJeC72aHRgLy5iQoQTBEKLnR4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VcnQ4NCoWPlcMF0yiDUoFPAPhMq004K6zVQaHkmFs7yJg3KTWwahyA5JiTPEV0u03DeAHIFpYSHWY3G5wxdMbe55ELU5on10ddJA/6CgqlooSCdKkW74kh2suYcwSnZKngDD2lOZJhZr9Lrbi4kizYCz8RKxa2whVsvYNXGb2ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=nbZev6N0; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2953ad5517dso3384915ad.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998448; x=1763603248; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jKST6UqYk+QaqGuOiC3PtA1F5GA6hglNlMJ+dkxeIto=;
        b=nbZev6N0/r8VeOR2iIH4PItxtfl5KwsbkXNQXnNIe8orNKjaA0Yr02xcjW4XcDUQJE
         HWpxHINSqOyfkGieXHvcC6Js2AwPBaHdqK40ycmrf+lWQ+0n9uNG1mxW0Y/ZwKXobXSq
         MySl2+rQTQuKoRoMVybAY+BZz+TJ85AruQaLv3L+FnHJf1rXLXb08bpP8k0WFh4T0WGg
         Y4Coov0DG/Jm+1EDIIelzU2KyLEnU8aqZIwPmwr+Haqb2K0uv/Kbi2EgZhITo2AyFIt6
         QhajPifoNkq/qnyefUNyQsiEKZNcVVkPVl3yDnkG+vfl6abXb0n/4TZY5vGJZPVeOtlp
         WSaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998448; x=1763603248;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jKST6UqYk+QaqGuOiC3PtA1F5GA6hglNlMJ+dkxeIto=;
        b=gfU14UjelcG6rOzokcc2WwcJQoD1ONYS5+0fQhpy9DwssG0XD1hThxliTEXl7ZHN0e
         R9ZS3rJTmC+5T1stBulcuOHj9D2UEWa0NXGRWbCKxr1KkmmesTwRwF1Wqh7eakkK+nUT
         Y99/JXQIn2keJnJRtRlsM9JNKw57Fn5jkb6U0Y8m37j8AlGQxxKwxzsEWQhJKDaCfLO5
         gf+8eHyfoBX0/6gEJIOfeVO1UDimeU9D+OWi2scuHSTrYX5LMaE5LH7w5WU4JoQGRtfc
         ecPzMxzmQK+Cns7eWv21xj9UEK4I4Z8vgTx+RaTTlTQPxJFf8KGIwIVLl6bLrkJBNO8T
         WB9g==
X-Gm-Message-State: AOJu0Yzz0p8cGAvLqR5Mv/bepD8HEMDTC94cEanuW8MsAfRyi0MQ0zKv
	Qw6I/+vYGfahG/NJVRwKkZso0bwhm50rn5HH2bTxvxh5j4iSrMm6COMEtfT8QL9iio+ROz/18EE
	WRQfC
X-Gm-Gg: ASbGncsUiRxM1tDHFo0GsdckWk3UrayTPnRsZDnIg3INBAOLL+135KU/ONfkhuRm9mL
	gZ1zKUR0zqLtatozybcbYcziNW/esQ2jxLW+x7nv+XEoWqHPyPMo0GLoQYC7vteqHH6+xev2PuD
	4mt4EvrAnyF3ZP/6AlDhNjyZX5W36nvtCm5XDEBPYYvl8H9KcQMVDrwHf4PZXH/Du/h5hYC4KEq
	2fSudD7Nn7+9wZc5dbUQbqyhpLctRzggVPNElXnDJ+gqdLVkwI+EYPNOefIOpoRXCRhFGFywt1z
	Czoa/kPoWzq7oFTL9iEexqO5LxmHZUHgbAocMkDfvIi7nsjop+/kOqoryYA16H7EXEL3fSlQq5T
	gOkdycCDPIpbZErLv7J+PFDWmHGFvhjIaM52LEJ2udIEcFxOyCts/7p40GxoyfvxKZH3rp7xqhZ
	+iModIBIw17ntHy0pivKk4CA==
X-Google-Smtp-Source: AGHT+IHEN2CLBCBQn7bcySaSxAzHnvyn3lSrJ3SkfwuCWTMT+513mFJW8h5K2OPvmFqqAe8aAa+xIw==
X-Received: by 2002:a17:902:cf05:b0:295:59ef:df96 with SMTP id d9443c01a7336-2984ed923femr62192415ad.13.1762998447807;
        Wed, 12 Nov 2025 17:47:27 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.47.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:27 -0800 (PST)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	linux-riscv@lists.infradead.org,
	Andrew Morton <akpm@linux-foundation.org>,
	David Hildenbrand <david@redhat.com>,
	linux-mm@kvack.org
Cc: devicetree@vger.kernel.org,
	Suren Baghdasaryan <surenb@google.com>,
	linux-kernel@vger.kernel.org,
	Mike Rapoport <rppt@kernel.org>,
	Michal Hocko <mhocko@suse.com>,
	Conor Dooley <conor@kernel.org>,
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v3 19/22] dt-bindings: riscv: Describe physical memory regions
Date: Wed, 12 Nov 2025 17:45:32 -0800
Message-ID: <20251113014656.2605447-20-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251113014656.2605447-1-samuel.holland@sifive.com>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Information about physical memory regions is needed by both the kernel
and M-mode firmware. For example, the kernel needs to know about
noncacheable aliases of cacheable memory in order to allocate coherent
memory pages for DMA. M-mode firmware needs to know about those aliases
so it can protect itself from lower-privileged software.

The RISC-V Privileged Architecture delegates the description of Physical
Memory Attributes (PMAs) to the platform. On DT-based platforms, it
makes sense to put this information in the devicetree.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v3:
 - Split PMR_IS_ALIAS flag from PMR_ALIAS_MASK number
 - Add "model" property to DT binding example to fix validation

Changes in v2:
 - Remove references to Physical Address Width (no longer part of Smmpt)
 - Remove special first entry from the list of physical memory regions
 - Fix compatible string in DT binding example

 .../bindings/riscv/physical-memory.yaml       | 92 +++++++++++++++++++
 include/dt-bindings/riscv/physical-memory.h   | 45 +++++++++
 2 files changed, 137 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/physical-memory.yaml
 create mode 100644 include/dt-bindings/riscv/physical-memory.h

diff --git a/Documentation/devicetree/bindings/riscv/physical-memory.yaml b/Documentation/devicetree/bindings/riscv/physical-memory.yaml
new file mode 100644
index 000000000000..8beaa588c71c
--- /dev/null
+++ b/Documentation/devicetree/bindings/riscv/physical-memory.yaml
@@ -0,0 +1,92 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/riscv/physical-memory.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V Physical Memory Regions
+
+maintainers:
+  - Samuel Holland <samuel.holland@sifive.com>
+
+description:
+  The RISC-V Privileged Architecture defines a number of Physical Memory
+  Attributes (PMAs) which apply to a given region of memory. These include the
+  types of accesses (read, write, execute, LR/SC, and/or AMO) allowed within
+  a region, the supported access widths and alignments, the cacheability and
+  coherence of the region, and whether or not accesses to the region may have
+  side effects.
+
+  Some RISC-V platforms provide multiple physical address mappings for main
+  memory or certain peripherals. Each alias of a region generally has different
+  PMAs (e.g. cacheable vs non-cacheable), which allows software to dynamically
+  select the PMAs for an access by referencing the corresponding alias.
+
+  On DT-based RISC-V platforms, this information is provided by the
+  riscv,physical-memory-regions property of the root node.
+
+properties:
+  $nodename:
+    const: '/'
+
+  riscv,physical-memory-regions:
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    description:
+      Each table entry provides PMAs for a specific physical memory region,
+      which must not overlap with any other table entry.
+    minItems: 1
+    maxItems: 256
+    items:
+      minItems: 4
+      maxItems: 6
+      additionalItems: true
+      items:
+        - description: CPU physical address (#address-cells)
+        - description: >
+            Size (#size-cells). For entry 0, if the size is zero, the size is
+            assumed to be 2^(32 * #size-cells).
+        - description: >
+            Flags describing the most restrictive PMAs for any address within
+            the region.
+
+            The least significant byte indicates the types of accesses allowed
+            for this region. Note that a memory region may support a type of
+            access (e.g. AMOs) even if the CPU does not.
+
+            The next byte describes the cacheability, coherence, idempotency,
+            and ordering PMAs for this region. It also includes a flag to
+            indicate that accesses to a region are unsafe and must be
+            prohibited by software (for example using PMPs or Smmpt).
+
+            The third byte is reserved for future PMAs.
+
+            The most significant byte is the index of the lowest-numbered entry
+            which this entry is an alias of, if any. Aliases need not be the
+            same size, for example if a smaller memory region repeats within a
+            larger alias.
+        - description: Reserved for describing future PMAs
+
+additionalProperties: true
+
+examples:
+  - |
+    #include <dt-bindings/riscv/physical-memory.h>
+
+    / {
+      compatible = "beagle,beaglev-starlight-jh7100-r0", "starfive,jh7100";
+      model = "BeagleV Starlight Beta";
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      riscv,physical-memory-regions =
+          <0x00 0x18000000 0x00 0x00020000 (PMA_RWX | PMA_NONCACHEABLE_MEMORY) 0x0>,
+          <0x00 0x18080000 0x00 0x00020000 (PMA_RWX | PMA_NONCACHEABLE_MEMORY) 0x0>,
+          <0x00 0x41000000 0x00 0x1f000000 (PMA_RWX | PMA_NONCACHEABLE_MEMORY) 0x0>,
+          <0x00 0x61000000 0x00 0x1f000000 (PMA_RWXA | PMA_NONCOHERENT_MEMORY | PMR_ALIAS(3)) 0x0>,
+          <0x00 0x80000000 0x08 0x00000000 (PMA_RWXA | PMA_NONCOHERENT_MEMORY) 0x0>,
+          <0x10 0x00000000 0x08 0x00000000 (PMA_RWX | PMA_NONCACHEABLE_MEMORY | PMR_ALIAS(5)) 0x0>,
+          <0x20 0x00000000 0x10 0x00000000 (PMA_RWX | PMA_NONCACHEABLE_MEMORY) 0x0>,
+          <0x30 0x00000000 0x10 0x00000000 (PMA_RWXA | PMA_NONCOHERENT_MEMORY | PMR_ALIAS(7)) 0x0>;
+    };
+
+...
diff --git a/include/dt-bindings/riscv/physical-memory.h b/include/dt-bindings/riscv/physical-memory.h
new file mode 100644
index 000000000000..d6ed8015c535
--- /dev/null
+++ b/include/dt-bindings/riscv/physical-memory.h
@@ -0,0 +1,45 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+
+#ifndef _DT_BINDINGS_RISCV_PHYSICAL_MEMORY_H
+#define _DT_BINDINGS_RISCV_PHYSICAL_MEMORY_H
+
+#define PMA_READ			(1 << 0)
+#define PMA_WRITE			(1 << 1)
+#define PMA_EXECUTE			(1 << 2)
+#define PMA_AMO_MASK			(3 << 4)
+#define PMA_AMO_NONE			(0 << 4)
+#define PMA_AMO_SWAP			(1 << 4)
+#define PMA_AMO_LOGICAL			(2 << 4)
+#define PMA_AMO_ARITHMETIC		(3 << 4)
+#define PMA_RSRV_MASK			(3 << 6)
+#define PMA_RSRV_NONE			(0 << 6)
+#define PMA_RSRV_NON_EVENTUAL		(1 << 6)
+#define PMA_RSRV_EVENTUAL		(2 << 6)
+
+#define PMA_RW				(PMA_READ | PMA_WRITE)
+#define PMA_RWA				(PMA_RW | PMA_AMO_ARITHMETIC | PMA_RSRV_EVENTUAL)
+#define PMA_RWX				(PMA_RW | PMA_EXECUTE)
+#define PMA_RWXA			(PMA_RWA | PMA_EXECUTE)
+
+#define PMA_ORDER_MASK			(3 << 8)
+#define PMA_ORDER_IO_RELAXED		(0 << 8)
+#define PMA_ORDER_IO_STRONG		(1 << 8)
+#define PMA_ORDER_MEMORY		(2 << 8)
+#define PMA_READ_IDEMPOTENT		(1 << 10)
+#define PMA_WRITE_IDEMPOTENT		(1 << 11)
+#define PMA_CACHEABLE			(1 << 12)
+#define PMA_COHERENT			(1 << 13)
+
+#define PMA_UNSAFE			(1 << 15)
+
+#define PMA_IO				(PMA_ORDER_IO_RELAXED)
+#define PMA_NONCACHEABLE_MEMORY		(PMA_ORDER_MEMORY | PMA_READ_IDEMPOTENT | \
+						PMA_WRITE_IDEMPOTENT)
+#define PMA_NONCOHERENT_MEMORY		(PMA_NONCACHEABLE_MEMORY | PMA_CACHEABLE)
+#define PMA_NORMAL_MEMORY		(PMA_NONCOHERENT_MEMORY | PMA_COHERENT)
+
+#define PMR_ALIAS_MASK			(0x7f << 24)
+#define PMR_IS_ALIAS			(0x80 << 24)
+#define PMR_ALIAS(n)			(PMR_IS_ALIAS | ((n) << 24))
+
+#endif /* _DT_BINDINGS_RISCV_PHYSICAL_MEMORY_H */
-- 
2.47.2


