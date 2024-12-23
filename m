Return-Path: <devicetree+bounces-133667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B1C9FB3E9
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 19:19:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DBDCD1884874
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 18:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57FE91B6CFE;
	Mon, 23 Dec 2024 18:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dtf0LPdm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D2438F82
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 18:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734977918; cv=none; b=IQD3KulcgJvtHrWZxBT4kpwhxx7Iig9c/iIZCDBtLgXv5wVd2QOIOFGy5nZMkJ/lxBf5+6nFD8Mge2LkDOtvA/y5Ust+op1Z4tgwBiJZQVmvk6xQhlRddki4tX+l25g65rXItOY7GECHlDTQPW7zxSN21hzId/GuNEzIb8AJNmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734977918; c=relaxed/simple;
	bh=B2E6qqZwGMShX2nKcueQu1ZDUaeo1wq2IEw0JKforyA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=F151WDgi56TS9m1RiuACKXAU89nbn7ZD4peD0D5IKHHM5RPWWlE2e/fSipMjZ3BsOk6wzZuBy2IjHbdPR6hfKij5g/NrkkGX9YIYgd7n1Qh5MnTKUm2nX8C2uEzA2qOXEkGCvsqYJna+6/7tD6sBlmr36xAq9XH7t5Tl+yR/UPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dtf0LPdm; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4367239aa86so27319635e9.3
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 10:18:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1734977915; x=1735582715; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tLuFz6WU7Y8I7wA0/705LYzuAZg+Xyirc5S+pPOZBTI=;
        b=dtf0LPdmIUV0TltHfYvE7OL0xfAuArExPJgZ+/RgZFqfOADpaSWluOM3onrwoga9Lp
         JLAv8wkTqSEoK0QMarNykeL4+uYgXrWjHnsduJYgs1W65Wft2o3ySYlYfOdo1viJRg66
         oKaN0e0XrH0XJZdLUyue456MEmKhJeq/B1tYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734977915; x=1735582715;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tLuFz6WU7Y8I7wA0/705LYzuAZg+Xyirc5S+pPOZBTI=;
        b=Gczy5azKaiGuzwGKdLAA/nWqs0lwUQFWyqIyuuOMWOuO7IOa634cHxU8p04J9denaF
         DsWTH/FzmvpqUjZRFJqLNEQ0T5xkCNJT7aDczefe9kqByl9CQ0Z75Cd6VgMJzVTggdk9
         0ZKB7aLwQ4KsGqJyi3XMfyL6udNZyEAXFizeHwHxdAfofj1Y1zE6rOv6Ahm14M8zegLY
         4xcTMNNKat9YqRkc9RVzDuLuLnnNjOYnWmLUFYh+krkf0fW/TXQtYJF/XWqHNAZh6S3N
         es8WY37P6d9PoxSfjHQVL6bnb3YzbaJEzoEIfYo1xlI6d+p9B2n/ojqRlHuostxqvL2M
         GqBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiBV+shSqy6Tn0W8QUsAUg/azovftQ4s4jAvNw0ub5uryggmIf1eKT9lsqIqCg1gDGuSa+y31xv7pi@vger.kernel.org
X-Gm-Message-State: AOJu0YzOVtjrNcI0KLuxoLnbcdloXfx8i7Ucj1kREULBFIfWxtm+WgPy
	//KV0SdBWtFpaPH5UWc2cZ4AnRvA2JDWQhccOIPFirldwLtzNAlCrS2gXiRXdA==
X-Gm-Gg: ASbGnct9RBkJ8tRGOrUrBOAw0DBEJOLYveZpPuEzg6Npv322d6YZPHwyDTxu1ZYL9mQ
	YJlewXv0WAWqKS5/4fhF07GHvjhdkv1Nquvcy94BrTzJ93ra5RwVnaeYy00c+2psQgpEoh8vcej
	9cVNwBhYbqpwCNvLLcDRbF7jSWL1T5MQq7+R5SqGWccvgj5zN2kHp32ALBqXVxunf6XebLkXkrt
	DbjPjHuuxbc193HcvcvkU4+IcwWa/HSRbjJw+zuu9H2u6oVKCetA7BN30VbnlmVFQvHh1VEjNlZ
	EUwl1APiZxWLZHoLnEZnugCohWAJ86CgEAQn6Lkxdg==
X-Google-Smtp-Source: AGHT+IHnVx6E6+jpgj6V5M0oZS5uvf2+NG4biibS6FNy7VrAA4VTe1doRUngiRy+NEUUzDUe8WdmLQ==
X-Received: by 2002:a05:600c:1d07:b0:435:192:63fb with SMTP id 5b1f17b1804b1-4366854bf0cmr124029705e9.3.1734977914779;
        Mon, 23 Dec 2024 10:18:34 -0800 (PST)
