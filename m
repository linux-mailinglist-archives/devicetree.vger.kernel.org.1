Return-Path: <devicetree+bounces-106899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B34BB98C297
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 18:11:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E31411C24148
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 16:11:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A43261CEE8C;
	Tue,  1 Oct 2024 16:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="cBcAGKnq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065CE1CEAD1
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 16:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727798857; cv=none; b=HDivWZFLA1Jp96JV87i/M8UTzznqEUxWmsdbhN+jkJYOhkxrHf1iMx1in+83sMOF+H+SG15xYdlhBuOQo0ocbik4J9ujdR9L1K1VWrj2vFBnIX9JfZP4+VUwVU64GHXebaXQdJbF2h9G8dZyvyV11Mmgg3/dsdh/aoQOO3bLBq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727798857; c=relaxed/simple;
	bh=4L9Pc+WLf8NU9UEf50b4WKNQdDQT4lrkAVzX//n1GjI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fzgZF/bUq19KzoXVngljdgHDvVHJlQCJXOrfGiUBB+wFx9zzADbvA7yr7UuPBJV5HDbGhd/Lq4B3mAw6/c6D+TO1NuQ0j2bVxVZ/GObn8u6NLvJfOKL5kD26g84HbwQSell6s5ZCUSRAowBG0WuaFqeYO9+9XP6reHgYtTYpLf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=cBcAGKnq; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2e09f67bc39so4696201a91.1
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 09:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1727798855; x=1728403655; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I6L9CXOfGC8FGkDgNo32YOnEr2hJuvgG2CDkhLFheFM=;
        b=cBcAGKnqpmZcK7Yld0PDytYVc46A055TC9qikNAcgyH6cwEMmhvGypfo6TVt4AQNX6
         Su/a19aWPms+m7GdDYJmUAwXPnCSgenGVLdfpIJCWdscEB0o/ZQ6VIfs2KNxHoN48XnZ
         +mLL6kDNcnf5kVj3TptpiiIaJAE+ye3fvWpPpVml8+1MB42zdI+klj12lGM9GVLOpWv4
         k7N7CP+zaGqyTtdhFR1vgxq8REIGJ7BQBUob/4efBUBUnpu5JqJ1G2ATj1GpJtKOGs+X
         vYZvEde7AMUh5hodOGTL6OwO2TRktqck6ExrdENh0q9ZGXEME6T0aUpx8Dj4EhZ7BZCL
         BydQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727798855; x=1728403655;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I6L9CXOfGC8FGkDgNo32YOnEr2hJuvgG2CDkhLFheFM=;
        b=T3+N/8GVwiMNMRKAoFtYQ7e/tRPCTcrbijFgFjwJwXI88wK3UZigzMDL3nzCiJgd5X
         W1JVNpEcPd3DvheEAHPjaKDIjsCd3vsQmahDi8IuNpMcqlAFd8BNRWTpPb78xmtx8RCW
         YFPIeuhudas6JyUcZ/AeOls9ZqOTgQHqeLFlI+IIElYiyVA93PDr3sUJjiLpyl1RqrBn
         VaOCPrwgOczcmBvOU8/AfxrxAthZlslmk6f2K7brFarE5Xm1hmwhD/ZH8f+AHmIGiZnG
         yotfHhcoclwbYE4b9i41IxZ/fv6QDjImqp3kni6sAosDdsanEKmtY99gvu6iRJTc7jw6
         U4yA==
X-Forwarded-Encrypted: i=1; AJvYcCUSxGtFWihhvu5xftNemnjquDj4tsZ7iI1TRvvAQcRaKHrai5aMsQlS0IV4+a/K9rsnx5eqaXhrpkce@vger.kernel.org
X-Gm-Message-State: AOJu0YzzDTJw3Zo9rEjD5Hx7mdmJ4ywifv7xSFw13vMRBOQChLao3vbx
	ZSIHKSjhUdwfqt3HMdzkgRdQb2+/guvkra3+SbppPFzQghPvF713kpCi09k/0AE=
