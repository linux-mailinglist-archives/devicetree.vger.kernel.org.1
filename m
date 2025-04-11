Return-Path: <devicetree+bounces-165737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD89A85342
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 07:41:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DDCC01B88991
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 05:41:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56CEC281527;
	Fri, 11 Apr 2025 05:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="4j4sdiQs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f74.google.com (mail-oa1-f74.google.com [209.85.160.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4923281364
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744349929; cv=none; b=oLnKLtH5YFZUfAmGB0B7sfeEGYs1Lmfq2+HqSBu+aBVEF47DsrkYjBQKFvV7sySbWrC778YKlBAIs4yktsOvgkTaL/naz8eQXDzI5W9M+34gMboHyk4esUrINXUMjD5GKYGxn8+KajqXDxVNhdjXGcMHTHVfHl8prmV3yEJweuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744349929; c=relaxed/simple;
	bh=4kHfpKk1VoSUqf1iEbD0lJaQGhASEC7+kfKMWqTLH74=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=bb7HnV8jiD/fCDFbuq/bLtQ1S9xdaxbJqMAk0n/lPMGO4sjSUF/Jtf5muPqlLnc/wPdYIpiU4hEn8ZrENw2emCPQrx56jrgDErPQuyVB8SnN6EqPiCJ67qP6KJ51Z4PJzOFDTYw77e98ZZkrgpGkK7rwqvuPdKLYwruvvCTlRLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=4j4sdiQs; arc=none smtp.client-ip=209.85.160.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-oa1-f74.google.com with SMTP id 586e51a60fabf-2c76babdcedso480122fac.2
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 22:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744349927; x=1744954727; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=J3pOG049tN04I3gAeVWk6hcyObwRwUDj/yys8nKxPg8=;
        b=4j4sdiQsjMrAVecorbSp2t6WxCS/b7mByaAlyFRwc01z7PMBOxwOxpAGuskp8GoY+e
         hNHQhwgfz4vE1D84F62+MgAxI/4kKZLvr0lgkOCFDfB51zS9L3OT4rJGV7xRD5GD2PjI
         aT80h7LLNCY2X5Dao2xqBHzFScujvs2HUfpXT97skbi0o+afwamQsDDgDgOM69DdxPRa
         l1RYZl3Mlpk+0n7bAxX++nkCyjtaGYeVQbWSO8llCiyT+mgAazMeRwyu0s3z+y005iSX
         oxtPJVutAD/UUxnf9H7iy9fXHfqnpT3CBtV4FhdnOM7I2ZC7iKOhG7pHUoz9A3xc00he
         pp3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744349927; x=1744954727;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J3pOG049tN04I3gAeVWk6hcyObwRwUDj/yys8nKxPg8=;
        b=UdsdsQeHc3eeXPcD15wB1gpGhwbxKvblm0a3ylNIqWgs7As4kYebxvaOr5OJLq7+19
         k4qbIMiEuMRgT5w5U9/70BQh5oxQp+z+TrBz0SuJUh+daAfAh3B8Tx27BN7nzCUjCFjB
         F9WJEtWsckNP/WXiVhe34X/vohj256aX0hWk1zVJuN65v731M9++QVSaiBsyIRtx/TeA
         nOB7dCLqIII3dyWM13mVGlvcEy2WDGqeBkr/iUggve0OW9ISOJ2fA+8NNxdqKY1emXo1
         JzWUBAeS092yNu6JW+G+qzN4sqsBP3v5aNfpJzhFSXIX8B6lbU79oD2x3BxMgzzy8Fm1
         l/6w==
X-Forwarded-Encrypted: i=1; AJvYcCUWvgHFwvGtfJDsinThqTyzhSNtIuyzZn2HfGcnIxFLwfJCdWw4esescDF3PlQjx3jq6/D3gzH98hww@vger.kernel.org
X-Gm-Message-State: AOJu0Ywfb6L987Det9ZkvbawpuXE/K3u/BNiE7Xs15M/ViPBal9kw1FQ
	+38rd+f9jtPE+pPmvAbuUeH1TxtNYWrLw720xk8R5Mwzs1LMna+/A1MoFgF9cKZqIaUaW/iIINy
	ooQTiAmYyYSrLsWhDzw==
X-Google-Smtp-Source: AGHT+IEJNpRI4+8yaXJk8414f64tfdUZ+FcyahilW3BlIEGi90JnnJd1CB5TgY9EhsFB2ykTGHq1Hj397rCuMwxE
X-Received: from oabvp10.prod.google.com ([2002:a05:6871:a00a:b0:2c1:5f7a:eba8])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6871:4006:b0:29e:671b:6003 with SMTP id 586e51a60fabf-2d0d5f55d6emr854516fac.32.1744349926748;
 Thu, 10 Apr 2025 22:38:46 -0700 (PDT)
