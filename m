Return-Path: <devicetree+bounces-156213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AE7A598C6
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 16:00:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6526D16E55F
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 14:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3DBD23C8A0;
	Mon, 10 Mar 2025 14:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="02fXvqYm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D9923BCF0
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 14:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741618408; cv=none; b=AMmgrMtKCypw20ZdzoirmUDDTvu4XGxZRaw72clylTNNWuHmYrrz8S8YkYbPuymqikc6sHp7BQ5YVe4iPWU1MfS/KQoJHv683ys/X2Fpa4aIa+l7kci87MlGs9KIv9l/lGNUhMqQoGs3st/9M/df4NrDgiPvjDyPqkVb8nhCaVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741618408; c=relaxed/simple;
	bh=zWvCMjEUr0fm2YGOtkO5JQMRJ3MfHFejTQpY2YYRpeI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p+63MlHfdMd30qpfdEVnwxkNKiIv4xOSdvbXMasO5t7OeQmtg9UtLsOUUY97Aq0JPlGWMt4I/zM7+lWbPWtSHnnCvUzh2F/3dMG4y4x2Lk19b7b29bRsIS8qWtjH3Wqy9Awxogf7Gfq+N0u5Z7FA6bw4Csn4JR02wg0BE3kU67w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=02fXvqYm; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-22409077c06so10348145ad.1
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 07:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1741618406; x=1742223206; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=opxHamP1ejpgUrZttGLg4zwDHWHLF3xPs1/Qb/08WRM=;
        b=02fXvqYmI7IQzrMpZK7gWQgvRJrftC9vOY2QlY/CM8V2HigjhV+w/NhLxRTeEtYott
         S2q7kSjN72yJa5Ufr7WNsgAxBQaPRxaPtmQ14/lwF1on8E1MOrns3WfNwEZCQNFrYfxl
         GX52zg5xG6UIPsdCmuXWJna4/t0SmvTqPIp2e0KDF5gTKiAT1Amm+d7ScFnLCsHzXtGI
         FEyqvUmVtYaQI/Zb7K1ksG7qzmbIOSeCsvQqszo50mYTw1QzcKG9b/fXneMLRQWsQOnq
         bg32wUkKQoBy8zsP0AAuBeuiOmbpUWRyIMYciP3/LXXmnjAuZ1ZA/9PzQt0oY9ba4Agc
         5BPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741618406; x=1742223206;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=opxHamP1ejpgUrZttGLg4zwDHWHLF3xPs1/Qb/08WRM=;
        b=SZPtlbmb2EWruHl57qA8LvfTGkLpYozURNy5JTU3icVTPyLUA6Z+p7/hpEMa+x359F
         EQGRue/OYFlxjNM/2X7x9woxfAac1ZHSQD907Ne9nvOfp3Llxzw6ZjC/a4hnQ9EaWUvn
         4cbKRwlxaNA3qqaKRf46NUWPFWk/NVkDxxeJHzMEiGIPHH6Bb+gK/G+FPaj/rA/2WRnm
         af+wxGLhlsAo1V5vpeOztYKJUv3Y8zHoKaTjt7KcB8oS60U/vn+s0GKkcI+jbzGKjLPE
         52vg/KGRL8tzQDNnS+TnAxOlzdiLDIgVZX5itMMNRvZO6lNEqaAZ0lCntWj5TnP+yHvV
         ESaw==
X-Forwarded-Encrypted: i=1; AJvYcCVaH/nFyYRsV+HK2ZZpokTHqv8kK0TUchbmS82gf3BD06dPamNleYxRHq+fgCUUkMDIKZqP8NHrbEEO@vger.kernel.org
X-Gm-Message-State: AOJu0YzPu6FZPQkXuPbZZ0YWLyuVIH9fpFeLP/vuNeXlbDic/tglXBSo
	OZY3m27adtAqGygwbg0p5IXTSwx7bDxu2CqPprsmgrJlFehYDkxvpEdKDrQjiig=
X-Gm-Gg: ASbGnctfUAII1gVVSZsgyTqcV7GnAiCdtPZbr6y2o+xU9VRkxJwfPEKeIw9TLNmFEKF
	Odx7kwefymQTMrKzu7BKW5c/he62GkVlwiX091XogwKxtyllPkNA6VlsuIRMido9dJkzwwpQl/u
	/Ox/YQhNBP7+2tELTEeOhNuOmhxWtkpt8Ll3RDG6QXhy86LEQtfQApxfnkg7nKnljD/ItdbcW3j
	phKdsE4touKaAJk9ljGrFBnSKhY/cUOZa8wCjrgz77/O6GwVZ9WSUIo6ob2+5XPqYoVNwE0u4g6
	H1yKaSlAyQsiwN8Mgbk5/ztd2PnIguTDFvVUqPr0jXUVad/EyfV1ibg=
X-Google-Smtp-Source: AGHT+IGghOp+j7sQ0Qt7sq7k8fXJkHLz3hwRxKC8iR81NfpyoYASRowQ1NRmeDSzKjKxRLkZDMtKZA==
X-Received: by 2002:a62:fb06:0:b0:736:baa0:2acd with SMTP id d2e1a72fcca58-736baa02af4mr14991022b3a.20.1741618406530;
        Mon, 10 Mar 2025 07:53:26 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-736d11d4600sm2890275b3a.116.2025.03.10.07.53.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 07:53:26 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 10 Mar 2025 07:52:44 -0700
Subject: [PATCH v11 22/27] riscv: kernel command line option to opt out of
 user cfi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250310-v5_user_cfi_series-v11-22-86b36cbfb910@rivosinc.com>
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


