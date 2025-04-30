Return-Path: <devicetree+bounces-172280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD45AA45BE
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:43:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 581DA4E3E57
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 08:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 443E621B1AC;
	Wed, 30 Apr 2025 08:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="T2EkBFyx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452AF2185BD
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 08:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746002544; cv=none; b=Umi7JcTeOOTnYJGUHvdCOaEcyKihAWroQobWAzXA4YboDqDojllk+yAdW5jYiSySUrUzfnCxFIYqgEgTiX45zV0eGpwujF+orN6cLjz+r481mC4p7OU74pbB7UfsT/WGA3pvJNOVUGV2b8ShgQZq4lJYr5mERNQX1kzk1nlNi4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746002544; c=relaxed/simple;
	bh=+yQ0yinljUfMfarhJAPlpvcFY1kZFGQwR8V3XrQLeh8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kTVritcb+Lhplb3gAmMY1mnrpvJtBsvtM8uztm5Tm2A/olQ7JoIPcUU+7PPzaGT9XrC92DIAktClR1Mi7TiUwHyIxikk5DiTc1CmCDJY7aZmjn8VOo0qvtXIWVq8CxZbwi9QbgpxqCz8zJlYNX0eqTQLCmaAhCrZd0QBKISng/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=T2EkBFyx; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e677f59438so10964139a12.2
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 01:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1746002540; x=1746607340; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GhphGEMML3IENvjYAKujM3rv/inxM44hKMDwHJvJPiY=;
        b=T2EkBFyx8LI6tFDQ+107CpMG5bisnGljdaMNwA2H0SbDWj9g+9xfuKwQ8ovB1cVARz
         UGbUeiaC7PvoH77KLQ52LtZmBR0rp/i3gB3I+YVBnHj8VFDVA2DfwftRHrwKYFv5ZPw4
         NH3zaUdQ2ZO2j0sUU8C2WT918+IxcQSmRmI/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746002540; x=1746607340;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GhphGEMML3IENvjYAKujM3rv/inxM44hKMDwHJvJPiY=;
        b=VTBc6lGhRSS5OMP7bzlw0ahI9t0kpAPxtew7Vq5mwz7KhDOU3vvJ6EQxXgJrhU8akX
         FpM0qm7Wd4mwZ3owYpEkzeoRowLuZFIIGoLKerrTnskia5IcN8e0sINcSH/iMaeWIcn6
         u5LNxYhfMX3HrMdCSaFsbcH9aW/2LceKHkURddVH4kj5/vwKt07YozkA5yD1wEL2cfjm
         ZfYMc7/XUYKBwVjHFYv6C36zX4Qq8/V4/tkg2s6wFuGG5PX6uMYIvzuX4PNsYxnAxGgz
         XwNfK77WWoDYFeshVz/14POacmg+IQMZ8KZQ1+kulBBTNjzOhteK+Hi6wOunFQMuWXD9
         bTLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWDt3MAbnx1RE8o7FrQIizowMeIOoOZmPlMNdEwJLCF1IIERdsOv3G3MunWKJQ1IjhuWV1wxiUiiFe@vger.kernel.org
X-Gm-Message-State: AOJu0YxZK2od21iPN5OHKafZxuT/j+hMTnVJ/+OU0rO8Aytc6YHYu0DE
	+MvbxOtYtJq3K9bXs0CF6CSBib5qYu+ztdN7YU5CuF6vifnDdXOcw0AuNGEJbw==
X-Gm-Gg: ASbGncsL1XcDXpmXX8xngHL5dqtDBI8u5d0wIx698Bjr+XJ4MEO4OmPDcoJR8FzhocG
	G4RQnZNEMOGceturdCYtfjsCFUTiHEkYXHpao2y73MPh4hMI1BLZ8q69F8lwwAnJmfd5PhvxBwL
	b48wROSoT4doL++7uKNLKv61b+/1aalGH/aWGPF0AHZmMwesBu3WezajQ4cyR/7jQXN5F/xz91g
	XgKDtCvxYtwVNdqM+7eu+FkcQsXYWKOT4Hk3Iiq1wflTFe31DTYTLEW38fHw1/5FcmRyZMe5PuX
	O9xy896Wua+zK4eDfE0zxkOliTO4UYd0+iIEIL+SCW6ypAws+NnhKLa3gZu3tIBTknFKSPXhvPF
	I6WBGymIeaDg58ZRHiiO89GV4Q7qTUG62CM66
X-Google-Smtp-Source: AGHT+IH++uqsIh4Nwq8mGhQAVAo33Wk112IJTKA/SNb9+ip+Vy572vkysAcgGydRB+KXL+rBiHJB0Q==
X-Received: by 2002:a05:6402:34c1:b0:5f6:25d6:71dd with SMTP id 4fb4d7f45d1cf-5f899773ed6mr1696572a12.0.1746002540549;
        Wed, 30 Apr 2025 01:42:20 -0700 (PDT)
