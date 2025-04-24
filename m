Return-Path: <devicetree+bounces-170280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F91DA9A5ED
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:33:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5E0B87A53A4
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:32:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 814AC20D4E4;
	Thu, 24 Apr 2025 08:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="LKXKfP0r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f74.google.com (mail-pj1-f74.google.com [209.85.216.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D9920102D
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 08:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745483614; cv=none; b=YHSVkTxnGbfWrCv7t1Po5RufCnGoa66Pn/D3gidKtHNgwf3ejQghuxCs27mQseEjpsi20wWv2tUNWartRTihEsbyX4t7RLLmYZHQ2KIDdhfClSj/iOyF8r8lc9orBrYh1R2SOcCsQ59/t4CkXDWAR10cU8QguPm8c5gWU0FOQ3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745483614; c=relaxed/simple;
	bh=VujbCGAaGG7cRp8yjEqmGFE0PIqyYkh9yqPNfDkSDQQ=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=Lhz+YBCIsVpCt7NUvQorEXZ+moYrf+2AO5a4+9zGaTqAQ+fWZ/+8dN+6bOghuC/L5nNos6eD7lwvVGGSMHO/BiPQdUMDBSBrdY0nlExOp++Gd46LKnerJy/kl8CVRr99GECQBOOQHjz3hIFHA4huLaQhYg5LaRpkc8x+VZ9rZG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=LKXKfP0r; arc=none smtp.client-ip=209.85.216.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pj1-f74.google.com with SMTP id 98e67ed59e1d1-306b590faaeso674297a91.3
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 01:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745483611; x=1746088411; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=l7VEVoe4uPheIEiVrtKTo6u/lqrEMNwyEPBA44TaHZQ=;
        b=LKXKfP0roVrRBQbF6wa0gMJxO1EukCHSW3WnFP4hS2Rfb1pK8O8IOucglFAbzD8Hep
         jFsCl8I6O3rzNfidX2/C/LGGe3njkGr8lClSz2Mjcsf3KrsJpPrJV/b7uO45r7RUZcUJ
         /6V7m8JgLXuMv/ZJQbMDsjTCCOVhgIT4cPdhTmtTA9qDqKJUkATOxy8rpFK9fbArRd9R
         JlvEoqUKy893VKA/NC0xBgGmV9EbjV2nmGnEK2krVw/xC/ySa9dTxi88hCGYSFig40cz
         wJblOSSv5a+2DQCYRqw48U1BZg+yEd68EAAiZZ3/oSYB94z8BHE9uLFAkwdI3dAGQOU+
         O/6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745483611; x=1746088411;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l7VEVoe4uPheIEiVrtKTo6u/lqrEMNwyEPBA44TaHZQ=;
        b=VahtBBTnJaBlTo8wHJtjlKVeZos5nJao4plj4jPE9apsndzaK3VuTfqrqfLYxuqOwX
         aUcmdLySHTlZCek0iB2hRzQqXSEzuQAr6qx7rwG29DmUPLxRqsouwXTrjEePwFQnD6QH
         nBRV/vjBrTl/67kmQo7tuAFFRgbWLCqJdAIUsxzjf17Dsl5F4lkgTBW3lVdg6FPkY36d
         REN/LmD8QuEvAcD/1CmGNd4Mk85dpXc5PcKaM4570acX3cz3wN3tvIJP/KHBbABrfDaS
         4XYaMSi1k+oJtuvKPZ4g4qc4zCfFiOa75F8wZFR4cwjBt80i6pYorQ45aRGb6BUZOVto
         HS1w==
X-Forwarded-Encrypted: i=1; AJvYcCWIyFwYZJVVScXI0u1qVC6V5up0oN9X3A+Mf5+PU9epp2jBZWV/wUNkkrIZLQ3eo/CErPg08ET4sCBT@vger.kernel.org
X-Gm-Message-State: AOJu0YydTnumxVKlsMeuIrf/ld7HouDJuR6rOmnOC2cpLJCxMFtQdP2p
	F6dyljeaKztSuyKwX4XC1x8KMBqy/tafKnwneosJmu6ZhrFhuRVm7qK9Pacwuij/TERRAqJVLdx
	vsQ2xFh20CCXNhgUY4w==
X-Google-Smtp-Source: AGHT+IGq6BVgM0IDW8HPijQuQX/f2OnqSI5HlIuEOLmb+TLuZj1I3Q9W3Aia7/3MIxDmrcexsVPCuLlX+IzwZqzj
X-Received: from pjuw16.prod.google.com ([2002:a17:90a:d610:b0:2ff:6e58:8a03])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:584c:b0:305:5f28:2d5c with SMTP id 98e67ed59e1d1-309ed27d7b1mr3055392a91.15.1745483611167;
 Thu, 24 Apr 2025 01:33:31 -0700 (PDT)
