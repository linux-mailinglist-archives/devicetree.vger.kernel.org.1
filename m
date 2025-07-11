Return-Path: <devicetree+bounces-195615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C2DB024E4
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 21:48:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34517A41803
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 19:47:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D430C2F4325;
	Fri, 11 Jul 2025 19:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="TqQVWvJT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06ECB2F430D
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 19:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752263188; cv=none; b=J1inFh+rwUUxo6G9FSmyuetUrZtNCMSq1ki1tL8jZC3mXaZL8woyg3ZGgH9bKliAS0dgL9Gd1c339tuQ7fj1rX756Zt6rnxk/xAHo99ZnRRgPi9lx2PTsElRW3YfN56qdjnwaf1l3/wWTdO3wyYpgYlLx81GNnf6qEgzwnylb/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752263188; c=relaxed/simple;
	bh=ynTUDLBp2gEKhFeiYfxgOCPe6wht1rOzpyg0Vu3jGXs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=O6gHy//8+jq3SHeF+ZxNyVqMEjEX7vjhcnPH7ftkidoX2ztjyGXCatGROYXX3gsyFoYqYxbU0QjKsaey7o8ppSKmn2fK/TRpJwLlEFhOiddsbMmHc9gpf4ds5njRJ+/rfvAEgV2JEBCl0N6MD+rjAC/YmKNL3rJgIUQdrOd+ytw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=TqQVWvJT; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-747fba9f962so2214655b3a.0
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1752263186; x=1752867986; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ome3u7rmCNb01KyjL0hHySpySbFvJDab/QcqkVOgxo4=;
        b=TqQVWvJTmo+wHyF8R2lwgZJEaciZHRoZgwlt41UFwxW2vzVEOe/wg8XBRuZ2FRnnHl
         lXI/YghHi0ZjM88TIKdaCBTnHMAdlu4r+W3N4sPwlBfcv2961sddEPYYhziMeVAhLU3Q
         K3hnIzYl36IwN4P7xJc6wQq7zzYmnKxOKeORWS20tK5wFt2lFIDbd1pgzQgsLJYG9I0P
         O/LpUR181KcTFRkDmNoe+6fdo0/7VIQEcMBhM6heeNq3XyGx2OjuFS5XH41h0st5yqx9
         aWygwe/QizXNo71mOKICJaM7CblS8iqrnM55SvqygaNbIzTUQfI/AtYCxJmf3ngoQXp5
         uU0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752263186; x=1752867986;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ome3u7rmCNb01KyjL0hHySpySbFvJDab/QcqkVOgxo4=;
        b=PotSz5zPDeHPaDgtTVOeowU4hWRj+AH6HtWI1bNffhLGFnlMg4rF4Wa2XQ/LUlTM4u
         1FwIgCdiMHSztN2+oV/80qD699raVQQqo1tEnJYYck2Zo4EJO7h6EV2nZTHVAxSnNcAW
         7anoagNJDn84Bx6vmBw7xFUlEnrscbV59XbWEWoAqZh6wwLXtinQ6eVmZOiCRc6NwXrq
         QKidmqVSyc/Q/Q3XMW181XixZUoplF4GUXME+MPiJ83p7Dt7CmOGQN6gEHd+y+5rHaVR
         HYAOI8SKEdgPJMqxkIzui5COiYAKgx5HXXNUda++doCNSgqFVak2GChmmuBXy/wirVjC
         rl7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVE5QLQhNj1vP1dwjdEpJkTVXabxgXpRdOun5Ov4osIB8FuySf0WgNd4GaoLlncx0GV8nUj+L7nRoTt@vger.kernel.org
X-Gm-Message-State: AOJu0YxRoaDnbry5yFGsIZiDQxXwuOCVQVdLINm+VrQTj+vKd45aDcGc
	ypXcCuID12JgOWG9SyRqXsSQENwyNJqddQXVnvhtjM09RCYOOjC6YoJW5BCTrWQ+mkM=
X-Gm-Gg: ASbGnctlEl0q1A6oK5DSK4FPie7h4wxgl8YH5PFXWdsfNxQB5ih9/bFk0PZiLYxVLdd
	Q2n5XUQnV7GYCc0KYUL0zvhHqBlbbYvyKo9iIMdlh5x8askAOv/NPlLD4nJ+6ABNlLHUWhgRXz/
	A8xWkc54kVpfRCymsqhwum6ACUHFyuFrve+ZMLNa44JVVPdZCBADCMMOcmB5jxn5hKj6JJ48/eq
	6uwelfGbzCejKm14w/Fg0dcDAsLwwG/naDQhjTgZPbcOJnns0m6FZJ9xmkednCcreKgjgG5xrAa
	AGAvKq8ak/RiRn4MJrlALoaMm64MTZoDm6WKWSBe5x0ZOOmvvxvLQVrgV2ClwsgKkoAVH/ef28K
	7YKbkZ7zHCILsQJnuET81BqH8lcdJluQw
X-Google-Smtp-Source: AGHT+IHk1XiEj4FpMiqxFpyzNMz9rTOrxw62KxiT+gyE2Dr8zhJmShMtDIHUXM6FBcUeikzrj/OBJA==
X-Received: by 2002:a05:6a00:99d:b0:73b:ac3d:9d6b with SMTP id d2e1a72fcca58-74ecf7cae55mr6943507b3a.4.1752263186160;
        Fri, 11 Jul 2025 12:46:26 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9e06995sm5840977b3a.38.2025.07.11.12.46.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 12:46:25 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Fri, 11 Jul 2025 12:46:09 -0700
Subject: [PATCH v18 04/27] riscv: zicfiss / zicfilp extension csr and bit
 definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250711-v5_user_cfi_series-v18-4-a8ee62f9f38e@rivosinc.com>
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
index 6fed42e37705..2f49b9663640 100644
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


