Return-Path: <devicetree+bounces-249762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EA2CDEC0C
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 15:11:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BC91430057E7
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 14:11:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03EAA1E0E14;
	Fri, 26 Dec 2025 14:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="HAcIrzjt";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="a3C3ayIn"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113F01DF755
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 14:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766758287; cv=none; b=lPaSopW0d1tJjv6fRdVSxEbhyF+nnLZsUBG3eBzwYX/8ej7QEbujvRt9w0d37wfXeYr1Mx0BT1eTC12I36lmc8smPD5Wsij2IJeeeKIVtkySzYbI3kfBYv/atxETFS9n4f10Pbj3syRsFtKJCqq7V6h8Mc1g9yWOrOHNwOTCCRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766758287; c=relaxed/simple;
	bh=YPGPTfJr4MuF4Ty5fuTSsxk30cB643o9PypOOE1DnW4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Dyk/qZJCyvpOFFOT3f9JLwdyMkwfV4QrlduYcoFBdKkDmLq+N/Dnfkc85HcdzZA2LrwDzYcjI1K60/0TTmc2Bv2HyM34frC4C7ily8vWcEYakkQJIuKqxOJnEzs79fwEh/NxdD1mPBqi5Nag5/upceEhaDYV4+nzS2Sy1hw2b/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=HAcIrzjt; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=a3C3ayIn; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1766758285;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=C1Eb8Tbzs2NO6bPeBqhZrfOFwL0tG0ndVs0MF0jDIGQ=;
	b=HAcIrzjt0au4SPTuPkrLeY37RqFjLfMJSmFxpi4s9r9ZWc2LAWraW2nDhCjlD8oP3WOzMF
	BevyYEyyVpi/B5VCzH3qRk438v5CnI/h3lS0wyoY00Vs321tnkaApNq2N4+4j9gkLlgA5n
	pW74ScCGeRShJZCCSEWFhY30AZetJVw=
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-249-f0V8uMtSPESqKRg2wjLavg-1; Fri, 26 Dec 2025 09:11:21 -0500
X-MC-Unique: f0V8uMtSPESqKRg2wjLavg-1
X-Mimecast-MFC-AGG-ID: f0V8uMtSPESqKRg2wjLavg_1766758281
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a13cd9a784so77462615ad.2
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 06:11:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1766758280; x=1767363080; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C1Eb8Tbzs2NO6bPeBqhZrfOFwL0tG0ndVs0MF0jDIGQ=;
        b=a3C3ayIn+19ABR5owf82kygSd0aOrPg4tpGJcAFPdcnqLDYbH/ssVuezea4Mtyix1w
         D1HwzGULkI57yw0YhdyDPaXRkZmOJDAx7nYFMiQCOMn8gZN29/13rDqnaeV0QJ32H3pZ
         epblG2yUc3e7PDBdD5veJAnLynUFect0zpQ/H85yFVULmvMXgqpJiZUP5gQQRcC92KC9
         qRhVVrzyPjPzWnmwfrIBe/mvF667sttu1xd/MgsJ+Q/wWFbCHaXonyMljcKA5EG+Csfo
         +bPIWTkDzYjnoa7imVXdK6WSC38KCfbSkfsquWc+AOYYg9p46aCSwv/DxZHf9w45gS9M
         BVsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766758280; x=1767363080;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C1Eb8Tbzs2NO6bPeBqhZrfOFwL0tG0ndVs0MF0jDIGQ=;
        b=FhOh2O3oh0B9Vl5LUCJzvSZSpsAQRMXjsUNZhO+RnLxCz56/tdwnhUNDf+iu01EDoC
         x9JAwBmXEMFxJtlPUkSuVrPnQZWmS8H1r5EXV5/5lnTWsfhnB8kHJlhpTNM13iYVcGPs
         L2M/aoJI884HyEJQr/Rhdn5R4fCcKINfzlZbOE4U+sHDzo9EemzT5Xax/seG0bHnebjq
         isTQ2qtMClGOq9/9vMztqadltVyLuEECXlKmPD3ex9xNr4PWZKBZYA4VsQm5Rm18eG7j
         Mu/TStWF7Hz+h4H5NSVd9HXO88ALU4WCNzQAr4ZUOb5fV9d1LOBpZf1QErgZrxW9l+0x
         elEg==
