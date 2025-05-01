Return-Path: <devicetree+bounces-172800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1730EAA66B7
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 00:59:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7698E189BE19
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 22:59:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4367B27C86F;
	Thu,  1 May 2025 22:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Kkqmp5kz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com [209.85.214.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86BA726FD9E
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 22:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746140139; cv=none; b=OrTyzT8ikJTCtFtp5gcimrm6oi8n11qLynkzTv4NZWX0bK9ekDw0mg+4/LxjbxMp6b4iRUKcO59aw+ilS87Tg0rkytUSoPNE1utC2LVCejE/i2v2psvFiIvnwOJ5XefO6nmEXgZbFU/yo4p/hgQw1uJd9TxQzRETGkzT492ZifI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746140139; c=relaxed/simple;
	bh=r0t8dbEcMqv1w/C59nenzPGusmjzB82b0L1GSAI+Lbo=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=jnJ8K3IcOSYvgi2XhPh44smNQRfWpFv6gusV8HUSomdf9lpt4UDwIjkiqqPeJ93WrlU2umRVL8epeXZKwJzqAO8SH1uii2mWPi5tajLW5yOjAjMMoQorzOlQX2Jg2BURO0fxNaXmXAox7DGKjk0ZM1wxanZEE271yq8vWrlYXsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Kkqmp5kz; arc=none smtp.client-ip=209.85.214.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pl1-f202.google.com with SMTP id d9443c01a7336-227a8cdd272so12786345ad.2
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 15:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746140137; x=1746744937; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=QfJbN5pyiZqNm6v1VamUb2ZbseG+vyr/qmtYL/UOqAw=;
        b=Kkqmp5kzwIkTckP4DgfS9rdNx/nYdC/+twpBHoUoDV95Xgs6mcBFq+0oWROdvhuaCU
         NvEbEWqx5KFCCsGxdyaPXhjv9375UOpyunTL0q0XIukN8VfCxc7uc2MMmH1wMaPOIH6n
         YLpy8mxyJRM4V4wXYrIDigFL64nvhSW7ZXrONePxxUCPpCG5H6mT1nh5HaWzvYUbCTrc
         mfFyHz/lMG2iDeSfa4y+YKM1Trp6woUWiQyP8McbTld8K6gePagVejRSTY4vzeh1+6cQ
         Uqs5b0meB2fIBt71vwt6uP+8TsSTW7w/grGzC74hIhQ6KSw5kF6603l7r+zMW2uPMEQ/
         bjHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746140137; x=1746744937;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QfJbN5pyiZqNm6v1VamUb2ZbseG+vyr/qmtYL/UOqAw=;
        b=OvY8M9LMgxnal0CLP2FG0lwBU67VhTkNBHZ84fdYuzKrOxZC3N+ftQaEKMJe52fF5I
         mIMcEXag9DXopR1dmqpMKPj3NUwllsJRgVzEqTotLtIIZTkNIIKy4GtZMCJpNjCaTz/P
         9YtMAXgW2791NEmlNzwD1w+XCFE1v22lnOm5LRyMJ5IedJ5GRUwSFzoNpZJ1xFsu+nta
         ZxlO5bcVKim5KrRgqQXDgWO2X0nNjuKuy0OUoxa7lRVpjQVtUR5RskvcCgnj4/rkzGDV
         rg0g35vXtAwaFEJKElNvsaTgMBJ7CzCS5WD9TRGTHNtD7Jik3FGU6fF9jlocH8c5/eDn
         sMeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWj0y/wUeDnWKFZPnBmMngLTrE0+FtGVIJVRQD50JU2OKKGXRtneF3G3dSplWZYTNrNzvYpP1bmvVpe@vger.kernel.org
X-Gm-Message-State: AOJu0YwN0VT79pt3atE/spIa4yIGDIJc1kVAXkPN2aPbEuN4zLYXAxx3
	T9GxwqdG9E0G8jHi1gMAHWM7o07l6woRRL3NPpo1F4BfRJOuMqt2arj0vLTbmBotSYBlrK1PgJQ
	2SA5foc1xrP3arc2Z8g==
X-Google-Smtp-Source: AGHT+IEti7Jl7kPZOBgR2farF6AzrUQ71NZAgms5bozMIxOrugD7cn53XbT5cnCVAQHZeRCBz32iqnLauoNpF8Ul
X-Received: from plac4.prod.google.com ([2002:a17:902:c2c4:b0:224:2ae9:b271])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:903:22d0:b0:22d:e458:96a5 with SMTP id d9443c01a7336-22e103d0471mr10540035ad.38.1746140136868;
 Thu, 01 May 2025 15:55:36 -0700 (PDT)
Date: Thu,  1 May 2025 15:54:21 -0700
In-Reply-To: <20250501225425.635167-1-changyuanl@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250501225425.635167-1-changyuanl@google.com>
X-Mailer: git-send-email 2.49.0.906.g1f30a19c02-goog
Message-ID: <20250501225425.635167-15-changyuanl@google.com>
Subject: [PATCH v7 14/18] x86/boot: make sure KASLR does not step over KHO
 preserved memory
From: Changyuan Lyu <changyuanl@google.com>
To: linux-kernel@vger.kernel.org
Cc: changyuanl@google.com, akpm@linux-foundation.org, 
	anthony.yznaga@oracle.com, arnd@arndb.de, ashish.kalra@amd.com, 
	benh@kernel.crashing.org, bp@alien8.de, catalin.marinas@arm.com, 
	corbet@lwn.net, dave.hansen@linux.intel.com, devicetree@vger.kernel.org, 
	dwmw2@infradead.org, ebiederm@xmission.com, graf@amazon.com, hpa@zytor.com, 
	jgowans@amazon.com, kexec@lists.infradead.org, krzk@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-mm@kvack.org, luto@kernel.org, mark.rutland@arm.com, mingo@redhat.com, 
	pasha.tatashin@soleen.com, pbonzini@redhat.com, peterz@infradead.org, 
	ptyadav@amazon.de, robh@kernel.org, rostedt@goodmis.org, rppt@kernel.org, 
	saravanak@google.com, skinsburskii@linux.microsoft.com, tglx@linutronix.de, 
	thomas.lendacky@amd.com, will@kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"

From: Alexander Graf <graf@amazon.com>

KHO uses "scratch regions" to bootstrap a kexec'ed kernel. These regions are
guaranteed to not have any memory that KHO would preserve.

Teach KASLR in decompression code to only consider these scratch regions
when KHO is enabled to make sure preserved memory won't get overwritten.

Signed-off-by: Alexander Graf <graf@amazon.com>
Co-developed-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
Co-developed-by: Changyuan Lyu <changyuanl@google.com>
Signed-off-by: Changyuan Lyu <changyuanl@google.com>
---
 arch/x86/boot/compressed/kaslr.c | 52 +++++++++++++++++++++++++++++++-
 1 file changed, 51 insertions(+), 1 deletion(-)

diff --git a/arch/x86/boot/compressed/kaslr.c b/arch/x86/boot/compressed/kaslr.c
index f03d59ea6e40f..25de8c3e17cdb 100644
--- a/arch/x86/boot/compressed/kaslr.c
+++ b/arch/x86/boot/compressed/kaslr.c
@@ -760,6 +760,55 @@ static void process_e820_entries(unsigned long minimum,
 	}
 }
 
