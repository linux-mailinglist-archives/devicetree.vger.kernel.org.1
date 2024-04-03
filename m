Return-Path: <devicetree+bounces-56082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BD6897C3B
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 01:43:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CDB70B28B97
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 23:43:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18581158202;
	Wed,  3 Apr 2024 23:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="D8F7tRlp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610181581F2
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 23:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712187711; cv=none; b=uTpSvkbFUqJAgllIuGuvhcY6ZiurrrzGTQOzv9QGy6bORbuYO8HKoj5TzGc2Cl/sLdhi53Frv6A/3LKbVHu4bdpXthBy/LUg/yMbOlxAj8fas84S0CDzM2ktN0/IiwWcgpYQgBQey+0Bgz26FoFWF3xTTiU++xyWEDA1gM9LFP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712187711; c=relaxed/simple;
	bh=envhT/ZgCfZHbe0/U/agnuk/ji6w2afgBPMFdWnVyI0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p3EOkdVmODILcm5LG6MibS/7hXqCw7JCLQO9M8K0jRMwMqWNeeUzvdb0Ot9wjAicTS63WChSwvcKsOt8QyZJ5M9DMVNJAyT7kZ7GrsQ5MxjpR4PhAHl5QMdlVD0Zu6tTRvjq0fzJWSMJ2Yb/iT+DtChSclGLh2THWcwxupP2A3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=D8F7tRlp; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1e0bec01232so3326935ad.3
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 16:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712187709; x=1712792509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rwd1Rqhx7Lp5GXVDXChDZGcUyS7lp4m5P80feoXs3uc=;
        b=D8F7tRlp88Y6VKhdwLxWcijWugAfAGYunLTFM/yFzOs9pEFWG6d8yMlLbno3DA5Ila
         TewNKvtxXiY2YZjfkOJLODjF0EloUww/0CmKXbjyU6P7LBdld11vKYZUg3oXLzsOAxgF
         edWo1S8nT7b4rrhPds6kU4fK5oUPMMWdPNLdv36gLVoH2/jSxxvOoSr+PMWGHrU9letV
         O7Qbmp9RoaZO9B9uP7l0wAFtu6CcwXQpvkPTzyLQbX0vD2X8x24ojGkkEfViMIf5JXbX
         noNUh03yiiGql1G2scm6VyKan+whEE5oHXUt/tu9/1aTKAc9DyMXjZG+Zoo4wwfQqehR
         p0vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712187709; x=1712792509;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rwd1Rqhx7Lp5GXVDXChDZGcUyS7lp4m5P80feoXs3uc=;
        b=ZBaYGEAh2YvZHOM/BtYTlf+qYKaHDJMm0qY5zJ9/hp32OrUwATFb3x5yn83biCT0gY
         Id4vRzBiCCD9BlCeJyh7gxlU1kzJrWGCI/9ik56EJ+PvQvuNnGMTpMJQsd6NSNFxJVET
         zKo9SOwEK6R86rTrtROUBw4xaCGNyMufwDNHWQrBLpSb+ZMInDKhE9qX6Zl6CVbzpSyE
         7xJ3cBtd/EacjJ72S6bCs06Jr6I+ul6d16RouUkOv8gd47g3FiOO8zJVREHJbRcvrIPs
         Z3GdhsaT5MamZb5nb7dGeX/nJpfZS17xXK+v/AbNN0FPL7do9jJ5Hz3/3O3oJJzxcR3W
         /+Gg==
X-Forwarded-Encrypted: i=1; AJvYcCW8T8K8PfclPPFSswINvlWMFroAuIYa6P4trjfkDHlw6U2ezyy3bSqut8b7kHdPumNB5c0w6/WvWop0bFOGzq6hKa2Ltj5TilDFMw==
X-Gm-Message-State: AOJu0YwxEfbIPZk2tlsd71tLX6bGyHhRi8SixKppk0Jhk28QRlwOo477
	e0Mr0OxAXmMZC3nKr8x1suOnRcNtuOwJFhKD4pnbL6vS7cW8F8RZcqgbT4VRNKc=
X-Google-Smtp-Source: AGHT+IF22hy01NLtT1jUYsdu0c7KIFU3cgj1Pn2y4vxU+c5imdCSWG28M/uPDSgI7K6xqeeQiw5lvA==
X-Received: by 2002:a17:902:dacd:b0:1de:f29a:36ac with SMTP id q13-20020a170902dacd00b001def29a36acmr758881plx.68.1712187708628;
        Wed, 03 Apr 2024 16:41:48 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id b18-20020a170902d51200b001deeac592absm13899117plg.180.2024.04.03.16.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 16:41:48 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