X-Forwarded-Encrypted: i=1; AJvYcCWmvHLVVsMcxWAe6/w6nLTzKvSR5IUuBVYjrL2XjeJ/8TiJ5fjSImZrVjg7FUboDwht7pMBrTDY6S2O@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6Kk0wU6JtslYCduCRvvAF30qOQ5v56E9TccuF1ctJOZtxjC64
	T3zkwAt95BDDivHC26ufcNnbFyuDjXhsT1QL65LA7DmHOUVvgPcPLYIeujIWpS2LejtQ8AOIZSl
	Kqlht0vZeg9GSAwOfaaDd1nZmD+5OOGdM/p39EBG33Kh8tBrLit6fLh18BQQwKbw=
X-Gm-Gg: AY/fxX4M7QssIlQpBMg9SeqGo8Ka5x0QsI+1MLkG+KCQDdOESFiQ+5PiQN+eua+xF6v
	Csr4YXyWnhIaKjgfK1XFiVETPzvFTnvkCmjozd1bfv8uKN/PXIcVcrY2eKqNbQGwfDzSgdbwfky
	/nz/Mm2tAn01Eopn1JZQlsaoUF7qb+erlqzDK1RROxMySax1Ro3ssDGjm1Y6uyGZx8dfrNqyR1F
	DDvCin2j1MncavKE00scSNAww4U7Pxmj0akumeXbVzroTfHDa1Plu84WMmVKewpgYijJP+w/Cil
	3nUWpzunrysb60iQTbttkPt7UpMfDPADq0+UE3gWostMPbpDSpy06mfv+j0Rv0ddSafw5uBt9yp
	A
X-Received: by 2002:a17:902:c103:b0:2a0:97d2:a264 with SMTP id d9443c01a7336-2a2f2735214mr156670165ad.37.1766758280497;
        Fri, 26 Dec 2025 06:11:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEXwhad5jc3xv4cqcmnL6jgHZfUywv9Z9yVyVbU1Tg52LQN7cnj/6oCJmqPwsvSlt7Wg7i7lA==
X-Received: by 2002:a17:902:c103:b0:2a0:97d2:a264 with SMTP id d9443c01a7336-2a2f2735214mr156669855ad.37.1766758279936;
        Fri, 26 Dec 2025 06:11:19 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5d663sm207266485ad.77.2025.12.26.06.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 06:11:19 -0800 (PST)
From: Coiby Xu <coxu@redhat.com>
To: kexec@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>,
	Baoquan he <bhe@redhat.com>,
	Dave Young <dyoung@redhat.com>,
	Kairui Song <ryncsn@gmail.com>,
	Pingfan Liu <kernelfans@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	linux-kernel@vger.kernel.org (open list),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE)
Subject: [PATCH] arm64/kdump: pass dm-crypt keys to kdump kernel
Date: Fri, 26 Dec 2025 22:11:15 +0800
Message-ID: <20251226141116.1379601-1-coxu@redhat.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Based on the CONFIG_CRASH_DM_CRYPT feature, this patch adds
LUKS-encrypted device dump target support to ARM64 by addressing two
challenges [1],
 - Kdump kernel may not be able to decrypt the LUKS partition. For some
   machines, a system administrator may not have a chance to enter the
   password to decrypt the device in kdump initramfs after the 1st kernel
   crashes

 - LUKS2 by default use the memory-hard Argon2 key derivation function
   which is quite memory-consuming compared to the limited memory reserved
   for kdump.

1st kernel will add device tree property dmcryptkeys as similar to
elfcorehdr to pass the memory address of the stored info of dm-crypt
keys to the kdump kernel.

[1] https://lore.kernel.org/all/20250502011246.99238-1-coxu@redhat.com/

