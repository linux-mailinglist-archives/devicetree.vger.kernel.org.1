Return-Path: <devicetree+bounces-144905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5938BA2FA8F
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 21:35:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B8DAE1883A9A
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 20:35:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B0E9262140;
	Mon, 10 Feb 2025 20:27:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="k0WpeWPa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAE54261389
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 20:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739219259; cv=none; b=sa6mtMvaQLF9aa9kLZSioJisi4wsqGUOXxD4iqR3PDvJwN8Vwdc5Ju/x24jFrNdXDELdnYxPBZcQSRbSHCSvPKLgUxj6QgTbg4gnmUJA115ZM3yy3sYrjTkEFNA4KCUfJNCgQYxjjTG6nEYSaRyrfvpuN6cO2bV/MidWZEO6nmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739219259; c=relaxed/simple;
	bh=zWvCMjEUr0fm2YGOtkO5JQMRJ3MfHFejTQpY2YYRpeI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uRX/4ltmcj+1G4orjawe0sc9k+4nK2T2fYPhp1w+JkHyIc/CcylIHrtgNfhK+bZyLOLlJORKMgEMIbkC8ZLXa6oLtdlQ7Q3kl5kwGoGQSqsKRetu+qpqjqKBMmleH4PNHCMy6JfUeHaLIYFL7JG+OyjUJavQRQn3DhbCIvZQ4dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=k0WpeWPa; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-21f573ff39bso66572375ad.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 12:27:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1739219257; x=1739824057; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=opxHamP1ejpgUrZttGLg4zwDHWHLF3xPs1/Qb/08WRM=;
        b=k0WpeWPaq8hgRQ9Ha2rVV/0mN9SFOGihKHVgQuw5DyqHjJ/dZ6ylpIjBcQLLONeKBJ
         yh9V0PiBX5YOLho1qfXolkqnX1SG/JZLulhHuU7UDizs/hd0kJ9L/pbfBcAYYo4ohVbx
         QCuE/yKnPqu5eUFUQXVajbu+zhfqDWMsQ2vsAv05p/BsnRuVwlWKN/SunCVcVRF5Zfbl
         X1oO2F24x0ZMOFnTgP5FbskCaTsBWWEYKZtQKFCu8cRmF15g02/9JWcdTEMj7pWjQM6p
         3FzhE6p/CwqAlGxvAySnQZX8EzycDtPfGIQhwEYrMdKLcvGN1tdAT3TE7hBTusK10Vdx
         +uZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739219257; x=1739824057;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=opxHamP1ejpgUrZttGLg4zwDHWHLF3xPs1/Qb/08WRM=;
        b=knj4sqf4E+dIa+lK8BUeP0dnZrQdDf7Wttpub52qZBw80ZO47s6wgZV0TyqJ9AnFVg
         CEbACM7ehRXayaqMrrY+mKo0t6dnf28O7DJy/jxD4viGEfThj7o+wb7S7Q46XoGmXx/C
         7AVIM5M55bjLfIMX5lV6g79/QXXfm60+zv0eq/vspkUDCqKJv4cV0gl9sxP0BXv43b5f
         0BOAi7YZsIg3brIzgcKxc8aVZ3BSY9AEt8bYEw/E/pLRKHjpAufMXhFDC19YZ52jAv7Q
         gQxhECuYObT7ZvW8j1WKexmLIF0cH5qYM7Ecyz1eci/qn++aiq2aTOIs6mpYJfpPAGZF
         uMmw==
X-Forwarded-Encrypted: i=1; AJvYcCXGQDcJwI0uuOL3wonTlUte1H9LtdDuMfUstgEZn3+qJzP3hMuU/nU/hbbba9O/om2ZCOdBb821K382@vger.kernel.org
X-Gm-Message-State: AOJu0YzhbUjMB9LJboZmsh3UjfOcdEBsEbUgAx0CTFoKQJZP3WRlhHcK
	12DMPu6DHse7ujR6cR8j1nD6uBG6HSlN2qiqepAR2nt0KBpWdU9NvyHm/1DX03w=
X-Gm-Gg: ASbGnctQke8RPAXwfoipJfnx6/mqgslC2IS0p1Sjf7aTSXF5zCLCRP4P5WsxuyLrcUM
	YXPHy2t1CBnW0CadumUJ1mBEtX/DlQKPWkbIxAlhe88wL/juxkIgn8uHzazF1j8slDhHaOQ+8WH
	9PIzL/sVhwSziKUythImxOdAdaoSqRyoYQOCLPUoftuQPGVMuGZqTMRIga/cjRdtOrsPdGnioP1
	FGWdgPUk3bazm8kC0agE2xBjJZ0u47SiaN4xNsKyxdyaDliPq2yBQQSiNydUmmyfxTh1OBxl3ls
	O9ch6+m6wMuAb4nBT0Yy6Xf2KQ==
X-Google-Smtp-Source: AGHT+IF/dAuKVSsF4xfi2H6sG4wlPlN+BXXOHG9nKEFkchqxVssSaBrEBlASEgV9299c+TKy14VoKQ==
X-Received: by 2002:a17:902:c94c:b0:216:1543:195e with SMTP id d9443c01a7336-21f4e1c8978mr260581855ad.5.1739219256955;
        Mon, 10 Feb 2025 12:27:36 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3687c187sm83711555ad.168.2025.02.10.12.27.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 12:27:36 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 10 Feb 2025 12:26:55 -0800
Subject: [PATCH v10 22/27] riscv: kernel command line option to opt out of
 user cfi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250210-v5_user_cfi_series-v10-22-163dcfa31c60@rivosinc.com>
References: <20250210-v5_user_cfi_series-v10-0-163dcfa31c60@rivosinc.com>
In-Reply-To: <20250210-v5_user_cfi_series-v10-0-163dcfa31c60@rivosinc.com>
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
index 6e561256bfaf..be08e5bb6e62 100644
--- a/arch/riscv/kernel/usercfi.c
+++ b/arch/riscv/kernel/usercfi.c
@@ -17,6 +17,8 @@
 #include <asm/csr.h>
 #include <asm/usercfi.h>
 
+bool disable_riscv_usercfi;
+
 #define SHSTK_ENTRY_SIZE sizeof(void *)
 
 bool is_shstk_enabled(struct task_struct *task)
@@ -390,6 +392,9 @@ int arch_set_shadow_stack_status(struct task_struct *t, unsigned long status)
 	unsigned long size = 0, addr = 0;
 	bool enable_shstk = false;
 
+	if (disable_riscv_usercfi)
+		return 0;
+
 	if (!cpu_supports_shadow_stack())
 		return -EINVAL;
 
@@ -469,6 +474,9 @@ int arch_set_indir_br_lp_status(struct task_struct *t, unsigned long status)
 {
 	bool enable_indir_lp = false;
 
+	if (disable_riscv_usercfi)
+		return 0;
+
 	if (!cpu_supports_indirect_br_lp_instr())
 		return -EINVAL;
 
@@ -501,3 +509,16 @@ int arch_lock_indir_br_lp_status(struct task_struct *task,
 
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


