Return-Path: <devicetree+bounces-168548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B233DA9376A
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 14:48:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BB491B632EF
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 12:48:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E81C9275852;
	Fri, 18 Apr 2025 12:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FzjX4mqM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C01111AD
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 12:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744980487; cv=none; b=PjPwyiVg8O15Rzxbro8VCcWnEYEl13hJzU1oiZvvAXLtsJcOnfIdKD/tnMkzGm+bJ5ucCrAEDia6QDiTqJmc3CnhyOFys9SUzaqRbmw50CNS3PxHnVV33i240yaSQVqfKiSGFbomye0qpCnqK9HXo6KL/4Ybg5YOPP9AdwgBcDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744980487; c=relaxed/simple;
	bh=/D7x1nz2cdiZi5+XsXslM7WDAReNSYQ/NH0dZIP1JXE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ejUfjKvspbjf0WhavuwjebhK0ZCdkC8zGsdWSzleoLZ0Uuh7pj5QVXERweu+eE4qEAdo46tsIBkvWn9QRH0oKGhIUYzDnKeQPBhbusJWOu5iQ77XZX9PrhsSPet6qrgsikFyVKIMNVB1KNJD7G4U5uHRgIRXk9mFcHn0pjLNzZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FzjX4mqM; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ac2aeada833so362685666b.0
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 05:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744980483; x=1745585283; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vODMw6796TMuk6ZLxaXIS17nQiEjdxi5Z2/Gqr9wluk=;
        b=FzjX4mqMW4YcqFq5ENl2vjGqb9K48GSEHE0mxSnEjGQFXjdiYtxQY88/iwZADUdcjK
         dwVRS1p+0KoBZh0824Bz0BgSiCcGdT6h7Dt5vbK71WGbb0T0uIxizmx6bWtv/Nhn/ICv
         AedKWFVI2RV42aEpgi0fwENC+ml62oCh7XZDA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744980483; x=1745585283;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vODMw6796TMuk6ZLxaXIS17nQiEjdxi5Z2/Gqr9wluk=;
        b=aIRvPn9At69zpcQtZsG3FcihWsycQcl75RqBtBWOm6+Foy7S24BsPgCdIvai4wcu63
         7oYtN0hqqccgpi7w/R1UJqxbeH7G7N4PIIDbpwQmnvbpw/WRqVZqfqT9QXVki5QlenG0
         5S+JOhRmKROXtt2OcNr3GYw8iMtKL+0oQHa5o2NovAcxjDnmjVd6ULeHS4IDG0zQvuuT
         IIXTaCw7rB1htRzCebn7YMCmszB7CBZWZZYifelNhYEBp74G2T3Wtw9cIo8Pt7H1brhC
         ifS8itDSn62GJ9QwEEzhH82Yhwvk6yv/JwLDC8Yh9DXZV3f31pWt6ziyeayjY0ZosbV6
         ZjbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUY+nSzkTZr+OAW0frDuIDKU8uTdXFv2kXILZws8aRgEpGzWDCuCSu5d64pAOiIpNCGhAVlt31gT1C2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7k+y93J74JwUF9bX1xXziD/LWgKCaj9SF74F1dYRFKfh2GtOn
	lgzpV7Oz44I/JVwZFUoPjYzhd8S0ux5qMfwaS/nm4Xdf89QeHmnFHCx4l3V2OA==
X-Gm-Gg: ASbGncuupYA68Awxd5f1A877xu2YyOD4ogIdp6FOpc3MgCM1uWl+OEiACjAGJ7FKpME
	Fh3CYw6STEGiriQuZeyWMxXlsSXdGCI3qIIaaR+H0eTPjSjBdH2DtRkP8EAkDYMokZoLQAl3zM1
	KxER4fKKpULddh88lbPKKGocy6eQC5fcLKRueXlV09MmmKfX5PQ37bI9VkhH96FZzedFonwhFLI
	3J7SG+0mi2SmDqUiGSmnPcKUcJMTxxbm1v0z+RzMcyLc7uE7p3nceAlgWXAnSGy/K/YDXvU8zg8
	sGm/wunZDZ2o9X1G08wg51uFAtn/HTwXDAU8EwaN0kIu/niDTo/ya+jL43rNsUR9IIGx9mvMVAu
	+75T5qQsrxYpS28hkqYqCFqk=