X-Google-Smtp-Source: AGHT+IF8xhnYD/pqfXYfj6NnlMKMMkkR64MiBO6DNyNWgrVcZh53ylTJhkG5X1f7jZZJUwYOw4ZShQ==
X-Received: by 2002:a17:90a:77c4:b0:2e0:74c9:ecea with SMTP id 98e67ed59e1d1-2e184681664mr241500a91.10.1727798855416;
        Tue, 01 Oct 2024 09:07:35 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e06e1d7d47sm13843973a91.28.2024.10.01.09.07.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 09:07:35 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Tue, 01 Oct 2024 09:06:18 -0700
Subject: [PATCH 13/33] riscv mmu: teach pte_mkwrite to manufacture shadow
 stack PTEs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241001-v5_user_cfi_series-v1-13-3ba65b6e550f@rivosinc.com>
References: <20241001-v5_user_cfi_series-v1-0-3ba65b6e550f@rivosinc.com>
In-Reply-To: <20241001-v5_user_cfi_series-v1-0-3ba65b6e550f@rivosinc.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>, 
 x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, 
 Andrew Morton <akpm@linux-foundation.org>, 
 "Liam R. Howlett" <Liam.Howlett@oracle.com>, 
 Vlastimil Babka <vbabka@suse.cz>, 
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Christian Brauner <brauner@kernel.org>, 
 Peter Zijlstra <peterz@infradead.org>, Oleg Nesterov <oleg@redhat.com>, 
 Eric Biederman <ebiederm@xmission.com>, Kees Cook <kees@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 alistair.francis@wdc.com, richard.henderson@linaro.org, jim.shu@sifive.com, 
 andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com, 
 atishp@rivosinc.com, evan@rivosinc.com, cleger@rivosinc.com, 
 alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org, 
 rick.p.edgecombe@intel.com, Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.14.0

pte_mkwrite creates PTEs with WRITE encodings for underlying arch.
Underlying arch can have two types of writeable mappings. One that can be
written using regular store instructions. Another one that can only be
written using specialized store instructions (like shadow stack stores).
pte_mkwrite can select write PTE encoding based on VMA range (i.e.
VM_SHADOW_STACK)

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
---
 arch/riscv/include/asm/pgtable.h |  7 +++++++
 arch/riscv/mm/pgtable.c          | 17 +++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 2c6edc8d04a3..7963ab11d924 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -416,6 +416,10 @@ static inline pte_t pte_wrprotect(pte_t pte)
 
 /* static inline pte_t pte_mkread(pte_t pte) */
 
+struct vm_area_struct;
+pte_t pte_mkwrite(pte_t pte, struct vm_area_struct *vma);
+#define pte_mkwrite pte_mkwrite
+
 static inline pte_t pte_mkwrite_novma(pte_t pte)
 {
 	return __pte(pte_val(pte) | _PAGE_WRITE);
@@ -738,6 +742,9 @@ static inline pmd_t pmd_mkyoung(pmd_t pmd)
 	return pte_pmd(pte_mkyoung(pmd_pte(pmd)));
 }
 
+pmd_t pmd_mkwrite(pmd_t pmd, struct vm_area_struct *vma);
+#define pmd_mkwrite pmd_mkwrite
+
 static inline pmd_t pmd_mkwrite_novma(pmd_t pmd)
 {
 	return pte_pmd(pte_mkwrite_novma(pmd_pte(pmd)));
diff --git a/arch/riscv/mm/pgtable.c b/arch/riscv/mm/pgtable.c
index 4ae67324f992..be5d38546bb3 100644
--- a/arch/riscv/mm/pgtable.c
+++ b/arch/riscv/mm/pgtable.c
@@ -155,3 +155,20 @@ pmd_t pmdp_collapse_flush(struct vm_area_struct *vma,
 	return pmd;
 }
 #endif /* CONFIG_TRANSPARENT_HUGEPAGE */
+
+pte_t pte_mkwrite(pte_t pte, struct vm_area_struct *vma)
+{
+	if (vma->vm_flags & VM_SHADOW_STACK)
+		return pte_mkwrite_shstk(pte);
+
+	return pte_mkwrite_novma(pte);
+}
+
+pmd_t pmd_mkwrite(pmd_t pmd, struct vm_area_struct *vma)
+{
+	if (vma->vm_flags & VM_SHADOW_STACK)
+		return pmd_mkwrite_shstk(pmd);
+
+	return pmd_mkwrite_novma(pmd);
+}
+

-- 
2.45.0


