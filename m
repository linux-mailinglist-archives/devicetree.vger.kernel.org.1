Return-Path: <devicetree+bounces-179808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E60AC1C4A
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 07:37:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D16C97BB303
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 05:36:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 194E72528F7;
	Fri, 23 May 2025 05:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="YX2JM+Dh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F62289E33
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 05:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747978341; cv=none; b=ZKQ2v6IRGQQe9Q5bgjAE1sxHF9qhDDih0nw5QDnTc+Z7CInXeDCfYn8gCE3yYgohauUf9f6x5jrL0oGDYLDJv6bDxQPzA176X1PRLLqdYxd5HsnRmqsugssscwxp5RDatEJnhBDF8hymMZUwip5SRTsQJu81rIfmhSHKfysfcMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747978341; c=relaxed/simple;
	bh=ZMNfJGQcTcXW+Ox6hYmgZeihjxgbaJ9GC8ja8XfQDIg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uhcH4m+s7xQbJGJAa8k5Vgah/qcRf724L24VzmrHVuLJdolvrepfyEkchWtBzc/mlvOgUt4s483q1rEbfn7kRERoTW8EdfsZ2QSo26kKj4vm0RkJcTlT7OchC3uFPW+GloitQ/T6H5P4PoAif6Vbcj6JmS5G1NxfWgFHpTa1t3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=YX2JM+Dh; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-739b3fe7ce8so7055112b3a.0
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 22:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1747978339; x=1748583139; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DXNrGX2eIDDqqmRRfhE1GhCa5+tzqdtGdU7JTzGQSvA=;
        b=YX2JM+Dhq76KEthW5N5X6a3pdodCPoAkuDRAuiTUnU+C2mIGfbgyLjd7c44y8+swi2
         MmBWGKr8dBU6XMlxCVgsqHPVUHfqLq5cX8yK0uGdCAjAz7ugvDPXZpJIy0IxzWYlLOco
         wFC/vbEQVewhgtQakhGRJm5wQYseL3e8FJYkrNCNE3IykIQ73YtlB334F4sl9Sb5biRx
         fLJird8quPZ43rkkeGXdZSdWFO90dWLOS4ZnJDOOHigI2C3lvFkEvIg43nQ8yifS/hOB
         hNVGbRXZAuBjbC4DibxAiqXvyTWi++Vu4tN9920sENwJW9v4wWvfTL6KLg2thoLiAVrA
         OYEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747978339; x=1748583139;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DXNrGX2eIDDqqmRRfhE1GhCa5+tzqdtGdU7JTzGQSvA=;
        b=v3I31m7iakATY6oUBLYStbhENJTxgkJcX3YG4Yc3UxoaqUmT7QDVn9u4OtCc2ZO8pX
         MlE/r3n473/IUPvs5nlhTjdPoZqgEySnuc9B9nvrNuKIhmeBB/Jp9C1UkiKjQr0KFPx9
         dl+kVO97ItA8JLD2H4Wmg6s3moKuqAf+HC43nOMnnEf2jiHiOPn0D4kiVL7Kd23ZmIc2
         izJSbEGfS3aji0nEmThyfyOCUJwT1sug8daDv8s6bkDM4Y1az8beZIlvFRvClYOAG1BC
         1YX2BmqMbPFiJ06exRs/ck4O3kcAVSIXlkdwii7uxbnZ+HWmKKPXWETbHeik/UUvInMg
         q9jg==
X-Forwarded-Encrypted: i=1; AJvYcCUtgCric2qDSrdpfZHdia5Po0fRva3umW2ZRBtv66eX0jbTRZ5KvUKm15XlSEnRb2avRPsm5O6gyINF@vger.kernel.org
X-Gm-Message-State: AOJu0YznfmZnmw4ubDvep89pRIeCHjH4B3QIUhMh+O/HHM1megO9ojLa
	o+CDexPBLsn/eYO8BocXYBvD/WBI+mP9nx0aMKGtIbxPzddBAPMgyuOEUJzPZA6HebM=
X-Gm-Gg: ASbGncuFdKyZckYzdmr/s+vkQ8ulONc+0EKQdrHVxkuUiT2SydJ0wm8KLHTn6hpikEj
	F1uxS8TBVOSx6+XHFsM3XhKE3suY4hG505W6WsiBjBkRxUM55PDG1VFMMgazO9HDrzEDhMwxD8K
	r1MktV1YCQ8horYUV1XL+6QF9/55iTg2tCu83BWKbihAFRiO8qnyMaQVtHE1ere/dZjsArS0QRc
	COxn8q/aaSSZuDBLCmQB4lUCcNDAS3Wc+vYw8dsgESMwqbV/LX0mcGTVeazbFAxH0kF5btOvYdT
	k83+ZnOJBAx9jMOpFr34NnRegU4/4g97x1wQ3lCnGxG+w14WiB+p0+/QcidTrA==
X-Google-Smtp-Source: AGHT+IHBdnfd8YvoU/ZjhuxgnSBPQbu/c/452XjOOsIABqc2dApkPT+75KaEeqZjFyrTnn9I2fOjBw==
X-Received: by 2002:a05:6a00:10c6:b0:736:a540:c9ad with SMTP id d2e1a72fcca58-742a98b833bmr38186047b3a.20.1747978338727;
        Thu, 22 May 2025 22:32:18 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a982a0a4sm12474336b3a.101.2025.05.22.22.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 22:32:18 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Thu, 22 May 2025 22:31:23 -0700
Subject: [PATCH v16 20/27] riscv/hwprobe: zicfilp / zicfiss enumeration in
 hwprobe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-v5_user_cfi_series-v16-20-64f61a35eee7@rivosinc.com>
References: <20250522-v5_user_cfi_series-v16-0-64f61a35eee7@rivosinc.com>
In-Reply-To: <20250522-v5_user_cfi_series-v16-0-64f61a35eee7@rivosinc.com>
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

Adding enumeration of zicfilp and zicfiss extensions in hwprobe syscall.

Reviewed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/include/uapi/asm/hwprobe.h | 2 ++
 arch/riscv/kernel/sys_hwprobe.c       | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index 3c2fce939673..9bc96881dc9b 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -81,6 +81,8 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZICBOM	(1ULL << 55)
 #define		RISCV_HWPROBE_EXT_ZAAMO		(1ULL << 56)
 #define		RISCV_HWPROBE_EXT_ZALRSC	(1ULL << 57)
+#define		RISCV_HWPROBE_EXT_ZICFILP	(1ULL << 58)
+#define		RISCV_HWPROBE_EXT_ZICFISS	(1ULL << 59)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
index 249aec8594a9..c86cba0e4506 100644
--- a/arch/riscv/kernel/sys_hwprobe.c
+++ b/arch/riscv/kernel/sys_hwprobe.c
@@ -111,6 +111,8 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		EXT_KEY(ZCMOP);
 		EXT_KEY(ZICBOM);
 		EXT_KEY(ZICBOZ);
+		EXT_KEY(ZICFILP);
+		EXT_KEY(ZICFISS);
 		EXT_KEY(ZICNTR);
 		EXT_KEY(ZICOND);
 		EXT_KEY(ZIHINTNTL);

-- 
2.43.0


