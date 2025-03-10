Return-Path: <devicetree+bounces-156208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E82A598AA
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 15:58:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8A48188FA81
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 14:58:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D9BB2376F2;
	Mon, 10 Mar 2025 14:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="zPXTTQSK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF1A236A9C
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 14:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741618396; cv=none; b=upIgjjNgNc/WgeV5copGBW8iXQv1S5+JCKGBFjD/ELeAcWEW73mvAQ2CBUupNxQEouMwLya1KL6/h6YMkUw82mYLoPGAEoC5aLl1Zf16ooGf5GoLHwQNQMWyZ7UMyex7PkV+HmQXSPQDY9axzF8IiNna0F2HAghdR0uwztuHADI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741618396; c=relaxed/simple;
	bh=UvMauEZ7ujgiT53rhoVNtF8wKatfWBS5dd1E01vsJYA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ejVpFV1y3FjyToC7Sg+6TaYZfoDPrzza9KOOpoHLo6O1NdIzkDuZDUMsyKLx+nHfPZcbl3h2NAHMxFGXrAt2qE/WQYSv/j6HUg2DB8ekoexG2puQ3Gd3/rG9QksQ8EXi9djJYBvIhl2Rm2Qsv4y9NsiHJlkMbeGtVhXXYFH9eXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=zPXTTQSK; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-22438c356c8so47041745ad.1
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 07:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1741618394; x=1742223194; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hU6IAlGSwKWKw5iWDrFBqBdwaJZ69/+Cs7+/DXu3do8=;
        b=zPXTTQSKs3/W7hpXrMrHxoM7PXJu/T5lIZU0UskLLk+biL8fBDRNPITf9//V/O1GpU
         AJD3oPHH3qQlP5OL3dMoul6OWtzKNlN1m5QgSOVk3mMCpxeBh6nR68Wc6O1TMFIIVzxc
         dJDnrdwCGuChWNwT6mVSgVFssX0UtKee87VE0WtWpJeAHHCyxwhxl/FNW/Z0xEQEO9aU
         bWreBVHBCsf2t2Rk2Re/3K7fEiBJTGmlpIJt15/pfWNcu3FfL1SYxIaucRVjKfBEmnVw
         TxvnRmNJM89a6WslO5CZEDDyZ1OLtU1dlyrNR88YQpQC2HyraDmzvUKUY/WiN0tolozE
         9IPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741618394; x=1742223194;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hU6IAlGSwKWKw5iWDrFBqBdwaJZ69/+Cs7+/DXu3do8=;
        b=akJgMHnwZ1FzSO40SzMZpJVyLwP4KWFazQT5v8wQqpQD/FHMu4jHm6kW4ce55mq5Pn
         7lrniBznKtlQ+jDVEtsCmxpQJNGkFpRQ2YsZeca/Gr7nn9pN9sVh/uORJyxwgJCebmal
         giy2cmudOaKGoxjcoOW5BHEUollR5FEDcvr6plvBSw3uIyKuqsxGAYMin72iWv4a7omn
         ddJLj9YuRkmcc9hmDx1vusFCv59n9SwoLwaNBdWohWFR+nuVVNpcj4hSA2idrDnLXxqJ
         NCNcnhB8rZS6gmLMnMKmIogZuNM+WdcA9DGyO5ZZXiKmjjJOhqHZxvAGx4Bja1qoTDst
         nB6w==
X-Forwarded-Encrypted: i=1; AJvYcCW//0oD/dNKDDdecPo+dQb7PRwseQkebkqI275TK1fxBkeKb9RYMIsdQaBalIAvnWA3/Btd+bhgQBo3@vger.kernel.org
X-Gm-Message-State: AOJu0YwgYgDYQ7JIxfoxGnALTBU+Sq2zVlWyIoOF6gKG6XIAEkWl1D5V
	ExFyk9xbY/mhYushWDPAYzDab4AOEJZGChfTypMbrjmQmP9FPSFh2Rs4lWFFkvU=
X-Gm-Gg: ASbGnculn3Lgz/TE9bmlB5uIpVV7gFdiIrWM7bF2Sw7D5kFQZu8gNMZGtBrvcfTm0J7
	DB/brFOg8xk4qgowIEgSIJ60XnHfVJSuU7rR839gk/r9oHTi/5CadgGPm/vE6apy4E8fDXrQ0QT
	ib2srI+g0uZiWpRZbGPlVufOnJV95/6/QLy6rbDuDPRsq00+F2GZCVX//6YNsZgXJApRYAEpmNN
	CCYLbWwp6CsCBbs475KZ2v57IVPsU65ox0JAGHcWwmf5V3ZgencX9O/II0/wzQh3Pj8UU1MT6bJ
	UduMkmt3GEg+XtKAaNUSBK0mbrYgpICokRoq2X9kqmUbTqqXkMhskLE=
X-Google-Smtp-Source: AGHT+IG6aOZPbFLpYB6hUt/uNP0xUDOJ3SJhAN3Hb+FAwmeol3/+ZPXWsjDkyF4qiBV6yJ/cwzujRQ==
X-Received: by 2002:a17:902:ec89:b0:224:10a2:cad9 with SMTP id d9443c01a7336-22428bd5852mr262786715ad.41.1741618394280;
        Mon, 10 Mar 2025 07:53:14 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-736d11d4600sm2890275b3a.116.2025.03.10.07.53.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 07:53:13 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 10 Mar 2025 07:52:39 -0700
Subject: [PATCH v11 17/27] riscv/kernel: update __show_regs to print shadow
 stack register
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250310-v5_user_cfi_series-v11-17-86b36cbfb910@rivosinc.com>
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

Updating __show_regs to print captured shadow stack pointer as well.
On tasks where shadow stack is disabled, it'll simply print 0.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
---
 arch/riscv/kernel/process.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index 4587201dd81d..6bb53ce72ed5 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -90,8 +90,8 @@ void __show_regs(struct pt_regs *regs)
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
2.34.1


