Return-Path: <devicetree+bounces-157689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A2735A61E8F
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 22:41:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 71EDD188EA9A
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 21:41:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F31C12066D3;
	Fri, 14 Mar 2025 21:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="fyX3ALUT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9F08205ADF
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 21:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741988380; cv=none; b=vF6CXBhsUYy8f4Px0PwTuWNADCwp0CNEAtCXMM0maZsE+1nD38c2w/nZRY8/wp/P9Qyr143/uqGPb8PBw6DPoOBK6f2zhFOwKnCPYi/5uorCe9DOnNF9h1uj8QF84Vk8dhwosyX1uMtHCJeamL/hlla8z2cQXunHuFHU6OhwamY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741988380; c=relaxed/simple;
	bh=f+s1qRILk5w2zoTzbSGEFuSk9CM1mNXrrF3BbhojAEc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Er+HV9HVoZUk6jydJ6HmwVuLPQzuo1/o2kD7y2qPY/UB5Y3twB7BdlCl63Ts5WzQRErx1S1doh7Z9+u9+mf1c0LbenBccS+mROK0dZG1WZJs/FE9PLWi7u/LOSedBRPZuyILQV5y/70SKSqY2ln8J9EHQfaiIEY6d++RpTJEwkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=fyX3ALUT; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2239aa5da08so52105965ad.3
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 14:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1741988378; x=1742593178; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n3DM8zy+WllPP0TujEXFZ0Ycc0zGrpNRrMRWPkPmGZc=;
        b=fyX3ALUT21XzQ/tTLHBP7zn7xTYZoRJxjttTGzdYai98Qgks3LfWXQ+tURAKXuLkuh
         4sL9sYmPlm7yM0YcCxfFdEkqHxN3Kv3DVi1yaZQho7KpogPYTfEBVqS7W1qukJmLpCKu
         BaKcF9qJMYo+DonDW1zRu1zJEXdw6089RhKlsdkjmrKAJoxCkc+btprY5NJqmDxT9IHg
         1S8lxIOmVZ/c1R4Pimmy83SIcw3QFPI0LJGzzLUmu6/KcmvNk9HK9bB5lr5+GUL4qssD
         L8bG4WxbPPGn3ZVYpgFsPOA2B2vAlLDaPwkIS77clRg2W5GY+8wlci3kQwP8A34QBj12
         KH7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741988378; x=1742593178;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n3DM8zy+WllPP0TujEXFZ0Ycc0zGrpNRrMRWPkPmGZc=;
        b=Q7zDVU7qMEF94fZCBLujCTUHfHg7RSuD4LVED/41pFtZom2LbnSpcQrrcMZ2ZSJ1Rw
         e/4yGL4VTvVBvsa1/dT3dPGLfiIfdjhyrJPKw7svFnScC42/5NgdnIcg9U4fuluv92t3
         qLl4p76tOk+atIvsWINpPoReJPsRiy2lFrZ4sf7eZeLCdvFiv0JbKhsXFDgaiSMP7p0o
         miql6D1bbQschmBSqWv5KP9Ywj/LzGjtSFE0OLbGnazsdcnn6mqHXRhZsWKs8gEYJJTm
         8Loz45u+CZgpgsR1ApDLITXdK/P5rTtG2t9l2OP33yIiwmn3ZOOT0URlRa9KRTM9olD3
         7SYw==
X-Forwarded-Encrypted: i=1; AJvYcCWUSew+c/EoEVP/N53QLrnTCT6CTlgDT4YaqfUz+FmytE9TqDJjCZzTrfMO+9TiCXqRRp1VHq4DO56x@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4lzVFjLXcrwNOUGsKoVhtD0rDpzEOD3VJmXo+4HeO5C9qjcxy
	AowbAnEzi/v49fIuhpgUx5IFU7+77xiPaxAm0aTGeLgwZhGeW0l5aW39uOmZoUE=
X-Gm-Gg: ASbGncuEmikdIAA71YWlBtd0Vcz5qcJoyb7w+OFMSjFmN0ESUNkqZcyzaa66L8ZRJLm
	xUV6AIWBm1glVEbg8/mm7ictYdpb5efDx8Jr+UVqLbhlfmSdp+NHjSt7OlUklxC6tUqEQp/pUCs
	45EGpBdalzzUFWXWiSS/wx1pH5a8wwDFNJzmHpcir8SGTV3EzYPG0o3GScxj5Eb00Rd3lgKKZlE
	tL9F2dGBqIotceVdAvApznLi5l8Y95H6yOQm2YfiCpqdwoRwTp6zkMHbiNyLzIfg0l8f6+347fH
	o7Z/WPl+AQq/FTbfiyGsKwBYyH9U/6U76rTTA1TFCKm3ojb1UZYmaVQFxGUMsDzA+g==
X-Google-Smtp-Source: AGHT+IEd6y00tJpY5AwKZ0G453WB85qrfmfVkSTQW7JFb/Aht1BlD2RcJLOAn300bIU+BiCy9clyEg==
X-Received: by 2002:a17:902:cec5:b0:224:abb:92c with SMTP id d9443c01a7336-225e0b19692mr43817135ad.50.1741988377710;
        Fri, 14 Mar 2025 14:39:37 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c68a6e09sm33368855ad.55.2025.03.14.14.39.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 14:39:37 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Fri, 14 Mar 2025 14:39:23 -0700
Subject: [PATCH v12 04/28] riscv: zicfiss / zicfilp extension csr and bit
 definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250314-v5_user_cfi_series-v12-4-e51202b53138@rivosinc.com>
References: <20250314-v5_user_cfi_series-v12-0-e51202b53138@rivosinc.com>
In-Reply-To: <20250314-v5_user_cfi_series-v12-0-e51202b53138@rivosinc.com>
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


