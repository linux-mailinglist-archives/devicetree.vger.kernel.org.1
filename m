Return-Path: <devicetree+bounces-175374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A214AB0C01
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 09:47:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA5335045DC
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 07:47:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECAD6270EBD;
	Fri,  9 May 2025 07:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="rvzBVoKo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f202.google.com (mail-pg1-f202.google.com [209.85.215.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD10224AF9
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 07:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746776818; cv=none; b=r2Ic6Coa7SUkFRrOAgQpecEwhsvelSFWFDLvuLI4MrvdkaR2tOXGLCeZvhbWAlOnTW1OE7zFP+d7XSYXrTWpqIDZ3L33WAWbFh2zTLIgymYJc7E5zH4fmEOOql55WKkPzu+glBat6iFm4gybwvxG76kSuoUIFWzpQAx2mntgldc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746776818; c=relaxed/simple;
	bh=VpkwP9iEQn+IGfxdK9oy6moZLXhF+H/YBJM+RDSJZRw=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=O+9MkjfW8o/raC2dPpY9aOfEwQ064px4r8JBhqea/bwRT482m+Q2IyhbneP2BYUcg/YeDIeSFm9oXBXzjEbSCa7ZfRGFjXt7I1/Fq/x1EMW4soFKIKI0umwwjcSPcE/jngW3RIL8oI/LQ9g3yFwppABpfYo7hby72mHU0/57QF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=rvzBVoKo; arc=none smtp.client-ip=209.85.215.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pg1-f202.google.com with SMTP id 41be03b00d2f7-b2431e45064so442606a12.2
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 00:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746776816; x=1747381616; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=1bmne2y90D8JQiy5XkADi80jEOrlEPK+1vvd1ABYARg=;
        b=rvzBVoKoLi5w0HD1ccu3kVEfeuHwnVy2xijXj9dUJNLL+u2VuSEAQSNe9nnO8IFz6e
         PoYkchLsZ6MpndX6hvwYpfXoUKF11oBqxHVxVferrfQI9WnGXentm4SZthJ2lCGjfvKz
         o+vSC6VT/HEzH9gkbqg/AA/IRWZls196M/lyvuvTm0vZKv/zjC56+WJB0vwCJvoVT4F7
         OS1CZKeR8sUyA4p9z0wtKO2ZeZHouGpbYalMaIedakM4tQacxqenZgPvXK09mnX0Ouku
         +yXAUywThmPxB3zs93j2XGoyPr2n7xWGxQsrEgqISuHP/nYQa4V7ejGHp48VNkoVKfpX
         Ij7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746776816; x=1747381616;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1bmne2y90D8JQiy5XkADi80jEOrlEPK+1vvd1ABYARg=;
        b=WjAaX8BbBxHcJIuDIhaTcqxId6pC0kvheORgDIp+40aEAUy4nEh2GzMu6wRXPm6twE
         1DLy0Pk5i8E6Mx6F0poEFIgemy4grMSgMNfIETnDkrvrNcaup2RS04zphHdye53NZ6xQ
         Wda3YzEPktIwgezU12MZohsFVAd86miC8vPvcNW+MIkuUX3+n2YsfhyiytoJVowhB6io
         a5GT32F8yXy0lKuBRcB1nsoTiLGFkh7I2P7fm9bRv85z7Xr7xKITF/rDYFKr8kcdC9fD
         Gypzyur2sr7RFly7FG48dkQE4mBP/RS9E0K0tp8kfy0+ZiUgER4IRfpu9s4YcF04TPw1
         bktA==
X-Forwarded-Encrypted: i=1; AJvYcCUTEfJr+q+Wjakkpnnb8Le+VOVbfBAh+BDMc/9mu4C6zPf4iUnr144ZVxl90eCfc4nvvMEIDaKvPu4A@vger.kernel.org
X-Gm-Message-State: AOJu0YxOSFBEI7dnuF0b1RldYLnNQRcsjMz/qNrrrk2NRumLYdhmNkkM
	qT5lQOAgRsmasfZ2a2nYSZBdvXafJIV8TEyJPVHqNgp6sfQmTHLEUPDCfo7dUw4aDgGnOxIe4kV
	PLoXBv1FtmaBbhVMFBw==
