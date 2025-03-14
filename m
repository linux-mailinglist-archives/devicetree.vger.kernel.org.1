Return-Path: <devicetree+bounces-157706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E896A61F03
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 22:45:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6ED0E188E8E1
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 21:45:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16AC22147F0;
	Fri, 14 Mar 2025 21:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="c5aXYrxA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652632144D1
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 21:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741988425; cv=none; b=CX2Euq9LBNsAQPLwKt4w/HfwuGfHRYq1xLOlSphk5FetVUkyCNl7BeOMUCYxU/3FM9oEkeCgDKICYeib9QnBEav5qjcxTLYn2xsJQkA5+IpNYNuKT6HICBA9QjBinmGiyfa3tjuo5Wov9Kn2naji44WiOet3+0ooGhs/KOoRS+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741988425; c=relaxed/simple;
	bh=7rQTgCVlXKdn1fwvud/1DTeAEnp2BYyBinw4QH1Ga2s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u4cDxBVmOhEGX5O0bOcgp0nADSIMzCG5tbybOamumAhejN15D6QDXx1GIK7eP+DPJVihNc8B/Hl8j5uyDAg+mbGR2s6blfqDcrze6p3kTBhKsAiH5iBuhlHLtYGegN2+hLbMszhd0kAoHScFreleFHnc3wrLX1AiyhoyL3aow30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=c5aXYrxA; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-22401f4d35aso50707775ad.2
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 14:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1741988422; x=1742593222; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wxaplZUgROh7QEyvXgaGSGBpfUL9KoHoiOWsJ+5Erjg=;
        b=c5aXYrxAWVVfr5rGOnJouijxUr7mj5Bh1MsiIfcBCLNKhOqaLv7RU41Ua7wl3GNNI6
         iSAxig1W8KrpftvSBvx3HejhvzT8XPPpENrSnUYiKjJpH0n9TEXxsPnUH2xpjgKBYtSX
         4C6tfRfXSYLljegv8oHklJ7t6e07sORxadEuCB6L+xvAwWM85h/SjqczmNZUk0QcxJoC
         7vKpEP5kSRQKXXVOqrcCO4uD54SY0VgFU/nk+4kST0QOLfxRf9PGbnLOcLMpsWMo4xzm
         jQImOKQ70LxRsTKBZShvbKwCmaVR2VqBF69yIIE/oJY7VUd/ITgPRb/e5JtUYDGVsiSg
         i84g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741988422; x=1742593222;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wxaplZUgROh7QEyvXgaGSGBpfUL9KoHoiOWsJ+5Erjg=;
        b=ts5ix0NYR9qS5vvCJgjxSa1PUAR2xnNbmnR2Vhuawec0pr1bZuYKwHuRKeyiXDdjI0
         TXazMjcvUjvWgSYMbHsxOflcejP2INc50zLCNsz2VcXPx0NlbJbwVPH36G8WHeBwD+Xc
         fbOIW+SNaemsOhV36fK1mL4RN2PNpBhVqg5M+wyZbxAMHgkpAv8IUKjgaecI73AJVwuo
         ljjAYdutdrZglLDvCz/uoJ8RdQV+eqC3r4NKol6ewGTLhQVC5d261x3Mv9eNnAumxom0
         DoCA2A7VKWddXVOxYP8IAxK88p7GbblVrAWtDGyw3tKbaLu4jiRk9uFzLMMEbP/xvSDs
         AHOg==
X-Forwarded-Encrypted: i=1; AJvYcCV9SAX3kvYzpiS70N+Ujlv1PG5qPYaLP/fS+7I6vDPRZmzUyYDlKoeXHiJUGWxmX5UpPOElkDIkUEsb@vger.kernel.org
X-Gm-Message-State: AOJu0YzgH2AOfChjlpgAYYXV0d0PO1uJPutuQzFRO/o2RSNfNWf7ro4S
	Meo6xxSCW/XC8PjJnbiNfQsY8ZJ4K+3z4uuwVSLMki/YVaDg6YckLkuAMI4twSM=