Date: Thu, 10 Apr 2025 22:37:45 -0700
In-Reply-To: <20250411053745.1817356-1-changyuanl@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250411053745.1817356-1-changyuanl@google.com>
X-Mailer: git-send-email 2.49.0.604.gff1f9ca942-goog
Message-ID: <20250411053745.1817356-15-changyuanl@google.com>
Subject: [PATCH v6 14/14] Documentation: KHO: Add memblock bindings
From: Changyuan Lyu <changyuanl@google.com>
To: linux-kernel@vger.kernel.org
Cc: akpm@linux-foundation.org, anthony.yznaga@oracle.com, arnd@arndb.de, 
	ashish.kalra@amd.com, benh@kernel.crashing.org, bp@alien8.de, 
	catalin.marinas@arm.com, corbet@lwn.net, dave.hansen@linux.intel.com, 
	devicetree@vger.kernel.org, dwmw2@infradead.org, ebiederm@xmission.com, 
	graf@amazon.com, hpa@zytor.com, jgowans@amazon.com, kexec@lists.infradead.org, 
	krzk@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-mm@kvack.org, luto@kernel.org, 
	mark.rutland@arm.com, mingo@redhat.com, pasha.tatashin@soleen.com, 
	pbonzini@redhat.com, peterz@infradead.org, ptyadav@amazon.de, robh@kernel.org, 
	rostedt@goodmis.org, rppt@kernel.org, saravanak@google.com, 
	skinsburskii@linux.microsoft.com, tglx@linutronix.de, thomas.lendacky@amd.com, 
	will@kernel.org, x86@kernel.org, Changyuan Lyu <changyuanl@google.com>
Content-Type: text/plain; charset="UTF-8"

From: "Mike Rapoport (Microsoft)" <rppt@kernel.org>

We introduced KHO into Linux: A framework that allows Linux to pass
metadata and memory across kexec from Linux to Linux. KHO reuses fdt
as file format and shares a lot of the same properties of firmware-to-
Linux boot formats: It needs a stable, documented ABI that allows for
forward and backward compatibility as well as versioning.

As first user of KHO, we introduced memblock which can now preserve
memory ranges reserved with reserve_mem command line options contents
across kexec, so you can use the post-kexec kernel to read traces from
the pre-kexec kernel.

This patch adds memblock schemas similar to "device" device tree ones to
a new kho bindings directory. This allows us to force contributors to
document the data that moves across KHO kexecs and catch breaking change
during review.

Co-developed-by: Alexander Graf <graf@amazon.com>
Signed-off-by: Alexander Graf <graf@amazon.com>
Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
Signed-off-by: Changyuan Lyu <changyuanl@google.com>
---
 .../kho/bindings/memblock/memblock.yaml       | 39 ++++++++++++++++++
 .../kho/bindings/memblock/reserve-mem.yaml    | 40 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 3 files changed, 80 insertions(+)
 create mode 100644 Documentation/core-api/kho/bindings/memblock/memblock.yaml
 create mode 100644 Documentation/core-api/kho/bindings/memblock/reserve-mem.yaml

diff --git a/Documentation/core-api/kho/bindings/memblock/memblock.yaml b/Documentation/core-api/kho/bindings/memblock/memblock.yaml
new file mode 100644
index 0000000000000..d388c28eb91d1
--- /dev/null
+++ b/Documentation/core-api/kho/bindings/memblock/memblock.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+title: Memblock reserved memory
+
+maintainers:
+  - Mike Rapoport <rppt@kernel.org>
+
+description: |
+  Memblock can serialize its current memory reservations created with
+  reserve_mem command line option across kexec through KHO.
+  The post-KHO kernel can then consume these reservations and they are
+  guaranteed to have the same physical address.
+
+properties:
+  compatible:
+    enum:
+      - reserve-mem-v1
+
+patternProperties:
+  "$[0-9a-f_]+^":
+    $ref: reserve-mem.yaml#
+    description: reserved memory regions
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    memblock {
+      compatible = "memblock-v1";
+      n1 {
+        compatible = "reserve-mem-v1";
+        start = <0xc06b 0x4000000>;
+        size = <0x04 0x00>;
+      };
+    };
diff --git a/Documentation/core-api/kho/bindings/memblock/reserve-mem.yaml b/Documentation/core-api/kho/bindings/memblock/reserve-mem.yaml
new file mode 100644
index 0000000000000..10282d3d1bcdc
--- /dev/null
+++ b/Documentation/core-api/kho/bindings/memblock/reserve-mem.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+title: Memblock reserved memory regions
+
+maintainers:
+  - Mike Rapoport <rppt@kernel.org>
+
+description: |
+  Memblock can serialize its current memory reservations created with
+  reserve_mem command line option across kexec through KHO.
+  This object describes each such region.
+
+properties:
+  compatible:
+    enum:
+      - reserve-mem-v1
+
+  start:
+    description: |
+      physical address (u64) of the reserved memory region.
+
+  size:
+    description: |
+      size (u64) of the reserved memory region.
+
+required:
+  - compatible
+  - start
+  - size
+
+additionalProperties: false
+
+examples:
+  - |
+    n1 {
+      compatible = "reserve-mem-v1";
+      start = <0xc06b 0x4000000>;
+      size = <0x04 0x00>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index b3be800e5ea46..60e4093042e1b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15425,6 +15425,7 @@ M:	Mike Rapoport <rppt@kernel.org>
 L:	linux-mm@kvack.org
 S:	Maintained
 F:	Documentation/core-api/boot-time-mm.rst
+F:	Documentation/core-api/kho/bindings/memblock/*
 F:	include/linux/memblock.h
 F:	mm/memblock.c
 F:	mm/mm_init.c
-- 
2.49.0.604.gff1f9ca942-goog


