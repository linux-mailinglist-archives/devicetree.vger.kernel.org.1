Return-Path: <devicetree+bounces-102499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3BE9774C9
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 01:17:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 519B11C24055
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 23:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAB771C3F26;
	Thu, 12 Sep 2024 23:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="RfGRxe+W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D431C331E
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 23:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726183033; cv=none; b=ACF0NX8GY3Ek04ZcNTCL3qZy8532sQw2HVaIUzduPNrwc88qa7QHR8HpT3cRuJUpFH6EZab/ZRO5zRbZ4PNPg1ub5TmN/8eu3dTcRwcAbRmmwC8avAOkiekKHFN/wAIFz61Yj4iNFacRjuUgUVe8fYvjaCSc+5wIdzojeqRbNeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726183033; c=relaxed/simple;
	bh=6wEksoyf/wCrFvWsPZmk7PaqpjJJV/43ZtHDQEhD3lU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hvtGVZuB+apT80bkhRu6RVCLW6LQIQ7Pd7I3cPt0kyfDsUHrIaNMHS0MC3sP3pFutY6sQdW4JA4j4B7qDkDL4mjRglCl3dOLC0ndSt/Va+OHNdY9q/ag8Iak/chI7q7JgxyWBevgHaU2DrSokWeC27oQY/8BJioRxMbu517/og8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=RfGRxe+W; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2d86f71353dso1107971a91.2
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 16:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1726183030; x=1726787830; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nw1dKcVSLCCt5un4d6VomXZplHXDD/4tgdiLE024NX8=;
        b=RfGRxe+WoB19W27zn+WrjZ+fPVd+s2WjyD91YZU70Wp8lfNKMvgxE3y+eUzYgfqKER
         r0Mekb+dY4xziEvrFi1M5Tnzed/YjNdHGOBNnZwrVTw9/JkRkIXY2+xXn2oZqwOgNn1e
         Uefks4sy6wqfq4pye4FMP36eCbzYj7VfAt/nqv6RsU3fUK4k4qkKudFRS+xas5v+8n2j
         MRDebfXOjj0vnCSJYBQ0kkWty5cWcpIW66Ww4aQKDcFAkkBzHnqHVnqo0iBM4R9Oupjg
         bTGjKs+2pm1K0uT7QYKAz7Ju/wBFIjrcqyigRnhmj251TYH2OeOPnZSSUkBDdGWntEtx
         +h9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726183030; x=1726787830;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nw1dKcVSLCCt5un4d6VomXZplHXDD/4tgdiLE024NX8=;
        b=U8GAHky/ypjGxMwPrm+1EiUaVpqQVlGx4er9FLDMsvD0XcpL+FGon4ETttq2PM8L8D
         NHa2c6Lqgj7hxJgci7qwpFw1TTspJd0LvOUAJOUKtILWU9uLxi+QLy4szZ0pNU6UoVis
         DBw7puyO9tzJtTLgbDEUUzU3ZM4XivD1y9Jfa7yyfAeOPeDCEKXdu4Pt1W3yZ0ZwpdLZ
         fFzQRndKO4LbpW9Xcq9Sc59MG0/DOlBi5MdkOrhVjtsdrRPHDRJ2c5yesOZgP0MT0z9O
         KVc6mtmrtPfhvVu48IzrOlciY+PZAvExUAQB//SO0MlfZKMDTV4yzU2wh+YQF5ONvFJ1
         /JEg==
X-Forwarded-Encrypted: i=1; AJvYcCUMH60bGjWOemqfVbuFJh3kUUfD3RKvQAHhDb05t9gDJ9a+wSf8vJuZUY9l55/SLYJzGZMyH5ZEpc+E@vger.kernel.org
X-Gm-Message-State: AOJu0YwptLpDKqdubwQH3vPSFNWjL2BvkozaaP/BD1w06SjAbc2t3lVC
	W4OBGAwyBb0VjwQ4Wt5LM+rY17aoFMWAqA7arPtzPyOnRxinaUi/ELr4ly1EW+E=
X-Google-Smtp-Source: AGHT+IHV0R4LSdRMN0UeGhZXF9FypysCDDOC5LIEh5xrA8oVwZ2edglc2TZ3k8QjvVsKUPvcjGWQgQ==
X-Received: by 2002:a17:90b:17cb:b0:2d8:e7db:9996 with SMTP id 98e67ed59e1d1-2db9ff93f7amr4718623a91.13.1726183029966;
        Thu, 12 Sep 2024 16:17:09 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2db6c1ac69asm3157591a91.0.2024.09.12.16.17.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 16:17:09 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
To: paul.walmsley@sifive.com,
	palmer@sifive.com,
	conor@kernel.org,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-mm@kvack.org,
	linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org