X-Google-Smtp-Source: AGHT+IHIomAzXg5M2xD8Ke7Ch9cLJaJgpC1gqGvq2UBKZ/ILunuCV6BiFzeH+RQUHWtdNNF1Cpyd6Zk06ESRNXDD
X-Received: from pgbdk10.prod.google.com ([2002:a05:6a02:c8a:b0:b1f:fd39:8314])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a20:2450:b0:1f5:6c94:2cc9 with SMTP id adf61e73a8af0-215abc22f24mr3411999637.22.1746776816238;
 Fri, 09 May 2025 00:46:56 -0700 (PDT)
Date: Fri,  9 May 2025 00:46:20 -0700
In-Reply-To: <20250509074635.3187114-1-changyuanl@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250509074635.3187114-1-changyuanl@google.com>
X-Mailer: git-send-email 2.49.0.1015.ga840276032-goog
Message-ID: <20250509074635.3187114-3-changyuanl@google.com>
Subject: [PATCH v8 02/17] memblock: Add support for scratch memory
From: Changyuan Lyu <changyuanl@google.com>
To: akpm@linux-foundation.org, linux-kernel@vger.kernel.org
Cc: anthony.yznaga@oracle.com, arnd@arndb.de, ashish.kalra@amd.com, 
	benh@kernel.crashing.org, bp@alien8.de, catalin.marinas@arm.com, 
	corbet@lwn.net, dave.hansen@linux.intel.com, devicetree@vger.kernel.org, 
	dwmw2@infradead.org, ebiederm@xmission.com, graf@amazon.com, hpa@zytor.com, 
	jgowans@amazon.com, kexec@lists.infradead.org, krzk@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-mm@kvack.org, luto@kernel.org, mark.rutland@arm.com, mingo@redhat.com, 
	pasha.tatashin@soleen.com, pbonzini@redhat.com, peterz@infradead.org, 
	ptyadav@amazon.de, robh@kernel.org, rostedt@goodmis.org, rppt@kernel.org, 
	saravanak@google.com, skinsburskii@linux.microsoft.com, tglx@linutronix.de, 
	thomas.lendacky@amd.com, will@kernel.org, x86@kernel.org, 
	Changyuan Lyu <changyuanl@google.com>
Content-Type: text/plain; charset="UTF-8"

From: Alexander Graf <graf@amazon.com>

With KHO (Kexec HandOver), we need a way to ensure that the new kernel
does not allocate memory on top of any memory regions that the previous
kernel was handing over. But to know where those are, we need to include
them in the memblock.reserved array which may not be big enough to hold
all ranges that need to be persisted across kexec. To resize the array,
we need to allocate memory. That brings us into a catch 22 situation.

The solution to that is limit memblock allocations to the scratch regions:
safe regions to operate in the case when there is memory that should remain
intact across kexec.

KHO provides several "scratch regions" as part of its metadata. These
scratch regions are contiguous memory blocks that known not to contain any
memory that should be persisted across kexec. These regions should be large
enough to accommodate all memblock allocations done by the kexeced kernel.

We introduce a new memblock_set_scratch_only() function that allows KHO to
indicate that any memblock allocation must happen from the scratch regions.

Later, we may want to perform another KHO kexec. For that, we reuse the
same scratch regions. To ensure that no eventually handed over data gets
allocated inside a scratch region, we flip the semantics of the scratch
region with memblock_clear_scratch_only(): After that call, no allocations
may happen from scratch memblock regions. We will lift that restriction
in the next patch.

Signed-off-by: Alexander Graf <graf@amazon.com>
Co-developed-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
Signed-off-by: Changyuan Lyu <changyuanl@google.com>
---
 include/linux/memblock.h | 20 +++++++++++++
 mm/Kconfig               |  4 +++
 mm/memblock.c            | 61 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 85 insertions(+)