To: paul.walmsley@sifive.com,
	rick.p.edgecombe@intel.com,
	broonie@kernel.org,
	Szabolcs.Nagy@arm.com,
	kito.cheng@sifive.com,
	keescook@chromium.org,
	ajones@ventanamicro.com,
	conor.dooley@microchip.com,
	cleger@rivosinc.com,
	atishp@atishpatra.org,
	alex@ghiti.fr,
	bjorn@rivosinc.com,
	alexghiti@rivosinc.com,
	samuel.holland@sifive.com,
	conor@kernel.org
Cc: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mm@kvack.org,
	linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	corbet@lwn.net,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	oleg@redhat.com,
	akpm@linux-foundation.org,
	arnd@arndb.de,
	ebiederm@xmission.com,
	Liam.Howlett@oracle.com,
	vbabka@suse.cz,
	lstoakes@gmail.com,
	shuah@kernel.org,
	brauner@kernel.org,
	debug@rivosinc.com,
	andy.chiu@sifive.com,
	jerry.shih@sifive.com,
	hankuan.chen@sifive.com,
	greentime.hu@sifive.com,
	evan@rivosinc.com,
	xiao.w.wang@intel.com,
	charlie@rivosinc.com,
	apatel@ventanamicro.com,
	mchitale@ventanamicro.com,
	dbarboza@ventanamicro.com,
	sameo@rivosinc.com,
	shikemeng@huaweicloud.com,
	willy@infradead.org,
	vincent.chen@sifive.com,
	guoren@kernel.org,
	samitolvanen@google.com,
	songshuaishuai@tinylab.org,
	gerg@kernel.org,
	heiko@sntech.de,
	bhe@redhat.com,
	jeeheng.sia@starfivetech.com,
	cyy@cyyself.name,
	maskray@google.com,
	ancientmodern4@gmail.com,
	mathis.salmen@matsal.de,
	cuiyunhui@bytedance.com,
	bgray@linux.ibm.com,
	mpe@ellerman.id.au,
	baruch@tkos.co.il,
	alx@kernel.org,
	david@redhat.com,
	catalin.marinas@arm.com,
	revest@chromium.org,
	josh@joshtriplett.org,
	shr@devkernel.io,
	deller@gmx.de,
	omosnace@redhat.com,
	ojeda@kernel.org,
	jhubbard@nvidia.com
Subject: [PATCH v3 07/29] riscv: usercfi state for task and save/restore of CSR_SSP on trap entry/exit
Date: Wed,  3 Apr 2024 16:34:55 -0700
Message-ID: <20240403234054.2020347-8-debug@rivosinc.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240403234054.2020347-1-debug@rivosinc.com>
References: <20240403234054.2020347-1-debug@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Carves out space in arch specific thread struct for cfi status and shadow
stack in usermode on riscv.

This patch does following
- defines a new structure cfi_status with status bit for cfi feature
- defines shadow stack pointer, base and size in cfi_status structure
- defines offsets to new member fields in thread in asm-offsets.c
- Saves and restore shadow stack pointer on trap entry (U --> S) and exit
  (S --> U)

Shadow stack save/restore is gated on feature availiblity and implemented
using alternative. CSR can be context switched in `switch_to` as well but
soon as kernel shadow stack support gets rolled in, shadow stack pointer
will need to be switched at trap entry/exit point (much like `sp`). It can
be argued that kernel using shadow stack deployment scenario may not be as
prevalant as user mode using this feature. But even if there is some
minimal deployment of kernel shadow stack, that means that it needs to be
supported. And thus save/restore of shadow stack pointer in entry.S instead
of in `switch_to.h`.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/include/asm/processor.h   |  1 +
 arch/riscv/include/asm/thread_info.h |  3 +++
 arch/riscv/include/asm/usercfi.h     | 24 ++++++++++++++++++++++++
 arch/riscv/kernel/asm-offsets.c      |  4 ++++
 arch/riscv/kernel/entry.S            | 26 ++++++++++++++++++++++++++
 5 files changed, 58 insertions(+)
 create mode 100644 arch/riscv/include/asm/usercfi.h

diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index 6c5b3d928b12..f8decf357804 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -14,6 +14,7 @@
 
 #include <asm/ptrace.h>
 #include <asm/hwcap.h>
+#include <asm/usercfi.h>
 
 #ifdef CONFIG_64BIT
 #define DEFAULT_MAP_WINDOW	(UL(1) << (MMAP_VA_BITS - 1))
