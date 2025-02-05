Return-Path: <devicetree+bounces-143087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 08349A280C0
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 02:23:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6EE5D3A1002
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 01:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E8F422A1C0;
	Wed,  5 Feb 2025 01:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="N9q/Ip8p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A147C228CAD
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 01:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738718524; cv=none; b=qYh5mU9xyECcYwm1jHHoRxOukyp+qcUZcPa8OJeJNig+JFSzezSvQdShEFAg1WVv36JRZVUCsqn+t5nhA8mktf16vXNYDiPwELCjK45/695P6ou4CfMdSmVXdy6CeYOfnqO94pXtaSCf4VrSCst3OXQIHQ8SZN8PHNqBwLrQfEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738718524; c=relaxed/simple;
	bh=f+s1qRILk5w2zoTzbSGEFuSk9CM1mNXrrF3BbhojAEc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jr++rws2nIiv5mZAmdZ57qNgx4Zfvar3eVhDyN6W4jCKDp4lI9uVroJVywyGWO1WrXMq79tgy+MjWoiVHOwJE3+hs8y7TLsgDWe0yoc4pMkOPBHVgG7zAk8cJU75KSaGrmcbi6FdpX6smfATmhNJqhd3bOXzahbwkUwNKitWBhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=N9q/Ip8p; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2f9d9f14a74so1153911a91.0
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 17:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738718522; x=1739323322; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n3DM8zy+WllPP0TujEXFZ0Ycc0zGrpNRrMRWPkPmGZc=;
        b=N9q/Ip8paiGdBMlMe2ehBfybqtj4NgCucQKo8e+0dob+sT1U+X8fg9T5ssWJFwscyb
         gXcVLNeraORJnHShF6kgnIa+OCEJDhi/6ZEPZ9TZAit+Yinj1jJ2UGs5CtFxy+EKdfX8
         RmOT7xM/Rfj5bMDTXm9ldlgtBi1DY6dtzDnUsiI7HNW8sQTA0zmPA9ycD29rRJiG0o2D
         q8urRJm2cgPRiscHgU2eWMpgmgtuHW/MULm4E5FdMD5wgW/HjEbMzfhelOCd8T/ZGvto
         okfT1VvmuupefNGsPxmxv7ufa6p5OAy3CDhPCE8qm1WtOa+oaEDuw7otb6e5Xy+ZeR0o
         8zyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738718522; x=1739323322;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n3DM8zy+WllPP0TujEXFZ0Ycc0zGrpNRrMRWPkPmGZc=;
        b=KVbOJgvvejqcVNGWfJnYoas1bJMvevU5LBf8Wm+v8ZS5OVCHyRuShCq28LXO0b1r7t
         0kcjnUzC4IxGVuqdIiweb02lmcspv/BXkr055+5SpZ3XOGdo4cZvjcp5EVzSFuQGboib
         xc+LYGx52ZI/TPYHpLcss0uED46vhKKZ6qyjpYtyqmS2iwBFPtjsEZxreIsaP1cRjmQm
         8nvRg36g8vwFH1j1cJfryRh9b20QmqYxCsyXHCDy8gl/y2bW1pYsI7P4Vz28yUZnMC1t
         7+KGeSWSdOqzQgHGiBgRFKPdazQc1qVN+qEX8YDdlj5Wz0aJQpVH5h68h7C1Vv/cCOqR
         +RPg==
X-Forwarded-Encrypted: i=1; AJvYcCVfqnIvJzCLdGtqURZ9jDEXowGP/i9HFqHZV5cgti7SKh5+5w7TVPiBV9t3c1zG+JSQss5Y7+ueOhGG@vger.kernel.org
X-Gm-Message-State: AOJu0YxokQ7zhV+29ZB1ghSzZjpb1plTWQYuUHHXmGyi9wrUkofr3rjV
	EOP/cNw2WMnF9zqWmv2q5+xFd7eSE7lqA/KdOWv7vZlizfJYbv7P5kciWSpHUKo=
X-Gm-Gg: ASbGncsGh9V3ggaIZn2y+Y94CdQNGImIDRGIkgsrO8tCUnD4tZJgZ/gqidkHFIf+R5w
	AjP4QcnEmL/QwZxCs3qKnFaRQhleWlQSdnF62EOgmKiCWBFlSTlkqs9RzK1abgy9bVcdZB9nsgh
	7vTZ8gajA1jJ9iogdbgToC62ZNo4q0/asHH3YUIC6zcLdi1VEat/Z+GCab5DSOEIsvc4CZvucmR
	bUJ4J1Wt4Z4l9ly444PlUuJBhouVV9QZAHf2RJpEbfamCYdXVdTJ8v/2hN8uzvtR/TxrqLvf+Rh
	MAZ0mSPb7fyOE3udFocO3ZDV6Q==
X-Google-Smtp-Source: AGHT+IGTMhaxmFsvWrTefkXBFDqJevilxfDmNJ8PU7kLoH+rq+SB81MDslBfLWbGGJU9DTXRp8pAhQ==
X-Received: by 2002:a05:6a00:2287:b0:725:e499:5b86 with SMTP id d2e1a72fcca58-7303521977bmr1539398b3a.20.1738718521754;
        Tue, 04 Feb 2025 17:22:01 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72fe69cec0fsm11457202b3a.137.2025.02.04.17.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2025 17:22:01 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Tue, 04 Feb 2025 17:21:51 -0800
Subject: [PATCH v9 04/26] riscv: zicfiss / zicfilp extension csr and bit
 definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250204-v5_user_cfi_series-v9-4-b37a49c5205c@rivosinc.com>
References: <20250204-v5_user_cfi_series-v9-0-b37a49c5205c@rivosinc.com>
In-Reply-To: <20250204-v5_user_cfi_series-v9-0-b37a49c5205c@rivosinc.com>
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
2.34.1


