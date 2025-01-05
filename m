Return-Path: <devicetree+bounces-135675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 48906A01ACF
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 18:18:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A6D01883455
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 17:18:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8E631946CC;
	Sun,  5 Jan 2025 17:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lq2YNxLE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18AB157485
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 17:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736097471; cv=none; b=RrvG4jYkbJtGrG2584gO8mODcv+mnNVCX1Ldf7s8qWxGmCbxq8i7S4TGmwQL/dN/pI9SBLdWXQ0Ug1pYZHNdV3KpifKUvZy7g8hbijTAes96YSg24LsNA/hOU2X2kuVpeIwKUTn2QI9pWpHTYkumtYvfI20/7BkNy5hIqPjsKCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736097471; c=relaxed/simple;
	bh=cQimmwB3iNQGTyLREuAKfsmql7piInL4jdzSszYRtYs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MrJZA6CSIjC2g/nPKACSI9orXnktYiQ397MtD5WQ+0qQlh78nSbaI+z7rLfiBIM1bJ962TH49Y0zALZCqUZ6nbXLNKpIdeHt5oFaSUA/LiVL+7niTgKVTuUU/RNQA7/Ct1uP9QUialEDwNM2j8bzjTsxak24svXNpNkUT2hRvqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lq2YNxLE; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-436202dd730so97663145e9.2
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 09:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736097468; x=1736702268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=waaXYIjfvBCsra9ANlbbeFiP++cQQ67tbxpqxfXM0M8=;
        b=lq2YNxLEkAdCaNEX8yh8eUA6/Yj1p0J/4mZUxrhwALwEL1UL+rSnspjEvK52zoW8pX
         BCVRDPCmmL6abhDGYbSF23ePm63ZdZcWhhsaIvtvFcKJqvbSEWIG7W81ecNqX6nPRtgh
         cN6uTF6AbbdW+SRsR1f7xZCWx0Cvw/NoBmtXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736097468; x=1736702268;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=waaXYIjfvBCsra9ANlbbeFiP++cQQ67tbxpqxfXM0M8=;
        b=frCj3p6bd4OjO9cyrhgikJSU/I+6NyG3uAFOC8SybpKdxihub89Kttdl5pwX7QnImT
         hT9oDM6xnkcMUq2SLZcljZWFQ2AvgiTt+ZyYoeI85HixlRTBzVUvyAp8X2QmaGMmiqv4
         kPqmIaGZ8rPMdQ3XfcFIToey69OMCv9tmJw9WX0g751ILyKuX1GnrOqMboUjKBghGcHa
         PjHet4Jh75Fvo24Mmmzmw7HkOjoYoSYi1lia1Bw7j0p9n6+hse2SVSL50k1/7lSCGep0
         ql5BJs5wT+NRBVK3onHp/a+1ozxVuqDbXP5kEilNdx0SgW2X1PI1HpWsrnLnEbFviIrB
         WQKg==
X-Forwarded-Encrypted: i=1; AJvYcCWK+xTRwArCDUZqmmziXOCUj7i+1O1shSSfgWSymA4esOqr5yPUKSXM0Q6PmDNBHWIH4mFXNORVr+7v@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm43kLeyi5EincvRC8XZGzq2KJlNsp9jd6uWiqEkqQB5M6wj5a
	iy2ByvWA1bfc3e+ukPW4U0/4G5rm8++clffuhnMo4mjxFZ6m8JO5/UZUIePl/g==
X-Gm-Gg: ASbGncsI50SFhER4/ueTHIDlMVjwYbIyFRIF32xeG9Z/ubFOBguhV6yW1axOktNDXqe
	fBK9RmOfj8cMebdRXEoCBRL+eMy7qZLcoEx3EXVLwLjJjgUgOM6y/kbADKXruQ3C2DtIutKe1fB
	Ov/TXK9D1r08LXmrNYZ54wnEC/VjZcVhfEzWDvTIOE3IOO61hKdF7eYB1qOyPER/h/jbK43rYoc
	PauQlxB3FFkO0Z9fFuUrUvOt+VFxsBDpNWD/gEA0UKZvziPfqnsh/GNDkDyU25PajtecaePC/7w
	flUHuRPWSCIduGVl0j4LQIUB7IIb1maapujb
X-Google-Smtp-Source: AGHT+IFjcKrCEMvuHlallteEPNM9uk2psdNLjspH7AZMYWR56bzbdDPjejh5DZKCGH0JiZAnpORCrA==
X-Received: by 2002:a05:600c:1c87:b0:434:ffe3:bc7d with SMTP id 5b1f17b1804b1-4366864646fmr484161975e9.16.1736097468068;
        Sun, 05 Jan 2025 09:17:48 -0800 (PST)
Received: from dmaluka.c.googlers.com.com (19.50.76.34.bc.googleusercontent.com. [34.76.50.19])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436604e9c2csm543987345e9.43.2025.01.05.09.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 09:17:47 -0800 (PST)
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
Subject: [PATCH 2/2] of/fdt: Restore possibility to use both ACPI and FDT from bootloader
Date: Sun,  5 Jan 2025 17:16:43 +0000
Message-ID: <20250105171643.3473702-3-dmaluka@chromium.org>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
In-Reply-To: <20250105171643.3473702-1-dmaluka@chromium.org>
References: <20250105171643.3473702-1-dmaluka@chromium.org>
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


