Return-Path: <devicetree+bounces-172133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A49AA3EFA
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 02:32:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78D624A567A
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 00:29:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C188D246799;
	Wed, 30 Apr 2025 00:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="DE9+7HPz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B531923C519
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 00:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745972210; cv=none; b=jvCUskPcqzN4MKT30y+K7MKj3xyCXej3vJ9U+mvECNIskbycpr0/+JLmjH90OH9bMH6zZ37HCRRkGL/K56bideTtSMFC76BuBAr1AaUGxuKI/bXeAeQzcj7R8PmHIoFT0TofASlR/zRpBP0qBNNVy3hbm9xwGt8H/0SHlQqdylA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745972210; c=relaxed/simple;
	bh=5l4eYXK/UGIl+TXQnZwANU66ClnBTNssKdiHYV/yMZ4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ANvwaswbBdlGjxzSuDxsa0K53xWcUv84fRIgwgrwEn6XbocU7pz0cV3ZVJo/y0DjSqR4640PVSJ2piYF4DgcvD0D4b4DY8EXsX1OtLlX0uMWAw87iTkhfPNTNfy8cqHhmAT9R4BaAYXFoFfrkMTjxo6jHBASCXKcGdSQci84RDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=DE9+7HPz; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2279915e06eso76248565ad.1
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 17:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1745972208; x=1746577008; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2tvKQDIIBJb26wPDVIJoD2xzubcY8uay1NjKLxC4PFw=;
        b=DE9+7HPzxPOEaibFgUkjhUnhAkT0ySzDmikR/k1rm2Y6ZTisTHjfTdTfZZjcXdRtOx
         O/TU7Vc28+25rPUdh2JT2ntq4cnVyXd5PL3TugXpxlqxVhK737/bV4P5Lwwq0bNCgac8
         DUu+5LsVEhzk3fSSRRqwR68lHFSonSOTa4wnIPOTrI8JxTS1NU5aGKOPgluBUMUimWlX
         +zGLtXRbzjVEhK2ONU1obN6s5r8NeN7Pig/PUgztyGCxjLlSAo+MF3PkayfZ5fpSWOWP
         MM/fftKggRC86X5Ueb11qnIdXXefbQL+GxzJUw77ECo9+1KEyyPsX2LWX8ynnAsE9hG/
         Kkxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745972208; x=1746577008;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2tvKQDIIBJb26wPDVIJoD2xzubcY8uay1NjKLxC4PFw=;
        b=FDP/OrJVUkXtdcHsF6S+v8gts/tn7jBpd5WhpX/i/Oou2iWoz+/tldKrijlgT51iiD
         ofQP68erU1+yLmQR53IOP0O/zSW/2JEUyrqLuXScyV86Om2FvRHmBXRl/FASvqjd6BSn
         Dqo8Kq9NRbf2ICwIHwzs/EFSItILvWL4NuMTRvFP5ERxFr/tL1Gq9ZWCbP+ajH5cY4vS
         VfsB/OL0lck1OKm+i92rpwV+UmjSptPBWS8SVanlB+hgruN/j5FwwrU7UEGHs01Ruu71
         aAwlJd+TfxWnYyWKcgQtoGLRvzGw6J3TS4d/8ID58VX8/T9ghZJqw/wsCq3c9fJXEX4w
         wv3w==
X-Forwarded-Encrypted: i=1; AJvYcCWJn479DHH/WQkjlZNE3bN/BASFSDq7M9kgWby/hI6vzrnvTbb2k27x1O4Va7ro9tjWljJYGfEro5Ft@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1hC2bu3IZIgSSNiipF5GhxdFymqOPYZ8fzOk5QjnXnmPl6f3V
	Mj+ATd3olsT6IDGw6niKslpO6/6Ptf43zxBa9N6fPFp4dwTENPe/R3S027OlvwQ=
X-Gm-Gg: ASbGnctG7vDPDH2pDFbEc4Doo768OwqN6NiVWhqS4PrjqpcInqK9cKHSrEGWtyG3mY8
	26B4KyUa/5jEEAvCxtMt6gHITZO7I16Jc1I1ekS4AAJUl16pnJ8RfL6UX5MpsVr/O+kyP/5jNtI
	r6MLNw3N9H0wpDKx2QrHQypS+KqfqJ04tcA3NMrfvS6PqbdJzyRP3sYvsHKAQfm3t69X7StBGcr
	6J+RYL61v5FOVA7y0VO8DuLTYPKq+wzcQL1HJtjprh5MiPBdA77zMfplnvM3DDDoLurXNS6BYQn
	Iti1FrXhzZojkfQY94fqG0jYCV+d+7iG6dhZYt/ZAWXPW3ptzuQ=
X-Google-Smtp-Source: AGHT+IHF0KduTnYGQrePlJEI6tXkimvw7nrR1QkHLBA+cw8lQBj1dgbc3Ah+yAI0hO6Ky9wQoxTVRg==
X-Received: by 2002:a17:902:d4d1:b0:223:67ac:8929 with SMTP id d9443c01a7336-22df56bf231mr8352805ad.0.1745972208061;
        Tue, 29 Apr 2025 17:16:48 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db4d770d6sm109386035ad.17.2025.04.29.17.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 17:16:47 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Tue, 29 Apr 2025 17:16:24 -0700
Subject: [PATCH v14 07/27] riscv mm: manufacture shadow stack pte
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250429-v5_user_cfi_series-v14-7-5239410d012a@rivosinc.com>
References: <20250429-v5_user_cfi_series-v14-0-5239410d012a@rivosinc.com>
In-Reply-To: <20250429-v5_user_cfi_series-v14-0-5239410d012a@rivosinc.com>
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
 Benno Lossin <benno.lossin@proton.me>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>
Cc: linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 alistair.francis@wdc.com, richard.henderson@linaro.org, jim.shu@sifive.com, 
 andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com, 
 atishp@rivosinc.com, evan@rivosinc.com, cleger@rivosinc.com, 
 alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org, 
 rick.p.edgecombe@intel.com, rust-for-linux@vger.kernel.org, 
 Zong Li <zong.li@sifive.com>, Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.13.0

This patch implements creating shadow stack pte (on riscv). Creating
shadow stack PTE on riscv means that clearing RWX and then setting W=1.

Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Reviewed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/include/asm/pgtable.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index dba257cc4e2d..f21c888f59eb 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -433,6 +433,11 @@ static inline pte_t pte_mkwrite_novma(pte_t pte)
 	return __pte(pte_val(pte) | _PAGE_WRITE);
 }
 
+static inline pte_t pte_mkwrite_shstk(pte_t pte)
+{
+	return __pte((pte_val(pte) & ~(_PAGE_LEAF)) | _PAGE_WRITE);
+}
+
 /* static inline pte_t pte_mkexec(pte_t pte) */
 
 static inline pte_t pte_mkdirty(pte_t pte)
@@ -778,6 +783,11 @@ static inline pmd_t pmd_mkwrite_novma(pmd_t pmd)
 	return pte_pmd(pte_mkwrite_novma(pmd_pte(pmd)));
 }
 
+static inline pmd_t pmd_mkwrite_shstk(pmd_t pte)
+{
+	return __pmd((pmd_val(pte) & ~(_PAGE_LEAF)) | _PAGE_WRITE);
+}
+
 static inline pmd_t pmd_wrprotect(pmd_t pmd)
 {
 	return pte_pmd(pte_wrprotect(pmd_pte(pmd)));

-- 
2.43.0


