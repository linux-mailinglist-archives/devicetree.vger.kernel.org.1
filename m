Return-Path: <devicetree+bounces-93537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A7E95165D
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 10:16:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BAD6B1C20A93
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 08:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7036C149C50;
	Wed, 14 Aug 2024 08:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="F4k4lXkq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE59E14900E
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 08:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723623291; cv=none; b=iWhcOrWyoOVqY2oxtO5egT2XVXFf1xHS00tZn8kRx3CVH4tTtJzFD1mppXesuEFBr14pO5np4hlcjXznveBRQctUvMrJ65bwiZcVnzDul8LXLeJFutGHC14d58R4euDOKhHnuldwT4Rx7m1vpGN5HpJUIZgU0w9RAKTJgzv8Jgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723623291; c=relaxed/simple;
	bh=Z0bb52PNqVU2ZfqlFeRvD7yJ3Iv38IwXjpqhPARo20U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dg4FKZwfBEFECpERpgS2NDu2gNFqc2kLXyeOibTpmz1agqvH9sHu+LBU7PsiNQ1/YYyw1rqu31n2zHD4olT//HE6jEbOkRtHQ6+euy+MS5VtVufPatDD6siajyy12M9IJPh/H7qf8gJ+TTevOC0raN8wu69lMNAR6ukIjQNJRsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=F4k4lXkq; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1fc692abba4so54360415ad.2
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 01:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1723623289; x=1724228089; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+2DzaTFaQhCi8x+b8lScKZdT6wqGghcdZfo+S0TqwgI=;
        b=F4k4lXkqD2q8XNrCZnx9vGkHrAm0eusV/LCXr4h4QSqfi8fqi1+MG8Gnx0UQnAH2N4
         xNjSyEHVwJdtykWNlRuVzQ1URDYOhNbpY/XTE5dOiZa9xMJoQKjL6+BPzaGaRABr7dfk
         yM6RRUggovru4/2i/h+MSsMyBW2fUQ/lf/4g78UDSYq9DBJjBYHw3FJugUIoV3u7zx91
         cKTUEvngP/4xJ2n7ML5Rh4eq9PrwMkJNCHF0zDIeFAJ7z1PtgknUkxdthIJLmt7W29WJ
         pS4VDR08MyfX/cmtXM5dN9ZRVhHL7WpcAydEPlmOYdWuAFaMZvjToqFB2Fezs4JBEg3x
         vmgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723623289; x=1724228089;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+2DzaTFaQhCi8x+b8lScKZdT6wqGghcdZfo+S0TqwgI=;
        b=RSMNPDFS0mQxL0HZFucnWW146HZu/B58/bksinfRZEMOssFxCvHw8MQ6lh03VlOH7N
         OA7343BSeYQha8hLmnH6jchP4Kn3cBpL4GG4NHVXLi35J9AZQ3JyWGM3TB88gG4PNW5E
         Foy1khvNTAfbfRJO8YZEWq3/jP2HdeXtwBNJMSS3A6y6vG+66PxNTfOHTH2n/rNmBIQC
         M/oquGnqnh52ts4Ck/vcHLKPRsqHYpSDwou+869WEH4ao90e25xGoYATaxjoRSypOPXT
         c7+JMRMyPL2rDlzhqd2lPYk2LAdu+mZKK4tJDGaKb3FQ7/nKzppL53rpOa3axFKC+hsj
         VYqg==
X-Gm-Message-State: AOJu0YzPTPK4/oG2au2Kis3Ve7mWsw7eRTjfoBgNjVC1i3gOr0Zta2so
	iIUfhM6/VZdBNcAupqpa/t66jIcUUo9y0oSccDceGzqu0CWnflNn8LuKqseuGVU=
X-Google-Smtp-Source: AGHT+IG4BpTWLZpzwq2do52A6J/ucILAVlL+8y7ReGWNQMP5FXk9lgU5hgjgi8JsBgIzt6l8gEeC8g==
X-Received: by 2002:a17:903:244e:b0:1fd:93d2:fb67 with SMTP id d9443c01a7336-201d6520249mr20828995ad.52.1723623289265;
        Wed, 14 Aug 2024 01:14:49 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-201cd147ec4sm24868335ad.85.2024.08.14.01.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2024 01:14:48 -0700 (PDT)
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
Subject: [PATCH v3 06/10] riscv: Allow ptrace control of the tagged address ABI
Date: Wed, 14 Aug 2024 01:13:33 -0700
Message-ID: <20240814081437.956855-7-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240814081437.956855-1-samuel.holland@sifive.com>
References: <20240814081437.956855-1-samuel.holland@sifive.com>
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
index 92731ff8c79a..ea67e9fb7a58 100644
--- a/arch/riscv/kernel/ptrace.c
+++ b/arch/riscv/kernel/ptrace.c
@@ -28,6 +28,9 @@ enum riscv_regset {
 #ifdef CONFIG_RISCV_ISA_V
 	REGSET_V,
 #endif
+#ifdef CONFIG_RISCV_ISA_SUPM
+	REGSET_TAGGED_ADDR_CTRL,
+#endif
 };
 
 static int riscv_gpr_get(struct task_struct *target,
@@ -152,6 +155,35 @@ static int riscv_vr_set(struct task_struct *target,
 }
 #endif
 
+#ifdef CONFIG_RISCV_ISA_SUPM
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
+#ifdef CONFIG_RISCV_ISA_SUPM
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
2.45.1