Date: Thu, 24 Apr 2025 01:32:58 -0700
In-Reply-To: <aAeaJ2iqkrv_ffhT@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <aAeaJ2iqkrv_ffhT@kernel.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
Message-ID: <20250424083258.2228122-1-changyuanl@google.com>
Subject: Re: [PATCH v6 12/14] memblock: add KHO support for reserve_mem
From: Changyuan Lyu <changyuanl@google.com>
To: rppt@kernel.org, akpm@linux-foundation.org
Cc: anthony.yznaga@oracle.com, arnd@arndb.de, ashish.kalra@amd.com, 
	benh@kernel.crashing.org, bp@alien8.de, catalin.marinas@arm.com, 
	changyuanl@google.com, corbet@lwn.net, dave.hansen@linux.intel.com, 
	devicetree@vger.kernel.org, dwmw2@infradead.org, ebiederm@xmission.com, 
	graf@amazon.com, hpa@zytor.com, jgowans@amazon.com, kexec@lists.infradead.org, 
	krzk@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org, 
	luto@kernel.org, mark.rutland@arm.com, mingo@redhat.com, 
	pasha.tatashin@soleen.com, pbonzini@redhat.com, peterz@infradead.org, 
	ptyadav@amazon.de, robh@kernel.org, rostedt@goodmis.org, saravanak@google.com, 
	skinsburskii@linux.microsoft.com, tglx@linutronix.de, thomas.lendacky@amd.com, 
	will@kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 22, 2025 at 16:31:19 +0300, Mike Rapoport <rppt@kernel.org> wrote:
> On Thu, Apr 10, 2025 at 10:37:43PM -0700, Changyuan Lyu wrote:
> > [...]
> > +static struct notifier_block reserve_mem_kho_nb = {
> > +	.notifier_call = reserve_mem_kho_notifier,
> > +};
> > +
> > +static void __init prepare_kho_fdt(void)
> > +{
> > +	int err = 0, i;
> > +	void *fdt;
> > +
> > +	if (!reserved_mem_count)
> > +		return;
>
> It's better to have this check in reserve_mem_init() before registering kho
> notifier.

Sounds good!

> > +
> > +	kho_fdt = alloc_page(GFP_KERNEL);
> > +	if (!kho_fdt) {
> > +		kho_fdt = ERR_PTR(-ENOMEM);
>
> Do we really care about having errno in kho_fdt? I think NULL would work
> just fine.

I was originally using ERR_PTR(-ENOMEM) and NULL to differentiate the following
2 cases:

1. prepare_kho_fdt() failed,
2. reserved_mem_count == 0, so no memblock FDT was created.

Based on the suggestion above, since now we only register the notifier when
reserved_mem_count == 0, case 2 shall never happen. So NULL is enough.

> > +		return;
>
> And actually, it makes sense to me to return -ENOMEM here and let
> reserve_mem_init() bail out before registering notifier if fdt preparation
> failed.
>
> That will save the checks in reserve_mem_kho_finalize() because it would be
> called only if we have reserve_mem areas and fdt is ready.
>

Sounds good!

> > +	}
> > +
> > +	fdt = page_to_virt(kho_fdt);
> > +
> > +	err |= fdt_create(fdt, PAGE_SIZE);
> > +	err |= fdt_finish_reservemap(fdt);
> > +
> > +	err |= fdt_begin_node(fdt, "");
> > +	err |= fdt_property_string(fdt, "compatible", MEMBLOCK_KHO_NODE_COMPATIBLE);
> > +	for (i = 0; i < reserved_mem_count; i++) {
> > +		struct reserve_mem_table *map = &reserved_mem_table[i];
> > +
> > +		err |= fdt_begin_node(fdt, map->name);
> > +		err |= fdt_property_string(fdt, "compatible", RESERVE_MEM_KHO_NODE_COMPATIBLE);
> > +		err |= fdt_property(fdt, "start", &map->start, sizeof(map->start));
> > +		err |= fdt_property(fdt, "size", &map->size, sizeof(map->size));
> > +		err |= fdt_end_node(fdt);
> > +	}
> > +	err |= fdt_end_node(fdt);
> > +
> > +	err |= fdt_finish(fdt);
> > +
> > +	if (err) {
> > +		pr_err("failed to prepare memblock FDT for KHO: %d\n", err);
> > +		put_page(kho_fdt);
> > +		kho_fdt = ERR_PTR(-EINVAL);
> > +	}
> > +}
> > +
> > +static int __init reserve_mem_init(void)
> > +{
> > +	if (!kho_is_enabled())
> > +		return 0;
> > +
> > +	prepare_kho_fdt();
> > +
> > +	return register_kho_notifier(&reserve_mem_kho_nb);
> > +}
> > +late_initcall(reserve_mem_init);
> > +
> > +static void *kho_fdt_in __initdata;
> > +
> > +static void *__init reserve_mem_kho_retrieve_fdt(void)
> > +{
> > +	phys_addr_t fdt_phys;
> > +	struct folio *fdt_folio;
> > +	void *fdt;
> > +	int err;
> > +
> > +	err = kho_retrieve_subtree(MEMBLOCK_KHO_FDT, &fdt_phys);
> > +	if (err) {
> > +		if (err != -ENOENT)
> > +			pr_warn("failed to retrieve FDT '%s' from KHO: %d\n",
> > +				MEMBLOCK_KHO_FDT, err);
> > +		return ERR_PTR(err);
>
> Wouldn't just 'return NULL' work here?

If we have multiple `reserve_mem` in the kernel command line,
reserve_mem_kho_revive() will also be called multiple times. However
reserve_mem_kho_retrieve_fdt() should only be called once.

Here I am returning the ERR_PTR(err) such that if the first
reserve_mem_kho_retrieve_fdt() failed, subsequent reserve_mem_kho_revive()
can tell that reserve_mem_kho_retrieve_fdt() has failed so no need to try it
again. If we return NULL here, subsequent reserve_mem_kho_revive() would find
kho_fdt_in == NULL, and it could not tell whether it was due to previously
failed reserve_mem_kho_retrieve_fdt(), or it is the first
reserve_mem_kho_revive().

> > +	}
> > +
> > +	fdt_folio = kho_restore_folio(fdt_phys);
> > +	if (!fdt_folio) {
> > +		pr_warn("failed to restore memblock KHO FDT (0x%llx)\n", fdt_phys);
> > +		return ERR_PTR(-EFAULT);
> > +	}
> > +
> > +	fdt = page_to_virt(folio_page(fdt_folio, 0));
>
> 	fdt = folio_address(folio);

Fixed.

> > +
> > +	err = fdt_node_check_compatible(fdt, 0, MEMBLOCK_KHO_NODE_COMPATIBLE);
> > +	if (err) {
> > +		pr_warn("FDT '%s' is incompatible with '%s': %d\n",
> > +			MEMBLOCK_KHO_FDT, MEMBLOCK_KHO_NODE_COMPATIBLE, err);
> > +		return ERR_PTR(-EINVAL);
> > +	}
> > +
> > +	return fdt;
> > +}
> > +
> > +static bool __init reserve_mem_kho_revive(const char *name, phys_addr_t size,
> > +					  phys_addr_t align)
> > +{
> > +	int err, len_start, len_size, offset;
> > +	const phys_addr_t *p_start, *p_size;
> > +	const void *fdt;
> > +
> > +	if (!kho_fdt_in)
> > +		kho_fdt_in = reserve_mem_kho_retrieve_fdt();
>
> I'd invert this and move to reserve_mem_kho_retrieve_fdt(), so there it
> would be
>
> 	if (kho_fdt_in)
> 		return kho_fdt_in;
>
> 	/* actually retrieve the fdt */
> 	kho_fdt_in = fdt;
>
> 	return fdt;
>
> and here
>
> 	fdt = reserve_mem_kho_retrieve_fdt();
> 	if (!fdt)
> 		return false;

Ah Ok, this is more elegant!

> > +
> > +	if (IS_ERR(kho_fdt_in))
> > +		return false;
> > +
> > +	fdt = kho_fdt_in;
> > +
> >[...]
> > --
> > 2.49.0.604.gff1f9ca942-goog
> >
>
> --
> Sincerely yours,
> Mike.

Best,
Changyuan

---- 8< ----
From 7ad4379062aa9709d3702bfc53d237d0c1a4e326 Mon Sep 17 00:00:00 2001
From: Changyuan Lyu <changyuanl@google.com>
Date: Thu, 24 Apr 2025 01:10:24 -0700
Subject: [PATCH] fixup! memblock: add KHO support for reserve_mem

This patch includes the suggested changes from
https://lore.kernel.org/lkml/aAeaJ2iqkrv_ffhT@kernel.org/ and can be
squashed with "memblock: add KHO support for reserve_mem".

Fixes: 2e257a656639 ("memblock: add KHO support for reserve_mem")
Suggested-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
Signed-off-by: Changyuan Lyu <changyuanl@google.com>
---
 mm/memblock.c | 69 +++++++++++++++++++++++++--------------------------
 1 file changed, 34 insertions(+), 35 deletions(-)

diff --git a/mm/memblock.c b/mm/memblock.c
index 3571a859f2fe1..d38a72f07ea0c 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -2490,15 +2490,6 @@ static int reserve_mem_kho_finalize(struct kho_serialization *ser)
 {
 	int err = 0, i;

-	if (!reserved_mem_count)
-		return NOTIFY_DONE;
-
-	if (IS_ERR(kho_fdt)) {
-		err = PTR_ERR(kho_fdt);
-		pr_err("memblock FDT was not prepared successfully: %d\n", err);
-		return notifier_from_errno(err);
-	}
-
 	for (i = 0; i < reserved_mem_count; i++) {
 		struct reserve_mem_table *map = &reserved_mem_table[i];

@@ -2528,19 +2519,14 @@ static struct notifier_block reserve_mem_kho_nb = {
 	.notifier_call = reserve_mem_kho_notifier,
 };

-static void __init prepare_kho_fdt(void)
+static int __init prepare_kho_fdt(void)
 {
 	int err = 0, i;
 	void *fdt;

-	if (!reserved_mem_count)
-		return;
-
 	kho_fdt = alloc_page(GFP_KERNEL);
-	if (!kho_fdt) {
-		kho_fdt = ERR_PTR(-ENOMEM);
-		return;
-	}
+	if (!kho_fdt)
+		return -ENOMEM;

 	fdt = page_to_virt(kho_fdt);

@@ -2565,18 +2551,30 @@ static void __init prepare_kho_fdt(void)
 	if (err) {
 		pr_err("failed to prepare memblock FDT for KHO: %d\n", err);
 		put_page(kho_fdt);
-		kho_fdt = ERR_PTR(-EINVAL);
+		kho_fdt = NULL;
 	}
+
+	return err;
 }

 static int __init reserve_mem_init(void)
 {
-	if (!kho_is_enabled())
+	int err;
+
+	if (!kho_is_enabled() || !reserved_mem_count)
 		return 0;

-	prepare_kho_fdt();
+	err = prepare_kho_fdt();
+	if (err)
+		return err;
+
+	err = register_kho_notifier(&reserve_mem_kho_nb);
+	if (err) {
+		put_page(kho_fdt);
+		kho_fdt = NULL;
+	}

-	return register_kho_notifier(&reserve_mem_kho_nb);
+	return err;
 }
 late_initcall(reserve_mem_init);

@@ -2586,33 +2584,38 @@ static void *__init reserve_mem_kho_retrieve_fdt(void)
 {
 	phys_addr_t fdt_phys;
 	struct folio *fdt_folio;
-	void *fdt;
 	int err;

+	if (kho_fdt_in)
+		return kho_fdt_in;
+
 	err = kho_retrieve_subtree(MEMBLOCK_KHO_FDT, &fdt_phys);
 	if (err) {
 		if (err != -ENOENT)
 			pr_warn("failed to retrieve FDT '%s' from KHO: %d\n",
 				MEMBLOCK_KHO_FDT, err);
-		return ERR_PTR(err);
+		goto out;
 	}

 	fdt_folio = kho_restore_folio(fdt_phys);
 	if (!fdt_folio) {
 		pr_warn("failed to restore memblock KHO FDT (0x%llx)\n", fdt_phys);
-		return ERR_PTR(-EFAULT);
+		err = -EFAULT;
+		goto out;
 	}

-	fdt = page_to_virt(folio_page(fdt_folio, 0));
+	kho_fdt_in = folio_address(fdt_folio);

-	err = fdt_node_check_compatible(fdt, 0, MEMBLOCK_KHO_NODE_COMPATIBLE);
+	err = fdt_node_check_compatible(kho_fdt_in, 0, MEMBLOCK_KHO_NODE_COMPATIBLE);
 	if (err) {
 		pr_warn("FDT '%s' is incompatible with '%s': %d\n",
 			MEMBLOCK_KHO_FDT, MEMBLOCK_KHO_NODE_COMPATIBLE, err);
-		return ERR_PTR(-EINVAL);
+		err = -EFAULT;
 	}
-
-	return fdt;
+out:
+	if (err)
+		kho_fdt_in = ERR_PTR(err);
+	return kho_fdt_in;
 }

 static bool __init reserve_mem_kho_revive(const char *name, phys_addr_t size,
@@ -2622,14 +2625,10 @@ static bool __init reserve_mem_kho_revive(const char *name, phys_addr_t size,
 	const phys_addr_t *p_start, *p_size;
 	const void *fdt;

-	if (!kho_fdt_in)
-		kho_fdt_in = reserve_mem_kho_retrieve_fdt();
-
-	if (IS_ERR(kho_fdt_in))
+	fdt = reserve_mem_kho_retrieve_fdt();
+	if (IS_ERR(fdt))
 		return false;

-	fdt = kho_fdt_in;
-
 	offset = fdt_subnode_offset(fdt, 0, name);
 	if (offset < 0) {
 		pr_warn("FDT '%s' has no child '%s': %d\n",
--
2.49.0.805.g082f7c87e0-goog

