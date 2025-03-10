Return-Path: <devicetree+bounces-156199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F70A59869
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 15:55:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5D7F7A2A25
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 14:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B45C7230BD2;
	Mon, 10 Mar 2025 14:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Hx4U+qGs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C107D230981
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 14:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741618374; cv=none; b=g7OxkribYj4S4wKOHtZ+nxBBqxa0SSzDHs5bt1ImDQX1PYQtiiOR2zZc3ZsArmadCmQjizZnE8iIRSyRKJl0UItF79ay6u7p98sWIts/kVUq+Ym+MlyF/032uPSbwNNYiGCfQzg0TN4jzncnp2fL/yKYGodENuFmKA58THBOTV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741618374; c=relaxed/simple;
	bh=HOQqOSPO+MhBbccjb2UbKqhOT3MYkxspDNQyPTpGYhw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pYUE/PlhE1JvUIvlriuvixmMJgY5ftyO+cWGxflk6RX3XNi3/BeaEeMarsK6uC1IV29tvfGkkwCAbGku6FR77jREbxPfc3DybJgV+TRTwLQV9ZNAlfEzPKZNK4cVjW5odHuz+ZO3jdcvRgkNg5EPtRvDblPcfNiEjNMXfpICiSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Hx4U+qGs; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-22398e09e39so78269215ad.3
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 07:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1741618372; x=1742223172; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WPde6NcIQ47rHbegQG8dPMP+orPth983zEAPX8ktkAY=;
        b=Hx4U+qGs9S6hqwXpS5iUSJGfoCj/H/Z2V37VGzS1jtYLjJ9Od9PdFoyeMKbfw8hB+A
         OylLH/zZLAYT7hAp2IKTnQfwYK/TU5Mg0N93bgKBl24PVn8Agn6YYZnpamFwYsLSXoTw
         +2d09hyxqQlZVx7gvxJAKZya1LORRFpS0Nl8WN9oQHIpJjGoRBPMpY3Mt1IaamowcCBu
         DdFkAfLXjr+9dikeulp7CLiDbkjs8yiWh+CK6SQjZoBzpDyHwxbohMqq+cwMK/158zJZ
         upRS1TC2lCXZd0ZYgl0ApPGe6FbmvTdHLDfhzlcM63pWopY5ykHE4RoJF1DH2YZjPQdj
         /wiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741618372; x=1742223172;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WPde6NcIQ47rHbegQG8dPMP+orPth983zEAPX8ktkAY=;
        b=Ya3JzavdEwu3nAvtEMgAjdKYLL10zHVeM3wuuE+aaJ9mufNJDQsATm6fZb5LRUy3qR
         95puYgb0+2HIE/ydZxHJh81EoFXlY/SM04nXtgsRGd+1m/kvDMU36SQqfwUuMzOfiicU
         /tPjyRWq/t0tK+soCUEBOyui4Vd5HjpyNZaC7rkRN/6zzgQMiKvZ3M+TQw0OsyMelHjh
         9pBc79XxKRx5ceDkS62zSZzXdBLVPioChaZ36nDJxTWUEALiJ79TcJRaQJ8/IvHPIUa5
         Z9nGa7vfkWO5rzJa4wnBDSOXgyJzKWfSIjUI37iB9wgu6IKgouvd+WxNmWYDaW5nSG7+
         JLeQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsJ+BkMlqgjcV9oJwem90HhOKCsusoUz6yyt8Iue2HmDON2svmo4V1s1TFX6eeKYuRM3fGUSEZDB8G@vger.kernel.org
X-Gm-Message-State: AOJu0YzKDBFcxRmRfhO8stYVJsZQzLeFpSszD8zqgvcuEORqNBM4r8Af
	wJZQt0zzz/zs6LMFXj6WQJlLjqZSz33U0snznBfDPvWaNnnZwRxHjVLhELRaHhI=
X-Gm-Gg: ASbGncteiZq0NuNTUYX89s8Y4fAYUdYwcOy2lAs3ZH3DeS/EXlXgo44EjOxAKo+SXMq
	CggnHMDbbr4IMXpWpEcSM3WBX9/Qup2G1t9leeKMSS6+CyftcvD3Mgo+QiCfZeiV/ri0xO/feTh
	sE4GdbR0vCIdcV+HF1oy6vXasbZpK2q/46cIo2QY35dH1S+KwKaNE4EFnIKDkAYHbFUUKFdNDUK
	HK4mu5XXNtYoOMfTEUA9sNZlJwBt/eOBwBBI+Yo3WhmN9O5hGMa1sFDu8C8J2mGvwc/SenfMElG
	s+crPqEHeO11JngKVjjVE7WSymT0Q4v0vrZEpx5D3xpHWfIULizVCZg=
X-Google-Smtp-Source: AGHT+IFqTxU+p9IhkI8RGdvHdyJEHoK+vlH5JWBOUOv0UhGLOT20CpZOV0dtGMVo/7iEBeBe/MTApw==
X-Received: by 2002:a05:6a00:928b:b0:736:4d44:8b77 with SMTP id d2e1a72fcca58-736aaa1cf9fmr27006391b3a.8.1741618372105;
        Mon, 10 Mar 2025 07:52:52 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-736d11d4600sm2890275b3a.116.2025.03.10.07.52.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 07:52:51 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 10 Mar 2025 07:52:30 -0700
Subject: [PATCH v11 08/27] riscv mmu: teach pte_mkwrite to manufacture
 shadow stack PTEs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250310-v5_user_cfi_series-v11-8-86b36cbfb910@rivosinc.com>
References: <20250310-v5_user_cfi_series-v11-0-86b36cbfb910@rivosinc.com>
In-Reply-To: <20250310-v5_user_cfi_series-v11-0-86b36cbfb910@rivosinc.com>
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
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Jann Horn <jannh@google.com>, Conor Dooley <conor+dt@kernel.org>
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
index ede43185ffdf..ccd2fa34afb8 100644
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
@@ -749,6 +753,9 @@ static inline pmd_t pmd_mkyoung(pmd_t pmd)
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
2.34.1


