Return-Path: <devicetree+bounces-144900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BC8A2FA68
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 21:33:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B7DE1886CD0
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 20:33:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F049725EF8C;
	Mon, 10 Feb 2025 20:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="25DR1lro"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD7525D553
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 20:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739219246; cv=none; b=TEBxpQ3RTgl4cIAEkwjWLrUdVtDY0VopzPiE+djuYqk5hS+jHPN9KFbSVLgHrmNNVcthVVOGkG99l6441dm8fV1ns4GJEyBz8lQMEb8prKKWmi2GHmAh1tuDCkc4itIpoZLRfzCZwrRtv3LMpHnNj27LOFrM8yPEMyfEuf7aTf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739219246; c=relaxed/simple;
	bh=UvMauEZ7ujgiT53rhoVNtF8wKatfWBS5dd1E01vsJYA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MaTcSjhKFF/4kQINyL0+BKzB0Es+JNCeMl1J/rkZY2KFh9Dh+LnKgmQHcjyppplp0dOiBCdqP5UzqGnHBSyGfrlwy2yKiQtk3cm1XLCBaL3fL7r7FJxZwXKl5TiPXzBXDrbM7OIiGecoatiuKFlPWNqojsmrY0bcKFvJEhtKQgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=25DR1lro; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-21f49837d36so53935415ad.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 12:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1739219244; x=1739824044; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hU6IAlGSwKWKw5iWDrFBqBdwaJZ69/+Cs7+/DXu3do8=;
        b=25DR1lroWrg7UsNBwD70rQeyXIkgutU9wLu8AGpWro8LJ3L02pgtiUxGDmrzqVcCW8
         yQ88b7ShNXHQ5oV90s2rELsqhQOR05BCXy/6ZETRkEoIbBx5bGhP7w94jg/3jUW/aNs4
         5GwnYwHHOFmqV6WMEHBrClaP7sQM5Lfuql2pFc04EsnVXurlFe3zWf4o0wAT+U9alHBR
         tlnlPKDnm/Zu0QGu01rLI/xJUhmU5ox+kiDw6J0TO6dQnLxv7NDKg0srDP/l/b5QPlQS
         b3CQzJsNAXIvWq6aGBoqZ92CcjkJaCvO6AlZthRa+qzzRm237x/JPO0Hkdry/AIetAye
         8DRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739219244; x=1739824044;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hU6IAlGSwKWKw5iWDrFBqBdwaJZ69/+Cs7+/DXu3do8=;
        b=ALSgTciPrQAVKtEN/5xdVDShogHBkf265qM/0g/EXT+7uWzXhwzDg/9ZWM8VR4PwKu
         xlFaeYhm4KtJ7P6UVpW9au9FDlE38NadoX7M+2lO8Ef3KemXUJilssqGlVvmwZsP0BNc
         Bp8N4/l2IvgzYtBKkO95WQe3MIPJ93dhjSzd9wIvR6bhK3Iu3/Rd/E39UVnkBRmFjxAE
         WmDFnm44VJCOPrBjm4Xjt5DEqB/ORpnJY17BrotgomzGubG4Ustpt51MXyT2T5cJ2ckh
         Gu3c+vxx44Xn2xGMF1i0vSy5PZ/EaAEcI2aHx4L/6FzM120ZrHXj9WsjZC2aSulPUaIg
         lZ4w==
X-Forwarded-Encrypted: i=1; AJvYcCXKISu9AyK+w/sU0Sojs5HiOc7NNe0jiQCtvMvetSpIxAIju7KrDYf5vY5mNm4A8r3QNuPYa2vvqsHq@vger.kernel.org
X-Gm-Message-State: AOJu0YyxV6BGsDEejv89K5aJlI4HthAAzF9RYgeZHOkAIOTg6QbpzAyU
	SZJYQouYfNQTbuc+9MgT3YQiAcHoTxk3ZHY8kO/vtmd9sbTbnufq6+JiSeWfWsU=
X-Gm-Gg: ASbGnct7NDGjrvtKo8G3CNp24pyS9z4JF5gteoS+oNJtpsCorDO0ot1MI8qCmagbR+V
	ukhyVnDt3NqR6Ok6laq5/4HpB4benxRodLPlQ091kMp8JSD5zWi3vIxVy1g3BckaanNNuku0Zcq
	uQYhse0+0T5QP306WtJ8SSPW2pOq26Kz2qWY7CBp85K8qoxAzS8aSzVuC1RlUrRxoy85458v4P1
	F+TPiyf3eHOUHrJ1O8BPI39rDMsa/LsIrIT9UNwBEKWlxucaTHLC7fWWeSgHi3an0uhG2NMWwW0
	gVwtRM8CixIVC5yNsH5A2E40Cw==
X-Google-Smtp-Source: AGHT+IEWx6Qroyd+owNLnhKMgXzpvCrfsJ5gLeMKvyo/Cha3hnXDj8amjvFC6tZrBWudZswu2pIc0A==
X-Received: by 2002:a17:90b:2317:b0:2ee:94d1:7a9d with SMTP id 98e67ed59e1d1-2fa243eb4e7mr19748747a91.32.1739219244559;
        Mon, 10 Feb 2025 12:27:24 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3687c187sm83711555ad.168.2025.02.10.12.27.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 12:27:24 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 10 Feb 2025 12:26:50 -0800
Subject: [PATCH v10 17/27] riscv/kernel: update __show_regs to print shadow
 stack register
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250210-v5_user_cfi_series-v10-17-163dcfa31c60@rivosinc.com>
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


