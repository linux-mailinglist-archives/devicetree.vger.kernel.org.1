Return-Path: <devicetree+bounces-165730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE8AA85340
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 07:41:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79B614C182D
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 05:39:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDB3E27EC8A;
	Fri, 11 Apr 2025 05:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="3kN5CsCG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f202.google.com (mail-pg1-f202.google.com [209.85.215.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECB227EC70
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744349913; cv=none; b=cKuGxEOvIL22AgGxauNnq6GBhEL+Y27l411CMYOGrc4x2vxc6+xgs978CO/uGeV11PGY9GYEvL2/riIEXNOnq/97AAf9TkG9CBQoWWlXuQSMmHoxGW+MO3cYv0ZrbFEbANUApZwBVMh1zsv+GqKY3clAdQRMAg7lXlkRaFKkIyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744349913; c=relaxed/simple;
	bh=YiiAb9NH0JSzf8jBgboPiLLQFP4+06VXLullrxZgNhI=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=dbB1zbOcl2Crqou2EwFN/jGA6t+fWnCUJhL0k0v4RnQIMVcfXuOIF0EnEI5cVt/oE0rkDwCMKDJyBwUEOr4aa3T9OtJSdg60VJUd0foSvWOzAyt34FjtUORPrzRXa8RLNGcOkSpUbIHBx9IkEUUOx9o+h8lD3t8cYpWhNZ2nqqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=3kN5CsCG; arc=none smtp.client-ip=209.85.215.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pg1-f202.google.com with SMTP id 41be03b00d2f7-af96cdd7f5bso1142882a12.1
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 22:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744349911; x=1744954711; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=NQ4ycF7gsLT06FnekoMeMnv8oicyD3TdT/CesWgek8A=;
        b=3kN5CsCG/PUdwWr4xNB8QLp7RunrGDLcK33+ThHIGdaeOW/5xUTWA+K70v8MJ7CQGT
         cr6Ify33EBMxNh6c6RR2WifHxlV/uO869vc/AHPjfgZmdbm1jYkw1KHZCsAKlhs+z0st
         eaFJuJf6+dqw9a8GoVOIQ044qDWKMnINBT9mmKHGLlYzAVdWjnzxbQqw7TD+V0FQ+qnp
         5WBvlngDwHjBMfnW5/HxpMeJMuNcWmOD68E5mFZEMl90t6hVzC17oWafTcRfOn1tVt4t
         pqBHUkQ0GhYqlKM8Ax9wCBITex5KiuNYSCduXdITbdgnbuFUThGqXVNrQP6AUyTNJKQR
         v/nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744349911; x=1744954711;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NQ4ycF7gsLT06FnekoMeMnv8oicyD3TdT/CesWgek8A=;
        b=j5RwzHSySFIpO9HNkiZhGKbpvzVE5rNLk7u+IVAfRouioiEzkkds+59JHyN3/O4Lfe
         XAOq364u5EHwdPIU6w9T9RqNmlgdJ4IlWVd19ZFFDGPXYhT5X3To1dCZGY7pJ5jB8S6S
         nSGlyFwqcxQ70VqEK1xiDzEqPLG6ijAGREXb/gOhfOA7u3kIP3sqw3j3ArMVX/O95rTO
         zDVzzVHg/cS+9YjJbIy4EhH5bXj+GwCofaMeF394IgJNcnWfD56IQnOkkYanxdU0gbM4
         UMlDWRBEPTsF17I/1GN3w8zuZndEmlOTOn+7szB4Jl1JWfgFJfrihF3uCEnDYFECZRlp
         v5oA==
X-Forwarded-Encrypted: i=1; AJvYcCVc/jkWy+MJZ22w621W6sYMVROm0f+w+28NloKQHXY31rYJkl2iAS5EjtNaIhVkLKFSG3oOcNwaipuZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyqmI+5GK5ZY3bZOfmgYauylDttfuvXji2fxqar1vkM1AeEz6TQ
	5L28mwDiD1GfuOAGn7j+lKEtrxtE7sX2ow1QLPJIPwDmonGHKQIcutvYcJnKNaeVxdkQkkVlQrV
	jKsF7080JC/nnJQUmsA==
