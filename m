Return-Path: <devicetree+bounces-230305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DF5C0163E
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 15:29:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 335B418913E4
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:28:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A5D6328B7E;
	Thu, 23 Oct 2025 13:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="VgfPjWwC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513C3325480
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 13:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761225948; cv=none; b=acJe8TJf7XydaQGVH7gxSk4DbttfGjMZKseE7DLJa456h4zqDIp//rzjielH1OxVyqd11gqOdfQpM4cNAxLtFLDkAEyMulr9KRqwTur/xK5LvwxjJF3FSqYhROywWNNcnd59RKYfJVtVmVPFEuRPkUqcJrzZT2MnxIvkg7WXyvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761225948; c=relaxed/simple;
	bh=kcKAh3qiYa6u+vavoC8VVP4XbgP0FdaLB3/LKiPnoo8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bJS3frBFGL1qsucHAYthDc+o00z+wpRF1iWqBE+QD1V+v+PPElfSlOc+m2uWoCNSQB8mSTtnAeWTIQp5q02kIL/70tYh+RGKc/aXSf+d10/TLVqELEjILAX7XD9lRYntLOlQ4DdxwqHHui0xygoDPuqf+NkI1lqY3h3qvLpzY9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=VgfPjWwC; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7a226a0798cso648682b3a.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1761225945; x=1761830745; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VM5DlrQCbRYqN6WQC0IO67CheqmNFMHVu1qXR64a+aw=;
        b=VgfPjWwCoWA5PqEl6Lqc+gy38UGSzEaV2xrm9WRqT2ck0Em9QQKq9E32nrwPCK0Uaw
         NC5L8s3ua0BbIcE42bl3sqqaEpiYmzOwJoJsQR8+oMimBm+4tiIiWlS0M8Wjh/WKzw/q
         cvinAHVyE9dpbduFzw8tvLYqZrp7d72z7nyefpgt8Or5kATkY7eJd9T1W5QMh/Pprkhi
         2pNS2//NpNbWWbdBzUhTjoRJVpO4az6yrzHxcg2hNEngy9HmSaOLW45GTQfddQtFwNpG
         EQkolhJ6ihrX9KkbBcP+e5yki32ASDpwYSltbYt7xsKuc6GEQKqNcPFmbOgK4tFxWE/L
         UnRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761225945; x=1761830745;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VM5DlrQCbRYqN6WQC0IO67CheqmNFMHVu1qXR64a+aw=;
        b=Hp09XzFqsIdsSbxARg1v/ZbdVhxsRt9sjR7FAkQWKrGe3MUDJojy091ixNqjC5W+pT
         TOh2iQtN08EcQVlhXSZKtXtZqd2/z5aXiGyMkQMMrkz47ZZcR7O3v9vy5bEPfTg3ekLM
         a/Zw9cW+PXMcQfaepLcG0qTBUGxvS8zN8IYky1zpl2swzuH9w3k2ClYf/g0oG0rS5W0P
         F/I7ruF0vSwCcmhphBRcVjnf3PN9OQr0vSgPUHISRsC/wKKAj29olLJxpOCr/VHIZRDI
         lZ+B4QODXtgEFhniGGZ6n9hneRGjyUXfeeF52UdqiNbRHgHsvpucCimv3qZ+TIt0kWc1
         YHHA==
X-Forwarded-Encrypted: i=1; AJvYcCWKS/ki2D7LG0LNf0NI8zdksU/qI7iK6hYVWARzoAD+C1ooV+JyY3jePWHFc77oKl+VqylNlrsL48kR@vger.kernel.org
X-Gm-Message-State: AOJu0YwNUN5ClC8ucucfj43cwhFZvSbY1Lrv87e+Idn5qX9I2VhiafZK
	2PGjzEAtTlWMsdInMv1wV9QZCoANX+30BhLx8zeUOSLaHgqNcdm6YuCC7N0OIez9pdg=
