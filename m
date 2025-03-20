Return-Path: <devicetree+bounces-159163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6644BA69DFD
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 03:00:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1DE977A6E34
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 01:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88BCD1DEFFC;
	Thu, 20 Mar 2025 01:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="oDkcFfKN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com [209.85.214.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E63181EB9FD
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 01:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742435782; cv=none; b=YkNl03THrKtkR6BkiqNV+rkkPE0Lwdzj7/qPwi6Q4bJA6m3kq3Ebg0yETMcN55GkMX0a2lFTH2Hxk8YNIM2EIGrwlYGOSiRykpbVBzm2uugnS5WDi2cVlfzTFg9NXpeN+Brq43aZFhCsx7mDxBmfKrROlASYabV38ghN/iDYbAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742435782; c=relaxed/simple;
	bh=iaPmmz3gZt9Is93e08vjI3CIdCB5+LGhTAb1vR5Vvzs=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=jQ6dfQjSw6esZu/Wrb4PPm81tyTZI4IKgW3ivwckCgWoGE3ob3VLqyRKz48mFVyLVPPt7o89+vETjoasKlN0tT4pO5phy8GKDEJBokSk/yjV5ItRt46EGyYJdaqHMMg4PVe/8d0Ed40+Pv7rWAnSx2bJOPQasJtP3qF59hC6m4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=oDkcFfKN; arc=none smtp.client-ip=209.85.214.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pl1-f202.google.com with SMTP id d9443c01a7336-22406ee0243so2211685ad.3
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 18:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1742435779; x=1743040579; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=rd3wJc2IZkbxeklI0oyF9EA5atShYqSy3T5piwpZMms=;
        b=oDkcFfKNj0Add+iH6ZBw6FTzjXAWySMB0ZfMBzWuphJt2IivAVBhNezjOP89e0uFJi
         fPK89VpBCt7oWeTDuKxWVrGCBOYEZD3NBVF/22aiiW/R3jaCZt6FDUvqyWP8DkQHm9qm
         2UkMwAVIhL7I8LyInHABlSFYOPTW2FpiOfXkI+v4R0btEYQV97ipCK6tzftLfjk9Zj5R
         NP8IhsOpafAEWFDptRQRd0mUEjGC1FZ4WpqDZIEroaW2fzquyqvFxw411QfBLaSPWc7i
         i62tzvhC2QMRmFABU3bXN6t0v59weL+JhyPvp25iCNTKWejC0z+1LVpYhXkuGJiMiiOZ
         L2qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742435779; x=1743040579;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rd3wJc2IZkbxeklI0oyF9EA5atShYqSy3T5piwpZMms=;
        b=RxIl5z7tSTKOaZZr4T01hJMYbPZDoxG2Os9QrCklseHg9KyHJVOJ8xIbubew5epB5p
         okoJI043mqHdpy5IT53FuKIBZRNEN0vnmXIUDgd+4MYeifL67Rtg7ciKlmvBufb6rOzv
         0Sr/M3+fTzT1eayRGNB6JirOgy4ywry4F0MFcBRRAIif212U6KNcuL0hz1BXnvwwwz+A
         /P07TOu+uM0L3qUaAkq0rZ3ZzvYuPd7J4K84q6N6E2q2L93KXyO2PObJ0Kq8gHjaVTI8
         WmeErDJj50HliNqSTBBvzvUQipwvH0AP6MAZcgKLjzKQPLNMsLnryKLcCTEuBCfA5cqF
         uAZA==
X-Forwarded-Encrypted: i=1; AJvYcCW5uVadMevz3VnnmaJoPS6w3xDg7WY1lPJ7HQkikcStTisgbrqC9y2vJM0ww5Ms6q0XZWCXApucPl1z@vger.kernel.org
X-Gm-Message-State: AOJu0YyTcRmBsMvhseapQ/gkIBfP2zWPTvGswJyCNEEsafI1DfZyCBtE
	aqxkWq3D89JiUkhBMnDZtx9wMa9C5kQWM6XcGYvxtAEudmzQC5vqgezI4xKfS8UGNJv7HAq9tVA
	mAkqRnNigcoEO0khuXA==