Cc: Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>
Cc: Baoquan he <bhe@redhat.com>
Cc: Dave Young <dyoung@redhat.com>
Cc: Kairui Song <ryncsn@gmail.com>
Cc: Pingfan Liu <kernelfans@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Coiby Xu <coxu@redhat.com>
---
 arch/arm64/kernel/machine_kexec_file.c |  9 +++++++++
 drivers/of/fdt.c                       | 19 +++++++++++++++++++
 drivers/of/kexec.c                     | 19 +++++++++++++++++++
 3 files changed, 47 insertions(+)

diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
index 410060ebd86d..5f3bad8ca96d 100644
--- a/arch/arm64/kernel/machine_kexec_file.c
+++ b/arch/arm64/kernel/machine_kexec_file.c
@@ -134,6 +134,15 @@ int load_other_segments(struct kimage *image,
 
 		kexec_dprintk("Loaded elf core header at 0x%lx bufsz=0x%lx memsz=0x%lx\n",
 			      image->elf_load_addr, kbuf.bufsz, kbuf.memsz);
+
+		ret = crash_load_dm_crypt_keys(image);
+
+		if (ret == -ENOENT) {
+			kexec_dprintk("No dm crypt key to load\n");
+		} else if (ret) {
+			pr_err("Failed to load dm crypt keys\n");
+			goto out_err;
+		}
 	}
 #endif
 
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 331646d667b9..2b22dc7e2b5f 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -866,6 +866,24 @@ static void __init early_init_dt_check_for_elfcorehdr(unsigned long node)
 		 elfcorehdr_addr, elfcorehdr_size);
 }
 
+static void __init early_init_dt_check_for_dmcryptkeys(unsigned long node)
+{
+	const __be32 *prop;
+
+	if (!IS_ENABLED(CONFIG_CRASH_DM_CRYPT))
+		return;
+
+	pr_debug("Looking for dmcryptkeys property... ");
+
+	prop = of_get_flat_dt_prop(node, "linux,dmcryptkeys", NULL);
+	if (!prop)
+		return;
+
+	dm_crypt_keys_addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
+
+	pr_debug("dm_crypt_keys_addr=0x%llx\n", dm_crypt_keys_addr);
+}
+
 static unsigned long chosen_node_offset = -FDT_ERR_NOTFOUND;
 
 /*
@@ -1097,6 +1115,7 @@ int __init early_init_dt_scan_chosen(char *cmdline)
 
 	early_init_dt_check_for_initrd(node);
 	early_init_dt_check_for_elfcorehdr(node);
+	early_init_dt_check_for_dmcryptkeys(node);
 
 	rng_seed = of_get_flat_dt_prop(node, "rng-seed", &l);
 	if (rng_seed && l > 0) {
diff --git a/drivers/of/kexec.c b/drivers/of/kexec.c
index 1ee2d31816ae..4bfb1ea5744e 100644
--- a/drivers/of/kexec.c
+++ b/drivers/of/kexec.c
@@ -432,6 +432,25 @@ void *of_kexec_alloc_and_setup_fdt(const struct kimage *image,
 		if (ret)
 			goto out;
 
+		if (image->dm_crypt_keys_addr != 0) {
+			ret = fdt_appendprop_addrrange(fdt, 0, chosen_node,
+						       "linux,dmcryptkeys",
+						       image->dm_crypt_keys_addr,
+						       image->dm_crypt_keys_sz);
+
+			if (ret)
+				goto out;
+
+			/*
+			 * Avoid dmcryptkeys from being stomped on in kdump kernel by
+			 * setting up memory reserve map.
+			 */
+			ret = fdt_add_mem_rsv(fdt, image->dm_crypt_keys_addr,
+					      image->dm_crypt_keys_sz);
+			if (ret)
+				goto out;
+		}
+
 #ifdef CONFIG_CRASH_DUMP
 		/* add linux,usable-memory-range */
 		ret = fdt_appendprop_addrrange(fdt, 0, chosen_node,

base-commit: ccd1cdca5cd433c8a5dff78b69a79b31d9b77ee1
prerequisite-patch-id: af871421d3653569c735073a3d2d4915412736d7
prerequisite-patch-id: 536241bdf9240e12a5b038415875d4ce417a0892
-- 
2.52.0


