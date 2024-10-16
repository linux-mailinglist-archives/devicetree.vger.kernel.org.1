Return-Path: <devicetree+bounces-112155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0BD9A13E4
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 22:29:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9031C1F228DB
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 20:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 675B121832E;
	Wed, 16 Oct 2024 20:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Pemj47hA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C447B218316
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 20:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729110510; cv=none; b=hdKoLiVtRjgWmS5u3VIPo3YDB1Y7iMCtHrp/zQ8eaWH1wUzsyRdLBGXJwRWwa3e9aL99uUTu+CVVjtAxKrf8tNuxjxd6M3hZcFW+WMiRwNNEK2xzeY8hEU/er16pF24BlEjVcIM9RVxXvnvcv/VmVG4x8Q45oTfQmWOUtylCqO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729110510; c=relaxed/simple;
	bh=ELD91vxKstNUz/HC6ZN6qLq2v0rGOyWvpeDsasLvAEo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RsQzKOrbcL91YsVWerMUIpij8kuwRkoQ0dZGuvu5IwvxxD63mNsoyWOJ1mHKQa7Gk3c1CFkdhud63B9Jr+QqU2HoR3QoICWjPokTeqChboJ5AAMTolApVwOSY6rifGu/KQbgXTeE0/oVnQ7o5IyQahPqMwFSnwEIxgr+6DjTw0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Pemj47hA; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2e2e8c8915eso176539a91.3
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 13:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1729110508; x=1729715308; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1uGi1aMTi7US+D+u4yTVB4/InTmfvX6ggJnfvqiu44I=;
        b=Pemj47hANRudvgJAqmTtnL5y9/5h6JYSNd/biee7TLgziNsT2RKTlkNO85pPn13fj9
         +vfigioOrJJGVi5fMeBH7J3NyzD/qtr/Vxlhv3tu0t3dtCpW9HMIK/NUIg33bkeE2hDZ
         ZKkhJcUySuA/yydZuvtiBGmCJ5e9iNIL6UkykDSrMjBg8Xy+KUFiNf1NBqnRW2qIVy67
         F1cCm+SzuxEIRIFyWpsk/l04A9+QwWzmM9F81L3byI4AZ3PPeXnfRx0Kqdg1g78k+pEF
         A0W/fXMzFZEd+H/MBMdXNrOU+Z/Y8hwDHrLklBd8PllzMSZ2igfX7E0KEmFPcN7B9GOI
         guWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729110508; x=1729715308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1uGi1aMTi7US+D+u4yTVB4/InTmfvX6ggJnfvqiu44I=;
        b=SeSlmKZrQ8pEozejUV/7Yxqu+pXEQiKGNyKjRXh7UpkQ4dJwkvZoWHCZ69f/mSb3gl
         m6zFBpz9BDvDZEmt41SZQLJzrziTjVQH2qa2WlcMCC6yRUSzoT9q/+uv5LthjP9d448H
         90VtHDZXYOKNNx0FSqSZ6mwUcKtr57OfBDi17GkuFHSj8vWk8Rzb6oWQIzJuxkHr44Ql
         q6tHp2zEMye1rEtUjDP5Wxwghwt+0jkDQiAYtcjMf+0izd43t9zwRWL8q/oYPGYSfm86
         GbdyyxY3JPBYTedjCcQnKouSiXgGJyYvmNn0A8T3S8F68qRTdEP4yFqvQZq8tlhYmtFC
         VXuA==
X-Forwarded-Encrypted: i=1; AJvYcCVYeFRNyPBIXCJ5zmVK1bi4rncS+U9nSIHOknW53CuXeJv/+8gSXdEtGnZ7OnD8uO9ij+T1OKkrPnl2@vger.kernel.org
X-Gm-Message-State: AOJu0YwJZApdXIoAIQPXhPNwwLGfezrk7mw989N2w4mQrWYgOcg+/kbu
	XmkEPIw1IdrRk0fHAQgEGFW9Aw5FIlceNGvNm21Y2Xvq+GFPce/GlXSPYQz9QB0=
X-Google-Smtp-Source: AGHT+IGSEnrSg4Mtd2QlgC0KM50/DbbUFup+f+Rpyjxlo7a/auHeGt420O/OiC9CP9awld5TXTH74g==
X-Received: by 2002:a17:90b:104d:b0:2cb:5aaf:c12e with SMTP id 98e67ed59e1d1-2e315371d8emr21626897a91.37.1729110508003;
        Wed, 16 Oct 2024 13:28:28 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e3e08f8f89sm228613a91.38.2024.10.16.13.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 13:28:27 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Atish Patra <atishp@atishpatra.org>,
	linux-kselftest@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
	Shuah Khan <shuah@kernel.org>,
	devicetree@vger.kernel.org,
	Anup Patel <anup@brainfault.org>,
	linux-kernel@vger.kernel.org,
	Jonathan Corbet <corbet@lwn.net>,
	kvm-riscv@lists.infradead.org,
	Conor Dooley <conor@kernel.org>,
	kasan-dev@googlegroups.com,
	linux-doc@vger.kernel.org,
	Evgenii Stepanov <eugenis@google.com>,
	Charlie Jenkins <charlie@rivosinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v5 06/10] riscv: Allow ptrace control of the tagged address ABI
Date: Wed, 16 Oct 2024 13:27:47 -0700
Message-ID: <20241016202814.4061541-7-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20241016202814.4061541-1-samuel.holland@sifive.com>
References: <20241016202814.4061541-1-samuel.holland@sifive.com>
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
index b9935988da5c..a920cf8934dc 100644
--- a/include/uapi/linux/elf.h
+++ b/include/uapi/linux/elf.h
@@ -450,6 +450,7 @@ typedef struct elf64_shdr {
 #define NT_MIPS_MSA	0x802		/* MIPS SIMD registers */
 #define NT_RISCV_CSR	0x900		/* RISC-V Control and Status Registers */
 #define NT_RISCV_VECTOR	0x901		/* RISC-V vector registers */
+#define NT_RISCV_TAGGED_ADDR_CTRL 0x902	/* RISC-V tagged address control (prctl()) */
 #define NT_LOONGARCH_CPUCFG	0xa00	/* LoongArch CPU config registers */
 #define NT_LOONGARCH_CSR	0xa01	/* LoongArch control and status registers */
 #define NT_LOONGARCH_LSX	0xa02	/* LoongArch Loongson SIMD Extension registers */
-- 
2.45.1


