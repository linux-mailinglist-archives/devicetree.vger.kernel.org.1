Return-Path: <devicetree+bounces-56088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 31102897C59
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 01:45:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8C057B2917D
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 23:45:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4519158D60;
	Wed,  3 Apr 2024 23:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="yczTLXi6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409BD158A2B
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 23:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712187726; cv=none; b=sc/e4Xk0D5X0JSlVACuOXlcU7XtSVIne0VWwe4LX8KNvmPImzHjTICGmrDqUkHw9HZr3r/BpbSaxhSaTOu1QtgG+5L/e0bd1HZZOYe73RXUkzYfRB4d10B8/jtXJJZlSwfJXe7wtNQ+M7W2zXe98PlE8zj0ymLfd4Q4/GMHQ1sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712187726; c=relaxed/simple;
	bh=7I6zjgCFV6RndlqIEMECkC47T7n+mKP10TbnVazBOuA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kX5k+DbrWLd4FrJ5qAlx4FYCgAjRj+S5CkvXZxWCJ+c+mkYvTllJYDn5xCyzjjXgeM9Zxdwt23MmhGBDHsSsjkTjOvGK6RdD1+ASc1JCSV2l+oxj3+XP8WRlPynLohPp5qYqxFz5UFQdE0e269ticpp+msfgw938RiO1hkfr1wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=yczTLXi6; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1e28be94d32so2956325ad.0
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 16:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712187724; x=1712792524; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+4XcZbT52YyPYTbBbJHKVVBDZyhFzr+R5No8SlxzOH0=;
        b=yczTLXi6zUHtz5YJOSo2Xd2507fuOjhK9TG3SGoGraFFrilfIGdqx/2sCMeV2BkEqK
         GZ+Jd2bVcQq8PVTAgWEH6AuiloibveUXsjaaI7vXr5BDJNDxqugUHffBoz3dxnr4Xv5V
         x2DJ+Kj7G0Hnm1HF4tyd66ihj/6RZiVS+jIobpSVGLSdJhFRnQUcxmWEIlt9z8NsZYHe
         JcjQDrwar9PGyarohZLiGXn7DrCNIIK0vYzhF0sObqEc85Vr1HZ0Gk1v0oLvhFB8DFFP
         hteXLQjQildKZctArPzFozyAij4iOHApcBHdxUdmcf/WirBRovsfJZXT6DtipV3Qq4Zt
         mBEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712187724; x=1712792524;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+4XcZbT52YyPYTbBbJHKVVBDZyhFzr+R5No8SlxzOH0=;
        b=vSf3o9sWTzr2cuTLFUvt1xr/ZLet6i4Nuo4+a2yp/d905Z3SDgUWwW2GOQGdEJ2qSp
         JLacYZQDxpeaHEqj4JiRf/oh92TcVnQW6Q3l/ybO8aZwS+QKjgnrZJiXJbm5idifz0SG
         AGjXwIBZfmK5x7AwByPl1/1BeEyUVlQpEGMt4Le6IfZwr2mqdIpipU8jIDLGA6Lng8u5
         O7/8oR56a1h+zW8Vz42YSQ20UXv68xzSmQY0FTbaW50k3Kw/iZs6H4sPiMP/GDu6II/r
         3booCg8KSnISw0Rr38Ag9srZRwHAI+jQmmlUjjYNM5xHzTcS7tWevBqm5ktiFw/TNJgI
         swmQ==
X-Forwarded-Encrypted: i=1; AJvYcCV71cqDvxyr2ESH7H90H/YA3Twcvepm1C30lVZAggqgV5CzwnXpPaPuis7r+9PclGHpWbT6NAZ9QKfsJjP1ZJF1PzXD7HfMa9qLFQ==
X-Gm-Message-State: AOJu0Yw+3oatehIWmqQCaw+PcJLtY+98G1/oQC59LRNcMvIRBcE1vXTj
	9sjYZbAf0Rz00IZqAaRx2fj4QP4C26CTevuZiUOagUSjS/4y9LtgOqjqB5rWZiQ=
X-Google-Smtp-Source: AGHT+IE5OtNNwwi7V8fcgm4SldB7youBAC6PguykSuN4bSQ+2Jz71QrTBvPX9ID197EWuQqic+Bd6Q==
X-Received: by 2002:a17:903:2448:b0:1e2:62c9:6ac7 with SMTP id l8-20020a170903244800b001e262c96ac7mr772428pls.41.1712187724491;
        Wed, 03 Apr 2024 16:42:04 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id b18-20020a170902d51200b001deeac592absm13899117plg.180.2024.04.03.16.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 16:42:04 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