X-Google-Smtp-Source: AGHT+IFmHMamHSCxGJ9jONFAPmV1A91iPoS28bApZs3vQoT8HryanIff8vx754Cryl7fBwGV08e16HC+nkdncy1g
X-Received: from plcc1.prod.google.com ([2002:a17:902:c1c1:b0:220:da6b:5d08])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:902:f705:b0:220:e9ac:e746 with SMTP id d9443c01a7336-22bea4fdc7amr25793305ad.53.1744349911576;
 Thu, 10 Apr 2025 22:38:31 -0700 (PDT)
Date: Thu, 10 Apr 2025 22:37:38 -0700
In-Reply-To: <20250411053745.1817356-1-changyuanl@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250411053745.1817356-1-changyuanl@google.com>
X-Mailer: git-send-email 2.49.0.604.gff1f9ca942-goog
Message-ID: <20250411053745.1817356-8-changyuanl@google.com>
Subject: [PATCH v6 07/14] kexec: add KHO support to kexec file loads
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

From: Alexander Graf <graf@amazon.com>

Kexec has 2 modes: A user space driven mode and a kernel driven mode.
For the kernel driven mode, kernel code determines the physical
addresses of all target buffers that the payload gets copied into.

With KHO, we can only safely copy payloads into the "scratch area".
Teach the kexec file loader about it, so it only allocates for that
area. In addition, enlighten it with support to ask the KHO subsystem
for its respective payloads to copy into target memory. Also teach the
KHO subsystem how to fill the images for file loads.

Signed-off-by: Alexander Graf <graf@amazon.com>
Co-developed-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
Co-developed-by: Changyuan Lyu <changyuanl@google.com>
Signed-off-by: Changyuan Lyu <changyuanl@google.com>
---
 include/linux/kexec.h   |  7 +++++
 kernel/kexec_file.c     | 13 ++++++++
 kernel/kexec_handover.c | 67 +++++++++++++++++++++++++++++++++++++++++
 kernel/kexec_internal.h | 16 ++++++++++
 4 files changed, 103 insertions(+)

