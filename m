Return-Path: <devicetree+bounces-195612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C08B024CD
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 21:46:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F3924A507B
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 19:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D83E2F1FFA;
	Fri, 11 Jul 2025 19:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="hpFOQvHS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A05A41E9915
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 19:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752263180; cv=none; b=kNaakzzqvdATDBR1JQ9j4AvGlJbcAJFvPiX3rD68CIIGii0J9F6zBsYE55eoihj5FWVqbQHmUlh4hf9DSHYfSxTnxjHl5y528weLVwrfmVdpiAES37GctiU8i8EMYZD70kbD0P+8MIUnOSISUNRhhjoeCsA+VMdxKOUT4WHt7uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752263180; c=relaxed/simple;
	bh=3XZTvPjvB4R6wnDsFDBTbHp2HDNWsnF4EUoOhsYeC0c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RJ4Sci/Pi5eiU74iWrx89bmsdMnv5qFHzfE+ZcAyXa+0BeKP7QmUIIss3Ui3/B30KLnajxA0u9OuHP/wfiKsrkP7SRcT1fCHIimSiZ362MPR3adJSNDz2FfYXbS88XUJ/IboqsyfM1AJVmHyBUBER/It5qxIrIQOhHgMACM2vfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=hpFOQvHS; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-748e81d37a7so1620595b3a.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1752263177; x=1752867977; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t5+3IuIbTGtFY2nGYSuEXP86kkX+tfkAPCryfH6oHp8=;
        b=hpFOQvHS7nEZ/9CPQUcAh7S1z8bs5bgGroDENNp6WkEP6SXgtk87fMAxMjkA+sdaJD
         39jAobdtfBsJ+LbkqTLl4tZQX6YWGVKlH2Aa054QQl83rcZJdmseds3frwDf9CHmSLyA
         PjToh4UcP++tptSsOPO+IwLglngfXpCMo/zlVrY7JtkJN+i09GLkn+ggTw32bLJvuiye
         BcJl8E76kewr7oKq8n4jgVT/FczEqotLs2pymU2j/StzKzfFtyMP1iZFXsIhkV71oZTQ
         0F1XwFRqnO3UOhD9NRcFABplww+2IEk0S7Vkgbs3cXJsl94RHPOH7ValJCncAiObzDnO
         5A8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752263177; x=1752867977;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t5+3IuIbTGtFY2nGYSuEXP86kkX+tfkAPCryfH6oHp8=;
        b=hi5X1jlIlr9BFwewOGHOAqmNbo6UGn52418S+cjOrfDEhuxqlYIGRaUdmNQzFrzRWv
         ci0dOOUdVh4gciwbIp3LG/79jniY6JQbhJMcA6kl1IdH7MYkeaIxwq+JmQgvukMs01Gu
         QtgrKLqF8d0Npa4x2A7ZJvknYPoZRC6ba3ZnA9lotB/PtEiFIxKgScZ2BOFOMnO1q1RC
         E9WaxLS5tbt5nSMuL4rPp4L69qWYZ2XCXQzaqdr3Kq2+J9cyB3qjAXoNsyC5ptoP+aqq
         U8t7feBJw6r08DTnw4TBvfuNIfaVbJalHlHO8I6cDxOwBU4DUKGoZNVBSuH4ncOatfjJ
         fK7A==
X-Forwarded-Encrypted: i=1; AJvYcCV/TolupI7bcm5lYA3OE8DwezxUCG1UUWsRiy0wpX0DjemsH1NqOsJMicP/9QkfuqtYJhiY2Lp9qrk+@vger.kernel.org
X-Gm-Message-State: AOJu0YyeqjaKyECP0mjBRoD8iGL3xqe8l674bPwhuCUWdMBbTglfMtcO
	zVi25KC5duZDS941FgPYxcU/hut7nveuBxlWRkh3Qp8E/ir4s72yUXQ1Tr0ebRAklNE=
X-Gm-Gg: ASbGncvpWhQRglB5cqT15x+X8Cs0vTGXDFgUuNBHEw1fTgi2kU/5s4QNIqzzvi9M1H4
	wcD9iBtCl4bFyTQlPI/ShDCMiybV6wT3prJj3IGQTNBlCgos+WTxJNc8zxJYo2ptxI9DlQKdG2g
	9HiIJl/CPdkMiIg9pePl/9hfSoMgGNWk88Hlfa+CKefUAMbInEDB9OKYd9ih7JttRYxYLDfSPID
	uoR9J6l2oQ4jbFXFu2qOSlQlhR2qc8AMfSg7tHKGJTCQ2VeTwpCjIh4obvJbt2YCawieqLGaR8b
	2rp4sh14Cz5p1p0X6GRq/tJpz7eCw1Be9yUNQE5YXasYveIN8nDnGKTL6ZDEDEBRW6nkagr3v2m
	fy5k0EbhayjFMlagIFrngeebi26yGXTkrwpRbFxqG2YI=
X-Google-Smtp-Source: AGHT+IHiT9dG2vPXDdmDzQOmWqgagw8g0E9RV6u9tAfh1pEL4PA1GTNnT+r9tqhN9VGCtBB45cyRbQ==
X-Received: by 2002:a05:6a00:b90:b0:746:27fc:fea9 with SMTP id d2e1a72fcca58-74ee2c51089mr6267738b3a.11.1752263176893;
        Fri, 11 Jul 2025 12:46:16 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9e06995sm5840977b3a.38.2025.07.11.12.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 12:46:16 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Fri, 11 Jul 2025 12:46:06 -0700
Subject: [PATCH v18 01/27] mm: VM_SHADOW_STACK definition for riscv
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250711-v5_user_cfi_series-v18-1-a8ee62f9f38e@rivosinc.com>
References: <20250711-v5_user_cfi_series-v18-0-a8ee62f9f38e@rivosinc.com>
In-Reply-To: <20250711-v5_user_cfi_series-v18-0-a8ee62f9f38e@rivosinc.com>
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
index 0ef2ba0c667a..eb48924105c4 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -353,6 +353,13 @@ extern unsigned int kobjsize(const void *objp);
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


