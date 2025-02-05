Return-Path: <devicetree+bounces-143103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC6DA28120
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 02:28:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B0781883C84
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 01:28:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D31522F38B;
	Wed,  5 Feb 2025 01:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ekf0P+CH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1720922F15C
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 01:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738718555; cv=none; b=MBcGa9BWOK4yLmnkpxdoy5iAjv/2fWN+W2OmPDOu+m/wouLFlrfpuwLvzuyHSsPz4utynLm96J84p9fwp99pT2KHONk6REACj5kD12unPs1FEz3/gmGwifqeud6RKBO7Sq1KmbmgS8omvkPja9fJYVaATRtXT6MC1uE5+9iljcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738718555; c=relaxed/simple;
	bh=lD6rgHPb/ib2WH9dder9ZLKtBlS2SotatDP0DK7YItE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CRuSVxT+lAlv3FCXc8+Ha1iDTbRWgFf6gp692mqJ/0QIo8FvM6Vj63u06ingMxNNZvhbikxXZcBO0Yrn7AdLniNR5SLTaKmiAiaHPD+r22w0LD0/4fERBFWNR1TCuZgOmkcYLSuIt5V/52iiT0+JnikaVMMea2JH86vpAyt4aUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ekf0P+CH; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-21ddab8800bso88860235ad.3
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 17:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738718552; x=1739323352; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a5uI84SXblQRDID2BHNWhhHsRc7xVUDdoiei4kS9c/0=;
        b=ekf0P+CHlRFc2j4jMgY/9lZwxhTPQVrMUSz/Cb8Fps/2R2HH3I8h/IyuZTp+T5c7Kv
         zf1O7K239Y/JmWfEDY59kCSCeIKjRZviKnX9vFyw2KCQWzqoLJFbA5eKzKnIi416WcZ0
         N5CYD3jEkxvnjW0zpGeBxYKotkK54bkqcdhsbBxKr1OnN8A2ddkkQjLmfLEAUGqore7S
         eNr9z9zsWoExP4bS6UmlJlzIkFoQQ+Nywo0IOfUD/qhukv+CiTo8TIBEnoUN0xtessXy
         AEdec9TSsfUcNo8yf+/X+KDQIlUAJHbbjLvt84FNCL0c/IxZxRZxnhzs2nrTgq9WwZCz
         7YXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738718552; x=1739323352;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a5uI84SXblQRDID2BHNWhhHsRc7xVUDdoiei4kS9c/0=;
        b=CwOGTrFhB0lT8avZxX+XPOJU0wqBPsIXHMYPd7w/5SeCJtF8r/o9Lz7hidCcfV+PMr
         wHXJVm2TY8wlb7Oh4QL0khYtoznvn1/jcf7CQrulKO2R99HQRSChKnDVq/LQ/Iw7AAo3
         5tfFTckkJIaRJ/1te5vN5pfx8MtAQRbD+slJwrLIICZyZnkfC0a2shHsU8/xRl5xzMpt
         PlihVwcp/IN3iQTAFD+EfX6/3Y2tGzO1HGjINgGBIxfLjvF+ebMKbrPMSiJ+cZ5ARAE1
         upcviygCsjRQAo8gj8QgVfQQb8SUNQOVEMI4ehW3VLg5cSTTIXa/od8OuekkN7KNZSWS
         oxAQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6NGDrM1f8/ALJBlwYL3u9NQM/0iE1dQGt8nq3EwoF+1hU4XwFgXKCiSNJhR1ZqHuHEoVgt6kzI3IF@vger.kernel.org
X-Gm-Message-State: AOJu0YxfWXPG/IUnOZ1Mdmb10IDhmSsRGAyKuT+UtLrboNhqhqx3RIgt
	OLJOQpJ8GkhQeHwty+uZdyVGrah5GZMAa19ynP05i3v4rEVfGwqCV2A4Bh2+t2M=
X-Gm-Gg: ASbGncuaPPwkkShiVXupDX+qeZnH8GPwgCM4iVv50PO2/G90M1JmqULkuyX380EFZq8
	kzsKtqSB2GVGTiH8d3ptyfa50cNNqxmAmwbTq7TpXSE/AySHPRDOfv+eviHJk8BKKm08f+lJK9V
	7G8Oc0z1JW0mUWV5JMpSW5JVZxPx4XgiUofHCKoZ5bHeS2EtWviFeP9dmjI2CIGVOK9WReudtn8
	yGtft8vKU6bDX1yLX2RaO3ccPEFLA1O+fBI9CUUdPFp6moByfzwR7sItJNLefsCqWLS6mDbJaab
	m2ZRa3laxjcj+B0fpAKqhJs7Mg==
X-Google-Smtp-Source: AGHT+IFCF6Qyo3q2G3dGEoXnovMcbEOll06APDlJ/baKR1lUf1tJ5kFaxAt+4U15uatvwIepGIzY3g==
X-Received: by 2002:a05:6a21:6da4:b0:1d9:2705:699e with SMTP id adf61e73a8af0-1ede88106d4mr1669830637.7.1738718552107;
        Tue, 04 Feb 2025 17:22:32 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72fe69cec0fsm11457202b3a.137.2025.02.04.17.22.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2025 17:22:31 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Tue, 04 Feb 2025 17:22:07 -0800
Subject: [PATCH v9 20/26] riscv: Add Firmware Feature SBI extensions
 definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250204-v5_user_cfi_series-v9-20-b37a49c5205c@rivosinc.com>
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
 rick.p.edgecombe@intel.com
X-Mailer: b4 0.14.0

From: Clément Léger <cleger@rivosinc.com>

Add necessary SBI definitions to use the FWFT extension.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
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


