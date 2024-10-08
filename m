Return-Path: <devicetree+bounces-109223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5A7995A62
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 00:41:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91F89B21B6A
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:41:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13B3121BB1E;
	Tue,  8 Oct 2024 22:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="SM1+zsmG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A350621BB08
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 22:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728427095; cv=none; b=JAwBQIWnrfw+Zg4Ygf3yNTDigpuPlm6N0ynU6WSfqM4KCCQTMzI8CXy0HEfQpym5Ve8JiDTIJBJad57ODSvw5pJWnBc3U20YINuomGe5F5O/Iitnn0COADCE1Sp4hvq6Eoh8Qsb3tkB5WtZ6Ycaam8ArG8Y7o4XWMSAeWNCc6Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728427095; c=relaxed/simple;
	bh=DQZ+f8skAijkGaQUPxzGElVLvVkTCbU5tb3LJJ3G8+k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LQaiRyN4bbWe5JplnsQzmUxuvbncqk8ZFMKDcPcA80cti/rUM+Xx1jUIBJIRIERyl/RuEcXneNMYQRmtNp4lCukiteVQzLm1RrX/7HQvJE0L+1eNmt/0cSdsu0zsDR8QaIMt2eR/yjIeAU9Qye4pbW7f7NAnFsUJjWFDskB9YZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=SM1+zsmG; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-7e6d04f74faso228969a12.1
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 15:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1728427093; x=1729031893; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YzRPf3gSm1oBJZUnyk2tQznTd/0pm5tuC+PNjTYOgOw=;
        b=SM1+zsmGEFyqtmXkq6a4AdE1DR+5aeT0s+kNzHVzdImdF6aB8ZN9Ghf1tvInRJopYC
         T7d0ieSpEHVGCNWwzjRs/6/9CFTP0fkrVF9M98wyyp+j5EZ03v6v79Vd5NkNUDCKZv4m
         lcVLYiQqrXf0/arBU8k91I2bMDsqGHgw7GKErFigMCLI79UObf9Ce/a7j3g/gJLcPgrG
         obS0eOaYYORCkZrKb16OVsLalMYOO/TtPU/aZa66S6oMNDpKo2ZoAXERqrXCLUvl6g83
         HoTTWvoY01Jnj6txBAXumxqt8mvEegJVNu3K6dZBbrpiaGRTd/dJjJ0jw+0R9At5uWr3
         8CAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728427093; x=1729031893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YzRPf3gSm1oBJZUnyk2tQznTd/0pm5tuC+PNjTYOgOw=;
        b=E8rrx8KjiJD32x5yZT1gOxB1ceEfJhR+WTaZW1ANy8Wfn1j81SKCP7INC96jV+LjHa
         aX9UAXYL64szY4AaV9PeYXvkHYIo4TqZ1Gng+6kPTtzG57lPzO62xYysXtZHc4MIjW4C
         6GzH9JjOQmW1+8J4Yimh+SX5gXYclK/z3dp29uBvVOFussLHrlMf50NRc9RurfNQjS9e
         j84mNi820KdByeaTD2IilEqKxwcizqGLjLYGcXItcKKbuVnxX2+0W1un6cQRqSOD5gNi
         2rPYrcg1ss6L+i8ADzVJ0ZCQWbJ1GIBfUP0611WmGRNx75hkCK/cEX5alxfxuQU8SNeS
         zMWw==
X-Forwarded-Encrypted: i=1; AJvYcCUdi0UDZDeuUZ2DGq75BuHLPEq4w+Q6D+KSlG4WnEh/gGcpN4eeALPi76wvIcIdbxYhQy0s23KHbZ/l@vger.kernel.org
X-Gm-Message-State: AOJu0YwmoOhpQmKgmTT85gPOM9AbXlD43fVgJREe8yfFLhTYJ+RHtuEa
	LXPtRNU/RSljKERk5LGC55TnrMRlu5rvA5ZZicfrqRkrntC4+UjuZ+nOKRO2RDM=
X-Google-Smtp-Source: AGHT+IHJXkTKywlrqzkXfqvL2/GTskz4hDTJPpvFgwQjWfvgYkv2MchiugGtJMvE5DvtJQZv+TfEgg==
X-Received: by 2002:a05:6a21:1192:b0:1d5:118a:b53a with SMTP id adf61e73a8af0-1d8a35401e9mr1074844637.21.1728427092833;
        Tue, 08 Oct 2024 15:38:12 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71df0ccc4b2sm6591270b3a.45.2024.10.08.15.38.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 15:38:12 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Tue, 08 Oct 2024 15:36:51 -0700
Subject: [PATCH v6 09/33] riscv: zicfiss / zicfilp extension csr and bit
 definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241008-v5_user_cfi_series-v6-9-60d9fe073f37@rivosinc.com>
References: <20241008-v5_user_cfi_series-v6-0-60d9fe073f37@rivosinc.com>
In-Reply-To: <20241008-v5_user_cfi_series-v6-0-60d9fe073f37@rivosinc.com>
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
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>
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
index 25966995da04..af7ed9bedaee 100644
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
@@ -197,6 +206,8 @@
 #define ENVCFG_PBMTE			(_AC(1, ULL) << 62)
 #define ENVCFG_CBZE			(_AC(1, UL) << 7)
 #define ENVCFG_CBCFE			(_AC(1, UL) << 6)
+#define ENVCFG_LPE			(_AC(1, UL) << 2)
+#define ENVCFG_SSE			(_AC(1, UL) << 3)
 #define ENVCFG_CBIE_SHIFT		4
 #define ENVCFG_CBIE			(_AC(0x3, UL) << ENVCFG_CBIE_SHIFT)
 #define ENVCFG_CBIE_ILL			_AC(0x0, UL)
@@ -215,6 +226,11 @@
 #define SMSTATEEN0_HSENVCFG		(_ULL(1) << SMSTATEEN0_HSENVCFG_SHIFT)
 #define SMSTATEEN0_SSTATEEN0_SHIFT	63
 #define SMSTATEEN0_SSTATEEN0		(_ULL(1) << SMSTATEEN0_SSTATEEN0_SHIFT)
+/*
+ * zicfiss user mode csr
+ * CSR_SSP holds current shadow stack pointer.
+ */
+#define CSR_SSP                 0x011
 
 /* symbolic CSR names: */
 #define CSR_CYCLE		0xc00

-- 
2.45.0