To: paul.walmsley@sifive.com,
	rick.p.edgecombe@intel.com,
	broonie@kernel.org,
	Szabolcs.Nagy@arm.com,
	kito.cheng@sifive.com,
	keescook@chromium.org,
	ajones@ventanamicro.com,
	conor.dooley@microchip.com,
	cleger@rivosinc.com,
	atishp@atishpatra.org,
	alex@ghiti.fr,
	bjorn@rivosinc.com,
	alexghiti@rivosinc.com,
	samuel.holland@sifive.com,
	conor@kernel.org
Cc: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mm@kvack.org,
	linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	corbet@lwn.net,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	oleg@redhat.com,
	akpm@linux-foundation.org,
	arnd@arndb.de,
	ebiederm@xmission.com,
	Liam.Howlett@oracle.com,
	vbabka@suse.cz,
	lstoakes@gmail.com,
	shuah@kernel.org,
	brauner@kernel.org,
	debug@rivosinc.com,
	andy.chiu@sifive.com,
	jerry.shih@sifive.com,
	hankuan.chen@sifive.com,
	greentime.hu@sifive.com,
	evan@rivosinc.com,
	xiao.w.wang@intel.com,
	charlie@rivosinc.com,
	apatel@ventanamicro.com,
	mchitale@ventanamicro.com,
	dbarboza@ventanamicro.com,
	sameo@rivosinc.com,
	shikemeng@huaweicloud.com,
	willy@infradead.org,
	vincent.chen@sifive.com,
	guoren@kernel.org,
	samitolvanen@google.com,
	songshuaishuai@tinylab.org,
	gerg@kernel.org,
	heiko@sntech.de,
	bhe@redhat.com,
	jeeheng.sia@starfivetech.com,
	cyy@cyyself.name,
	maskray@google.com,
	ancientmodern4@gmail.com,
	mathis.salmen@matsal.de,
	cuiyunhui@bytedance.com,
	bgray@linux.ibm.com,
	mpe@ellerman.id.au,
	baruch@tkos.co.il,
	alx@kernel.org,
	david@redhat.com,
	catalin.marinas@arm.com,
	revest@chromium.org,
	josh@joshtriplett.org,
	shr@devkernel.io,
	deller@gmx.de,
	omosnace@redhat.com,
	ojeda@kernel.org,
	jhubbard@nvidia.com
Subject: [PATCH v3 13/29] riscv mmu: write protect and shadow stack
Date: Wed,  3 Apr 2024 16:35:01 -0700
Message-ID: <20240403234054.2020347-14-debug@rivosinc.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240403234054.2020347-1-debug@rivosinc.com>
References: <20240403234054.2020347-1-debug@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

`fork` implements copy on write (COW) by making pages readonly in child
and parent both.

ptep_set_wrprotect and pte_wrprotect clears _PAGE_WRITE in PTE.
Assumption is that page is readable and on fault copy on write happens.

To implement COW on such pages, clearing up W bit makes them XWR = 000.
This will result in wrong PTE setting which says no perms but V=1 and PFN
field pointing to final page. Instead desired behavior is to turn it into
a readable page, take an access (load/store) fault on sspush/sspop
(shadow stack) and then perform COW on such pages. This way regular reads
would still be allowed and not lead to COW maintaining current behavior
of COW on non-shadow stack but writeable memory.

On the other hand it doesn't interfere with existing COW for read-write
memory. Assumption is always that _PAGE_READ must have been set and thus
setting _PAGE_READ is harmless.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/include/asm/pgtable.h | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 9b837239d3e8..7a1c2a98d272 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -398,7 +398,7 @@ static inline int pte_special(pte_t pte)
 
 static inline pte_t pte_wrprotect(pte_t pte)
 {
-	return __pte(pte_val(pte) & ~(_PAGE_WRITE));
+	return __pte((pte_val(pte) & ~(_PAGE_WRITE)) | (_PAGE_READ));
 }
 
 /* static inline pte_t pte_mkread(pte_t pte) */
@@ -581,7 +581,15 @@ static inline pte_t ptep_get_and_clear(struct mm_struct *mm,
 static inline void ptep_set_wrprotect(struct mm_struct *mm,
 				      unsigned long address, pte_t *ptep)
 {
-	atomic_long_and(~(unsigned long)_PAGE_WRITE, (atomic_long_t *)ptep);
+	volatile pte_t read_pte = *ptep;
+	/*
+	 * ptep_set_wrprotect can be called for shadow stack ranges too.
+	 * shadow stack memory is XWR = 010 and thus clearing _PAGE_WRITE will lead to
+	 * encoding 000b which is wrong encoding with V = 1. This should lead to page fault
+	 * but we dont want this wrong configuration to be set in page tables.
+	 */
+	atomic_long_set((atomic_long_t *)ptep,
+			((pte_val(read_pte) & ~(unsigned long)_PAGE_WRITE) | _PAGE_READ));
 }
 
 #define __HAVE_ARCH_PTEP_CLEAR_YOUNG_FLUSH
-- 
2.43.2


