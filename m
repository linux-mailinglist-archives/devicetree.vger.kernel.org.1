Return-Path: <devicetree+bounces-165732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C77F2A85334
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 07:40:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC9BE9A59BD
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 05:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0173927F4F8;
	Fri, 11 Apr 2025 05:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="JIR/nXO2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f202.google.com (mail-pg1-f202.google.com [209.85.215.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E78027EC9A
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744349917; cv=none; b=r+MC/6zKGDovYg20jBwlCpPwxvJd3P3wvkQQHmxLWnjFtUBYaoZqtmXP4CnspxCX2Ab/5j1I5n6Xkoj3LFGllL9YWinB11gOz+Az5Ru3hetNh2bxKBctxB2hdPHbdN5/HfIo16IoQCn5fS8dwxFJfNBK5stL1XugckYAbpCNwVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744349917; c=relaxed/simple;
	bh=rjICgeUIqy4q+6BA6gJjSL9PfHRSNpxlfOZzBViefZQ=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=G2/fc2jugMwNG6m5/RA58WcA3uMpg2U8p+w0DihW6BfLz4bRS6O9tXhyTS95+OUrwaaLIHMDcW/DR0b3Kgx1QqzfCFhtmpvfj9a3p2x+BRRwycYSXJT2rXjmqSDgqv2o3faCl5LMksBj+274g81H8vG0HBryr3zBA0hcCNCGeKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=JIR/nXO2; arc=none smtp.client-ip=209.85.215.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pg1-f202.google.com with SMTP id 41be03b00d2f7-afd3f1adff7so2036526a12.1
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 22:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744349916; x=1744954716; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=XwVp4OOgPlRngbn5ra+015ZDy9PB79QtA1kcHgCX6xE=;
        b=JIR/nXO2Anwt3RYgl5HWlTOXA3NHOeJE8V8gU/xDJCIIe/p9DEfIcdOyL39mOEOm9+
         J4LBM6AJsOsK7MZ3wJdVin6Wm7nMarl/+Jclt9oosxqKuLoF84+03v3DdiGYB5eFPh48
         +KcRgtXGzwB5lXjZvUHACBopJHSvAEKfu7yGabVft4HvISQxHzPI/WcIY060NgxVfqNp
         GD+Pm2ScnvOVplIzsvYa4ROwdeM5LROBP2J41aYIU11e63hYaqp7hUG7sUPazLrqOoQf
         mIG/DVVN62UT67iahbvbs97UvUqbmMD8LnbFsu+8DZo7WmYIQs/DPThsEEWfgIVDsveQ
         CWSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744349916; x=1744954716;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XwVp4OOgPlRngbn5ra+015ZDy9PB79QtA1kcHgCX6xE=;
        b=wX3MMKh5NKQncz1h299Jdr7tc62J1VptliaC+gFJ7Qhd1Pz3E4/WAdy41R1E8+DIBH
         euIY77SAg6XXyQOe5f69U/jL8OpWd/dtfj6Pe0v2/Affz9NpCYwEvHizrICqfhL3m+VA
         Jfh4stkvGIyJWot89IF1w6GppiEf3nfBtoRRDglgX2yjjvJgJOezFPz1aRyRXbzymU5+
         fby1zWzAhpzp+FraWeh2xyNbI9APTISv9zj9GKSMD37sciHidZ99o9MU5pAgV9kl1QS1
         HPXj30pMrSo5D4YD5PH7O+J/xY2Isb/WTgi46cK+Jopr8vjypQHKToj17lFgEKqQRBPO
         /bEg==
X-Forwarded-Encrypted: i=1; AJvYcCXqS0FflSZ80Nt3VsxzrrWIVkchSqzGuIlhQrdgrqnd14ADr3B9Ic7cmhURq4Ow1CwlCQH6CsGW/pdf@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7KYCux5z9VLBeMr24jpQTT7SVNtg7XAi8k+qYQff4l1gEE5i7
	SpeoQbP8ygB0cV7lloi+tm1OVpNGTkV3rAqxewnCJrIgNSJNn2PGe2DbQS+Z//1M9TktlwrvF+/
	YKaY/oM/HzOW3Flz2MQ==
X-Google-Smtp-Source: AGHT+IHxdPnuc2TYfLwCd9IDe8ouX7KQHFzd57k3DfleSG8BDX2oEcNCF76lTSltuytpC8emM71yRGFfu+F93+HC
X-Received: from plgf6.prod.google.com ([2002:a17:902:ce86:b0:223:fb3a:ac08])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:902:ebcb:b0:21a:7e04:7021 with SMTP id d9443c01a7336-22bea0c6794mr26802705ad.24.1744349915769;
 Thu, 10 Apr 2025 22:38:35 -0700 (PDT)
Date: Thu, 10 Apr 2025 22:37:40 -0700
In-Reply-To: <20250411053745.1817356-1-changyuanl@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250411053745.1817356-1-changyuanl@google.com>
X-Mailer: git-send-email 2.49.0.604.gff1f9ca942-goog
Message-ID: <20250411053745.1817356-10-changyuanl@google.com>
Subject: [PATCH v6 09/14] arm64: add KHO support
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

