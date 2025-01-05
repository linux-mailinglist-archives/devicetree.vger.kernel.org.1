Return-Path: <devicetree+bounces-135679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5ABA01AF5
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 18:28:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BFA6A1882E42
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 17:28:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA73F8F6C;
	Sun,  5 Jan 2025 17:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="iF4L2IZL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEADA1ADFE3
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 17:27:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736098071; cv=none; b=VJcvdjlCaib/nR9SEEMEtVPFeiGPzn1O2yG9MXwQ3ZVtZsVAsSmB/O/MdGTLAwBcSRLqhHZ71yct1ajW9F0avnpM0Lc1fTNGncyI52LxvI+jS5RpzEHSTA44UlZkAdf87BfiRMz1HSmJWE3LO1v08hjoE10z+LKEE24iAnPBzaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736098071; c=relaxed/simple;
	bh=cQimmwB3iNQGTyLREuAKfsmql7piInL4jdzSszYRtYs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Xp7nbLTOxjAKdOkdMoxDD1ifVw5OfwnyBhwrbRxIlxEsZ9eqsNEP1Okv45FQ8IaVRVRnv6SlPEEKsYg561CxqIf/bJ0AK5jzUDFeEWJLMdTSOQizlgoTJl+8Zb0YD8E/Kpwt/510UZJsxepabh8KFCsoePkU6Ha5p2Atns1nXYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=iF4L2IZL; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43625c4a50dso93532095e9.0
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 09:27:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736098068; x=1736702868; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=waaXYIjfvBCsra9ANlbbeFiP++cQQ67tbxpqxfXM0M8=;
        b=iF4L2IZL+JRZB8U1yr9MXqvfwQipXAzG9Jsz5LmaHz2JmrfKZj/c/d1QfyiTXqDwy8
         I09V6Ys9FT6uUaA7MuV4Y40mhNgdBf97aVivPXvLTWssSNBIr7wJdcvnfGik7s9BN1KO
         x+gwVoZ92IKHvSpOLtZNWSbqMG78C/CdyxfHU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736098068; x=1736702868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=waaXYIjfvBCsra9ANlbbeFiP++cQQ67tbxpqxfXM0M8=;
        b=VfCpsnONGyJHNNqtI772V6IrznecCoUfsAyxjlB0bUHmGWT6y2uTvcr5fJ9w8rmYiY
         765HUUo3rRanW2Xp9iBcf39Nrg8mM2pQFb3EO2hgxTbp0Rl757bxc0oNc+moUg1gtpJt
         bKe8ylG4ryN+VXbu83dIYgznYE4KGqTHmUUSI5nyYIDu4zvUoqSod6Vi5NR4SPhPJ7UY
         FjGrTCC/sy1/zzY1ObIFxxBmNXux+32PA3K6sJBSPQUBZ5tnvatBArHjmiS989pt+4rH
         3e4j+PMMaoGr0aGCs7VI41twomvMirIlJrI1q08YnZW1yjfX2FEK2Nnoxv52gtkkk/ET
         XMDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyOFc+MkO/HpJWJbf3N/8+QvKAomI5LhBQk37/LyzKbLe9VdcaERCLWy8jbYT6YX8lx/38eUovTc+9@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe6qWY4p01ecloGk3JtLsWTsTKOpYaH+igRqku1JEIVRBB0MEx
	FeD1ZLw6/VAQNCC3QOeJ6LHP6VuAF19eyfLZTMJ+JiZ4CiKR0LtoFvGY3EfE5A==
X-Gm-Gg: ASbGncu+dfTRwPN2pwoUwsjTcZuV37ImoLLcbxLi/96Ug1sZ8TnyYIjFnSNoe3rQqIy
	QZkl7KXSiys5P9FqTOfOqrJ/bC43xDlbCiF7X1iUSxllx//qdu5ba91Y3Ls4/E0nlD8i8spVY4Q
	T6o1Ou54MGVwpBT5b0pVS9AcWMJy04WglyaF73tUXk39vfFPHc/4c8TrnU8R2gTcSzT+v94N12B
	DLU9kMeInpZri8B+93XlMuMHU+919A7sp1r64gPC37r3tnNb//1RXYF4KqOPysRTZuAIAn6zyWp
	Cv5KASxAudgDzWpl3XwYHkD/nKosKQIBbsQd
X-Google-Smtp-Source: AGHT+IHiNwbJ187d46qxrfop63B+HCgvRb2Ef3wESL8M0dbIrsfxBBochkFYVdYSsn+GD5KaM3Wlnw==
X-Received: by 2002:a05:600c:3b23:b0:431:60ec:7a96 with SMTP id 5b1f17b1804b1-43668b49950mr413350735e9.25.1736098068404;
        Sun, 05 Jan 2025 09:27:48 -0800 (PST)
Received: from dmaluka.c.googlers.com.com (19.50.76.34.bc.googleusercontent.com. [34.76.50.19])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b3b207sm575631395e9.32.2025.01.05.09.27.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 09:27:47 -0800 (PST)
From: Dmytro Maluka <dmaluka@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	x86@kernel.org (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)),
	"H. Peter Anvin" <hpa@zytor.com>,
	Saravana Kannan <saravanak@google.com>,
	Saurabh Sengar <ssengar@linux.microsoft.com>,
	Usama Arif <usamaarif642@gmail.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	linux-kernel@vger.kernel.org (open list:X86 ARCHITECTURE (32-BIT AND 64-BIT)),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE),
	=?UTF-8?q?Pierre-Cl=C3=A9ment=20Tosi?= <ptosi@google.com>,
	Shikha Panwar <shikhapanwar@google.com>,
	Will Deacon <will@kernel.org>,
	Keir Fraser <keirf@google.com>,
	Michal Mazurek <mazurekm@google.com>,
	=?UTF-8?q?Bart=C5=82omiej=20Grzesik?= <bgrzesik@google.com>,
	Tomasz Nowicki <tnowicki@google.com>,
	Grzegorz Jaszczyk <jaszczyk@google.com>,
	Dmytro Maluka <dmaluka@chromium.org>
Subject: [PATCH v2 2/2] of/fdt: Restore possibility to use both ACPI and FDT from bootloader
Date: Sun,  5 Jan 2025 17:27:41 +0000
Message-ID: <20250105172741.3476758-3-dmaluka@chromium.org>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
In-Reply-To: <20250105172741.3476758-1-dmaluka@chromium.org>
References: <20250105172741.3476758-1-dmaluka@chromium.org>
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

So restore this possibility. Instead of completely preventing using ACPI
and DT together, rely on arch-specific setup code to prevent using both
to set up the same things (see various acpi_disabled checks under arch/).

Fixes: 7b937cc243e5 ("of: Create of_root if no dtb provided by firmware")
Signed-off-by: Dmytro Maluka <dmaluka@chromium.org>
---
 drivers/of/fdt.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

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


