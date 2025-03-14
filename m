Return-Path: <devicetree+bounces-157708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E383A61F15
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 22:46:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A09B46156E
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 21:46:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB526214A9A;
	Fri, 14 Mar 2025 21:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="LRSF9WBM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56DA215040
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 21:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741988430; cv=none; b=R5QCzbOUelvglkaWLwudVHZarMRyDoiqtWaeNYvbY5IlokeEifWWRkGf6j5uooI3GLDOY28xNayJWHeTWdu8e6PmPJ4EhLF6M2RuezME4vyP25C+1kccqdW+r5WEVM2RFzSxY+2NDpbbq1vSFNjSe9YnV66OBTQgau3NnzoEbjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741988430; c=relaxed/simple;
	bh=CfqIlvRNnAaYS1Ud2Sq2SPLM7zgt5Ek9vu9v1oO8Dhg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dNtGmwpwXZMYoNrc7IkI24lFbemaUe68nmFSYv60sKFrh7+a9CPqfqpCZ8cg3jirKJN7lT6tIv9MSlMfgzczNBeYd9r9rhKri+J3uauLUMbh4tn6Cnaf/98W7K+vxIcZw7WBFkmUQOx0wzDnWO5Zoh5wwU52i9kFbPiMxB0wOFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=LRSF9WBM; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2240b4de12bso69481345ad.2
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 14:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1741988428; x=1742593228; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a7L6jEjphmSCVBHcxl5XAt3Us7qrk/UvaMSfIdPEx6k=;
        b=LRSF9WBMlGQ1h1slE18S16rLUjEPjzot78w8SPGc2rX2NicbPSizXo66/GSyO6grNX
         0dJ1Tarn+6Gw5/P75CAdXbiVWKIhPfcKVZHC1uPiCdJ3g8XV5/5yIrUJEv8uc9Pj08Pc
         yrXVDjje5T/DWl24XYrZLwXPZ/hiQCktZQDwsA0x6b1JBEF9d6XG4TsgTA6PmObEOKgV
         nJPr7uagFFPPT1JECbupV/GuictUJGyDvX5W1yhNXxJMgCZ2Y6uGK/KuKaBqY5M2AXnO
         t7IQJIWB5NHs4tJkxFtQYdvWmU1F56T/cjmygHIuZo/4JNFlugL8QfnDtvXeJjZ1t0P8
         luyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741988428; x=1742593228;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a7L6jEjphmSCVBHcxl5XAt3Us7qrk/UvaMSfIdPEx6k=;
        b=UlPDHIY/P5NXkmsp86+rUnewOI6neceWkWzqjPGKw1DESZq6pRsd2uwsuE6ioApr7E
         xNIobx/l5CLz4K82pmjf13aqzCXLwkYjJcbMI+onVdG9QfbtTAEMDfSwl+ruhis9kn3k
         ORh//bNW/z4O92ap8A0NSU8XLifwrHBKasl+HR0jxJx8C9nUIqR9vVwEOePDzb8MACje
         8oeYydgeOS8UaL930zH427o/5oEKzSwyZgzG8Dg5b4KSkAcJfBXWUKreEmRF5Hg/dj4H
         3utX2vhAl9Rask4v0Y012TFZXoJTbOSC5KLaVmJ5zmnhRwYBqkJq1+FN333G5MxQ4uxo
         quXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXb1XORCans4YKoBH9LwcJkhd1LXn/z4tMRhfrR9xIOmZu7IN7/Qu84XxYoO3pD8qbv0xRF21E0KZSZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzH6oO6y+UhEmScIIVwnzsgQMLO4WO0SwVPcVlbPrqVQs5CQoxo
	pos8rDoARl91bM6ApjZJPCeNrM7uAYzp+rzmwLE1zH+8xdIkcfkO52l/Dye3hVg=
X-Gm-Gg: ASbGnctogplw1aSZ/4HHGpWc32AXTMnJevYkDp0XT5CG3lZmP8hnS+RO7tUYxJjmjJI
	fI5ESIEAhu5Tgk0baQBfFDcs9ohfLsI6RcCGi7w8fpowJE8eJT5diUx7oaD0Y4jYAHhHCwPZhmB
	YOCdLLhNxikhpC8DT35TPzzyLmmT7b4vsEUecVjR0mTnhqRalsrAlWJVaPph+PSMGzlULFYbGEH
	jGgt+EXe9cBbqo8G3g4Z2SibkPebg1hTOTsbhg0655cabAQjrsnDtNdvL0IXMRspiVfNfWFg9/u
	qG9dCPWorIbUVMGb5kJNlVnGl4Mg/AdgctHEp6Jhv+toiivVQvlmpP0=
X-Google-Smtp-Source: AGHT+IHAGPYqUS71chjGuiJ8YNLnk78WQ4QXPzZzrnBV+tP+kBaD6/rfE4E8XKuF5NR7jHoZswbG+g==
X-Received: by 2002:a17:902:aa4a:b0:224:1dd5:4878 with SMTP id d9443c01a7336-225e0a62f2emr37059015ad.7.1741988428224;
        Fri, 14 Mar 2025 14:40:28 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c68a6e09sm33368855ad.55.2025.03.14.14.40.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 14:40:27 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Fri, 14 Mar 2025 14:39:42 -0700
Subject: [PATCH v12 23/28] riscv: kernel command line option to opt out of
 user cfi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250314-v5_user_cfi_series-v12-23-e51202b53138@rivosinc.com>
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

This commit adds a kernel command line option using which user cfi can be
disabled.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/kernel/usercfi.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/riscv/kernel/usercfi.c b/arch/riscv/kernel/usercfi.c
index d31d89618763..813162ce4f15 100644
--- a/arch/riscv/kernel/usercfi.c
+++ b/arch/riscv/kernel/usercfi.c
@@ -17,6 +17,8 @@
 #include <asm/csr.h>
 #include <asm/usercfi.h>
 
+bool disable_riscv_usercfi;
+
 #define SHSTK_ENTRY_SIZE sizeof(void *)
 
 bool is_shstk_enabled(struct task_struct *task)
@@ -396,6 +398,9 @@ int arch_set_shadow_stack_status(struct task_struct *t, unsigned long status)
 	unsigned long size = 0, addr = 0;
 	bool enable_shstk = false;
 
+	if (disable_riscv_usercfi)
+		return 0;
+
 	if (!cpu_supports_shadow_stack())
 		return -EINVAL;
 
@@ -475,6 +480,9 @@ int arch_set_indir_br_lp_status(struct task_struct *t, unsigned long status)
 {
 	bool enable_indir_lp = false;
 
+	if (disable_riscv_usercfi)
+		return 0;
+
 	if (!cpu_supports_indirect_br_lp_instr())
 		return -EINVAL;
 
@@ -507,3 +515,16 @@ int arch_lock_indir_br_lp_status(struct task_struct *task,
 
 	return 0;
 }
+
+static int __init setup_global_riscv_enable(char *str)
+{
+	if (strcmp(str, "true") == 0)
+		disable_riscv_usercfi = true;
+
+	pr_info("Setting riscv usercfi to be %s\n",
+		(disable_riscv_usercfi ? "disabled" : "enabled"));
+
+	return 1;
+}
+
+__setup("disable_riscv_usercfi=", setup_global_riscv_enable);

-- 
2.34.1


