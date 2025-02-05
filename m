Return-Path: <devicetree+bounces-143090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08503A280D5
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 02:24:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C2C4C7A322B
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 01:23:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16FA622A7F5;
	Wed,  5 Feb 2025 01:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="j1rs/SHg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5252F228360
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 01:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738718530; cv=none; b=Po4cDVYAMEIJNVimrLskjvQOOrJSbpY2KBcp4O9fvNB3YfX0q3TwrHjR5W6xj1R3oJAz36HAUbpg3bBi0FJwcFpVJDIao/4a9sa65SBx0593fSdo463QpYgO/w1lAEx/0Y7nTTH6WZGFc1sAsx0cAU5G2NuvS2KM+UfdhcBouaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738718530; c=relaxed/simple;
	bh=VGYxjWQw4QYGSfT3AnAkedt5HRuw2tlx5dJCnKUawWM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C9SwcQ8WbVahkzQ4M1ANYysWGsqHAj8T0ivXeicQraek61zYQjwON4RYI7wxjfuHcB7Xj5wQC+AB6y6ej2nzcw37/9WKXjjaM1KwK1v93FxT6P/YP1qnJkoz5qBf/am3ZJLPbxL2g+kUZrVSEJfACGi+IXOLcpt46oXlqt+T/U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=j1rs/SHg; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2f9d17ac130so1421675a91.3
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 17:22:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738718527; x=1739323327; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bi056oDr44X6mEA5ptOBWamFE29btTVHHp5F60vYQ4s=;
        b=j1rs/SHg28XiLfRMfuRru09SdeL6lTzWOIGLPwJy4RmpTQ8id/T0uwXZlfEAJXZlC5
         RTFQf7ZqPPq8QDR00+rjd6Tk6IgLg3sEmV9xjbVdjH6jzbyPDMdvSqfOkDF+M36egZxm
         wh8xp+h2TwRM8zV8UN4yMU/iD8QqJPMcj67+YQvHQUh7I1b3BUHZv1H3buBnU3sm5CUy
         8Xh+aX3bSolOQNuCWenMsCqMdGjwf5MYf9zhnnN1N/ZfKDSZ0TZPSU0VVOrEQVh9udRi
         YWT/X12LwaNNmU4/RMxCmelO9keEqqvMbsKI+AxFx5ilEiq2s+ODoCcjojxXZqIUi+LZ
         /scw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738718527; x=1739323327;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bi056oDr44X6mEA5ptOBWamFE29btTVHHp5F60vYQ4s=;
        b=HLUFQxD1y2CRujIsS1SyF6dtby8jQjIpok+Wv6hdRw/S8QNn9U2rAbGGf1oAIpGHPT
         hKixmP6MJC3jcYIrZN/hPfPxlR+LnERYJqjraZcymCI2ndWEfSwBO+2KTr9UagFz1kcr
         6kXtQq+gCUJUw1Djq7IMAQPQbBcEURbmunsDGYHsXDAUV6zXRqC217QbxE3cc8wQ8N62
         sRHcUEvHFMlCROF4Yr+NmmPVBK0b6TW0YAtTEHJ6/8tyZIhSl3445gQN+dpdVMNM+Trr
         ynXD0BlLbBUHj7zfxTOkV1q1/e0HYeZiE1F9t88vZL/dnVKx23UJ/y6NUAwVkLSxT6yk
         BllQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUUPHXW1lcY0fPa9Y+Jwp5tPdiLTu8XawKju+xIf8zHlJDLMWhpNEJINQ8P/smFWQfu7RT4G+A/q9q@vger.kernel.org
X-Gm-Message-State: AOJu0YzjTLLoeaUM4RPBwPf/Uwcq9Og3mP2x5oBZfa4nfRYlyok6hGgC
	HjLJMlGcOfxPP7JsORiH9aSlTo4kruPcWQj7yKjzGkdTut+UjxfkQPdeYy/54h0=
X-Gm-Gg: ASbGncsunnk3ykqaUxYa2Qg9HKXVwrYf4+V9NStj0CccPDbR4SpUx/9S9BdQZJoGefB
	xrH6J0WbD1gTtCFtbbo7JxS9Eq9ykuycJjl1NmTppnBfaC1HYR7DYSE6B2ttCevI6QdkG6viDqJ
	4Kcmu2qvfJPC3J69yGUMXRAEfI5uEKdY71TsEczK2IundFnEjgPKz2zq+wfaQGaz0zVAooRU6AC
	YRc13R62bBVJUKFSn1Z8/Et5SVvkRVJc251pNjEnv6GPZ5QUGOPqWeq4AZ/QIVqWuqrB3mE1ffa
	OPFg9QP1NGFSuDP7PVMEGhrgiQ==
X-Google-Smtp-Source: AGHT+IGqNdkqdj5d5A5aA6gKpwq89EtcxR1nZ3Ul1+SB6k4syDnXtWKiLDwMtPZuQ0/gHb49XAPbWg==
X-Received: by 2002:a05:6a00:1d88:b0:72f:d7ce:4ff8 with SMTP id d2e1a72fcca58-7303520d315mr1572110b3a.22.1738718527421;
        Tue, 04 Feb 2025 17:22:07 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72fe69cec0fsm11457202b3a.137.2025.02.04.17.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2025 17:22:07 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Tue, 04 Feb 2025 17:21:54 -0800
Subject: [PATCH v9 07/26] riscv mm: manufacture shadow stack pte
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250204-v5_user_cfi_series-v9-7-b37a49c5205c@rivosinc.com>
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
 rick.p.edgecombe@intel.com, Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.14.0

This patch implements creating shadow stack pte (on riscv). Creating
shadow stack PTE on riscv means that clearing RWX and then setting W=1.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
---
 arch/riscv/include/asm/pgtable.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 8c528cd7347a..ede43185ffdf 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -421,6 +421,11 @@ static inline pte_t pte_mkwrite_novma(pte_t pte)
 	return __pte(pte_val(pte) | _PAGE_WRITE);
 }
 
+static inline pte_t pte_mkwrite_shstk(pte_t pte)
+{
+	return __pte((pte_val(pte) & ~(_PAGE_LEAF)) | _PAGE_WRITE);
+}
+
 /* static inline pte_t pte_mkexec(pte_t pte) */
 
 static inline pte_t pte_mkdirty(pte_t pte)
@@ -749,6 +754,11 @@ static inline pmd_t pmd_mkwrite_novma(pmd_t pmd)
 	return pte_pmd(pte_mkwrite_novma(pmd_pte(pmd)));
 }
 
+static inline pmd_t pmd_mkwrite_shstk(pmd_t pte)
+{
+	return __pmd((pmd_val(pte) & ~(_PAGE_LEAF)) | _PAGE_WRITE);
+}
+
 static inline pmd_t pmd_wrprotect(pmd_t pmd)
 {
 	return pte_pmd(pte_wrprotect(pmd_pte(pmd)));

-- 
2.34.1


