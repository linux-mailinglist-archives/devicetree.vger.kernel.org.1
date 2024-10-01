Return-Path: <devicetree+bounces-106910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A50B98C2DE
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 18:15:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 621531C23616
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 16:15:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5863D1D049A;
	Tue,  1 Oct 2024 16:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="zo0Dyvun"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1B51D0424
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 16:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727798887; cv=none; b=Xjv+41T1X2zG5Cs/B2NaltCyfRfP5z5b2YEEiKFZ8iLe7WFOH+J6U/FyQeH0ojk6JTRlvwRyTOwT/GfW5XzJ5k4RzO18zJ49u66o4Uj5+CgsU/CvaEIMeyVKRQEvcvNnE2FxzxB/4xCnDjrLAaxiU93WTlq7tIeBqmKXH4k6M/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727798887; c=relaxed/simple;
	bh=vUZ7rOUMw9RDAZdbqhr8Hsm+T/749V5V2ULrkIJqqRo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WKCPvNZnO6YJJ2hvNwycpQremJu4IXGuzg0mUh7SFBK4jzJLXZaBx656YGcSslTJBdxFnA0Po8Skm0xfbmefr0AdxpJbgG5mw5P3eY+rtfhl6A3pUXBVyAATqTqN5uE6MD4/Fmczglk0cxyBT9l5qWFPEHUl7VFieV8frwjlxJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=zo0Dyvun; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2e091682cfbso4247986a91.0
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 09:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1727798884; x=1728403684; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CDZ6InrT+eerMmZ4qSLMUgeWEoIog/HDXgAiPQQVAR8=;
        b=zo0Dyvunbgpr1AgqbAAXAOBmlNW8fp1W03d/EwtS/ZCjcNwunn6qlCNTjcdTKUoKL3
         O6wNk/MAj3/odt3/GcTW3FJz8DnRF/mt+/EzmGg5n7YgxKFQ8mcS1HKifbtScTfIl8ib
         1uoWlgfsrnCwh1yP54e8p5awnapvewumCeGiLq8aPtWOWRfcXcJKBi68o3avbBIU9OQ5
         VrzSq2+Rs4lKKuTVgXwW4PTlsUD+1pVI7bVN2TmUA4APFrEOzucLKzp1mZ5o6SQLHJ+i
         MJPCITiRSDm5zJRrtg2iX3b3bfEHu+TmsAk4O1KCazUBrERqtMTd+5iKEdSf+o+j1+S6
         T53g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727798884; x=1728403684;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CDZ6InrT+eerMmZ4qSLMUgeWEoIog/HDXgAiPQQVAR8=;
        b=NQtmRhhnl924ez0Mrca69CK/zzys1Oq7kamPvncwZy5BrbGJseJuuCp0O2ORxJhnJI
         yVT/8qC15jqkrn8JESaakm8dmWsgWbrkXnjwVU35voa2f37s093PfJ7r1dV4t7o2uqnw
         6w6/5fWR0ZR8r5LcPVMDwfm+x7ifIL8pFI85B54+CumcYvQOFVIV2NZo0H6PoWObLwBV
         fQKUw4FA2ckVeOrFdsksKd0l7YJM8AsrDz7gj5o0L7LJcvA0dRXApkUhsan2tUSBPgh5
         pLG43nfHiZ/loxcyw0VBopZLTB4aTY6EbS5lq0cjw9hgrAqdWZH9u2W2jjnqrMdhyChb
         fO4A==
X-Forwarded-Encrypted: i=1; AJvYcCW1OoHYMpx4fAtAymIzVip5JbxgxPs1K8fXFubmBVIi329zSFxyL/on1zk4I7k7Isry88dbWjijE7v3@vger.kernel.org
X-Gm-Message-State: AOJu0YxO/OL7ELR3TJxpf5NQLb57PjJGwKyqKDoXkc093YSrAfS8djWi
	mw2+FGTQPnpwc7ymc55nKwCFlsYbDynOYuRmkNzFR6FUppK7tO/6EdQOEuibrkU=
X-Google-Smtp-Source: AGHT+IHXYXQ1OwFDd1dtv/2VxG8PWP7+nvRdzMjo+9YOaXZGTPtIIOVqtoUXrRFuXQYTqOg0fWXwSg==
X-Received: by 2002:a17:90a:4607:b0:2e0:8bf4:f298 with SMTP id 98e67ed59e1d1-2e182cb9256mr279683a91.0.1727798884295;
        Tue, 01 Oct 2024 09:08:04 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e06e1d7d47sm13843973a91.28.2024.10.01.09.08.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 09:08:03 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Tue, 01 Oct 2024 09:06:29 -0700
Subject: [PATCH 24/33] riscv/kernel: update __show_regs to print shadow
 stack register
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241001-v5_user_cfi_series-v1-24-3ba65b6e550f@rivosinc.com>
References: <20241001-v5_user_cfi_series-v1-0-3ba65b6e550f@rivosinc.com>
In-Reply-To: <20241001-v5_user_cfi_series-v1-0-3ba65b6e550f@rivosinc.com>
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

Updating __show_regs to print captured shadow stack pointer as well.
On tasks where shadow stack is disabled, it'll simply print 0.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
---
 arch/riscv/kernel/process.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index 5207f018415c..6db0fde3701e 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -89,8 +89,8 @@ void __show_regs(struct pt_regs *regs)
 		regs->s8, regs->s9, regs->s10);
 	pr_cont(" s11: " REG_FMT " t3 : " REG_FMT " t4 : " REG_FMT "\n",
 		regs->s11, regs->t3, regs->t4);
-	pr_cont(" t5 : " REG_FMT " t6 : " REG_FMT "\n",
-		regs->t5, regs->t6);
+	pr_cont(" t5 : " REG_FMT " t6 : " REG_FMT " ssp : " REG_FMT "\n",
+		regs->t5, regs->t6, get_active_shstk(current));
 
 	pr_cont("status: " REG_FMT " badaddr: " REG_FMT " cause: " REG_FMT "\n",
 		regs->status, regs->badaddr, regs->cause);

-- 
2.45.0