diff --git a/include/linux/kexec.h b/include/linux/kexec.h
index c8971861521a5..d3cad108b8076 100644
--- a/include/linux/kexec.h
+++ b/include/linux/kexec.h
@@ -371,6 +371,13 @@ struct kimage {
 	size_t ima_buffer_size;
 #endif
 
+#ifdef CONFIG_KEXEC_HANDOVER
+	struct {
+		struct kexec_segment *scratch;
+		phys_addr_t fdt;
+	} kho;
+#endif
+
 	/* Core ELF header buffer */
 	void *elf_headers;
 	unsigned long elf_headers_sz;
diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
index fba686487e3b5..77758c5331229 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -253,6 +253,11 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
 	/* IMA needs to pass the measurement list to the next kernel. */
 	ima_add_kexec_buffer(image);
 
+	/* If KHO is active, add its images to the list */
+	ret = kho_fill_kimage(image);
+	if (ret)
+		goto out;
+
 	/* Call image load handler */
 	ldata = kexec_image_load_default(image);
 
@@ -648,6 +653,14 @@ int kexec_locate_mem_hole(struct kexec_buf *kbuf)
 	if (kbuf->mem != KEXEC_BUF_MEM_UNKNOWN)
 		return 0;
 
+	/*
+	 * If KHO is active, only use KHO scratch memory. All other memory
+	 * could potentially be handed over.
+	 */
+	ret = kho_locate_mem_hole(kbuf, locate_mem_hole_callback);
+	if (ret <= 0)
+		return ret;
+
 	if (!IS_ENABLED(CONFIG_ARCH_KEEP_MEMBLOCK))
 		ret = kexec_walk_resources(kbuf, locate_mem_hole_callback);
 	else
diff --git a/kernel/kexec_handover.c b/kernel/kexec_handover.c
index a594da2a22912..4bbc6f5ef7230 100644
--- a/kernel/kexec_handover.c
+++ b/kernel/kexec_handover.c
@@ -23,6 +23,7 @@
  * internal APIs.
  */
 #include "../mm/internal.h"
+#include "kexec_internal.h"
 
 #define KHO_FDT_COMPATIBLE "kho-v1"
 #define PROP_PRESERVED_MEMORY_MAP "preserved-memory-map"
@@ -1184,3 +1185,69 @@ void __init kho_populate(phys_addr_t fdt_phys, u64 fdt_len,
 	if (err)
 		pr_warn("disabling KHO revival: %d\n", err);
 }
+
+/* Helper functions for kexec_file_load */
+
+int kho_fill_kimage(struct kimage *image)
+{
+	ssize_t scratch_size;
+	int err = 0;
+	struct kexec_buf scratch;
+
+	if (!kho_enable)
+		return 0;
+
+	image->kho.fdt = page_to_phys(kho_out.ser.fdt);
+
+	scratch_size = sizeof(*kho_scratch) * kho_scratch_cnt;
+	scratch = (struct kexec_buf){
+		.image = image,
+		.buffer = kho_scratch,
+		.bufsz = scratch_size,
+		.mem = KEXEC_BUF_MEM_UNKNOWN,
+		.memsz = scratch_size,
+		.buf_align = SZ_64K, /* Makes it easier to map */
+		.buf_max = ULONG_MAX,
+		.top_down = true,
+	};
+	err = kexec_add_buffer(&scratch);
+	if (err)
+		return err;
+	image->kho.scratch = &image->segment[image->nr_segments - 1];
+
+	return 0;
+}
+
+static int kho_walk_scratch(struct kexec_buf *kbuf,
+			    int (*func)(struct resource *, void *))
+{
+	int ret = 0;
+	int i;
+
+	for (i = 0; i < kho_scratch_cnt; i++) {
+		struct resource res = {
+			.start = kho_scratch[i].addr,
+			.end = kho_scratch[i].addr + kho_scratch[i].size - 1,
+		};
+
+		/* Try to fit the kimage into our KHO scratch region */
+		ret = func(&res, kbuf);
+		if (ret)
+			break;
+	}
+
+	return ret;
+}
+
+int kho_locate_mem_hole(struct kexec_buf *kbuf,
+			int (*func)(struct resource *, void *))
+{
+	int ret;
+
+	if (!kho_enable || kbuf->image->type == KEXEC_TYPE_CRASH)
+		return 1;
+
+	ret = kho_walk_scratch(kbuf, func);
+
+	return ret == 1 ? 0 : -EADDRNOTAVAIL;
+}
diff --git a/kernel/kexec_internal.h b/kernel/kexec_internal.h
index d35d9792402d1..30a733a55a67b 100644
--- a/kernel/kexec_internal.h
+++ b/kernel/kexec_internal.h
@@ -39,4 +39,20 @@ extern size_t kexec_purgatory_size;
 #else /* CONFIG_KEXEC_FILE */
 static inline void kimage_file_post_load_cleanup(struct kimage *image) { }
 #endif /* CONFIG_KEXEC_FILE */
+
+struct kexec_buf;
+
+#ifdef CONFIG_KEXEC_HANDOVER
+int kho_locate_mem_hole(struct kexec_buf *kbuf,
+			int (*func)(struct resource *, void *));
+int kho_fill_kimage(struct kimage *image);
+#else
+static inline int kho_locate_mem_hole(struct kexec_buf *kbuf,
+				      int (*func)(struct resource *, void *))
+{
+	return 1;
+}
+
+static inline int kho_fill_kimage(struct kimage *image) { return 0; }
+#endif /* CONFIG_KEXEC_HANDOVER */
 #endif /* LINUX_KEXEC_INTERNAL_H */
-- 
2.49.0.604.gff1f9ca942-goog


