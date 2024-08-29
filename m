Return-Path: <devicetree+bounces-97773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65265963742
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 03:03:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E06C283614
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 01:03:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 448DE487A7;
	Thu, 29 Aug 2024 01:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="g7I2v6K/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22B945979
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 01:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724893326; cv=none; b=u3ryRRVXSMAofr22ioBJxZjibwDK3ypaxEWpP8pEn+xu2RcRuDJh6Z5H/yFbEQS53gawdAIDwbss6PKaB+9aWgCLoW+sIG9NnjdT/19b8WbI5pG0NWQqsF2eUl7zgDv3ykkQFDYIGx2V9z2uoAKFdtUEZWL8eIByjyuSeNQlRg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724893326; c=relaxed/simple;
	bh=Z0bb52PNqVU2ZfqlFeRvD7yJ3Iv38IwXjpqhPARo20U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PAOxgZVA6NY7tUx9v/27go9uqPxoT1iieGF0kxI3yggHuR3/fMnf7pG1HBMiqpHzUU2+yXhqDHvMD4WRP5T2SRAT+FdGVUfkev6LpOW5E4If+20OxSax7E+HxdB2f3KVtqioyHBHnGynyCla/tky5pg8Zk58rCQsCa/Zh5tZzHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=g7I2v6K/; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7142a93ea9cso104179b3a.3
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 18:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1724893324; x=1725498124; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+2DzaTFaQhCi8x+b8lScKZdT6wqGghcdZfo+S0TqwgI=;
        b=g7I2v6K/BD4QlfEdjZJKeTfNk3EM1VB91stpM+i30stohXl5Bvs8Akrf6ce+Kr/Pem
         OGm3YGVaoGtL6EATAwowioaq+QAkQl2ihOcZeAyfwmWVn5vjuSmkCzEMfcHuZhwN73rx
         Cl8DeFNx5rFFy0wxeHX4yqcWCurw02L5AlhQv+z3I0iGjNAOgC0ZxZAnrNa5DlDoybm6
         tlV4dFiKdqZu8917PPuzEQY34sxRM0vyBMBM0lXIW9/VNIBo62jzp6J9c5TO6rd9w2mP
         qt5+lj/1njFmIRMcgUrbDQ4OivaRTrLH9qsoEHniv/9ftWfnYyEMY7s728A0qnKcpGv2
         KFfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724893324; x=1725498124;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+2DzaTFaQhCi8x+b8lScKZdT6wqGghcdZfo+S0TqwgI=;
        b=txntH6K8zrxpUYUzWSO4ig9OwNwSRVe/LoS3PBovFi9BYZt5FRywQNkiaaNGPtJChl
         HRXldOgPlCUSq0GUgdcYSKps0QezKjPCt5MA9iKseSvEIx4tOcVXyaXxrNactRdrOnbv
         vROXON0kosFN0HAAKeZBHvEPqR3s/Xv/zbaZeBvJ3OMAuSBjWML4RDnPBOpCZVOHuBpJ
         JfMInAfFl997xkkM7zdLbtMiK+nkFpXxopurQzwyPBIgAjvWCg+Q4eA8WAeS3MsppZC7
         nuq6FkgG1tQORlo7knfR3xv33pT+ZmTmtCW5LXjOiEyx/+++K6PndHYrawImNYmg6EDb
         nAHA==
X-Gm-Message-State: AOJu0YwpYDlZfJDH1Tv8IgrubxtTnp75QgEzANM8rLByWAYukxDhIlJX
	xVdTBa3vqxqmEjB2jG38xkFMLdyZ2OFQMst5Nycwf7WUNbynOnMqG/wnf7ZLTMI=
X-Google-Smtp-Source: AGHT+IEyh7NfQmaTixftnZaGL0dh72GRDf2NK4ZAJB5jBbRdIOg64cL/KbANa/7sfibaG7qR2QQ3aw==
X-Received: by 2002:a05:6a20:9c89:b0:1c3:a63a:cef2 with SMTP id adf61e73a8af0-1cce10161e3mr1027463637.28.1724893323584;
        Wed, 28 Aug 2024 18:02:03 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-715e5576a4dsm89670b3a.17.2024.08.28.18.02.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 18:02:03 -0700 (PDT)
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
Subject: [PATCH v4 06/10] riscv: Allow ptrace control of the tagged address ABI
Date: Wed, 28 Aug 2024 18:01:28 -0700
Message-ID: <20240829010151.2813377-7-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240829010151.2813377-1-samuel.holland@sifive.com>
References: <20240829010151.2813377-1-samuel.holland@sifive.com>
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