X-Gm-Gg: ASbGnctkHL11IkgqutF0iUGJURtT1oV0I149uvLHg2qzxafCKvupQpT7ibPIHMCGXPE
	uy2mRiZxYeowiTXnEWZu7TDDiIZG7hIHiCIFGtxlNMZP2LG5NEv2YI18HosItjGQUHPqIxbbo4G
	C3a2cxsAQYoE8nFz9YfW4xlrVeLEDQKyoc6B3kzYb0osJ8Rwa7UYSJuaGz569cViDsxoUtDt/30
	zFlnAPjQss+Qj65JNvc21HCIGll03nmwxPMXhyWH7r+2tPtEWX+P1pYv3pFVUC4zU1h8ucpXKXF
	DkY21LFyF5m+mdUX3JXd0HTM+xEVb4mPp5OJwpoeyB58FcP63LEt9qOefV8ZzUC5o8W7rM7QbY3
	e9rg/+Gds7rYfoycq2f8Q6DXqLAShL47GJ+KP7k5+O3T0M05OgGu3NI7VBJ4Nh4wWraCWSyAI6U
	Q7SfUbQVXJOrH/Hl6WIFpE
X-Google-Smtp-Source: AGHT+IEy3qLITcuChtDM79cXlP4i162rfKSR20rjSZYhE6w88AMJ5HcNN3dCkLwwo8KQPtiBjUNHgw==
X-Received: by 2002:a17:902:e88e:b0:27e:f018:d312 with SMTP id d9443c01a7336-290c9cf350amr320485415ad.1.1761225945527;
        Thu, 23 Oct 2025 06:25:45 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946e23e4b3sm23432035ad.103.2025.10.23.06.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 06:25:45 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Thu, 23 Oct 2025 06:25:33 -0700
Subject: [PATCH v22 04/28] riscv: zicfiss / zicfilp extension csr and bit
 definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251023-v5_user_cfi_series-v22-4-1d53ce35d8fd@rivosinc.com>
References: <20251023-v5_user_cfi_series-v22-0-1d53ce35d8fd@rivosinc.com>
In-Reply-To: <20251023-v5_user_cfi_series-v22-0-1d53ce35d8fd@rivosinc.com>
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
 Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.13.0

zicfiss and zicfilp extension gets enabled via b3 and b2 in *envcfg CSR.
menvcfg controls enabling for S/HS mode. henvcfg control enabling for VS
while senvcfg controls enabling for U/VU mode.

zicfilp extension extends *status CSR to hold `expected landing pad` bit.
A trap or interrupt can occur between an indirect jmp/call and target
instr. `expected landing pad` bit from CPU is recorded into xstatus CSR so
that when supervisor performs xret, `expected landing pad` state of CPU can
be restored.

zicfiss adds one new CSR
- CSR_SSP: CSR_SSP contains current shadow stack pointer.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 4a37a98398ad..78f573ab4c53 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -18,6 +18,15 @@
 #define SR_MPP		_AC(0x00001800, UL) /* Previously Machine */
 #define SR_SUM		_AC(0x00040000, UL) /* Supervisor User Memory Access */
 
+/* zicfilp landing pad status bit */
+#define SR_SPELP	_AC(0x00800000, UL)
+#define SR_MPELP	_AC(0x020000000000, UL)
+#ifdef CONFIG_RISCV_M_MODE
+#define SR_ELP		SR_MPELP
+#else
+#define SR_ELP		SR_SPELP
+#endif
+
 #define SR_FS		_AC(0x00006000, UL) /* Floating-point Status */
 #define SR_FS_OFF	_AC(0x00000000, UL)
 #define SR_FS_INITIAL	_AC(0x00002000, UL)
@@ -212,6 +221,8 @@
 #define ENVCFG_PMM_PMLEN_16		(_AC(0x3, ULL) << 32)
 #define ENVCFG_CBZE			(_AC(1, UL) << 7)
 #define ENVCFG_CBCFE			(_AC(1, UL) << 6)
+#define ENVCFG_LPE			(_AC(1, UL) << 2)
+#define ENVCFG_SSE			(_AC(1, UL) << 3)
 #define ENVCFG_CBIE_SHIFT		4
 #define ENVCFG_CBIE			(_AC(0x3, UL) << ENVCFG_CBIE_SHIFT)
 #define ENVCFG_CBIE_ILL			_AC(0x0, UL)
@@ -230,6 +241,11 @@
 #define SMSTATEEN0_HSENVCFG		(_ULL(1) << SMSTATEEN0_HSENVCFG_SHIFT)
 #define SMSTATEEN0_SSTATEEN0_SHIFT	63
 #define SMSTATEEN0_SSTATEEN0		(_ULL(1) << SMSTATEEN0_SSTATEEN0_SHIFT)
+/*
+ * zicfiss user mode csr
+ * CSR_SSP holds current shadow stack pointer.
+ */
+#define CSR_SSP                 0x011
 
 /* mseccfg bits */
 #define MSECCFG_PMM			ENVCFG_PMM

-- 
2.43.0


