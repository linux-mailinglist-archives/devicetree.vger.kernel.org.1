Return-Path: <devicetree+bounces-187314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC01ADF859
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 23:07:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F9454A347B
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 21:07:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B5AE25FA06;
	Wed, 18 Jun 2025 21:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PT2sPVrg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A809A25F7A5
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 21:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750280826; cv=none; b=RL/MShcW6Fbpv6la2ArZKRIvvanY0PCrQTEHIWZ+m7GsKSuy73KE+VnhHRVBYaKe0vNLKm9o1fk9QTtHhtXKRUaTBB1kQbWR0L4k+BMkEqNiDgBTmkwSaaWWtPVp9yBvZafh5I4bZulCR3Ca69dm+uvx5WXNP/X7cHQA+olqK8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750280826; c=relaxed/simple;
	bh=mtTEjNQfo4H3pB/dyTL9Sc/tHpbjQyBMBwN7w1+SOhA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NHEKMeb4rMxqW2leeptZi2Q2HntnJ9a8yWyIqnUILIHRr/Q5q09a0loucRcKugXzeyt4tVCVoIiFJY2/JrZasg/nu9zdFGoT/BSeCa2q7Ub/rzHMXtL/Lbz0+v4gBxq3iFxXNbWqc6/QNAlvfDOTwjPHQMHKgZUVEaWQnZ5EUdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=PT2sPVrg; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ade5b8aab41so14094466b.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 14:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1750280823; x=1750885623; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=63WsI+9qMeCYHuZVYA1p2sA9XxVk0bIm5fIMuWkMbB8=;
        b=PT2sPVrgvEVQmj/cD9ZPE09/e7iEMedTZNK8QMxT0P0JCwKCxF7UwPXtVDdOjsMdw6
         1NvZQID+8/ihzR5cu5u/X6iK9aIme0+yq30WNJoBnBvAF1PVet9REOvVUhS66F5eXVNe
         aodMkgqQRMNm3N8UjzcG4BLtWeCriBC9HJs/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750280823; x=1750885623;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=63WsI+9qMeCYHuZVYA1p2sA9XxVk0bIm5fIMuWkMbB8=;
        b=AZzjM/5HsIZcZKbN0hT1FIsAVwrWGYtza4Id3GoY/KH32PZ7X3V8NNS4n3drbzVYtw
         rXj18o/rBPJzovIIA7XFIz+4KzKs4FaEexieSoA3ZMO9/cos9PyuS8ASgpfc+8iiHXBH
         dE1ffe+1C6Vv0NmGYbrkqfaKMTDslM/UWY/wfC13cBAb4cZ/gNifXqjyqshQ70KcGIrb
         SWp0IPJqIGik3FG1e+kfWiC9Jk1TSj9bVsQC1s+uHxzKV6XrXYtzIL8FcLLkjToeCOeg
         BoVvExrwkGGT5b6xGcw7QX8r8GpFLf4l98ZYcgHR/XKvyD1rGdhiPIdsfWcwDaHg1BbA
         QbaA==
X-Forwarded-Encrypted: i=1; AJvYcCUAHsvw7LccFjIcEWjoDcl8/914tCavezvhx+f3j5sC0EY/eF4s6LyRhNIZZe+eHXmMLgnXDs5UcLQi@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhjk/V0TLXNIoIMk0ivyS0mVlYoP8XONbGp3M0cn84+algTMim
	sLhQ+Ddq31QGPY57Ge0F0lygqL4swTldnMVGAWnmKWxsNViGGzhbQLQ5WgwupBKLTg==
X-Gm-Gg: ASbGncuLWhnibR31+GOVOw1lLuz53btt//5PviVHB/fak5+IVzd5ZW71AraFIRwD+Ls
	/NYYGbACtJ7xDUjj2G/sfP60iVUvwunU9AKXr6ZoQiWuZzEet/hc29wBLXHaDxkcWXnG4/FYIya
	Ri+qPYqQjZJdhyHkkJkykZino4jOVae8kWe2nSVwcaYXfmbSpJOfRmUgeR3GmRZdTrdpkruY+gv
	DiuqoaK/fjC5jS3jbUJGDXjSE0WgrSUh3dLKoNh2uo33iFIusbTUHWbPW6vexlYog7tgj4rbycv
	tjgV+i205NCLtfsyonF319IKqQBKcy5E3NzdF7u1ecMexwE8UX2u7eyXDln1xDQdNfz3ywHCFeJ
	TnlI0lnoM+nX+jof+UglTDaILXAomyc7+X86cQLztrk+35RvyIw==
X-Google-Smtp-Source: AGHT+IHzBXZs+YJ8TkWqRQI9XEsAiVcrEHmDzrWZ44dgzeswOG6ikQUy9XoxFZFgzqEWxPiLA2bgpg==
X-Received: by 2002:a17:907:7f25:b0:ade:3a1b:88a4 with SMTP id a640c23a62f3a-adfad309555mr1931868066b.17.1750280822982;
        Wed, 18 Jun 2025 14:07:02 -0700 (PDT)
Received: from jaz-virt.c.googlers.com.com (104.112.91.34.bc.googleusercontent.com. [34.91.112.104])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec892b216sm1112822266b.135.2025.06.18.14.07.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 14:07:02 -0700 (PDT)
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
Subject: [PATCH v3 RESEND 2/2] x86/e820: reserve corresponding to DT reserved-memory nomap region
Date: Wed, 18 Jun 2025 21:06:28 +0000
Message-ID: <20250618210628.2635891-3-jaszczyk@chromium.org>
X-Mailer: git-send-email 2.50.0.rc2.701.gf1e915cc24-goog
In-Reply-To: <20250618210628.2635891-1-jaszczyk@chromium.org>
References: <20250618210628.2635891-1-jaszczyk@chromium.org>
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
index c3acbd26408b..4e76e0ea3823 100644
--- a/arch/x86/kernel/e820.c
+++ b/arch/x86/kernel/e820.c
@@ -1330,3 +1330,22 @@ void __init e820__memblock_setup(void)
 
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
index 1c6fcb0bc65e..27969c529c3f 100644
--- a/arch/x86/kernel/setup.c
+++ b/arch/x86/kernel/setup.c
@@ -1071,6 +1071,8 @@ void __init setup_arch(char **cmdline_p)
 
 	x86_flattree_get_config();
 
+	e820__reserve_nomap_region();
+
 	/*
 	 * Needs to run after memblock setup because it needs the physical
 	 * memory size.
-- 
2.50.0.rc2.701.gf1e915cc24-goog