X-Google-Smtp-Source: AGHT+IH7dOeXgGMo/ypKtvySuJE18lPbl1UPYUQepb9qm6GK3LEheefDfsh+h1DMQJ9qmS64YVftaA==
X-Received: by 2002:a17:906:794e:b0:ac2:26a6:febf with SMTP id a640c23a62f3a-acb6ee241femr245870466b.20.1744980483399;
        Fri, 18 Apr 2025 05:48:03 -0700 (PDT)
Received: from jaz-virt.c.googlers.com.com (8.236.90.34.bc.googleusercontent.com. [34.90.236.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ec51601sm117445166b.74.2025.04.18.05.48.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 05:48:03 -0700 (PDT)
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
	vineethrp@google.com
Subject: [PATCH v2 1/2] of: fdt: allow to register arch specific hook validating reserved region
Date: Fri, 18 Apr 2025 12:47:17 +0000
Message-ID: <20250418124718.1009563-2-jaszczyk@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250418124718.1009563-1-jaszczyk@chromium.org>
References: <20250418124718.1009563-1-jaszczyk@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Grzegorz Jaszczyk <jaszczyk@google.com>

Add a possibility to register arch specific hook which will validate if
reserved-memory region passed by DT is valid (e.g. in case of x86, which
allows to boot with both ACPI and DT at the same time, registered hook
will validate if reserved-memory region passed by DT is covered by E820
reserved region entry).

Signed-off-by: Grzegorz Jaszczyk <jaszczyk@google.com>
---
 drivers/of/of_reserved_mem.c | 14 ++++++++++++++
 include/linux/of_fdt.h       |  4 ++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index ee2e31522d7e..bb66a019e3e2 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -27,6 +27,7 @@
 
 #include "of_private.h"
 
+static bool __initdata (*arch_is_region_reserved)(phys_addr_t base, phys_addr_t size);
 static struct reserved_mem reserved_mem_array[MAX_RESERVED_REGIONS] __initdata;
 static struct reserved_mem *reserved_mem __refdata = reserved_mem_array;
 static int total_reserved_mem_cnt = MAX_RESERVED_REGIONS;
@@ -131,6 +132,13 @@ static void __init fdt_reserved_mem_save_node(unsigned long node, const char *un
 static int __init early_init_dt_reserve_memory(phys_addr_t base,
 					       phys_addr_t size, bool nomap)
 {
+	if (arch_is_region_reserved && !arch_is_region_reserved(base, size)) {
+		phys_addr_t end = base + size - 1;
+
+		pr_err("mem %pa-%pa not arch reserved\n", &base, &end);
+		return -EINVAL;
+	}
+
 	if (nomap) {
 		/*
 		 * If the memory is already reserved (by another region), we
@@ -146,6 +154,12 @@ static int __init early_init_dt_reserve_memory(phys_addr_t base,
 	return memblock_reserve(base, size);
 }
 
+void __init early_init_set_rsv_region_verifier(bool (*is_mem_reserved)(phys_addr_t base,
+								       phys_addr_t size))
+{
+	arch_is_region_reserved = is_mem_reserved;
+}
+
 /*
  * __reserved_mem_reserve_reg() - reserve all memory described in 'reg' property
  */
diff --git a/include/linux/of_fdt.h b/include/linux/of_fdt.h
index b8d6c0c20876..c7769323e720 100644
--- a/include/linux/of_fdt.h
+++ b/include/linux/of_fdt.h
@@ -65,6 +65,8 @@ extern void early_init_dt_check_for_usable_mem_range(void);
 extern int early_init_dt_scan_chosen_stdout(void);
 extern void early_init_fdt_scan_reserved_mem(void);
 extern void early_init_fdt_reserve_self(void);
+extern void early_init_set_rsv_region_verifier(bool (*is_mem_reserved)(phys_addr_t base,
+								       phys_addr_t size));
 extern void early_init_dt_add_memory_arch(u64 base, u64 size);
 extern u64 dt_mem_next_cell(int s, const __be32 **cellp);
 
@@ -89,6 +91,8 @@ static inline void early_init_dt_check_for_usable_mem_range(void) {}
 static inline int early_init_dt_scan_chosen_stdout(void) { return -ENODEV; }
 static inline void early_init_fdt_scan_reserved_mem(void) {}
 static inline void early_init_fdt_reserve_self(void) {}
+static inline void early_init_set_rsv_region_verifier(bool (*is_mem_reserved)(phys_addr_t base,
+									      phys_addr_t size)) {};
 static inline const char *of_flat_dt_get_machine_name(void) { return NULL; }
 static inline void unflatten_device_tree(void) {}
 static inline void unflatten_and_copy_device_tree(void) {}
-- 
2.49.0.805.g082f7c87e0-goog


