Return-Path: <devicetree+bounces-157692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AAFA61EA1
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 22:41:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FCEC8850BA
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 21:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 572BC207DFD;
	Fri, 14 Mar 2025 21:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="v/bziKK6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D09207A02
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 21:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741988388; cv=none; b=EtNutNgufgjhkUX9PX6LBEbWfQ/SQPjzPJZ1ZqxHr32dTObFp8w/XitJS2HFTR8SDVocRQJ1Bk+TceNyNxpj9/PpcRHSTj2kXkDbubDk5S1jP6UId9aYvJknqXxroqpDqOk8GCVl+yp21HQPHeKkthJHUwgQEOE+eo4Tg2Yf8NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741988388; c=relaxed/simple;
	bh=2B/GE9it92ewDokZFJjK3sqtDE6HU7RyqbRv4C+of+k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bRuHbZMM6bFk4quwzL9R7dUe2dxbhZfXXVX2dInt/WG7gUmu3lFq44cRAP6oCh01jEK581XrGdyZtnkoMV5v+psKyKV5kJaOfwaH/QRZE4jCdBBPEwFYC76xqrEcPX6nRcdIGSn96uEjzmHOGSDJ/bAhosrS7/ZKay8R+TxCn2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=v/bziKK6; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2254e0b4b79so65807425ad.2
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 14:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1741988385; x=1742593185; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J0cdClzbcf4jwWk6NNoAER7Uol3lcFHrvU6ecxcolCg=;
        b=v/bziKK6mGTKj7QYREhZJCynnp3FqXtr+GsmaBAy/W66GKQgh+ZS+Bxr5ddk6ZbwYN
         BKSZ2WcX3FkpKbHXw483549BrYTGhzhkHdEQjFRxCLPrC3qBtqIYKqrZdEbrDaB/ChPI
         kjfS3FQybU+Gwywbb4vCGsY80P+8USZWPkIWqy+xAOXGnKXBtFo6DaJlqvd75j6o4JDA
         CUCudVxTZd9nMDhhprn25Oarga2EHXnGRjnutjZgZo6MPf+zb2Fi6cN0JiFajodBdgGQ
         UxrFt9uDfOyTxlJ/t+aScmnUtzAx0VhQohHVyKlO4p1paunf3LNFkHYs4jK/wqgBTroD
         bdPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741988385; x=1742593185;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J0cdClzbcf4jwWk6NNoAER7Uol3lcFHrvU6ecxcolCg=;
        b=YvzwoKZx5iv90wyCup2lJIT5E4/c95jjonXqb3596WjgqMYGZEj6ZHPMpId2eU1STI
         2yOb32zzgk3FVODKtPIvXM1SlHa46mqbpsXTfXYX8O7sh6T14JzZXlYLqCPh5Hz08DRg
         dL7twnqLEbBU8eCac9Dj0pe74S84YwXXeuZAeZ23fU4XxSnxKfIdhMbvi6/1WfnJ9M7t
         I6PDYZuPn4A9saEOBVt+qwJ1F8h7cRGILQ9QKwyBD9Ax80jPlEIceBemnHosfLy6c0rY
         F82JPuKw3KL858CFOyAD6Fi4HV43ROQz1E/Qr5QctexXMRDsoMRnBXND1bj7clQJfjSy
         mAZA==
X-Forwarded-Encrypted: i=1; AJvYcCWhoFHk0O6bszb96cfGuJmRjWANDg0+BQwBf+Oqu/TUQkSSE/qpSZjwnLUYtM1bgBc+rSMzOcAm7YfS@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2uRqc99MpC5GWbD9VWj8ZDjs8k/cWxVn45NkZz0RlZ3Aa41cc
	n4YBwyeu0yj2pSu/1+N38tck/05xGNunWLmOmwpnqk7DUqEVhPNP9Ws5O6F2PIM=
X-Gm-Gg: ASbGncuxO7GzIexdaahcdGMhVvW+sBMdeRwFoxRpdMEnL7PEOUyLPBL2zlWDiJQHslY
	4hKMQIqmgfUQQdmL5W3yp18ggS0szt3YeDBBXerJ647Kni+EdzvLD7IgDQN+ZU8YNrlGVq4PdE9
	/5gFzTmS0Gnddu7288IzSAmNQVNuOySqe6qejVL4RBCaTnMkhSYrmpl6+yqdE3ZTLmvK+9mV01x
	H/lHo/rhlDF8AwvSrge8L070aRk0vRLtGiXLZACnYsLJORGYGU3jQSUGHPbo6dK92Dp7MLkK6q3
	/oAwjNLIjY0xtVXvNfHdeverzAt1xT+Mx7vldsgDqsIVK3hShE5b+8ZxDitHkHDmCw==
X-Google-Smtp-Source: AGHT+IFZaFTcFkxKWE6fnM6U3z3NBo+SecOR6nfScdkNYaVzLCXCW0qb6at3qhL4+W3vIc9ENh5Ndg==
X-Received: by 2002:a17:902:dad1:b0:21b:b3c9:38ff with SMTP id d9443c01a7336-225e0aee9ffmr52390865ad.37.1741988385430;
        Fri, 14 Mar 2025 14:39:45 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c68a6e09sm33368855ad.55.2025.03.14.14.39.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 14:39:45 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Fri, 14 Mar 2025 14:39:26 -0700
Subject: [PATCH v12 07/28] riscv mm: manufacture shadow stack pte
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250314-v5_user_cfi_series-v12-7-e51202b53138@rivosinc.com>
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
 rick.p.edgecombe@intel.com, Zong Li <zong.li@sifive.com>, 
 Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.14.0

This patch implements creating shadow stack pte (on riscv). Creating
shadow stack PTE on riscv means that clearing RWX and then setting W=1.

Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Reviewed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
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


