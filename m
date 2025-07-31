Return-Path: <devicetree+bounces-201173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF95B179C5
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 01:25:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DBA9B58775E
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 23:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9B2228A1D7;
	Thu, 31 Jul 2025 23:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="IiVy2qEl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BEB289813
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 23:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754004015; cv=none; b=DyMhtB6BAxkMUCpSgVgP98QxlBVNVfF0StEzpxxtA7h4E/VRCmgc2r325nzZUk2cw0wOiQi0lgamBOx2R68+J0+s2yiJrEUnt5XJwDI/LDp9ikYrz9GeEn/27nmLtM/mkojT/EOzjRjYqO0JFisTn5gEQj3gOmY4OiwxbIZieE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754004015; c=relaxed/simple;
	bh=kI0JEIvhnozf7HW2k2LoLdj2L7bNb8dWhw7SVD1JQVE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z1AYpuiogSaOWo9uDIqwScPiTJNDPhKwwh5Chnb04BEtDd8kse7+mR2zS/brm7aMWRkRJmx1w6gTmYI6+xcdje+uWmqUidbtJ7oboDjkqVIAAucPQ7YBpJtoAiUSzKdM5NKmWBcDHOHp2XwI8v9wuNKyoIpaWXWCX3ttONFa1V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=IiVy2qEl; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2403df11a2aso7540215ad.0
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 16:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1754004013; x=1754608813; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aaOhr4B8UIBnpyYSF4WgF0h84c6zm8BnVR368xQHyas=;
        b=IiVy2qEl17LtZAtepzcUw8EIpA5pS4iuaKNBTWGuAEGIJY/DmVxCJ9iKLqkwYREc0a
         iOqeJRuMiUomRbExepgiAE3U7+REc9OiuUYBP5gFleQIRFPn9D8pSsKQu2uQCKqYL+Vb
         RGd3zuZRcCdefTO3h8j+AYK8aSsJbEW7B9X2qSGSW7E9er1SUURT6Tyc1k1yvZ6HFvoM
         vOhnAzN+uP30wjcUDOzAjP0QLuwkuY2EpPNlaE8vTTZZ7+gKZ272HN874Rem6Xyhtyio
         kFBwJlBBJ95OsrklA6teuVrusv/si1JHGyL3czQKHs4TQM0rNxY7DK3O38m9G8AUrsfI
         +DgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754004013; x=1754608813;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aaOhr4B8UIBnpyYSF4WgF0h84c6zm8BnVR368xQHyas=;
        b=FI8hzpjV1vpnlYSfaY4L6rKvl5QVmJkBiM9Gp/EyYVTAGZt6IPEWrU9qWB88Cz0zrG
         GsK6f4R3wRoMRb+cHQdZAX05uiELYoiok0XLIlEBt9ihnwWFVT/IWOWbfmAJhnsLkv9m
         mQGGDqhrbYJANuoN7QrIvcTdKmkTIrXmvVd//xrXcGYL9Xpr9opTsyQvJbyyonrM34Au
         ngHjGEaiuIAzyueGeee7EX5jAVjamgt0FQYnEJ36YWVJVi1afDSoyGFwJKOW1huHeGvZ
         HhOEiBJeVgC2yoUtGsSxmAUvumtfB0rA/zIEuP12eoCHfvlnkLiWuyVJ2sRS2VExpVrZ
         GJaA==
X-Forwarded-Encrypted: i=1; AJvYcCVx1jgAcVqsNRLbRr8SRk7voaLa3A1+vLCCOXczxCI+JFx+wRPKICmP6H8ME/VBbs5kw+XVOVdgxrre@vger.kernel.org
X-Gm-Message-State: AOJu0YxNPyd66zymoEp64MIcnY6F3Vw70CoMXlRkZc/i4Kn7rXDlHxiI
	amQ3mujJ5L1vpO8vFNI3rbn9sm2QrPwE0dK7KBwECuEizN8Sy4D0jocaqTBE2OUIsm0=
X-Gm-Gg: ASbGncvYux6FW0gOwMZlIlQPLHEHI6knDw+8u729Xv3NxXqeBHnwja3kEXbOJEO1gz8
	ekHEmHmB5aHYJOeyHecXHxihWhTiU/myH1olEo+2W8ysuP4LCl2NxYT1wsP8oDDXQend4Z9dNjP
	rxljdRKBHzzsp1r5XO9Np0l5lDM5EUzUjSoVw7DaJOiR6Jez1PbO+1LbTWEJ6onEAXDm9TCFRyd
	ro6pS6tTzHvgzZw+Fxp7hKG9OE9Ls2TX/vffDv0sWcesdUZ27o3JNvyyf3YM33JODcGMjDFKOVA
	3J/YP7tATYueDKhCu+dw9M04JqyMDoLZrmbjqe/P0gXuUyJFFya9jCj5jNlcN2mBccwbZdRACD8
	z+Vjtt00RwoHX+XvTUeobrjV8Evbp8+qZ
X-Google-Smtp-Source: AGHT+IEOx2kNK4TLWda5A9GHVV0DV0Tzu98/FGzwUAzzSt+lpD57+aAlabnlaZr4ia9ZMoripanr5A==
X-Received: by 2002:a17:902:d48d:b0:242:1a:1710 with SMTP id d9443c01a7336-2422a3397e4mr5432705ad.6.1754004013350;
        Thu, 31 Jul 2025 16:20:13 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31f63da8fcfsm5773085a91.7.2025.07.31.16.20.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 16:20:12 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Thu, 31 Jul 2025 16:19:28 -0700
Subject: [PATCH v19 18/27] riscv/kernel: update __show_regs to print shadow
 stack register
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250731-v5_user_cfi_series-v19-18-09b468d7beab@rivosinc.com>
References: <20250731-v5_user_cfi_series-v19-0-09b468d7beab@rivosinc.com>
In-Reply-To: <20250731-v5_user_cfi_series-v19-0-09b468d7beab@rivosinc.com>
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
 Jann Horn <jannh@google.com>, Conor Dooley <conor+dt@kernel.org>, 
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>, Benno Lossin <lossin@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 alistair.francis@wdc.com, richard.henderson@linaro.org, jim.shu@sifive.com, 
 andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com, 
 atishp@rivosinc.com, evan@rivosinc.com, cleger@rivosinc.com, 
 alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org, 
 rick.p.edgecombe@intel.com, rust-for-linux@vger.kernel.org, 
 Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.13.0

Updating __show_regs to print captured shadow stack pointer as well.
On tasks where shadow stack is disabled, it'll simply print 0.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
---
 arch/riscv/kernel/process.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index 91db51413fab..a88b06ad2f9a 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -93,8 +93,8 @@ void __show_regs(struct pt_regs *regs)
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
2.43.0


