Return-Path: <devicetree+bounces-144891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 353C5A2FA32
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 21:30:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 795AA188481D
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 20:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF936254B13;
	Mon, 10 Feb 2025 20:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="bdZGmsNC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4AAF255E5D
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 20:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739219224; cv=none; b=FbDcN4GBauRTjujW/yD5D3XFzIWn+y15ndkpoP1FjNT2ep7QJRr65Zbt1r50ZWlr52Wu2v8T2szYUC7T1JJXBTjLZPPYB4GD597Xi3RVANCC7lgGejr2/SJ917qlgzJ2cP64G9K6/iyctbjZdTjMdZ+ENvcvk0QVFvlR0w10Yg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739219224; c=relaxed/simple;
	bh=HOQqOSPO+MhBbccjb2UbKqhOT3MYkxspDNQyPTpGYhw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qjVVdVn+R3VyvHXQuy9A4xnZ1guxiAI3EbDiavsZ/GF8bbkzrw/G8QM/pz6ajq8/UCivV+neApnLaFNQXlNrb8uMq20sXRfgn8uPnIHAGHAAt4EEdyULSNMOWrUjDUfFyUVF1NfvpTg/g4RKRv/rIQa5CH+T43dLCWKnfPHR50E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=bdZGmsNC; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-21f5a224544so37852375ad.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 12:27:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1739219222; x=1739824022; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WPde6NcIQ47rHbegQG8dPMP+orPth983zEAPX8ktkAY=;
        b=bdZGmsNCbRfHq+wwkLL449aLVBt/zCKaWvM0i5+x49wRi+u+0XoYUc6IizqI+m8OXb
         qJ9HUlwDSG/EWWyR0t1VqieUZkQ/gByK0EKp60yXnQEbNFMW8MKQJf5lue2dodRIIfmL
         LQiYykIP+9XttRSVmw1kR6QoRoeqcLJY4Lav0UqYxAKGajf806AWum4rMXEmDjfEd1Mn
         V18D2od3yvANtzqh9k1QC5zGAJR2yfro/+tzcf8T/4zWOJcbKQVAF8AiMP7eQyBHquu8
         zg+J3nvVlfAhjqfDyqY73DPN8TZOr5lYeDjRgr53TG9WRAIsnWa+LwYXKzlSgAPElyor
         ls6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739219222; x=1739824022;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WPde6NcIQ47rHbegQG8dPMP+orPth983zEAPX8ktkAY=;
        b=ZELAaDqSezTLc+ohn7fEDknwJrSu0/C6PsOFPab4d18Vc6e9200Y/+ZMbooqfVDHzT
         84Q/BNlZZE8s84tUHKXxjRBDLt+9nFKSxSrduc2FiOEO01Mugvz6UR7qn+Lfgs3uqSeZ
         2DDv1oRapo/Pd4upqkAwnWb/hHGIT9gPAyO5gTCieXbWz1STUrRpBVa9cMPFfPfSP0eD
         QUCOHToXJsV286YdVuTHbwn5I56dzrTL1qLGABb+6OPC3vGJSB0HW5fK4UtJlingrcmj
         sBBvQuGfb4GAeMYduQRcqIvz8C4FFoWmAQX/ffTEB69O46cBMvzTvZwIQ/chiN5JijBZ
         T64Q==
X-Forwarded-Encrypted: i=1; AJvYcCX/U3PYb3U5o2epJjxYUSt9/k9LuVyR7xstg6mAuRbmgVSe7c3TQYbpc0n0yeoRIWNLoNdsm+cLmH/Q@vger.kernel.org
X-Gm-Message-State: AOJu0YwXtRmIBNXQa3XTLqlZyHDT3GJkVBxAD2B/2aZWBk5o1a3V+h8E
	6gr1S7rRWiomssH/2yT+S0cG+jbqIHaqXgUhGDInSEJ8oI5fkP9M2jASoOl408s=
X-Gm-Gg: ASbGncv7UL72DAm94wDrJQ7O1S8+voh84OSkG8eUXkJywOjD19ZBUUzCwr63ZTqPwzY
	fEvsDRhbB1RZ0dVhHApCUv2LDEM89CqRfKn5sbITzTsp+kc/KLeqX9oYa7OacefcxZsIKB0qSOf
	2iU8cDCuo/dtZTlOwMrTzc0pZPyhOXJN62UXwmQ0nSEFGAU/o+8G/J/LpCEWlwqb6/8I++QaAkP
	jwM4/NZpUAs3bTR7c1saCLXVfwZ/WnhyQYWdV6cwOkfoZ1HCKouCyc4tVp7f5oa+TFtrOk/9kFI
	H1RciQYuwz3gl4l9rgkvtAnNig==
X-Google-Smtp-Source: AGHT+IGkck8QMdE2zF0rHgCttuOewb5gUafKkLZkDOmgM8iUcqpClnt2HEbL9+VvYLlypifzjE6CDA==
X-Received: by 2002:a17:902:f687:b0:21f:4479:a34d with SMTP id d9443c01a7336-21f4e6bf3f3mr236952035ad.12.1739219221922;
        Mon, 10 Feb 2025 12:27:01 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3687c187sm83711555ad.168.2025.02.10.12.26.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 12:27:01 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 10 Feb 2025 12:26:41 -0800
Subject: [PATCH v10 08/27] riscv mmu: teach pte_mkwrite to manufacture
 shadow stack PTEs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250210-v5_user_cfi_series-v10-8-163dcfa31c60@rivosinc.com>
References: <20250210-v5_user_cfi_series-v10-0-163dcfa31c60@rivosinc.com>
In-Reply-To: <20250210-v5_user_cfi_series-v10-0-163dcfa31c60@rivosinc.com>
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