+/*
+ * If KHO is active, only process its scratch areas to ensure we are not
+ * stepping onto preserved memory.
+ */
+#ifdef CONFIG_KEXEC_HANDOVER
+static bool process_kho_entries(unsigned long minimum, unsigned long image_size)
+{
+	struct kho_scratch *kho_scratch;
+	struct setup_data *ptr;
+	int i, nr_areas = 0;
+
+	ptr = (struct setup_data *)boot_params_ptr->hdr.setup_data;
+	while (ptr) {
+		if (ptr->type == SETUP_KEXEC_KHO) {
+			struct kho_data *kho = (struct kho_data *)ptr->data;
+
+			kho_scratch = (void *)kho->scratch_addr;
+			nr_areas = kho->scratch_size / sizeof(*kho_scratch);
+
+			break;
+		}
+
+		ptr = (struct setup_data *)ptr->next;
+	}
+
+	if (!nr_areas)
+		return false;
+
+	for (i = 0; i < nr_areas; i++) {
+		struct kho_scratch *area = &kho_scratch[i];
+		struct mem_vector region = {
+			.start = area->addr,
+			.size = area->size,
+		};
+
+		if (process_mem_region(&region, minimum, image_size))
+			break;
+	}
+
+	return true;
+}
+#else
+static inline bool process_kho_entries(unsigned long minimum,
+				       unsigned long image_size)
+{
+	return false;
+}
+#endif
+
 static unsigned long find_random_phys_addr(unsigned long minimum,
 					   unsigned long image_size)
 {
@@ -775,7 +824,8 @@ static unsigned long find_random_phys_addr(unsigned long minimum,
 		return 0;
 	}
 
-	if (!process_efi_entries(minimum, image_size))
+	if (!process_kho_entries(minimum, image_size) &&
+	    !process_efi_entries(minimum, image_size))
 		process_e820_entries(minimum, image_size);
 
 	phys_addr = slots_fetch_random();
-- 
2.49.0.906.g1f30a19c02-goog


