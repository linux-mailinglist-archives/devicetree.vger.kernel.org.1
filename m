Return-Path: <devicetree+bounces-79874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6463291730A
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 23:11:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D6D9D1F231A4
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 21:11:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6077B180A6B;
	Tue, 25 Jun 2024 21:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="IfpPBn7G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75F317F367
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 21:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719349788; cv=none; b=jeayVtsbYqe41chlQzuiVy8D/C1TTqW00X76cZlp4coT+OMwziP3EXt6VlkPtuZSj48V72YpSQBElPZOKp7X5GtYvSAv30SZkGMuTLyJIR1Hrth0UrgX3Y+4tZdkNr4KL0b74qgmOCGHLkHRkbis+j8pa853mQv+iFXuel+KeRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719349788; c=relaxed/simple;
	bh=LkgYYNuLS4U34v7gIANEl6UTbksQAjDkLyeECR9ZdVw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fZEc9oIbCDO3vcf96mypR4rYeWlxCfhk6M4//78fsyC1Uv/isD5Y6479hoP0mobHMseiyXcYSoXS/nRmo9BhAWOpcBV32cC3ITDD05pgw6LgE/p1M8AZP78DmCuuYqF/8tSSQ1r5Xjne+8Cc/CLf6277UZbiQxEAbzN54e3hbEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=IfpPBn7G; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1fa0f143b85so26524775ad.3
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 14:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1719349786; x=1719954586; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TcVNJ1c0k9nGflpMj97RQ79v8JL+NQUn2VhiWagHpuA=;
        b=IfpPBn7GETiS/XtqY0wS48u81e7iiccXvwaoU9sq3LwsWHKq8Bq1kv6izeqah8DY9n
         UxFFProXUEIqTGvLkNW9Epn7f1Og0jlM2fL40A/rsVLCf7kwD9Az5DBXb1UfaA18W9HM
         nfUZv2FOhDEnANOld0yVMJBQZLXVFRPxsyFUfQTx0X/oOlsAXOkuSPQcxfzR9yhz5Usp
         RimkohSEiZtI2Kg7sQCa9nrocOWwheu/80faI5SPu7uYXuDwVd2mCRa0IZJMVgAXXVag
         HcaGtu7fo04IYBJB3ADGtnJRB3Sdnm1Ez8SCHi+R5jcEGjVyTtYDL8cU4WVjaU66SFoS
         YUEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719349786; x=1719954586;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TcVNJ1c0k9nGflpMj97RQ79v8JL+NQUn2VhiWagHpuA=;
        b=QBt3SIGaTV1CyxAltBQpHjSiems60wREoy7JXGOSW3nCNzG6XuVJnSRWHMCzco3Pgl
         bOT7C+ASG82oRx9QZgZtAwMOzQDMJWss5/Dzue/C1iiKooV7eaxLEZI9pe8wP8qDHA3I
         07fmNi5xtFENlYqb9li+ufRAQj7r7W+jQg6XJL72/n90zZfcxuB12meAI4+URN7iCnIy
         DDnVtRiUX6U1kXaJaC044RgHKVQw97pdMyj5CzaOe0gcGGBljjuTgEm/FlcKlKS1coR/
         8rXkRUX3XaxWiRTbVT4FHnLekYEVgyctB5cj2mSPi4b7zvM0JubsKGz3ZedViUlDi/Vk
         9xBQ==
X-Gm-Message-State: AOJu0Yy3G1mtLfSgNBttosG1SGlF3Cg93+sG6Zoz/vpvndkG/LRg4i+O
	4C36z6JqWaK4RNEaeHA2EZwJCs6Z2sEuiFl8Gcg5t0TwXFv1EbccoxtAzGQCeBI=
X-Google-Smtp-Source: AGHT+IEkxpAQRQEVDc6TW5GfsE+EzweemTWIRBHDNXOU7XbbycmCakpPne7BxVO3PsXnE1O0ndqnMA==
X-Received: by 2002:a17:903:2291:b0:1f8:5a64:b466 with SMTP id d9443c01a7336-1fa23eceaedmr107096065ad.21.1719349786391;
        Tue, 25 Jun 2024 14:09:46 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9eb328f57sm85873455ad.110.2024.06.25.14.09.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 14:09:46 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org,
	Anup Patel <anup@brainfault.org>,
	Conor Dooley <conor@kernel.org>,
	kasan-dev@googlegroups.com,
	Atish Patra <atishp@atishpatra.org>,
	Evgenii Stepanov <eugenis@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v2 06/10] riscv: Allow ptrace control of the tagged address ABI
