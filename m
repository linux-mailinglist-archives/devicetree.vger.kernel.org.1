Return-Path: <devicetree+bounces-226249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C49BD66BC
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 23:56:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D6E8F4F4EB3
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 21:56:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F5AC2FB979;
	Mon, 13 Oct 2025 21:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="FHIl2z6w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080E92FAC0E
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 21:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760392563; cv=none; b=B8LE3EwvAOqQZzH2UNJewNKAzBE+zNs5L+lIF6cDacDyZkPmp5xeNqfsatuc0kK+fM5dCXp4CGNtJzfO03Pf/sKW0uWGirMrNkrjkz9bxSDr4tzukJdgvzvCBV/4qRQE/oPjWRb5km9G8gyLG1PtY/dRLvvrWGlzvsYVUyQWm4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760392563; c=relaxed/simple;
	bh=pkBAvc0IieGGas1vvYQtOkKUWHcQF724uRmRqVMGgPs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hi7FNbW/b/9s5yJ7qgX+Cw6ZUE827Qfui9OxD9HfL3+hwJjn/LGytgi8Gu98q3A8TSYbJmeJY5ELXpcAQUbGyMo6wZhxBmp9BptKaDoD1uuEncPvu33CsVA3Sv4zCmI7fmUEj9I0GYtUHg2wXIJL4ypTwq/UyE4VYH5HBj910TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=FHIl2z6w; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-33b5a3e8ae2so3134189a91.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 14:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1760392560; x=1760997360; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RuPJu5G7SzSWQtkc01838lduYo70q11KgqBzT6e6NXg=;
        b=FHIl2z6w3GRUpXJbpNIgjen4+RSRY3+nE/wWuRtp31VjDsg/HR7UR/8ERyalZhU6bh
         e0zb1Sd6MVuAQLa5lOyKv1VkWYkvu0rqsBGt+xmlkpkMADvYWVipVCgmP2frOuSE/P49
         HHxG+Wr/I9WBcp+XAnlENfU4dxIBySQIKj4j6bxBj3aI6es+lhJNm80j7tNPfoUxTaYU
         0bBzaxqiPxhHER+bK2rdG8i7kkm2nSYYUgnVnp4KZGzOMptqpJAw69cL6aGdhwvgFDGb
         U3HOPVb9sLSiB5fsGlB20ACyFPKLLKHoeh2KRexH1+RLJ0vFcNvPJ9gnzgJZ0ua4ng74
         8rSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760392560; x=1760997360;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RuPJu5G7SzSWQtkc01838lduYo70q11KgqBzT6e6NXg=;
        b=EEoeaECGICJpdrmzp82k13JQVpRnpeZycUK2+COLi9GD++HE7ua+rxJ9DL+6+vVJPW
         2p11dpYVuRaYpnST+bQzDD1gUqgjFm3kEgV5DVWSSdrIsupmv8LbLBvrpOCCEwpTX1my
         CyBre0LkExmd1zGsM0RHZdfvHYIWn8Yz26Q3rkhTQ04FsY9GwKR9oaHVxAoO02n7bO39
         lPoc2clGsQkofT7fbuzkmrvlK5raiL+0SLmc/9fTMdrp4bCG0yafNRFkSQa3aoA1Yukp
         ZMICsKqnk1t+8J5ULWU1opjP2VCqIg0vZ1mJdDMdsHGJE6eIjCJu1lHIasRejbJucXi/
         FQRA==
X-Forwarded-Encrypted: i=1; AJvYcCUQCuJSaAy+jKpcDxgyKLGWn0cbewFlsC9x9SkOHhPDErXJctwv/4tkUQeZajOKA3OmCZH3pfyYyetG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/s7P4GV5jJwlV9KYj1fH9ndtk4NQx+2V8Jiv7O/pH9ONPBbsG
	YtVHywY8rQqqX3VmZ94/zGBUe5XfLuyaEmd1hpAlEhCQoUDpPeX1NtzkKDa5kJKq1pI=
X-Gm-Gg: ASbGncsjjHdR0wmPbH6NXRI54/HsYQdkqR2DfPoP/NszThGwKGNK/io4PFx1xY1LQy+
	QBOzEFkY9yI7OkNtOTEBI5Gb5Phlz5Pzkf/L9hBWpnZfYk4vSoXyoZBjHdxnIw45Fki/5nGSvuG
	yr1uSJ3HBbtYm5OI5YnlRgeyBMFTO/p/KjpFsnIb6/jlLI860X9oNMinDu2EgNTNDP2ErAbWmcf
	8v/EDwffUvuI6iPccbc0G5xlFBliJzTQrgtmnXz95mbA3NJz6y/2VnjrlDaCrwdxppdyOPQfA1r
	b3UD8tiojBJj1u4PBMAu5Vv/drkB1sdutAb0irymvMM4703MZ38bSfHnOTs+MKzmK5K+ARNL8SF
	CGfCGc+4H2KJu6wXOPYT2ATZLhYmqN/45svY5Q2RiLKPJqtJfSZUeSEHxtYvu/Q==
X-Google-Smtp-Source: AGHT+IFqzpISbqmNZOG0bEFOm6WKZWXC8Tmhcil3Siykq0hDNGwZJ8D8UA33BLPp/sr08wWkDb8lvg==
X-Received: by 2002:a17:90b:2691:b0:330:55de:8c20 with SMTP id 98e67ed59e1d1-339eda4935emr36148338a91.2.1760392560121;
        Mon, 13 Oct 2025 14:56:00 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b626bb49esm13143212a91.12.2025.10.13.14.55.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 14:55:59 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 13 Oct 2025 14:55:53 -0700
Subject: [PATCH v20 01/28] mm: VM_SHADOW_STACK definition for riscv
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251013-v5_user_cfi_series-v20-1-b9de4be9912e@rivosinc.com>
References: <20251013-v5_user_cfi_series-v20-0-b9de4be9912e@rivosinc.com>
In-Reply-To: <20251013-v5_user_cfi_series-v20-0-b9de4be9912e@rivosinc.com>
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
 Jann Horn <jannh@google.com>, Conor Dooley <conor+dt@kernel.org>, 
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>, Benno Lossin <lossin@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 alistair.francis@wdc.com, richard.henderson@linaro.org, jim.shu@sifive.com, 
 andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com, 
 atishp@rivosinc.com, evan@rivosinc.com, cleger@rivosinc.com, 
 alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org, 
 rick.p.edgecombe@intel.com, rust-for-linux@vger.kernel.org, 
 Zong Li <zong.li@sifive.com>, David Hildenbrand <david@redhat.com>, 
 Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.13.0

VM_HIGH_ARCH_5 is used for riscv

Reviewed-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Acked-by: David Hildenbrand <david@redhat.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 include/linux/mm.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index d16b33bacc32..2032d3f195f1 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -380,6 +380,13 @@ extern unsigned int kobjsize(const void *objp);
 # define VM_SHADOW_STACK	VM_HIGH_ARCH_6
 #endif
 
+#if defined(CONFIG_RISCV_USER_CFI)
+/*
+ * Following x86 and picking up the same bitpos.
+ */
+# define VM_SHADOW_STACK	VM_HIGH_ARCH_5
+#endif
+
 #ifndef VM_SHADOW_STACK
 # define VM_SHADOW_STACK	VM_NONE
 #endif

-- 
2.43.0