Received: from dmaluka.c.googlers.com.com (187.5.148.146.bc.googleusercontent.com. [146.148.5.187])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43664b15365sm127553805e9.7.2024.12.23.10.18.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 10:18:34 -0800 (PST)
From: Dmytro Maluka <dmaluka@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Dmytro Maluka <dmaluka@chromium.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	x86@kernel.org (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)),
	"H. Peter Anvin" <hpa@zytor.com>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Saurabh Sengar <ssengar@linux.microsoft.com>,
	Usama Arif <usamaarif642@gmail.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	linux-kernel@vger.kernel.org (open list:X86 ARCHITECTURE (32-BIT AND 64-BIT)),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE)
Subject: [PATCH] x86/of: Restore possibility to use both ACPI and FDT from bootloader
Date: Mon, 23 Dec 2024 18:18:03 +0000
Message-ID: <20241223181813.224446-1-dmaluka@chromium.org>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are cases when the bootloader provides information to the kernel
in both ACPI and DTB, not interchangeably. One such use case is virtual
machines in Android. When running on x86, the Android Virtualization
Framework (AVF) boots VMs with ACPI like it is usually done on x86 (i.e.
the virtual LAPIC, IOAPIC, HPET, PCI MMCONFIG etc are described in ACPI)
but also passes various AVF-specific boot parameters in DTB. This allows
reusing the same implementations of various AVF components on both
arm64 and x86.

Commit 7b937cc243e5 ("of: Create of_root if no dtb provided by firmware")
removed the possibility to do that, since among other things
it introduced forcing emptying the bootloader-provided DTB if ACPI is
enabled (probably assuming that if ACPI is available, a DTB can only be
useful for applying overlays to it afterwards, for testing purposes).

So restore this possibility. At the same time, since the aforementioned
recently introduced restriction is actually useful for preventing
conflicts between ACPI and DT for LAPIC/IOAPIC/HPET setup, don't remove
this restriction completely but relax it: unflatten the bootloader
supplied DTB but don't try to use it for SMP setup (i.e. don't override
the .parse_smp_cfg callback) if ACPI is enabled. Precisely, right now
this prevents at least:

- incorrectly calling register_lapic_address(APIC_DEFAULT_PHYS_BASE)
  after the LAPIC was already successfully enumerated via ACPI, causing
  noisy kernel warnings and probably potential real issues as well

- failed IOAPIC setup in the case when IOAPIC is enumerated via mptable
  instead of ACPI (e.g. with acpi=noirq), due to
  mpparse_parse_smp_config() overridden by x86_dtb_parse_smp_config()

Fixes: 7b937cc243e5 ("of: Create of_root if no dtb provided by firmware")
Signed-off-by: Dmytro Maluka <dmaluka@chromium.org>
---
 arch/x86/kernel/devicetree.c |  3 ++-
 drivers/of/fdt.c             | 10 +---------
 2 files changed, 3 insertions(+), 10 deletions(-)

diff --git a/arch/x86/kernel/devicetree.c b/arch/x86/kernel/devicetree.c
index 59d23cdf4ed0..dd8748c45529 100644
--- a/arch/x86/kernel/devicetree.c
+++ b/arch/x86/kernel/devicetree.c
@@ -2,6 +2,7 @@
 /*
  * Architecture specific OF callbacks.
  */
+#include <linux/acpi.h>
 #include <linux/export.h>
 #include <linux/io.h>
 #include <linux/interrupt.h>
@@ -313,6 +314,6 @@ void __init x86_flattree_get_config(void)
 	if (initial_dtb)
 		early_memunmap(dt, map_len);
 #endif
-	if (of_have_populated_dt())
+	if (acpi_disabled && of_have_populated_dt())
 		x86_init.mpparse.parse_smp_cfg = x86_dtb_parse_smp_config;
 }
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 0121100372b4..3b29a5c50e2e 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -8,7 +8,6 @@
 
 #define pr_fmt(fmt)	"OF: fdt: " fmt
 
-#include <linux/acpi.h>
 #include <linux/crash_dump.h>
 #include <linux/crc32.h>
 #include <linux/kernel.h>
@@ -1215,14 +1214,7 @@ void __init unflatten_device_tree(void)
 	/* Save the statically-placed regions in the reserved_mem array */
 	fdt_scan_reserved_mem_reg_nodes();
 
-	/* Don't use the bootloader provided DTB if ACPI is enabled */
-	if (!acpi_disabled)
-		fdt = NULL;
-
-	/*
-	 * Populate an empty root node when ACPI is enabled or bootloader
-	 * doesn't provide one.
-	 */
+	/* Populate an empty root node when bootloader doesn't provide one */
 	if (!fdt) {
 		fdt = (void *) __dtb_empty_root_begin;
 		/* fdt_totalsize() will be used for copy size */
-- 
2.47.1.613.gc27f4b7a9f-goog