X-Gm-Gg: ASbGncuOBB7sZW9dTQun42KAJfxFIB9P2lhcRq9ID6y0cojEwKOeeiz8taPFYZl16Nx
	XPoxArvRhepVCImRoxM24umKe8Pn4L0C5KLXp8RTXBm6dorSjmBP6uZOCwPyAzGYJv8mjyauwxD
	i36RZbRD0IO7VFsuScSHaRlE/BxhEBD2hrbce9x15A02QE3m/gmaj22/63SF8mX5eFYiYvWPIzK
	/vtpgrpl0D4EhyG1POS3WLIyzUiojiq9H4v2RIncxSQydF+E9H6ttdp6ZOk51GGF8V2Dj9ybEeJ
	4Z97Ke5t9Y8Jtts/UxYk+rYtcCGLIbgCgk9h6nbiD/fsLo0SZ9l2zs8=
X-Google-Smtp-Source: AGHT+IFnWo7zLhMGwvu4KurXEf7kIkAyH1HMaWOYapOqu0jjJNCjRbXuH7ozNEXPbffeeQud8LolDg==
X-Received: by 2002:a17:902:fc84:b0:223:fb3a:8647 with SMTP id d9443c01a7336-225e0aee9c6mr56406685ad.41.1741988422612;
        Fri, 14 Mar 2025 14:40:22 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c68a6e09sm33368855ad.55.2025.03.14.14.40.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 14:40:22 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Fri, 14 Mar 2025 14:39:40 -0700
Subject: [PATCH v12 21/28] riscv: Add Firmware Feature SBI extensions
 definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250314-v5_user_cfi_series-v12-21-e51202b53138@rivosinc.com>
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
 rick.p.edgecombe@intel.com, Zong Li <zong.li@sifive.com>
X-Mailer: b4 0.14.0

From: Clément Léger <cleger@rivosinc.com>

Add necessary SBI definitions to use the FWFT extension.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/include/asm/sbi.h | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 3d250824178b..23bfb254e3f4 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -35,6 +35,7 @@ enum sbi_ext_id {
 	SBI_EXT_DBCN = 0x4442434E,
 	SBI_EXT_STA = 0x535441,
 	SBI_EXT_NACL = 0x4E41434C,
+	SBI_EXT_FWFT = 0x46574654,
 
 	/* Experimentals extensions must lie within this range */
 	SBI_EXT_EXPERIMENTAL_START = 0x08000000,
@@ -401,6 +402,31 @@ enum sbi_ext_nacl_feature {
 
 #define SBI_NACL_SHMEM_SRET_X(__i)		((__riscv_xlen / 8) * (__i))
 #define SBI_NACL_SHMEM_SRET_X_LAST		31
+/* SBI function IDs for FW feature extension */
+#define SBI_EXT_FWFT_SET		0x0
+#define SBI_EXT_FWFT_GET		0x1
+
+enum sbi_fwft_feature_t {
+	SBI_FWFT_MISALIGNED_EXC_DELEG		= 0x0,
+	SBI_FWFT_LANDING_PAD			= 0x1,
+	SBI_FWFT_SHADOW_STACK			= 0x2,
+	SBI_FWFT_DOUBLE_TRAP			= 0x3,
+	SBI_FWFT_PTE_AD_HW_UPDATING		= 0x4,
+	SBI_FWFT_LOCAL_RESERVED_START		= 0x5,
+	SBI_FWFT_LOCAL_RESERVED_END		= 0x3fffffff,
+	SBI_FWFT_LOCAL_PLATFORM_START		= 0x40000000,
+	SBI_FWFT_LOCAL_PLATFORM_END		= 0x7fffffff,
+
+	SBI_FWFT_GLOBAL_RESERVED_START		= 0x80000000,
+	SBI_FWFT_GLOBAL_RESERVED_END		= 0xbfffffff,
+	SBI_FWFT_GLOBAL_PLATFORM_START		= 0xc0000000,
+	SBI_FWFT_GLOBAL_PLATFORM_END		= 0xffffffff,
+};
+
+#define SBI_FWFT_GLOBAL_FEATURE_BIT		(1 << 31)
+#define SBI_FWFT_PLATFORM_FEATURE_BIT		(1 << 30)
+
+#define SBI_FWFT_SET_FLAG_LOCK			(1 << 0)
 
 /* SBI spec version fields */
 #define SBI_SPEC_VERSION_DEFAULT	0x1

-- 
2.34.1


