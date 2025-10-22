Return-Path: <devicetree+bounces-229991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C0DBFE868
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 01:30:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56F9B3A975D
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 23:30:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94CD3308F1C;
	Wed, 22 Oct 2025 23:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="cxZUDH98"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADB525D540
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 23:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761175783; cv=none; b=rfbVaQIgwtfHV+tjCoEahlntKwhNH9+HSHhfpp0vQw8AZG8lquTksDYdjEzCr+enndYdI+twQqC6TOTA6HXlOUfwrgKBKKb5VSgnMio8f57VpuQ3s/O2r8+IYvwRNqXbAyKyw+cl/+/Gap0VDE5k+ykpExbI4q3TBHUu60GcYfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761175783; c=relaxed/simple;
	bh=pkBAvc0IieGGas1vvYQtOkKUWHcQF724uRmRqVMGgPs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rRbHNKX4Wqcqgnb70XgqjhaDwDehk45m3trebhGXxDsa+F2mtQmNrOSkj75ald4rqi1lXwUC0AC6OjKWC1yfq1oy6mLnx/7zNOUgj5RNG8CI4tynP3zIaWsR5EVUeBN5etQ7jQX/odbaBhbeK4ySP97hbx8YQ/1md1ZL0mhmm3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=cxZUDH98; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7a226a0798cso150459b3a.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1761175779; x=1761780579; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RuPJu5G7SzSWQtkc01838lduYo70q11KgqBzT6e6NXg=;
        b=cxZUDH98xhZgcbg4HDNMwf7kcF8jvtFMZ+/PvtAdRHR2LaKQG0APf9ff+rWqysaMea
         lMazQ9R3jjZqwj5I5/lHlM+n4AvRkELLVWZhxdb8ZpU2iijXk9i+N7CuNmkz2wP9cT4a
         oxOb0PHt+0fvRPo4cIroKp9xsmQ0f1Vnvh4gU8ePXNHquHhD8lhVY5DNZON/ljof7wqk
         t9xLAoE2KpkZXNM4mEZiVR8g3uYGznkUDKHupIKq512dzBPbzlxSeYmPQ5fPGSb6PzM4
         5Qg6pEmkWWfxYwN77E2vGLlXBOhJ1wR9U+j53/096Wi28OK9LZNNXaqXKNe6S8rwJ7BJ
         uiDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761175779; x=1761780579;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RuPJu5G7SzSWQtkc01838lduYo70q11KgqBzT6e6NXg=;
        b=Y1H1pQ0je7621/V0E7VCAm5tVruPZN70nijiMuEostvzViuEbpMlXhdSpn/JFk5YUZ
         BTiL4DrWGUByBM3RC+ISEvrHNIdyisziUJUacyORkCtqagL5vzF5AUesDQcIE5NOyeqd
         p7JrRkIaXqWcnkAnoWRPl5w/3xLUMd9aUrkn/eln5ciT816CNWjpI+H/JvUK5lwnG6An
         Gcli0b8ZuDLC+q9uitv3MhpuB2vbvvqjGjUch9wdtBJcX1lk2oePq2ijAiqoHsraII97
         YelI95m4AvykYQR/i8yNfHQroBG6jvnl1U3n4dZ4qyTsvDbG2poMMY+Wr02MueplLaSP
         ljAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdu0bBDTfTKMLwLRVqYyS4JgyvzVaDAFi6gzaJULXmmFIziBCKwCh6X2085Xk9BGSxlNr7R6Si2Dpw@vger.kernel.org
X-Gm-Message-State: AOJu0YyfhsCRWWWSNbPl+DkJbAKuyvGrUIsgKfpI7rFn1TxpnR2iNXjd
	GseEYxFadS6AL6Oo/+qBU+qNQhfZiMDP78/9ls6dYN+jeLu5JZO4xzJ8Wh8at2Dr/1g=
X-Gm-Gg: ASbGnct+0zojj8kig2OsXC9OrhowO2A6ic4bEIw590buuRzX0PtQ0Hrl2rznj6/HxjJ
	WRXQ+iKYvn9GQivXxirLEzngm+iT+nQvNK3+P5Oo1d8YkUVASNHG2Zn4BwaNEXOC9aPjh/ypmm+
	Be6iw/E9yjw0gDnWGzl3zpj42gkZmVt22GyGO/xt1JUoTIgJLV3fiYFjUgQbqcpFjliBCvZC7to
	fmdPb3THf2KjhFhI+PTYTp7qEazO8hUmZ7h2T64uErmXRgFHlXIjJE9q4BizQAKg/7yUMlISVmw
	IuWu+kMl9iyVIE+OmGhnTxHLzC1CUeCJuZlRIw6FSnojyCtZud2GmZlDALiwalpw0lK3tVE0BLl
	K0noYTTKohYbbltlrqF06Z20oqt+21liD2bmRsDTaqfQ+jkau+b8qbfktBlfhV4vtRU7CfVntyL
	UaRkL51jKV+ok+9tWKAI6J
X-Google-Smtp-Source: AGHT+IH4ZZjXE6CRjcaUUDddOYCxWrMkikF4wXTDboM+YAeQwS+9+Z5nilbrQH9D7uqvoUJQSq+yZw==
X-Received: by 2002:a05:6a00:3e07:b0:7a2:766f:518e with SMTP id d2e1a72fcca58-7a2766f52c5mr169475b3a.23.1761175779371;
        Wed, 22 Oct 2025 16:29:39 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a274dc12b2sm392646b3a.67.2025.10.22.16.29.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 16:29:39 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Wed, 22 Oct 2025 16:29:27 -0700
Subject: [PATCH v22 01/28] mm: VM_SHADOW_STACK definition for riscv
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251022-v5_user_cfi_series-v22-1-fdaa7e4022aa@rivosinc.com>
References: <20251022-v5_user_cfi_series-v22-0-fdaa7e4022aa@rivosinc.com>
In-Reply-To: <20251022-v5_user_cfi_series-v22-0-fdaa7e4022aa@rivosinc.com>
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