Cc: corbet@lwn.net,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	robh@kernel.org,
	krzk+dt@kernel.org,
	oleg@redhat.com,
	tglx@linutronix.de,
	mingo@redhat.com,
	bp@alien8.de,
	dave.hansen@linux.intel.com,
	x86@kernel.org,
	hpa@zytor.com,
	peterz@infradead.org,
	akpm@linux-foundation.org,
	arnd@arndb.de,
	ebiederm@xmission.com,
	kees@kernel.org,
	Liam.Howlett@oracle.com,
	vbabka@suse.cz,
	lorenzo.stoakes@oracle.com,
	shuah@kernel.org,
	brauner@kernel.org,
	samuel.holland@sifive.com,
	debug@rivosinc.com,
	andy.chiu@sifive.com,
	jerry.shih@sifive.com,
	greentime.hu@sifive.com,
	charlie@rivosinc.com,
	evan@rivosinc.com,
	cleger@rivosinc.com,
	xiao.w.wang@intel.com,
	ajones@ventanamicro.com,
	anup@brainfault.org,
	mchitale@ventanamicro.com,
	atishp@rivosinc.com,
	sameo@rivosinc.com,
	bjorn@rivosinc.com,
	alexghiti@rivosinc.com,
	david@redhat.com,
	libang.li@antgroup.com,
	jszhang@kernel.org,
	leobras@redhat.com,
	guoren@kernel.org,
	samitolvanen@google.com,
	songshuaishuai@tinylab.org,
	costa.shul@redhat.com,
	bhe@redhat.com,
	zong.li@sifive.com,
	puranjay@kernel.org,
	namcaov@gmail.com,
	antonb@tenstorrent.com,
	sorear@fastmail.com,
	quic_bjorande@quicinc.com,
	ancientmodern4@gmail.com,
	ben.dooks@codethink.co.uk,
	quic_zhonhan@quicinc.com,
	cuiyunhui@bytedance.com,
	yang.lee@linux.alibaba.com,
	ke.zhao@shingroup.cn,
	sunilvl@ventanamicro.com,
	tanzhasanwork@gmail.com,
	schwab@suse.de,
	dawei.li@shingroup.cn,
	rppt@kernel.org,
	willy@infradead.org,
	usama.anjum@collabora.com,
	osalvador@suse.de,
	ryan.roberts@arm.com,
	andrii@kernel.org,
	alx@kernel.org,
	catalin.marinas@arm.com,
	broonie@kernel.org,
	revest@chromium.org,
	bgray@linux.ibm.com,
	deller@gmx.de,
	zev@bewilderbeest.net,
	Rick Edgecombe <rick.p.edgecombe@intel.com>
Subject: [PATCH v4 01/30] mm: Introduce ARCH_HAS_USER_SHADOW_STACK
Date: Thu, 12 Sep 2024 16:16:20 -0700
Message-ID: <20240912231650.3740732-2-debug@rivosinc.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240912231650.3740732-1-debug@rivosinc.com>
References: <20240912231650.3740732-1-debug@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Mark Brown <broonie@kernel.org>

Since multiple architectures have support for shadow stacks and we need to
select support for this feature in several places in the generic code
provide a generic config option that the architectures can select.

Suggested-by: David Hildenbrand <david@redhat.com>
Acked-by: David Hildenbrand <david@redhat.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Rick Edgecombe <rick.p.edgecombe@intel.com>
Reviewed-by: Deepak Gupta <debug@rivosinc.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/x86/Kconfig   | 1 +
 fs/proc/task_mmu.c | 2 +-
 include/linux/mm.h | 2 +-
 mm/Kconfig         | 6 ++++++
 4 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 007bab9f2a0e..320e1f411163 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -1957,6 +1957,7 @@ config X86_USER_SHADOW_STACK
 	depends on AS_WRUSS
 	depends on X86_64
 	select ARCH_USES_HIGH_VMA_FLAGS
+	select ARCH_HAS_USER_SHADOW_STACK
 	select X86_CET
 	help
 	  Shadow stack protection is a hardware feature that detects function
diff --git a/fs/proc/task_mmu.c b/fs/proc/task_mmu.c
index 5f171ad7b436..0ea49725f524 100644
--- a/fs/proc/task_mmu.c
+++ b/fs/proc/task_mmu.c
@@ -984,7 +984,7 @@ static void show_smap_vma_flags(struct seq_file *m, struct vm_area_struct *vma)
 #ifdef CONFIG_HAVE_ARCH_USERFAULTFD_MINOR
 		[ilog2(VM_UFFD_MINOR)]	= "ui",
 #endif /* CONFIG_HAVE_ARCH_USERFAULTFD_MINOR */
-#ifdef CONFIG_X86_USER_SHADOW_STACK
+#ifdef CONFIG_ARCH_HAS_USER_SHADOW_STACK
 		[ilog2(VM_SHADOW_STACK)] = "ss",
 #endif
 #ifdef CONFIG_64BIT
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 147073601716..e39796ea17db 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -346,7 +346,7 @@ extern unsigned int kobjsize(const void *objp);
 #endif
 #endif /* CONFIG_ARCH_HAS_PKEYS */
 
-#ifdef CONFIG_X86_USER_SHADOW_STACK
+#ifdef CONFIG_ARCH_HAS_USER_SHADOW_STACK
 /*
  * VM_SHADOW_STACK should not be set with VM_SHARED because of lack of
  * support core mm.
diff --git a/mm/Kconfig b/mm/Kconfig
index b72e7d040f78..3167be663bca 100644
--- a/mm/Kconfig
+++ b/mm/Kconfig
@@ -1263,6 +1263,12 @@ config IOMMU_MM_DATA
 config EXECMEM
 	bool
 
+config ARCH_HAS_USER_SHADOW_STACK
+	bool
+	help
+	  The architecture has hardware support for userspace shadow call
+          stacks (eg, x86 CET, arm64 GCS or RISC-V Zicfiss).
+
 source "mm/damon/Kconfig"
 
 endmenu
-- 
2.45.0


