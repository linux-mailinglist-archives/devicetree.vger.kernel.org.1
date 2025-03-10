Return-Path: <devicetree+bounces-156195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5182AA59851
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 15:53:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 268191884A39
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 14:53:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CFB322E41D;
	Mon, 10 Mar 2025 14:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="EydyJ0Bp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AA922DFB9
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 14:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741618365; cv=none; b=ixQkPIjY6ItKxgnCxTT4Scj4H9/SR1DgLu1TMGfUFSgI1g1TymGXZ56VUmbV3pl+Ho4biLrDBA81R84/08UoDg46dFVfGADJWCA7DdYb9xJo4t/RaMXx9l10H1+r2xCEJpowAk6z34HQnDZex9S8lGqNDp4vN9oCgcwPlbZbvF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741618365; c=relaxed/simple;
	bh=f+s1qRILk5w2zoTzbSGEFuSk9CM1mNXrrF3BbhojAEc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KCkBRXOLwdbntGmH3Kf+t+g6ZJ/AI3IwK7PouxgaemERReSG0w2te2kZRnTjUvUdtlkgqLNwsxVEqx6uXvRSIRbuYVb3mt7v4F9E0IyldEhLUSmbnSJmv4Ns3q2nJPIARPljcsb+iUilvIHTnHaGLLERm71ggtBsXqqi/TmdDKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=EydyJ0Bp; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-223fb0f619dso81604575ad.1
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 07:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1741618362; x=1742223162; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n3DM8zy+WllPP0TujEXFZ0Ycc0zGrpNRrMRWPkPmGZc=;
        b=EydyJ0BpriCvs2qPsub39795edQPTmKCu8O/B5RPJ2VjhMQbBwGyf6jq0uvq53HTCW
         WRaxFAFaGjW4k0qSvC2Yjp0AnrYP3DQmtvZo1gcp0sH43DC3wwlYj33e/XhfKTlrrSkj
         yRxeSqP5c98EfTLk9y7Or+5sq4xzgJebDPwitoM3VRx3tCUYbaxqrEjf85/2OAXR1rQp
         z+v4zwakubW62pee6309vt/IY07dxbb9dJ0h+ooMzyKB3NlVlHVcf61RTyOsSLkqB38c
         TbWLbveGzTPnj6b+3VOKwf0UwCG3+uHNrvdXnbzMuyr3B3Y+dn52A5RigiexhFCFhWRE
         GEWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741618362; x=1742223162;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n3DM8zy+WllPP0TujEXFZ0Ycc0zGrpNRrMRWPkPmGZc=;
        b=DNibNu62qMdnBCQEOPmfgzXc9HZFB23kqGT1YzjfEeOHhh3EUxbJv4RkhSUwWxH0ll
         FudWQuw9PK33tXZfW5k+5LwSV2LsTH2WXDW2OAHDRPYTFGSgoOOz9vHLkWZ/EfCN7AS5
         y/6dlTiUprEaGvgOyYaB7D8qX0RJm2Zrf9Wbzd7bftB7Xg5PHFpAjlfst0vpusFJmRse
         7tiFrs+xGM0fyqgA5CJ1OCosm2XCiOlQmw2J7MF8praWL0RyrsmPjjNubjKlhU6D8xU0
         wOjQgQTHFtNmgU8ip42LYbjOnLDNWrrupLlTQiOLaK+llun3BYf40HbJxLddSqxvFZiQ
         ENsA==
X-Forwarded-Encrypted: i=1; AJvYcCVRRLm1A+c+6AH5mTEyL/DpR1zPnEj704KiXeNdp/RMZxE6Qa+bw63rxS3y/02e5nai9mP7st79ITx9@vger.kernel.org
X-Gm-Message-State: AOJu0YxXnTeebweDrAx7ijzyEuGw89yqiM7vEXdRqOSuFAZSueUKeurf
	00owfUv/FIPEXv+Y8sPhdQIfbpSPnhhAbpDTsoJberHPukZTB/i0aADsY5/NZnY=
X-Gm-Gg: ASbGncs17a96Jjbg3Jdxo6GElcHxzHwf8GxDBKEsjpbaRczdy5o1+vyofIlz4V+3EJV
	/LNPKBP1p61sfnnK30+OnqK/tpNWmY5+E2p6v6DNb8v8Zr8Cu0P7Xb1RAP+YtiZuubjor8hM7sJ
	28wGzEB1ISrHGA60kWRM8q28+vSSJiCvRwdR5o9wVjw+lk/kVPF6B+D/YU8XJR9LreD8icBWecY
	b5BmUi3ITBz6kKO01chBJvBXMdxKwKcejWEIbqUYYXJVVVfvdhxHSH0a3APM0r3Zp4mfUFvoaIM
	AxRSnd9qkTPp7frwERh+Voow62lDUri6hZZa7OSaXH8N4tMQOkf/MUs=
X-Google-Smtp-Source: AGHT+IHEgbV38+kdB/KuKTC/ngiL6naw+4KBErVaQq0wSwONUo1ce4xmBDTiHE9RxDA/IFBRpdqZjA==
X-Received: by 2002:a05:6a21:1fc5:b0:1f5:6878:1a43 with SMTP id adf61e73a8af0-1f58cb239e0mr144294637.14.1741618362407;
        Mon, 10 Mar 2025 07:52:42 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-736d11d4600sm2890275b3a.116.2025.03.10.07.52.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 07:52:42 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 10 Mar 2025 07:52:26 -0700
Subject: [PATCH v11 04/27] riscv: zicfiss / zicfilp extension csr and bit
 definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250310-v5_user_cfi_series-v11-4-86b36cbfb910@rivosinc.com>
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