diff --git a/include/linux/memblock.h b/include/linux/memblock.h
index 6c00fbc085132..993937a6b9620 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -45,6 +45,11 @@ extern unsigned long long max_possible_pfn;
  * @MEMBLOCK_RSRV_KERN: memory region that is reserved for kernel use,
  * either explictitly with memblock_reserve_kern() or via memblock
  * allocation APIs. All memblock allocations set this flag.
+ * @MEMBLOCK_KHO_SCRATCH: memory region that kexec can pass to the next
+ * kernel in handover mode. During early boot, we do not know about all
+ * memory reservations yet, so we get scratch memory from the previous
+ * kernel that we know is good to use. It is the only memory that
+ * allocations may happen from in this phase.
  */
 enum memblock_flags {
 	MEMBLOCK_NONE		= 0x0,	/* No special request */
@@ -54,6 +59,7 @@ enum memblock_flags {
 	MEMBLOCK_DRIVER_MANAGED = 0x8,	/* always detected via a driver */
 	MEMBLOCK_RSRV_NOINIT	= 0x10,	/* don't initialize struct pages */
 	MEMBLOCK_RSRV_KERN	= 0x20,	/* memory reserved for kernel use */
+	MEMBLOCK_KHO_SCRATCH	= 0x40,	/* scratch memory for kexec handover */
 };
 
 /**
@@ -148,6 +154,8 @@ int memblock_mark_mirror(phys_addr_t base, phys_addr_t size);
 int memblock_mark_nomap(phys_addr_t base, phys_addr_t size);
 int memblock_clear_nomap(phys_addr_t base, phys_addr_t size);
 int memblock_reserved_mark_noinit(phys_addr_t base, phys_addr_t size);
+int memblock_mark_kho_scratch(phys_addr_t base, phys_addr_t size);
+int memblock_clear_kho_scratch(phys_addr_t base, phys_addr_t size);
 
 void memblock_free(void *ptr, size_t size);
 void reset_all_zones_managed_pages(void);
@@ -291,6 +299,11 @@ static inline bool memblock_is_driver_managed(struct memblock_region *m)
 	return m->flags & MEMBLOCK_DRIVER_MANAGED;
 }
 
+static inline bool memblock_is_kho_scratch(struct memblock_region *m)
+{
+	return m->flags & MEMBLOCK_KHO_SCRATCH;
+}
+
 int memblock_search_pfn_nid(unsigned long pfn, unsigned long *start_pfn,
 			    unsigned long  *end_pfn);
 void __next_mem_pfn_range(int *idx, int nid, unsigned long *out_start_pfn,
@@ -619,5 +632,12 @@ static inline void early_memtest(phys_addr_t start, phys_addr_t end) { }
 static inline void memtest_report_meminfo(struct seq_file *m) { }
 #endif
 
+#ifdef CONFIG_MEMBLOCK_KHO_SCRATCH
+void memblock_set_kho_scratch_only(void);
+void memblock_clear_kho_scratch_only(void);
+#else
+static inline void memblock_set_kho_scratch_only(void) { }
+static inline void memblock_clear_kho_scratch_only(void) { }
+#endif
 
 #endif /* _LINUX_MEMBLOCK_H */
diff --git a/mm/Kconfig b/mm/Kconfig
index e113f713b4938..60ea9eba48140 100644
--- a/mm/Kconfig
+++ b/mm/Kconfig
@@ -469,6 +469,10 @@ config HAVE_GUP_FAST
 	depends on MMU
 	bool
 
+# Enable memblock support for scratch memory which is needed for kexec handover
+config MEMBLOCK_KHO_SCRATCH
+	bool
+
 # Don't discard allocated memory used to track "memory" and "reserved" memblocks
 # after early boot, so it can still be used to test for validity of memory.
 # Also, memblocks are updated with memory hot(un)plug.
diff --git a/mm/memblock.c b/mm/memblock.c
index 2dc95ecdee5ce..6eba0dfe87155 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -107,6 +107,13 @@ unsigned long min_low_pfn;
 unsigned long max_pfn;
 unsigned long long max_possible_pfn;
 
+#ifdef CONFIG_MEMBLOCK_KHO_SCRATCH
+/* When set to true, only allocate from MEMBLOCK_KHO_SCRATCH ranges */
+static bool kho_scratch_only;
+#else
+#define kho_scratch_only false
+#endif
+
 static struct memblock_region memblock_memory_init_regions[INIT_MEMBLOCK_MEMORY_REGIONS] __initdata_memblock;
 static struct memblock_region memblock_reserved_init_regions[INIT_MEMBLOCK_RESERVED_REGIONS] __initdata_memblock;
 #ifdef CONFIG_HAVE_MEMBLOCK_PHYS_MAP
@@ -166,6 +173,10 @@ bool __init_memblock memblock_has_mirror(void)
 
 static enum memblock_flags __init_memblock choose_memblock_flags(void)
 {
+	/* skip non-scratch memory for kho early boot allocations */
+	if (kho_scratch_only)
+		return MEMBLOCK_KHO_SCRATCH;
+
 	return system_has_some_mirror ? MEMBLOCK_MIRROR : MEMBLOCK_NONE;
 }
 
@@ -925,6 +936,18 @@ int __init_memblock memblock_physmem_add(phys_addr_t base, phys_addr_t size)
 }
 #endif
 