Received: from jaz-virt.c.googlers.com.com (23.31.204.35.bc.googleusercontent.com. [35.204.31.23])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7016f5342sm8351783a12.35.2025.04.30.01.42.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 01:42:19 -0700 (PDT)
From: Grzegorz Jaszczyk <jaszczyk@chromium.org>
To: tglx@linutronix.de,
	robh@kernel.org
Cc: mingo@redhat.com,
	bp@alien8.de,
	dave.hansen@linux.intel.com,
	x86@kernel.org,
	hpa@zytor.com,
	saravanak@google.com,
	dmaluka@chromium.org,
	bgrzesik@google.com,
	jaszczyk@google.com,
	ilpo.jarvinen@linux.intel.com,
	usamaarif642@gmail.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	tnowicki@google.com,
	mazurekm@google.com,
	vineethrp@google.com,
	rppt@kernel.org,
	agordeev@linux.ibm.com,
	dyoung@redhat.com,
	myrrhperiwinkle@qtmlabs.xyz,
	guoweikang.kernel@gmail.com,
	kirill.shutemov@linux.intel.com,
	akpm@linux-foundation.org,
	joel.granados@kernel.org,
	sourabhjain@linux.ibm.com
Subject: [PATCH v3 2/2] x86/e820: reserve corresponding to DT reserved-memory nomap region
Date: Wed, 30 Apr 2025 08:41:38 +0000
Message-ID: <20250430084138.2287031-3-jaszczyk@chromium.org>
X-Mailer: git-send-email 2.49.0.901.g37484f566f-goog
In-Reply-To: <20250430084138.2287031-1-jaszczyk@chromium.org>
References: <20250430084138.2287031-1-jaszczyk@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Grzegorz Jaszczyk <jaszczyk@google.com>

The reserved-memory nomap region shouldn't be mapped and registered as an
IORESOURCE_SYSTEM_RAM resource. On the x86 platform the resource tree
map is built based on e820 entries (see e820__reserve_resources).
Aligning DT reserved-memory nomap region by adding corresponding e820
reserved range will allow x86 to build appropriate resource tree.
Similar thing is done during e.g. arm64 resource tree creation (see:
arm64's request_standard_resources()).

Adding a corresponding e820 entry also allows other parts of x86 early
kernel initialization to rely on it. E.g. e820__setup_pci_gap based on
the gap in the e820 memory table picks space and passes to the PCI
subsystem.  Without adding corresponding e820 reserved entry, DT
reserved memory nomap region could conflict with such region assigned
later to PCI subsystem.

Additionally updating e820_table in this stage of the x86 setup seems
safe since it is performed before mentioned e820__reserve_resources and
e820__setup_pci_gap and there are also other functions, which updates
e820 table on the later stage of early x86 setup such as early_quirks()
and efi_arch_mem_reserve() (used by efi_esrt_init).

Signed-off-by: Grzegorz Jaszczyk <jaszczyk@google.com>
---
 arch/x86/include/asm/e820/api.h |  1 +
 arch/x86/kernel/e820.c          | 19 +++++++++++++++++++
 arch/x86/kernel/setup.c         |  2 ++
 3 files changed, 22 insertions(+)

diff --git a/arch/x86/include/asm/e820/api.h b/arch/x86/include/asm/e820/api.h
index c83645d5b2a8..a3b39ec6c3b4 100644
--- a/arch/x86/include/asm/e820/api.h
+++ b/arch/x86/include/asm/e820/api.h
@@ -28,6 +28,7 @@ extern unsigned long e820__end_of_low_ram_pfn(void);
 
 extern u64  e820__memblock_alloc_reserved(u64 size, u64 align);
 extern void e820__memblock_setup(void);
+extern void e820__reserve_nomap_region(void);
 
 extern void e820__finish_early_params(void);
 extern void e820__reserve_resources(void);
diff --git a/arch/x86/kernel/e820.c b/arch/x86/kernel/e820.c
index 9920122018a0..1179ab538d20 100644
--- a/arch/x86/kernel/e820.c
+++ b/arch/x86/kernel/e820.c
@@ -1312,3 +1312,22 @@ void __init e820__memblock_setup(void)
 
 	memblock_dump_all();
 }
+
+void __init e820__reserve_nomap_region(void)
+{
+	struct memblock_region *region;
+	resource_size_t start;
+
+	for_each_mem_region(region) {
+		if (memblock_is_nomap(region)) {
+			start = __pfn_to_phys(memblock_region_reserved_base_pfn(region));
+
+			/*
+			 * Add corresponding e820 region and let
+			 * e820__update_table sanitize e820 map
+			 */
+			e820__range_add(start, region->size, E820_TYPE_RESERVED);
+			e820__update_table_print();
+		}
+	}
+}
diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
index 6f4eddc11560..7fe09f4ea16e 100644
--- a/arch/x86/kernel/setup.c
+++ b/arch/x86/kernel/setup.c
@@ -1049,6 +1049,8 @@ void __init setup_arch(char **cmdline_p)
 
 	x86_flattree_get_config();
 
+	e820__reserve_nomap_region();
+
 	/*
 	 * Needs to run after memblock setup because it needs the physical
 	 * memory size.
-- 
2.49.0.901.g37484f566f-goog