We now have all bits in place to support KHO kexecs. Add awareness of
KHO in the kexec file as well as boot path for arm64 and adds the
respective kconfig option to the architecture so that it can use KHO
successfully.

Changes to the "chosen" node have been sent to
https://github.com/devicetree-org/dt-schema/pull/158.

Signed-off-by: Alexander Graf <graf@amazon.com>
Co-developed-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
Co-developed-by: Changyuan Lyu <changyuanl@google.com>
Signed-off-by: Changyuan Lyu <changyuanl@google.com>
---
 arch/arm64/Kconfig |  3 +++
 drivers/of/fdt.c   | 34 ++++++++++++++++++++++++++++++++++
 drivers/of/kexec.c | 42 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 79 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index a182295e6f08b..34c79f4fee3f9 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1602,6 +1602,9 @@ config ARCH_SUPPORTS_KEXEC_IMAGE_VERIFY_SIG
 config ARCH_DEFAULT_KEXEC_IMAGE_VERIFY_SIG
 	def_bool y
 
+config ARCH_SUPPORTS_KEXEC_HANDOVER
+	def_bool y
+
 config ARCH_SUPPORTS_CRASH_DUMP
 	def_bool y
 
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index aedd0e2dcd890..0edd639898a63 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -25,6 +25,7 @@
 #include <linux/serial_core.h>
 #include <linux/sysfs.h>
 #include <linux/random.h>
+#include <linux/kexec_handover.h>
 
 #include <asm/setup.h>  /* for COMMAND_LINE_SIZE */
 #include <asm/page.h>
@@ -875,6 +876,36 @@ void __init early_init_dt_check_for_usable_mem_range(void)
 		memblock_add(rgn[i].base, rgn[i].size);
 }
 
+/**
+ * early_init_dt_check_kho - Decode info required for kexec handover from DT
+ */
+static void __init early_init_dt_check_kho(void)
+{
+	unsigned long node = chosen_node_offset;
+	u64 fdt_start, fdt_size, scratch_start, scratch_size;
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
+	fdt_start = dt_mem_next_cell(dt_root_addr_cells, &p);
+	fdt_size = dt_mem_next_cell(dt_root_addr_cells, &p);
+
+	p = of_get_flat_dt_prop(node, "linux,kho-scratch", &l);
+	if (l != (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32))
+		return;
+
+	scratch_start = dt_mem_next_cell(dt_root_addr_cells, &p);
+	scratch_size = dt_mem_next_cell(dt_root_addr_cells, &p);
+
+	kho_populate(fdt_start, fdt_size, scratch_start, scratch_size);
+}
+
 #ifdef CONFIG_SERIAL_EARLYCON
 
 int __init early_init_dt_scan_chosen_stdout(void)
@@ -1169,6 +1200,9 @@ void __init early_init_dt_scan_nodes(void)
 
 	/* Handle linux,usable-memory-range property */
 	early_init_dt_check_for_usable_mem_range();
+
+	/* Handle kexec handover */
+	early_init_dt_check_kho();
 }
 
 bool __init early_init_dt_scan(void *dt_virt, phys_addr_t dt_phys)
diff --git a/drivers/of/kexec.c b/drivers/of/kexec.c
index 5b924597a4deb..1ee2d31816aeb 100644
--- a/drivers/of/kexec.c
+++ b/drivers/of/kexec.c
@@ -264,6 +264,43 @@ static inline int setup_ima_buffer(const struct kimage *image, void *fdt,
 }
 #endif /* CONFIG_IMA_KEXEC */
 
+static int kho_add_chosen(const struct kimage *image, void *fdt, int chosen_node)
+{
+	int ret = 0;
+#ifdef CONFIG_KEXEC_HANDOVER
+	phys_addr_t fdt_mem = 0;
+	phys_addr_t fdt_len = 0;
+	phys_addr_t scratch_mem = 0;
+	phys_addr_t scratch_len = 0;
+
+	ret = fdt_delprop(fdt, chosen_node, "linux,kho-fdt");
+	if (ret && ret != -FDT_ERR_NOTFOUND)
+		return ret;
+	ret = fdt_delprop(fdt, chosen_node, "linux,kho-scratch");
+	if (ret && ret != -FDT_ERR_NOTFOUND)
+		return ret;
+
+	if (!image->kho.fdt || !image->kho.scratch)
+		return 0;
+
+	fdt_mem = image->kho.fdt;
+	fdt_len = PAGE_SIZE;
+	scratch_mem = image->kho.scratch->mem;
+	scratch_len = image->kho.scratch->bufsz;
+
+	pr_debug("Adding kho metadata to DT");
+
+	ret = fdt_appendprop_addrrange(fdt, 0, chosen_node, "linux,kho-fdt",
+				       fdt_mem, fdt_len);
+	if (ret)
+		return ret;
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
@@ -414,6 +451,11 @@ void *of_kexec_alloc_and_setup_fdt(const struct kimage *image,
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
2.49.0.604.gff1f9ca942-goog