+#ifdef CONFIG_MEMBLOCK_KHO_SCRATCH
+__init void memblock_set_kho_scratch_only(void)
+{
+	kho_scratch_only = true;
+}
+
+__init void memblock_clear_kho_scratch_only(void)
+{
+	kho_scratch_only = false;
+}
+#endif
+
 /**
  * memblock_setclr_flag - set or clear flag for a memory region
  * @type: memblock type to set/clear flag for
@@ -1050,6 +1073,36 @@ int __init_memblock memblock_reserved_mark_noinit(phys_addr_t base, phys_addr_t
 				    MEMBLOCK_RSRV_NOINIT);
 }
 
+/**
+ * memblock_mark_kho_scratch - Mark a memory region as MEMBLOCK_KHO_SCRATCH.
+ * @base: the base phys addr of the region
+ * @size: the size of the region
+ *
+ * Only memory regions marked with %MEMBLOCK_KHO_SCRATCH will be considered
+ * for allocations during early boot with kexec handover.
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+__init int memblock_mark_kho_scratch(phys_addr_t base, phys_addr_t size)
+{
+	return memblock_setclr_flag(&memblock.memory, base, size, 1,
+				    MEMBLOCK_KHO_SCRATCH);
+}
+
+/**
+ * memblock_clear_kho_scratch - Clear MEMBLOCK_KHO_SCRATCH flag for a
+ * specified region.
+ * @base: the base phys addr of the region
+ * @size: the size of the region
+ *
+ * Return: 0 on success, -errno on failure.
+ */
+__init int memblock_clear_kho_scratch(phys_addr_t base, phys_addr_t size)
+{
+	return memblock_setclr_flag(&memblock.memory, base, size, 0,
+				    MEMBLOCK_KHO_SCRATCH);
+}
+
 static bool should_skip_region(struct memblock_type *type,
 			       struct memblock_region *m,
 			       int nid, int flags)
@@ -1081,6 +1134,13 @@ static bool should_skip_region(struct memblock_type *type,
 	if (!(flags & MEMBLOCK_DRIVER_MANAGED) && memblock_is_driver_managed(m))
 		return true;
 
+	/*
+	 * In early alloc during kexec handover, we can only consider
+	 * MEMBLOCK_KHO_SCRATCH regions for the allocations
+	 */
+	if ((flags & MEMBLOCK_KHO_SCRATCH) && !memblock_is_kho_scratch(m))
+		return true;
+
 	return false;
 }
 
@@ -2465,6 +2525,7 @@ static const char * const flagname[] = {
 	[ilog2(MEMBLOCK_DRIVER_MANAGED)] = "DRV_MNG",
 	[ilog2(MEMBLOCK_RSRV_NOINIT)] = "RSV_NIT",
 	[ilog2(MEMBLOCK_RSRV_KERN)] = "RSV_KERN",
+	[ilog2(MEMBLOCK_KHO_SCRATCH)] = "KHO_SCRATCH",
 };
 
 static int memblock_debug_show(struct seq_file *m, void *private)
-- 
2.49.0.1015.ga840276032-goog