X-Google-Smtp-Source: AGHT+IGJMwZEQr7XX54NJ2Wc09gQFNrebDpGN2LmiuqxXXpWV4PLS6zLIf0YQX/7suAC0aQ3d5AJ2BOMHO4N4Oqa
X-Received: from pfbig24.prod.google.com ([2002:a05:6a00:8b98:b0:730:597f:f227])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a00:3a08:b0:736:57cb:f2b6 with SMTP id d2e1a72fcca58-7376d62aac5mr7233223b3a.12.1742435779245;
 Wed, 19 Mar 2025 18:56:19 -0700 (PDT)
Date: Wed, 19 Mar 2025 18:55:47 -0700
In-Reply-To: <20250320015551.2157511-1-changyuanl@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250320015551.2157511-1-changyuanl@google.com>
X-Mailer: git-send-email 2.49.0.rc1.451.g8f38331e32-goog
Message-ID: <20250320015551.2157511-13-changyuanl@google.com>
Subject: [PATCH v5 12/16] arm64: add KHO support
From: Changyuan Lyu <changyuanl@google.com>
To: linux-kernel@vger.kernel.org
Cc: graf@amazon.com, akpm@linux-foundation.org, luto@kernel.org, 
	anthony.yznaga@oracle.com, arnd@arndb.de, ashish.kalra@amd.com, 
	benh@kernel.crashing.org, bp@alien8.de, catalin.marinas@arm.com, 
	dave.hansen@linux.intel.com, dwmw2@infradead.org, ebiederm@xmission.com, 
	mingo@redhat.com, jgowans@amazon.com, corbet@lwn.net, krzk@kernel.org, 
	rppt@kernel.org, mark.rutland@arm.com, pbonzini@redhat.com, 
	pasha.tatashin@soleen.com, hpa@zytor.com, peterz@infradead.org, 
	ptyadav@amazon.de, robh+dt@kernel.org, robh@kernel.org, saravanak@google.com, 
	skinsburskii@linux.microsoft.com, rostedt@goodmis.org, tglx@linutronix.de, 
	thomas.lendacky@amd.com, usama.arif@bytedance.com, will@kernel.org, 
	devicetree@vger.kernel.org, kexec@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-mm@kvack.org, x86@kernel.org, Changyuan Lyu <changyuanl@google.com>
Content-Type: text/plain; charset="UTF-8"

From: Alexander Graf <graf@amazon.com>

We now have all bits in place to support KHO kexecs. Add awareness of
KHO in the kexec file as well as boot path for arm64 and adds the
respective kconfig option to the architecture so that it can use KHO
successfully.

Signed-off-by: Alexander Graf <graf@amazon.com>
Co-developed-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
Co-developed-by: Changyuan Lyu <changyuanl@google.com>
Signed-off-by: Changyuan Lyu <changyuanl@google.com>
---
 arch/arm64/Kconfig |  3 +++
 drivers/of/fdt.c   | 33 +++++++++++++++++++++++++++++++++
 drivers/of/kexec.c | 37 +++++++++++++++++++++++++++++++++++++
 3 files changed, 73 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 940343beb3d4..c997b27b7da1 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1589,6 +1589,9 @@ config ARCH_SUPPORTS_KEXEC_IMAGE_VERIFY_SIG
 config ARCH_DEFAULT_KEXEC_IMAGE_VERIFY_SIG
 	def_bool y
 
+config ARCH_SUPPORTS_KEXEC_HANDOVER
+	def_bool y
+
 config ARCH_SUPPORTS_CRASH_DUMP
 	def_bool y
 
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index aedd0e2dcd89..73f80e3f7188 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -25,6 +25,7 @@
 #include <linux/serial_core.h>
 #include <linux/sysfs.h>
 #include <linux/random.h>
+#include <linux/kexec_handover.h>
 
 #include <asm/setup.h>  /* for COMMAND_LINE_SIZE */
 #include <asm/page.h>
