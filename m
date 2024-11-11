Return-Path: <devicetree+bounces-120893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 281309C4784
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 22:03:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 169351F219DB
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 21:03:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45B0C1D0413;
	Mon, 11 Nov 2024 20:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="hCZjQ1jy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 943BC1BC9F4
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 20:54:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731358491; cv=none; b=qd2UASS1iKB8SH+sp7WLJKMXuZp/JlEhZ9SsU3cfQGuISrN0E/83mnSBBpb4b+X1CcqA1yPQxhct1DUyMIWgHKyVDOjLArkzRoJYKf65lysACULpJnJ+X3pTCSe4IpgubgjFdCE3kk+NQ7EDWyuMYIkjD/WPp3IciSoOYaCV+9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731358491; c=relaxed/simple;
	bh=N5oBVes6Snom/wnVxJw60zEKeNMyUtaDgBT0D5xbpnQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OIUcIb+KZm/SNCMd53ql/smoCRYi4e+fkUnBC77wYapdp6gNAeJtuDSpizOK5g1Omupnv2ovZMBQfhzIkC8bvqcKnj7lsBH3vKxlEDpFunUtKcUDjtqA8+XVMxMsT8AeZrxnVOpy+HfHRIPT5A3Yc9VvYtQnEUFo2igkcwUZXIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=hCZjQ1jy; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-20c714cd9c8so49961055ad.0
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 12:54:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1731358489; x=1731963289; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LCvJScsVwtSSPvsUmMz3Q3/hMnyxUHsF6MHlE4BY4IU=;
        b=hCZjQ1jygwHB7P6fp+ks+KsOIIhGeJ2Vzs94fAx2W/JYjKbYNYJv8C6Q9pf8YGM3Zz
         R7LfU5Zrb27AnQIEDG5PZ80Pd8BTsjYmy2MBB/ACuMntbXMCF+ywWVx3Rvrrgmwc8XZL
         2MxE1ORrRz9+Ij4c1UY1Bdc/jnDn+d8lit6UH8lKk3nI1j2rTtUusstbduIeb9giXArh
         0yuw/ySblkulGFVwNvPN1+6OheiWF03Hn5p7M40bMIWbGF5Q6NAIgfj74LSFycaPn6X3
         hBF65dREWG7UXzkkhAudxVAbKnc5ecoJJSl1HfRbqi5mc1Yc/d5Hfp322v/8KEi9pzgY
         rMUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731358489; x=1731963289;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LCvJScsVwtSSPvsUmMz3Q3/hMnyxUHsF6MHlE4BY4IU=;
        b=AvYahqaLY5+qdCRnECfkDp4FbuEp8DxLS1Ance+4QO8R1orTD1wku8QeheDGTSIXR1
         6l5qG9fKNyWBeswPtPycTv9c56NYht8TW5AWdasgtt+8Ed3fz25eNAFzHJFzVUhZkDen
         h/tJU3b2Efe4mBXPPg2QR6u9+I5iHpytO4Yu6WwCBmnJUdK6W0kJpQSQtClDtgv/aMaI
         YzqFkfie31YmCqrimCq2fGavGtX+NIE4lmDeMGmiwTL4lJoarYygmfW2HRQGZCU3IORX
         4QMxwHnYQEcW3p20zss2WELU1iONce53IAoVnL2Erbzk05aJFBJdUPL8E9GGd4B9F7x0
         jujg==
X-Forwarded-Encrypted: i=1; AJvYcCVWxPPlgSEQGyh24Oek01FuDKqv1K3vpGzX7ZQGavfRVUJO6/u0BgKnSBDfYw5HrScTeKv/onIkXuwD@vger.kernel.org
X-Gm-Message-State: AOJu0YySZP6Q+jC650bqi1JeeaEOwedd/JqzjBonBfdPK2YzdjK+OARK
	7OJX+vFZJ+jbBJIYtv/bZs69m/3hQvvu274ZGfDXzGxfMkMJ3uk34KyLMQIgCTc=
X-Google-Smtp-Source: AGHT+IHDimCQOVgf3cz6B2MDVaQCn9zqN59aHOrw12G3nQFTvSfb8MPteRYBnMY91dT3qMMvMiS9YQ==
X-Received: by 2002:a17:902:d482:b0:20c:8f78:67be with SMTP id d9443c01a7336-21183e11a8cmr198773145ad.40.1731358489062;
        Mon, 11 Nov 2024 12:54:49 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e9a5fd1534sm9059974a91.42.2024.11.11.12.54.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 12:54:48 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 11 Nov 2024 12:54:05 -0800
Subject: [PATCH v8 20/29] riscv/kernel: update __show_regs to print shadow
 stack register
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241111-v5_user_cfi_series-v8-20-dce14aa30207@rivosinc.com>
References: <20241111-v5_user_cfi_series-v8-0-dce14aa30207@rivosinc.com>
In-Reply-To: <20241111-v5_user_cfi_series-v8-0-dce14aa30207@rivosinc.com>
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
index 226054db6c42..1aeb5c08a3c6 100644
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
2.45.0