Date: Tue, 25 Jun 2024 14:09:17 -0700
Message-ID: <20240625210933.1620802-7-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240625210933.1620802-1-samuel.holland@sifive.com>
References: <20240625210933.1620802-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This allows a tracer to control the ABI of the tracee, as on arm64.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

(no changes since v1)

 arch/riscv/kernel/ptrace.c | 42 ++++++++++++++++++++++++++++++++++++++
 include/uapi/linux/elf.h   |  1 +
 2 files changed, 43 insertions(+)

diff --git a/arch/riscv/kernel/ptrace.c b/arch/riscv/kernel/ptrace.c
index 92731ff8c79a..f8ceecc562fe 100644
--- a/arch/riscv/kernel/ptrace.c
+++ b/arch/riscv/kernel/ptrace.c
@@ -28,6 +28,9 @@ enum riscv_regset {
 #ifdef CONFIG_RISCV_ISA_V
 	REGSET_V,
 #endif
+#ifdef CONFIG_RISCV_ISA_POINTER_MASKING
+	REGSET_TAGGED_ADDR_CTRL,
+#endif
 };
 
 static int riscv_gpr_get(struct task_struct *target,
@@ -152,6 +155,35 @@ static int riscv_vr_set(struct task_struct *target,
 }
 #endif
 
+#ifdef CONFIG_RISCV_ISA_POINTER_MASKING
+static int tagged_addr_ctrl_get(struct task_struct *target,
+				const struct user_regset *regset,
+				struct membuf to)
+{
+	long ctrl = get_tagged_addr_ctrl(target);
+
+	if (IS_ERR_VALUE(ctrl))
+		return ctrl;
+
+	return membuf_write(&to, &ctrl, sizeof(ctrl));
+}
+
+static int tagged_addr_ctrl_set(struct task_struct *target,
+				const struct user_regset *regset,
+				unsigned int pos, unsigned int count,
+				const void *kbuf, const void __user *ubuf)
+{
+	int ret;
+	long ctrl;
+
+	ret = user_regset_copyin(&pos, &count, &kbuf, &ubuf, &ctrl, 0, -1);
+	if (ret)
+		return ret;
+
+	return set_tagged_addr_ctrl(target, ctrl);
+}
+#endif
+
 static const struct user_regset riscv_user_regset[] = {
 	[REGSET_X] = {
 		.core_note_type = NT_PRSTATUS,
@@ -182,6 +214,16 @@ static const struct user_regset riscv_user_regset[] = {
 		.set = riscv_vr_set,
 	},
 #endif
+#ifdef CONFIG_RISCV_ISA_POINTER_MASKING
+	[REGSET_TAGGED_ADDR_CTRL] = {
+		.core_note_type = NT_RISCV_TAGGED_ADDR_CTRL,
+		.n = 1,
+		.size = sizeof(long),
+		.align = sizeof(long),
+		.regset_get = tagged_addr_ctrl_get,
+		.set = tagged_addr_ctrl_set,
+	},
+#endif
 };
 
 static const struct user_regset_view riscv_user_native_view = {
diff --git a/include/uapi/linux/elf.h b/include/uapi/linux/elf.h
index b54b313bcf07..9a32532d7264 100644
--- a/include/uapi/linux/elf.h
+++ b/include/uapi/linux/elf.h
@@ -448,6 +448,7 @@ typedef struct elf64_shdr {
 #define NT_MIPS_MSA	0x802		/* MIPS SIMD registers */
 #define NT_RISCV_CSR	0x900		/* RISC-V Control and Status Registers */
 #define NT_RISCV_VECTOR	0x901		/* RISC-V vector registers */
+#define NT_RISCV_TAGGED_ADDR_CTRL 0x902	/* RISC-V tagged address control (prctl()) */
 #define NT_LOONGARCH_CPUCFG	0xa00	/* LoongArch CPU config registers */
 #define NT_LOONGARCH_CSR	0xa01	/* LoongArch control and status registers */
 #define NT_LOONGARCH_LSX	0xa02	/* LoongArch Loongson SIMD Extension registers */
-- 
2.44.1