@@ -875,6 +876,35 @@ void __init early_init_dt_check_for_usable_mem_range(void)
 		memblock_add(rgn[i].base, rgn[i].size);
 }
 
+/**
+ * early_init_dt_check_kho - Decode info required for kexec handover from DT
+ */
+static void __init early_init_dt_check_kho(void)
+{
+	unsigned long node = chosen_node_offset;
+	u64 kho_start, scratch_start, scratch_size;
+	const __be32 *p;
+	int l;
+
+	if (!IS_ENABLED(CONFIG_KEXEC_HANDOVER) || (long)node < 0)
+		return;
+
+	p = of_get_flat_dt_prop(node, "linux,kho-fdt", &l);
+	if (l != (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32))
+		return;
+
+	kho_start = dt_mem_next_cell(dt_root_addr_cells, &p);
+
+	p = of_get_flat_dt_prop(node, "linux,kho-scratch", &l);
+	if (l != (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32))
+		return;
+
+	scratch_start = dt_mem_next_cell(dt_root_addr_cells, &p);
+	scratch_size = dt_mem_next_cell(dt_root_addr_cells, &p);
+
+	kho_populate(kho_start, scratch_start, scratch_size);
+}
+
 #ifdef CONFIG_SERIAL_EARLYCON
 
 int __init early_init_dt_scan_chosen_stdout(void)
@@ -1169,6 +1199,9 @@ void __init early_init_dt_scan_nodes(void)
 
 	/* Handle linux,usable-memory-range property */
 	early_init_dt_check_for_usable_mem_range();
+
+	/* Handle kexec handover */
+	early_init_dt_check_kho();
 }
 
 bool __init early_init_dt_scan(void *dt_virt, phys_addr_t dt_phys)
diff --git a/drivers/of/kexec.c b/drivers/of/kexec.c
index 5b924597a4de..db7d7014d8b4 100644
--- a/drivers/of/kexec.c
+++ b/drivers/of/kexec.c
@@ -264,6 +264,38 @@ static inline int setup_ima_buffer(const struct kimage *image, void *fdt,
 }
 #endif /* CONFIG_IMA_KEXEC */
 
+static int kho_add_chosen(const struct kimage *image, void *fdt, int chosen_node)
+{
+	int ret = 0;
+#ifdef CONFIG_KEXEC_HANDOVER
+	phys_addr_t dt_mem = 0;
+	phys_addr_t dt_len = 0;
+	phys_addr_t scratch_mem = 0;
+	phys_addr_t scratch_len = 0;
+
+	if (!image->kho.fdt || !image->kho.scratch)
+		return 0;
+
+	dt_mem = image->kho.fdt->mem;
+	dt_len = image->kho.fdt->memsz;
+
+	scratch_mem = image->kho.scratch->mem;
+	scratch_len = image->kho.scratch->bufsz;
+
+	pr_debug("Adding kho metadata to DT");
+
+	ret = fdt_appendprop_addrrange(fdt, 0, chosen_node, "linux,kho-fdt",
+				       dt_mem, dt_len);
+	if (ret)
+		return ret;
+
+	ret = fdt_appendprop_addrrange(fdt, 0, chosen_node, "linux,kho-scratch",
+				       scratch_mem, scratch_len);
+
+#endif /* CONFIG_KEXEC_HANDOVER */
+	return ret;
+}
+
 /*
  * of_kexec_alloc_and_setup_fdt - Alloc and setup a new Flattened Device Tree
  *
@@ -414,6 +446,11 @@ void *of_kexec_alloc_and_setup_fdt(const struct kimage *image,
 #endif
 	}
 
+	/* Add kho metadata if this is a KHO image */
+	ret = kho_add_chosen(image, fdt, chosen_node);
+	if (ret)
+		goto out;
+
 	/* add bootargs */
 	if (cmdline) {
 		ret = fdt_setprop_string(fdt, chosen_node, "bootargs", cmdline);
-- 
2.48.1.711.g2feabab25a-goog