diff --git a/arch/riscv/include/asm/thread_info.h b/arch/riscv/include/asm/thread_info.h
index a503bdc2f6dd..f1dee307806e 100644
--- a/arch/riscv/include/asm/thread_info.h
+++ b/arch/riscv/include/asm/thread_info.h
@@ -57,6 +57,9 @@ struct thread_info {
 	int			cpu;
 	unsigned long		syscall_work;	/* SYSCALL_WORK_ flags */
 	unsigned long envcfg;
+#ifdef CONFIG_RISCV_USER_CFI
+	struct cfi_status       user_cfi_state;
+#endif
 #ifdef CONFIG_SHADOW_CALL_STACK
 	void			*scs_base;
 	void			*scs_sp;
diff --git a/arch/riscv/include/asm/usercfi.h b/arch/riscv/include/asm/usercfi.h
new file mode 100644
index 000000000000..4fa201b4fc4e
--- /dev/null
+++ b/arch/riscv/include/asm/usercfi.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0
+ * Copyright (C) 2024 Rivos, Inc.
+ * Deepak Gupta <debug@rivosinc.com>
+ */
+#ifndef _ASM_RISCV_USERCFI_H
+#define _ASM_RISCV_USERCFI_H
+
+#ifndef __ASSEMBLY__
+#include <linux/types.h>
+
+#ifdef CONFIG_RISCV_USER_CFI
+struct cfi_status {
+	unsigned long ubcfi_en : 1; /* Enable for backward cfi. */
+	unsigned long rsvd : ((sizeof(unsigned long)*8) - 1);
+	unsigned long user_shdw_stk; /* Current user shadow stack pointer */
+	unsigned long shdw_stk_base; /* Base address of shadow stack */
+	unsigned long shdw_stk_size; /* size of shadow stack */
+};
+
+#endif /* CONFIG_RISCV_USER_CFI */
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* _ASM_RISCV_USERCFI_H */
diff --git a/arch/riscv/kernel/asm-offsets.c b/arch/riscv/kernel/asm-offsets.c
index a03129f40c46..5c5ea015c776 100644
--- a/arch/riscv/kernel/asm-offsets.c
+++ b/arch/riscv/kernel/asm-offsets.c
@@ -44,6 +44,10 @@ void asm_offsets(void)
 #endif
 
 	OFFSET(TASK_TI_CPU_NUM, task_struct, thread_info.cpu);
+#ifdef CONFIG_RISCV_USER_CFI
+	OFFSET(TASK_TI_CFI_STATUS, task_struct, thread_info.user_cfi_state);
+	OFFSET(TASK_TI_USER_SSP, task_struct, thread_info.user_cfi_state.user_shdw_stk);
+#endif
 	OFFSET(TASK_THREAD_F0,  task_struct, thread.fstate.f[0]);
 	OFFSET(TASK_THREAD_F1,  task_struct, thread.fstate.f[1]);
 	OFFSET(TASK_THREAD_F2,  task_struct, thread.fstate.f[2]);
diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index 9d1a305d5508..7245a0ea25c1 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -60,6 +60,20 @@ SYM_CODE_START(handle_exception)
 
 	REG_L s0, TASK_TI_USER_SP(tp)
 	csrrc s1, CSR_STATUS, t0
+	/*
+	 * If previous mode was U, capture shadow stack pointer and save it away
+	 * Zero CSR_SSP at the same time for sanitization.
+	 */
+	ALTERNATIVE("nop; nop; nop; nop",
+				__stringify(			\
+				andi s2, s1, SR_SPP;	\
+				bnez s2, skip_ssp_save;	\
+				csrrw s2, CSR_SSP, x0;	\
+				REG_S s2, TASK_TI_USER_SSP(tp); \
+				skip_ssp_save:),
+				0,
+				RISCV_ISA_EXT_ZICFISS,
+				CONFIG_RISCV_USER_CFI)
 	csrr s2, CSR_EPC
 	csrr s3, CSR_TVAL
 	csrr s4, CSR_CAUSE
@@ -141,6 +155,18 @@ SYM_CODE_START_NOALIGN(ret_from_exception)
 	 * structures again.
 	 */
 	csrw CSR_SCRATCH, tp
+
+	/*
+	 * Going back to U mode, restore shadow stack pointer
+	 */
+	ALTERNATIVE("nop; nop",
+				__stringify(					\
+				REG_L s3, TASK_TI_USER_SSP(tp); \
+				csrw CSR_SSP, s3),
+				0,
+				RISCV_ISA_EXT_ZICFISS,
+				CONFIG_RISCV_USER_CFI)
+
 1:
 #ifdef CONFIG_RISCV_ISA_V_PREEMPTIVE
 	move a0, sp
-- 
2.43.2


